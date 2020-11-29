/**
  DMA Generated Driver File
  
  @Company
    Microchip Technology Inc.

  @File Name
    dma2.c

  @Summary
    This is the generated driver implementation file for the DMA driver using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This header file provides implementations for driver APIs for DMA CHANNEL2.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.77
        Device            :  PIC18F57K42
        Driver Version    :  2.10
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.05 and above
        MPLAB 	          :  MPLAB X 5.20
*/

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/

/**
  Section: Included Files
*/

#include <xc.h>
#include "dma2.h"

/**
  Section: Global Variables Definitions
*/

/**
  Section: DMA APIs
*/
void DMA2_Initialize(void)
{
    DMA2SSA = 0x001000; //set source start address
    DMA2DSA = 0x3FBB; //set destination start address 
    DMA2CON1 = 0x03; //set control register1 
    DMA2SSZ = 0x0001; //set source size
    DMA2DSZ = 0x0001; //set destination size
    DMA2SIRQ = 0x1C; //set DMA Transfer Trigger Source
    DMA2AIRQ = 0x3D; //set DMA Transfer abort Source
    
    PIR5bits.DMA2DCNTIF =0; // clear Destination Count Interrupt Flag bit
    PIR5bits.DMA2SCNTIF =0; // clear Source Count Interrupt Flag bit
    PIR5bits.DMA2AIF =0; // clear abort Interrupt Flag bit
	PIR5bits.DMA2ORIF =0; // clear overrun Interrupt Flag bit
    
    PIE5bits.DMA2DCNTIE =0; // disable Destination Count 0 Interrupt
    PIE5bits.DMA2SCNTIE =0; // disable Source Count Interrupt
    PIE5bits.DMA2AIE =0; // disable abort Interrupt
    PIE5bits.DMA2ORIE =0; // disable overrun Interrupt 
	
	asm("BCF INTCON0,7");
	
	asm ("BANKSEL PRLOCK");
    asm ("MOVLW 0x55");
    asm ("MOVWF PRLOCK");
    asm ("MOVLW 0xAA");
    asm ("MOVWF PRLOCK");
    asm ("BSF PRLOCK, 0");
	
	asm("BSF INTCON0,7");
        
    DMA2CON0 = 0x00; //set control register0
}




/**
  End of File
*/