/*
 * Messages.h
 *
 *  Created on: May 10, 2019
 *      Author: IEUser
 */

#ifndef MESSAGES_H_
#define MESSAGES_H_

typedef int message_t;
typedef struct
{
	message_t type;		// Data type
	int length;			// Data length
} message_header_t;

static const message_t MSG_DFT_BUFFER = 1;
static const message_t MSG_IDFT_BUFFER = 2;
static const message_t MSG_ERROR = 99;
static const message_t MSG_END_PROCESS = 100;


#endif /* MESSAGES_H_ */
