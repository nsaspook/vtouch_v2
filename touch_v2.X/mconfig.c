#include "mconfig.h"
#include "mydisplay.h"
#include "msg_text.h"
#include "bsoc.h"

/*
 * LCD data buffer for virtual display for four vterms
 */
static D_data D = {' '};

/*
 * hardware specific routines
 */
void diversion_pwm_set(const uint16_t level)
{
	PWM8_LoadDutyValue(level);
}

void diversion_pwm_full(void)
{
	PWM8_LoadDutyValue(DPWM_FULL);
}

/*
 * mode button help mode select
 */
bool help_button(void)
{
	if (!RB0_GetValue()) { // debounce and delay for button press
		V.help = true;
		if (TimerDone(TMR_HELP))
			return true;
	}

	if (!V.help)
		StartTimer(TMR_HELP, BDELAY);

	return false;
}

bool check_help(const bool flipper)
{
	bool estatus = false;
	/*
	 * show help display
	 */
	if (help_button() && display_info() != DIS_HELP) {
		StartTimer(TMR_FLIPPER, DFLIP);
		if (V.debug)
			vterm_dump();

		set_vterm(1);
		set_temp_display_help(display_info());
		set_display_info(DIS_HELP);
		if (flipper) {
			sprintf(get_vterm_ptr(0, 1), "HELP %s           ", build_date);
		} else {
			sprintf(get_vterm_ptr(0, 1), "HELP %s           ", build_time);
		}
		sprintf(get_vterm_ptr(1, 1), "%s       ", T[V.help_id].display);
		sprintf(get_vterm_ptr(2, 1), "%s       ", T[V.help_id].message);
		V.help_id++; // cycle help text messages to LCD
		StartTimer(TMR_HELPDIS, TDELAY);
		StartTimer(TMR_INFO, TDELAY);
		update_lcd(1);
		estatus = true;
	} else {
		if (TimerDone(TMR_HELPDIS)) {
			set_vterm(0);
			V.help = false;
			set_display_info(display_help());
			if (TimerDone(TMR_FLIPPER)) {
				V.flipper = !V.flipper;
				StartTimer(TMR_FLIPPER, DFLIP);
			}
		}
	}
	return estatus;
}

/*
 * write character data to vterm
 */
uint8_t update_lcd(uint8_t vterm)
{
	vterm = vterm & 0x03;

	if (D.vterm >= 1 && vterm == 0)
		return D.vterm;

	D.lcd[vterm][0][MAX_LINE] = 0;
	D.lcd[vterm][1][MAX_LINE] = 0;
	D.lcd[vterm][2][MAX_LINE] = 0;
	D.lcd[vterm][3][MAX_LINE] = 0;
	wait_lcd_done();
	eaDogM_WriteStringAtPos(0, 0, D.lcd[vterm][0]);
	wait_lcd_done();
	eaDogM_WriteStringAtPos(1, 0, D.lcd[vterm][1]);
	wait_lcd_done();
	eaDogM_WriteStringAtPos(2, 0, D.lcd[vterm][2]);
	wait_lcd_done();
	eaDogM_WriteStringAtPos(3, 0, D.lcd[vterm][3]);
	return D.vterm;
}

/*
 * set terminal window to 0..3
 */
uint8_t set_vterm(const uint8_t vterm)
{
	D.vterm = vterm & 0x03;
	return D.vterm;
}

/*
 * return pointer to vterm line buffer
 */
char * get_vterm_ptr(const uint8_t line, const uint8_t vterm)
{
	return D.lcd[vterm & 0x03][line & 0x03];
}

