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
#ifndef HID_H
#define	HID_H

#include <xc.h> // include processor files - each processor file is guarded.  
#include "dio.h"

typedef enum {
	HID_MAIN = 0,
	HID_PWR,
	HID_RUN,
	HID_AUX,
	HID_LAST,
} H_CODES;

typedef enum {
	H_STATE_INIT = 0,
	H_STATE_DISPLAY,
	H_STATE_WAIT,
	H_STATE_LOG,
	H_STATE_COMM,
	H_STATE_ERROR
} H_STATES;

typedef struct H_data { // control data structure 
	H_CODES hid_display;
	H_STATES h_state;
	bool wait_select, select_p, wait_enter, enter_p; // buttons pressed should clean
	uint8_t sequence;
} H_data;

H_data* hid_input(H_data*);
H_data* hid_display(H_data*);
bool check_enter_button(H_data*);
void clear_hid_pflags(H_data*);
void clear_hid_wflags(H_data*);

#endif	/* HID_H */

