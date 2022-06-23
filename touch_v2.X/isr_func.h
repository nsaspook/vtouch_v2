/* 
 * File:   isr_func.h
 * Author: root
 *
 * Created on April 8, 2022, 9:44 AM
 */

#ifndef ISR_FUNC_H
#define	ISR_FUNC_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <xc.h>
#include <stdint.h>
#include <stdbool.h>
#include "mcc_generated_files/uart1.h"
#include "vconfig.h"
#include "timers.h"
#include "mbmc.h"

	void t5_isr(void);
	void t6_isr(void);

#ifdef	__cplusplus
}
#endif

#endif	/* ISR_FUNC_H */

