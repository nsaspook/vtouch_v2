#include "mconfig.h"
#include "mydisplay.h"
#include "msg_text.h"
#include <string.h>

typedef struct D_data { // control data structure 
	char lcd[MAX_VTERM][MAX_LCD_LINES][MAX_BUF + 1];
	uint8_t vterm : 2; // line to 4 possible lines
	D_CODES last_info;
} D_data;

extern V_data V;
static D_data D = {0};

/*
 * This MUST run first to clear the vterm buffers before using any other functions
 */
void mconfig_init(void)
{
	memset(&D, 0, sizeof(D));
}

/*
 * hardware specific routines
 */
void mode_lamp_dim(void)
{
	set_lcd_dim(true);
}

void mode_lamp_bright(void)
{
	set_lcd_dim(false);
}

/*
 * mode button help mode select
 * Not used
 */
bool help_button(void)
{
	if (!RB0_GetValue()) { // debounce and delay for button press
		V.help = true;
		if (TimerDone(TMR_HELP)) {
			return true;
		}
	}

	if (!V.help) {
		StartTimer(TMR_HELP, BDELAY);
	}

	return false;
}

/*
 * Help Messages, show program compile date or extra message with flipper flag
 */
void check_help(bool flipper)
{
	/*
	 * show help display
	 */
	if (V.help) {
		snprintf(get_vterm_ptr(0, HELP_VTERM), MAX_TEXT, " HELP Screen: %u           ", V.help_id + 1);
		if (flipper) {
			snprintf(get_vterm_ptr(3, HELP_VTERM), MAX_TEXT, "HELP %s              ", build_date);
		} else {
			snprintf(get_vterm_ptr(3, HELP_VTERM), MAX_TEXT, "%s                   ", T[V.help_id].extrams);
		}
		snprintf(get_vterm_ptr(2, HELP_VTERM), MAX_TEXT, "%s                 ", T[V.help_id].display);
		snprintf(get_vterm_ptr(1, HELP_VTERM), MAX_TEXT, "%s                 ", T[V.help_id].message);
		V.help_id++; // cycle help text messages to LCD
	}
}

/*
 * write character data to LCD from the selected vterm buffers
 * 20x4 lines, returns the current default terminal buffer number
 */
