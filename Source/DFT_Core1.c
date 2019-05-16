/*****************************************************************************
 * MCAPI_FFT_Core1.c
 *****************************************************************************/

#include <sys/platform.h>
#include <sys/adi_core.h>
#include <cycle_count.h>
#include <string.h>
#include <stdio.h>
#include <time.h>
#include <math.h>
#include <stdlib.h>
#include "adi_initialize.h"
#include "DFT.h"

/** 
 * If you want to use command program arguments, then place them in the following string. 
 */
char __argv_string[] = "";

#define MAX_BUFFER_SIZE 16

int main(int argc, char *argv[])
{
	/**
	 * Initialize managed drivers and/or services that have been added to 
	 * the project.
	 * @return zero on success 
	 */
	adi_initComponents();
	
	/* DFT processor */

	printf("Starting core 1 processor in stand alone test mode\n");

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
		complex_float_t out_buffer[test_chunk_lengths[i]];
		memset(out_buffer, 0, sizeof(out_buffer));

		// Mark the start
		int counter = 0;
		START_CYCLE_COUNT(counter);
		clock_t clock_start = clock();

		// Repeat test 1000 times
		for (int j = 0; j < repeat_count; j ++)
		{
			// Perform local DFT
			dft(buffer, out_buffer, test_chunk_lengths[i], 0);
			// Perform local iDFT
			dft(buffer, out_buffer, test_chunk_lengths[i], 1);
		}

		// Benchmark test and print out result
		int result = 0;
		STOP_CYCLE_COUNT(result, counter);
		float time_diff = (float)(clock() - clock_start) / CLOCKS_PER_SEC;
		printf("Done %d repeats in %.3f sec\n", repeat_count, time_diff);
		float time_diff2 = (float)result / 450000000.f;
		printf("CYCLE_COUNT %d, @450mHz\n", result);
		printf("CYCLE_COUNT Done %d repeats in %.3f sec\n", repeat_count, time_diff2);
	}

	return 0;
}

