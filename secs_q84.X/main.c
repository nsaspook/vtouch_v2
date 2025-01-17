/**
  Generated Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This is the main file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  Description:
    This header file provides implementations for driver APIs for all modules selected in the GUI.
    Generation Information :
	Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.8
	Device            :  PIC18F47Q84
	Driver Version    :  2.00
 */

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
 */

// PIC18F47Q84 Configuration Bit Settings
// 'C' source line config statements
// CONFIG1
#pragma config FEXTOSC = ECH    // External Oscillator Selection (EC (external clock) above 8 MHz)
#pragma config RSTOSC = EXTOSC_4PLL// Reset Oscillator Selection (EXTOSC with 4x PLL, with EXTOSC operating per FEXTOSC bits)

// CONFIG2
#pragma config CLKOUTEN = ON    // Clock out Enable bit (CLKOUT function is enabled)
#pragma config PR1WAY = OFF     // PRLOCKED One-Way Set Enable bit (PRLOCKED bit can be set and cleared repeatedly)
#pragma config CSWEN = ON       // Clock Switch Enable bit (Writing to NOSC and NDIV is allowed)
#pragma config JTAGEN = OFF     // JTAG Enable bit (Disable JTAG Boundary Scan mode, JTAG pins revert to user functions)
#pragma config FCMEN = ON       // Fail-Safe Clock Monitor Enable bit (Fail-Safe Clock Monitor enabled)
#pragma config FCMENP = ON      // Fail-Safe Clock Monitor -Primary XTAL Enable bit (FSCM timer will set FSCMP bit and OSFIF interrupt on Primary XTAL failure)
#pragma config FCMENS = ON      // Fail-Safe Clock Monitor -Secondary XTAL Enable bit (FSCM timer will set FSCMS bit and OSFIF interrupt on Secondary XTAL failure)

// CONFIG3
#pragma config MCLRE = EXTMCLR  // MCLR Enable bit (If LVP = 0, MCLR pin is MCLR; If LVP = 1, RE3 pin function is MCLR )
#pragma config PWRTS = PWRT_OFF // Power-up timer selection bits (PWRT is disabled)
#pragma config MVECEN = ON      // Multi-vector enable bit (Multi-vector enabled, Vector table used for interrupts)
#pragma config IVT1WAY = ON     // IVTLOCK bit One-way set enable bit (IVTLOCKED bit can be cleared and set only once)
#pragma config LPBOREN = OFF    // Low Power BOR Enable bit (Low-Power BOR disabled)
#pragma config BOREN = SBORDIS  // Brown-out Reset Enable bits (Brown-out Reset enabled , SBOREN bit is ignored)

// CONFIG4
#pragma config BORV = VBOR_1P9  // Brown-out Reset Voltage Selection bits (Brown-out Reset Voltage (VBOR) set to 1.9V)
#pragma config ZCD = OFF        // ZCD Disable bit (ZCD module is disabled. ZCD can be enabled by setting the ZCDSEN bit of ZCDCON)
#pragma config PPS1WAY = OFF    // PPSLOCK bit One-Way Set Enable bit (PPSLOCKED bit can be set and cleared repeatedly (subject to the unlock sequence))
#pragma config STVREN = ON      // Stack Full/Underflow Reset Enable bit (Stack full/underflow will cause Reset)
#pragma config LVP = OFF        // Low Voltage Programming Enable bit (HV on MCLR/VPP must be used for programming)
#pragma config XINST = OFF      // Extended Instruction Set Enable bit (Extended Instruction Set and Indexed Addressing Mode disabled)

// CONFIG5
#pragma config WDTCPS = WDTCPS_31// WDT Period selection bits (Divider ratio 1:65536; software control of WDTPS)
#pragma config WDTE = OFF       // WDT operating mode (WDT Disabled; SWDTEN is ignored)

// CONFIG6
#pragma config WDTCWS = WDTCWS_7// WDT Window Select bits (window always open (100%); software control; keyed access not required)
#pragma config WDTCCS = SC      // WDT input clock selector (Software Control)

// CONFIG7
#pragma config BBSIZE = BBSIZE_512// Boot Block Size selection bits (Boot Block size is 512 words)
#pragma config BBEN = OFF       // Boot Block enable bit (Boot block disabled)
#pragma config SAFEN = OFF      // Storage Area Flash enable bit (SAF disabled)
#pragma config DEBUG = OFF      // Background Debugger (Background Debugger disabled)

// CONFIG8
#pragma config WRTB = OFF       // Boot Block Write Protection bit (Boot Block not Write protected)
#pragma config WRTC = OFF       // Configuration Register Write Protection bit (Configuration registers not Write protected)
#pragma config WRTD = OFF       // Data EEPROM Write Protection bit (Data EEPROM not Write protected)
#pragma config WRTSAF = OFF     // SAF Write protection bit (SAF not Write Protected)
#pragma config WRTAPP = OFF     // Application Block write protection bit (Application Block not write protected)

