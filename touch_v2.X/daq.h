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
 * 12-bit analog 32 sample average per channel on ports A and B
 * uses the compute burst average mode threshold interrupt to auto change
 * channels during interrupt after a repeat count
 */

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef DAQ_H
#define	DAQ_H

/*
 * adc channel configuration
 */
#define LAST_ADC_CHAN	0XD
#define ADC_BUFFER_SIZE	0xF
#define ADC_SCAN_SPEED	500 // sample timer speed in ms
#define ADC_SCAN_CHAN	0b0011110001110111 // convert these analog ports bitmap
/*
 * current sensor configuration
 */
#define NUM_C_SENSORS	2
#define ADC_C_CHAN	0b0000000000000011 // 5 volt hall current sensor bitmap
#define ADC_C_CHAN_TYPE	0b0000000000000001 // 0 - 100A, 1=200A
/*
 * temp sensor configuration
 */
#define NUM_T_SENSORS	2
#define ADC_T_CHAN	0b0000100000000000 // 5 volt temp sensor bitmap
#define ADC_T_CHAN_TYPE	0b0000100000000000 // type bitmap

/*
 * conversion constants
 */
#define C_SCALE		1.25
#define V_SCALE		8.250825
#define C_A100		59.30
#define C_A200		30.00
#define C_OFFSET0	2493.0
#define C_OFFSET1	2472.0

#include <xc.h> // include processor files - each processor file is guarded.  
#include "mcc_generated_files/adcc.h"
#include "mcc_generated_files/pin_manager.h"

typedef enum {
	CONV,
	O_CONV,
} adc_conv_t;

bool start_adc_scan(void);
bool check_adc_scan(void);
void clear_adc_scan(void);
adc_result_t get_raw_result(adcc_channel_t);
float conv_raw_result(adcc_channel_t, adc_conv_t);

#endif

