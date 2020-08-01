/* 
 * File:   mydma.h
 * Author: root
 *
 * Created on July 31, 2020, 8:50 PM
 */

#ifndef MYDMA_H
#define	MYDMA_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <xc.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

	/**
	  Section: Interface Routines
	 */

	/**
	  @Summary
	    This function initializes DMA channel 1 instance : 
	  @Description
	    This routine initializes the DMA channel driver instance for : 
	    index, making it ready for clients to open and use it. It also initializes any
	    internal data structures.
	    This routine must be called before any other DMA routine is called. 
	  @Preconditions
	    None.
	  @Param
	    None.
	  @Returns
	    None.
	  @Comment
    
 
	  @Example
	    <code>
		unsigned short int srcArray[100];
		unsigned short int dstArray[100];
		int i;
		int count;
		for (i=0; i<100; i++)
		{
		    srcArray[i] = i+1;
		    dstArray[i] = 0;
		}
		DMA1_Initialize();
		// lock priority for accessing program flash
		asm ("BANKSEL PRLOCK");
		asm ("MOVLW 0x55");
		asm ("MOVWF PRLOCK");
		asm ("MOVLW 0xAA");
		asm ("MOVWF PRLOCK");
		asm ("BSF PRLOCK, 0");
	    //  hardware trigger source set as Timer 1
		TMR1_StartTimer();// start the trigger source 
	    </code>
	 */
	void DMA1_Initialize(void);

#ifdef	__cplusplus
}
#endif

#endif	/* MYDMA_H */

