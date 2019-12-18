/**
  Generated Pin Manager File

  Company:
    Microchip Technology Inc.

  File Name:
    pin_manager.c

  Summary:
    This is the Pin Manager file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  Description:
    This header file provides implementations for pin APIs for all pins selected in the GUI.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.65.2
        Device            :  PIC18F57K42
        Driver Version    :  2.11
    The generated drivers are tested against the following:
        Compiler          :  XC8 1.45
        MPLAB             :  MPLAB X 4.15

    Copyright (c) 2013 - 2015 released Microchip Technology Inc.  All rights reserved.
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

#include <xc.h>
#include "pin_manager.h"
#include "stdbool.h"





void PIN_MANAGER_Initialize(void)
{
    /**
    LATx registers
    */
    LATE = 0x07;
    LATD = 0x80;
    LATA = 0x00;
    LATF = 0x20;
    LATB = 0x00;
    LATC = 0x07;

    /**
    TRISx registers
    */
    TRISE = 0x00;
    TRISF = 0x0F;
    TRISA = 0xFF;
    TRISB = 0xBF;
    TRISC = 0x90;
    TRISD = 0x0C;

    /**
    ANSELx registers
    */
    ANSELD = 0x00;
    ANSELC = 0x00;
    ANSELB = 0x3C;
    ANSELE = 0x00;
    ANSELF = 0x00;
    ANSELA = 0xFF;

    /**
    WPUx registers
    */
    WPUD = 0x0C;
    WPUF = 0x0F;
    WPUE = 0x00;
    WPUB = 0x83;
    WPUA = 0x00;
    WPUC = 0x97;

    /**
    ODx registers
    */
    ODCONE = 0x00;
    ODCONF = 0x00;
    ODCONA = 0x00;
    ODCONB = 0x00;
    ODCONC = 0x00;
    ODCOND = 0x00;

    /**
    SLRCONx registers
    */
    SLRCONA = 0xFF;
    SLRCONB = 0xFF;
    SLRCONC = 0xFF;
    SLRCOND = 0xFF;
    SLRCONE = 0x07;
    SLRCONF = 0xFF;





   
    
	
    U2RXPPS = 0x0F;   //RB7->UART2:RX2;    
    SPI1SCKPPS = 0x13;   //RC3->SPI1:SCK1;    
    RB6PPS = 0x16;   //RB6->UART2:TX2;    
    RC3PPS = 0x1E;   //RC3->SPI1:SCK1;    
    INT0PPS = 0x08;   //RB0->EXT_INT:INT0;    
    RD1PPS = 0x10;   //RD1->PWM8:PWM8;    
    INT1PPS = 0x09;   //RB1->EXT_INT:INT1;    
    RC5PPS = 0x1F;   //RC5->SPI1:SDO1;    
    RC6PPS = 0x13;   //RC6->UART1:TX1;    
    U1RXPPS = 0x17;   //RC7->UART1:RX1;    
    SPI1SDIPPS = 0x14;   //RC4->SPI1:SDI1;    
}
  
void PIN_MANAGER_IOC(void)
{   
}

/**
 End of File
*/