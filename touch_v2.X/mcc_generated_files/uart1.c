/**
  UART1 Generated Driver File

  @Company
    Microchip Technology Inc.

  @File Name
    uart1.c

  @Summary
    This is the generated driver implementation file for the UART1 driver using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This source file provides APIs for UART1.
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
#include "uart1.h"
#include "interrupt_manager.h"

/**
  Section: Macro Declarations
*/
#define UART1_TX_BUFFER_SIZE 64
#define UART1_RX_BUFFER_SIZE 64

/**
  Section: Global Variables
*/

static volatile uint8_t uart1TxHead = 0;
static volatile uint8_t uart1TxTail = 0;
static volatile uint8_t uart1TxBuffer[UART1_TX_BUFFER_SIZE];
volatile uint8_t uart1TxBufferRemaining;

static volatile uint8_t uart1RxHead = 0;
static volatile uint8_t uart1RxTail = 0;
static volatile uint8_t uart1RxBuffer[UART1_RX_BUFFER_SIZE];
volatile uint8_t uart1RxCount;

/**
  Section: UART1 APIs
*/

void UART1_Initialize(void)
{
    // Disable interrupts before changing states
    PIE3bits.U1RXIE = 0;
    UART1_SetRxInterruptHandler(UART1_Receive_ISR);
    PIE3bits.U1TXIE = 0;
    UART1_SetTxInterruptHandler(UART1_Transmit_ISR);

    // Set the UART1 module to the options selected in the user interface.

    // P1L 0; 
    U1P1L = 0x00;

    // P1H 0; 
    U1P1H = 0x00;

    // P2L 0; 
    U1P2L = 0x00;

    // P2H 0; 
    U1P2H = 0x00;

    // P3L 0; 
    U1P3L = 0x00;

    // P3H 0; 
    U1P3H = 0x00;

    // BRGS high speed; MODE Asynchronous 8-bit mode; RXEN enabled; TXEN enabled; ABDEN disabled; 
    U1CON0 = 0xB0;

    // RXBIMD Set RXBKIF on rising RX input; BRKOVR disabled; WUE disabled; SENDB disabled; ON enabled; 
    U1CON1 = 0x80;

    // TXPOL not inverted; FLO off; C0EN Checksum Mode 0; RXPOL not inverted; RUNOVF RX input shifter stops all activity; STP Transmit 1Stop bit, receiver verifies first Stop bit; 
    U1CON2 = 0x00;

    // BRGL 64; 
    U1BRGL = 0x40;

    // BRGH 3; 
    U1BRGH = 0x03;

    // STPMD in middle of first Stop bit; TXWRE No error; 
    U1FIFO = 0x00;

    // ABDIF Auto-baud not enabled or not complete; WUIF WUE not enabled by software; ABDIE disabled; 
    U1UIR = 0x00;

    // ABDOVF Not overflowed; TXCIF 0; RXBKIF No Break detected; RXFOIF not overflowed; CERIF No Checksum error; 
    U1ERRIR = 0x00;

    // TXCIE disabled; FERIE disabled; TXMTIE disabled; ABDOVE disabled; CERIE disabled; RXFOIE disabled; PERIE disabled; RXBKIE disabled; 
    U1ERRIE = 0x00;


    // initializing the driver state
    uart1TxHead = 0;
    uart1TxTail = 0;
    uart1TxBufferRemaining = sizeof(uart1TxBuffer);
    uart1RxHead = 0;
    uart1RxTail = 0;
    uart1RxCount = 0;

    // enable receive interrupt
    PIE3bits.U1RXIE = 1;
}

uint8_t UART1_is_rx_ready(void)
{
    return uart1RxCount;
}

uint8_t UART1_is_tx_ready(void)
{
    return uart1TxBufferRemaining;
}

bool UART1_is_tx_done(void)
{
    return U1ERRIRbits.TXMTIF;
}

uint8_t UART1_Read(void)
{
    uint8_t readValue  = 0;
    
    while(0 == uart1RxCount)
    {
    }

    readValue = uart1RxBuffer[uart1RxTail++];
   	if(sizeof(uart1RxBuffer) <= uart1RxTail)
    {
        uart1RxTail = 0;
    }
    PIE3bits.U1RXIE = 0;
    uart1RxCount--;
    PIE3bits.U1RXIE = 1;

    return readValue;
}

void UART1_Write(uint8_t txData)
{
    while(0 == uart1TxBufferRemaining)
    {
    }

    if(0 == PIE3bits.U1TXIE)
    {
        U1TXB = txData;
    }
    else
    {
        PIE3bits.U1TXIE = 0;
        uart1TxBuffer[uart1TxHead++] = txData;
        if(sizeof(uart1TxBuffer) <= uart1TxHead)
        {
            uart1TxHead = 0;
        }
        uart1TxBufferRemaining--;
    }
    PIE3bits.U1TXIE = 1;
}

void __interrupt(irq(U1TX),base(8)) UART1_tx_vect_isr()
{   
    if(UART1_TxInterruptHandler)
    {
        UART1_TxInterruptHandler();
    }
}

void __interrupt(irq(U1RX),base(8)) UART1_rx_vect_isr()
{
    if(UART1_RxInterruptHandler)
    {
        UART1_RxInterruptHandler();
    }
}



void UART1_Transmit_ISR(void)
{
    // use this default transmit interrupt handler code
    if(sizeof(uart1TxBuffer) > uart1TxBufferRemaining)
    {
        U1TXB = uart1TxBuffer[uart1TxTail++];
       if(sizeof(uart1TxBuffer) <= uart1TxTail)
        {
            uart1TxTail = 0;
        }
        uart1TxBufferRemaining++;
    }
    else
    {
        PIE3bits.U1TXIE = 0;
    }
    
    // or set custom function using UART1_SetTxInterruptHandler()
}

void UART1_Receive_ISR(void)
{
    // use this default receive interrupt handler code
    uart1RxBuffer[uart1RxHead++] = U1RXB;
    if(sizeof(uart1RxBuffer) <= uart1RxHead)
    {
        uart1RxHead = 0;
    }
    uart1RxCount++;
    
    // or set custom function using UART1_SetRxInterruptHandler()
}



void UART1_SetRxInterruptHandler(void (* InterruptHandler)(void)){
    UART1_RxInterruptHandler = InterruptHandler;
}

void UART1_SetTxInterruptHandler(void (* InterruptHandler)(void)){
    UART1_TxInterruptHandler = InterruptHandler;
}


/**
  End of File
*/
