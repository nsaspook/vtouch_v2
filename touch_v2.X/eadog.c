#include "vconfig.h"
#include "eadog.h"
#include "ringbufs.h"
#include <stdio.h>
#include <string.h>



#define max_strlen	64

struct spi_link_type spi_link;
struct ringBufS_t ring_buf1;
struct ringBufS_t ring_buf2;

extern struct V_data V;

static void send_lcd_cmd_long(uint8_t); // for display init only
static void send_lcd_data(uint8_t);
static void send_lcd_cmd(uint8_t);

void wdtdelay(uint32_t delay)
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
	spi_link.tx1a = &ring_buf1;
	spi_link.tx1b = &ring_buf2;
	ringBufS_init(spi_link.tx1a);
	ringBufS_init(spi_link.tx1b);

	DLED = true;
	CSB_SetHigh();
	wdtdelay(350000); // > 400ms power up delay
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
	wdtdelay(30);
	SPI1CON2 = 0x02;
	SPI1CON1 = 0x40;
	SPI1CON0 = 0x83;
	SPI1INTFbits.SPI1TXUIF = 0;
	DMA1CON1bits.DMODE = 0;
	DMA1CON1bits.DSTP = 0;
	DMA1CON1bits.SMODE = 1;
	DMA1CON1bits.SMR = 0;
	DMA1CON1bits.SSTP = 1;
	DMA1SSA = (uint32_t) & ring_buf1;
	DMA1CON0bits.DGO = 0;
	SPI1INTFbits.SPI1TXUIF = 1;
	DLED = false;
}

/*
 * add short spi delay (default)
 */
static void send_lcd_data(uint8_t data)
{
	RS_SetHigh();
	CSB_SetLow();
	SPI1_Exchange8bit(data);
	wdtdelay(8);
}

/*
 * add inst spi delay
 */
static void send_lcd_cmd(uint8_t cmd)
{
	RS_SetLow();
	CSB_SetLow();
	SPI1_Exchange8bit(cmd);
	wdtdelay(30);
	RS_SetHigh();
}

/*
 * add clear/home spi delay
 */
static void send_lcd_cmd_long(uint8_t cmd)
{
	RS_SetLow();
	CSB_SetLow();
	SPI1_Exchange8bit(cmd);
	wdtdelay(800);
	RS_SetHigh();
}

/*
 * Trigger the SPI DMA transfer to the LCD display
 */
void start_lcd(void)
{
	DMA1CON0bits.DMA1SIRQEN = 1; /* start DMA trigger */
}

void wait_lcd_set(void)
{
	spi_link.LCD_DATA = 1;
}

bool wait_lcd_check(void)
{
	return spi_link.LCD_DATA;
}

void wait_lcd_done(void)
{
	while (spi_link.LCD_DATA);
	wdtdelay(50);
}

void eaDogM_WriteChr(int8_t value)
{
	send_lcd_data_dma((uint8_t) value);
}

/*
 * STDOUT user handler function
 */
void putch(char c)
{
	ringBufS_put_dma(spi_link.tx1a, c);
}

void eaDogM_WriteCommand(uint8_t cmd)
{
	send_lcd_cmd_dma(cmd);
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

/*
 * uses DMA channel 1 for transfers
 */
void eaDogM_WriteString(char *strPtr)
{
	DEBUG1_SetHigh();
	wait_lcd_set();
	/* reset buffer for DMA */
	ringBufS_flush(spi_link.tx1a, false);
	CSB_SetLow(); /* SPI select display */
	if (strlen(strPtr) > max_strlen) strPtr[max_strlen] = 0; // buffer overflow check
	DMA1CON0bits.EN = 0; /* disable DMA to change source count */
	DMA1SSZ = strlen(strPtr);
	DMA1CON0bits.EN = 1; /* enable DMA */
	printf("%s", strPtr); // testing copy method using STDIO redirect to buffer
	start_lcd();
#ifdef DISPLAY_SLOW
	wdtdelay(9000);
#endif
}

/*
 * uses DMA channel 1 for transfers
 */
void send_lcd_cmd_dma(uint8_t strPtr)
{
	DEBUG1_SetHigh();
	wait_lcd_set();
	/* reset buffer for DMA */
	ringBufS_flush(spi_link.tx1a, false);
	RS_SetLow();
	CSB_SetLow(); /* SPI select display */
	DMA1CON0bits.EN = 0; /* disable DMA to change source count */
	DMA1SSZ = 1;
	DMA1CON0bits.EN = 1; /* enable DMA */
	printf("%c", strPtr); // testing copy method using STDIO redirect to buffer
	start_lcd();
	wait_lcd_done();
	RS_SetHigh();
}

/*
 * uses DMA channel 1 for transfers
 */
void send_lcd_data_dma(uint8_t strPtr)
{
	DEBUG1_SetHigh();
	wait_lcd_set();
	/* reset buffer for DMA */
	ringBufS_flush(spi_link.tx1a, false);
	RS_SetHigh();
	CSB_SetLow(); /* SPI select display */
	DMA1CON0bits.EN = 0; /* disable DMA to change source count */
	DMA1SSZ = 1;
	DMA1CON0bits.EN = 1; /* enable DMA */
	printf("%c", strPtr); // testing copy method using STDIO redirect to buffer
	start_lcd();
}

void eaDogM_WriteStringAtPos(uint8_t r, uint8_t c, char *strPtr)
{
	send_lcd_cmd_dma((EADOGM_CMD_DDRAM_ADDR + (r * EADOGM_COLSPAN) + c));
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