// CONFIG9
#pragma config BOOTPINSEL = RC5 // CRC on boot output pin selection (CRC on boot output pin is RC5)
#pragma config BPEN = OFF       // CRC on boot output pin enable bit (CRC on boot output pin disabled)
#pragma config ODCON = OFF      // CRC on boot output pin open drain bit (Pin drives both high-going and low-going signals)

// CONFIG10
#pragma config CP = ON         // PFM and Data EEPROM Code Protection bit (PFM and Data EEPROM code protection enabled)

// CONFIG11
#pragma config BOOTSCEN = OFF   // CRC on boot scan enable for boot area (CRC on boot will not include the boot area of program memory in its calculation)
#pragma config BOOTCOE = HALT   // CRC on boot Continue on Error for boot areas bit (CRC on boot will stop device if error is detected in boot areas)
#pragma config APPSCEN = OFF    // CRC on boot application code scan enable (CRC on boot will not include the application area of program memory in its calculation)
#pragma config SAFSCEN = OFF    // CRC on boot SAF area scan enable (CRC on boot will not include the SAF area of program memory in its calculation)
#pragma config DATASCEN = OFF   // CRC on boot Data EEPROM scan enable (CRC on boot will not include data EEPROM in its calculation)
#pragma config CFGSCEN = OFF    // CRC on boot Config fuses scan enable (CRC on boot will not include the configuration fuses in its calculation)
#pragma config COE = HALT       // CRC on boot Continue on Error for non-boot areas bit (CRC on boot will stop device if error is detected in non-boot areas)
#pragma config BOOTPOR = OFF    // Boot on CRC Enable bit (CRC on boot will not run)

// CONFIG12
#pragma config BCRCPOLT = hFF   // Boot Sector Polynomial for CRC on boot bits 31-24 (Bits 31:24 of BCRCPOL are 0xFF)

// CONFIG13
#pragma config BCRCPOLU = hFF   // Boot Sector Polynomial for CRC on boot bits 23-16 (Bits 23:16 of BCRCPOL are 0xFF)

// CONFIG14
#pragma config BCRCPOLH = hFF   // Boot Sector Polynomial for CRC on boot bits 15-8 (Bits 15:8 of BCRCPOL are 0xFF)

// CONFIG15
#pragma config BCRCPOLL = hFF   // Boot Sector Polynomial for CRC on boot bits 7-0 (Bits 7:0 of BCRCPOL are 0xFF)

// CONFIG16
#pragma config BCRCSEEDT = hFF  // Boot Sector Seed for CRC on boot bits 31-24 (Bits 31:24 of BCRCSEED are 0xFF)

// CONFIG17
#pragma config BCRCSEEDU = hFF  // Boot Sector Seed for CRC on boot bits 23-16 (Bits 23:16 of BCRCSEED are 0xFF)

// CONFIG18
#pragma config BCRCSEEDH = hFF  // Boot Sector Seed for CRC on boot bits 15-8 (Bits 15:8 of BCRCSEED are 0xFF)

// CONFIG19
#pragma config BCRCSEEDL = hFF  // Boot Sector Seed for CRC on boot bits 7-0 (Bits 7:0 of BCRCSEED are 0xFF)

// CONFIG20
#pragma config BCRCEREST = hFF  // Boot Sector Expected Result for CRC on boot bits 31-24 (Bits 31:24 of BCRCERES are 0xFF)

// CONFIG21
#pragma config BCRCERESU = hFF  // Boot Sector Expected Result for CRC on boot bits 23-16 (Bits 23:16 of BCRCERES are 0xFF)

// CONFIG22
#pragma config BCRCERESH = hFF  // Boot Sector Expected Result for CRC on boot bits 15-8 (Bits 15:8 of BCRCERES are 0xFF)

// CONFIG23
#pragma config BCRCERESL = hFF  // Boot Sector Expected Result for CRC on boot bits 7-0 (Bits 7:0 of BCRCERES are 0xFF)

// CONFIG24
#pragma config CRCPOLT = hFF    // Non-Boot Sector Polynomial for CRC on boot bits 31-24 (Bits 31:24 of CRCPOL are 0xFF)

// CONFIG25
#pragma config CRCPOLU = hFF    // Non-Boot Sector Polynomial for CRC on boot bits 23-16 (Bits 23:16 of CRCPOL are 0xFF)

// CONFIG26
#pragma config CRCPOLH = hFF    // Non-Boot Sector Polynomial for CRC on boot bits 15-8 (Bits 15:8 of CRCPOL are 0xFF)

