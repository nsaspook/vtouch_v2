/**
  ADC Generated Driver API Header File

  @Company
    Microchip Technology Inc.

  @File Name
    adc.h

  @Summary
    This is the generated header file for the ADC driver using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This header file provides APIs for driver for ADC.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.8
        Device            :  PIC18F47Q84
        Driver Version    :  1.0.0
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.36 and above
        MPLAB             :  MPLAB X 6.00
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

#ifndef ADC_H
#define ADC_H

/**
 * @brief This file contains API prototypes and other datatypes for ADC module.
 * @defgroup adc_context_scan  ADC3: Analog-to-Digital Converter with Context
 * @{
 */

#include <xc.h>
#include <stdint.h>
#include <stdbool.h>

/**
 @ingroup adc_context_scan
 @typedef adc_result_t
 @brief This typedef should be used for result of A/D conversion.
 */
typedef uint16_t adc_result_t;

/**
 @ingroup adc_context_scan
 @enum ADC_channel_t
 @brief This enumeration contains available ADC channels.
 */
typedef enum
{
    channel_ANA0 =  0x0,
    channel_ANA1 =  0x1,
    channel_ANA2 =  0x2,
    channel_VSS =  0x3B,
    channel_Temp =  0x3C,
    channel_DAC1 =  0x3D,
    channel_FVR_Buffer1 =  0x3E,
    channel_FVR_Buffer2 =  0x3F
} ADC_channel_t;

/**
 @ingroup adc_context_scan
 @enum ADC_context_t
 @brief This enumeration contains available ADC contexts.
 */
typedef enum
{
    CONTEXT_1,
} ADC_context_t;

/**
 * @ingroup adc_context_scan
 * @brief This API initializes the ADC module.
 *        This routine must be called before any other ADC routine.
 * @param void.
 * @return void.
 *
 * @code
 * void main(void)
 * {
 *     adc_result_t convertedValue;
 *     ADC_Initialize();
 *     ADC_SelectContext(CONTEXT_1);   
 *     ADC_StartConversion(channel_ANA0);
 *     while(!ADC_IsConversionDone());
 *     convertedValue = ADC_GetConversionResult();
 *
 *     while(1);
 * }
 * @endcode
 */
void ADC_Initialize(void);

/**
 * @ingroup adc_context_scan
 * @brief This API enables ADC channel sequencer.
 *        ADC module should be initialized using @ref ADC_Initialize before calling this API.
 * @param void
 * @return void
 *
 * @code
 * void main(void)
 * {
 *     adc_result_t convertedValue1, convertedValue2, convertedValue3, convertedValue4;
 *     ADC_Initialize();
 *     ADC_EnableChannelSequencer();    //Enable auto-scanning if not already enabled	
 *     ADC_StartChannelSequencer();     // Software starts the sequencer	
 *
 *     while(!ADC_IsConversionDone());
 *     ADC_SelectContext(CONTEXT_1);  
 *     convertedValue1 = ADC_GetConversionResult();
 *     ADC_SelectContext(CONTEXT_2);  
 *     convertedValue2 = ADC_GetConversionResult();
 *     ADC_SelectContext(CONTEXT_3);  
 *     convertedValue3 = ADC_GetConversionResult();
 *     ADC_SelectContext(CONTEXT_4);  
 *     convertedValue4 = ADC_GetConversionResult();
 *
 *     while(1);
 * }
 * @endcode
 */
inline void ADC_EnableChannelSequencer(void);

/**
 * @ingroup adc_context_scan
 * @brief This API disables ADC channel sequencer.
 *        ADC module should be initialized using @ref ADC_Initialize before calling this API.
 * @param void
 * @return void
 *
 * @code
 * void main(void)
 * {
 *     adc_result_t convertedValue;
 *     ADC_Initialize();
 *     ADC_DisableChannelSequencer();    //Disable scanner
 *     ADC_SelectContext(CONTEXT_1);
 *     convertedValue = ADC_GetSingleConversion(channel_ANA0);
 *
 *     while(1);
 * }
 * @endcode
 */
