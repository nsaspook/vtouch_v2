#include "eadog.h"
#include "ringbufs.h"
#include <stdio.h>
#include <string.h>
#include "d232.h"
#include "mcc_generated_files/spi1.h"

#define max_strlen	64

static void send_lcd_cmd_long(uint8_t); // for display init only
static void send_lcd_data(uint8_t);
static void send_lcd_cmd(uint8_t);

void wdtdelay(const uint32_t delay)
{
	static uint32_t dcount;

	for (dcount = 0; dcount <= delay; dcount++) { // delay a bit
		Nop();
		ClrWdt(); // reset the WDT timer
	};
}

/*
 * Init the EA DOGM163 in 8-bit serial mode
 */
void init_display(void)
{
	CSB_SetHigh();
	wdtdelay(IS_DELAYPOWERUP); // > 400ms power up delay
	send_lcd_cmd(0x39);
	send_lcd_cmd(0x1d);
	send_lcd_cmd(0x50);
	send_lcd_cmd(0x6c);
	send_lcd_cmd(0x76); // contrast last 4 bits
	send_lcd_cmd_long(0x38); // follower control
	send_lcd_cmd(0x0f);
	send_lcd_cmd_long(0x01); // clear
	send_lcd_cmd(0x02);
	send_lcd_cmd(0x06);
	wdtdelay(IS_DELAYLONG);
}

/*
 * add short spi delay (default)
 */
static void send_lcd_data(const uint8_t data)
{
	RS_SetHigh();
	CSB_SetLow();
	SPI1_Exchange8bit(data);
	wdtdelay(IS_DELAYSHORT);
}

/*
 * add inst spi delay
 */
static void send_lcd_cmd(const uint8_t cmd)
{
	RS_SetLow();
	CSB_SetLow();
	SPI1_Exchange8bit(cmd);
	wdtdelay(IS_DELAYMED); // 30
	RS_SetHigh();
}

/*
 * add clear/home spi delay
 */
static void send_lcd_cmd_long(const uint8_t cmd)
{
	RS_SetLow();
	CSB_SetLow();
	SPI1_Exchange8bit(cmd);
	wdtdelay(IS_DELAYLONG);
	RS_SetHigh();
}

void eaDogM_WriteChr(const int8_t value)
{
	send_lcd_data((uint8_t) value);
}

void eaDogM_WriteCommand(const uint8_t cmd)
{
	send_lcd_cmd(cmd);
}

void eaDogM_SetPos(const uint8_t r, const uint8_t c)
{
	uint8_t cmdPos;
	cmdPos = (uint8_t) EADOGM_CMD_DDRAM_ADDR + (uint8_t) ((uint8_t) r * (uint8_t) EADOGM_COLSPAN) + (uint8_t) c;
	eaDogM_WriteCommand(cmdPos);
}

void eaDogM_ClearRow(const uint8_t r)
{
	uint8_t i;
	eaDogM_SetPos(r, 0);
	for (i = 0; i < EADOGM_COLSPAN; i++) {
		eaDogM_WriteChr(' ');
	}
}

void eaDogM_WriteString(char *strPtr)
{
	uint8_t i = strlen(strPtr);
	uint8_t bytesWritten = 0;

	RS_SetHigh();
	CSB_SetLow();
	if (i > max_strlen) strPtr[max_strlen] = 0; // buffer overflow check

	while (bytesWritten < i) {
		wdtdelay(IS_DELAYSHORT); // inter-character spacing for LCD code execute delays
		SPI1_Exchange8bit(strPtr[bytesWritten]);
		bytesWritten++;
	}
}

void eaDogM_WriteStringAtPos(const uint8_t r, const uint8_t c, char *strPtr)
{
	send_lcd_cmd((EADOGM_CMD_DDRAM_ADDR + (r * EADOGM_COLSPAN) + c));
	eaDogM_WriteString(strPtr);
}

void eaDogM_WriteIntAtPos(uint8_t r, uint8_t c, uint8_t i)
{
	eaDogM_WriteCommand((EADOGM_CMD_DDRAM_ADDR + (r * EADOGM_COLSPAN) + c));

	eaDogM_WriteChr(i / 10 + '0');
	eaDogM_WriteChr(i % 10 + '0');

}

// this writes a byte to the internal CGRAM (v2.02)
// format for ndx: 00CCCRRR = CCC = character 0 to 7, RRR = row 0 to 7

void eaDogM_WriteByteToCGRAM(uint8_t ndx, uint8_t data)
{
	uint8_t cmd;

	cmd = ndx & 0b00111111; // mask off upper to bits
	cmd = cmd | EADOGM_CMD_CGRAM_ADDR; // set bit cmd bits

	eaDogM_WriteCommand(cmd);
	eaDogM_WriteChr(data);

	// this is done to make sure we are back in data mode
	eaDogM_SetPos(0, 0);
}