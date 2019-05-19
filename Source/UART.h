/*
 * UART.h
 *
 *  Created on: May 19, 2019
 *      Author: Gusts Kaksis
 */

#ifndef UART_H_
#define UART_H_

#include <stdlib.h>

void InitUart(const char* socket);
int SendBytes(const void* data, size_t length);
int ReadBytes(void* data, size_t length);

#endif /* UART_H_ */