inline void ADC_DisableChannelSequencer(void);    

/**
 * @ingroup adc_context_scan
 * @brief This API starts the channel sequencer by enabling GO bit.
 *        Channel sequencer should be enabled using @ref ADC_EnableChannelSequencer before calling
 *        this API.
 * @param void
 * @return void
 *
 * @code
 * void main(void)
 * {
 *     adc_result_t convertedValue1, convertedValue2, convertedValue3, convertedValue4;
 *     ADC_Initialize();
 *     ADC_EnableChannelSequencer();    //Enable auto-scanning if not already enabled	
 *     ADC_StartChannelSequencer();     // Software starts the sequencer	
 *
 *     while(!ADC_IsConversionDone());
 *     ADC_SelectContext(CONTEXT_1);  
 *     convertedValue1 = ADC_GetConversionResult();
 *     ADC_SelectContext(CONTEXT_2);  
 *     convertedValue2 = ADC_GetConversionResult();
 *     ADC_SelectContext(CONTEXT_3);  
 *     convertedValue3 = ADC_GetConversionResult();
 *     ADC_SelectContext(CONTEXT_4);  
 *     convertedValue4 = ADC_GetConversionResult();
 *
 *     while(1);
 * }
 * @endcode
 */
inline void ADC_StartChannelSequencer(void);

/**
 * @ingroup adc_context_scan
 * @brief This API is used to select an ADC context to perform read/write operations on 
 *        context specific registers.
 * @param[in] context - Context to be selected. Refer @ref ADC_context_t for available contexts
 * @return void
 *
 * @code
 * void main(void)
 * {
 *     adc_result_t convertedValue;
 *     ADC_Initialize();
 *     ADC_SelectContext(CONTEXT_1);   
 *     ADC_StartConversion(channel_ANA0);
 *     while(!ADC_IsConversionDone());
 *     convertedValue = ADC_GetConversionResult();
 *
 *     while(1);
 * }
 * @endcode
 */
inline void ADC_SelectContext(ADC_context_t context);

/**
 * @ingroup adc_context_scan
 * @brief This API is used to include a channel context in the scan sequence.
 *        Correct context should be selected using @ref ADC_SelectContext before calling this API.
 * @param[in] context - Context which needs to be included in scan. Refer @ref ADC_context_t for available contexts
 * @return void
 *
 * @code
 * void main(void)
 * {
 *     ADC_Initialize();
 *     ADC_EnableChannelScan(CONTEXT_1);
 *     ADC_EnableChannelScan(CONTEXT_2);
 *
 *     //Application code
 *
 *     while(1);
 * }
 * @endcode
 */
void ADC_EnableChannelScan(ADC_context_t context);    

/**
 * @ingroup adc_context_scan
 * @brief This API is used to exclude a channel context from the scan sequence.
 *        Correct context should be selected using @ref ADC_SelectContext before calling this API.
 * @param[in] context - Context which needs to be excluded from scan. Refer @ref ADC_context_t for available contexts
 * @return void
 *
 * @code
 * void main(void)
 * {
 *     ADC_Initialize();
 *     ADC_EnableChannelScan(CONTEXT_1);
 *     ADC_DisableChannelScan(CONTEXT_2);
 *     ADC_DisableChannelScan(CONTEXT_3);
 *     ADC_EnableChannelScan(CONTEXT_4);
 *
 *     //Application code
 *
 *     while(1);
 * }
 * @endcode
 */
void ADC_DisableChannelScan(ADC_context_t context);

/**
 * @ingroup adc_context_scan
 * @brief This API starts A/D conversion on selected channel.
 *        Correct ADC context should be selected using @ref ADC_SelectContext
 *        before calling this API.
 * @param[in] channel - Analog channel number on which A/D conversion has to be applied.
 *                      Refer @ref ADC_channel_t for available list of channels
 * @return void
 *
 * @code
 * void main(void)
 * {
 *     adc_result_t convertedValue;
 *     ADC_Initialize();
 *     ADC_SelectContext(CONTEXT_1);   
 *     ADC_StartConversion(channel_ANA0);
 *     while(!ADC_IsConversionDone());
 *     convertedValue = ADC_GetConversionResult();
 *
 *     //Application code
 *
 *     while(1);
 * }
 * @endcode
 */
