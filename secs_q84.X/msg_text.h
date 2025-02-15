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
		display_remote,
		display_gemhelp,
	} DISPLAY_TYPES;

	/*
	 * *****************|*********|**********|**********|*********|***|
	 */
	const char msg0[] = "Host: All %d, R%d F%d, T%d F%d, Cksum%d %s    ";
	const char msg1[] = "ONLINE All %d, Read %d Failed %d, Transmit %d Failed %d, Checksum error %d         %s  ";
	const char msg2[] = "%s %s  ";
	const char msg_gemhelp[] = "%s %s  ";
	const char msg99[] = "UNK FORMAT All %d, R%d F%d, T%d F%d, C%d          %s   ";

	V_help T[] = {
		{
			.message = "CMD: M C              ",
			.display = "M: message, C: close  ",
		},
		{
			.message = "CMD: R P O            ",
			.display = "R: rdy P: pump O: open",
		},
		{
			.message = "CMD: L S D            ",
			.display = "L: log S: set D: debug",
		},
		{
			.message = "CMD: E H              ",
			.display = "E: Errors H: help mesg",
		},
	};

#ifdef	__cplusplus
}
#endif

#endif	/* MSG_TEXT_H */

