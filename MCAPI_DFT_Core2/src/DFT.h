/*
 * DFT.h
 *
 *  Created on: May 9, 2019
 *      Author: IEUser
 */

#ifndef DFT_H_
#define DFT_H_

typedef struct
{
	float re;
	float im;
} complex_float_t;

static const float M_PI = 3.14159265358979323846;

void dft(complex_float_t* in, complex_float_t* out, int N, int inv);

#endif /* DFT_H_ */
