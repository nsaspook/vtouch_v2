#include "mconfig.h"
#include "mydisplay.h"

extern V_data V;
static D_data D = {0};

V_help T[] = {
	{
		.message = "commands 1",
		.display = "displays 1",
	},
	{
		.message = "commands 2",
		.display = "displays 2",
	},
	{
		.message = "commands 3",
		.display = "displays 3",
	},
	{
		.message = "commands 4",
		.display = "displays 4",
	},
};

const char *build_date = __DATE__, *build_time = __TIME__;

/*
 * hardware specific routines
 */
void mode_lamp_dim(const uint16_t level)
{
	PWM8_LoadDutyValue(level);
}

void mode_lamp_bright(void)
{
	PWM8_LoadDutyValue(300);
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

void check_help(void)
{
	/*
	 * show help display
	 */
	if (help_button() && display_info() != DIS_HELP) {
		if (V.debug)
			vterm_dump();

		set_vterm(1);
		set_temp_display_help(display_info());
		set_display_info(DIS_HELP);
		sprintf(get_vterm_ptr(0, 1), "HELP %s           ", build_date);
		sprintf(get_vterm_ptr(1, 1), "%s       ", T[V.help_id].display);
		sprintf(get_vterm_ptr(2, 1), "%s       ", T[V.help_id].message);
		V.help_id++; // cycle help text messages to LCD
		StartTimer(TMR_HELPDIS, TDELAY);
		StartTimer(TMR_INFO, TDELAY);
		mode_lamp_bright(); // mode switch indicator lamp 'button' level
		update_lcd(1);
	} else {
		if (TimerDone(TMR_HELPDIS)) {
			set_vterm(0);
			V.help = false;
			set_display_info(display_help());
			mode_lamp_dim(V.mode_pwm);
		}
	}
}

/*
 * write character data to vterm
 */
uint8_t update_lcd(uint8_t vterm)
{
	vterm = vterm & 0x01;

	if (D.vterm == 1 && vterm == 0)
		return D.vterm;

	D.lcd[vterm][0][MAX_LINE] = 0;
	D.lcd[vterm][1][MAX_LINE] = 0;
	D.lcd[vterm][2][MAX_LINE] = 0;
	wait_lcd_done();
	eaDogM_WriteStringAtPos(0, 0, D.lcd[vterm][0]);
	wait_lcd_done();
	eaDogM_WriteStringAtPos(1, 0, D.lcd[vterm][1]);
	wait_lcd_done();
	eaDogM_WriteStringAtPos(2, 0, D.lcd[vterm][2]);
	return D.vterm;
}

/*
 * set terminal window to 0 or 1
 */
uint8_t set_vterm(uint8_t vterm)
{
	D.vterm = vterm & 0x01;
	return D.vterm;
}

/*
 * return pointer to vterm line buffer
 */
char * get_vterm_ptr(uint8_t line, uint8_t vterm)
{
	return D.lcd[vterm & 0x01][line & 0x03];
}

void vterm_dump(void)
{
	sprintf(V.buf, "vterm %x:%x   ", get_vterm_ptr(0, 0), get_vterm_ptr(0, 1));
	wait_lcd_done();
	eaDogM_WriteStringAtPos(0, 0, V.buf);
	sprintf(V.buf, "vterm %x:%x   ", get_vterm_ptr(1, 0), get_vterm_ptr(1, 1));
	wait_lcd_done();
	eaDogM_WriteStringAtPos(1, 0, V.buf);
	sprintf(V.buf, "vterm %x:%x   ", get_vterm_ptr(2, 0), get_vterm_ptr(2, 1));
	wait_lcd_done();
	eaDogM_WriteStringAtPos(2, 0, V.buf);
	WaitMs(3000);
}

/*
 * update possible command messages
 */
void MyeaDogM_WriteStringAtPos(const uint8_t r, const uint8_t c, char *strPtr)
{
	//	DLED = true;
	IO_RB5_Toggle();
	wait_lcd_done();
	if (V.response.info == DIS_STR) {
		eaDogM_WriteStringAtPos(r, c, strPtr);
	} else {
		switch (V.response.info) {
		case DIS_LOG:
			sprintf(get_vterm_ptr(0, 0), " S%dF%d log    %d    ", V.stream, V.function, V.response.log_seq & 0x03);
			sprintf(get_vterm_ptr(1, 0), " Stored #%d        ", V.response.log_num);
			break;
		case DIS_LOAD:
			sprintf(get_vterm_ptr(0, 0), " Ready LL        ");
			sprintf(get_vterm_ptr(1, 0), " S2F41 #%c         ", V.response.mcode);
			break;
		case DIS_PUMP:
			sprintf(get_vterm_ptr(0, 0), " Pump LL         ");
			sprintf(get_vterm_ptr(1, 0), " S2F41 #%c         ", V.response.mcode);
			break;
		case DIS_UNLOAD:
			sprintf(get_vterm_ptr(0, 0), " Open LL         ");
			sprintf(get_vterm_ptr(1, 0), " S2F41 #%c         ", V.response.mcode);
			break;
		case DIS_HELP:
			sprintf(get_vterm_ptr(0, 1), "HELP %s           ", build_date);
			sprintf(get_vterm_ptr(1, 1), "DISPLAY %s        ", build_time);
			break;
		case DIS_SEQUENCE:
			sprintf(get_vterm_ptr(0, 0), " Load-lock%d R%d      ", V.llid, V.msg_error);
			sprintf(get_vterm_ptr(1, 0), " SEQUENCE %d        ", V.sequences);
			break;
		case DIS_TERM:
			sprintf(get_vterm_ptr(0, 0), " Terminal %d             ", V.response.TID);
			sprintf(get_vterm_ptr(1, 0), " CMD %c %c Len %d       ", V.response.mcode, V.response.mparm, V.response.cmdlen);
			break;
		default:
			sprintf(get_vterm_ptr(0, 0), "                  ");
			sprintf(get_vterm_ptr(1, 0), "                  ");
			break;
		}

		if (V.response.info == DIS_HELP) {
			sprintf(get_vterm_ptr(2, 1), "%s", V.info);
			update_lcd(1);
		} else {
			sprintf(get_vterm_ptr(2, 0), "%s", V.info);
			update_lcd(0);
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
