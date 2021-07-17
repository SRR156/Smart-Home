/*
 * Buzzer_Interface.h
 *
 *  
 *      Author: SRR &MO
 */

#ifndef HAL_BUZZER_INC_BUZZER_INTERFACE_H_
#define HAL_BUZZER_INC_BUZZER_INTERFACE_H_

#include "Dio_Interface.h"
#include "Buzzer_Cfg.h"

void Buzzer_Init(void);
void Buzzer_TurnON(void);
void Buzzer_TurnOFF(void);
void Buzzer_Toggle(void);

#endif /* HAL_BUZZER_INC_BUZZER_INTERFACE_H_ */
