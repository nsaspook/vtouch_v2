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
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.8
        Device            :  PIC18F47Q84
        Driver Version    :  2.11
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.36 and above
        MPLAB             :  MPLAB X 6.00

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

#include "pin_manager.h"





void PIN_MANAGER_Initialize(void)
{
    /**
    LATx registers
    */
    LATE = 0x01;
    LATD = 0xC8;
    LATA = 0x00;
    LATB = 0x0E;
    LATC = 0x02;

    /**
    TRISx registers
    */
    TRISE = 0x06;
    TRISA = 0xFF;
    TRISB = 0xF1;
    TRISC = 0xD5;
    TRISD = 0x31;

    /**
    ANSELx registers
    */
    ANSELD = 0x30;
    ANSELC = 0xC4;
    ANSELB = 0xD1;
    ANSELE = 0x06;
    ANSELA = 0xDF;

    /**
    WPUx registers
    */
    WPUD = 0x09;
    WPUE = 0x00;
    WPUB = 0x20;
    WPUA = 0x00;
    WPUC = 0x01;

    /**
    ODx registers
    */
    ODCONE = 0x00;
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

    /**
    INLVLx registers
    */
    INLVLA = 0xFF;
    INLVLB = 0xFF;
    INLVLC = 0xFF;
    INLVLD = 0xFF;
    INLVLE = 0x0F;





   
    
	
    U2RXPPS = 0x18;   //RD0->UART2:RX2;    
    RD2PPS = 0x1B;   //RD2->PWM2_16BIT:PWM22;    
    SPI1SCKPPS = 0x13;   //RC3->SPI1:SCK1;    
    RC3PPS = 0x31;   //RC3->SPI1:SCK1;    
    RC1PPS = 0x20;   //RC1->UART1:TX1;    
    RD1PPS = 0x1A;   //RD1->PWM2_16BIT:PWM21;    
    RC5PPS = 0x32;   //RC5->SPI1:SDO1;    
    U1RXPPS = 0x10;   //RC0->UART1:RX1;    
    RD6PPS = 0x23;   //RD6->UART2:TX2;    
    SPI1SDIPPS = 0x14;   //RC4->SPI1:SDI1;    
}
  
void PIN_MANAGER_IOC(void)
{   
}

/**
 End of File
*/