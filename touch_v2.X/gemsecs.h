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

typedef struct block10 {
	uint8_t rbit : 1;
	uint8_t didh : 7;
	uint8_t didl;
	uint8_t wbit : 1;
	uint8_t stream : 7;
	uint8_t function;
	uint8_t ebit : 1;
	uint8_t bidh : 7;
	uint8_t bidl;
	uint32_t systemb;
} block10;

typedef struct header10 {
	uint8_t length;
	struct block10 block;
	uint16_t checksum;
} header10;
	
#ifdef	__cplusplus
}
#endif

#endif	/* GEMSECS_H */

