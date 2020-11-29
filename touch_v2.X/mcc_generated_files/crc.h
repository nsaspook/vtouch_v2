/**
  CRC Generated Driver File

  @Company
    Microchip Technology Inc.

  @File Name
    crc.h

  @Summary
    This is the generated driver implementation file for the CRC driver using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This source file provides APIs for CRC.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.77
        Device            :  PIC18F57K42
        Driver Version    :  2.10
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.05 and above
        MPLAB             :  MPLAB X 5.20
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

#ifndef CRC_H
#define CRC_H

/**
  Section: Included Files
*/

#include <xc.h>
#include <stdint.h>
#include <stdbool.h>

// Provide C++ compatability
#ifdef	__cplusplus

extern "C" {

#endif

/**
 Section:  Macros definition
 */

#define  NORMAL  0
#define  REVERSE 1

/**
  Section: CRC APIs declaration
*/

/**
  @Summary
    Initializes the CRC module

  @Description
    This routine sets the polynomial and data width; data and seed shift;
    updates the polynomial and shifts the seed value.

    After the routine is called, the CRC module is ready to calculate the
    CRC of a data buffer.

    Polynomial:             213
    Polynomial Length - 1:  7
    Data Length - 1:        0
    Data Shift:             shift left
    Seed:                   0

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t buffer [] = {0x55,0x66,0x77,0x88};
    uint16_t crcVal;
    uint16_t length = sizeof(buffer);
    uint16_t value = 0xff00;

    // Initialize the CRC module
    CRC_Initialize();

    // Start CRC
    CRC_Start();

    CRC_16BitDataWrite(value);

    while (CRC_IsBusy());

    // Read CRC check value
    crcVal = CRC_CalculatedResultGet(NORMAL,0x00);
    </code>
*/
void CRC_Initialize(void);

/**
  @Summary
    Starts the CRC module

  @Description
    This routine sets the CRCGO bit of the CRCCON0 register to begin the shifting
    process.

    This routine must be called after the initialization of the CRC module.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t crcVal;

    // Initialize the CRC module
    CRC_Initialize();

    // Start CRC
    CRC_Start();

    // Write data
    CRC_8BitDataWrite(0x55)

    // Check CRC busy?
    while(CRC_IsBusy());

    // Read CRC check value
    crcVal = CRC_CalculatedResultGet(NORMAL,0x00);
    </code>
*/
void CRC_Start(void);

/**
  @Summary
    Writes data into CRCDATL register pair.

  @Description
    This routine writes data into CRCDATHL register pair.

  @Preconditions
    None.

  @Returns
    1 - if CRC data registers are not full
    0 - if CRC data registers are full

  @Param
    data:  crc input data

  @Example
     <code>
     uint16_t crcVal;

    // Initialize the CRC module
    CRC_Initialize();

    // Start CRC
    CRC_Start();

    // write 8-bit data
    bool retVal = CRC_8BitDataWrite(0x55)

    // Check CRC busy?
    while(CRC_IsBusy());

    // Read CRC check value
    crcVal = CRC_CalculatedResultGet(NORMAL,0x00);
    </code>
*/
bool CRC_8BitDataWrite(uint8_t data);

/**
  @Summary
   Reads crc check value.

  @Description
    This routine reads and returns the normal or reverse value.

  @Preconditions
    None.

  @Returns
    None.

  @Param
   reverse: 0-NORMAL value, 1-REVERSE value
   xorValue: value which xored with CRC.

  @Example
     <code>
     uint8_t crcVal;
    // Initialize the CRC module
    CRC_Initialize();

    // Start CRC
    CRC_Start();

    // write 8-bit data
    CRC_8BitDataWrite(0x55)

    // Check CRC busy?
    while(CRC_IsBusy());

    // Read CRC check value
    crcVal = (uint8_t)CRC_CalculatedResultGet(NORMAL,0x00);
    </code>
*/
uint16_t CRC_CalculatedResultGet(bool reverse, uint16_t xorValue);

/**
  @Summary
    Reads the status of BUSY bit of CRCCON0 register.

  @Description
    This routine returns the status of the BUSY bit of CRCCON0 register to check
    CRC calculation is over or not.

  @Preconditions
    None.

  @Returns
    1 - CRC busy.
    0 - CRC not busy.

  @Param
    None.

  @Example
    <code>
    uint8_t crcVal;
    // Initialize the CRC module
    CRC_Initialize();

    // Start CRC
    CRC_Start();

    // write 8-bit data
    CRC_Write8bitData(0x55)

    // Check CRC busy?
    while(CRC_IsBusy());

    // Read calculated CRC
    crcVal = CRC_Read8bitResult();
    </code>
*/
bool CRC_IsBusy(void);

/**
  @Summary
    Starts the program memory scan

  @Description
    This routine starts the scanning process

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
     uint16_t crcVal;
    // Initialize the CRC SCAN module
    CRC_Initialize();

    // Sets SCAN address limit
    CRC_SCAN_SetAddressLimit(0x0000,0x07FF);

    // Start Scanner
    CRC_SCAN_StartScanner();

    // Scan completed?
    while(CRC_SCAN_HasScanCompleted());

    // Stop Scanner
    CRC_SCAN_StopScanner();

    // Read CRC check value
    crcVal = CRC_CalculatedResultGet(NORMAL,0x00);
    </code>
*/
void CRC_SCAN_StartScanner(void);

/**
  @Summary
    Stops the program memory scan

  @Description
    This routine Stops the scanning process

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
     uint16_t crcVal;
    // Initialize the CRC SCAN module
    CRC_Initialize();

    // Sets SCAN address limit
    CRC_SCAN_SetAddressLimit(0x0000,0x07FF);

    // Start Scanner
    CRC_SCAN_StartScanner();

    // Scan completed?
    while(CRC_SCAN_HasScanCompleted());

    // Stop Scanner
    CRC_SCAN_StopScanner();

    // Read CRC check value
    crcVal = CRC_CalculatedResultGet(NORMAL,0x00);
    </code>
*/
void CRC_SCAN_StopScanner(void);

/**
  @Summary
    Sets the memory address limit for scanning

  @Description
    This routine loads  address limits into the SCANLADRH/L and SCANHADRH/L register pairs.

  @Preconditions
    None.

  @Returns
    None.

  @Param
   startAddr: Starting address of memory block.
   endAddr:   Ending address of memory block.

  @Example
    <code>
     uint16_t crcVal;
    // Initialize the CRC SCAN module
    CRC_Initialize();

    // Sets SCAN address limit
    CRC_SCAN_SetAddressLimit(0x0000,0x07FF);

    // Start Scanner
    CRC_SCAN_StartScanner();

    // Scan completed?
    while(CRC_SCAN_HasScanCompleted());

    // Stop Scanner
    CRC_SCAN_StopScanner();

    // Read CRC check value
    crcVal = CRC_CalculatedResultGet(NORMAL,0x00);
    </code>
*/
void CRC_SCAN_SetAddressLimit(uint32_t startAddr, uint32_t endAddr);

/**
  @Summary
    Returns the status of BUSY bit of SCANCON0 register.

  @Description
    This routine returns the status of BUSY bit of SCANCON0 register.

  @Preconditions
    None.

  @Returns
    0 - SCAN not yet started.
    1- SCAN is in progress.

  @Param
    None.

  @Example
    <code>
     uint16_t crcVal;
    // Initialize the CRC SCAN module
    CRC_Initialize();

    // Wait if scanner is in progress.
    While(CRC_SCAN_IsScannerBusy()!=1);

    // Sets SCAN address limit
    CRC_SCAN_SetAddressLimit(0x0000,0x07FF);

    // Start Scanner
    CRC_SCAN_StartScanner();

    // Scan completed?
    while(CRC_SCAN_HasScanCompleted());

    // Stop Scanner
    CRC_SCAN_StopScanner();

    // Read CRC check value
    crcVal = CRC_CalculatedResultGet(NORMAL,0x00);
    </code>
*/
bool CRC_SCAN_IsScannerBusy(void);

/**
  @Summary
    Returns the status of the SCANIF interrupt flag.

  @Description
    This routine returns the status of the SCANIF interrupt flag.

  @Preconditions
    None.

  @Returns
    1 - Scan is complete.
    0 - Scan is not complete.

  @Param
    None.

  @Example
    <code>
     uint16_t crcVal;
    // Initialize the CRC SCAN module
    CRC_Initialize();

    // Sets SCAN address limit
    CRC_SCAN_SetAddressLimit(0x0000,0x07FF);

    // Start Scanner
    CRC_SCAN_StartScanner();

    // Scan completed?
    while(CRC_SCAN_HasScanCompleted());

    // Stop Scanner
    CRC_SCAN_StopScanner();

    // Read CRC check value
    crcVal = CRC_CalculatedResultGet(NORMAL,0x00);
    </code>
*/
bool CRC_SCAN_HasScanCompleted(void);


        
#ifdef	__cplusplus
}
#endif

#endif	/* _CRC_H */