void ADC_StartConversion(ADC_channel_t channel);

/**
 * @ingroup adc_context_scan
 * @brief This API checks if ongoing A/D conversion is complete.
 * @param void
 * @return bool - Status of A/D conversion.
 *         true - if conversion is complete.
 *         false - if conversion is ongoing.
 *
 * @code
 * void main(void)
 * {
 *     adc_result_t convertedValue;
 *     ADC_Initialize();
 *     ADC_SelectContext(CONTEXT_1);   
 *     ADC_StartConversion(channel_ANA0);
 *     while(!ADC_IsConversionDone());
 *     convertedValue = ADC_GetConversionResult();
 *
 *     //Application code
 *
 *     while(1);
 * }
 * @endcode
 */
bool ADC_IsConversionDone(void);

/**
 * @ingroup adc_context_scan
 * @brief This API is used to retrieve the result of latest A/D conversion.
 *        Correct ADC context should be selected using @ref ADC_SelectContext
 *        before calling this API.
 * @param void
 * @return The result of A/D conversion. Refer @ref adc_result_t
 *
 * @code
 * void main(void)
 * {
 *     adc_result_t convertedValue;
 *     ADC_Initialize();
 *     ADC_SelectContext(CONTEXT_1);   
 *     ADC_StartConversion(channel_ANA0);
 *     while(!ADC_IsConversionDone());
 *     convertedValue = ADC_GetConversionResult();
 *
 *     //Application code
 *
 *     while(1);
 * }
 * @endcode
 */
adc_result_t ADC_GetConversionResult(void);

/**
 * @ingroup adc_context_scan
 * @brief This API is used to retrieve the result of single A/D conversion on given channel.
 *        Correct ADC context should be selected using @ref ADC_SelectContext
 *        before calling this API.
 * @param[in] channel - Analog channel number on which A/D conversion has to be applied.
 *                      Refer @ref ADC_channel_t  for available channels
 * @return The result of A/D conversion. Refer @ref adc_result_t
 *
 * @code
 * void main(void)
 * {
 *     adc_result_t convertedValue;
 *     ADC_Initialize();
 *     ADC_DisableChannelSequencer();    //Disable scanner
 *     ADC_SelectContext(CONTEXT_1);
 *     convertedValue = ADC_GetSingleConversion(channel_ANA0);
 *
 *     //Application code
 *
 *     while(1);
 * }
 * @endcode
 */
adc_result_t ADC_GetSingleConversion(ADC_channel_t channel);

/**
 * @ingroup adc_context_scan
 * @brief This API is used to stop ongoing A/D conversion.
 *        Correct ADC context should be selected using @ref ADC_SelectContext
 *        before calling this API.
 * @param void
 * @return void
 *
 * @code
 * void main(void)
 * {
 *     adc_result_t convertedValue;
 *     ADC_Initialize();
 *     ADC_SelectContext(CONTEXT_1);
 *     ADC_StartConversion(channel_ANA0);
 *     ADC_StopConversion();
 *
 *     //Application code
 *
 *     while(1);
 * }
 * @endcode
 */
inline void ADC_StopConversion(void);

/**
 * @ingroup adc_context_scan
 * @brief This API is used enable Stop On Interrupt bit for selected A/D context.
 *        Correct ADC context should be selected using @ref ADC_SelectContext
 *        before calling this API.
 * @param void
 * @return void
 *
 * @code
 * void main(void)
 * {
 *     ADC_Initialize();
 *     ADC_SelectContext(CONTEXT_1);
 *     ADC_EnableContinuousConversion();
 *     ADC_SetStopOnInterrupt();
 *
 *     //Application code
 *
 *     while(1);
 * }
 * @endcode
 */
