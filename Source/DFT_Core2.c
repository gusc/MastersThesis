/*****************************************************************************
 * MCAPI_FFT_Core1.c
 *****************************************************************************/

#include <sys/platform.h>
#include <sys/adi_core.h>
#include <string.h>
#include <stdio.h>
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

	printf("Starting core 2 processor in stand alone test mode\n");

	

	return 0;
}

