/*
 * Benchmark.c
 *
 *  Created on: May 18, 2019
 *      Author: Gusts Kaksis
 */

#include "Config.h"
#include "Benchmark.h"

#ifndef BUILD_APP
#include <cycle_count.h>
static unsigned int counter_hi;
static unsigned int counter;
#else
#include <time.h>
// clock()
clock_t start_clock;
// times()
struct tms start_cpu_counters;
clock_t start_time;
#endif

#include <stdint.h>

void InitBenchmark()
{
#ifndef BUILD_APP
	CCNTR_INIT;
#endif
}

void StartBenchmark()
{
#ifndef BUILD_APP
	counter_hi = 0;
	counter = 0;
	CCNTR_RESET;
	CCNTR_START;
#else
	start_clock = clock();
	start_time = times(&start_cpu_counters);
#endif
}

#ifndef BUILD_APP
static void _UpdateTimers()
{
	unsigned int res = CCNTR_READ;
	unsigned int overflow = CCNTR_CHECK_OVERFLOW;
	if (overflow)
	{
		counter_hi++;
	}
	unsigned int counter_prev = counter;
	counter += res;
	if (counter < counter_prev)
	{
		// Another overflow
		counter_hi++;
	}
}
#endif

void UpdateBenchmark()
{
#ifndef BUILD_APP
	CCNTR_STOP;
	_UpdateTimers();
	CCNTR_RESET;
	CCNTR_START;
#endif
}

void StopBenchmark()
{
#ifndef BUILD_APP
	CCNTR_STOP;
	_UpdateTimers();
	double cycles = (double)counter + ((double)counter_hi * (double)UINT32_MAX);
	double time = cycles / (double)BENCHMARK_CPU_SPEED;
    printf("Benchmark CPU cycles: %.0f or %.3f sec (@ %d Hz)\n", cycles, time, BENCHMARK_CPU_SPEED);
#else
    struct tms end_cpu_counters;
    clock_t end_clock = clock();
	clock_t end_time = times(&end_cpu_counters);
	long ticks = sysconf(_SC_CLK_TCK);
	printf("Benchmark CPU ticks: %d\n", ticks);
	printf("    Real time: %d or %.3f sec", end_time - start_time, (float)(end_time - start_time) / ticks)
	printf("    User time: %d or %.3f sec", en_cpu.tms_utime - st_cpu.tms_utime, (float)(en_cpu.tms_utime - st_cpu.tms_utime) / ticks)
	printf("     Sys time: %d or %.3f sec", en_cpu.tms_stime - st_cpu.tms_stime, (float)(en_cpu.tms_stime - st_cpu.tms_stime) / ticks)
	printf("        Clock: %d or %.3f sec (@ %d CPS)", end_clock - start_clock, (float)(end_clock - start_clock) / CLOCKS_PER_SEC, CLOCKS_PER_SEC);
#endif
}
