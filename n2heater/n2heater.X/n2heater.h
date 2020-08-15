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

#define FLOW_RATE	250		// adc value from flow sensor
#define FLOW_TEMP	1250		// adc value from temp sensor
#define PWM_HIGH	330		// ramp pwm duty 1-1000
#define PWM_LOW		250		// setback pwm duty 1-1000
	
#define PWM_MS		1000		// pwm period = 1 second
#define PWM_DUTY	2000		// duty setup timeout = 2 seconds, should not happen with normal logic
	
#define LOGGING		50		// rs232 log output every 10 seconds


#ifdef	__cplusplus
}
#endif

#endif	/* N2HEATER_H */

