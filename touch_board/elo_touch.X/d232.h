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

#define sw_version "0.16"

#define RST	"XQ\r"
#define CNF	"C4\r"
#define FMT	"F4\r"
#define SRQ	"M4\r"
#define DRD	"R0\r"
#define DTEST	"T2\r"

#define SLED	LED_RSET_LAT

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
	IO_UPDATE
} IO_STATE;

typedef enum {
	S_IDLE,
	S_S,
	S_R,
	S_Q,
	S_NUM,
	S_UPDATE
} SRQ_STATE;

typedef struct A_data {
	uint8_t inbytes[5]; // input from Digital232 buffer
	uint8_t outbytes[5]; // output from Digital232 buffer
	bool	input_ok;
	bool	output_ok;
	IO_STATE	io;
	D232_STATE	d232;
	SRQ_STATE	srq;
	uint8_t		srq_value;
	adc_result_t	button_value;
} A_data;

void Digital232_init(void);
bool Digital232_RW(void);
void led_lightshow(uint8_t, uint16_t);

#ifdef	__cplusplus
extern "C" {
#endif /* __cplusplus */

	// TODO If C++ is being used, regular C code needs function names to have C 
	// linkage so the functions can be used by the c code. 

#ifdef	__cplusplus
}
#endif /* __cplusplus */

#endif	/* XC_HEADER_TEMPLATE_H */

