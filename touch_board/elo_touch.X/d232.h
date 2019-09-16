/* Microchip Technology Inc. and its subsidiaries.  You may use this software
 * and any derivatives exclusively with Microchip products.
 *
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS".  NO WARRANTIES, WHETHER
 * EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
 * WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
 * PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION
 * WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION.
 *
 * IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
 * INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
 * WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
 * BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE.  TO THE
 * FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS
 * IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF
 * ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *
 * MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
 * TERMS.
 */

/*
 * File:
 * Author:
 * Comments:
 * Revision history:
 * 40 bits of data in 5 8-bit ports
 * port1 input
 * port-2-5 output
 * I/O to Digital232 is binary format
 */

// This is a guard condition so that contents of this file are not included
// more than once.
#ifndef XC_HEADER_TEMPLATE_H
#define	XC_HEADER_TEMPLATE_H

#include <xc.h> // include processor files - each processor file is guarded.
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include "mcc_generated_files/pin_manager.h"
#include "mcc_generated_files/uart2.h"
#include "mcc_generated_files/adcc.h"
#include "mcc_generated_files/pwm8.h"
#include "timers.h"

#define sw_version "1.02"
/*
 * 1.01	Add auto game switching back to startup game
 * 
 */

#define RST	"XQ\r"
#define CNF	"C4\r"
#define FMT	"F4\r"
#define SRQ	"M4\r"
#define DRD	"R0\r"
#define DTEST	"T2\r"

#define SLED	LED_RSET_LAT

#define CHIRP	0x02
#define WARP	0x04
#define SIREN	0x01

#define	DEFAULT_SEQ	0
#define DEBUG_SEQ	1
#define WIN_SEQ		2
#define CYLON		0
#define LED_BAL		3

#define DISPLAY_UPDATE	500	// 1000
#define RXTO_DELAY	250	// 250

#define ADC_SCALE	255.0
#define ADC_SCALE_ZERO	-127

typedef enum {
	D232_IDLE,
	D232_INIT,
	D232_OUT_IN,
	D232_SRQ,
	D232_UPDATE
} D232_STATE;

typedef enum {
	IO_IDLE,
	IO_INIT,
	IO_OUT,
	IO_IN,
	IO_SRQ,
	IO_UPDATE,
	IO_FAIL,
} IO_STATE;

typedef enum {
	S_IDLE,
	S_S,
	S_R,
	S_Q,
	S_NUM,
	S_UPDATE,
} SRQ_STATE;

typedef enum {
	UP,
	ON,
	DOWN,
} BAL_STATE;

typedef struct A_data {
	uint8_t inbytes[5]; // input from Digital232 buffer
	uint8_t outbytes[5]; // output from Digital232 buffer
	bool input_ok;
	bool output_ok;
	IO_STATE io;
	D232_STATE d232;
	SRQ_STATE srq;
	BAL_STATE BAL;
	uint8_t srq_value, seq_value, hits, misses, score, stats, rnd_count;
	adc_result_t button_value, seq_current;
	uint16_t speed, slower, clock;
	bool speed_update, sequence_done, win, f1, f2, f3, f4;
	int8_t rnd;
} A_data;

typedef struct BPOT_type {
	/*
	 * ADC result norm
	 */
	int16_t offset;
	int16_t span, range;
	float scalar;
	int16_t zero;
	int16_t result;
} BPOT_type;

typedef struct IN_data {
	/*
	 * port 0
	 */
	uint8_t b0 : 1;
	uint8_t detonator : 1;
	uint8_t pir : 1;
	uint8_t b3 : 1;
	uint8_t b4 : 1;
} IN_data;

typedef struct OUT_data1 {
	/*
	 * port1
	 */
	uint8_t sound1 : 1;
	uint8_t chirp : 1;
	uint8_t sound3 : 1;
	uint8_t misc1 : 1;
	uint8_t misc2 : 1;
	uint8_t filler1 : 3;
} OUT_data1;

typedef struct OUT_data2 {
	/*
	 * port2
	 */
	uint8_t led1 : 1;
	uint8_t led2 : 1;
	uint8_t led3 : 1;
	uint8_t led4 : 1;
	uint8_t led5 : 1;
	uint8_t led6 : 1;
	uint8_t led7 : 1;
	uint8_t led8 : 1;
} OUT_data2;

void Digital232_init(void);
bool Digital232_RW(void);
void led_lightshow(uint8_t, uint16_t);
bool once(bool*);
int16_t calc_pot(adc_result_t);
float lp_filter(float, int16_t, int16_t);

#ifdef	__cplusplus
extern "C" {
#endif /* __cplusplus */

	// TODO If C++ is being used, regular C code needs function names to have C
	// linkage so the functions can be used by the c code.

#ifdef	__cplusplus
}
#endif /* __cplusplus */

#endif	/* XC_HEADER_TEMPLATE_H */

