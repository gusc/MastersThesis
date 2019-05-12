/*****************************************************************************
 * MCAPI_DFT_Core0_Core0.c
 *****************************************************************************/

//#define BUILD_APP 1 // Runs on OS, otherwise runs bare metal
//#define LOCAL_DFT 1 // Don't use MCAPI, just DFT in-place
//#define PARALEL_DFT 1 // When running MCAPI, try to parallelize DFT on multiple SHARC cores

#ifndef BUILD_APP
#include <sys/platform.h>
#include <sys/adi_core.h>
#include "adi_initialize.h"
#endif

#ifndef LOCAL_DFT
#include <mcapi.h>
#include "Messages.h"
#define DOMAIN			0
#define NODE_0			0
#define NODE_1			1
#define CORE1_PORT_NUM	5
#define CORE2_PORT_NUM	6
#define CPU_PORT_NUM	101
#endif

#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>
#include "DFT.h"

#ifndef LOCAL_DFT
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

void send_remote_dft(mcapi_endpoint_t local_ep, mcapi_endpoint_t remote_ep, complex_float_t* in, int N, int inv)
{
	mcapi_status_t mcapi_status;

	struct {
		message_header_t header;
		complex_float_t data[N];
	} remote_data;
	remote_data.header.type = inv ? MSG_IDFT_BUFFER : MSG_DFT_BUFFER;
	remote_data.header.length = N * sizeof(complex_float_t);
	memcpy(remote_data.data, in, remote_data.header.length);

	mcapi_msg_send(local_ep, remote_ep, &remote_data, sizeof(remote_data), 0, &mcapi_status);
	mcapiErrorCheck(mcapi_status, "msg_send", 2);
}

void recv_remote_dft(mcapi_endpoint_t local_ep, complex_float_t* out, int N, int inv)
{
	mcapi_status_t mcapi_status;
	size_t recv_size = 0;

	struct {
		message_header_t header;
		complex_float_t data[N];
	} remote_data;
	remote_data.header.type = inv ? MSG_IDFT_BUFFER : MSG_DFT_BUFFER;
	remote_data.header.length = N * sizeof(complex_float_t);

	mcapi_msg_recv(local_ep, &remote_data, sizeof(remote_data), &recv_size, &mcapi_status);
	mcapiErrorCheck(mcapi_status, "msg_recv", 2);

	memcpy(out, remote_data.data, remote_data.header.length);
}
#endif

int main()
{
#ifndef BUILD_APP
	/**
	 * Initialize managed drivers and/or services that have been added to 
	 * the project.
	 * @return zero on success 
	 */
	adi_initComponents();
	
	/**
	 * The default startup code does not include any functionality to allow
	 * core 0 to enable core 1 and core 2. A convenient way to enable
	 * core 1 and core 2 is to use the adi_core_enable function. 
	 */
	adi_core_enable(ADI_CORE_SHARC0);
	adi_core_enable(ADI_CORE_SHARC1);
#endif

#ifndef LOCAL_DFT
	/* Initialize MCAPI */

	int timeout = 5000;
	mcapi_status_t mcapi_status;
	mcapi_endpoint_t local_ep;
	mcapi_endpoint_t remote_ep1;
	#ifdef PARALEL_DFT
	mcapi_endpoint_t remote_ep2;
	#endif

	#ifdef BUILD_APP
	mcapi_param_t mcapi_parms;
	mcapi_info_t mcapi_version;
	mcapi_initialize(DOMAIN, NODE_0, NULL, &mcapi_parms, &mcapi_version, &mcapi_status);
	mcapiErrorCheck(mcapi_status, "initialize", 2);
	#endif

	local_ep = mcapi_endpoint_create(CPU_PORT_NUM, &mcapi_status);
	mcapiErrorCheck(mcapi_status, "create endpoint", 2);

	remote_ep1 = mcapi_endpoint_get(DOMAIN, NODE_1, CORE1_PORT_NUM, timeout, &mcapi_status);
	mcapiErrorCheck(mcapi_status, "get endpoint", 2);

#ifdef PARALEL_DFT
	remote_ep2 = mcapi_endpoint_get(DOMAIN, NODE_1, CORE2_PORT_NUM, timeout, &mcapi_status);
	mcapiErrorCheck(mcapi_status, "get endpoint", 2);
#endif
#endif
	int buffer_len = 4096;
	complex_float_t buffer[buffer_len];
	memset(buffer, 0, sizeof(buffer));
	for (int i = 0; i < buffer_len; i ++)
	{
		buffer[i].re = (float)rand() / (float)RAND_MAX;
	}

	// Try different buffer sizes
	int test_chunk_lengths[] = {32, 64, 128, 256, 512, 1024, 2048, 4096};
	for (int i = 0; i < 8; i ++)
	{
#ifdef LOCAL_DFT
		complex_float_t out_buffer[test_chunk_lengths[i]];
		memset(out_buffer, 0, sizeof(out_buffer));
#endif

		// Mark the start
		clock_t clock_start = clock();

		// Repeat test 1000 times
		for (int j = 0; j < 1000; j ++)
		{
#ifndef LOCAL_DFT
			// Perform remote DFT
			send_remote_dft(local_ep, remote_ep1, buffer, test_chunk_lengths[i], 0);
	#ifdef PARALEL_DFT
			send_remote_dft(local_ep, remote_ep2, buffer, test_chunk_lengths[i], 0);
	#endif
			recv_remote_dft(local_ep, buffer, test_chunk_lengths[i], 0);
	#ifdef PARALEL_DFT
			recv_remote_dft(local_ep, buffer, test_chunk_lengths[i], 0);
	#endif

			// Perform remote iDFT
			send_remote_dft(local_ep, remote_ep1, buffer, test_chunk_lengths[i], 1);
	#ifdef PARALEL_DFT
			send_remote_dft(local_ep, remote_ep2, buffer, test_chunk_lengths[i], 1);
	#endif
			recv_remote_dft(local_ep, buffer, test_chunk_lengths[i], 1);
	#ifdef PARALEL_DFT
			recv_remote_dft(local_ep, buffer, test_chunk_lengths[i], 1);
			j ++;
	#endif
#else
			// Perform local DFT
			dft(buffer, out_buffer, test_chunk_lengths[i], 0);
			// Perform local iDFT
			dft(buffer, out_buffer, test_chunk_lengths[i], 1);
#endif
		}

		// Benchmark test and print out result
		float time_diff = (float)(clock() - clock_start) / CLOCKS_PER_SEC;
		printf("Test %d with %d samples: %f.2 sec\n", i, test_chunk_lengths[i], time_diff);
	}

	return 0;
}

