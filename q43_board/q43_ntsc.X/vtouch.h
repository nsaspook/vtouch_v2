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
 */

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef VTOUCH_H
#define	VTOUCH_H

#include <xc.h> // include processor files - each processor file is guarded.  

#define INTTYPES
#ifdef INTTYPES
#include <stdint.h>
#else
/*unsigned types*/
typedef unsigned char uint8_t;
typedef unsigned int uint16_t;
typedef unsigned long uint32_t;
typedef unsigned long long uint64_t;
/*signed types*/
typedef signed char int8_t;
typedef signed int int16_t;
typedef signed long int32_t;
typedef signed long long int64_t;
#endif

#define BUF_SIZE    64
#define	CAP_SIZE    256

#define	CMD_SIZE    2
#define	CMD_OVERFLOW	CMD_SIZE*12
#define ELO_SIZE    12
#define ELO_SEQ     10
#define ELO_REV_H	4096
#define ELO_SS_H_SCALE	0.483
#define ELO_SS_V_SCALE	0.380
#define	BLINK_RATE_E220	20000
#define AUTO_RESTART	false
#define SINGLE_TOUCH	false
#define GOOD_MAX        128		// max number of chars from TS without expected frames seen
#define MAX_CAM_TIME	5
#define MAX_CAM_TIMEOUT	30
#define MAX_CAM_TOUCH	5
#define CAM_RELAY       CAM_R_LAT  // SV6 pin 8
#define CAM_RELAY_AUX	CAM_R1_LAT // SV6 pin 7
#define K1		K1_LAT // SV6 pin 1
#define	TIMERPACKET     41000

#define BUF_SIZE_V80        16
#define	CMD_SIZE_V80        4		// CT size of command in bytes from touch screen
#define	CMD_SIZE_SS_V80	    6		// E281A-4002 software emulation Binary size of command
#define	HOST_CMD_SIZE_V80   6		// tool command size
#define	CMD_OVERFLOW_V80    HOST_CMD_SIZE_V80*2
#define ELO_SEQ_V80         10		// max smartset sequences
#define ELO_SIZE	    12
#define ELO_SIZE_V80        14		// number of bytes to send from elocodes_s configuration string
#define ELO_SIZE_I_V80      10		// max smartset sequence size
#define	BLINK_RATE_V80	25000		// BSG timing
#define	X_SCALE         1.90		// scaling factor to host screen X logical coords
#define	Y_SCALE         1.75		// scaling factor to host screen Y logical coords
#define	X_SCALE_SS      0.905		// scaling factor to host screen X logical coords
#define	Y_SCALE_SS      0.650		// scaling factor to host screen Y logical coords
#define	X_LOGICAL       119		// LCD touchscreen logical X frame coords
#define	Y_LOGICAL       94		// LCD touchscreen logical Y frame coords
#define	X_TOOL          202
#define	Y_TOOL          164

#define	BLINK_RATE_OTHER	15000	// BSG timing

#define	COMM_CHK_TIME	30		// LCD comm heartbeat
#define	LCD_CHK_TIME	36		// LCD heartbeat timeout


#ifdef	__cplusplus
extern "C" {
#endif /* __cplusplus */

	// TODO If C++ is being used, regular C code needs function names to have C 
	// linkage so the functions can be used by the c code. 

#ifdef	__cplusplus
}
#endif /* __cplusplus */

#endif	/* XC_HEADER_TEMPLATE_H */

