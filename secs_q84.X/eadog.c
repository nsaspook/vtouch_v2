#include <string.h>
#include "eadog.h"
#include "vconfig.h"
#include "mcc_generated_files/mcc.h"


#ifdef TRACE
#define E_TRACE	IO_RB5_Toggle()
#else
#define E_TRACE	""
#endif

#ifdef CAN_REMOTE // SPI DMA wait timeout counts
#define DONE_DELAY	99999
#else
#define DONE_DELAY	99999
#endif

volatile struct spi_link_type spi_link = {
	.LCD_DATA = false,
};

static const spi1_configuration_t spi1_configuration[] = {
	{0x83, 0x20, 0x3, 0x4, 0}
};

static char Sstr[NSB][LSB];
static volatile bool scroll_lock = false, powerup = true;
static volatile uint8_t scroll_line_pos = 4;

static void send_lcd_cmd_long(const uint8_t); // for display init only
static void send_lcd_data(const uint8_t);
static void send_lcd_cmd(const uint8_t);
static void spi_byte(void);

/*
 * Init the NHD-0420D3Z-NSW-BBW-V3 in 8-bit serial mode
 * channel 1 DMA if configured
 */
bool init_display(void)
{
	spi_link.txbuf = lcd_dma_buf; // use MCC DMA buffer variable
	memset(Sstr, ' ', NSB * LSB); // clear scroll buffer of junk

#ifdef USE_LCD_DMA
	DMA1_SetSCNTIInterruptHandler(clear_lcd_done);
	DMA1_SetORIInterruptHandler(spi_byte);
	DMA1_SetDMAPriority(2);
#endif
#ifdef NHD  // uses MODE 3 on the Q84, https://newhavendisplay.com/content/specs/NHD-0420D3Z-NSW-BBW-V3.pdf
#ifdef USEMCC_SPI
#else
	SPI1CON0bits.EN = 0;
	// mode 3
	SPI1CON1 = 0x20;
	// SSET disabled; RXR suspended if the RxFIFO is full; TXR required for a transfer; 
	SPI1CON2 = 0x03;
	// BAUD 0; 
	SPI1BAUD = 0x04; // 50kHz SCK
	// CLKSEL MFINTOSC; 
	SPI1CLK = 0x02;
	// BMODE every byte; LSBF MSb first; EN enabled; MST bus master; 
	SPI1CON0 = 0x83;
	SPI1CON0bits.EN = 1;
#endif
	if (powerup) {
		wdtdelay(LCD_PWR_DELAY); // > 400ms power up delay
	}

#ifdef USE_LCD_DMA
	SPI1INTFbits.SPI1TXUIF = 0;
	DMASELECT = 0; // use DMA1
	DMAnCON0bits.EN = 0;
	SPI1CON0bits.EN = 0;
	SPI1CON2 = 0x02; //  Received data is not stored in the FIFO
	SPI1CON0bits.EN = 1;
	DMAnCON1bits.DMODE = 0;
	DMAnCON1bits.DSTP = 0;
	DMAnCON1bits.SMODE = 1;
	DMAnCON1bits.SMR = 0;
	DMAnCON1bits.SSTP = 1;
	DMAnSSA = (uint24_t) spi_link.txbuf;
	DMAnCON0bits.DGO = 0;
	DMAnCON0bits.EN = 1; /* enable DMA */
	SPI1INTFbits.SPI1TXUIF = 1;
	send_lcd_cmd_dma(LCD_CMD_BRI); // set back-light level
	send_lcd_data_dma(NHD_BL_MED);
	send_lcd_cmd_dma(LCD_CMD_CONT); // set display contrast
	send_lcd_data_dma(NHD_CONT);
	send_lcd_cmd_dma(LCD_CMD_ON); // display on
	send_lcd_cmd_dma(LCD_CMD_CLR); // clear screen
	wdtdelay(NHD_L_DELAY);
	DMA1_StopTransfer();
#else
	send_lcd_cmd(LCD_CMD_BRI); // set back-light level
	send_lcd_data(NHD_BL_LOW);
	send_lcd_cmd(LCD_CMD_CONT); // set display contrast
	send_lcd_data(NHD_CONT);
	send_lcd_cmd(LCD_CMD_OFF); // display on
	send_lcd_cmd(LCD_CMD_CLR); // clear screen
	wdtdelay(NHD_L_DELAY);
	DMA1_StopTransfer();
#endif
#endif
	powerup = false; // only of the first display init call
	return true;
}

#ifdef NHD

/*
 * R2 short on LCD NHD-0420D3Z-NSW-BBW-V3 board
 */

static void send_lcd_data(const uint8_t data)
{
	CS_SetLow();
	SPI1_ExchangeByte(data);
	wdtdelay(NHD_T_DELAY);
}

static void send_lcd_cmd(const uint8_t cmd)
{
	CS_SetLow();
	SPI1_ExchangeByte(NHD_CMD);
	wdtdelay(NHD_T_DELAY);
	SPI1_ExchangeByte(cmd);
	wdtdelay(NHD_T_DELAY);
}

