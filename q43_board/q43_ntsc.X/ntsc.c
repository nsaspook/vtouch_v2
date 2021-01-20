#include "ntsc.h"

volatile uint32_t vcounts = 0;
volatile uint8_t vfcounts = 0, scan_line = 0, vml = SL_V1;
volatile bool ntsc_vid = true, task_hold = true;

volatile enum s_mode_t s_mode;
volatile uint8_t vsyncu[V_BUF_SIZ] = {0}, *vbuf_ptr;

/*
 * function variable that should not be optimized
 */
volatile uint8_t x;

void vcntd(void);
void vcnts(void);
uint8_t reverse_bit8(uint8_t);

/*
 * lsb to msb to display chars correctly
 */
uint8_t reverse_bit8(uint8_t x)
{
	x = ((uint8_t) ((x & (uint8_t) 0x55) << 1)) | ((uint8_t) ((x & (uint8_t) 0xAA) >> 1));
	x = ((uint8_t) ((x & (uint8_t) 0x33) << 2)) | ((uint8_t) ((x & (uint8_t) 0xCC) >> 2));
	return(uint8_t) (x << 4) | (uint8_t) (x >> 4);
}

/*
 * setup the data formats and hardware for the DMA engine
 */
void ntsc_init(void)
{
	uint16_t count = 0;
	uint8_t char_c = 0, char_n = 0;

	/*
	 * Interrupt driven task manager
	 * after the H sync pulse there are V syncs with no video
	 * main-line code runs for the duration of one timer 4 interrupt period
	 * ~200us for testing, then goes back to idle
	 * until re-triggered the next H sync cycle
	 */
	TMR4_Stop();
	TMR4_SetInterruptHandler(vcntd);

	/*
	 * setup system arbiter to share memory with DMA process
	 */
	// This function is dependant on the PR1WAY CONFIG bit
	PRLOCK = 0x55;
	PRLOCK = 0xAA;
	PRLOCKbits.PRLOCKED = 0;
	ISRPR = 1;
	DMA5PR = 2;
	MAINPR = 3;
	PRLOCK = 0x55;
	PRLOCK = 0xAA;
	PRLOCKbits.PRLOCKED = 1;

	/*
	 * DMA hardware registers data setup
	 */
	DMA5_StopTransfer();
	vbuf_ptr = vsync;
	SLRCONB = 0xff; // reduce PORTB slewrate
	DMA5_SetDCNTIInterruptHandler(vcnts);
	DMASELECT = DMA_M;
	DMAnCON0bits.EN = 0;
	DMAnSSA = (volatile uint24_t) vbuf_ptr;
	DMAnSSZ = DMA_B;
	DMAnDSZ = DMAnSSZ;
	DMAnCON0bits.EN = 1;
	TRISB = vml; // video bit , on

	/*
	 * setup the static V, H and video patterns for DMA transfer engine to LATB
	 */
	for (count = 0; count < B_START; count++) {
		vsync[count] = SYNC_LEVEL;
		vsyncu[count] = SYNC_LEVEL;
		hsync[count] = SYNC_LEVEL;
	}

	for (count = S_END; count < B_START; count++) {
		vsync[count] = BLANK_LEVEL;
		vsyncu[count] = BLANK_LEVEL;
		hsync[count] = SYNC_LEVEL;
	}

	char_c = 7;
	for (count = V_START; count < V_END; count++) {
		vsync[count] |= BLANK_LEVEL;
		vsyncu[count] |= BLANK_LEVEL;
		hsync[count] = SYNC_LEVEL;

		if (count >= SL_DOTS) {
			if (++char_c > 6) {
				ntsc_font(20 + char_n++, count);
				char_c = 0;
			}
		}
	}
	for (count = V_END; count < (V_BUF_SIZ - 1); count++) {
		vsync[count] = BLANK_LEVEL;
		vsyncu[count] = BLANK_LEVEL;
		hsync[count] = SYNC_LEVEL;
	}

	for (count = (DMA_B - 5); count < (V_BUF_SIZ - 1); count++) {
		hsync[count] = BLANK_LEVEL;
	}

	for (count = V_H; count < (V_H + 10); count++) {
		hsync[count] = BLANK_LEVEL; // double speed H pulses
	}

	// default scan mode to all lines
	s_mode = sync1;

	/*
	 * kickstart the DMA engine
	 */
	DMA5_StartTransfer();
	TMR4_StartTimer();
}

