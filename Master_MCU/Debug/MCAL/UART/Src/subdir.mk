################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../MCAL/UART/Src/Uart.c 

OBJS += \
./MCAL/UART/Src/Uart.o 

C_DEPS += \
./MCAL/UART/Src/Uart.d 


# Each subdirectory must supply rules for building sources it contributes
MCAL/UART/Src/%.o: ../MCAL/UART/Src/%.c MCAL/UART/Src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"C:\Users\sreda\eclipse-workspace\Smart_Home_Proj\Master_MCU\HAL\LCD\Inc" -I"C:\Users\sreda\eclipse-workspace\Smart_Home_Proj\Master_MCU\MCAL\DIO\Inc" -I"C:\Users\sreda\eclipse-workspace\Smart_Home_Proj\Master_MCU\MCAL\GLBL_INTERPT\Inc" -I"C:\Users\sreda\eclipse-workspace\Smart_Home_Proj\Master_MCU\MCAL\SPI\Inc" -I"C:\Users\sreda\eclipse-workspace\Smart_Home_Proj\Master_MCU\MCAL\UART\Inc" -I"C:\Users\sreda\eclipse-workspace\Smart_Home_Proj\Master_MCU\HAL\BUZZER\Inc" -I"C:\Users\sreda\eclipse-workspace\Smart_Home_Proj\Master_MCU\HAL\LED\Inc" -I"C:\Users\sreda\eclipse-workspace\Smart_Home_Proj\Master_MCU\HAL\RELAY\Inc" -I"C:\Users\sreda\eclipse-workspace\Smart_Home_Proj\Master_MCU\LIB" -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega32 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


