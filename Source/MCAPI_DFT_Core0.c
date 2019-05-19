/*****************************************************************************
 * MCAPI_DFT_Core0_Core0.c
 *****************************************************************************/

#include "Config.h"
#include "Benchmark.h"

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
#define NODE_2			2
#define CORE1_PORT_NUM	5
#define CORE2_PORT_NUM	6
#define CPU_PORT_NUM1	3
#define CPU_PORT_NUM2	4
#define MAX_DATA_SIZE (MAX_MESSAGE_SIZE - sizeof(message_header_t))
#define MAX_SAMPLE_COUNT 29 //((MAX_MESSAGE_SIZE - sizeof(message_header_t)) / sizeof(complex_float_t))
#endif

#include <sys/times.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>
#include <unistd.h>
#include "DFT.h"
#include "Radix2FFT.h"

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
		printf("MCAPI Core 0 Error %s, status = %d [%s]\n",
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
		complex_float_t data[MAX_SAMPLE_COUNT];
	} remote_data;

	size_t num_messages = (N + MAX_SAMPLE_COUNT - 1) / MAX_SAMPLE_COUNT;
	for (size_t i = 0; i < num_messages; i ++)
	{
		size_t offset = i * MAX_SAMPLE_COUNT;
		size_t num_samples = N - offset;
		if (num_samples > MAX_SAMPLE_COUNT)
		{
			num_samples = MAX_SAMPLE_COUNT;
		}

#ifdef USE_FFT
		remote_data.header.type = inv ? MSG_IFFT_BUFFER : MSG_FFT_BUFFER;
#else
		remote_data.header.type = inv ? MSG_IDFT_BUFFER : MSG_DFT_BUFFER;
#endif
		remote_data.header.length = num_samples;
		remote_data.header.total_length = N;
		remote_data.header.total_count = num_messages;
		remote_data.header.message_index = i;

		memcpy(remote_data.data, in + offset, remote_data.header.length * sizeof(complex_float_t));

		size_t remote_data_len = sizeof(message_header_t) + remote_data.header.length * sizeof(complex_float_t);
		mcapi_msg_send(local_ep, remote_ep, &remote_data, remote_data_len, 0, &mcapi_status);
		mcapiErrorCheck(mcapi_status, "send_remote_dft", 2);
	}
}

