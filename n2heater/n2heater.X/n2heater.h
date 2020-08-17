/* 
 * File:   n2heater.h
 * Author: root
 *
 * Created on August 15, 2020, 9:54 AM
 */

#ifndef N2HEATER_H
#define	N2HEATER_H

#ifdef	__cplusplus
extern "C" {
#endif

#define FLOW_RATE	4000		// adc value from flow sensor: for heater activation
#define FLOW_TEMP	1250		// adc value from temp sensor: not used
#define PWM_HIGH	430		// ramp pwm duty 1-1000: Set for about 200W from the 600W heater
#define PWM_LOW		300		// setback pwm duty 1-1000: not used
#define PWM_OFF		1		// blink power on indicator

#define PWM_MS		1000		// pwm period = 1 second
#define PWM_DUTY	2000		// duty setup timeout = 2 seconds, should not happen with normal logic

#define LOGGING		10000		// rs232 log output every 10 seconds
#define MAX_HEAT	30000		// longest continious heating time in seconds

#ifdef	__cplusplus
}
#endif

#endif	/* N2HEATER_H */

