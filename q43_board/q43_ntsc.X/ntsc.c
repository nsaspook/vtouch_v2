#include "ntsc.h"

volatile uint32_t vcounts = 0, vfcounts = 0;
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

	for (count = 0; count < 4; count++) {
		vsync[count] = SYNC_LEVEL;
	}

	for (count = 4; count < 8; count++) {
		vsync[count] = BLANK_LEVEL;
	}

	for (count = 8; count < 27; count++) {
		vsync[count] = vramp;
		vramp = vramp + 2;
		if (vramp > VIDEO_LEVEL) {
			vramp = VIDEO_LEVEL;
		}
	}
	for (count = 27; count < 40; count++) {
		vsync[count] = BLANK_LEVEL;
	}

	DMA5_StopTransfer();
	DAC1_SetOutput(128);
	TMR4_SetInterruptHandler(vint);
	TMR4_Start();
}

void Vsync(void)
{

}

void vcntd(void)
{
	vcounts++;
}

void vcnts(void)
{
	vfcounts++;
}

void vint(void)
{
	DMA5_StartTransfer();
}