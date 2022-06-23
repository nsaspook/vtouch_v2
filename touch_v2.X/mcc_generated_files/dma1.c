/**
  DMA1 Generated Driver File
  
  @Company
    Microchip Technology Inc.

  @File Name
    dma1.c

  @Summary
    This is the generated driver implementation file for the DMA1 driver using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This source file provides APIs for DMA1.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.5
	Device            :  PIC18F57K42
        Driver Version    :  1.0.0
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.20 and above
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
#include "dma1.h"
#include "interrupt_manager.h"
#include "../vconfig.h"

void (*DMA1_SCNTI_InterruptHandler)(void);
void (*DMA1_DCNTI_InterruptHandler)(void);
void (*DMA1_AI_InterruptHandler)(void);
void (*DMA1_ORI_InterruptHandler)(void);

/**
  Section: DMA1 APIs
 */

void DMA1_Initialize(void)
{
    //Source Address : SrcVarName0
    DMA1SSA = &SrcVarName0;
    //Destination Address : &SPI1TXB
    DMA1DSA = &SPI1TXB;
    //DMODE unchanged; DSTP not cleared; SMR GPR; SMODE incremented; SSTP cleared; 
    DMA1CON1 = 0x03;
    //Source Message Size : 1
    DMA1SSZ = 1;
    //Destination Message Size : 1
    DMA1DSZ = 1;
    //Start Trigger : SIRQ None; 
    DMA1SIRQ = 0x00;
    //Abort Trigger : AIRQ None; 
    DMA1AIRQ = 0x00;

    // Clear Destination Count Interrupt Flag bit
    PIR2bits.DMA1DCNTIF = 0; 
    // Clear Source Count Interrupt Flag bit
    PIR2bits.DMA1SCNTIF = 0; 
    // Clear Abort Interrupt Flag bit
    PIR2bits.DMA1AIF = 0; 
    // Clear Overrun Interrupt Flag bit
    PIR2bits.DMA1ORIF =0; 

    PIE2bits.DMA1DCNTIE = 1;
	DMA1_SetDCNTIInterruptHandler(DMA1_DefaultInterruptHandler);
    PIE2bits.DMA1SCNTIE = 1; 
	DMA1_SetSCNTIInterruptHandler(DMA1_DefaultInterruptHandler);
    PIE2bits.DMA1AIE = 1; 
	DMA1_SetAIInterruptHandler(DMA1_DefaultInterruptHandler);
    PIE2bits.DMA1ORIE =1; 
	DMA1_SetORIInterruptHandler(DMA1_DefaultInterruptHandler);
	
    //EN enabled; SIRQEN disabled; DGO not in progress; AIRQEN disabled; 
    DMA1CON0 = 0x80;
	
}

void DMA1_SelectSourceRegion(uint8_t region)
{
	DMA1CON1bits.SMR  = region;
}

void DMA1_SetSourceAddress(uint24_t address)
{
	DMA1SSA = address;
}

void DMA1_SetDestinationAddress(uint16_t address)
{
	DMA1DSA = address;
}

void DMA1_SetSourceSize(uint16_t size)
{
	DMA1SSZ= size;
}

void DMA1_SetDestinationSize(uint16_t size)
{                     
	DMA1DSZ= size;
}

uint24_t DMA1_GetSourcePointer(void)
{
	return DMA1SPTR;
}

uint16_t DMA1_GetDestinationPointer(void)
{
	return DMA1DPTR;
}

void DMA1_SetStartTrigger(uint8_t sirq)
{
	DMA1SIRQ = sirq;
}

void DMA1_SetAbortTrigger(uint8_t airq)
{
	DMA1AIRQ = airq;
}

void DMA1_StartTransfer(void)
{
	DMA1CON0bits.DGO = 1;
}

void DMA1_StartTransferWithTrigger(void)
{
	DMA1CON0bits.SIRQEN = 1;
}

void DMA1_StopTransfer(void)
{
	DMA1CON0bits.SIRQEN = 0; 
	DMA1CON0bits.DGO = 0;
}

void DMA1_SetDMAPriority(uint8_t priority)
{
    // This function is dependant on the PR1WAY CONFIG bit
	PRLOCK = 0x55;
	PRLOCK = 0xAA;
	PRLOCKbits.PRLOCKED = 0;
	DMA1PR = priority;
	PRLOCK = 0x55;
	PRLOCK = 0xAA;
	PRLOCKbits.PRLOCKED = 1;
}

void __interrupt(irq(IRQ_DMA1SCNT),base(8)) DMA1_DMASCNTI_ISR()
{
    // Clear the source count interrupt flag
    PIR2bits.DMA1SCNTIF = 0;

    if (DMA1_SCNTI_InterruptHandler)
            DMA1_SCNTI_InterruptHandler();
}

void DMA1_SetSCNTIInterruptHandler(void (* InterruptHandler)(void))
{
	 DMA1_SCNTI_InterruptHandler = InterruptHandler;
}

void __interrupt(irq(IRQ_DMA1DCNT),base(8)) DMA1_DMADCNTI_ISR()
{
    // Clear the source count interrupt flag
    PIR2bits.DMA1DCNTIF = 0;

    if (DMA1_DCNTI_InterruptHandler)
            DMA1_DCNTI_InterruptHandler();
}

void DMA1_SetDCNTIInterruptHandler(void (* InterruptHandler)(void))
{
	 DMA1_DCNTI_InterruptHandler = InterruptHandler;
}

void __interrupt(irq(IRQ_DMA1A),base(8)) DMA1_DMAAI_ISR()
{
    // Clear the source count interrupt flag
    PIR2bits.DMA1AIF = 0;

    if (DMA1_AI_InterruptHandler)
            DMA1_AI_InterruptHandler();
}

void DMA1_SetAIInterruptHandler(void (* InterruptHandler)(void))
{
	 DMA1_AI_InterruptHandler = InterruptHandler;
}

void __interrupt(irq(IRQ_DMA1OR),base(8)) DMA1_DMAORI_ISR()
{
    // Clear the source count interrupt flag
    PIR2bits.DMA1ORIF = 0;

    if (DMA1_ORI_InterruptHandler)
            DMA1_ORI_InterruptHandler();
}

void DMA1_SetORIInterruptHandler(void (* InterruptHandler)(void))
{
	 DMA1_ORI_InterruptHandler = InterruptHandler;
}

void DMA1_DefaultInterruptHandler(void){
    // add your DMA1 interrupt custom code
    // or set custom function using DMA1_SetSCNTIInterruptHandler() /DMA1_SetDCNTIInterruptHandler() /DMA1_SetAIInterruptHandler() /DMA1_SetORIInterruptHandler()
}
/**
  End of File
 */