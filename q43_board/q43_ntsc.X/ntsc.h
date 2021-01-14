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
#include "mcc_generated_files/tmr4.h"
#include "font_basic.h"

#define DMA_M		0x04	// DMA modules number

#define SYNC_LEVEL	0 // clear all PORTB bits
#define BLANK_LEVEL	1 // PORTB bit 0 set
#define BLACK_LEVEL	1 // "
#define VIDEO_LEVEL	2 // PORTB bit 1

#define DMA_B		230	// timing adjustment of H sync pulses for 63.2us: 473
#define V_BUF_SIZ	256	// data buffer array size : 256
#define S_COUNT		247	// scanlines 
#define H_SYNC		3	// number of H sync lines
#define H_COUNT		12	// post H sync scanlines
#define B_COUNT		S_COUNT-30	// bottom blank scanlines

#define S_END		16	// H scan pulse	: 37
#define B_START		24	// H front-porch : 48
#define SL_DOTS		80	// scanline video dot position : 160
#define V_START		24	// Video start : 48
#define V_END		200	// Video end : 400
#define V_H		DMA_B/2

#define TASK_S1		85
#define TASK_S2		30

#define SL_V_OFF	0XFE
#define SL_V1		0b11111100
#define SL_V2		0b11111010
#define SL_V3		0b11110110
#define SL_V4		0b11101110
#define SL_MASK		0b00011110

	enum s_mode_t {
		sync0, sync1, syncB, sync2, sync3, sync_error
	};

	extern uint8_t vsync[V_BUF_SIZ];
	extern uint8_t hsync[V_BUF_SIZ];
	extern volatile uint8_t *vbuf_ptr;
	extern volatile uint32_t vcounts;
	extern volatile uint8_t vfcounts, scan_line;
	extern volatile bool ntsc_vid, ntsc_flip, task_hold;
	extern volatile enum s_mode_t s_mode;

	void ntsc_init(void);
	
	void ntsc_font(uint8_t, uint8_t);

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