void recv_remote_dft(mcapi_endpoint_t local_ep, complex_float_t* out, int N, int inv)
{
	mcapi_status_t mcapi_status;
	size_t recv_size = 0;

	struct {
		message_header_t header;
		complex_float_t data[MAX_SAMPLE_COUNT];
	} remote_data;

	bool end = false;
	size_t offset = 0;
	while (!end)
	{
		mcapi_msg_recv(local_ep, &remote_data, sizeof(remote_data), &recv_size, &mcapi_status);
		mcapiErrorCheck(mcapi_status, "recv_remote_dft", 2);

		size_t data_len = remote_data.header.length * sizeof(complex_float_t);
		if (data_len > (MAX_BUFFER_SIZE - offset) * sizeof(complex_float_t))
		{
			data_len = (MAX_BUFFER_SIZE - offset) * sizeof(complex_float_t);
		}
		memcpy(out + offset, remote_data.data, data_len);
		offset += remote_data.header.length;

		if (remote_data.header.message_index == remote_data.header.total_count - 1)
		{
			end = true;
		}
	}

	if (offset != N)
	{
		printf("WARNING: Received buffer does not match the requirements");
	}
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
	
	#ifndef LOCAL_DFT
	/**
	 * The default startup code does not include any functionality to allow
	 * core 0 to enable core 1 and core 2. A convenient way to enable
	 * core 1 and core 2 is to use the adi_core_enable function. 
	 */
	adi_core_enable(ADI_CORE_SHARC0);
		#ifdef PARALEL_DFT
	adi_core_enable(ADI_CORE_SHARC1);
		#endif
	#endif
#endif

	InitBenchmark();

#ifndef LOCAL_DFT
	/* Initialize MCAPI */

	#ifndef BUILD_APP
	int timeout = MCAPI_TIMEOUT_INFINITE;
	#else
	int timeout = 5000;
	#endif

	mcapi_status_t mcapi_status;
	mcapi_endpoint_t local_ep1;
	mcapi_endpoint_t remote_ep1;
	#ifdef PARALEL_DFT
	mcapi_endpoint_t local_ep2;
	mcapi_endpoint_t remote_ep2;
	#endif

	#ifdef BUILD_APP
	mcapi_param_t mcapi_parms;
	mcapi_info_t mcapi_version;
	mcapi_initialize(DOMAIN, NODE_0, NULL, &mcapi_parms, &mcapi_version, &mcapi_status);
	mcapiErrorCheck(mcapi_status, "initialize", 2);
	#endif

	local_ep1 = mcapi_endpoint_create(CPU_PORT_NUM1, &mcapi_status);
	mcapiErrorCheck(mcapi_status, "create endpoint", 2);

	remote_ep1 = mcapi_endpoint_get(DOMAIN, NODE_1, CORE1_PORT_NUM, timeout, &mcapi_status);
	mcapiErrorCheck(mcapi_status, "get endpoint", 2);
	printf("Node 1 connected\n");

	#ifdef PARALEL_DFT
	local_ep2 = mcapi_endpoint_create(CPU_PORT_NUM2, &mcapi_status);
	mcapiErrorCheck(mcapi_status, "create endpoint", 2);

	remote_ep2 = mcapi_endpoint_get(DOMAIN, NODE_2, CORE2_PORT_NUM, timeout, &mcapi_status);
	mcapiErrorCheck(mcapi_status, "get endpoint", 2);
	printf("Node 2 connected\n");
	#endif
#endif

	printf("Prepare test buffer\n");
	complex_float_t* buffer = (complex_float_t*)calloc(MAX_BUFFER_SIZE, sizeof(complex_float_t));
	for (int i = 0; i < MAX_BUFFER_SIZE; i ++)
	{
		(buffer + i)->re = (float)rand() / (float)RAND_MAX;
	}
#ifdef LOCAL_DFT
	complex_float_t* out_buffer = (complex_float_t*)calloc(MAX_BUFFER_SIZE, sizeof(complex_float_t));
#endif

	printf("Run tests\n");

	// Try different buffer sizes
	int test_chunk_lengths[] = {16, 32, 64, 128, 256, 512, 1024};

	// Imitate a ~1 sec audio processing @ 44.1kHz rounded to power of 2 divisable number
	int total_samples = 45056;
	int total_lengths = sizeof(test_chunk_lengths) / sizeof(int);
	for (int i = 0; i < total_lengths; i ++)
	{
		printf("Testing %d sample buffer\n", test_chunk_lengths[i]);

		int repeat_count = total_samples / test_chunk_lengths[i];
#ifdef LOCAL_DFT
		memset(out_buffer, 0, test_chunk_lengths[i] * sizeof(complex_float_t));
#endif

		// Mark the start
		StartBenchmark();

		// Repeat test 1000 times
		for (int j = 0; j < repeat_count; j ++)
		{
#ifndef LOCAL_DFT
			// Perform remote DFT
			send_remote_dft(local_ep1, remote_ep1, buffer, test_chunk_lengths[i], 0);
	#ifdef PARALEL_DFT
			send_remote_dft(local_ep2, remote_ep2, buffer, test_chunk_lengths[i], 0);
	#endif
			recv_remote_dft(local_ep1, buffer, test_chunk_lengths[i], 0);
	#ifdef PARALEL_DFT
			recv_remote_dft(local_ep2, buffer, test_chunk_lengths[i], 0);
	#endif

			// Perform remote iDFT
			send_remote_dft(local_ep1, remote_ep1, buffer, test_chunk_lengths[i], 1);
	#ifdef PARALEL_DFT
			send_remote_dft(local_ep2, remote_ep2, buffer, test_chunk_lengths[i], 1);
	#endif
			recv_remote_dft(local_ep1, buffer, test_chunk_lengths[i], 1);
	#ifdef PARALEL_DFT
			recv_remote_dft(local_ep2, buffer, test_chunk_lengths[i], 1);
			j ++;
	#endif
#else
	#ifdef USE_FFT
			// Perform FFT
			Radix2FFT(buffer, out_buffer, test_chunk_lengths[i]);
			// Perform inverse FFT
			Radix2iFFT(out_buffer, buffer, test_chunk_lengths[i]);
	#else
			// Perform local DFT
			dft(buffer, out_buffer, test_chunk_lengths[i], 0);
			// Perform local iDFT
			dft(out_buffer, buffer, test_chunk_lengths[i], 1);
	#endif
#endif
			UpdateBenchmark();
		}

		// Benchmark test and print out result
		StopBenchmark();
	}

	return 0;
}

