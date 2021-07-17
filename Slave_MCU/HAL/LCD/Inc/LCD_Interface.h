/*
 * LCD_Interface.h
 *
 *      Author: SRR&MO
 */

#ifndef INC_LCD_INTERFACE_H_
#define INC_LCD_INTERFACE_H_

#include "Std_Types.h"

volatile void Lcd_Init();
volatile void Lcd_Cmd(u8 cmd);
volatile void Lcd_DisplayChr(u8 chr);
volatile void Lcd_DisplayStr(u8* str);
volatile void Lcd_Cursor_OFF();
volatile void Lcd_Clear();
void Lcd_GoToRowColumn(u8 row,u8 column);

#endif /* INC_LCD_INTERFACE_H_ */
