/*
 * File: rtGetNaN.c
 *
 * Code generated for Simulink model 'power_wind_dfig_avg'.
 *
 * Model version                  : 1.542
 * Simulink Coder version         : 8.2 (R2012a) 29-Dec-2011
 * TLC version                    : 8.2 (Dec 29 2011)
 * C/C++ source code generated on : Fri Jun 22 12:09:08 2012
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: 32-bit Generic
 * Code generation objectives: Unspecified
 * Validation result: Not run
 *
 * Modification: None. Used to overwrite little endian replacment
 *				 by big endian caused by "MatlabRscadCGenerator"
 */

/*
 * Abstract:
 *      Function to intialize non-finite, NaN
 */
#include "rtGetNaN.h"
#define NumBitsPerChar                 8U

/*
 * Initialize rtNaN needed by the generated code.
 * NaN is initialized as non-signaling. Assumes IEEE.
 */
real_T rtGetNaN(void)
{
  size_t bitsPerReal = sizeof(real_T) * (NumBitsPerChar);
  real_T nan = 0.0;

  real_T out = 0.0;

  if (bitsPerReal == 32U) {
    nan = rtGetNaNF();
  } else {
    uint16_T one = 1U;
    enum {
      LittleEndian,
      BigEndian
    } machByteOrder = (*((uint8_T *) &one) == 1U) ? LittleEndian : BigEndian;
    switch (machByteOrder) {
     case LittleEndian:
      {
        union {
          LittleEndianIEEEDouble bitVal;
          real_T fltVal;
        } tmpVal;

        tmpVal.bitVal.words.wordH = 0xFFF80000U;
        tmpVal.bitVal.words.wordL = 0x00000000U;
        nan = tmpVal.fltVal;

		out = 3.0;

        break;
      }

     case BigEndian:
      {
        union {
          BigEndianIEEEDouble bitVal;
          real_T fltVal;
        } tmpVal;

        tmpVal.bitVal.words.wordH = 0x7FFFFFFFU;
        tmpVal.bitVal.words.wordL = 0xFFFFFFFFU;
        nan = tmpVal.fltVal;

		out = 4.0;

        break;
      }
    }
  }

  return out;//nan;
}

/*
 * Initialize rtNaNF needed by the generated code.
 * NaN is initialized as non-signaling. Assumes IEEE.
 */
real32_T rtGetNaNF(void)
{
  IEEESingle nanF = { { 0 } };

  real32_T out = 0.0;

  uint16_T one = 1U;
  enum {
    LittleEndian,
    BigEndian
  } machByteOrder = (*((uint8_T *) &one) == 1U) ? LittleEndian : BigEndian;
  switch (machByteOrder) {
   case LittleEndian:
    {
      nanF.wordL.wordLuint = 0xFFC00000U;
	  out = 1.0;

      break;
    }

   case BigEndian:
    {
      nanF.wordL.wordLuint = 0x7FFFFFFFU;
	  out = 2.0;

      break;
    }
  }

  return out;//nanF.wordL.wordLreal;
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