inline void ADC_SetStopOnInterrupt(void);

/**
 * @ingroup adc_context_scan
 * @brief This API is used to discharge input sample capacitor for selected context by
 *        setting the channel to AVss.
 *        Correct ADC context should be selected using @ref ADC_SelectContext
 *        before calling this API.
 * @param void
 * @return void
 *
 * @code
 * void main(void)
 * {
 *     adc_result_t convertedValue;
 *     ADC_Initialize();
 *     ADC_SelectContext(CONTEXT_1);
 *     ADC_DischargeSampleCapacitor();
 *     ADC_StartConversion(channel_ANA0);
 *     while(!ADC_IsConversionDone());
 *     convertedValue = ADC_GetConversionResult();
 *
 *     //Application code
 *
 *     while(1);
 * }
 * @endcode
 */
inline void ADC_DischargeSampleCapacitor(void);    

/**
 * @ingroup adc_context_scan
 * @brief This API is used to load ADC Acquisition Time Control register with specified value.
 *        Correct ADC context should be selected using @ref ADC_SelectContext
 *        before calling this API.
 * @param[in] acquisitionValue - Value to be loaded in the acquisition time control register.
 * @return void
 *
 * @code
 * void main(void)
 * {
 *     uint16_t acquisitionValue = 98;
 *     ADC_Initialize();
 *     ADC_SelectContext(CONTEXT_1);
 *     ADC_LoadAcquisitionRegister(acquisitionValue);
 *
 *     //Application code
 *
 *     while(1);
 * }
 * @endcode
 */
void ADC_LoadAcquisitionRegister(uint16_t acquisitionValue);    

/**
 * @ingroup adc_context_scan
 * @brief This API is used to load ADC Precharge Time Control register with specified value.
 *        Correct ADC context should be selected using @ref ADC_SelectContext
 *        before calling this API.
 * @param[in] prechargeTime - Value to be loaded in the precharge time control register.
 * @return void
 *
 * @code
 * void main(void)
 * {
 *     uint16_t prechargeTime = 98;
 *     ADC_Initialize();
 *     ADC_SelectContext(CONTEXT_1);
 *     ADC_SetPrechargeTime(prechargeTime);
 *
 *     //Application code
 *
 *     while(1);
 * }
 * @endcode
 */
void ADC_SetPrechargeTime(uint16_t prechargeTime);    

/**
 * @ingroup adc_context_scan
 * @brief This API is used to load repeat counter for given context with specified value.
 *        Correct ADC context should be selected using @ref ADC_SelectContext
 *        before calling this API.
 * @param[in] repeatCount - Value to be loaded to repeat counter.
 * @return void
 *
 * @code
 * void main(void)
 * {
 *     uint8_t repeatCount = 32;
 *     ADC_Initialize();
 *     ADC_SelectContext(CONTEXT_1);
 *     ADC_SetRepeatCount(repeatCount);
 *
 *     //Application code
 *
 *     while(1);
 * }
 * @endcode
 */
inline void ADC_SetRepeatCount(uint8_t repeatCount);    

/**
 * @ingroup adc_context_scan
 * @brief This API retrieves the current value of ADC Repeat Count register for selected context.
 *        Correct ADC context should be selected using @ref ADC_SelectContext
 *        before calling this API.
 * @param void
 * @return Current value of ADC Repeat Count register
 *
 * @code
 * void main(void)
 * {
 *     uint8_t conversionCount;
 *     ADC_Initialize();
 *     ADC_SelectContext(CONTEXT_1);
 *     conversionCount = ADC_GetCurrentCountofConversions();
 *
 *     //Application code
 *
 *     while(1);
 * }
 * @endcode
 */
uint8_t ADC_GetCurrentCountofConversions(void);    

