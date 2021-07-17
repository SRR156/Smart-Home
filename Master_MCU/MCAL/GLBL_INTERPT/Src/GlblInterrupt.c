/*
 *      Author: SRR&MO
 */

#include "GlblInterrupt_Interface.h"
void EnableAllInterrupts()
{
	SET_BIT(AVR_SREG_REG,I_BIT);
}
void DisableAllInterrupts()
{
	CLEAR_BIT(AVR_SREG_REG,I_BIT);
}
