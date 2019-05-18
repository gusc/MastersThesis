/*****************************************************************************
 * MCAPI_FFT_Core1.c
 *****************************************************************************/

#include <sys/platform.h>
#include <sys/adi_core.h>
#include <mcapi.h>
#include <string.h>
#include <stdio.h>
#include "adi_initialize.h"
#include "DFT.h"
#include "Radix2FFT.h"
#include "Messages.h"

/** 
 * If you want to use command program arguments, then place them in the following string. 
 */
char __argv_string[] = "";

#define DOMAIN			0
#define NODE_0			0
#define CORE_PORT_NUM	6
#define CPU_PORT_NUM	4 // Core1 connects to 101, Core2 to 102

#define MAX_MESSAGE_SIZE 256
#define MAX_DATA_SIZE (MAX_MESSAGE_SIZE - sizeof(message_header_t))
#define MAX_SAMPLE_COUNT ((MAX_MESSAGE_SIZE - sizeof(message_header_t)) / sizeof(complex_float_t))

/*
 * mcapiErrorCheck()
 *
 * This function checks the status code, and if it is not MCAPI_SUCCESS then
 * an error message is output and the program exits. This should typically
 * be called after every MCAPI call which returns a status, during development
 * and debugging at least.
 */
static void mcapiErrorCheck(mcapi_status_t mcapi_status, const char *psContext, int result)
{
	char errorStringBuff[128];

	if ((MCAPI_SUCCESS != mcapi_status) && (MCAPI_PENDING != mcapi_status))
	{
		mcapi_display_status(mcapi_status, errorStringBuff, sizeof(errorStringBuff));
		printf("MCAPI Core 1 Error %s, status = %d [%s]\n",
				psContext,
				mcapi_status,
				errorStringBuff);
		exit(result);
	}
}

int main(int argc, char *argv[])
{
	/**
	 * Initialize managed drivers and/or services that have been added to 
	 * the project.
	 * @return zero on success 
	 */
	adi_initComponents();
	
	/* Initialize MCAPI endpoints */

	mcapi_status_t mcapi_status;
	mcapi_endpoint_t local_ep;
	mcapi_endpoint_t remote_ep;

	local_ep = mcapi_endpoint_create(CORE_PORT_NUM, &mcapi_status);
	mcapiErrorCheck(mcapi_status, "create endpoint", 2);

	remote_ep = mcapi_endpoint_get(DOMAIN, NODE_0, CPU_PORT_NUM, MCAPI_TIMEOUT_INFINITE, &mcapi_status);
	mcapiErrorCheck(mcapi_status, "get endpoint", 2);

	/* DFT processor */

	printf("Starting core 1 processor\n");

	bool end_process_received = false;
	size_t recv_size = 0;
	struct
	{
		message_header_t header;
		complex_float_t data[MAX_SAMPLE_COUNT];
	} remote_data;
	struct
	{
		message_header_t header;
		char data[256];
	} error_data;
	error_data.header.type = MSG_ERROR;

	while (!end_process_received)
	{
		mcapi_uint_t res = 0;
		while (res == 0)
		{
			res = mcapi_msg_available(local_ep, &mcapi_status);
			mcapiErrorCheck(mcapi_status, "msg_available", 2);
		}

		mcapi_msg_recv(local_ep, &remote_data, sizeof(remote_data), &recv_size, &mcapi_status);
		mcapiErrorCheck(mcapi_status, "msg_recv", 2);

		if (mcapi_status == MCAPI_SUCCESS)
		{
			if (remote_data.header.type == MSG_END_PROCESS)
			{
				// End process
				end_process_received = true;

				mcapi_msg_send(local_ep, remote_ep, &remote_data, sizeof(message_header_t), 0, &mcapi_status);
				mcapiErrorCheck(mcapi_status, "msg_send", 2);
			}
			else
			{
				// Concatenate incoming buffers
				size_t N = remote_data.header.total_length;
				complex_float_t buffer[N];
				complex_float_t out_buffer[N];
				message_t processing_type = remote_data.header.type;
				size_t data_len = remote_data.header.length * sizeof(complex_float_t);
				memcpy(buffer, remote_data.data, data_len);
				size_t offset = remote_data.header.length;
				while (remote_data.header.message_index != remote_data.header.total_count - 1)
				{
					mcapi_msg_recv(local_ep, &remote_data, sizeof(remote_data), &recv_size, &mcapi_status);
					mcapiErrorCheck(mcapi_status, "msg_recv", 2);

					if (mcapi_status != MCAPI_SUCCESS)
					{
						break;
					}

					data_len = remote_data.header.length * sizeof(complex_float_t);
					memcpy(buffer + offset, remote_data.data, data_len);
					offset += remote_data.header.length;
				}

				// Do requested processing

				if (processing_type == MSG_DFT_BUFFER)
				{
					dft(buffer, out_buffer, N, 0);
				}
				else if (processing_type == MSG_IDFT_BUFFER)
				{
					dft(buffer, out_buffer, N, 1);
				}
				else if (processing_type == MSG_FFT_BUFFER)
				{
					Radix2FFT(buffer, out_buffer, N);
				}
				else if (processing_type == MSG_IFFT_BUFFER)
				{
					Radix2iFFT(buffer, out_buffer, N);
				}

				// Send split buffers

				size_t num_messages = N / MAX_SAMPLE_COUNT;
				for (size_t i = 0; i < num_messages; i ++)
				{
					size_t offset = i * MAX_SAMPLE_COUNT;
					size_t num_samples = N - offset;
					if (num_samples > MAX_SAMPLE_COUNT)
					{
						num_samples = MAX_SAMPLE_COUNT;
					}

					struct {
						message_header_t header;
						complex_float_t data[MAX_SAMPLE_COUNT];
					} remote_data;
					remote_data.header.type = processing_type;
					remote_data.header.length = num_samples;
					remote_data.header.total_length = N;
					remote_data.header.total_count = num_messages;
					remote_data.header.message_index = i;

					memcpy(remote_data.data, out_buffer + offset, remote_data.header.length * sizeof(complex_float_t));

					mcapi_msg_send(local_ep, remote_ep, &remote_data, sizeof(remote_data), 0, &mcapi_status);
					mcapiErrorCheck(mcapi_status, "msg_send", 2);
				}
			}
		}
	}

	return 0;
}

