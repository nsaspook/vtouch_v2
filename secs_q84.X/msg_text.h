/* 
 * File:   msg_text.h
 * Author: root
 *
 * Created on July 15, 2019, 7:32 AM
 */

#ifndef MSG_TEXT_H
#define	MSG_TEXT_H

#ifdef	__cplusplus
extern "C" {
#endif
#include "mconfig.h"
#include "mydisplay.h"

	typedef enum {
		display_message = 0,
		display_online,
		display_comm,
	} DISPLAY_TYPES;

	/*
	 * *****************|*********|**********|**********|*********|***|
	 */
	const char msg0[] = "MESSAGE All %d, Read %d Failed %d, Transmit %d Failed %d, Checksum error %d  FGB@     %s";
	const char msg1[] = "ONLINE All %d, Read %d Failed %d, Transmit %d Failed %d, Checksum error %d  FGB@     %s";
	const char msg2[] = "COMM All %d, Read %d Failed %d, Transmit %d Failed %d, Checksum error %d  FGB@     %s";
	const char msg99[] = "UNK FORMAT All %d, R%d F%d, T%d F%d, C%d FGB@     %s   ";

	V_help T[] = {
		{
			.message = "commands 1",
			.display = "displays 1",
		},
		{
			.message = "commands 2",
			.display = "displays 2",
		},
		{
			.message = "commands 3",
			.display = "displays 3",
		},
		{
			.message = "commands 4",
			.display = "displays 4",
		},
	};

#ifdef	__cplusplus
}
#endif

#endif	/* MSG_TEXT_H */

