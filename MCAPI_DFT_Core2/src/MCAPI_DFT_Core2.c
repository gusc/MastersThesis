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
#include "Messages.h"

/** 
 * If you want to use command program arguments, then place them in the following string. 
 */
char __argv_string[] = "";

#define DOMAIN			0
#define NODE_0			0
#define CORE_PORT_NUM	6 // Core1 = 5, Core2 = 6
#define CPU_PORT_NUM	101

#define MAX_BUFFER_SIZE 4096

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
		printf("MCAPI Error %s, status = %d [%s]\n",
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

	bool end_process_received = false;
	size_t recv_size = 0;
	struct
	{
		message_header_t header;
		complex_float_t data[MAX_BUFFER_SIZE];
	} remote_data;
	struct
	{
		message_header_t header;
		char data[256];
	} error_data;
	error_data.header.type = MSG_ERROR;

	while (!end_process_received)
	{
		mcapi_msg_recv(local_ep, &remote_data, sizeof(remote_data), &recv_size, &mcapi_status);
		mcapiErrorCheck(mcapi_status, "msg_recv", 2);

		if (mcapi_status == MCAPI_SUCCESS)
		{
			if (remote_data.header.type == MSG_DFT_BUFFER || remote_data.header.type == MSG_IDFT_BUFFER)
			{
				// Process DFT
				if (remote_data.header.length > MAX_BUFFER_SIZE * sizeof(complex_float_t))
				{
					char msg[] = "Data too long";
					memcpy(error_data.data, msg, sizeof(msg));
					error_data.header.length = sizeof(msg);

					mcapi_msg_send(local_ep, remote_ep, &error_data, sizeof(error_data), 0, &mcapi_status);
					mcapiErrorCheck(mcapi_status, "msg_send", 2);
					continue;
				}

				complex_float_t out_data[MAX_BUFFER_SIZE];
				int data_len = remote_data.header.length;
				dft(remote_data.data, out_data, data_len, (remote_data.header.type == MSG_IDFT_BUFFER));
				memcpy(remote_data.data, out_data, data_len);

				mcapi_msg_send(local_ep, remote_ep, &remote_data, sizeof(message_header_t) + data_len, 0, &mcapi_status);
				mcapiErrorCheck(mcapi_status, "msg_send", 2);
				continue;
			}

			if (remote_data.header.type == MSG_END_PROCESS)
			{
				// End process
				end_process_received = true;

				mcapi_msg_send(local_ep, remote_ep, &remote_data, sizeof(message_header_t), 0, &mcapi_status);
				mcapiErrorCheck(mcapi_status, "msg_send", 2);

			}
		}
	}

	return 0;
}

