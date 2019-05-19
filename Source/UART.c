/*
 * UART.c
 *
 *  Created on: May 19, 2019
 *      Author: Gusts Kaksis
 */

#include "Config.h"
#include "UART.h"

#include <fcntl.h>
#include <termios.h>

static int uart = -1;

void InitUart(const char* socket)
{
	uart = open(socket, O_RDWR | O_NOCTTY);
	if (uart == -1)
	{
		printf("Failed to open UART.");
		exit(1);
	}

	struct termios options;
	tcgetattr(uart, &options);
	options.c_cflag = B4000000 | CS8 | CLOCAL | CREAD;
	options.c_iflag = IGNPAR;
	options.c_oflag = 0;
	options.c_lflag = 0;
	tcflush(uart, TCIFLUSH);
	tcsetattr(uart, TCSANOW, &options);
}

int SendBytes(const void* data, size_t length)
{
	if (uart != -1)
	{
		return write(uart, data, length);
	}
	return 0;
}

int ReadBytes(void* data, size_t length)
{
	if (uart)
	{
		return read(uart0_filestream, data, length);
	}
	return 0;
}
