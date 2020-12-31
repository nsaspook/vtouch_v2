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
#include <stdlib.h>
#include <stdbool.h>
#include "mcc_generated_files/dma5.h"
#include "mcc_generated_files/pin_manager.h"

#define LO		0
#define SYNC_LEVEL	0
#define BLANK_LEVEL	1
#define BLACK_LEVEL	0
#define VIDEO_LEVEL	0

#define DMA_B		234

	extern uint8_t vsync[256];
	extern uint8_t hsync[256];
	extern volatile uint32_t vcounts;
	extern volatile uint8_t vfcounts;

	void ntsc_init(void);

#ifdef	__cplusplus
}
#endif

#endif	/* NTSC_H */

