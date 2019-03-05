/* 
 * File:   gemsecs.h
 * Author: root
 *
 * Created on February 26, 2019, 2:58 PM
 */

#ifndef GEMSECS_H
#define	GEMSECS_H

#ifdef	__cplusplus
extern "C" {
#endif

#define ENQ	0x05
#define EOT	0x04
#define ACK	0x06
#define NAK	0x15

#include "vconfig.h"

	typedef struct block10_type {
		uint32_t systemb;
		uint8_t bidl;
		uint8_t bidh : 7;
		uint8_t ebit : 1;
		uint8_t function;
		uint8_t stream : 7;
		uint8_t wbit : 1;
		uint8_t didl;
		uint8_t didh : 7;
		uint8_t rbit : 1;
	} block10_type;

	typedef union block10 {
		uint8_t b[10];
		struct block10_type block;
	} block10;

	typedef struct header10 {
		uint16_t checksum;
		union block10 block;
		uint8_t length;
	} header10;

	uint16_t block_checkmark(uint8_t *, uint16_t);
	LINK_STATES r_protocol(LINK_STATES *);
	LINK_STATES t_protocol(LINK_STATES *);

#ifdef	__cplusplus
}
#endif

#endif	/* GEMSECS_H */

