/*
 *  	Smart Home Porject
 *      Author: Mohamed Osman and Saad Radwan
 *      This's the the SPI code for the Slave microcontroller
 */


#include <avr/io.h>
#include <util/delay.h>
#include <stdio.h>
#include "Spi.h"
#include "LCD_Interface.h"
#include "Led_Interface.h"
#include "Buzzer_Interface.h"
#include "Relay_Interface.h"

volatile u8 data = 8;				// Global variable to receive data from master

int main()
{
	Led_Init();					// LED initialization
	Buzzer_Init();				// Buzzer initialization
	Relay_Init();				// Relay initialization
	Lcd_Init();					// LCD initialization
	Spi_SlaveInit();			// SPI slave initialization


	while(1)
	{
		data = Spi_SlaveRead();	//
		Lcd_DisplayChr(data);

		if(data == '1')
		{
			Lcd_Clear();
			Lcd_GoToRowColumn(0,0);
			Buzzer_TurnOFF();
			Relay_TurnOFF();
			Lcd_DisplayStr("LED1 ON\n");
			Led_Toggle(LED1);
			data = 0;
		}
		else if(data == '2')
		{
			Lcd_Clear();
			Lcd_GoToRowColumn(0,0);

			Led_OFF(LED1);
			Relay_TurnOFF();

			Lcd_DisplayStr("BUZZER ON");
			Buzzer_TurnON();
			_delay_ms(1000);
			Buzzer_TurnOFF();

			data = 0;
		}
		else if(data == '3')
		{
			Lcd_Clear();
			Lcd_GoToRowColumn(0,0);

			Led_OFF(LED1);
			Buzzer_TurnOFF();

			Lcd_DisplayStr("RELAY ON");
			Relay_TurnON();
			_delay_ms(1000);
			Relay_TurnOFF();

			data = 0;
		}
	}
	return(0);
}