void vterm_dump(void)
{
	sprintf(V.buf, "vterm %x:%x   ", (unsigned int) get_vterm_ptr(0, 0), (unsigned int) get_vterm_ptr(0, 1));
	wait_lcd_done();
	eaDogM_WriteStringAtPos(0, 0, V.buf);
	sprintf(V.buf, "vterm %x:%x   ", (unsigned int) get_vterm_ptr(1, 0), (unsigned int) get_vterm_ptr(1, 1));
	wait_lcd_done();
	eaDogM_WriteStringAtPos(1, 0, V.buf);
	sprintf(V.buf, "vterm %x:%x   ", (unsigned int) get_vterm_ptr(2, 0), (unsigned int) get_vterm_ptr(2, 1));
	wait_lcd_done();
	eaDogM_WriteStringAtPos(2, 0, V.buf);
	sprintf(V.buf, "vterm %x:%x   ", (unsigned int) get_vterm_ptr(3, 0), (unsigned int) get_vterm_ptr(3, 1));
	wait_lcd_done();
	eaDogM_WriteStringAtPos(3, 0, V.buf);
	WaitMs(3000);
}

void vterm_sequence(void)
{
	sprintf(get_vterm_ptr(2, 2), " Mesg %d Stack %d        ", V.msg_error, V.stack);
	switch (V.response.info) {
	case DIS_HELP:
		sprintf(get_vterm_ptr(0, 1), "HELP %s             ", build_date);
		sprintf(get_vterm_ptr(1, 1), "DISPLAY %s          ", build_time);
		break;
	case DIS_CLEAR:
	default:
		sprintf(get_vterm_ptr(0, 0), "                    ");
		sprintf(get_vterm_ptr(1, 0), "                    ");
		sprintf(get_vterm_ptr(0, 2), "                    ");
		sprintf(get_vterm_ptr(1, 2), "                    ");
		break;
	}
}

/*
 * update possible command messages
 */
void MyeaDogM_WriteStringAtPos(const uint8_t r, const uint8_t c, char *strPtr)
{

	wait_lcd_done();
	if (V.response.info == DIS_STR) {
		eaDogM_WriteStringAtPos(r, c, strPtr);
	} else {
		if (V.response.info == DIS_HELP) {
			sprintf(get_vterm_ptr(2, 1), "%s", V.info);
			update_lcd(1);
		} else {
			if ((V.response.info != DIS_STR)) {
				update_lcd(2);
			} else {
				sprintf(get_vterm_ptr(2, 0), "%s", V.info);
				update_lcd(0);
			}
		}

		if ((V.response.info != DIS_STR) && TimerDone(TMR_INFO))
			V.response.info = DIS_STR;
	}

	/*
	 * this is for possible message flipping with the HELP button
	 */
	if (D.last_info == DIS_HELP && V.response.info != DIS_HELP) {
		// show some stuff, maybe
	}

	D.last_info = V.response.info;
	//	DLED = false;
}

inline D_CODES display_info(void)
{
	return V.response.info;
}

inline D_CODES display_help(void)
{
	return V.response.help_temp;
}

D_CODES set_display_info(const D_CODES new_response_info)
{
	static D_CODES old_info = DIS_STR;

	if (TimerDone(TMR_INFO)) {
		old_info = V.response.info;
		V.response.info = new_response_info;
	}
	return old_info;
}

D_CODES set_temp_display_help(const D_CODES new_response_info)
{
	static D_CODES old_info;

	old_info = V.response.help_temp;
	V.response.help_temp = new_response_info;
	return old_info;
}

bool set_back_light_off(bool mode)
{
	static bool blight_on = true;
	bool send_cmd = false;

	if (mode) {
		if (V.blight_off) { // background 10min trigger
			if (blight_on) { // check back-light state
				blight_on = false; // update tracking state to OFF
				send_cmd = true; // send trigger return code
			}
		}
	} else {
		if (!V.blight_off) {
			if (!blight_on) { // check back-light state
				V.blight_off = false; // clear timer trigger 
				blight_on = true; // update tracking state to ON
				V.blight = (uint32_t) time(NULL) + BL_TIME; // reset background 10min trigger
				send_cmd = true; // send trigger return code
			}
		}
	}
	return send_cmd;
}