static void send_lcd_cmd_long(const uint8_t cmd)
{
	CS_SetLow();
	SPI1_ExchangeByte(NHD_CMD);
	wdtdelay(NHD_T_DELAY);
	SPI1_ExchangeByte(cmd);
	wdtdelay(NHD_L_DELAY);
}

/*
 * CAN use DMA channel 1 for transfers
 */
void eaDogM_WriteString(char *strPtr)
{
	uint8_t len = (uint8_t) strlen(strPtr);

	E_TRACE;
	E_TRACE;
	wait_lcd_done();
	wait_lcd_set();
	CS_SetLow(); /* SPI select display */
	if (len > (uint8_t) max_strlen) {
		len = max_strlen;
	}
	memcpy(spi_link.txbuf, strPtr, len);
#ifdef USE_LCD_DMA
	DMAnCON0bits.EN = 0; /* disable DMA to change source count */
	DMA1_SetSourceSize(len);
	DMA1_SetDestinationSize(1);
	DMAnCON0bits.EN = 1; /* enable DMA */
#else
	SPI1_ExchangeBlock(spi_link.txbuf, len);
#endif
	start_lcd(); // start DMA transfer
}

/*
 * uses DMA channel 1 for transfers
 */
void send_lcd_cmd_dma(const uint8_t strPtr)
{
	send_lcd_data_dma(NHD_CMD); //prefix
	send_lcd_data_dma(strPtr); // cmd code
}

/*
 * uses DMA channel 1 for transfers
 */
void send_lcd_data_dma(const uint8_t strPtr)
{
	E_TRACE;
	E_TRACE;
	E_TRACE;
	wait_lcd_done();
	wait_lcd_set();
	CS_SetLow(); /* SPI select display */
	spi_link.txbuf[0] = strPtr;
	DMAnCON0bits.EN = 0; /* disable DMA to change source count */
	DMA1_SetSourceSize(1);
	DMA1_SetDestinationSize(1);
	DMAnCON0bits.EN = 1; /* enable DMA */
	start_lcd(); // start DMA transfer
}

/*
 * send three byte command string via DMA
 */
void send_lcd_pos_dma(const uint8_t strPtr)
{
	E_TRACE;
	wait_lcd_done();
	wait_lcd_set();
	CS_SetLow(); /* SPI select display */
	spi_link.txbuf[0] = NHD_CMD;
	spi_link.txbuf[1] = NHD_POS;
	spi_link.txbuf[2] = strPtr;
	DMAnCON0bits.EN = 0; /* disable DMA to change source count */
	DMA1_SetSourceSize(3);
	DMA1_SetDestinationSize(1);
	DMAnCON0bits.EN = 1; /* enable DMA */
	start_lcd(); // start DMA transfer
}

void eaDogM_WriteStringAtPos(const uint8_t r, const uint8_t c, char *strPtr)
{
	uint8_t row;

#ifndef CAN_REMOTE
	if (scroll_lock) { // don't update LCD text when in scroll mode
		return;
	}
#endif

	switch (r) {
	case LCD1:
		row = 0x40;
		break;
	case LCD2:
		row = 0x14;
		break;
	case LCD3:
		row = 0x54;
		break;
	case LCD0:
		row = 0x00;
		break;
	default:
		row = 0x00;
		break;
	}

#ifdef USE_LCD_DMA
	send_lcd_pos_dma(row + c);
	wdtdelay(NHD_S_DELAY); // display command processing delay
	E_TRACE;
#else
	send_lcd_cmd(0x45);
	send_lcd_data(row + c);
#endif
#ifdef USE_CAN
	can_fd_lcd_mirror(r, strPtr);
#endif
	eaDogM_WriteString(strPtr);
}

void eaDogM_WriteIntAtPos(const uint8_t r, const uint8_t c, const uint8_t i)
{

}

void eaDogM_SetPos(const uint8_t r, const uint8_t c)
{

}

void eaDogM_ClearRow(const uint8_t r)
{

}

void eaDogM_WriteByteToCGRAM(const uint8_t ndx, const uint8_t data)
{

}

#else
#endif

void eaDogM_WriteCommand(const uint8_t cmd)
{
#ifdef USE_LCD_DMA
	send_lcd_cmd_dma(cmd);
#else
	send_lcd_cmd(cmd);
#endif
}

void eaDogM_WriteChr(const int8_t value)
{
#ifdef USE_LCD_DMA
	send_lcd_data_dma((uint8_t) value);
#else
	send_lcd_data((uint8_t) value);
#endif
}

/*
 * Trigger the SPI DMA transfer to the LCD display
 */
void start_lcd(void)
{
#ifdef USE_LCD_DMA
	DMA1_StartTransferWithTrigger();
#endif
}

void wait_lcd_set(void)
{
	spi_link.LCD_DATA = true;
}

