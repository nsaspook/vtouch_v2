/*  * File:   vconfig.h
 * Author: root
 *
 * Created on February 19, 2019, 4:41 PM
 */

#ifndef VCONFIG_H
#define	VCONFIG_H

#include "mcc_generated_files/adcc.h"
#include "mcc_generated_files/ext_int.h"

#ifdef	__cplusplus
extern "C" {
#endif

#include <xc.h>
#include <time.h>
#include <stdint.h>
#include "mcc_generated_files/spi1.h"
#include "mcc_generated_files/pin_manager.h"
#include "ringbufs.h"

#define VER	"1.58"
	/*
	 * 0.1 MBMC new version for one 24vdc battery string for the 57K42
	 * 0.2 start to configure the hardware for mbmc duty
	 * 0.3 configure for mbmc_io board
	 * 0.4 ADC setup
	 * 0.5 remove gemsecs coding
	 * 0.6 adc scanning by threshold interrupt using burst average mode
	 * 0.7 system data conversion from ADC data
	 * 0.8 basic current and voltage tracking
	 * 0.9 auto convert bitmaps
	 * 0.91 start adding 32 utc time code
	 * 0.94 switch input code
	 * 0.95	MAX6818 interrupt coding
	 * 0.97 need hardware fix on mbmc_io board to repair bypassed resistors R20 and R18
	 * 0.98 last of the hardware bugs fixed
	 * 0.99 power load calculations
	 * 1.0+ mainly working code base
	 * 1.07 move MAX6818 enable pin for board rev 1.1
	 * 1.08 NHD 4x20 display
	 * 1.16 update logging format
	 * 1.17 current sensor calibration functions
	 * 1.18 EEPROM routines
	 * 1.19 8-bit crc for EEPROM change detection
	 * 1.20 optional 10A calibration
	 * 1.21 history tracking in EEPROM
	 * 1.21 history update in EEPROM
	 * 1.23 line 4 display issues with history display functions, temp fix is to set MAX_LINE to 19
	 *      need to work on this for a correct fix. review LCD_addressing.pdf in host_board folder
	 * 1.24 fix LCD problems, was trying to send a 0x00 using printf
	 * 1.25 load time_t date from saved EEPROM history if valid
	 * 1.29 fine tuning the ADC configuration
	 * 1.31 add third hall-sensor for actual PV current and CC current for MPPT VI conversion tracking
	 * 1.32 data number fixups for display and calculations
	 * 1.33 reorder logging data format
	 * 1.34 CC mode to voltage decoding routines
	 * 1.35 AC charger limits and float cycle counts for H[11]
	 * 1.36 Charge controller op mode FIXUPS
	 * 1.37 HID button response fixes, use bitmap data for stored button press info in hid.c
	 * 1.38 UART 1 serial control parser. 'V' AC charger ON, 'v' AC charger off, '#' Show system information
	 * 1.39 Tweak one second interrupt times for better precision
	 * 1.40 SOC and AH corrections at FLOAT and BOOST triggers from charge controller
	 * 1.41 add daily ah tracking
	 * 1.42 fix daily tracking
	 * 1.43 add option using BAT_100A in daq.h to select Honeywell sensor for battery current sensor
	 * 1.44 DC dump load from PV functions
	 * 1.45 WDT hang protection
	 * 1.46 server time updates
	 * 1.47 Battery low voltage checks for charger activation
	 * 1.48 add third current sensor zero calibration
	 * 1.49 restructure and optimizations
	 * 1.50 current sensor options in daq.h: CAL_10A  CAL_TWO
	 * 1.51 change ADC to FRC clock source
	 * 1.52 back to ext clock for ADC with increased time for hold sample
	 * 1.53 fix lcd display line limits
	 * 1.54 uptime records
	 * 1.55 refactor
	 * 1.56 adjust low voltage cutoff routines
	 * 1.58 MPLAB_IDE 6.00
	 */
	//#define TESTING
	//#define DISPLAY_SLOW
#define DEF_TIME	1610856503

#define SLED	LED0_LAT

#define EADOGM_CMD_CLR		1
#define EADOGM_CMD_CURSOR_ON     0b00001111
#define EADOGM_CMD_CURSOR_OFF    0b00001100
#define EADOGM_CMD_DISPLAY_ON    0b00001100
#define EADOGM_CMD_DISPLAY_OFF   0b00001000
#define EADOGM_CMD_DDRAM_ADDR    0b10000000
#define EADOGM_CMD_CGRAM_ADDR    0b01000000
#define EADOGM_CMD_SELECT_R0     0b00011000
#define EADOGM_CMD_SELECT_R1     0b00010000
#define EADOGM_CMD_SET_TABLE2    0b00101010
#define EADOGM_COLSPAN		16

#define NHD		// 4x20 SPI display

#define T1	500
#define T2	3000
#define T3	5000
#define T4	5000
#define HBTS	5000 // short ping delay
#define HBTL	30000 // ping delay
#define	RTY	3
#define ERROR_CHECKSUM	31500
#define ERROR_COMM	31500

#define DEFAULT_TID	1
#define TDELAY	3000
#define LDELAY	1000
#define SDELAY	500
#define BDELAY	300
#define DDELAY	250  // display update spacing
#define TXTDELAY 10000 // unix time from server timeout
#define SOCDELAY 125 // sync SPI and UART dma
#define DFLIP	1500 // display info flipping spacing

#define LOG_WAIT	10 // data logging internval in seconds
#define D_CODE		'5'  // data logging line code version
#define I_CODE		'*'  // info logging line code

#define CAL_DELAY	64

	/*
	 * offsets in bytes
	 */

#define TX_RESERVE	59
#ifdef  NHD
#define MAX_LINE	20
#else
#define MAX_LINE	16
#endif
#define MAX_BUTTONS	8

#define HPARAM_SIZE     13
#define HVER		1

#define BL_TIME		600

#define CC_DEACT	74	// 1.10
#define CC_ACT		100	// 1.43
#define CC_MPPT		120	// 1.75
#define CC_EQUAL	140	// 2.10
#define CC_BOOST	160	// 2.45
#define CC_FLOAT	180	// 2.82
#define CC_LIMIT	200	// 3.20
#define CC_OFFLINE	240	// 4.00

	struct spi_link_type { // internal SPI state table
		uint8_t SPI_LCD : 1;
		uint8_t SPI_AUX : 1;
		uint8_t LCD_TIMER : 1;
		volatile uint8_t LCD_DATA : 1;
		uint16_t delay;
		uint8_t config;
		struct ringBufS_t *tx1b, *tx1a;
		volatile int32_t int_count;
	};

	typedef enum {
		DIS_STR = 0,
		DIS_HELP,
		DIS_ERR,
		DIS_CLEAR,
	} D_CODES;

	typedef struct terminal_type {
		uint8_t mesgid;
		uint8_t TID, mcode, mparm, cmdlen, log_seq;
		uint8_t host_display_ack : 1;
		D_CODES info, help_temp;
		uint16_t ceid;
		uint16_t log_num;
	} terminal_type;

	typedef enum {
		UI_STATE_INIT = 0,
		UI_STATE_HOST,
		UI_STATE_DEBUG,
		UI_STATE_LOG,
		UI_STATE_MON,
		UI_STATE_ERROR
	} UI_STATES;

	typedef enum {
		SW_OFF = 0,
		SW_ON,
		SW_INVALID,
	} SW_STATES;

	typedef enum {
		S0 = 0,
		S1 = 1,
		SSELECT = 2,
		SENTER = 3,
		SCALIB = 4,
		S5,
		S6,
		SNULL,
	} SW_NAMES;

	typedef struct V_data { // control data structure 
		UI_STATES ui_state;
		char buf[64], info[64], rbuf[16];
		volatile time_t ticks, blight, ac_time, boot_time;
		volatile int8_t testing;
		volatile uint8_t sys_info : 1, ac_on : 1, ac_off : 1, time_info : 1, get_time_text : 1;
		uint8_t error, abort, msg_error, msg_ret, alarm, float_ticks, boost_ticks, wdt_ticks;
		UI_STATES ui_sw;
		uint16_t r_checksum, t_checksum, checksum_error, mode_pwm, sequences, all_errors;
		uint8_t set_sequ : 1, debug : 1, help : 1, stack : 3, help_id : 2, screen : 1;
		terminal_type response;
		volatile uint8_t ticker, cc_state;
		bool flipper, calib, enter, sensor_set, fixup, cc_active;
		volatile bool system_stable, blight_off, in_float, in_boost;
		volatile uint32_t lowint_count, timerint_count, tx_count, rx_count, adc_count, spi_count, switch_count;
	} V_data;

	typedef struct V_help {
		const char message[22], display[22];
	} V_help;

	/*		hist[x].h[x]
	 *		h0	Real Ah usage this cycle
	 *		h1	Total charge cycles into at least boost
	 *		h2	Current lowest discharge,
	 *		h3	PV ah total
	 *		h4	Batt W out 
	 *		h5	Batt W in
	 *		h6	Real Ah usage 
	 *		h7	Batt Voltage full load
	 *		h8	Batt Voltage one load
	 *		h9	Lowest ESR
	 *		h10	Highest ESR
	 *		h11	Total charge cycles into float
	 *		h12	Total kWH in
	 */

	typedef struct hist_type {
		int32_t pv_eff, tot_eff; // pv generation eff factor, total system eff factor
		uint32_t ttg_t, updates;
		time_t pclock;
		float peukert, cef, peukert_adj, cef_calc, cef_save;
		int16_t h[HPARAM_SIZE]; // h[6]=cumulative battery Ah cc and inv (real),h[0]=cumulative battery Ah cc and inv (p_adj)
		uint16_t rate, udod, bsoc, bound_rate, bound_factor, samplei, sampleo, ah, drate, esr, rest_rate, rest_factor, esrp;
		uint8_t version;
	} hist_type;

#ifdef	__cplusplus
}
#endif

#endif	/* VCONFIG_H */

