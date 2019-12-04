#include "bsoc.h"
#include "mcc_generated_files/interrupt_manager.h"

extern C_data C;
extern V_data V;

void calc_bsoc(void)
{
	if (!C.update)
		calc_model_data(); // refresh data

	V.lowint_count++;
}

void init_bsoc(void)
{
	TMR3_SetInterruptHandler(calc_bsoc);
}

void start_bsoc(void)
{
	// Enabling TMR3 interrupt.
	PIE6bits.TMR3IE = 1;
}

void stop_bsoc(void)
{
	// Disabling TMR3 interrupt.
	PIE6bits.TMR3IE = 0;
}