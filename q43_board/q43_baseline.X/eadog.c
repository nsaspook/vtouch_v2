#include <string.h>
#include "qconfig.h"
#include "eadog.h"
#include "ringbufs.h"
//#include "mcc_generated_files/dma1.h"
//#include "tests.h"

#define max_strlen	21
#define max_port_data	1024

volatile struct spi_link_type spi_link;
struct ringBufS_t ring_buf1;
static uint8_t port_data[max_port_data] = {255, 0, 255, 0, 255, 0, 255, 0, 255, 0, 255, 0, 255, 0, 255, 0};

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
 * Init the NHD-0420D3Z-NSW-BBW-V3 in 8-bit serial mode
 * channel 1 DMA
 */
void init_display(void)
{
	spi_link.tx1a = &ring_buf1;
	ringBufS_init(spi_link.tx1a);

#ifdef DEBUG_DISP2
	DLED2 = true;
#endif
#ifdef NHD
	wdtdelay(350000); // > 400ms power up delay
	send_lcd_cmd(0x46); // home cursor
	wdtdelay(800);
	send_lcd_cmd(0x41); // display on
	wdtdelay(80);
	send_lcd_cmd(0x53); // set back-light level
	send_lcd_data(NHD_BL_LOW);
	wdtdelay(80);
	send_lcd_cmd(0x51); // clear screen
	wdtdelay(800);

#else
	CSB_SetHigh();
	wdtdelay(350000); // > 400ms power up delay
	send_lcd_cmd_dma(0x39);
	send_lcd_cmd_dma(0x1d);
	send_lcd_cmd_dma(0x50);
	send_lcd_cmd_dma(0x6c);
	send_lcd_cmd_dma(0x76); // contrast last 4 bits
	send_lcd_cmd_dma(0x38); // follower control
	wdtdelay(800);
	send_lcd_cmd_dma(0x0f);
	send_lcd_cmd_dma(0x01); // clear
	wdtdelay(800);
	send_lcd_cmd_dma(0x02);
	send_lcd_cmd_dma(0x06);
	wdtdelay(30);
	DMA1_SetSourceAddress((uint24_t) spi_link.tx1a);
#endif
	//	SPI1INTFbits.SPI1TXUIF = 0;
	//	DMA1CON1bits.DMODE = 0;
	//	DMA1CON1bits.DSTP = 0;
	//	DMA1CON1bits.SMODE = 1;
	//	DMA1CON1bits.SMR = 0;
	//	DMA1CON1bits.SSTP = 1;
	//	DMA1SSA = (uint32_t) & ring_buf1;
	//	DMA1CON0bits.DGO = 0;
	//	SPI1INTFbits.SPI1TXUIF = 1;
#ifdef DEBUG_DISP2
	DLED2 = false;
#endif
}

/*
 * channel 2 DMA, serial port 1 transmit
 */
void init_port_dma(void)
{
	//	DMA2CON1bits.DMODE = 0;
	//	DMA2CON1bits.DSTP = 0;
	//	DMA2CON1bits.SMODE = 1;
	//	DMA2CON1bits.SMR = 0;
	//	DMA2CON1bits.SSTP = 1;
	//	DMA2CON0bits.SIRQEN = 0;
	//	DMA2DSA = 0x3DEA; // U1TXB SERIAL PORT 1
	//	DMA2SSA = (uint32_t) port_data;
	//	DMA2CON0bits.DGO = 0;
}

#ifdef NHD

/*
 * R2 short on LCD NHD-0420D3Z-NSW-BBW-V3 board
 */

static void send_lcd_data(const uint8_t data)
{
	CSB_SetLow();
	SPI1_ExchangeByte(data);
	wdtdelay(8);
}

static void send_lcd_cmd(const uint8_t cmd)
{
	CSB_SetLow();
	SPI1_ExchangeByte(NHD_CMD);
	wdtdelay(8);
	SPI1_ExchangeByte(cmd);
	wdtdelay(8);
}

static void send_lcd_cmd_long(const uint8_t cmd)
{
	CSB_SetLow();
	SPI1_ExchangeByte(NHD_CMD);
	wdtdelay(8);
	SPI1_ExchangeByte(cmd);
	wdtdelay(800);
}