// CONFIG27
#pragma config CRCPOLL = hFF    // Non-Boot Sector Polynomial for CRC on boot bits 7-0 (Bits 7:0 of CRCPOL are 0xFF)

// CONFIG28
#pragma config CRCSEEDT = hFF   // Non-Boot Sector Seed for CRC on boot bits 31-24 (Bits 31:24 of CRCSEED are 0xFF)

// CONFIG29
#pragma config CRCSEEDU = hFF   // Non-Boot Sector Seed for CRC on boot bits 23-16 (Bits 23:16 of CRCSEED are 0xFF)

// CONFIG30
#pragma config CRCSEEDH = hFF   // Non-Boot Sector Seed for CRC on boot bits 15-8 (Bits 15:8 of CRCSEED are 0xFF)

// CONFIG31
#pragma config CRCSEEDL = hFF   // Non-Boot Sector Seed for CRC on boot bits 7-0 (Bits 7:0 of CRCSEED are 0xFF)

// CONFIG32
#pragma config CRCEREST = hFF   // Non-Boot Sector Expected Result for CRC on boot bits 31-24 (Bits 31:24 of CRCERES are 0xFF)

// CONFIG33
#pragma config CRCERESU = hFF   // Non-Boot Sector Expected Result for CRC on boot bits 23-16 (Bits 23:16 of CRCERES are 0xFF)

// CONFIG34
#pragma config CRCERESH = hFF   // Non-Boot Sector Expected Result for CRC on boot bits 15-8 (Bits 15:8 of CRCERES are 0xFF)

// CONFIG35
#pragma config CRCERESL = hFF   // Non-Boot Sector Expected Result for CRC on boot bits 7-0 (Bits 7:0 of CRCERES are 0xFF)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#pragma warning disable 520
#pragma warning disable 1090
#pragma warning disable 1498
#pragma warning disable 2053

#ifndef __DEFINED_int24_t
typedef signed long long int24_t;
#define __DEFINED_int24_t
#endif

#include <stdio.h>
#include <string.h>
#include "mcc_generated_files/mcc.h"
#include "mcc_generated_files/uart1.h"
#include "eadog.h"
#include "gemsecs.h"
#include "timers.h"
#include "mconfig.h"
#include "mydisplay.h"

extern struct spi_link_type spi_link;

V_data V = {
	.error = LINK_ERROR_NONE,
	.abort = LINK_ERROR_NONE,
	.msg_error = MSG_ERROR_RESET,
	.uart = 1,
	.g_state = GEM_STATE_DISABLE,
	.e_types = GEM_GENERIC,
	.ticker = 45,
	.checksum_error = 0,
	.all_errors = 0,
	.timer_error = 0,
	.debug = false,
	.response.info = DIS_STR,
	.response.log_num = 0,
	.response.log_seq = 0,
	.response.host_display_ack = false,
	.queue = false,
	.stack = false, // 0 no messages, 1-10 messages in queue
	.sid = 1,
	.help_id = 0,
	.ping_count = 0,
	.sequences = 0,
	.set_sequ = false,
};

B_type B = {
	.one_sec_flag = false,
	.ten_sec_flag = false,
	.pacing = 0,
	.rx_count = 0,
	.flush = 0,
	.canbus_online = 0,
	.modbus_online = 0,
	.pv_high = false,
	.pv_update = false,
	.once = false,
	.display_dim = false,
	.display_update = false,
	.dim_delay = DIM_DELAY,
	.alt_display = 0,
};

header10 H10[] = {
	{ // S1F1 send 'are you there?' from host to equipment
		.length = 10,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 1,
		.block.block.stream = 1,
		.block.block.function = 1,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
	},
	{ // all stream and function header receive buffer from equipment
		.length = 10,
	},
	{ // S1F0 send 'ABORT' from host
		.length = 10,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 0,
		.block.block.stream = 1,
		.block.block.function = 0,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
	},
	{ // S1F1 send 'are you there?' from equipment to host
		.length = 10,
		.block.block.rbit = 1,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 1,
		.block.block.stream = 1,
		.block.block.function = 1,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
	},
	{ // S2F17 send 'date and time request?' from host
		.length = 10,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 1,
		.block.block.stream = 2,
		.block.block.function = 17,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
	},
	{ // S1F15 send 'request off-line ' from host
		.length = 10,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 1,
		.block.block.stream = 1,
		.block.block.function = 15,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
	},
	{ // S1F17 send 'request on-line ' from host
		.length = 10,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 1,
		.block.block.stream = 1,
		.block.block.function = 17,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
	},
};

