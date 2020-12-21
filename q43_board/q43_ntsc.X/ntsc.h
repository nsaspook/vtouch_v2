/* 
 * File:   ntsc.h
 * Author: root
 *
 * Created on December 20, 2020, 10:05 AM
 */

#ifndef NTSC_H
#define	NTSC_H

#ifdef	__cplusplus
extern "C" {
#endif
#include <xc.h>
#include "mcc_generated_files/dma5.h"
#include "mcc_generated_files/dma6.h"
#include "mcc_generated_files/tmr4.h"
#include "mcc_generated_files/dac1.h"


#define SYNC_LEVEL	0
#define BLANK_LEVEL	15
#define BLACK_LEVEL	25
#define VIDEO_LEVEL	50

	extern uint8_t vsync[256];
	extern uint8_t hsync[256];
	extern volatile uint32_t vcounts, vfcounts;

	void ntsc_init(void);

#ifdef	__cplusplus
}
#endif

#endif	/* NTSC_H */

