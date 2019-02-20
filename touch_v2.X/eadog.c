#include "vconfig.h"
#include "eadog.h"
#include <stdio.h>
#include <string.h>

#define eaDogM_Cls()             eaDogM_WriteCommand(EADOGM_CMD_CLR)
#define eaDogM_CursorOn()        eaDogM_WriteCommand(EADOGM_CMD_CURSOR_ON)
#define eaDogM_CursorOff()       eaDogM_WriteCommand(EADOGM_CMD_CURSOR_OFF)
#define eaDogM_DisplayOn()       eaDogM_WriteCommand(EADOGM_CMD_DISPLAY_ON)
#define eaDogM_DisplayOff()      eaDogM_WriteCommand(EADOGM_CMD_DISPLAY_OFF)

#define max_strlen	16

void wdtdelay(uint32_t delay)
{
	static uint32_t dcount;

	for (dcount = 0; dcount <= delay; dcount++) { // delay a bit
		Nop();
		ClrWdt(); // reset the WDT timer
	};

}

/*
 * Init the EA DOGM163 in 8bit serial mode
 */
void init_display(void)
{
	SLED = true;
	wdtdelay(350000); // > 400ms power up delay
	send_lcd_cmd(0x39);
	send_lcd_cmd(0x1d);
	send_lcd_cmd(0x50);
	send_lcd_cmd(0x6c);
	send_lcd_cmd(0x76); // contrast last 4 bits
	send_lcd_cmd(0x38);
	send_lcd_cmd(0x0f);
	send_lcd_cmd(0x01);
	send_lcd_cmd(0x02);
	send_lcd_cmd(0x06);
	start_lcd();
	wait_lcd();
	SLED = false;
}

/*
 * bit 9 is unset for short spi delay (default)
 */
void send_lcd_data(uint8_t data)
{
	RS_SetHigh();
	CSB_SetLow();
	SPI1_Exchange8bit(data);
	wdtdelay(35);
	CSB_SetHigh();
}

/*
 * set bit 9 to add long spi delay
 */
void send_lcd_cmd(uint8_t cmd)
{
	RS_SetLow();
	CSB_SetLow();
	SPI1_Exchange8bit(cmd);
	wdtdelay(800);
	CSB_SetHigh();
}

/*
 * Trigger the SPI interrupt to program the LCD display
 */
void start_lcd(void)
{
	//	spi_link.SPI_LCD = HIGH;
	//	PIR1bits.SSPIF = HIGH;
	//	PIE1bits.SSPIE = HIGH;
}

void wait_lcd(void)
{
	//	while (!ringBufS_empty(spi_link.tx1b));
	//	while (spi_link.LCD_DATA);
	while (0);
}

void eaDogM_WriteChr(int8_t value)
{
	send_lcd_data((uint8_t) value);
	start_lcd();
	wait_lcd();
}

/*
 * STDOUT user handler function
 */
void putch(char c)
{
	send_lcd_data((uint8_t) c);
}

void eaDogM_WriteCommand(uint8_t cmd)
{
	send_lcd_cmd(cmd);
	start_lcd();
	wait_lcd();
}

void eaDogM_SetPos(uint8_t r, uint8_t c)
{
	uint8_t cmdPos;
	cmdPos = (uint8_t) EADOGM_CMD_DDRAM_ADDR + (uint8_t) ((uint8_t) r * (uint8_t) EADOGM_COLSPAN) + (uint8_t) c;
	eaDogM_WriteCommand(cmdPos);
}

void eaDogM_ClearRow(uint8_t r)
{
	uint8_t i;
	eaDogM_SetPos(r, 0);
	for (i = 0; i < EADOGM_COLSPAN; i++) {
		eaDogM_WriteChr(' ');
	}
}

void eaDogM_WriteString(char *strPtr)
{
	if (strlen(strPtr) > max_strlen) strPtr[max_strlen] = 0;
	printf("%s", strPtr); // STDOUT redirected to _user_putc, slow ~380us
	start_lcd();
	wait_lcd();
}

void eaDogM_WriteStringAtPos(uint8_t r, uint8_t c, char *strPtr)
{
	send_lcd_cmd((EADOGM_CMD_DDRAM_ADDR + (r * EADOGM_COLSPAN) + c));
	if (strlen(strPtr) > max_strlen) strPtr[max_strlen] = 0;
	printf("%s", strPtr);
	start_lcd();
	wait_lcd();
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