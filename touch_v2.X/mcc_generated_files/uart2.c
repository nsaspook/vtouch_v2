/**
  UART2 Generated Driver File

  @Company
    Microchip Technology Inc.

  @File Name
    uart2.c

  @Summary
    This is the generated driver implementation file for the UART2 driver using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This source file provides APIs for UART2.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.65.2
        Device            :  PIC18F57K42
        Driver Version    :  2.30
    The generated drivers are tested against the following:
        Compiler          :  XC8 1.45
        MPLAB             :  MPLAB X 4.15
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
#include "uart2.h"
#include "interrupt_manager.h"

/**
  Section: Macro Declarations
*/
#define UART2_TX_BUFFER_SIZE 64
#define UART2_RX_BUFFER_SIZE 64

/**
  Section: Global Variables
*/

static volatile uint8_t uart2TxHead = 0;
static volatile uint8_t uart2TxTail = 0;
static volatile uint8_t uart2TxBuffer[UART2_TX_BUFFER_SIZE];
volatile uint8_t uart2TxBufferRemaining;

static volatile uint8_t uart2RxHead = 0;
static volatile uint8_t uart2RxTail = 0;
static volatile uint8_t uart2RxBuffer[UART2_RX_BUFFER_SIZE];
volatile uint8_t uart2RxCount;

/**
  Section: UART2 APIs
*/

void UART2_Initialize(void)
{
    // Disable interrupts before changing states
    PIE6bits.U2RXIE = 0;
    UART2_SetRxInterruptHandler(UART2_Receive_ISR);
    PIE6bits.U2TXIE = 0;
    UART2_SetTxInterruptHandler(UART2_Transmit_ISR);

    // Set the UART2 module to the options selected in the user interface.

    // P1L 0; 
    U2P1L = 0x00;

    // P2L 0; 
    U2P2L = 0x00;

    // P3L 0; 
    U2P3L = 0x00;

    // BRGS high speed; MODE Asynchronous 8-bit mode; RXEN enabled; TXEN enabled; ABDEN disabled; 
    U2CON0 = 0xB0;

    // RXBIMD Set RXBKIF on rising RX input; BRKOVR disabled; WUE disabled; SENDB disabled; ON enabled; 
    U2CON1 = 0x80;

    // TXPOL not inverted; FLO off; RXPOL not inverted; RUNOVF RX input shifter stops all activity; STP Transmit 1Stop bit, receiver verifies first Stop bit; 
    U2CON2 = 0x00;

    // BRGL 130; 
    U2BRGL = 0x82;

    // BRGH 6; 
    U2BRGH = 0x06;

    // STPMD in middle of first Stop bit; TXWRE No error; 
    U2FIFO = 0x00;

    // ABDIF Auto-baud not enabled or not complete; WUIF WUE not enabled by software; ABDIE disabled; 
    U2UIR = 0x00;

    // ABDOVF Not overflowed; TXCIF 0; RXBKIF No Break detected; RXFOIF not overflowed; CERIF No Checksum error; 
    U2ERRIR = 0x00;

    // TXCIE disabled; FERIE disabled; TXMTIE disabled; ABDOVE disabled; CERIE disabled; RXFOIE disabled; PERIE disabled; RXBKIE disabled; 
    U2ERRIE = 0x00;


    // initializing the driver state
    uart2TxHead = 0;
    uart2TxTail = 0;
    uart2TxBufferRemaining = sizeof(uart2TxBuffer);
    uart2RxHead = 0;
    uart2RxTail = 0;
    uart2RxCount = 0;

    // enable receive interrupt
    PIE6bits.U2RXIE = 1;
}

uint8_t UART2_is_rx_ready(void)
{
    return uart2RxCount;
}

uint8_t UART2_is_tx_ready(void)
{
    return uart2TxBufferRemaining;
}

bool UART2_is_tx_done(void)
{
    return U2ERRIRbits.TXMTIF;
}

uint8_t UART2_Read(void)
{
    uint8_t readValue  = 0;
    
    while(0 == uart2RxCount)
    {
    }

    readValue = uart2RxBuffer[uart2RxTail++];
   	if(sizeof(uart2RxBuffer) <= uart2RxTail)
    {
        uart2RxTail = 0;
    }
    PIE6bits.U2RXIE = 0;
    uart2RxCount--;
    PIE6bits.U2RXIE = 1;

    return readValue;
}

void UART2_Write(uint8_t txData)
{
    while(0 == uart2TxBufferRemaining)
    {
    }

    if(0 == PIE6bits.U2TXIE)
    {
        U2TXB = txData;
    }
    else
    {
        PIE6bits.U2TXIE = 0;
        uart2TxBuffer[uart2TxHead++] = txData;
        if(sizeof(uart2TxBuffer) <= uart2TxHead)
        {
            uart2TxHead = 0;
        }
        uart2TxBufferRemaining--;
    }
    PIE6bits.U2TXIE = 1;
}

void __interrupt(irq(U2TX),base(8)) UART2_tx_vect_isr()
{   
    if(UART2_TxInterruptHandler)
    {
        UART2_TxInterruptHandler();
    }
}

void __interrupt(irq(U2RX),base(8)) UART2_rx_vect_isr()
{
    if(UART2_RxInterruptHandler)
    {
        UART2_RxInterruptHandler();
    }
}



void UART2_Transmit_ISR(void)
{
    // use this default transmit interrupt handler code
    if(sizeof(uart2TxBuffer) > uart2TxBufferRemaining)
    {
        U2TXB = uart2TxBuffer[uart2TxTail++];
       if(sizeof(uart2TxBuffer) <= uart2TxTail)
        {
            uart2TxTail = 0;
        }
        uart2TxBufferRemaining++;
    }
    else
    {
        PIE6bits.U2TXIE = 0;
    }
    
    // or set custom function using UART2_SetTxInterruptHandler()
}

void UART2_Receive_ISR(void)
{
    // use this default receive interrupt handler code
    uart2RxBuffer[uart2RxHead++] = U2RXB;
    if(sizeof(uart2RxBuffer) <= uart2RxHead)
    {
        uart2RxHead = 0;
    }
    uart2RxCount++;
    
    // or set custom function using UART2_SetRxInterruptHandler()
}



void UART2_SetRxInterruptHandler(void (* InterruptHandler)(void)){
    UART2_RxInterruptHandler = InterruptHandler;
}

void UART2_SetTxInterruptHandler(void (* InterruptHandler)(void)){
    UART2_TxInterruptHandler = InterruptHandler;
}

/* stuff the uart2 receive buffer with testing data */
void UART2_put_buffer(uint8_t bufData)
{
	PIE6bits.U2RXIE = 0;
	uart2RxBuffer[uart2RxHead++] = bufData;
	if (sizeof(uart2RxBuffer) <= uart2RxHead) {
		uart2RxHead = 0;
	}

	uart2RxCount++;
	PIE6bits.U2RXIE = 1;
}
/**
  End of File
*/