/*
 * Encode the font 'rom' into display memory format
 * two 256 byte banks for each display line, split into 4 bits per bank
 * It's possible to optimize 7 bits for one bank per display line but
 * I'm using port B so need to share the pic programmer lines on 6 and 7
 */
void ntsc_font(uint16_t chr, uint16_t count)
{
	uint8_t cbits, i;

	for (i = 0; i < 8; i++) {
		cbits = reverse_bit8(fontv[(chr * 8) + (i)]); // flip bits for proper display
		vsync[count + i] = 0;
		vsyncu[count + i] = 0;
		vsync[count + i] |= ((cbits & 0xf0) >> 3) | BLANK_LEVEL; // mask and shift to upper/lower banks
		vsyncu[count + i] |= ((cbits & 0x0f) << 1) | BLANK_LEVEL;
	}
}

/*
 * low priority idle task for timer 4 ISR
 * waits checking task_hold until its false (set to false in DMA state machine)
 * this task is interruptible from all high pri interrupts and control returns after high pri processing
 * when it exits the hold loop, program flow returns to main for application processing
 * until another timer 4 interrupt returns program flow to here.
 */
void vcntd(void) // each timer 4 interrupt
{
	S_SET_Toggle();
	TMR4_Stop();
	task_hold = true;
	while (task_hold) {
	};
	S_SET_Toggle();
}

/*
 * NTSC DMA state machine
 * ISR triggered by the completed DMA transfer of the data buffer to PORTB
 * Generates the required HV sync for fake-progressive NTSC scanning on most modern TV sets
 * http://people.ece.cornell.edu/land/courses/ece5760/video/gvworks/GV%27s%20works%20%20NTSC%20demystified%20-%20B&W%20Video%20and%20Sync%20-%20Part%201.htm
 * 
 * some code is duplicated for scanline timing adjustments to match for different code paths.
 */
