/**
  DMA6 Generated Driver File

  @Company
    Microchip Technology Inc.

  @File Name
    dma6.c

  @Summary
    This is the generated driver implementation file for the DMA6 driver using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This source file provides APIs for DMA6.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.6
        Device            :  PIC18F47Q43
        Driver Version    :  1.0.0
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.30 and above
        MPLAB 	          :  MPLAB X 5.40
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
#include "dma6.h"

void (*DMA6_DCNTI_InterruptHandler)(void);

/**
  Section: DMA6 APIs
*/

void DMA6_Initialize(void)
{
    //DMA Instance Selection : 0x05
    DMASELECT = 0x05;
    //Source Address : hsync
    DMAnSSA = &hsync;
    //Destination Address : &CLKRCLK
    DMAnDSA = &CLKRCLK;
    //DMODE unchanged; DSTP not cleared; SMR GPR; SMODE incremented; SSTP not cleared; 
    DMAnCON1 = 0x02;
    //Source Message Size : 1
    DMAnSSZ = 1;
    //Destination Message Size : 1
    DMAnDSZ = 1;
    //Start Trigger : SIRQ None; 
    DMAnSIRQ = 0x00;
    //Abort Trigger : AIRQ None; 
    DMAnAIRQ = 0x00;
	
    // Clear Destination Count Interrupt Flag bit
    PIR13bits.DMA6DCNTIF = 0; 
    // Clear Source Count Interrupt Flag bit
    PIR13bits.DMA6SCNTIF = 0; 
    // Clear Abort Interrupt Flag bit
    PIR13bits.DMA6AIF = 0; 
    // Clear Overrun Interrupt Flag bit
    PIR13bits.DMA6ORIF =0; 
    
    PIE13bits.DMA6DCNTIE = 1;
	DMA6_SetDCNTIInterruptHandler(DMA6_DefaultInterruptHandler);
    PIE13bits.DMA6SCNTIE = 0;
    PIE13bits.DMA6AIE = 0;
    PIE13bits.DMA6ORIE = 0;
	
    //EN enabled; SIRQEN disabled; DGO not in progress; AIRQEN disabled; 
    DMAnCON0 = 0x80;
	
}

void DMA6_SelectSourceRegion(uint8_t region)
{
    DMASELECT = 0x05;
	DMAnCON1bits.SMR  = region;
}

void DMA6_SetSourceAddress(uint24_t address)
{
    DMASELECT = 0x05;
	DMAnSSA = address;
}

void DMA6_SetDestinationAddress(uint16_t address)
{
    DMASELECT = 0x05;
	DMAnDSA = address;
}

void DMA6_SetSourceSize(uint16_t size)
{
    DMASELECT = 0x05;
	DMAnSSZ= size;
}

void DMA6_SetDestinationSize(uint16_t size)
{                     
    DMASELECT = 0x05;
	DMAnDSZ= size;
}

uint24_t DMA6_GetSourcePointer(void)
{
    DMASELECT = 0x05;
	return DMAnSPTR;
}

uint16_t DMA6_GetDestinationPointer(void)
{
    DMASELECT = 0x05;
	return DMAnDPTR;
}

void DMA6_SetStartTrigger(uint8_t sirq)
{
    DMASELECT = 0x05;
	DMAnSIRQ = sirq;
}

void DMA6_SetAbortTrigger(uint8_t airq)
{
    DMASELECT = 0x05;
	DMAnAIRQ = airq;
}

void DMA6_StartTransfer(void)
{
    DMASELECT = 0x05;
	DMAnCON0bits.DGO = 1;
}

void DMA6_StartTransferWithTrigger(void)
{
    DMASELECT = 0x05;
	DMAnCON0bits.SIRQEN = 1;
}

void DMA6_StopTransfer(void)
{
    DMASELECT = 0x05;
	DMAnCON0bits.SIRQEN = 0; 
	DMAnCON0bits.DGO = 0;
}

void DMA6_SetDMAPriority(uint8_t priority)
{
    // This function is dependant on the PR1WAY CONFIG bit
	PRLOCK = 0x55;
	PRLOCK = 0xAA;
	PRLOCKbits.PRLOCKED = 0;
	DMA6PR = priority;
	PRLOCK = 0x55;
	PRLOCK = 0xAA;
	PRLOCKbits.PRLOCKED = 1;
}

void __interrupt(irq(IRQ_DMA6DCNT),base(8)) DMA6_DMADCNTI_ISR()
{
    // Clear the source count interrupt flag
    PIR13bits.DMA6DCNTIF = 0;

    if (DMA6_DCNTI_InterruptHandler)
            DMA6_DCNTI_InterruptHandler();
}

void DMA6_SetDCNTIInterruptHandler(void (* InterruptHandler)(void))
{
	 DMA6_DCNTI_InterruptHandler = InterruptHandler;
}

void DMA6_DefaultInterruptHandler(void){
    // add your DMA6 interrupt custom code
    // or set custom function using DMA6_SetSCNTIInterruptHandler() /DMA6_SetDCNTIInterruptHandler() /DMA6_SetAIInterruptHandler() /DMA6_SetORIInterruptHandler()
}
/**
 End of File
*/
