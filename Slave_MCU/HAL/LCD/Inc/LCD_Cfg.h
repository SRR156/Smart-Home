/*
 * LCD_Cfg.h
 *
 * 
 *      Author: SRR&MO
 *      This configuration file helps user to customize
 *       Data and Command ports
 */

 /*   */
#ifndef INC_LCD_CFG_H_
#define INC_LCD_CFG_H_

#define A  		(0x39)	 // PORT A REG
#define B  		(0x36)	 // PORT B REG
#define C  		(0x33)	 // PORT C REG
#define D  		(0x30)	 // PORT D REG

#define data 	(A)		 // Data pins port (port A)
#define command (B)		 // Command pins port (port B)
#define Rs 		(1)		 // RS terminal
#define E 		(3)		 // Enable terminal

#endif /* INC_LCD_CFG_H_ */