header12 H12[] = {
	{ // S1F2 send 'yes, we are here ' from host
		.length = 12,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 0,
		.block.block.stream = 1,
		.block.block.function = 2,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
		.data[1] = 1,
		.data[0] = 0,
	},
	{ // S1F13 send 'online request ' from host to equipment
		.length = 12,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 1,
		.block.block.stream = 1,
		.block.block.function = 13,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
		.data[1] = 1,
		.data[0] = 0,
	},
};

header13 H13[] = {
	{ // S6F12 send 'online' reply from host
		.length = 13,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 0,
		.block.block.stream = 6,
		.block.block.function = 12,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
		.data[2] = 0x21,
		.data[1] = 0x01,
		.data[0] = 0x00,
	},
	{ // S10F2 send 'terminal' reply from host
		.length = 13,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 0,
		.block.block.stream = 10,
		.block.block.function = 2,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
		.data[2] = 0x21,
		.data[1] = 0x01,
		.data[0] = 0x00,
	},
	{ // S5F2 send 'Alarm Report Ack' reply from host
		.length = 13,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 0,
		.block.block.stream = 5,
		.block.block.function = 2,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
		.data[2] = 0x21,
		.data[1] = 0x01,
		.data[0] = 0x00,
	},
	{ // S2F26 send 'loopback' reply from host
		.length = 13,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 0,
		.block.block.stream = 2,
		.block.block.function = 26,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
		.data[2] = 0x21,
		.data[1] = 0x01,
		.data[0] = 0xff, // binary data
	},
};

header14 H14[] = {
	{ // S1F4 send 'status response ' from host
		.length = 14,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 0,
		.block.block.stream = 1,
		.block.block.function = 4,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
		.data[3] = 0x01,
		.data[2] = 0x11,
		.data[1] = 0x41,
		.data[0] = 0x00,
	},
};

header17 H17[] = {
	{ // S1F14 send 'online response ' from host to equipment
		.length = 17,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 0,
		.block.block.stream = 1,
		.block.block.function = 14,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
		.data[6] = 0x01,
		.data[5] = 0x02,
		.data[4] = 0x21,
		.data[3] = 0x01,
		.data[2] = 0x00,
		.data[1] = 0x01,
		.data[0] = 0x00,
	},
};

#ifndef Y2KTIME
header24 H24[] = {
	{ // S2F18 send 'host time ' from host to equipment non-y2k
		.length = 24,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 0,
		.block.block.stream = 2,
		.block.block.function = 18,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
		.data = "010911084600",
		.datam[1] = 0x41,
		.datam[0] = 12,
	},
};
#else
header26 H26[] = {
	{ // S2F18 send 'host time ' from host to equipment y2k
		.length = 26,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 0,
		.block.block.stream = 2,
		.block.block.function = 18,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
		.data = "01091108460000",
		.datam[1] = 0x41,
		.datam[0] = 14,
	},
};
#endif

#ifdef DB2
header27 H27[] = {
	{ // S1F13 send 'online request ' from equipment to host for TESTING
		.length = 27,
		.block.block.rbit = 1,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 1,
		.block.block.stream = 1,
		.block.block.function = 13,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
	},
};
#endif

header33 H33[] = {
	{ // S2F41 'ready load-lock ' command from host to equipment
		.length = 33,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 1,
		.block.block.stream = 2,
		.block.block.function = 41,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
		.data[22] = 0x01, // list 2 items
		.data[21] = 0x02,
		.data[20] = 0x41, // 2 ascii data
		.data[19] = 0x02,
		.data[18] = 0x31, // 1
		.data[17] = 0x37, // 7
		.data[16] = 0x01, // list 1 item
		.data[15] = 0x01,
		.data[14] = 0x01, // list 2 items
		.data[13] = 0x02,
		.data[12] = 0x41, // 8 ascii data
		.data[11] = 0x08,
		.data[10] = 0x4c, // L
		.data[9] = 0x4f, //  O
		.data[8] = 0x41, //  A
		.data[7] = 0x44, //  D
		.data[6] = 0x4c, //  L
		.data[5] = 0x4f, //  O
		.data[4] = 0x43, //  C
		.data[3] = 0x4b, //  K
		.data[2] = 0xa5, // 1 byte integer unsigned
		.data[1] = 0x01, // length 1
		.data[0] = 0x01, // value
	},
};