/**
 * @ingroup adc_context_scan
 * @brief This API clears the accumulator of selected context.
 *        Correct ADC context should be selected using @ref ADC_SelectContext
 *        before calling this API.
 * @param void
 * @return void
 *
 * @code
 * void main(void)
 * {
 *     ADC_Initialize();
 *     ADC_SelectContext(CONTEXT_1);
 *     ADC_ClearAccumulator();
 *
 *     //Application code
 *
 *     while(1);
 * }
 * @endcode
 */
inline void ADC_ClearAccumulator(void);    

/**
 * @ingroup adc_context_scan
 * @brief This API retrieves 18-bit value of ADC accumulator of selected context.
 *        Correct ADC context should be selected using @ref ADC_SelectContext
 *        before calling this API.
 * @param void
 * @return Value of ADC accumulator.
 *
 * @code
 * void main(void)
 * {
 *     uint24_t accumulatorValue;
 *     ADC_Initialize();
 *     ADC_SelectContext(CONTEXT_1);
 *     accumulatorValue = ADC_GetAccumulatorValue();
 *
 *     //Application code
 *
 *     while(1);
 * }
 * @endcode
 */
uint24_t ADC_GetAccumulatorValue(void);    

/**
 * @ingroup adc_context_scan
 * @brief This API is used to determine whether ADC accumulator has overflowed for selected context.
 *        Correct ADC context should be selected using @ref ADC_SelectContext
 *        before calling this API.
 * @param void
 * @return Status of accumulator.
 *         true - ADC accumulator has overflowed.
 *         false - ADC accumulator has not overflowed.
 *
 * @code
 * void main(void)
 * {
 *     bool hasAccOvf;
 *     ADC_Initialize();
 *     ADC_SelectContext(CONTEXT_1);
 *     ADC_StartConversion(channel_ANA0);
 *     hasAccOvf = ADC_HasAccumulatorOverflowed();
 *
 *     //Application code
 *
 *     while(1);
 * }
 * @endcode
 */
bool ADC_HasAccumulatorOverflowed(void);    

/**
 * @ingroup adc_context_scan
 * @brief This API retrieves the value of ADC Filter register of selected context.
 *        Correct ADC context should be selected using @ref ADC_SelectContext
 *        before calling this API.
 * @param void
 * @return 16-bit value obtained from ADFLTRH and ADFLTRL registers.
 *
 * @code
 * void main(void)
 * {
 *     uint16_t filterValue;
 *     ADC_Initialize();
 *     ADC_SelectContext(CONTEXT_1);
 *     filterValue = ADC_GetFilterValue();
 *
 *     //Application code
 *
 *     while(1);
 * }
 * @endcode
 */
uint16_t ADC_GetFilterValue(void);    

/**
 * @ingroup adc_context_scan
 * @brief This API retrieves the value of ADC Previous register of selected context.
 *        Correct ADC context should be selected using @ref ADC_SelectContext
 *        before calling this API.
 * @param void
 * @return 16-bit value obtained from ADPREVH and ADPREVL registers.
 *
 * @code
 * void main(void)
 * {
 *     uint16_t previousResult;
 *     ADC_Initialize();
 *     ADC_SelectContext(CONTEXT_1);
 *     previousResult = ADC_GetPreviousResult();
 *
 *     //Application code
 *
 *     while(1);
 * }
 * @endcode
 */
uint16_t ADC_GetPreviousResult(void);    

/**
 * @ingroup adc_context_scan
 * @brief This API used to set value of ADC Threshold Set-point of selected context.
 *        Correct ADC context should be selected using @ref ADC_SelectContext
 *        before calling this API.
 * @param[in] setPoint - 16-bit value for set point.
 * @return void
 *
 * @code
 * void main(void)
 * {
 *     uint16_t setPoint = 90;
 *     ADC_Initialize();
 *     ADC_SelectContext(CONTEXT_1);
 *     ADC_DefineSetPoint(setPoint);
 *
 *     //Application code
 *
 *     while(1);
 * }
 * @endcode
 */
void ADC_DefineSetPoint(uint16_t setPoint);    

