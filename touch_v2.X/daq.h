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
 * 12-bit analog 64 sample average per channel on ports A and B
 * uses the compute burst average mode threshold interrupt to auto change
 * channels during interrupt after a repeat count
 */

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef DAQ_H
#define	DAQ_H

#include <math.h>
#include "mcc_generated_files/spi1.h"
#include "mcc_generated_files/crc.h"
#include "timers.h"
#include "tests.h"
#include "vconfig.h"

/*
 * adc channel configuration
 */
#define LAST_ADC_CHAN	0XD
#define ADC_BUFFER_SIZE	16 // MUST BE AT LEAST 1
#define ADC_SCAN_SPEED	200 // sample timer speed in ms
#define ADC_SCAN_CHAN	0b0011110001110111 // convert these analog ports bitmap

/*
 * Normal or high volt channels (bit set)
 */
#define ADC_V_CHAN_TYPE 0b0010000000100000

/*
 * current sensor configuration
 */
#define NUM_C_SENSORS	3
#define ADC_C_CHAN	0b0000100000000011 // 5 volt hall current sensor bitmap
#define ADC_C_CHAN_TYPE	0b0000000000000001 // 0 - 100A, 1=200A
/*
 * temp sensor configuration
 */
#define NUM_T_SENSORS	0
#define ADC_T_CHAN	0b0000000000000000 // 5 volt temp sensor bitmap
#define ADC_T_CHAN_TYPE	0b0000000000000000 // type bitmap

/*
 * dac channel configuration
 */
#define LAST_DAC_CHAN	0X1
#define DAC_BUFFER_SIZE	2 // MUST BE AT LEAST 1
#define DAC_LOAD_A	0b0100
#define DAC_LOAD_B	0b0101
#define DCHAN_A		0
#define DCHAN_B		1
#define DAC_SCALE	0.002442 // 10 vdc @ 12-bits resolution per bit

#define ZERO_RANGE	100
#define TEN_A_RANGE	100

#define EE_CHECKMARK	0x1957
#define TATE		0x42

//#define CAL_10A

/*
 * conversion constants
 */
/*
 * 13-bit adc result ADRPT 64 samples and a ADCRS of 5 [0..8190] steps
 */
#define C_SCALE		0.6250000
#define V_SCALE		4.1254125
#define V_SCALE_H	8.2000000

#define A200		0 // BATTERY,  adc line 0
#define A100		1 // CV,       adc line 1
#define A100M		2 // PV,       adc line 1

#define C_A200		0.0862000 // BATTERY Amp scalar, second line [0]
#define C_A100		0.0361010 // PV Amp scalar, first line [1]

#define C_OFFSET200	3938 // BATTERY sensor adc zero Amp counts, line 0
#define C_OFFSET100	4004 // PV sensor adc zero Amp counts,      line 1

/*
 * sanity check values for current calibration routines
 */
#define C_CAL_ZERO	4000
#define C_CAL_A200	4050 // fixme with real values
#define C_CAL_A100	4278 // ..

#include <xc.h> // include processor files - each processor file is guarded.  
#include "mcc_generated_files/adcc.h"
#include "mcc_generated_files/pin_manager.h"
#include "mcc_generated_files/memory.h"

typedef enum {
	CONV, // auto system conversion
	O_CONV, // convert to voltage for calibration/offsets
} adc_conv_t;

bool start_adc_scan(void);
bool check_adc_scan(void);
void clear_adc_scan(void);
bool update_adc_result(void);
adc_result_t get_raw_result(const adcc_channel_t);
float conv_raw_result(const adcc_channel_t, const adc_conv_t);
void dac_spi_control(bool);
void set_dac(void);
uint16_t set_dac_a(float);
uint16_t set_dac_b(float);
bool cal_current_zero(bool, int16_t, int16_t);
bool cal_current_10A(bool, int16_t, int16_t, float, float);
bool read_cal_data(void);
void write_cal_data(void);
void update_cal_data(void);
bool update_hist_data(bool, volatile hist_type*);
void set_hist_flag(void);
#endif

