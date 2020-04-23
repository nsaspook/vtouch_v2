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
#ifndef MBMC_H
#define	MBMC_H

#include <xc.h> // include processor files - each processor file is guarded.  
#include <time.h>
#include "vconfig.h"
#include "daq.h"

#define LOCALTIME_OFFSET	60ul*60ul*(-8ul)
#define LP_BUFFER_SIZE	ADC_BUFFER_SIZE+8
#define STATIC_LOAD_POWER	14.00
#define BANKAH	225.0	// baatery bank label Ah
#define DEGRADE	150.0	// adjust to what the battery bank Ah really is
#define SSLICE	3600.0	// samples per hour

#ifdef DEBUG_HIST1
#define DUPDATE 600 // after dark update time offset
#else
#define DUPDATE 14400 // after dark update time offset
#endif

#define BLOAD1		10.0       	// load resistor in ohms
#define BLOAD2		2.5       	// ditto
#define MAX_LOAD_TIME	75

#define ROR_LIMIT_LOW	0.0140
#define ROR_LIMIT_SET	0.0001
#define ROR_LIMIT_NOISE	0.0051

#define ROR_WAIT	2000
#define ROR_TIMES	30

#define DAWN_VOLTS	22.0
#define DUSK_VOLTS	12.0
#define BRIGHT_VOLTS	50.0
#define BAT_LOW_VOLTS	21.5
#define BAT_DEAD_VOLTS	18.0
#define MAX_AC_TIME	60*60*4 // AC charger max runtime per trigger
#define DAY_DELAY	240
#define SOC_TOO_LOW	20
#define SOC_CRITICAL	3

#define CEF		1.0
#define PEUKERT		1.0

typedef struct C_data { // real calculated variables
	float calc[ADC_BUFFER_SIZE];
	float c_load, c_bat, c_pv, c_mppt, v_cc, v_pv, v_bat, v_cbus, v_bbat, v_temp, v_inverter, v_sensor, v_cmode, bv_ror, bc_ror;
	float p_load, p_inverter, p_pv, p_bat, p_mppt, start_power;
	float t_comp, esr;
	float bank_ah, dynamic_ah, pv_ah, loadah, dynamic_ah_adj, dynamic_ah_daily, dynamic_ah_adj_daily;
	float bkwi, bkwo, pvkw, invkw, loadkw;
	uint16_t runtime, soc;
	bool update;
	hist_type hist[1];
	float load_i1, load_i2, bv_noload, bv_one_load, bv_full_load;
	bool day, dupdate;
	uint32_t day_start, day_end, day_update, updates;
} C_data;

typedef struct P_data {
	uint8_t BCHECK : 1;
	uint8_t TIMERFLAG : 1;
	uint8_t PRIPOWEROK : 1;
	uint8_t FORCEOUT : 1;
	uint8_t WORKERFLAG : 1;
	uint8_t CHARGEROVERRIDE : 1;
	uint8_t FAILSAFE : 1;
	uint8_t MORNING_HELP : 1;
	uint8_t SYSTEM_STABLE : 1;
	uint8_t HOLD_PROC : 1;
	uint8_t POWER_UNSTABLE : 1;
	uint8_t B2 : 1;
	uint8_t B3 : 1;
	uint8_t B4 : 1;
	uint8_t SET_BATT : 1;
	uint8_t BLANK_LCD : 1;
	uint8_t STATIC_SOC : 1;
	uint8_t SET_CEF : 1;
	uint8_t D_UPDATE : 1;
	uint8_t GLITCH_CHECK : 1;
	uint8_t FORCEDAY : 1;
	uint8_t COOLING : 1;
	uint8_t UPDATE_EEP : 1;
	uint8_t RESET_ZEROS : 1;
	uint8_t SAVE_DAILY : 1;
	uint8_t SETBATT_SOC : 1;
	uint8_t SYNCSOC : 1;
} P_data_t;

typedef enum {
	WIDE_ZERO = 1,
	NO_NEG = 2,
	SKIP = 8,
} FIX_CODES;

float lp_filter(const float, const uint8_t, const int8_t);
void convert_adc_data(void);
void calc_model_data(void);
void calc_ror_data(void);
void static_soc(void);
void set_load_relay_zero(const bool);
void set_load_relay_one(const bool);
void set_load_relay_two(const bool);
void set_ac_charger_relay(const bool);
bool get_ac_charger_relay(void);
bool check_day_time(void);
void load_hist_data(void);
float calc_fixups(float data, FIX_CODES fixup);

char spinners(uint8_t, uint8_t);
time_t time(time_t *);
void set_time(const time_t t);
#endif
