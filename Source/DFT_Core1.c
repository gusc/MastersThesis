/*****************************************************************************
 * MCAPI_FFT_Core1.c
 *****************************************************************************/

#include "Config.h"
#include "Benchmark.h"

#include <sys/platform.h>
#include <sys/adi_core.h>
#include <string.h>
#include <stdio.h>
#include <time.h>
#include <math.h>
#include <stdlib.h>
#include "adi_initialize.h"
#include "DFT.h"
#include "Radix2FFT.h"

/** 
 * If you want to use command program arguments, then place them in the following string. 
 */
char __argv_string[] = "";

int main(int argc, char *argv[])
{
	/**
	 * Initialize managed drivers and/or services that have been added to 
	 * the project.
	 * @return zero on success 
	 */
	adi_initComponents();
	
	InitBenchmark();

	/* DFT processor */

	printf("Starting core 1 processor in stand alone test mode\n");

	printf("Prepare test buffer\n");
	complex_float_t* buffer = (complex_float_t*)calloc(MAX_BUFFER_SIZE, sizeof(complex_float_t));
	for (int i = 0; i < MAX_BUFFER_SIZE; i ++)
	{
		(buffer + i)->re = (float)rand() / (float)RAND_MAX;
	}
	complex_float_t* out_buffer = (complex_float_t*)calloc(MAX_BUFFER_SIZE, sizeof(complex_float_t));

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
		memset(out_buffer, 0, test_chunk_lengths[i] * sizeof(complex_float_t));

		// Mark the start
		StartBenchmark();

		// Repeat test 1000 times
		for (int j = 0; j < repeat_count; j ++)
		{
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
			UpdateBenchmark();
		}

		// Benchmark test and print out result
		StopBenchmark();
	}

	return 0;
}