/**
 * @ingroup adc_context_scan
 * @brief This API used to set value of ADC Upper Threshold register of selected context.
 *        Correct ADC context should be selected using @ref ADC_SelectContext
 *        before calling this API.
 * @param[in] upperThreshold - 16-bit value for upper threshold.
 * @return void
 *
 * @code
 * void main(void)
 * {
 *     uint16_t upperThreshold = 5000;
 *     ADC_Initialize();
 *     ADC_SelectContext(CONTEXT_1);
 *     ADC_SetUpperThreshold(upperThreshold);
 *
 *     //Application code
 *
 *     while(1);
 * }
 * @endcode
 */
void ADC_SetUpperThreshold(uint16_t upperThreshold);    

/**
 * @ingroup adc_context_scan
 * @brief This API used to set value of ADC Lower Threshold register of selected context.
 *        Correct ADC context should be selected using @ref ADC_SelectContext
 *        before calling this API.
 * @param[in] lowerThreshold - 16-bit value for lower threshold.
 * @return void
 *
 * @code
 * void main(void)
 * {
 *     uint16_t lowerThreshold = 500;
 *     ADC_Initialize();
 *     ADC_SelectContext(CONTEXT_1);
 *     ADC_SetLowerThreshold(lowerThreshold);
 *
 *     //Application code
 *
 *     while(1);
 * }
 * @endcode
 */
void ADC_SetLowerThreshold(uint16_t lowerThreshold);    

/**
 * @ingroup adc_context_scan
 * @brief This API retrieves the value of ADC Set-point Error register of selected context.
 *        Correct ADC context should be selected using @ref ADC_SelectContext
 *        before calling this API.
 * @param void
 * @return 16-bit value obtained from ADERRH and ADERRL registers.
 *
 * @code
 * void main(void)
 * {
 *     uint16_t errorCalc;
 *     ADC_Initialize();
 *     ADC_SelectContext(CONTEXT_1);
 *     ADC_StartConversion(channel_ANA0);
 *     errorCalc = ADC_GetErrorCalculation();
 *
 *     //Application code
 *
 *     while(1);
 * }
 * @endcode
 */
uint16_t ADC_GetErrorCalculation(void);    

/**
 * @ingroup adc_context_scan
 * @brief This API enables double-sampling bit for selected context.
 *        Correct ADC context should be selected using @ref ADC_SelectContext
 *        before calling this API.
 * @param void
 * @return void
 *
 * @code
 * void main(void)
 * {
 *     ADC_Initialize();
 *     ADC_SelectContext(CONTEXT_1);
 *     ADC_EnableDoubleSampling();
 *     ADC_StartConversion(channel_ANA0);
 *
 *     //Application code
 *
 *     while(1);
 * }
 * @endcode
 */
inline void ADC_EnableDoubleSampling(void);    

/**
 * @ingroup adc_context_scan
 * @brief This API enables continuous conversion for selected context.
 *        Correct ADC context should be selected using @ref ADC_SelectContext
 *        before calling this API.
 * @param void
 * @return void
 *
 * @code
 * void main(void)
 * {
 *     ADC_Initialize();
 *     ADC_SelectContext(CONTEXT_1);
 *     ADC_EnableContinuousConversion();
 *     ADC_StartConversion(channel_ANA0);
 *
 *     //Application code
 *
 *     while(1);
 * }
 * @endcode
 */
inline void ADC_EnableContinuousConversion(void);    

/**
 * @ingroup adc_context_scan
 * @brief This API disables continuous conversion for selected context.
 *        Correct ADC context should be selected using @ref ADC_SelectContext
 *        before calling this API.
 * @param void
 * @return void
 *
 * @code
 * void main(void)
 * {
 *     ADC_Initialize();
 *     ADC_SelectContext(CONTEXT_1);
 *     ADC_DisableContinuousConversion();
 *     ADC_StartConversion(channel_ANA0);
 *
 *     //Application code
 *
 *     while(1);
 * }
 * @endcode
 */
inline void ADC_DisableContinuousConversion(void);    

