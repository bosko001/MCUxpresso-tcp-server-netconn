################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lwip/src/core/altcp.c \
../lwip/src/core/altcp_alloc.c \
../lwip/src/core/altcp_tcp.c \
../lwip/src/core/def.c \
../lwip/src/core/dns.c \
../lwip/src/core/inet_chksum.c \
../lwip/src/core/init.c \
../lwip/src/core/ip.c \
../lwip/src/core/mem.c \
../lwip/src/core/memp.c \
../lwip/src/core/netif.c \
../lwip/src/core/pbuf.c \
../lwip/src/core/raw.c \
../lwip/src/core/stats.c \
../lwip/src/core/sys.c \
../lwip/src/core/tcp.c \
../lwip/src/core/tcp_in.c \
../lwip/src/core/tcp_out.c \
../lwip/src/core/timeouts.c \
../lwip/src/core/udp.c 

OBJS += \
./lwip/src/core/altcp.o \
./lwip/src/core/altcp_alloc.o \
./lwip/src/core/altcp_tcp.o \
./lwip/src/core/def.o \
./lwip/src/core/dns.o \
./lwip/src/core/inet_chksum.o \
./lwip/src/core/init.o \
./lwip/src/core/ip.o \
./lwip/src/core/mem.o \
./lwip/src/core/memp.o \
./lwip/src/core/netif.o \
./lwip/src/core/pbuf.o \
./lwip/src/core/raw.o \
./lwip/src/core/stats.o \
./lwip/src/core/sys.o \
./lwip/src/core/tcp.o \
./lwip/src/core/tcp_in.o \
./lwip/src/core/tcp_out.o \
./lwip/src/core/timeouts.o \
./lwip/src/core/udp.o 

C_DEPS += \
./lwip/src/core/altcp.d \
./lwip/src/core/altcp_alloc.d \
./lwip/src/core/altcp_tcp.d \
./lwip/src/core/def.d \
./lwip/src/core/dns.d \
./lwip/src/core/inet_chksum.d \
./lwip/src/core/init.d \
./lwip/src/core/ip.d \
./lwip/src/core/mem.d \
./lwip/src/core/memp.d \
./lwip/src/core/netif.d \
./lwip/src/core/pbuf.d \
./lwip/src/core/raw.d \
./lwip/src/core/stats.d \
./lwip/src/core/sys.d \
./lwip/src/core/tcp.d \
./lwip/src/core/tcp_in.d \
./lwip/src/core/tcp_out.d \
./lwip/src/core/timeouts.d \
./lwip/src/core/udp.d 


# Each subdirectory must supply rules for building sources it contributes
lwip/src/core/%.o: ../lwip/src/core/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MK64FN1M0VLL12 -DCPU_MK64FN1M0VLL12_cm4 -DUSE_RTOS=1 -DPRINTF_ADVANCED_ENABLE=1 -DFRDM_K64F -DFREEDOM -DSERIAL_PORT_TYPE_UART=1 -DFSL_RTOS_FREE_RTOS -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"D:\Programming\nxp\tcp-server\board" -I"D:\Programming\nxp\tcp-server\source" -I"D:\Programming\nxp\tcp-server\mdio" -I"D:\Programming\nxp\tcp-server\phy" -I"D:\Programming\nxp\tcp-server\lwip\contrib\apps\tcpecho" -I"D:\Programming\nxp\tcp-server\lwip\port" -I"D:\Programming\nxp\tcp-server\lwip\src" -I"D:\Programming\nxp\tcp-server\lwip\src\include" -I"D:\Programming\nxp\tcp-server\drivers" -I"D:\Programming\nxp\tcp-server\utilities" -I"D:\Programming\nxp\tcp-server\device" -I"D:\Programming\nxp\tcp-server\component\uart" -I"D:\Programming\nxp\tcp-server\component\serial_manager" -I"D:\Programming\nxp\tcp-server\component\lists" -I"D:\Programming\nxp\tcp-server\CMSIS" -I"D:\Programming\nxp\tcp-server\freertos\freertos_kernel\include" -I"D:\Programming\nxp\tcp-server\freertos\freertos_kernel\portable\GCC\ARM_CM4F" -I"D:\Programming\nxp\dnet\mdio" -I"${workspace_loc:/dnet/lwip/template{MacroEnd}" -I"D:\Programming\nxp\dnet\freertos\freertos_kernel\include" -I"D:\Programming\nxp\dnet\mmcau" -I"D:\Programming\nxp\dnet\device" -I"D:\Programming\nxp\dnet\mbedtls\include" -I"D:\Programming\nxp\dnet\CMSIS" -I"D:\Programming\nxp\dnet\source" -I"D:\Programming\nxp\dnet\utilities" -I"D:\Programming\nxp\dnet\lwip\src\include" -I"D:\Programming\nxp\dnet\lwip\port" -I"D:\Programming\nxp\dnet\phy" -I"D:\Programming\nxp\dnet\CMSIS_driver" -I"D:\Programming\nxp\dnet\board" -I"D:\Programming\nxp\dnet\drivers" -I"D:\Programming\nxp\dnet\accel" -I"D:\Programming\nxp\dnet\component\i2c" -I"D:\Programming\nxp\dnet\component\lists" -I"D:\Programming\nxp\dnet\component\osa" -I"D:\Programming\nxp\dnet\component\serial_manager" -I"D:\Programming\nxp\dnet\component\uart" -I"D:\Programming\nxp\dnet\drivers\freertos" -I"D:\Programming\nxp\dnet\lcd" -I"D:\Programming\nxp\dnet\lwip\template" -O0 -fno-common -g3 -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


