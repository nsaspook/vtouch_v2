#include "ntsc.h"

volatile uint32_t vcounts = 0, vfcounts = 0;
void vcntd(void);
void vcnts(void);
void vint(void);

void ntsc_init(void)
{
	uint8_t count = 0, vramp = 30;

	//	DMA5_SetDCNTIInterruptHandler(vcntd);
	//	DMA5_SetSCNTIInterruptHandler(vcnts);

	for (count = 0; count < 4; count++) {
		vsync[count] = 0;
		hsync[count] = 255;
	}


	for (count = 4; count < 8; count++) {
		vsync[count] = 20;
	}

	for (count = 8; count < 27; count++) {
		vsync[count] = vramp;
		hsync[count] = 255;
		vramp = vramp + 2;
	}
	for (count = 27; count < 40; count++) {
		vsync[count] = 20;
	}

	DMA5_StopTransfer();
	DAC1_SetOutput(128);

	TMR4_SetInterruptHandler(vint);
}

void Vsync(void)
{

}

void vcntd(void)
{
	//	vcounts++;
	//	DMA5_StartTransfer();
}

void vcnts(void)
{
	//	vfcounts++;
}

void vint(void)
{
	DMA5_StartTransfer();
}