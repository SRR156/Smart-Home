################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../SPI/Src/Spi.c 

OBJS += \
./SPI/Src/Spi.o 

C_DEPS += \
./SPI/Src/Spi.d 


# Each subdirectory must supply rules for building sources it contributes
SPI/Src/%.o: ../SPI/Src/%.c SPI/Src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"C:\Users\Delladmin\Downloads\Eclipse\USART_AMIT_Trial_Master\GLBL_INTERPT\Inc" -I"C:\Users\Delladmin\Downloads\Eclipse\USART_AMIT_Trial_Master\SPI\Inc" -I"C:\Users\Delladmin\Downloads\Eclipse\USART_AMIT_Trial_Master\DIO\Inc" -I"C:\Users\Delladmin\Downloads\Eclipse\USART_AMIT_Trial_Master\LCD\Inc" -I"C:\Users\Delladmin\Downloads\Eclipse\USART_AMIT_Trial_Master\LIB" -I"C:\Users\Delladmin\Downloads\Eclipse\USART_AMIT_Trial_Master\UART\Inc" -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega32 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


