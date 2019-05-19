/*
 * Radix2FFT.h
 *
 *  Created on: May 16, 2019
 *      Author: Gusts Kaksis
 */

#ifndef RADIX2FFT_H_
#define RADIX2FFT_H_

#include "DFT.h"

void Radix2FFT(complex_float_t *in, complex_float_t *out, int N);
void Radix2iFFT(complex_float_t *in, complex_float_t *out, int N);

#endif // RADIX2FFT_H_
