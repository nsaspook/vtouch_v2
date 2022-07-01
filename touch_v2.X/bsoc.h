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
#ifndef BSOC_H
#define	BSOC_H

#include <xc.h> // include processor files - each processor file is guarded.  
#include <math.h>
#include <stdio.h>
#include <string.h>
#include "mcc_generated_files/tmr3.h"
#include "vconfig.h"
#include "mbmc.h"
#include "eadog.h"
#include "timers.h"
#include "hid.h"
#include "mconfig.h"

#define	MAXRUNTIME	95.0
#define MINRUNTIME	0.05
#define Perk_ADJ_FL	1.10	// If the peukert_adj is below this, adjust the Ah out by this Ah adjustment factor
#define Perk_ADJ_FH	5.00	// If the peukert_adj is above this, adjust the Ah out by this Ah adjustment factor
#define Temp_ADJ_FL	1.20	// Adjust the battery cap up or down 1C by this percentage from Temp_ZERO
#define Temp_ZERO	267l	// Temperature for base battery rate capacity in tenths of C
#define	CEF_HSOC	0.45    // Charge Efficiency Factor, high SOC
#define CEF_MSOC	0.70    // middle
#define	CEF_LSOC	0.90    // Charge Efficiency Factor, low SOC
#define CEF_OVER	0.99    // CEF overflow in calc
#define CEF_MAX		0.95 	// Invalid charge factor above this, should be about the same as CEF_LOSC
#define CEF_MIN		0.40	// Invalid charge factor below this
#define CEF_RESET	0.80    // reset AH values below this point.
#define CEF_DERATE	1.20	// Ahi derate factor to start dynamic CEF corrections
#define	SOC_DERATE	70      // derate CEF above this
#define SOC_CEF		100	// Max state of charge to update dynamic charge efficiency factors
#define HI_ESR		1500	// highest possible esr

#define BVSOC_SLOTS     26      // Battery to SOC data table slots

#define FLOAT_TIME	60	// cc in float mode delay time before flag set

/*
 * PV side diversion
 */
#define DPWM_FULL	300
#define DPWM_LOW_VOLTS	40.0
#define PV_MAX_POWER	300.0
#define PWM_MAX_POWER	250.0
#define PWM_WIN_POWER	10.0


typedef enum {
	R_CYCLE = 0,
	R_TOTAL,
	R_PV,
	R_BAT,
} R_CODES;

typedef enum {
	M_DEACT = 0,
	M_ACT = 1,
	M_MPPT = 2,
	M_EQUAL = 3,
	M_BOOST = 4,
	M_FLOAT = 5,
	M_LIMIT = 6,
	M_OFFLINE = 255,
} M_CODES;

extern volatile C_data C;
extern V_data V;
extern H_data H;
extern const char *build_date, *build_time;

void calc_bsoc(void);
void init_bsoc(void);
void start_bsoc(void);
void stop_bsoc(void);
void reset_bsoc(R_CODES);
uint16_t Volts_to_SOC(uint32_t);
uint32_t peukert(uint16_t, double, double, int16_t);
double esr_check(uint8_t);
uint8_t cc_state(double);
bool pv_diversion(bool);

#endif	/* BSOC_H */