uint8_t update_lcd(uint8_t vterm)
{
	vterm = vterm & 0x03; // mask to 2 bits

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
 * update the LCD screen with the current vterm buffers
 */
uint8_t refresh_lcd(void)
{
	return update_lcd(D.vterm);
}

/*
 * set terminal window to 0..3 to internal vterm
 */
uint8_t set_vterm(const uint8_t vterm)
{
	D.vterm = vterm & 0x03;
	return D.vterm;
}

/*
 * return pointer to vterm line buffer
 * Software diagnostic function, get address of pointers
 */
char * get_vterm_ptr(uint8_t line, const uint8_t vterm)
{
	return D.lcd[vterm & 0x03][line & 0x03];
}

/*
 * 20x4 lines
 * Software diagnostic function, print address of pointers
 */
void vterm_dump(void)
{
	snprintf(V.buf, MAX_TEXT, "vterm %x:%x            ", (uint16_t) get_vterm_ptr(0, MAIN_VTERM), (uint16_t) get_vterm_ptr(0, INFO_VTERM));
	wait_lcd_done();
	eaDogM_WriteStringAtPos(0, MAIN_VTERM, V.buf);
	snprintf(V.buf, MAX_TEXT, "vterm %x:%x            ", (uint16_t) get_vterm_ptr(1, MAIN_VTERM), (uint16_t) get_vterm_ptr(1, INFO_VTERM));
	wait_lcd_done();
	eaDogM_WriteStringAtPos(1, MAIN_VTERM, V.buf);
	snprintf(V.buf, MAX_TEXT, "vterm %x:%x            ", (uint16_t) get_vterm_ptr(2, MAIN_VTERM), (uint16_t) get_vterm_ptr(2, INFO_VTERM));
	wait_lcd_done();
	eaDogM_WriteStringAtPos(2, MAIN_VTERM, V.buf);
	snprintf(V.buf, MAX_TEXT, "vterm %x:%x            ", (uint16_t) get_vterm_ptr(3, MAIN_VTERM), (uint16_t) get_vterm_ptr(3, INFO_VTERM));
	wait_lcd_done();
	eaDogM_WriteStringAtPos(3, MAIN_VTERM, V.buf);
	WaitMs(TDELAY);
}

void vterm_sequence(void)
{
	snprintf(get_vterm_ptr(2, INFO_VTERM), MAX_TEXT, " Mesg %d Stack %d              ", V.msg_error, V.stack);
	switch (V.response.info) {
	case DIS_LOG:
		snprintf(get_vterm_ptr(0, INFO_VTERM), MAX_TEXT, " S%dF%d log    %d      ", V.stream, V.function, V.response.log_seq & 0x03);
		snprintf(get_vterm_ptr(1, INFO_VTERM), MAX_TEXT, " Stored #%d            ", V.response.log_num);
		break;
	case DIS_FREE:
		snprintf(get_vterm_ptr(0, INFO_VTERM), MAX_TEXT, " S%dF%d log    %d      ", V.stream, V.function, V.response.log_seq & 0x03);
		snprintf(get_vterm_ptr(1, INFO_VTERM), MAX_TEXT, " Port Lock #%d            ", V.speed_spin);
		break;
	case DIS_LOAD:
		snprintf(get_vterm_ptr(0, INFO_VTERM), MAX_TEXT, " Ready LL              ");
		snprintf(get_vterm_ptr(1, INFO_VTERM), MAX_TEXT, " S2F41 #%c             ", V.response.mcode);
		break;
	case DIS_PUMP:
		snprintf(get_vterm_ptr(0, INFO_VTERM), MAX_TEXT, " Pump LL               ");
		snprintf(get_vterm_ptr(1, INFO_VTERM), MAX_TEXT, " S2F41 #%c             ", V.response.mcode);
		break;
	case DIS_UNLOAD:
		snprintf(get_vterm_ptr(0, INFO_VTERM), MAX_TEXT, " Open LL               ");
		snprintf(get_vterm_ptr(1, INFO_VTERM), MAX_TEXT, " S2F41 #%c             ", V.response.mcode);
		break;
	case DIS_HELP:
		snprintf(get_vterm_ptr(0, HELP_VTERM), MAX_TEXT, "HELP %s                ", build_date);
		snprintf(get_vterm_ptr(1, HELP_VTERM), MAX_TEXT, "DISPLAY %s             ", build_time);
		break;
	case DIS_SEQUENCE:
		snprintf(get_vterm_ptr(0, INFO_VTERM), MAX_TEXT, " Load-lock num %d      ", V.llid);
		snprintf(get_vterm_ptr(1, INFO_VTERM), MAX_TEXT, " SEQUENCE %d           ", V.sequences);
		break;
	case DIS_SEQUENCE_M:
		snprintf(get_vterm_ptr(0, INFO_VTERM), MAX_TEXT, " Display num %d        ", V.response.mesgid);
		snprintf(get_vterm_ptr(1, INFO_VTERM), MAX_TEXT, " SEQUENCE %d           ", V.sequences);
		break;
	case DIS_TERM:
		snprintf(get_vterm_ptr(0, INFO_VTERM), MAX_TEXT, " Terminal %d             ", V.response.TID);
		snprintf(get_vterm_ptr(1, INFO_VTERM), MAX_TEXT, " CMD %c %c Len %d        ", V.response.mcode, V.response.mparm, V.response.cmdlen);
		break;
	case DIS_CLEAR:
	default:
		snprintf(get_vterm_ptr(0, MAIN_VTERM), MAX_TEXT, "                      ");
		snprintf(get_vterm_ptr(1, MAIN_VTERM), MAX_TEXT, "                      ");
		snprintf(get_vterm_ptr(0, INFO_VTERM), MAX_TEXT, "                      ");
		snprintf(get_vterm_ptr(1, INFO_VTERM), MAX_TEXT, "                      ");
		break;
	}
}

/*
 * update possible command messages from equipment
 * not being used now
 */
void MyeaDogM_WriteStringAtPos(const uint8_t r, const uint8_t c, char *strPtr)
{
	wait_lcd_done();
	if (V.response.info == DIS_STR) {
		eaDogM_WriteStringAtPos(r, c, strPtr);
	} else {
		if (V.response.info == DIS_HELP) {
			snprintf(get_vterm_ptr(2, HELP_VTERM), MAX_TEXT, "%s", V.info);
			update_lcd(HELP_VTERM);
		} else {
			if ((V.response.info != DIS_STR)) {
				update_lcd(INFO_VTERM);
			} else {
				snprintf(get_vterm_ptr(2, MAIN_VTERM), MAX_TEXT, "%s", V.info);
				update_lcd(MAIN_VTERM);
			}
		}

		if ((V.response.info != DIS_STR) && TimerDone(TMR_INFO)) {
			V.response.info = DIS_STR;
		}
	}

	/*
	 * this is for possible message flipping with the HELP button
	 */
	if (D.last_info == DIS_HELP && V.response.info != DIS_HELP) {
		// show some stuff, maybe
	}

	D.last_info = V.response.info;
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
