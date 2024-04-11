


















#ifndef RTW_HEADER_backprop99_h_
#define RTW_HEADER_backprop99_h_
#ifndef backprop99_COMMON_INCLUDES_
#define backprop99_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "rtw_continuous.h"
#include "rtw_solver.h"
#endif                                 

#include "backprop99_types.h"


#ifndef rtmGetErrorStatus
#define rtmGetErrorStatus(rtm)         ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
#define rtmSetErrorStatus(rtm, val)    ((rtm)->errorStatus = (val))
#endif


typedef struct {
  real_T x1;                           
  real_T x2;                           
  real_T x3;                           
  real_T L;                            
  real_T u1;                           
  real_T u2;                           
  real_T Lr;                           
  real_T id;                           
  real_T b;                            
} ExternalInputs_backprop99_T;


typedef struct {
  real_T y;                            
} ExternalOutputs_backprop99_T;


struct tag_RTM_backprop99_T {
  const char_T * volatile errorStatus;
};


extern ExternalInputs_backprop99_T backprop99_U;


extern ExternalOutputs_backprop99_T backprop99_Y;


extern void backprop99_initialize(void);
extern void backprop99_step(void);
extern void backprop99_terminate(void);


extern RT_MODEL_backprop99_T *backprop99_M;






















#endif                                 






