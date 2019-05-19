/*
 * Messages.h
 *
 *  Created on: May 10, 2019
 *      Author: Gusts Kaksis
 */

#ifndef MESSAGES_H_
#define MESSAGES_H_

// MCAPI message configuration

typedef int message_t;
typedef struct
{
	message_t type;		// Data type
	int length;			// Count of data samples
	int total_length; 	// Total count of data samples between messages
	int message_index;  // Message index
	int total_count;    // Total message count in the stream
} message_header_t;

static const message_t MSG_DFT_BUFFER = 1;
static const message_t MSG_IDFT_BUFFER = 2;
static const message_t MSG_FFT_BUFFER = 3;
static const message_t MSG_IFFT_BUFFER = 4;
static const message_t MSG_ERROR = 99;
static const message_t MSG_END_PROCESS = 100;

#endif /* MESSAGES_H_ */
