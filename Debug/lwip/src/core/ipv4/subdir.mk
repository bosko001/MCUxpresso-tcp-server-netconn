################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lwip/src/core/ipv4/acd.c \
../lwip/src/core/ipv4/autoip.c \
../lwip/src/core/ipv4/dhcp.c \
../lwip/src/core/ipv4/etharp.c \
../lwip/src/core/ipv4/icmp.c \
../lwip/src/core/ipv4/igmp.c \
../lwip/src/core/ipv4/ip4.c \
../lwip/src/core/ipv4/ip4_addr.c \
../lwip/src/core/ipv4/ip4_frag.c 

OBJS += \
./lwip/src/core/ipv4/acd.o \
./lwip/src/core/ipv4/autoip.o \
./lwip/src/core/ipv4/dhcp.o \
./lwip/src/core/ipv4/etharp.o \
./lwip/src/core/ipv4/icmp.o \
./lwip/src/core/ipv4/igmp.o \
./lwip/src/core/ipv4/ip4.o \
./lwip/src/core/ipv4/ip4_addr.o \
./lwip/src/core/ipv4/ip4_frag.o 

C_DEPS += \
./lwip/src/core/ipv4/acd.d \
./lwip/src/core/ipv4/autoip.d \
./lwip/src/core/ipv4/dhcp.d \
./lwip/src/core/ipv4/etharp.d \
./lwip/src/core/ipv4/icmp.d \
./lwip/src/core/ipv4/igmp.d \
./lwip/src/core/ipv4/ip4.d \
./lwip/src/core/ipv4/ip4_addr.d \
./lwip/src/core/ipv4/ip4_frag.d 


# Each subdirectory must supply rules for building sources it contributes
lwip/src/core/ipv4/%.o: ../lwip/src/core/ipv4/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MK64FN1M0VLL12 -DCPU_MK64FN1M0VLL12_cm4 -DUSE_RTOS=1 -DPRINTF_ADVANCED_ENABLE=1 -DFRDM_K64F -DFREEDOM -DSERIAL_PORT_TYPE_UART=1 -DFSL_RTOS_FREE_RTOS -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"D:\Programming\nxp\tcp-server\board" -I"D:\Programming\nxp\tcp-server\source" -I"D:\Programming\nxp\tcp-server\mdio" -I"D:\Programming\nxp\tcp-server\phy" -I"D:\Programming\nxp\tcp-server\lwip\contrib\apps\tcpecho" -I"D:\Programming\nxp\tcp-server\lwip\port" -I"D:\Programming\nxp\tcp-server\lwip\src" -I"D:\Programming\nxp\tcp-server\lwip\src\include" -I"D:\Programming\nxp\tcp-server\drivers" -I"D:\Programming\nxp\tcp-server\utilities" -I"D:\Programming\nxp\tcp-server\device" -I"D:\Programming\nxp\tcp-server\component\uart" -I"D:\Programming\nxp\tcp-server\component\serial_manager" -I"D:\Programming\nxp\tcp-server\component\lists" -I"D:\Programming\nxp\tcp-server\CMSIS" -I"D:\Programming\nxp\tcp-server\freertos\freertos_kernel\include" -I"D:\Programming\nxp\tcp-server\freertos\freertos_kernel\portable\GCC\ARM_CM4F" -I"D:\Programming\nxp\dnet\mdio" -I"${workspace_loc:/dnet/lwip/template{MacroEnd}" -I"D:\Programming\nxp\dnet\freertos\freertos_kernel\include" -I"D:\Programming\nxp\dnet\mmcau" -I"D:\Programming\nxp\dnet\device" -I"D:\Programming\nxp\dnet\mbedtls\include" -I"D:\Programming\nxp\dnet\CMSIS" -I"D:\Programming\nxp\dnet\source" -I"D:\Programming\nxp\dnet\utilities" -I"D:\Programming\nxp\dnet\lwip\src\include" -I"D:\Programming\nxp\dnet\lwip\port" -I"D:\Programming\nxp\dnet\phy" -I"D:\Programming\nxp\dnet\CMSIS_driver" -I"D:\Programming\nxp\dnet\board" -I"D:\Programming\nxp\dnet\drivers" -I"D:\Programming\nxp\dnet\accel" -I"D:\Programming\nxp\dnet\component\i2c" -I"D:\Programming\nxp\dnet\component\lists" -I"D:\Programming\nxp\dnet\component\osa" -I"D:\Programming\nxp\dnet\component\serial_manager" -I"D:\Programming\nxp\dnet\component\uart" -I"D:\Programming\nxp\dnet\drivers\freertos" -I"D:\Programming\nxp\dnet\lcd" -I"D:\Programming\nxp\dnet\lwip\template" -O0 -fno-common -g3 -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


