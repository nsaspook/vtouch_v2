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
#include <stdint.h>
#include <stdlib.h>
#include <stdbool.h>
#include "mcc_generated_files/dma5.h"
#include "mcc_generated_files/pin_manager.h"
	
#define DMA_M		0x04	// DMA modules number

#define SYNC_LEVEL	0
#define BLANK_LEVEL	1
#define BLACK_LEVEL	1
#define VIDEO_LEVEL	2

#define DMA_B		466	// timing adjustment of H sync pulses for 63.2us
#define V_BUF_SIZ	512	// data buffer array size
#define S_COUNT		247	// scanlines 
#define H_SYNC		1	// number of H sync lines
#define H_COUNT		14	// post H sync scanlines

#define S_END		38	// H scan pulse	
#define B_START		48	// H front-porch
#define V_START		48	// Video start
#define V_END		200	// Video end

#define V_DOTS		100	// scanline video dot position

	enum s_mode_t {
		sync0, sync1, sync2, sync3, sync_error
	};

	extern uint8_t vsync[V_BUF_SIZ];
	extern uint8_t hsync[V_BUF_SIZ];
	extern volatile uint8_t vbuffer[V_BUF_SIZ], *vbuf_ptr;
	extern volatile uint32_t vcounts;
	extern volatile uint8_t vfcounts, scan_line;
	extern volatile bool ntsc_vid, ntsc_flip;
	extern volatile enum s_mode_t s_mode;

	void ntsc_init(void);

	/*
	 * NTSC state machine options
	 * 
	 * scan_line: Set to zero to display data on all scan lines or [1..S_COUNT] to display only on that scan line
	 * nstc_vid: Blank video when scan_line is set to zero for all lines
	 * ntsc_flip: use alternative scan_line buffer
	 */

#ifdef	__cplusplus
}
#endif

#endif	/* NTSC_H */

