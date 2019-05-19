/*
 * DFT.c
 *
 *  Created on: May 9, 2019
 *      Author: Gusts Kaksis
 */

#include "DFT.h"
#include <math.h>

void dft(complex_float_t* in, complex_float_t* out, int N, int inv)
{
    int i, j;
    float a, f;
    complex_float_t s, w;
    f = inv ? 1.0 / N : 1.0;
    for (i = 0; i < N; i++)
    {
        s.re = 0;
        s.im = 0;
        for (j = 0; j < N; j++)
        {
            a = -2 * M_PI * i * j / N;
			if (inv)
			{
				a = -a;
			}
			w.re = cos(a);
			w.im = sin(a);
			s.re += in[j].re * w.re - in[j].im * w.im;
			s.im += in[j].im * w.re + in[j].re * w.im;
		}
		out[i].re = s.re*f;
		out[i].im = s.im*f;
	}
}



