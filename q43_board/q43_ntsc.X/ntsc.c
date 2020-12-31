#include "ntsc.h"

volatile uint32_t vcounts = 0;
volatile uint8_t vfcounts = 0;
volatile bool mode_init = false; // horizonal scan

volatile enum s_mode_t {
	sync1, sync2, sync3
} s_mode;

void vcntd(void);
void vcnts(void);

void ntsc_init(void)
{
	uint8_t count = 0, vramp = BLACK_LEVEL;

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
	for (count = 0; count < 25; count++) {
		vsync[count] = SYNC_LEVEL;
		hsync[count] = SYNC_LEVEL;
	}

	for (count = 17; count < 48; count++) {
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
	for (count = 200; count < 255; count++) {
		vsync[count] = BLANK_LEVEL;
		hsync[count] = SYNC_LEVEL;
	}

	for (count = 233; count < 255; count++) {
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
	IO_RB4_Toggle();
	IO_RB4_Toggle();

	switch (s_mode) {
	case sync1:
		if (vfcounts >= 247) { // 243
			vfcounts = 0;
			s_mode = sync2;
			mode_init = true;
		}
		if (mode_init) {
			mode_init = false;
			DMASELECT = 0x04;
			DMAnCON0bits.EN = 0;
			DMAnSSA = (volatile uint24_t) & hsync;
			DMAnSSZ = DMA_B;
			DMAnDSZ = DMAnSSZ;
			DMAnCON0bits.EN = 1;
		}
		break;
	case sync2:
		if (vfcounts >= 1) { // 20
			vfcounts = 0;
			s_mode = sync3;
			mode_init = true;
		}
		if (mode_init) {
			mode_init = false;
			DMASELECT = 0x04;
			DMAnCON0bits.EN = 0;
			DMAnSSA = (volatile uint24_t) & vsync;
			DMAnSSZ = DMA_B;
			DMAnDSZ = DMAnSSZ;
			DMAnCON0bits.EN = 1;
			IO_RB1_SetDigitalInput();
		}
		break;
	case sync3:
		if (vfcounts >= 14) {
			vfcounts = 0;
			s_mode = sync1;
			mode_init = true;
		}
		if (mode_init) {
			mode_init = false;
			DMASELECT = 0x04;
			DMAnCON0bits.EN = 0;
			DMAnSSA = (volatile uint24_t) & vsync;
			DMAnSSZ = DMA_B;
			DMAnDSZ = DMAnSSZ;
			DMAnCON0bits.EN = 1;
			IO_RB1_SetDigitalOutput();
		}
		break;
	default:
		vfcounts = 0;
		s_mode = sync1;
		mode_init = false;
		DMASELECT = 0x04;
		DMAnCON0bits.EN = 0;
		DMAnSSA = (volatile uint24_t) & vsync;
		DMAnSSZ = DMA_B;
		DMAnDSZ = DMAnSSZ;
		DMAnCON0bits.EN = 1;
		IO_RB1_SetDigitalOutput();
		break;
	}

	DMA5_StopTransfer();
	DMA5_StartTransfer();
}