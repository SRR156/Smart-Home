/*
 * LCD.c
 *
 *  
 *      Author: SRR&MO
 */

#include "LCD_Cfg.h"
#include <util/delay.h>
#include "Std_Types.h"



volatile void Lcd_Cmd(u8 cmd)
{
	(*(volatile u8 *)(command+2)) &= ~(1<<Rs) ;         //Reset Rs pin for Write command


	(*(volatile u8 *)(data+2))     = cmd &0xf0 ;       //send the command high nibble to D4:D7

	(*(volatile u8 *)(command+2)) |= (1<<E) ;          //Set Enable start of high to low pulse to latch data
	_delay_ms(1);
	(*(volatile u8 *)(command+2)) &= ~(1<<E) ;         //Reset Enable pin of the high to low pulse
	_delay_us(100);
	(*(volatile u8 *)(data+2))=cmd<<4 ;                //send the Low nibble to D4:D7

	(*(volatile u8 *)(command+2)) |= (1<<E) ;          //Set Enable start of high to low pulse to latch data
	_delay_ms(1);
	(*(volatile u8 *)(command+2)) &= ~(1<<E) ;
	_delay_us(100);
}

volatile void Lcd_Init()
{
	(*(volatile u8 *)(data+1))=0XFF;                     // Set the data port as O/P

	(*(volatile u8 *)(command +1))=0XFF;                 // Set the command port as O/P

	(*(volatile u8 *)(data+2))=0X00;                     // Initialize data port

	(*(volatile u8 *)(command+2))&= ~(1<<E);            //Reset Enable pin


	Lcd_Cmd(0x33);                 // Set 8-bit mode
	Lcd_Cmd(0x32);                 // Set 8-bit mode again (as indicated in the LCD data sheet)
	Lcd_Cmd(0x28);                 // 4-bit mode operation
	Lcd_Cmd(0x0e);                 // Cursor Underline
	Lcd_Cmd(0x01);                 // Clear screen
	_delay_us(2000);
	Lcd_Cmd(0x06);                 //Cursor Increment
}


volatile void Lcd_DisplayChr(u8 chr)
{
	(*(volatile u8 *)(command+2)) |=(1<<Rs) ;          // Set Rs pin for Data write
	(*(volatile u8 *)(data+2))=chr&0xf0 ;
	(*(volatile u8 *)(command+2)) |=(1<<Rs) ;         // Set Rs pin for Data write
	(*(volatile u8 *)(command+2))|=(1<<E) ;           // Set Enable start of high to low pulse to latch data
	_delay_us(1);
	(*(volatile u8 *)(command+2))&=~(1<<E) ;         //  Reset Enable End of the high to low pulse
	_delay_us(100);
	(*(volatile u8 *)(data+2))=chr<<4 ;


	(*(volatile u8 *)(command+2))|=(1<<E) ;          //Set Enable start of high to low pulse to latch data
	_delay_us(1);
	(*(volatile u8 *)(command+2))&=~(1<<E) ;         //Reset Enable End of the high to low pulse
	_delay_us(100);

}

volatile void Lcd_DisplayStr(u8* str)
{
	u8 i =0 ;
	while(str[i]!=0){Lcd_DisplayChr(str[i]) ; i++;}

}

volatile void Lcd_Cursor_OFF()						// Disable cursor printing
{
	Lcd_Cmd(0x0c);
}

volatile void Lcd_Clear()							// Clear screen
{
	Lcd_Cmd(0x01);
}

void Lcd_GoToRowColumn(u8 row,u8 column)			// Move cursor to the desired position (row and column)
{
	switch (row)
	{
	case 0:
		Lcd_Cmd(0x80+column);
		break;

	case 1:
		Lcd_Cmd(0xC0+column);
		break;
	}
}
