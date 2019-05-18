#include "Radix2FFT.h"

#include <math.h>

#define M_2PI   		6.283185307179586476925286766559    // 2 * PI
#define M_LOG10_2_INV	3.3219280948873623478703194294948	// 1 / Log10(2)

void CMult(complex_float_t* dest, complex_float_t* c1, complex_float_t* c2)
{
	dest->re = (c1->re * c2->re) - (c1->im * c2->im);
	dest->im = (c1->re * c2->im) + (c1->im * c2->re);
}

void CAdd(complex_float_t* dest, complex_float_t* c1, complex_float_t* c2)
{
	dest->re = c1->re + c2->re;
	dest->im = c1->im + c2->im;
}

void CSub(complex_float_t* dest, complex_float_t* c1, complex_float_t* c2)
{
	dest->re = c1->re - c2->re;
	dest->im = c1->im - c2->im;
}

void Radix2iFFT(complex_float_t *in, complex_float_t *out, int N)
{
	double iN = 1 / (double)N;
	complex_float_t* pIn = in;
	for (int i = 0; i < N; i++, pIn++)
	{
		pIn->im *= -1;
	}

	Radix2FFT(in, out, N);

	complex_float_t* pOut = out;
	for (int i = 0; i < N; i++, pOut++){
		pOut->re *= iN;
		pOut->im *= -1;
	}
}

void Radix2FFT(complex_float_t *in, complex_float_t *out, int N)
{
	int stages = (int)ceil(log10((double)N) * M_LOG10_2_INV);

    // Decimation - sort in samples to out samles
    complex_float_t* out_start = out;
    for (int i = 0; i < N; i++, out++)
    {
    	complex_float_t* x = in + i;
        unsigned int i_out = 0;
        unsigned int i_in = i;
        for (int j = 0; j < stages; j++)
        {
            if (i_in & 0x01)
            {
            	i_out += (1 << (stages - 1 - j));
            }
            i_in >>= 1;
            if (!i_in)
            {
                break;
            }
        }
        out = out_start + i_out;
        out->re = x->re;
        out->im = x->im;
    }

    // FFT Computation by butterfly calculation
    complex_float_t WN;
    complex_float_t TEMP;
    for (int stage = 1; stage <= stages; stage++)
    {
        int butterfly_separation = (int)(pow(2, stage));
        int butterfly_width = butterfly_separation / 2;
        double P = M_2PI / butterfly_separation;
        for (int j = 0; j < butterfly_width; j++)
        {
            if (j != 0)
            {
                WN.re = cos(P * j);
                WN.im = -sin(P * j);
            }
            for (int k = j; k < N; k += butterfly_separation)
            {
                complex_float_t* pHi = out_start + k;
                complex_float_t* pLo = pHi + butterfly_width;
                if (j != 0)
                {
                	CMult(&TEMP, pLo, &WN);
                }
                else
                {
                    TEMP.re = pLo->re;
                    TEMP.im = pLo->im;
                }
                CSub(pLo, pHi, &TEMP);
                CAdd(pHi, pHi, &TEMP);
            }
        }
    }
}