const header33 HC33[] = {//template for vii80 stack commands
	{ // S2F41 'ready load-lock ' command from host to equipment
		.length = 33,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 1,
		.block.block.stream = 2,
		.block.block.function = 41,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
		.data[22] = 0x01, // list 2 items
		.data[21] = 0x02,
		.data[20] = 0x41, // 2 ascii data
		.data[19] = 0x02,
		.data[18] = 0x31, // 1
		.data[17] = 0x37, // 7
		.data[16] = 0x01, // list 1 item
		.data[15] = 0x01,
		.data[14] = 0x01, // list 2 items
		.data[13] = 0x02,
		.data[12] = 0x41, // 8 ascii data
		.data[11] = 0x08,
		.data[10] = 0x4c, // L
		.data[9] = 0x4f, //  O
		.data[8] = 0x41, //  A
		.data[7] = 0x44, //  D
		.data[6] = 0x4c, //  L
		.data[5] = 0x4f, //  O
		.data[4] = 0x43, //  C
		.data[3] = 0x4b, //  K
		.data[2] = 0xa5, // 1 byte integer unsigned
		.data[1] = 0x01, // length 1
		.data[0] = 0x01, // value
	},
	{ // S2F41 'vent/open load-lock ' command from host to equipment
		.length = 33,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 1,
		.block.block.stream = 2,
		.block.block.function = 41,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
		.data[22] = 0x01, // list 2 items
		.data[21] = 0x02,
		.data[20] = 0x41, // 2 ascii data
		.data[19] = 0x02,
		.data[18] = 0x31, // 1
		.data[17] = 0x32, // 2
		.data[16] = 0x01, // list 1 item
		.data[15] = 0x01,
		.data[14] = 0x01, // list 2 items
		.data[13] = 0x02,
		.data[12] = 0x41, // 8 ascii data
		.data[11] = 0x08,
		.data[10] = 0x4c, // L
		.data[9] = 0x4f, //  O
		.data[8] = 0x41, //  A
		.data[7] = 0x44, //  D
		.data[6] = 0x4c, //  L
		.data[5] = 0x4f, //  O
		.data[4] = 0x43, //  C
		.data[3] = 0x4b, //  K
		.data[2] = 0xa5, // 1 byte integer unsigned
		.data[1] = 0x01, // length 1
		.data[0] = 0x01, // value
	},
};

header153 H153[] = {
	{ // S10F3 send 'terminal text display ' command from host to equipment
		.length = 153,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 1,
		.block.block.stream = 10,
		.block.block.function = 3,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
		.data[142] = 0x01,
		.data[141] = 0x02,
		.data[140] = 0x21,
		.data[139] = 0x01,
		.data[138] = DEFAULT_TID,
		.data[137] = 0x41,
		.data[136] = 44,
		.data[35] = ' ',
		.data[34] = 'F',
		.data[33] = 'R',
		.data[32] = 'E',
		.data[31] = 'D',
		.data[30] = '1',
		.data[29] = '2',
		.data[28] = '3',
		.data[27] = '0',
		.data[26] = '0',
		.data[25] = '4',
		.data[24] = 'B',
		.data[23] = 'B',
		.data[22] = 'B',
		.data[21] = 'B',
		.data[20] = 'R',
		.data[19] = 'O',
		.data[18] = 'O',
		.data[17] = 'K',
		.data[16] = 'S',
		.data[15] = '1',
		.data[14] = '2',
		.data[13] = 'E',
		.data[12] = 'D',
		.data[11] = '1',
		.data[10] = '2',
		.data[9] = '3',
		.data[8] = '4',
		.data[7] = 'B',
		.data[6] = 'B',
		.data[5] = 'B',
		.data[4] = 'B',
		.data[3] = 'R',
		.data[2] = 'O',
		.data[1] = 'O',
		.data[0] = 'K',
	},
	{ // S10F5 send 'multi-line text display ' command from host to equipment
		.length = 153,
		.block.block.rbit = 0,
		.block.block.didh = 0,
		.block.block.didl = 0,
		.block.block.wbit = 1,
		.block.block.stream = 10,
		.block.block.function = 5,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
		.data[142] = 0x01,
		.data[141] = 0x02,
		.data[140] = 0x21,
		.data[139] = 0x01,
		.data[138] = DEFAULT_TID,
		.data[137] = 0x01,
		.data[136] = 0x02,
		.data[135] = 0x41,
		.data[134] = 9,
		.data[33] = '*',
		.data[32] = 'F',
		.data[31] = 'R',
		.data[30] = 'E',
		.data[29] = 'D',
		.data[28] = '1',
		.data[27] = '2',
		.data[26] = '3',
		.data[25] = '4',
		.data[24] = 0x41,
		.data[23] = 23,
		.data[22] = '*',
		.data[21] = 'B',
		.data[20] = 'R',
		.data[19] = 'K',
		.data[18] = 'S',
		.data[17] = '1',
		.data[16] = '2',
		.data[15] = 'E',
		.data[14] = 'D',
		.data[13] = '1',
		.data[12] = '2',
		.data[11] = '3',
		.data[10] = '4',
		.data[9] = 'B',
		.data[8] = 'B',
		.data[7] = 'B',
		.data[6] = 'B',
		.data[5] = 'R',
		.data[4] = 'O',
		.data[3] = 'O',
		.data[2] = 'K',
		.data[1] = 'S',
		.data[0] = 'o',
	},
};

