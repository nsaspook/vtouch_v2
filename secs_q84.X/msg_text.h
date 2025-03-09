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
		display_free,
	} DISPLAY_TYPES;

	/*
	 * *****************|*********|**********|**********|*********|***|
	 */
	const char msg0[] = "Host A%d, R%d RF%d, T%d TF%d, C%d %d %s       ";
	const char msg1[] = "ONLINE A%d, R%d RF%d, T%d TF%d, C%d %d %s     ";
	const char msg2[] = "%s %d %s                                      ";
	const char msg_gemhelp[] = "%s %s                                  ";
	const char msg_free[] = "%s %s                                     ";
	const char msg99[] = "UNK FORMAT A%d, R%d RF%d, T%d TF%d, C%d %s   ";

	V_help T[] = {
		{
			.message = "CMD: M, C           ",
			.display = "Message, Close      ",
			.extrams = "Text Message to Host",
		},
		{
			.message = "CMD: R, P, O        ",
			.display = "Ready, Pump, Open   ",
			.extrams = "Load Lock commands  ",
		},
		{
			.message = "CMD: L, S, D        ",
			.display = "Log, Sequence, Debug",
			.extrams = "                    ",
		},
		{
			.message = "CMD: E, H, F        ",
			.display = "Errors, Help, Free  ",
			.extrams = "E: Test  F: Speed   ",
		},
	};

#ifdef	__cplusplus
}
#endif

#endif	/* MSG_TEXT_H */

