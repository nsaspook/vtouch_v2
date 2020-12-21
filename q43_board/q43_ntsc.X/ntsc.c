#include "ntsc.h"

volatile uint32_t vcounts = 0, vfcounts = 0;
volatile bool h_mode = true, mode_init = false; // horizonal scan

void vcntd(void);
void vcnts(void);
void vint(void);

void ntsc_init(void)
{
	uint8_t count = 0, vramp = BLACK_LEVEL;

	TMR4_Start();
	TMR4_StopTimer();
	DMA5_SetDCNTIInterruptHandler(vcntd);
	DMA5_SetSCNTIInterruptHandler(vcnts);

	/*
	 * setup the static V, H and video patterns for DMA and TM4 clocking
	 */
	for (count = 0; count < 4; count++) {
		vsync[count] = SYNC_LEVEL;
		hsync[count] = BLANK_LEVEL;
	}

	for (count = 4; count < 8; count++) {
		vsync[count] = BLANK_LEVEL;
		hsync[count] = SYNC_LEVEL;
	}

	for (count = 8; count < 25; count++) {
		vsync[count] = vramp;
		hsync[count] = SYNC_LEVEL;
		vramp = vramp + 2;
		if (vramp > VIDEO_LEVEL) {
			vramp = VIDEO_LEVEL;
		}
	}
	for (count = 25; count < 40; count++) {
		vsync[count] = BLANK_LEVEL;
		hsync[count] = SYNC_LEVEL;
	}

	DMA5_StopTransfer();
	DAC1_SetOutput(128);
	TMR4_SetInterruptHandler(vint);
	TMR4_Start();
}

void vcntd(void) // each DMA transfer interrupt, 31 total bytes
{
	vcounts++;
}

void vcnts(void) // each scan line interrupt, 262 total for scan lines and V sync
{
	vfcounts++;
	if (h_mode) { // Horizontal sync (hsync) pulse: Start each scanline with 0.3V, then 0V for 4.7us (microseconds), and then back to 0.3V.
		if (vfcounts >= 243) {
			vcounts = 0;
			vfcounts = 0;
			h_mode = false;
			mode_init = true;
		}
		if (mode_init) {
			mode_init = false;
			DMASELECT = 0x04;
			DMAnCON0bits.EN = 0;
			DMAnSSA = &hsync;
			DMAnCON0bits.EN = 1;
		}
	} else { // Vertical sync (vsync) pulse: Lines 243-262 of each frame (off the bottom of the TV) start with 0.3V for 4.7us, and the rest is 0V.
		if (vfcounts >= 20) {
			vcounts = 0;
			vfcounts = 0;
			h_mode = true;
			mode_init = true;
		}
		if (mode_init) {
			mode_init = false;
			DMASELECT = 0x04;
			DMAnCON0bits.EN = 0;
			DMAnSSA = &vsync;
			DMAnCON0bits.EN = 1;
		}
	}
}

void vint(void)
{
	DMA5_StartTransfer();
}