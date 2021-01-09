#include "ntsc.h"

volatile uint32_t vcounts = 0;
volatile uint8_t vfcounts = 0, scan_line = 0;
volatile bool ntsc_vid = true, ntsc_flip = false, task_hold = true;

volatile enum s_mode_t s_mode;
volatile uint8_t vbuffer[V_BUF_SIZ], *vbuf_ptr;

void vcntd(void);
void vcnts(void);

/*
 * setup the data formats and hardware for the DMA engine
 */
void ntsc_init(void)
{
	uint16_t count = 0;

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
	 * DMA hardware registers data setup
	 */
	DMA5_StopTransfer();
	vbuf_ptr = vsync;
	SLRCONB = 0xff; // reduce PORTB slewrate
	DMA5_SetDMAPriority(0);
	DMA5_SetDCNTIInterruptHandler(vcnts);
	DMASELECT = DMA_M;
	DMAnCON0bits.EN = 0;
	DMAnSSA = (volatile uint24_t) vbuf_ptr;
	DMAnSSZ = DMA_B;
	DMAnDSZ = DMAnSSZ;
	DMAnCON0bits.EN = 1;

	/*
	 * setup the static V, H and video patterns for DMA transfer engine to PORTB
	 */
	for (count = 0; count < B_START; count++) {
		vsync[count] = SYNC_LEVEL;
		vbuffer[count] = SYNC_LEVEL;
		hsync[count] = SYNC_LEVEL;
	}

	for (count = S_END; count < B_START; count++) {
		vsync[count] = BLANK_LEVEL;
		vbuffer[count] = BLANK_LEVEL;
		hsync[count] = SYNC_LEVEL;
	}

	for (count = V_START; count < V_END; count++) {
		vsync[count] = BLANK_LEVEL;
		vbuffer[count] = BLANK_LEVEL;
		hsync[count] = SYNC_LEVEL;
		if ((count % 8)) { // add a bit of default texture
			if (count > V_DOTS)
				vsync[count] += VIDEO_LEVEL; // set bit 1 of PORTB
		} else {
			if (!(count % 8)) { // add a bit of default texture
				if (count > V_DOTS)
					vbuffer[count] += VIDEO_LEVEL; // set bit 1 of PORTB
			}
		}
	}
	for (count = V_END; count < (V_BUF_SIZ - 1); count++) {
		vsync[count] = BLANK_LEVEL;
		vbuffer[count] = BLANK_LEVEL;
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
 * low priority idle task for timer 4 ISR
 * waits checking task_hold until its false (set to false in DMA state machine)
 * this task is interruptible from all high pri interrupts and control returns after high pri processing
 * when it exits the hold loop, program flow returns to main for application processing
 * until another timer 4 interrupt returns program flow to here.
 */
void vcntd(void) // each timer 4 interrupt
{
	IO_RB4_Toggle();
	TMR4_Stop();
	task_hold = true;
	while (task_hold) {
	};
	IO_RB4_Toggle();
}

/*
 * NTSC DMA state machine
 * ISR triggered by the completed DMA transfer of the data buffer to PORTB
 * Generates the required HV sync for fake-progressive NTSC scanning on most modern TV sets
 * http://people.ece.cornell.edu/land/courses/ece5760/video/gvworks/GV%27s%20works%20%20NTSC%20demystified%20-%20B&W%20Video%20and%20Sync%20-%20Part%201.htm
 */
void vcnts(void) // each scan line interrupt, 262 total for scan lines and V sync
{
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
			/*
			 * trigger main task processing using the task manager
			 */
			task_hold = false; // clear idle routine run flag
			TMR4_Period8BitSet(TASK_S1);
			TMR4_StartTimer(); // run in main for timer 4 interrupt period then back to idle
		} else {
			if (vfcounts == scan_line) {
				IO_RB1_SetDigitalOutput();
			} else {
				IO_RB1_SetDigitalInput();
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
			/*
			 * trigger main task processing using the task manager
			 */
			task_hold = false; // clear idle routine run flag
			TMR4_Period8BitSet(TASK_S1);
			TMR4_StartTimer(); // run in main for timer 4 interrupt period then back to idle
		} else {
			if (ntsc_vid) {
				IO_RB1_SetDigitalOutput();
			} else {
				IO_RB1_SetDigitalInput();
			}
		}
		break;
	case syncB: // H sync and video, bottom blank
		if (vfcounts >= S_COUNT) {
			vfcounts = 0;
			s_mode = sync2;
			DMASELECT = DMA_M;
			DMAnCON0bits.EN = 0;
			DMAnSSA = (volatile uint24_t) & hsync;
			DMAnSSZ = DMA_B;
			DMAnDSZ = DMAnSSZ;
			DMAnCON0bits.EN = 1;
			IO_RB1_SetDigitalInput();
		} else {
			IO_RB1_SetDigitalInput();
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
			IO_RB1_SetDigitalInput(); // turn-off video bits
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
			if (ntsc_flip) {
				vbuf_ptr = vbuffer;
			} else {
				vbuf_ptr = vsync;
			}
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
		ntsc_flip = false;
		vbuf_ptr = vsync;
		DMAnSSA = (volatile uint24_t) vbuf_ptr;
		DMAnSSZ = DMA_B;
		DMAnDSZ = DMAnSSZ;
		DMAnCON0bits.EN = 1;
		IO_RB1_SetDigitalOutput(); // video bits, on
		break;
	}

	/*
	 * re-trigger the state machine for a new scanline
	 */
	DMA5_StartTransfer();
}