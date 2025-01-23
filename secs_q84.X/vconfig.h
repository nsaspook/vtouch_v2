/* 
 * File:   vconfig.h
 * Author: root
 *
 * Created on February 19, 2019, 4:41 PM
 */

#ifndef VCONFIG_H
#define	VCONFIG_H

//#include "mcc_generated_files/adcc.h"

#ifdef	__cplusplus
extern "C" {
#endif

#include <xc.h>
#include "mcc_generated_files/spi1.h"
#include "mcc_generated_files/pin_manager.h"
#include "ringbufs.h"

#define NHD

#define VER	"2.03A"
	/*
	 * 1.13G wafer load-lock control
	 * 1.15 add specific equipment types V.e_types
	 * 1.22 message sequencing in secs_II_message
	 * 2.00 Version for 47Q84
	 * 2.01 uart to uart loopback testing with FAKER define
	 * 2.02 more cleanups of code
	 * 2.03 rework trace code
	 */
	//#define TESTING
	//#define DISPLAY_SLOW

#define FAKER

	//#define DB1
	//#define DB2
	//#define DB3
	//#define DB4
	//#define RERROR	// generate 'random' checksum/link errors to simulate rs-232 bit errors
	//#define DISP_TRIG
#define SEQ_TEST	false	// testing message template transfers

#define SLED	MLED_LAT
#define DLED	DLED_LAT

#define TRACE
	// EXT_IO PIN 5, RB6 PGC
	// EXT_IO pin 6, RB7 PGD, I_TRACE
	// EXT_IO pin 2, MISC_IO pin 5, RD5 M_TRACE
	// EXT_IO pin 3, MISC_IO pin 7, RD7 DEBUG1/E_TRACE


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
#define DDELAY	100 // display update spacing
#define DFLIP	1500 // display info flipping spacing

#define Y2KTIME

	/*
	 * offsets in bytes
	 */

#define TX_RESERVE	59

	/*
	 * Host message ACK CEIDs
	 */
#define V_OSCREEN	93
#define V_SSCREEN	94
#define E_OSCREEN	81
#define E_OSCREEN	81

#define S10F3_STR_POS	135
#define S10F3_TID_POS	138

#define MAX_LINE	21
#define VBUF_MAX	21
#define SPIN_CHAR	19

	struct spi_link_type_o { // internal SPI state table
		uint8_t SPI_LCD : 1;
		uint8_t SPI_AUX : 1;
		uint8_t LCD_TIMER : 1;
		volatile uint8_t LCD_DATA : 1;
		uint16_t delay;
		uint8_t config;
		struct ringBufS_t *tx1b, *tx1a;
		volatile int32_t int_count;
	};

	struct spi_link_type { // internal SPI state table
		uint8_t SPI_LCD : 1;
		uint8_t SPI_AUX : 1;
		uint8_t LCD_TIMER : 1;
		volatile uint8_t LCD_DATA : 1;
		uint16_t delay;
		uint8_t config;
		uint8_t * txbuf;
		volatile int32_t int_count;
	};

	typedef struct B_type {
		volatile bool one_sec_flag;
		volatile uint16_t dim_delay;
		volatile bool display_update;
	} B_type;

	typedef enum {
		CODE_TS = 0,
		CODE_TM = 1,
		CODE_ONLOCAL = 2, // CEID codes
		CODE_ONREMOTE = 3,
		CODE_OFFLINE = 4,
		CODE_DEBUG,
		CODE_LOG,
		CODE_LOAD,
		CODE_UNLOAD,
		CODE_PUMP,
		CODE_HELP,
		CODE_SEQUENCE,
		CODE_ERR,
	} P_CODES;

	typedef enum {
		DIS_STR = 0,
		DIS_TERM,
		DIS_LOG,
		DIS_LOAD,
		DIS_UNLOAD,
		DIS_PUMP,
		DIS_HELP,
		DIS_SEQUENCE,
		DIS_SEQUENCE_M,
		DIS_ERR,
		DIS_CLEAR,
	} D_CODES;

	typedef struct terminal_type {
		uint8_t ack[32], mesgid;
		uint8_t TID, mcode, mparm, cmdlen, log_seq;
		uint8_t host_display_ack : 1;
		D_CODES info, help_temp;
		uint16_t ceid;
		uint16_t log_num;
	} terminal_type;

	typedef enum {
		SEQ_STATE_INIT = 0,
		SEQ_STATE_RX,
		SEQ_STATE_TX,
		SEQ_STATE_TRIGGER,
		SEQ_STATE_QUEUE,
		SEQ_STATE_DONE,
		SEQ_STATE_ERROR
	} SEQ_STATES;

	typedef enum {
		UI_STATE_INIT = 0,
		UI_STATE_HOST,
		UI_STATE_DEBUG,
		UI_STATE_LOG,
		UI_STATE_ERROR
	} UI_STATES;

	typedef enum {
		GEM_STATE_DISABLE = 0,
		GEM_STATE_COMM,
		GEM_STATE_OFFLINE,
		GEM_STATE_ONLINE,
		GEM_STATE_REMOTE,
		GEM_STATE_ERROR
	} GEM_STATES;

	extern const char * GEM_TEXT [];

	typedef enum {
		GEM_GENERIC = 0,
		GEM_VII80,
		GEM_E220,
		GEM_ERROR
	} GEM_EQUIP;

	typedef enum {
		LINK_STATE_IDLE = 0,
		LINK_STATE_ENQ,
		LINK_STATE_EOT,
		LINK_STATE_ACK,
		LINK_STATE_DONE,
		LINK_STATE_NAK,
		LINK_STATE_ERROR
	} LINK_STATES;

	typedef enum {
		LINK_ERROR_NONE = 10,
		LINK_ERROR_T1,
		LINK_ERROR_T2,
		LINK_ERROR_T3,
		LINK_ERROR_T4,
		LINK_ERROR_CHECKSUM,
		LINK_ERROR_NAK,
		LINK_ERROR_ABORT,
		LINK_ERROR_SEND
	} LINK_ERRORS;

	typedef enum {
		MSG_ERROR_NONE = 0,
		MSG_ERROR_ID = 1,
		MSG_ERROR_STREAM = 3,
		MSG_ERROR_FUNCTION = 5,
		MSG_ERROR_DATA = 7,
		MSG_ERROR_TIMEOUT = 9,
		MSG_ERROR_DATASIZE = 11,
		MSG_ERROR_RESET = 20
	} MSG_ERRORS;

	typedef struct V_data { // control data structure 
		SEQ_STATES s_state;
		UI_STATES ui_state;
		GEM_STATES g_state;
		GEM_EQUIP e_types;
		LINK_STATES m_l_state;
		LINK_STATES r_l_state;
		LINK_STATES t_l_state;
		char buf[64], terminal[160], info[64];
		uint32_t ticks, systemb;
		int32_t testing;
		uint8_t stream, function, error, abort, msg_error, msg_ret, alarm;
		UI_STATES ui_sw;
		uint16_t r_checksum, t_checksum, checksum_error, timer_error, ping, mode_pwm, equip_timeout, sequences, all_errors;
		uint8_t rbit : 1, wbit : 1, ebit : 1, set_sequ : 1,
		failed_send : 4, failed_receive : 4,
		queue : 1, debug : 1, help : 1, stack : 3, help_id : 2;
		terminal_type response;
		uint8_t uart, llid, sid, ping_count, euart;
		volatile uint8_t ticker;
		bool flipper;
	} V_data;

	typedef struct V_help {
		const char message[32], display[32];
	} V_help;

	extern char spinners(uint8_t, const uint8_t);
	/* spinner defines */
#define MAX_SHAPES  6
	const char spin[MAX_SHAPES][20] = {
		"||//--", // classic LCD version with no \ character
		"||//--\\\\", // classic
		"OOOOOO--__-", // eye blink
		"vv<<^^>>", // point spinner
		"..**x#x#XX||--", // warp portal
		"..ooOOoo" // ball bouncer
	};

#define SPIN_VAL_UPDATE	5

	extern B_type B;

	const char *build_date, *build_time;

	void wdtdelay(const uint32_t);

#ifdef	__cplusplus
}
#endif

#endif	/* VCONFIG_H */

