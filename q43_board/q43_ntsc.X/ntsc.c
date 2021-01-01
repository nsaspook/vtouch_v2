#include "ntsc.h"

volatile uint32_t vcounts = 0;
volatile uint8_t vfcounts = 0, scan_line = 0;
volatile bool ntsc_vid = true, ntsc_flip = false;

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

	vbuf_ptr = vsync;
	DMA5_SetDMAPriority(0);
	DMA5_SetDCNTIInterruptHandler(vcnts);
	DMASELECT = 0x04;
	DMAnCON0bits.EN = 0;
	DMAnSSA = (volatile uint24_t) vbuf_ptr;
	DMAnSSZ = DMA_B;
	DMAnDSZ = DMAnSSZ;
	DMAnCON0bits.EN = 1;


	/*
	 * setup the static V, H and video patterns for DMA transfer engine to PORTB
	 */
	for (count = 0; count < 48; count++) {
		vsync[count] = SYNC_LEVEL;
		hsync[count] = SYNC_LEVEL;
	}

	for (count = 38; count < 48; count++) {
		vsync[count] = BLANK_LEVEL;
		hsync[count] = SYNC_LEVEL;
	}

	for (count = 48; count < 200; count++) {
		vsync[count] = BLANK_LEVEL;
		hsync[count] = SYNC_LEVEL;
		if (!(count % 8)) { // add a bit of default texture
			if (count > 100)
				vsync[count] += VIDEO_LEVEL; // set bit 1 of PORTB
		}
	}
	for (count = 200; count < (V_BUF_SIZ - 1); count++) {
		vsync[count] = BLANK_LEVEL;
		hsync[count] = SYNC_LEVEL;
	}

	for (count = (DMA_B - 38); count < (V_BUF_SIZ - 1); count++) {
		hsync[count] = BLANK_LEVEL;
	}

	// default scan mode to all lines
	s_mode = sync1;
	// dupe scanline buffer
	memcpy((void*) vbuffer, (void*) vsync, V_BUF_SIZ);

	/*
	 * kickstart the DMA engine
	 */
	DMA5_StopTransfer();
	DMA5_StartTransfer();
}

/*
 * routine not used
 */
void vcntd(void) // each DMA transfer interrupt
{
	vcounts++;
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
	IO_RB4_Toggle();

	switch (s_mode) {
	case sync0: // H sync and video, one line
		if (vfcounts >= S_COUNT) { // 243
			vfcounts = 0;
			s_mode = sync2;
			DMASELECT = 0x04;
			DMAnCON0bits.EN = 0;
			DMAnSSA = (volatile uint24_t) & hsync;
			DMAnSSZ = DMA_B;
			DMAnDSZ = DMAnSSZ;
			DMAnCON0bits.EN = 1;
		} else {
			if (vfcounts == scan_line) {
				IO_RB1_SetDigitalOutput();
			} else {
				IO_RB1_SetDigitalInput();
			}
		}
		break;
	case sync1: // H sync and video, all lines
		if (vfcounts >= S_COUNT) {
			vfcounts = 0;
			s_mode = sync2;
			DMASELECT = 0x04;
			DMAnCON0bits.EN = 0;
			DMAnSSA = (volatile uint24_t) & hsync;
			DMAnSSZ = DMA_B;
			DMAnDSZ = DMAnSSZ;
			DMAnCON0bits.EN = 1;
		} else {
			if (ntsc_vid) {
				IO_RB1_SetDigitalOutput();
			} else {
				IO_RB1_SetDigitalInput();
			}
		}
		break;
	case sync2: // V sync and no video
		if (vfcounts >= H_SYNC) {
			vfcounts = 0;
			s_mode = sync3;
			DMASELECT = 0x04;
			DMAnCON0bits.EN = 0;
			DMAnSSA = (volatile uint24_t) vbuf_ptr;
			DMAnSSZ = DMA_B;
			DMAnDSZ = DMAnSSZ;
			DMAnCON0bits.EN = 1;
			IO_RB1_SetDigitalInput(); // turn-off video bits
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
			DMASELECT = 0x04;
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
		DMASELECT = 0x04;
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
	DMA5_StopTransfer();
	DMA5_StartTransfer();
}