/*
 * uses DMA channel 1 for transfers
 */
void eaDogM_WriteString(char *strPtr)
{
	uint8_t len = (uint8_t) strlen(strPtr);

#ifdef DEBUG_DISP1
	DLED1 = true;
#endif
	wait_lcd_set();
	/* reset buffer for DMA */
	ringBufS_flush(spi_link.tx1a, false);
	CSB_SetLow(); /* SPI select display */
	if (len > (uint8_t) max_strlen) {
		len=max_strlen;
	}
	ringBufS_put_dma_cpy(spi_link.tx1a, strPtr, len);
	SPI1_ExchangeBlock(spi_link.tx1a, len);
	start_lcd(); // start DMA transfer
#ifdef DISPLAY_SLOW
	wdtdelay(9000);
#endif
#ifdef DEBUG_DISP1
	DLED1 = false;
#endif
}

/*
 * uses DMA channel 1 for transfers
 */
void send_lcd_cmd_dma(const uint8_t strPtr)
{
	wait_lcd_done();
	send_lcd_data_dma(NHD_CMD); //prefix
	wait_lcd_done();
	send_lcd_data_dma(strPtr); // cmd code
	wait_lcd_done();
}

/*
 * uses DMA channel 1 for transfers
 */
void send_lcd_data_dma(const uint8_t strPtr)
{
#ifdef DEBUG_DISP2
	DLED2 = true;
#endif
	wait_lcd_set();
	/* reset buffer for DMA */
	ringBufS_flush(spi_link.tx1a, false);
	CSB_SetLow(); /* SPI select display */
	ringBufS_put_dma(spi_link.tx1a, strPtr); // don't use printf to send zeros

	start_lcd(); // start DMA transfer
#ifdef DEBUG_DISP2
	DLED2 = false;
#endif
}

void eaDogM_WriteStringAtPos(const uint8_t r, const uint8_t c, char *strPtr)
{
	uint8_t row;

	switch (r) {
	case 0:
		row = 0x40;
		break;
	case 1:
		row = 0x14;
		break;
	case 2:
		row = 0x54;
		break;
	case 3:
		row = 0x00;
		break;
	default:
		row = 0x40;
		break;
	}
	send_lcd_cmd(0x45);
	send_lcd_data(row + c);
	wait_lcd_done();
	eaDogM_WriteString(strPtr);
}

void eaDogM_WriteIntAtPos(uint8_t r, uint8_t c, uint8_t i)
{

}

void eaDogM_SetPos(const uint8_t r, const uint8_t c)
{

}

void eaDogM_ClearRow(const uint8_t r)
{

}

void eaDogM_WriteByteToCGRAM(uint8_t ndx, uint8_t data)
{

}

#else

/*
 * add short spi delay (default)
 */
static void send_lcd_data(const uint8_t data)
{
	RS_SetHigh();
	CSB_SetLow();
	SPI1_Exchange8bit(data);
	wdtdelay(8);
}

/*
 * add inst spi delay
 */
static void send_lcd_cmd(const uint8_t cmd)
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
static void send_lcd_cmd_long(const uint8_t cmd)
{
	RS_SetLow();
	CSB_SetLow();
	SPI1_Exchange8bit(cmd);
	wdtdelay(800);
	RS_SetHigh();
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

/*
 * uses DMA channel 1 for transfers
 */
void eaDogM_WriteString(char *strPtr)
{
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

void eaDogM_WriteStringAtPos(const uint8_t r, const uint8_t c, char *strPtr)
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
#endif

void eaDogM_WriteCommand(const uint8_t cmd)
{
	send_lcd_cmd(cmd);
}

void eaDogM_WriteChr(const int8_t value)
{
	send_lcd_data((uint8_t) value);
}

/*
 * uses DMA channel 2 for transfers
 */
void send_port_data_dma(uint16_t dsize)
{
	if (dsize > max_port_data)
		dsize = max_port_data;
}

/*
 * return pointer to internal data buffer for DMA
 */
uint8_t* port_data_dma_ptr(void)
{
	return port_data;
}

/*
 * Trigger the SPI DMA transfer to the LCD display
 */
void start_lcd(void)
{
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
	//	while (spi_link.LCD_DATA);

	CSB_SetHigh(); /* SPI deselect display */
}