bool wait_lcd_check(void)
{
	return spi_link.LCD_DATA;
}

void wait_lcd_done(void)
{
#ifdef USE_LCD_DMA
	uint32_t delay = 0;
	while (spi_link.LCD_DATA) {
		if (delay++ > DONE_DELAY) {
			MLED_SetHigh();
			return;
		}
	};
	delay = 0;
	while (!SPI1STATUSbits.TXBE) {
		if (delay++ > DONE_DELAY) {
			MLED_SetHigh();
			return;
		}
	};
	MLED_SetLow();
	CS_SetHigh();
#endif
}

/*
 * in DMA mode this is a ISR that runs when the source count is complete
 */
void clear_lcd_done(void)
{
//	INT_TRACE; // GPIO interrupt scope trace
	spi_link.LCD_DATA = false;
	E_TRACE;
	E_TRACE;
	E_TRACE;
	E_TRACE;
}

void spi_rec_done(void)
{
#ifdef USE_LCD_DMA
#endif
}

/*
 * SPI buffer overrun ISR
 */
static void spi_byte(void)
{
//	INT_TRACE; // GPIO interrupt scope trace
	MLED_Toggle();
}

/*
 * auto scrolls up the string on the display
 */
char * eaDogM_Scroll_String(char *strPtr)
{
	scroll_lock = true;
	memcpy((void *) &Sstr[4][0], &Sstr[0][0], 20); // move top line to old line buffer
	memcpy((void *) &Sstr[0][0], &Sstr[1][0], 20);
	memcpy((void *) &Sstr[1][0], &Sstr[2][0], 20);
	memcpy((void *) &Sstr[2][0], &Sstr[3][0], 20);
	memcpy((void *) &Sstr[3][0], strPtr, 20); // place new text on the bottom line
	scroll_line_pos = 4;
	return &Sstr[4][0];
}

/*
 * mainline info scroll updater, should run a ~1 second ticks
 */
void eaDogM_Scroll_Task(void)
{
	if (!scroll_lock) {
		return;
	}

	if (scroll_line_pos == 0) { // wait for last line display time period
		scroll_lock = false;
		scroll_line_pos = 4;
		return;
	}

	scroll_lock = false;
	--scroll_line_pos;
	eaDogM_WriteStringAtPos(scroll_line_pos, 0, &Sstr[scroll_line_pos][0]);
	scroll_lock = true;

}

void no_dma_set_lcd(void)
{
	send_lcd_cmd(LCD_CMD_BRI); // set back-light level
	send_lcd_data(NHD_BL_HIGH);
	send_lcd_cmd(LCD_CMD_CONT); // set display contrast
	send_lcd_data(NHD_CONT);
	send_lcd_cmd(LCD_CMD_ON); // display on
	send_lcd_cmd(LCD_CMD_CLR); // clear screen
	wdtdelay(NHD_L_DELAY);
}

void check_lcd_dim(const bool dim)
{
	if (B.display_update) {
		B.display_update = false;
		B.dim_delay = 0;
#ifdef USE_LCD_DMA
		if (dim) {
			send_lcd_cmd_dma(LCD_CMD_BRI); // set back-light level
			send_lcd_data_dma(NHD_BL_OFF);
		} else {
			send_lcd_cmd_dma(LCD_CMD_BRI); // set back-light level
			send_lcd_data_dma(NHD_BL_HIGH);
		}
#else
		if (dim) {
			send_lcd_cmd(LCD_CMD_BRI); // set back-light level
			send_lcd_data(NHD_BL_LOW);
		} else {
			send_lcd_cmd(LCD_CMD_BRI); // set back-light level
			send_lcd_data(NHD_BL_HIGH);
		}
#endif
	}
}

void set_lcd_dim(const bool dim)
{
	if (B.display_update) {
		B.display_update = false;
		B.dim_delay = 0;
#ifdef USE_LCD_DMA
		if (dim) {
			send_lcd_cmd_dma(LCD_CMD_BRI); // set back-light level
			send_lcd_data_dma(NHD_BL_OFF);
		} else {
			send_lcd_cmd_dma(LCD_CMD_BRI); // set back-light level
			send_lcd_data_dma(NHD_BL_HIGH);
		}
#else
		if (dim) {
			send_lcd_cmd(LCD_CMD_BRI); // set back-light level
			send_lcd_data(NHD_BL_LOW);
		} else {
			send_lcd_cmd(LCD_CMD_BRI); // set back-light level
			send_lcd_data(NHD_BL_HIGH);
		}
#endif
	}

	if (B.dim_delay++ >= DIM_DELAY) {
		B.dim_delay = 0;
#ifdef USE_LCD_DMA
		send_lcd_cmd_dma(LCD_CMD_BRI); // set back-light level
		send_lcd_data_dma(NHD_BL_OFF);
#else
		send_lcd_cmd(LCD_CMD_BRI); // set back-light level
		send_lcd_data(NHD_BL_LOW);
#endif
	}
}