/**
 * @ingroup adc_context_scan
 * @brief This API is used to determine if ADC error has crossed the upper threshold for selected context.
 *        Correct ADC context should be selected using @ref ADC_SelectContext
 *        before calling this API.
 * @param void
 * @return Status of operation.
 *         true - if ERR > UTH
 *         false - if ERR <= UTH
 *
 * @code
 * void main(void)
 * {
 *     bool uThr;
 *     ADC_Initialize();
 *     ADC_SelectContext(CONTEXT_1);
 *     ADC_StartConversion(channel_ANA0);
 *     uThr = ADC_HasErrorCrossedUpperThreshold();
 *
 *     //Application code
 *
 *     while(1);
 * }
 * @endcode
 */
bool ADC_HasErrorCrossedUpperThreshold(void);    

/**
 * @ingroup adc_context_scan
 * @brief This API is used to determine if ADC error is less than the lower threshold for selected context.
 *        Correct ADC context should be selected using @ref ADC_SelectContext
 *        before calling this API.
 * @param void
 * @return Status of operation.
 *         true - if ERR < LTH.
 *         false - if ERR >= LTH.
 *
 * @code
 * void main(void)
 * {
 *     bool ulThr;
 *     ADC_Initialize();
 *     ADC_SelectContext(CONTEXT_1);
 *     ADC_StartConversion(channel_ANA0);
 *     ulThr = ADC_HasErrorCrossedLowerThreshold();
 *
 *     //Application code
 *
 *     while(1);
 * }
 * @endcode
 */
bool ADC_HasErrorCrossedLowerThreshold(void);    

/**
 * @ingroup adc_context_scan
 * @brief This API is used retrieve the multi-stage status for selected context.
 *        Correct ADC context should be selected using @ref ADC_SelectContext
 *        before calling this API.
 * @param void
 * @return Contents of ADC STATUS register.
 *
 * @code
 * void main(void)
 * {
 *     uint8_t status;
 *     ADC_Initialize();
 *     ADC_SelectContext(CONTEXT_1);
 *     ADC_StartConversion(channel_ANA0);
 *     status = ADC_GetConversionStageStatus();
 *
 *     //Application code
 *
 *     while(1);
 * }
 * @endcode
 */
uint8_t ADC_GetConversionStageStatus(void); 

/**
 * @ingroup adc_context_scan
 * @brief This API is used to enable ADC charge pump.
 * @param void
 * @return void
 *
 * @code
 * void main(void)
 * {
 *     ADC_Initialize();
 *     ADC_EnableChargePump();
 *     ADC_StartConversion(channel_ANA0);
 *
 *     //Application code
 *
 *     while(1);
 * }
 * @endcode
 */
inline void ADC_EnableChargePump(void);

/**
 * @ingroup adc_context_scan
 * @brief This API is used to disable ADC charge pump.
 * @param void
 * @return void
 *
 * @code
 * void main(void)
 * {
 *     ADC_Initialize();
 *     ADC_DisableChargePump();
 *     ADC_StartConversion(channel_ANA0);
 *
 *     //Application code
 *
 *     while(1);
 * }
 * @endcode
 */
inline void ADC_DisableChargePump(void);   


/**
 * @ingroup adc_context_scan
 * @brief Setter for A/D conversion ISR.
 * @param[in] InterruptHandler - Pointer to custom ISR.
 * @return void
 *
 * @code
 * void customADIHandler(void)
 * {
 *    //Custom ISR code
 * }
 *
 * void main(void)
 * {
 *     ADC_Initialize();
 *     ADC_SetADIInterruptHandler(customADIHandler);
 *     ADC_SelectContext(CONTEXT_1);
 *     ADC_StartConversion(channel_ANA0);
 *
 *     //Replace with your application code
 *     while(1)
 *     {
 *     }
 * }
 * @endcode
 */
void ADC_SetADIInterruptHandler(void (* InterruptHandler)(void));