header254 H254[] = {
	{ // general message buffer for parsing 
		.length = 254,
		.block.block.rbit = 1,
		.block.block.didh = 0,
		.block.block.didl = 0xEF,
		.block.block.wbit = 1,
		.block.block.stream = 10,
		.block.block.function = 3,
		.block.block.ebit = 1,
		.block.block.bidh = 0,
		.block.block.bidl = 1,
		.block.block.systemb = 1,
		.checksum = 0x2019,
		.data[1] = 0x19,
		.data[0] = 0x57,
	},
};

gem_message_type S[10]; // a queue message stack
gem_display_type D[2]; // equipment display message stack

header10 r_block;

volatile uint16_t tickCount[TMR_COUNT] = {0};
volatile uint8_t mode_sw = false;
void onesec_io(void);

/*
 * Main application
 */
void main(void)
{
	UI_STATES mode; /* link configuration host/equipment/etc ... */
	char * s;

	// Initialize the device
	SYSTEM_Initialize();

	// Enable high priority global interrupts
	INTERRUPT_GlobalInterruptHighEnable();

	// Enable low priority global interrupts.
	INTERRUPT_GlobalInterruptLowEnable();

	V.ui_state = UI_STATE_INIT;

	/*
	 * RS-232 link I/O relay defaults to monitor/log mode with no power
	 */
	WaitMs(300); // wait for mode switch to settle

	mode = UI_STATE_HOST;

	TMR2_StartTimer();
	TMR5_SetInterruptHandler(onesec_io);
	TMR5_StartTimer();
	TMR6_StartTimer();

	while (true) {
		switch (V.ui_state) {
		case UI_STATE_INIT:
			init_display();
			eaDogM_CursorOff();

			V.ui_state = mode;
			V.s_state = SEQ_STATE_INIT;
			srand(1957);
			set_vterm(0); // set to buffer 0
			sprintf(get_vterm_ptr(0, 0), " RVI HOST TESTER");
			sprintf(get_vterm_ptr(1, 0), " Version %s   ", VER);
			sprintf(get_vterm_ptr(2, 0), " FGB@MCHP FAB4  ");
			sprintf(get_vterm_ptr(0, 2), " SEQUENCE TEST  ");
			sprintf(get_vterm_ptr(1, 2), " Version %s   ", VER);
			sprintf(get_vterm_ptr(2, 2), " VTERM #2       ");
			update_lcd(0);
			WaitMs(3000);
			StartTimer(TMR_DISPLAY, DDELAY);
			StartTimer(TMR_SEQ, 10000);
			StartTimer(TMR_INFO, TDELAY);
			StartTimer(TMR_FLIPPER, DFLIP);
			StartTimer(TMR_HELPDIS, TDELAY);
			eaDogM_WriteStringAtPos(3, 0, " UI_STATE_INIT   ");
			break;
		case UI_STATE_HOST: //slave
			eaDogM_WriteStringAtPos(3, 0, " UI_STATE_HOST   ");
			switch (V.s_state) {
			case SEQ_STATE_INIT:
				eaDogM_WriteStringAtPos(3, 0, "SEQ_STATE_INIT    ");
				V.r_l_state = LINK_STATE_IDLE;
				V.t_l_state = LINK_STATE_IDLE;
				V.s_state = SEQ_STATE_RX;
				if ((V.error == LINK_ERROR_NONE) && (V.abort == LINK_ERROR_NONE)) {
					if (V.debug)
						sprintf(get_vterm_ptr(2, 0), "H254 %d, T%ld  ", sizeof(header254), V.testing);
					else
						sprintf(get_vterm_ptr(2, 0), "HOST: %ld G%d      #", V.ticks, V.g_state);
				}
#ifdef DB1
				WaitMs(50);
				UART1_put_buffer(ENQ);
#endif
				break;
			case SEQ_STATE_RX:
				eaDogM_WriteStringAtPos(3, 0, "SEQ_STATE_RX    ");
				/*
				 * receive message from equipment
				 */
				if (r_protocol(&V.r_l_state) == LINK_STATE_DONE) {
					eaDogM_WriteStringAtPos(3, 0, "SEQ_STATE_RX0    ");
					set_display_info(DIS_STR);
					s = get_vterm_ptr(0, 0);
					if (V.stream == 9) { // error message from equipment
						V.msg_error = V.function;
						sprintf(s, " S%dF%d Err         ", V.stream, V.function);
					} else {
						V.msg_error = MSG_ERROR_NONE;
						sprintf(s, " S%dF%d #           ", V.stream, V.function);
					}
					s[16] = 0;
					eaDogM_WriteStringAtPos(3, 0, "SEQ_STATE_RX1    ");
					MyeaDogM_WriteStringAtPos(0, 0, s);
#ifdef DB1
					WaitMs(5);
#endif
					if (V.wbit) { // check for receive only messages
						V.s_state = SEQ_STATE_TX;
						V.failed_send = false;
						V.t_l_state = LINK_STATE_IDLE;
					} else { // don't send a reply
						V.s_state = SEQ_STATE_TRIGGER;
					}
					eaDogM_WriteStringAtPos(3, 0, "SEQ_STATE_RX2    ");
				}
				if (V.r_l_state == LINK_STATE_ERROR)
					V.s_state = SEQ_STATE_ERROR;
				break;
			case SEQ_STATE_TX:
				eaDogM_WriteStringAtPos(3, 0, "SEQ_STATE_TX    ");
				/*
				 * send response message to equipment
				 */
				if (t_protocol(&V.t_l_state) == LINK_STATE_DONE) {
					V.s_state = SEQ_STATE_TRIGGER;
				}
				if (V.t_l_state == LINK_STATE_ERROR)
					V.s_state = SEQ_STATE_ERROR;
				break;
			case SEQ_STATE_TRIGGER:
				eaDogM_WriteStringAtPos(3, 0, "SEQ_STATE_TRIGGER    ");
				set_display_info(DIS_STR);
				s = get_vterm_ptr(0, 0);
				if (V.queue) {
					V.r_l_state = LINK_STATE_IDLE;
					V.t_l_state = LINK_STATE_IDLE;
					V.s_state = SEQ_STATE_TX;
					sprintf(s, " S%dF%d # OKQ%d        ", V.stream, V.function, V.e_types);
				} else {
					V.s_state = SEQ_STATE_DONE;
					sprintf(s, " S%dF%d # OK %d        ", V.stream, V.function, V.e_types);
				}

				s[16] = 0;
				MyeaDogM_WriteStringAtPos(0, 0, s);
				break;
			case SEQ_STATE_DONE:
				eaDogM_WriteStringAtPos(3, 0, "SEQ_STATE_DONE    ");
				V.s_state = SEQ_STATE_INIT;
				break;
			case SEQ_STATE_ERROR:
			default:
				eaDogM_WriteStringAtPos(3, 0, "SEQ_STATE_ERROR    ");
				V.s_state = SEQ_STATE_INIT;
				sprintf(get_vterm_ptr(2, 0), "E%d A%d T%d G%d #", V.error, V.abort, V.timer_error, V.g_state);
				update_lcd(0);
				WaitMs(2000);
				break;
			}
			if ((V.error == LINK_ERROR_NONE) && (V.abort == LINK_ERROR_NONE)) {
				if (TimerDone(TMR_DISPLAY)) { // limit update rate
					if (V.debug)
						sprintf(get_vterm_ptr(2, 0), "H254 %d, T%ld       ", sizeof(header254), V.testing);
					else
						sprintf(get_vterm_ptr(2, 0), "HOST: %ld G%d      #", V.ticks, V.g_state);

				}
				/*
				 * HeartBeat ping or sequence during idle times
				 */
				if (((V.g_state == GEM_STATE_REMOTE) && (V.s_state == SEQ_STATE_RX) && !V.queue)) {
					if ((V.r_l_state == LINK_STATE_IDLE) && (V.t_l_state == LINK_STATE_IDLE)) {
						if (TimerDone(TMR_HBIO)) {
							set_display_info(DIS_STR); // reset display configuration
							// send ping or sequence message
							if (V.stack) {
								hb_message(); // prime the TX state machine
								V.msg_error = MSG_ERROR_NONE;
								V.ping_count = 0;
								V.error = LINK_ERROR_NONE;
								V.abort = LINK_ERROR_NONE;
							} else {
								StartTimer(TMR_HBIO, HBTL);
								if (V.ping_count++ > 4) {
									set_display_info(DIS_STR);
									hb_message();
									sprintf(get_vterm_ptr(0, 0), "Ping P%d RTO %d    ", V.g_state, V.equip_timeout);
									update_lcd(0);
									WaitMs(250);
									V.ping_count = 0;
								}
								set_display_info(DIS_STR);
							}
						}
					}
				}
			}
			break;
		case UI_STATE_LOG: // monitor
			eaDogM_WriteStringAtPos(3, 0, "UI_STATE_LOG    ");
			switch (V.s_state) {
			case SEQ_STATE_INIT:
				V.m_l_state = LINK_STATE_IDLE;
				V.s_state = SEQ_STATE_RX;
				if (V.debug)
					sprintf(get_vterm_ptr(2, 0), "H254 %d, T%ld       ", sizeof(header254), V.testing);
				else
					sprintf(get_vterm_ptr(2, 0), "LOG: U%d G%d %d %d      #", V.uart, V.g_state, V.timer_error, V.checksum_error);

#ifdef DB1
				if (SLED) {
					UART2_put_buffer(ENQ);
				} else {
					UART1_put_buffer(ENQ);
				}
#endif
				break;
			case SEQ_STATE_RX:
				/*
				 * receive rx and tx messages from comm link
				 */
				if (m_protocol(&V.m_l_state) == LINK_STATE_DONE) {
					sprintf(V.buf, "S%dF%d #%ld       ", V.stream, V.function, V.ticks);
					V.buf[13] = 0; // string size limit
					MyeaDogM_WriteStringAtPos(V.uart - 1, 0, V.buf);
					V.s_state = SEQ_STATE_TRIGGER;
				}
				if (V.m_l_state == LINK_STATE_ERROR)
					V.s_state = SEQ_STATE_ERROR;
				break;
			case SEQ_STATE_TRIGGER:
				V.s_state = SEQ_STATE_DONE;
				sprintf(V.buf, "OK ");
				MyeaDogM_WriteStringAtPos(V.uart - 1, 13, V.buf);
				break;
			case SEQ_STATE_DONE:
			case SEQ_STATE_ERROR:
			default:
				V.s_state = SEQ_STATE_INIT;
				break;
			}
			if (V.debug)
				sprintf(get_vterm_ptr(2, 0), "Equip type %d       ", V.e_types);
			else
				sprintf(get_vterm_ptr(2, 0), "LOG: U%d G%d %d %d      #", V.uart, V.g_state, V.timer_error, V.checksum_error);
			break;
		case UI_STATE_ERROR:
		default:
			V.ui_state = UI_STATE_INIT;
			break;
		}
		if (V.ticks) {
			if (V.failed_receive) {
				//				BILED1_1_SetLow(); // red
				//				BILED1_2_SetHigh();
				if (V.error == LINK_ERROR_CHECKSUM) {
					//					BILED3_1_SetLow(); // red
					//					BILED3_2_SetHigh();
				}
			} else {
				//				BILED1_1_SetHigh(); //green
				//				BILED1_2_SetLow();
				//				BILED3_1_SetHigh(); //green
				//				BILED3_2_SetLow();
			}
			if (V.failed_send) {
				//				BILED2_1_SetLow(); // red
				//				BILED2_2_SetHigh();
				if (V.error == LINK_ERROR_CHECKSUM) {
					//					BILED4_1_SetLow(); // red
					//					BILED4_2_SetHigh();
				}
			} else {
				//				BILED2_1_SetHigh(); //green
				//				BILED2_2_SetLow();
				//				BILED4_1_SetHigh(); //green
				//				BILED4_2_SetLow();
			}
		}

		if (mode != UI_STATE_LOG)
			if (TimerDone(TMR_DISPLAY)) { // limit update rate
				if (TimerDone(TMR_HELPDIS)) {
					set_display_info(DIS_STR);
				}
				sprintf(get_vterm_ptr(1, 0), "R%d %d, T%d %d C%d %d      #", V.r_l_state, V.failed_receive, V.t_l_state, V.failed_send, V.checksum_error, V.stack);
				StartTimer(TMR_DISPLAY, DDELAY);
				update_lcd(0);
			}

		/*
		 * show help display if button pressed
		 */
		check_help(V.flipper);

		/*
		 * show command messages if flag is set for timer duration
		 */
		if (V.set_sequ) {
			if (TimerDone(TMR_INFO)) {
				V.set_sequ = false;
				set_vterm(0);
				update_lcd(0);
			} else {
				set_vterm(2);
				update_lcd(2);
			}
		}

#ifdef DISP_TRIG
		if (TimerDone(TMR_SEQ)) {
			StartTimer(TMR_SEQ, 10000);
			StartTimer(TMR_INFO, TDELAY);
			V.set_sequ = true;
		}
#endif
	}
}

/*
 * busy loop delay with WDT reset
 */
void wdtdelay(const uint32_t delay)
{
	uint32_t dcount;

	for (dcount = 0; dcount <= delay; dcount++) { // delay a bit

		ClrWdt(); // reset the WDT timer
	};
}

void onesec_io(void)
{
	RLED_Toggle();
	MLED_SetLow();
	B.one_sec_flag = true;
}
/**
 End of File
 */