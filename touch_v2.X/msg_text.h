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

	typedef enum {
		display_message = 0,
		display_online,
	} DISPLAY_TYPES;

	const char msg0[] = "MESSAGE Read state %d Failed %d, Transmit state %d Failed %d, Checksum error %d  FGB@MCHP %s";
	const char msg1[] = "ONLINE Read state %d Failed %d, Transmit state %d Failed %d, Checksum error %d  FGB@MCHP %s";
	const char msg99[] = "UNKNOWN TEXT FORMAT Read state %d Failed %d, Transmit state %d Failed %d, Checksum error %d  FGB@MCHP %s";

#ifdef	__cplusplus
}
#endif

#endif	/* MSG_TEXT_H */