void vcnts(void) // each scan line interrupt, 262 total for scan lines and V sync
{

	x = vfcounts & 0x7; // mask bits for port B bit line and bank selection
	if (x > 3) {
		DMASELECT = DMA_M;
		switch (x) {
		case 4:
			vml = SL_V4;
			DMAnSSA = (volatile uint24_t) vsyncu; // upper bitmap
			break;
		case 5:
			vml = SL_V3;
			DMAnSSA = (volatile uint24_t) vsyncu; // upper bitmap
			break;
		case 6:
			vml = SL_V2;
			DMAnSSA = (volatile uint24_t) vsyncu; // upper bitmap
			break;
		case 7:
			vml = SL_V1;
			DMAnSSA = (volatile uint24_t) vsync; // lower bitmap
			break;
		default:
			vml = SL_V_OFF;
			break;
		}
	} else {
		DMASELECT = DMA_M;
		switch (x) {
		case 0:
			vml = SL_V4;
			DMAnSSA = (volatile uint24_t) vsync; // lower bitmap
			break;
		case 1:
			vml = SL_V3;
			DMAnSSA = (volatile uint24_t) vsync; // lower bitmap
			break;
		case 2:
			vml = SL_V2;
			DMAnSSA = (volatile uint24_t) vsync; // lower bitmap
			break;
		case 3:
			vml = SL_V1;
			DMAnSSA = (volatile uint24_t) vsyncu; // upper bitmap
			break;
		default:
			vml = SL_V_OFF;
			break;
		}
	}
	vfcounts++;


	switch (s_mode) {
	case sync0: // H sync and video, one line
		if (vfcounts >= B_COUNT) {
			s_mode = syncB;
			DMASELECT = DMA_M;
			DMAnCON0bits.EN = 0;
			DMAnSSA = (volatile uint24_t) vbuf_ptr;
			DMAnSSZ = DMA_B;
			DMAnDSZ = DMAnSSZ;
			DMAnCON0bits.EN = 1;
			TRISB = SL_V_OFF;
			/*
			 * trigger main task processing using the task manager
			 */
			task_hold = false; // clear idle routine run flag
			TMR4_Period8BitSet(TASK_S1);
			TMR4_StartTimer(); // run in main for timer 4 interrupt period then back to idle
		} else {
			if (vfcounts == scan_line) {
				TRISB = vml; // video memory line , on
			} else {
				TRISB = SL_V_OFF; // turn-off all video bits
			}
		}
		break;
	case sync1: // H sync and video, all lines
		if (vfcounts >= B_COUNT) {
			s_mode = syncB;
			DMASELECT = DMA_M;
			DMAnCON0bits.EN = 0;
			DMAnSSA = (volatile uint24_t) vbuf_ptr;
			DMAnSSZ = DMA_B;
			DMAnDSZ = DMAnSSZ;
			DMAnCON0bits.EN = 1;
			TRISB = SL_V_OFF; // turn-off all video bits
			/*
			 * trigger main task processing using the task manager
			 */
			task_hold = false; // clear idle routine run flag
			TMR4_Period8BitSet(TASK_S1);
			TMR4_StartTimer(); // run in main for timer 4 interrupt period then back to idle
		} else {
			if (ntsc_vid) {
				TRISB = vml; // video bit , on
			} else {
				TRISB = SL_V_OFF; // turn-off all video bits
			}
		}
		break;
	case syncB: // H sync and no video, bottom blank
		if (vfcounts >= S_COUNT) {
			vfcounts = 0;
			s_mode = sync2;
			DMASELECT = DMA_M;
			DMAnCON0bits.EN = 0;
			DMAnSSA = (volatile uint24_t) & hsync;
			DMAnSSZ = DMA_B;
			DMAnDSZ = DMAnSSZ;
			DMAnCON0bits.EN = 1;
		}
		break;
	case sync2: // V sync and no video
		if (vfcounts >= H_SYNC) {
			vfcounts = 0;
			s_mode = sync3;
			DMASELECT = DMA_M;
			DMAnCON0bits.EN = 0;
			DMAnSSA = (volatile uint24_t) vbuf_ptr;
			DMAnSSZ = DMA_B;
			DMAnDSZ = DMAnSSZ;
			DMAnCON0bits.EN = 1;
			TRISB = SL_V_OFF; // turn-off all video bits
			/*
			 * trigger main task processing using the task manager
			 */
			task_hold = false; // clear idle routine run flag
			TMR4_Period8BitSet(TASK_S2);
			TMR4_StartTimer(); // run in main for timer 4 interrupt period then back to idle
		}
		break;
	case sync3: // H sync and no video
		if (vfcounts >= H_COUNT) {
			vfcounts = 0;
			if ((bool) scan_line) {
				s_mode = sync0;
			} else {
				s_mode = sync1;
			}
			DMASELECT = DMA_M;
			DMAnCON0bits.EN = 0;
			DMAnSSA = (volatile uint24_t) vbuf_ptr;
			DMAnSSZ = DMA_B;
			DMAnDSZ = DMAnSSZ;
			DMAnCON0bits.EN = 1;
		}
		break;
	default:
		vfcounts = 0;
		s_mode = sync1;
		DMASELECT = DMA_M;
		DMAnCON0bits.EN = 0;
		vbuf_ptr = vsync;
		DMAnSSA = (volatile uint24_t) vbuf_ptr;
		DMAnSSZ = DMA_B;
		DMAnDSZ = DMAnSSZ;
		DMAnCON0bits.EN = 1;
		TRISB = vml; // video bit , on
		break;
	}

	/*
	 * re-trigger the state machine for a new scanline
	 */
	DMA5_StartTransfer();
}