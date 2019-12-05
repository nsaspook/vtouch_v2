#include "bsoc.h"
#include "mcc_generated_files/interrupt_manager.h"

extern C_data C;
extern V_data V;

void calc_bsoc(void)
{
#ifdef DEBUG_BSOC1
	DEBUG1_SetHigh();
#endif
	C.dynamic_ah += (C.c_bat / SSLICE); // Ah
	C.pv_ah += (C.c_pv / SSLICE);
	C.pvkw += (C.p_pv / SSLICE);
	C.invkw += (C.p_inverter / SSLICE);
	if (C.p_bat > 0.0)
		C.bkwi += (C.p_bat / SSLICE);
	if (C.p_bat < 0.0)
		C.bkwo += (C.p_bat / SSLICE);

	if (C.dynamic_ah > (C.bank_ah))
		C.dynamic_ah = C.bank_ah;

	V.lowint_count++;
	C.update = false;
#ifdef DEBUG_BSOC1
	DEBUG1_SetLow();
#endif
}

void init_bsoc(void)
{
	TMR3_SetInterruptHandler(calc_bsoc);
}

void start_bsoc(void)
{
	// Enabling TMR3 interrupt.
	PIE6bits.TMR3IE = 1;
#ifdef DEBUG_BSOC2
	DEBUG2_Toggle();
#endif
}

void stop_bsoc(void)
{
	// Disabling TMR3 interrupt.
	PIE6bits.TMR3IE = 0;
}

void reset_bsoc(R_CODES rmode)
{
	switch (rmode) {
	default:
		C.pv_ah = 0.0;
		break;
	}
}