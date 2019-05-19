/*
 * Config.h
 *
 *  Created on: May 18, 2019
 *      Author: Gusts Kaksis
 */

//#define BUILD_APP 1 // Runs on OS, otherwise runs bare metal
//#define LOCAL_DFT 1 // Don't use MCAPI, just DFT in-place
//#define PARALEL_DFT 1 // When running MCAPI, try to parallelize DFT on multiple SHARC cores
#define USE_FFT 1 // Use Radix-2 FFT instead
#define USE_UART 1 // Use UART to for remote DFT processing

#define MAX_BUFFER_SIZE 4096
#define MAX_MESSAGE_SIZE 256 // SHARC bare metal framework has 256 byte limit for MCAPI messages

#define BENCHMARK_CPU_SPEED 450000000 // 450MHz
