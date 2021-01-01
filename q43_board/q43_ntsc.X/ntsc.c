#include "ntsc.h"

volatile uint32_t vcounts = 0;
volatile uint8_t vfcounts = 0;
volatile bool ntsc_vid = true;

volatile enum s_mode_t s_mode;

void vcntd(void);
void vcnts(void);

void ntsc_init(void)
{
	uint16_t count = 0, vramp = BLACK_LEVEL;

	DMA5_SetDMAPriority(0);
	DMA5_SetDCNTIInterruptHandler(vcnts);
	DMASELECT = 0x04;
	DMAnCON0bits.EN = 0;
	DMAnSSA = (volatile uint24_t) & vsync;
	DMAnSSZ = DMA_B;
	DMAnDSZ = DMAnSSZ;
	DMAnCON0bits.EN = 1;

	/*
	 * setup the static V, H and video patterns for DMA transfer pattern
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
		vsync[count] = BLANK_LEVEL; // dma testing
		hsync[count] = SYNC_LEVEL;
		if (!(count % 8)) {
			if (count > 100)
				vsync[count] += 2;
		}
	}
	for (count = 200; count < 749; count++) {
		vsync[count] = BLANK_LEVEL;
		hsync[count] = SYNC_LEVEL;
	}

	for (count = (DMA_B - 38); count < 749; count++) {
		hsync[count] = BLANK_LEVEL;
	}

	s_mode = sync1;

	DMA5_StopTransfer();
	DMA5_StartTransfer();
}

void vcntd(void) // each DMA transfer interrupt, 31 total bytes
{
	vcounts++;
}

void vcnts(void) // each scan line interrupt, 262 total for scan lines and V sync
{
	vfcounts++;
	IO_RB4_Toggle();

	switch (s_mode) {
	case sync1: // H sync and video
		if (vfcounts >= 247) { // 243
			vfcounts = 0;
			s_mode = sync2;
			DMASELECT = 0x04;
			DMAnCON0bits.EN = 0;
			DMAnSSA = (volatile uint24_t) & hsync;
			DMAnSSZ = DMA_B;
			DMAnDSZ = DMAnSSZ;
			DMAnCON0bits.EN = 1;
		}
		break;
	case sync2: // V sync and no video
		if (vfcounts >= 1) { // 20
			vfcounts = 0;
			s_mode = sync3;
			DMASELECT = 0x04;
			DMAnCON0bits.EN = 0;
			DMAnSSA = (volatile uint24_t) & vsync;
			DMAnSSZ = DMA_B;
			DMAnDSZ = DMAnSSZ;
			DMAnCON0bits.EN = 1;
			IO_RB1_SetDigitalInput(); // turn-off video bits
		}
		break;
	case sync3: // H sync and no video
		if (vfcounts >= 14) {
			vfcounts = 0;
			s_mode = sync1;
			DMASELECT = 0x04;
			DMAnCON0bits.EN = 0;
			DMAnSSA = (volatile uint24_t) & vsync;
			DMAnSSZ = DMA_B;
			DMAnDSZ = DMAnSSZ;
			DMAnCON0bits.EN = 1;
			if (ntsc_vid) { // if set, turn-on video bits
				IO_RB1_SetDigitalOutput();
			}
		}
		break;
	default:
		vfcounts = 0;
		s_mode = sync1;
		DMASELECT = 0x04;
		DMAnCON0bits.EN = 0;
		DMAnSSA = (volatile uint24_t) & vsync;
		DMAnSSZ = DMA_B;
		DMAnDSZ = DMAnSSZ;
		DMAnCON0bits.EN = 1;
		IO_RB1_SetDigitalOutput(); // video bits, on
		break;
	}

	DMA5_StopTransfer();
	DMA5_StartTransfer();
}