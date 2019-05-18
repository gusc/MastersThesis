/*****************************************************************************
 * MCAPI_DFT_Core0_Core0.c
 *****************************************************************************/

//#define BUILD_APP 1 // Runs on OS, otherwise runs bare metal
//#define LOCAL_DFT 1 // Don't use MCAPI, just DFT in-place
//#define PARALEL_DFT 1 // When running MCAPI, try to parallelize DFT on multiple SHARC cores
#define USE_FFT 1 // Use Radix-2 FFT instead

#ifndef BUILD_APP
#include <sys/platform.h>
#include <sys/adi_core.h>
#include <cycle_count.h>
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
#endif

#define MAX_BUFFER_SIZE 16
#define MAX_MESSAGE_SIZE 256 // SHARC bare metal framework has 256 byte limit for MCAPI messages

#include <sys/times.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>
#include <time.h>
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

	size_t max_sample_count = (MAX_MESSAGE_SIZE - sizeof(message_header_t)) / sizeof(complex_float_t);
	size_t max_data_size = max_sample_count * sizeof(complex_float_t);
	size_t num_messages = N / max_sample_count;

	for (size_t i = 0; i < num_messages; i ++)
	{
		size_t offset = i * max_data_size;
		size_t num_samples = N - (max_sample_count * i);
		if (num_samples > max_sample_count)
		{
			num_samples = max_sample_count;
		}

		struct {
			message_header_t header;
			complex_float_t data[num_samples];
		} remote_data;
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

		mcapi_msg_send(local_ep, remote_ep, &remote_data, sizeof(remote_data), 0, &mcapi_status);
		mcapiErrorCheck(mcapi_status, "send_remote_dft", 2);
	}
}

void recv_remote_dft(mcapi_endpoint_t local_ep, complex_float_t* out, int N, int inv)
{
	mcapi_status_t mcapi_status;
	size_t recv_size = 0;

	size_t max_sample_count = (MAX_MESSAGE_SIZE - sizeof(message_header_t)) / sizeof(complex_float_t);
	size_t max_data_size = max_sample_count * sizeof(complex_float_t);
	size_t max_num_messages = N / max_sample_count;

	bool end = false;
	size_t offset = 0;
	while (!end)
	{
		struct {
			message_header_t header;
			complex_float_t data[max_sample_count];
		} remote_data;

		mcapi_msg_recv(local_ep, &remote_data, sizeof(remote_data), &recv_size, &mcapi_status);
		mcapiErrorCheck(mcapi_status, "recv_remote_dft", 2);

		memcpy(out, remote_data.data + offset, remote_data.header.length * sizeof(complex_float_t));

		offset += remote_data.header.length * sizeof(complex_float_t);

		if (remote_data.header.total_count == remote_data.header.message_index - 1)
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
	
	/**
	 * The default startup code does not include any functionality to allow
	 * core 0 to enable core 1 and core 2. A convenient way to enable
	 * core 1 and core 2 is to use the adi_core_enable function. 
	 */
	adi_core_enable(ADI_CORE_SHARC0);
	adi_core_enable(ADI_CORE_SHARC1);

	CCNTR_INIT;
#endif

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
	complex_float_t buffer[MAX_BUFFER_SIZE];
	memset(buffer, 0, sizeof(buffer));
	for (int i = 0; i < MAX_BUFFER_SIZE; i ++)
	{
		buffer[i].re = (float)rand() / (float)RAND_MAX;
	}

	printf("Run tests\n");

	// Try different buffer sizes
	int test_chunk_lengths[] = {4, 8, 16};

	// Imitate a ~1 sec audio processing @ 44.1kHz rounded to power of 2 divisable number
	int total_samples = 45056;
	int total_lengths = sizeof(test_chunk_lengths) / sizeof(int);
	for (int i = 0; i < total_lengths; i ++)
	{
		printf("Testing %d sample buffer\n", test_chunk_lengths[i]);

		int repeat_count = total_samples / test_chunk_lengths[i];
#ifdef LOCAL_DFT
		complex_float_t out_buffer[test_chunk_lengths[i]];
		memset(out_buffer, 0, sizeof(out_buffer));
#endif

		// Mark the start
#ifndef BUILD_APP
		CCNTR_START;
#else
		struct tms st_cpu;
		struct tms en_cpu;
		clock_t clock_start = clock();
		clock_t st_time = times(&st_cpu);
#endif

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
			dft(buffer, out_buffer, test_chunk_lengths[i], 1);
	#endif
#endif
		}

		// Benchmark test and print out result
#ifndef BUILD_APP
		CCNTR_STOP;
		int res = CCNTR_READ;
		float time_diff = (float)(res) / 450000000.f;
		printf("CCNTR %jd, @450mHz\n", (intmax_t)res);
#else
		clock_t clock_end = clock();
		clock_t en_time = times(&en_cpu);
		long ticks = sysconf(_SC_CLK_TCK);
		printf("Real Time: %jd, User Time %jd, System Time %jd, Ticks: %jd\n",
		        (intmax_t)(en_time - st_time),
				(intmax_t)(en_cpu.tms_utime - st_cpu.tms_utime),
		        (intmax_t)(en_cpu.tms_stime - st_cpu.tms_stime),
				(intmax_t)ticks);
		printf("Clock Time: %jd, Clocks per sec: %jd\n",
				(intmax_t)(clock_end - clock_start), (intmax_t)CLOCKS_PER_SEC);
		float time_diff = (float)(clock_end - clock_start) / CLOCKS_PER_SEC;
#endif
		printf("Done %d repeats in %.3f sec\n", repeat_count, time_diff);
	}

	return 0;
}