/**
 * @ingroup adc_context_scan
 * @brief Setter for A/D Active Clock Tuning ISR.
 * @param[in] InterruptHandler - Pointer to custom ISR.
 * @return void
 *
 * @code
 * void customACTIHandler(void)
 * {
 *    //Custom ISR code
 * }
 *
 * void main(void)
 * {
 *     ADC_Initialize();
 *     ADC_SetActiveClockTuningInterruptHandler(customACTIHandler);
 *     ADC_SelectContext(CONTEXT_1);
 *     ADC_StartConversion(channel_ANA0);
 *
 *     //Replace with your application code
 *     while(1)
 *     {
 *     }
 * }
 * @endcode
 */
void ADC_SetActiveClockTuningInterruptHandler(void (* InterruptHandler)(void));


/**
 * @ingroup adc_context_scan
 * @brief Setter for Context-1 threshold interrupt.
 * @param[in] InterruptHandler - Pointer to custom ISR.
 * @return void
 *
 * @code
 * void customADCH1InterruptHandler(void)
 * {
 *    //Custom ISR code
 * }
 *
 * void main(void)
 * {
 *     ADC_Initialize();
 *     ADC_SetContext1ThresholdInterruptHandler(customADCH1InterruptHandler);
 *     ADC_SelectContext(CONTEXT_1);
 *     ADC_StartConversion(channel_ANA0);
 *
 *     //Replace with your application code
 *     while(1)
 *     {
 *     }
 * }
 * @endcode
 */
void ADC_SetContext1ThresholdInterruptHandler(void (* InterruptHandler)(void));


/**
 * @ingroup adc_context_scan
 * @brief Setter for Context-2 threshold interrupt.
 * @param[in] InterruptHandler - Pointer to custom ISR.
 * @return void
 *
 * @code
 * void customADCH2InterruptHandler(void)
 * {
 *    //Custom ISR code
 * }
 *
 * void main(void)
 * {
 *     ADC_Initialize();
 *     ADC_SetContext2ThresholdInterruptHandler(customADCH1InterruptHandler);
 *     ADC_SelectContext(CONTEXT_2);
 *     ADC_StartConversion(channel_ANA0);
 *
 *     //Replace with your application code
 *     while(1)
 *     {
 *     }
 * }
 * @endcode
 */
void ADC_SetContext2ThresholdInterruptHandler(void (* InterruptHandler)(void));


/**
 * @ingroup adc_context_scan
 * @brief Setter for Context-3 threshold interrupt.
 * @param[in] InterruptHandler - Pointer to custom ISR.
 * @return void
 *
 * @code
 * void customADCH3InterruptHandler(void)
 * {
 *    //Custom ISR code
 * }
 *
 * void main(void)
 * {
 *     ADC_Initialize();
 *     ADC_SetContext3ThresholdInterruptHandler(customADCH1InterruptHandler);
 *     ADC_SelectContext(CONTEXT_3);
 *     ADC_StartConversion(channel_ANA0);
 *
 *     //Replace with your application code
 *     while(1)
 *     {
 *     }
 * }
 * @endcode
 */
void ADC_SetContext3ThresholdInterruptHandler(void (* InterruptHandler)(void));


/**
 * @ingroup adc_context_scan
 * @brief Setter for Context-4 threshold interrupt.
 * @param[in] InterruptHandler - Pointer to custom ISR.
 * @return void
 *
 * @code
 * void customADCH4InterruptHandler(void)
 * {
 *    //Custom ISR code
 * }
 *
 * void main(void)
 * {
 *     ADC_Initialize();
 *     ADC_SetContext4ThresholdInterruptHandler(customADCH1InterruptHandler);
 *     ADC_SelectContext(CONTEXT_4);
 *     ADC_StartConversion(channel_ANA0);
 *
 *     //Replace with your application code
 *     while(1)
 *     {
 *     }
 * }
 * @endcode
 */
void ADC_SetContext4ThresholdInterruptHandler(void (* InterruptHandler)(void));

/**
 * @}
 */
#endif //ADC_H