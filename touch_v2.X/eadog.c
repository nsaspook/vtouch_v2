#include "eadog.h"
#include "vconfig.h"
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
//	stdout = _H_USER; // use our STDOUT handler
	SPI1_Exchange8bit(0x139);
	SPI1_Exchange8bit(0x11d);
	SPI1_Exchange8bit(0x150);
	SPI1_Exchange8bit(0x16c);
	SPI1_Exchange8bit(0x176); // contrast last 4 bits
	SPI1_Exchange8bit(0x138);
	SPI1_Exchange8bit(0x10f);
	SPI1_Exchange8bit(0x101);
	SPI1_Exchange8bit(0x102);
	SPI1_Exchange8bit(0x106);
	start_lcd();
	wait_lcd();
	SLED = false;
}

/*
 * bit 9 is unset for short spi delay (default)
 */
void send_lcd_data(uint8_t data)
{
	SPI1_Exchange8bit(data);
}

/*
 * set bit 9 to add long spi delay
 */
void send_lcd_cmd(uint8_t cmd)
{
	uint16_t symbol;

	symbol = (uint16_t) cmd | LCD_CMD_SET;
	SPI1_Exchange8bit(symbol);
}

/*
 * Trigger the SPI interrupt to program the LCD display
 */
void start_lcd(void)
{
	spi_link.SPI_LCD = HIGH;
	PIR1bits.SSPIF = HIGH;
	PIE1bits.SSPIE = HIGH;
}

void wait_lcd(void)
{
	while (!ringBufS_empty(spi_link.tx1b));
	while (spi_link.LCD_DATA);
}

void eaDogM_WriteChr(int8_t value)
{
	send_lcd_data(value);
	start_lcd();
	wait_lcd();
}

/*
 * STDOUT user handler function
 */
int _user_putc(int8_t c)
{
	send_lcd_data(c);
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
	cmdPos = EADOGM_CMD_DDRAM_ADDR + (r * EADOGM_COLSPAN) + c;
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

void eaDogM_WriteString(int8_t *strPtr)
{
	if (strlen(strPtr) > max_strlen) strPtr[max_strlen] = 0;
	printf("%s", strPtr); // STDOUT redirected to _user_putc, slow ~380us
	start_lcd();
	wait_lcd();
}

void eaDogM_WriteStringAtPos(uint8_t r, uint8_t c, int8_t *strPtr)
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