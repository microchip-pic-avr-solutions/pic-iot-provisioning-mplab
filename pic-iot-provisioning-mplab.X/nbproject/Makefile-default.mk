#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pic-iot-provisioning-mplab.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pic-iot-provisioning-mplab.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=command_handler/parser/mc_parser.c command_handler/parser/mc_housekeeping.c command_handler/mc_argparser.c command_handler/mc_board.c command_handler/mc_commands.c mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.c mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.c mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.c mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.c mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.c mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.c mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.c mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.c mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.c mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.c mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.c mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.c mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.c mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.c mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.c mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.c mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.c mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.c mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.c mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.c mcc_generated_files/CryptoAuthenticationLibrary/atca_command.c mcc_generated_files/CryptoAuthenticationLibrary/atca_device.c mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.c mcc_generated_files/drivers/i2c_types.c mcc_generated_files/drivers/i2c_simple_master.c mcc_generated_files/drivers/spi_master.c mcc_generated_files/drivers/i2c_master.c mcc_generated_files/winc/driver/winc_spi.c mcc_generated_files/winc/driver/winc_hif.c mcc_generated_files/winc/driver/winc_asic.c mcc_generated_files/winc/driver/winc_adapter.c mcc_generated_files/winc/driver/winc_drv.c mcc_generated_files/winc/m2m/m2m_ota.c mcc_generated_files/winc/m2m/m2m_fwinfo.c mcc_generated_files/winc/m2m/m2m_ssl.c mcc_generated_files/winc/m2m/m2m_wifi.c mcc_generated_files/winc/m2m/m2m_periph.c mcc_generated_files/winc/m2m/m2m_crypto.c mcc_generated_files/winc/socket/socket.c mcc_generated_files/winc/spi_flash/flexible_flash.c mcc_generated_files/winc/spi_flash/spi_flash.c mcc_generated_files/system.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/i2c2_driver.c mcc_generated_files/CryptoAuth_init.c mcc_generated_files/delay.c mcc_generated_files/clock.c mcc_generated_files/interrupt_manager.c mcc_generated_files/traps.c mcc_generated_files/spi1_driver.c mcc_generated_files/uart1.c conversions.c ecc_commands.c main.c winc_commands.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/command_handler/parser/mc_parser.o ${OBJECTDIR}/command_handler/parser/mc_housekeeping.o ${OBJECTDIR}/command_handler/mc_argparser.o ${OBJECTDIR}/command_handler/mc_board.o ${OBJECTDIR}/command_handler/mc_commands.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o ${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o ${OBJECTDIR}/mcc_generated_files/delay.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/spi1_driver.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/conversions.o ${OBJECTDIR}/ecc_commands.o ${OBJECTDIR}/main.o ${OBJECTDIR}/winc_commands.o
POSSIBLE_DEPFILES=${OBJECTDIR}/command_handler/parser/mc_parser.o.d ${OBJECTDIR}/command_handler/parser/mc_housekeeping.o.d ${OBJECTDIR}/command_handler/mc_argparser.o.d ${OBJECTDIR}/command_handler/mc_board.o.d ${OBJECTDIR}/command_handler/mc_commands.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o.d ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o.d ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o.d ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o.d ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o.d ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o.d ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o.d ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o.d ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o.d ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o.d ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o.d ${OBJECTDIR}/mcc_generated_files/delay.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/traps.o.d ${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d ${OBJECTDIR}/mcc_generated_files/uart1.o.d ${OBJECTDIR}/conversions.o.d ${OBJECTDIR}/ecc_commands.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/winc_commands.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/command_handler/parser/mc_parser.o ${OBJECTDIR}/command_handler/parser/mc_housekeeping.o ${OBJECTDIR}/command_handler/mc_argparser.o ${OBJECTDIR}/command_handler/mc_board.o ${OBJECTDIR}/command_handler/mc_commands.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o ${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o ${OBJECTDIR}/mcc_generated_files/delay.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/spi1_driver.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/conversions.o ${OBJECTDIR}/ecc_commands.o ${OBJECTDIR}/main.o ${OBJECTDIR}/winc_commands.o

# Source Files
SOURCEFILES=command_handler/parser/mc_parser.c command_handler/parser/mc_housekeeping.c command_handler/mc_argparser.c command_handler/mc_board.c command_handler/mc_commands.c mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.c mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.c mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.c mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.c mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.c mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.c mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.c mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.c mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.c mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.c mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.c mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.c mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.c mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.c mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.c mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.c mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.c mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.c mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.c mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.c mcc_generated_files/CryptoAuthenticationLibrary/atca_command.c mcc_generated_files/CryptoAuthenticationLibrary/atca_device.c mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.c mcc_generated_files/drivers/i2c_types.c mcc_generated_files/drivers/i2c_simple_master.c mcc_generated_files/drivers/spi_master.c mcc_generated_files/drivers/i2c_master.c mcc_generated_files/winc/driver/winc_spi.c mcc_generated_files/winc/driver/winc_hif.c mcc_generated_files/winc/driver/winc_asic.c mcc_generated_files/winc/driver/winc_adapter.c mcc_generated_files/winc/driver/winc_drv.c mcc_generated_files/winc/m2m/m2m_ota.c mcc_generated_files/winc/m2m/m2m_fwinfo.c mcc_generated_files/winc/m2m/m2m_ssl.c mcc_generated_files/winc/m2m/m2m_wifi.c mcc_generated_files/winc/m2m/m2m_periph.c mcc_generated_files/winc/m2m/m2m_crypto.c mcc_generated_files/winc/socket/socket.c mcc_generated_files/winc/spi_flash/flexible_flash.c mcc_generated_files/winc/spi_flash/spi_flash.c mcc_generated_files/system.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/i2c2_driver.c mcc_generated_files/CryptoAuth_init.c mcc_generated_files/delay.c mcc_generated_files/clock.c mcc_generated_files/interrupt_manager.c mcc_generated_files/traps.c mcc_generated_files/spi1_driver.c mcc_generated_files/uart1.c conversions.c ecc_commands.c main.c winc_commands.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/pic-iot-provisioning-mplab.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ128GA705
MP_LINKER_FILE_OPTION=,--script=p24FJ128GA705.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/command_handler/parser/mc_parser.o: command_handler/parser/mc_parser.c  .generated_files/flags/default/e9f78c773cad1b5c3d1e703165dbc0c500efe34b .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/command_handler/parser" 
	@${RM} ${OBJECTDIR}/command_handler/parser/mc_parser.o.d 
	@${RM} ${OBJECTDIR}/command_handler/parser/mc_parser.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  command_handler/parser/mc_parser.c  -o ${OBJECTDIR}/command_handler/parser/mc_parser.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/command_handler/parser/mc_parser.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/command_handler/parser/mc_housekeeping.o: command_handler/parser/mc_housekeeping.c  .generated_files/flags/default/733a3eaa484de952c339cad2ea1b48a09526ddc4 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/command_handler/parser" 
	@${RM} ${OBJECTDIR}/command_handler/parser/mc_housekeeping.o.d 
	@${RM} ${OBJECTDIR}/command_handler/parser/mc_housekeeping.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  command_handler/parser/mc_housekeeping.c  -o ${OBJECTDIR}/command_handler/parser/mc_housekeeping.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/command_handler/parser/mc_housekeeping.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/command_handler/mc_argparser.o: command_handler/mc_argparser.c  .generated_files/flags/default/ab6d082cbbb9e79355c566574fe3f8b02823f0de .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/command_handler" 
	@${RM} ${OBJECTDIR}/command_handler/mc_argparser.o.d 
	@${RM} ${OBJECTDIR}/command_handler/mc_argparser.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  command_handler/mc_argparser.c  -o ${OBJECTDIR}/command_handler/mc_argparser.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/command_handler/mc_argparser.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/command_handler/mc_board.o: command_handler/mc_board.c  .generated_files/flags/default/f5b18011e7496f60f7dbfcfa74fe58eeebe4bcf3 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/command_handler" 
	@${RM} ${OBJECTDIR}/command_handler/mc_board.o.d 
	@${RM} ${OBJECTDIR}/command_handler/mc_board.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  command_handler/mc_board.c  -o ${OBJECTDIR}/command_handler/mc_board.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/command_handler/mc_board.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/command_handler/mc_commands.o: command_handler/mc_commands.c  .generated_files/flags/default/7ca3834082d831b150c507947e9d5c23b9e3b9a3 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/command_handler" 
	@${RM} ${OBJECTDIR}/command_handler/mc_commands.o.d 
	@${RM} ${OBJECTDIR}/command_handler/mc_commands.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  command_handler/mc_commands.c  -o ${OBJECTDIR}/command_handler/mc_commands.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/command_handler/mc_commands.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.c  .generated_files/flags/default/943e2cb10cea6514a8b75eba90cea1abb45aac23 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.c  .generated_files/flags/default/e62dff31820f5e2fd6b167307c2067b909b166bd .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.c  .generated_files/flags/default/b3540cc165bdae388b035067bdf59e2d338f3802 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.c  .generated_files/flags/default/c833dfd44eeab01de1af33ecc974c4aa0958b2c1 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.c  .generated_files/flags/default/c0323943b13c7295a38175c6f86aefaeace1fef7 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.c  .generated_files/flags/default/e16473ac832608ea85993a45369ca545c2f71491 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.c  .generated_files/flags/default/ec494ae619ea55c643fb3c6986dad31ae5ea02d9 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.c  .generated_files/flags/default/3ca117f9f69b7ccc4ab8dbcfce6ac978c013d0b0 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.c  .generated_files/flags/default/b5f29c13624df4bd318d7ea63bc34bb2372122da .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.c  .generated_files/flags/default/63d1ae0abc43c6c9acdbd29cb68b19b29cc7214 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.c  .generated_files/flags/default/2006b5f5c70c6c886622c37ef0ffe933d6561bac .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.c  .generated_files/flags/default/3c2ac9125a9a2982d249e7a0241595a8ec14776d .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.c  .generated_files/flags/default/53f176e3cec9ba45396568aff91bad798e135710 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.c  .generated_files/flags/default/95f6c44b68e787f70446002a32efb274d8111349 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.c  .generated_files/flags/default/a8b9b4cd1100db921dd04df259e990c04e503260 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.c  .generated_files/flags/default/6cf281a98a6043eda397985087df08fb2672ab3d .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.c  .generated_files/flags/default/c11fc42310540885ce4f86e1ae26a41e3448d989 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.c  .generated_files/flags/default/d46a82f4fe9de3278b8c843b3fdafe68dbef0444 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.c  .generated_files/flags/default/9707266541c4e7866076fc4f281cadb16cc9f3f2 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.c  .generated_files/flags/default/fc3d145897b387777877f17db216d1f059101d79 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.c  .generated_files/flags/default/ed236931332657e2720ca6d85cdd6bafef63edf0 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.c  .generated_files/flags/default/483d8ec730cde63216f9d37b8b3d53538fca634 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.c  .generated_files/flags/default/5b0a4ec318fb5761442044630ae54a98966c8d6e .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.c  .generated_files/flags/default/b6d2de03431425eb496dd8ec3847a336dc01f8ab .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.c  .generated_files/flags/default/46ee224d1a522d5fd5f78508a0fff79de867da0f .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.c  .generated_files/flags/default/6bbfdeafb57cda9312840d36a5e9357d7ef84699 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.c  .generated_files/flags/default/b9262d4a66cf49113a7d76b33c3277d52aaa4fda .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.c  .generated_files/flags/default/465902f0e2535daba4ebcd4ce6bcf06c908dcce .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.c  .generated_files/flags/default/737f3a13f5e6402516330f2c18e8744b01003e3e .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.c  .generated_files/flags/default/f9870f14b4c7c2f2f8c1ed2ab0a7b47288902883 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.c  .generated_files/flags/default/10f331249c1188d4968878a9ff3b11192a6a92fd .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.c  .generated_files/flags/default/f1bcf6c49079f875ed3a3ec470ec4dee49b74418 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.c  .generated_files/flags/default/b74473b8d9abad79e8e4fc976bfedcb6f9c40562 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.c  .generated_files/flags/default/6241631de33977b44af0dcac0074720037d4703e .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.c  .generated_files/flags/default/9e067e296366b3114324f3de3eec49c50b44fcae .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.c  .generated_files/flags/default/6b9987a433b7647fd6e4377e642b46d1fa00c599 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.c  .generated_files/flags/default/a63dbb0f910b75311976b28e28879d3e0ae0c5a2 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.c  .generated_files/flags/default/c138c193120693acf886087d165fd07e5b790899 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o: mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.c  .generated_files/flags/default/232e9f1566810e5c1eac28510d3d2d8ec1a3e553 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o: mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.c  .generated_files/flags/default/df7646ee5c098ae5562f6e5a356cb95bc0393acc .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o: mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.c  .generated_files/flags/default/11e0b4e7dbdfe1501d73aaada2bade3bd0c25b1a .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o: mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.c  .generated_files/flags/default/cd25f4e9f0ebe367ed909f3a7bc435a82dff4d00 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o: mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.c  .generated_files/flags/default/4fffbf889c2e003fad174ef34053e3149458e5de .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.c  .generated_files/flags/default/632b1edfc50ace5698a823cab8b584106dda2ebc .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.c  .generated_files/flags/default/ca9a46a31d14db670998e47bf8025b8526818bae .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_command.c  .generated_files/flags/default/fb3fc06fcd1450e98e4eb946d06acdcb7e30760d .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_command.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_device.c  .generated_files/flags/default/7c72689b42ca843c11762d6007542361125a0edf .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_device.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.c  .generated_files/flags/default/7116b162af4fc803229d06536e0cc8d5af06813a .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o: mcc_generated_files/drivers/i2c_types.c  .generated_files/flags/default/4cf6a0379255220113ff6e4023474e379d24030b .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_types.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o: mcc_generated_files/drivers/i2c_simple_master.c  .generated_files/flags/default/a85d8dea08ffa42cb62fdbfd6b770a1da1f64cc6 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_simple_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o: mcc_generated_files/drivers/spi_master.c  .generated_files/flags/default/2d99d11ce4df929877c9db8e08654323f6d072d8 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/spi_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o: mcc_generated_files/drivers/i2c_master.c  .generated_files/flags/default/7afe51fecbe6a031cfab5006f75c07993a579c55 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o: mcc_generated_files/winc/driver/winc_spi.c  .generated_files/flags/default/d03b918a8e4a9e712daf2886ea74b58321384218 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_spi.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o: mcc_generated_files/winc/driver/winc_hif.c  .generated_files/flags/default/ee40203c045af9bb6e6a04c7c97620117f95d534 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_hif.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o: mcc_generated_files/winc/driver/winc_asic.c  .generated_files/flags/default/ae1d467b37dcea96c7032807c684686e9263ce94 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_asic.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o: mcc_generated_files/winc/driver/winc_adapter.c  .generated_files/flags/default/e0a8a2d2ff79757a0cabb4cfcb298a7e606e1ab7 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_adapter.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o: mcc_generated_files/winc/driver/winc_drv.c  .generated_files/flags/default/b497776af2c682ddc5d9c59b4eb986c91fdc6fd4 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_drv.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o: mcc_generated_files/winc/m2m/m2m_ota.c  .generated_files/flags/default/1329bb67825fb5431b7eb53238adb0f387412f74 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_ota.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o: mcc_generated_files/winc/m2m/m2m_fwinfo.c  .generated_files/flags/default/a983c045496dae179f577b07e23fc021367f35c1 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_fwinfo.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o: mcc_generated_files/winc/m2m/m2m_ssl.c  .generated_files/flags/default/e1c2344b958c4a10fcda1e6b3689acc1c6fee460 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_ssl.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o: mcc_generated_files/winc/m2m/m2m_wifi.c  .generated_files/flags/default/b624d432f95b60d8856d0039602e1e8acf8b371f .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_wifi.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o: mcc_generated_files/winc/m2m/m2m_periph.c  .generated_files/flags/default/fc46d007f5a356897a6aa1de367f06cfe81959dd .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_periph.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o: mcc_generated_files/winc/m2m/m2m_crypto.c  .generated_files/flags/default/f62a05c94bbc48835fdf8b84a101ed47d9591270 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_crypto.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o: mcc_generated_files/winc/socket/socket.c  .generated_files/flags/default/f651ec5f32a864c961d8b590b9f9a745fe8c6ab0 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/socket" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/socket/socket.c  -o ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o: mcc_generated_files/winc/spi_flash/flexible_flash.c  .generated_files/flags/default/21505ee7485c4ad7f3cf9c05efbd82db6361e8a1 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/spi_flash" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/spi_flash/flexible_flash.c  -o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o: mcc_generated_files/winc/spi_flash/spi_flash.c  .generated_files/flags/default/fcf308881bc60992bdb9179117a606b07b0af941 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/spi_flash" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/spi_flash/spi_flash.c  -o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/4b3c71b2e923e01d1dd5cf739a814af30005d544 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/baed53b233558e458de39d7e895d7e9a3a06f71e .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/81d3bf7c98c97e09c6653868da027d21aae3418d .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c2_driver.o: mcc_generated_files/i2c2_driver.c  .generated_files/flags/default/b147ec20b6b7bcd82a6d4ec15a60759e9e6a8e11 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c2_driver.c  -o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o: mcc_generated_files/CryptoAuth_init.c  .generated_files/flags/default/d14c3535fceab08ce5ce305815bde7687b9e04f3 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuth_init.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/delay.o: mcc_generated_files/delay.c  .generated_files/flags/default/f2c1511bd0e666daf731ffa0f27648f6b1ae73bc .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/delay.c  -o ${OBJECTDIR}/mcc_generated_files/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/delay.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/be1b5258a3ed874dcc8f78ffb1c700ced1e17ee4 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/33bbe134f93986dda93e6d5eaf9b6f93332dd35e .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/4724872f4017a5657c91da2bff64ef01816917c1 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/spi1_driver.o: mcc_generated_files/spi1_driver.c  .generated_files/flags/default/610df43588f818d3c726f520ecc60a0c45d3e70b .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/spi1_driver.c  -o ${OBJECTDIR}/mcc_generated_files/spi1_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/6cf78d899330ba31bef0d73fd91229c988e6d5dd .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/conversions.o: conversions.c  .generated_files/flags/default/f7223155fd157b2226c547f3e6be8871132c8626 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/conversions.o.d 
	@${RM} ${OBJECTDIR}/conversions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  conversions.c  -o ${OBJECTDIR}/conversions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/conversions.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/ecc_commands.o: ecc_commands.c  .generated_files/flags/default/4689469b5e6d7e2b9cf38d49f2dde74b26973903 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ecc_commands.o.d 
	@${RM} ${OBJECTDIR}/ecc_commands.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ecc_commands.c  -o ${OBJECTDIR}/ecc_commands.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/ecc_commands.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/485045a96fc2962ac494a88f5c4b04d5f49b3045 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/winc_commands.o: winc_commands.c  .generated_files/flags/default/6406ab5d9f5386a5af6870f37a4b36477670db0c .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/winc_commands.o.d 
	@${RM} ${OBJECTDIR}/winc_commands.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  winc_commands.c  -o ${OBJECTDIR}/winc_commands.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/winc_commands.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/command_handler/parser/mc_parser.o: command_handler/parser/mc_parser.c  .generated_files/flags/default/d4db745e49114bacaff284aefb74b75ae2a38734 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/command_handler/parser" 
	@${RM} ${OBJECTDIR}/command_handler/parser/mc_parser.o.d 
	@${RM} ${OBJECTDIR}/command_handler/parser/mc_parser.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  command_handler/parser/mc_parser.c  -o ${OBJECTDIR}/command_handler/parser/mc_parser.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/command_handler/parser/mc_parser.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/command_handler/parser/mc_housekeeping.o: command_handler/parser/mc_housekeeping.c  .generated_files/flags/default/835cdad90a2b02004d3b42bae7a4696f4fb2cdd7 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/command_handler/parser" 
	@${RM} ${OBJECTDIR}/command_handler/parser/mc_housekeeping.o.d 
	@${RM} ${OBJECTDIR}/command_handler/parser/mc_housekeeping.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  command_handler/parser/mc_housekeeping.c  -o ${OBJECTDIR}/command_handler/parser/mc_housekeeping.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/command_handler/parser/mc_housekeeping.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/command_handler/mc_argparser.o: command_handler/mc_argparser.c  .generated_files/flags/default/4bddaa04ded0969949240286122f694e8bbd57c2 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/command_handler" 
	@${RM} ${OBJECTDIR}/command_handler/mc_argparser.o.d 
	@${RM} ${OBJECTDIR}/command_handler/mc_argparser.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  command_handler/mc_argparser.c  -o ${OBJECTDIR}/command_handler/mc_argparser.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/command_handler/mc_argparser.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/command_handler/mc_board.o: command_handler/mc_board.c  .generated_files/flags/default/8b960b3655fa35f3d88d5ea2e23330e6586d210d .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/command_handler" 
	@${RM} ${OBJECTDIR}/command_handler/mc_board.o.d 
	@${RM} ${OBJECTDIR}/command_handler/mc_board.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  command_handler/mc_board.c  -o ${OBJECTDIR}/command_handler/mc_board.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/command_handler/mc_board.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/command_handler/mc_commands.o: command_handler/mc_commands.c  .generated_files/flags/default/51e538e7d391a2032976077dad97a06b9e234aaa .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/command_handler" 
	@${RM} ${OBJECTDIR}/command_handler/mc_commands.o.d 
	@${RM} ${OBJECTDIR}/command_handler/mc_commands.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  command_handler/mc_commands.c  -o ${OBJECTDIR}/command_handler/mc_commands.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/command_handler/mc_commands.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.c  .generated_files/flags/default/2e332a89e2d51df57516a125e6f68e66b3a43ccc .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.c  .generated_files/flags/default/a11f83e1bbdb93f3987ec772462769353389472d .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.c  .generated_files/flags/default/1a58d9200ae147e2ac8f8483ef77ea5c9bf2e296 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.c  .generated_files/flags/default/9b8063372b7d2b568f78e7c482231b927c0d758 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.c  .generated_files/flags/default/cd988ebeda11612300a15ec75866e5d3a6acbe5b .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.c  .generated_files/flags/default/77a4d1f2b9b4ca04976e01997c1baf6d8d3636ea .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.c  .generated_files/flags/default/b76a43089bb5c48b95065dc9bff1462cb79787ad .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.c  .generated_files/flags/default/be2840162e850f46a2d05d0523b321eeaeb4cd53 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.c  .generated_files/flags/default/7adcd408fe4586a71beb159a42c636419e2af0c0 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.c  .generated_files/flags/default/4527e07522708723e2a8ee629fff6a767e9b9af0 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.c  .generated_files/flags/default/ad5fd8202c64868df171d705e8978158d6f32b2a .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.c  .generated_files/flags/default/b44c4f61ec52d5940f0cb2222a51b347c126a133 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.c  .generated_files/flags/default/e583078a02bfdef89c94400af210b540d584c405 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.c  .generated_files/flags/default/d06ef8452dd63ce01fada09e2e9ff2e6297821e .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.c  .generated_files/flags/default/3ce114d950a39608ff01e60ca66e50013372b989 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.c  .generated_files/flags/default/bb6f7ea3126c875b9311855b5552db21609b6908 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.c  .generated_files/flags/default/a9bf420b737606224bf1d20181af543b8a8c7c38 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.c  .generated_files/flags/default/913eb7d7ef3de15e54b63894f888dc428a79a692 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.c  .generated_files/flags/default/ebd3a4ae87d6c1c9d36a790ada8e49d4fb55290 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.c  .generated_files/flags/default/bda99bfd7fd71ffe7c281821248b0fc2e2c404d9 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.c  .generated_files/flags/default/f2b7ebe3a467a10293959b767cb2673b74621263 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.c  .generated_files/flags/default/b2c8c6f220f0e223c731cc3a7686be9317f869fc .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.c  .generated_files/flags/default/5b8e4b4a6d3d1afc4780bda118dd2d3552ee5aaf .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.c  .generated_files/flags/default/8f3dc0c41945d793cb9a7fbdff5b1c283aedf846 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.c  .generated_files/flags/default/47d573861b8134248c9b40399300eeaa6caf75cf .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.c  .generated_files/flags/default/f086ee9ad393d0221c838e4a82768a6d9103c3bd .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.c  .generated_files/flags/default/6d3b8bc6c085a7ed7ea441b42953a9190cdedc98 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.c  .generated_files/flags/default/2cd241370f30991dae5c8ee3ceb5162d16e1478b .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.c  .generated_files/flags/default/8fd76bdf790c312b8cf137bf7e0105f2bd9e9f85 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.c  .generated_files/flags/default/11141a45637b8e9ca33cadc92bb9ad699349ba69 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.c  .generated_files/flags/default/a9e7ae0f81a817fcd63c567cadba91f14292883c .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.c  .generated_files/flags/default/116eb9d362236fab4b1d8c26f13d47e4b074fa03 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.c  .generated_files/flags/default/7ea475dbb6ca947a08906e13791f5a7a0845cd74 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.c  .generated_files/flags/default/77cdd15f1ad56302ebd9d9ae8cc981428f902e21 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.c  .generated_files/flags/default/3985917c3a77881fe07d5f2d86cf043be411dc6f .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.c  .generated_files/flags/default/3ac43c34b20b9c7283835b549449933a4a871e3 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.c  .generated_files/flags/default/3e8f4d7cff0b49ae2ab0a4ed52a7670353768b97 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.c  .generated_files/flags/default/7f10f334b7f46f5bb037174b437726f67c92946 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o: mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.c  .generated_files/flags/default/2b5ca4efca72b4ee508211f8a7a3cc6e44249a79 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o: mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.c  .generated_files/flags/default/b5403f6504ba42450e91b9859e098fed7fe4da3 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o: mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.c  .generated_files/flags/default/97288a670177d485cca689fa42c832061b9c8753 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o: mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.c  .generated_files/flags/default/9a66919dcbf9acd8341e7cc60a7aa82554acf4df .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o: mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.c  .generated_files/flags/default/d6c1b99880c19fa5b7cf90a148a51d433f08a309 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.c  .generated_files/flags/default/dfb0a2dc8943cf67f7fe0d671d442217e4cc762 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.c  .generated_files/flags/default/6bd2c0bb66e67992d3759292138135878e7a95b .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_command.c  .generated_files/flags/default/7ddaf7bc2f50033dec50cbec718e0f141274f8f3 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_command.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_device.c  .generated_files/flags/default/e0c31af973234bf52b3c3c2cdf41c39608bdb035 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_device.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.c  .generated_files/flags/default/9c3afec2002a7c06b5fcf42b7b01c25a84786aff .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o: mcc_generated_files/drivers/i2c_types.c  .generated_files/flags/default/94c78588dd41ad29f62e72a89299408087cb3bce .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_types.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o: mcc_generated_files/drivers/i2c_simple_master.c  .generated_files/flags/default/6bf8683825357ca768e1a8132fb9ecd0bb6e3a29 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_simple_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o: mcc_generated_files/drivers/spi_master.c  .generated_files/flags/default/72c09b72aecc85e559dcc072aa08822e6776d0d4 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/spi_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o: mcc_generated_files/drivers/i2c_master.c  .generated_files/flags/default/caa677d8e917b29065a477aa8dd6c66c5591b6f .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o: mcc_generated_files/winc/driver/winc_spi.c  .generated_files/flags/default/88d00dadf59bffbf90f9f7033d23f928be09a36a .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_spi.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o: mcc_generated_files/winc/driver/winc_hif.c  .generated_files/flags/default/aad44c1167204a6573e68327a8bea13f5324576 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_hif.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o: mcc_generated_files/winc/driver/winc_asic.c  .generated_files/flags/default/17beedaff6db04020192d3c01e4eb0e8075916b2 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_asic.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o: mcc_generated_files/winc/driver/winc_adapter.c  .generated_files/flags/default/86e168dca9aba09a532dadcde2043e55812cfb72 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_adapter.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o: mcc_generated_files/winc/driver/winc_drv.c  .generated_files/flags/default/8b4783de121f71603a53470a4b3d26e8dd92b675 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_drv.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o: mcc_generated_files/winc/m2m/m2m_ota.c  .generated_files/flags/default/5b29d7c4399de9f2715126e431215dff5a790aa8 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_ota.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o: mcc_generated_files/winc/m2m/m2m_fwinfo.c  .generated_files/flags/default/4b4e36454f7d0ac74b4255f87d5d124da62a6386 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_fwinfo.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o: mcc_generated_files/winc/m2m/m2m_ssl.c  .generated_files/flags/default/a3fe6b7e10e96805842488ad9a607d4c77b45752 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_ssl.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o: mcc_generated_files/winc/m2m/m2m_wifi.c  .generated_files/flags/default/6aa20a6a6645a64a6ebf181dfc902083ab72288f .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_wifi.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o: mcc_generated_files/winc/m2m/m2m_periph.c  .generated_files/flags/default/3c194cd154707817df0fa6f18d63a01f18506522 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_periph.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o: mcc_generated_files/winc/m2m/m2m_crypto.c  .generated_files/flags/default/553a04915b00226e4d335741c442fcf0c86e4755 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_crypto.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o: mcc_generated_files/winc/socket/socket.c  .generated_files/flags/default/2d64a517b435847590c5f61fbb4bc72604c0d671 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/socket" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/socket/socket.c  -o ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o: mcc_generated_files/winc/spi_flash/flexible_flash.c  .generated_files/flags/default/ab936187565c39fefcd73a16ad2e3b3b504c4c93 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/spi_flash" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/spi_flash/flexible_flash.c  -o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o: mcc_generated_files/winc/spi_flash/spi_flash.c  .generated_files/flags/default/fe373a28a44ee384e5beb6d1bd6eecc00328fc67 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/spi_flash" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/spi_flash/spi_flash.c  -o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/931777102bb6d3d4009d966d8729640d72b838dc .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/69a40c11289e27265288a8afc160a2307a48fe3f .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/eb3987a0000512359b5d1dda5e1951a436e2fb76 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c2_driver.o: mcc_generated_files/i2c2_driver.c  .generated_files/flags/default/f82f048648a18ad856286396b6ec3fe6e7799014 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c2_driver.c  -o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o: mcc_generated_files/CryptoAuth_init.c  .generated_files/flags/default/26abd39ebb37543eba2bdef34f1c390351d3ba7e .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuth_init.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/delay.o: mcc_generated_files/delay.c  .generated_files/flags/default/4b3e92f0066a067cd1841ec8125eb8fce7083bcd .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/delay.c  -o ${OBJECTDIR}/mcc_generated_files/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/delay.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/bd4636c1f44ecee06074ca699159376bd86b023b .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/d2146993278df3f569a3103507c92c168f070e5c .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/aee47c328592c9a0706b714564c4fc69964eedfb .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/spi1_driver.o: mcc_generated_files/spi1_driver.c  .generated_files/flags/default/9185e05940750811790b5ea052563a46f8d8ed .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/spi1_driver.c  -o ${OBJECTDIR}/mcc_generated_files/spi1_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/db28d27ea5283cab8ac9915995185fb9846db476 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/conversions.o: conversions.c  .generated_files/flags/default/d0cac2baa7590efa9b3d078aa89e120a7b8e3bd5 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/conversions.o.d 
	@${RM} ${OBJECTDIR}/conversions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  conversions.c  -o ${OBJECTDIR}/conversions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/conversions.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/ecc_commands.o: ecc_commands.c  .generated_files/flags/default/66bab3b8e8824935359dbe8c77ab95caa165968d .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ecc_commands.o.d 
	@${RM} ${OBJECTDIR}/ecc_commands.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ecc_commands.c  -o ${OBJECTDIR}/ecc_commands.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/ecc_commands.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/456b2076252be35c6746a660ef432d4df3285759 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/winc_commands.o: winc_commands.c  .generated_files/flags/default/dd1300a6c00420ee4aa83e03e216c2e808eb89a8 .generated_files/flags/default/fe1bd9625c5400f9e920343f399193677a139cbe
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/winc_commands.o.d 
	@${RM} ${OBJECTDIR}/winc_commands.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  winc_commands.c  -o ${OBJECTDIR}/winc_commands.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/winc_commands.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/pic-iot-provisioning-mplab.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/pic-iot-provisioning-mplab.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary"     -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/pic-iot-provisioning-mplab.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/pic-iot-provisioning-mplab.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}/xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/pic-iot-provisioning-mplab.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default
