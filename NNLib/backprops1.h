


















#ifndef RTW_HEADER_backprops1_h_
#define RTW_HEADER_backprops1_h_
#ifndef backprops1_COMMON_INCLUDES_
#define backprops1_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "rtw_continuous.h"
#include "rtw_solver.h"
#endif                                 

#include "backprops1_types.h"


#ifndef rtmGetErrorStatus
#define rtmGetErrorStatus(rtm)         ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
#define rtmSetErrorStatus(rtm, val)    ((rtm)->errorStatus = (val))
#endif


typedef struct {
  real_T x1;                           
  real_T x2;                           
  real_T u1;                           
  real_T Lr;                           
  real_T id;                           
  real_T b;                            
  real_T a;                            
} ExternalInputs_backprops1_T;


typedef struct {
  real_T y;                            
} ExternalOutputs_backprops1_T;


struct tag_RTM_backprops1_T {
  const char_T * volatile errorStatus;
};


extern ExternalInputs_backprops1_T backprops1_U;


extern ExternalOutputs_backprops1_T backprops1_Y;


extern void backprops1_initialize(void);
extern void backprops1_step(void);
extern void backprops1_terminate(void);


extern RT_MODEL_backprops1_T *backprops1_M;






















#endif                                 






