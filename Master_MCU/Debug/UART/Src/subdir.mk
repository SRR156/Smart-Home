################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../UART/Src/Uart.c 

OBJS += \
./UART/Src/Uart.o 

C_DEPS += \
./UART/Src/Uart.d 


# Each subdirectory must supply rules for building sources it contributes
UART/Src/%.o: ../UART/Src/%.c UART/Src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"C:\Users\Delladmin\Downloads\Eclipse\USART_AMIT_Trial_Master\GLBL_INTERPT\Inc" -I"C:\Users\Delladmin\Downloads\Eclipse\USART_AMIT_Trial_Master\SPI\Inc" -I"C:\Users\Delladmin\Downloads\Eclipse\USART_AMIT_Trial_Master\DIO\Inc" -I"C:\Users\Delladmin\Downloads\Eclipse\USART_AMIT_Trial_Master\LCD\Inc" -I"C:\Users\Delladmin\Downloads\Eclipse\USART_AMIT_Trial_Master\LIB" -I"C:\Users\Delladmin\Downloads\Eclipse\USART_AMIT_Trial_Master\UART\Inc" -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega32 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


