/*
 *  	Smart Home project
 *
 *      Author: Mohamed Osman and Saad Radwan
 *      This's the the SPI code for the Master microcontroller
 */

#include <avr/io.h>
#include "avr/interrupt.h"
#include <util/delay.h>
#include <stdio.h>
#include "GlblInterrupt_Interface.h"
#include "Dio_Interface.h"
#include "Spi.h"
#include "Uart_Interface.h"

volatile u8 data_master_master;

ISR(USART_RXC_vect)						// Interrupt service routine (ISR) for USART master reception (HC05 BT module)
{
	DisableAllInterrupts();
	SPI_SPDR_REG = UART_UDR_REG;
	EnableAllInterrupts();
}

ISR(SPI_STC_vect)						// Interrupt service routine (ISR) for SPI master transmission
{
	DisableAllInterrupts();
	EnableAllInterrupts();
}
void welcome(void);
void menu(void);

int main()
{
	Lcd_Init();							// LCD initialization
	Spi_MasterInit();					// SPI master initialization
	UART_Init(UART_BAUDRATE_9600);		// LCD initialization
	EnableAllInterrupts();				// Enable global interrupt

	welcome();							// Welcome message display
	_delay_ms(2000);
	menu();								// Main menu display

	while(1)
	{
		;
	}

	return(0);
}

void welcome(void)
{
	Lcd_Clear();
	Lcd_GoToRowColumn(0,0);
	Lcd_DisplayStr("welcome to...");
	Lcd_GoToRowColumn(1,0);
	Lcd_DisplayStr("our smart home");
}

void menu(void)
{
	Lcd_Clear();
	Lcd_GoToRowColumn(0,0);
	Lcd_DisplayStr("1-LED1	 2-Buzzer");
	Lcd_GoToRowColumn(1,0);
	Lcd_DisplayStr("3-Relay");

}
