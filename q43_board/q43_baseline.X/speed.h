/* 
 * File:   speed.h
 * Author: root
 *
 * Created on April 30, 2021, 11:14 PM
 */

#ifndef SPEED_H
#define	SPEED_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <xc.h>
#include <stdint.h>
#include <stdbool.h>

#include "mcc_generated_files/tmr0.h"
#include "mcc_generated_files/tmr1.h"

	uint16_t get_fosc(void);
	void init_get_fosc(void);

#ifdef	__cplusplus
}
#endif

#endif	/* SPEED_H */

