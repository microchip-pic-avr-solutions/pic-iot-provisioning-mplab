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
FINAL_IMAGE=${DISTDIR}/pic-iot-provisioning-mplab.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/pic-iot-provisioning-mplab.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/pic-iot-provisioning-mplab.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ128GA705
MP_LINKER_FILE_OPTION=,--script=p24FJ128GA705.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/command_handler/parser/mc_parser.o: command_handler/parser/mc_parser.c  .generated_files/flags/default/1951453707cbe36578c0c079a10c6ad5e87aba00 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/command_handler/parser" 
	@${RM} ${OBJECTDIR}/command_handler/parser/mc_parser.o.d 
	@${RM} ${OBJECTDIR}/command_handler/parser/mc_parser.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  command_handler/parser/mc_parser.c  -o ${OBJECTDIR}/command_handler/parser/mc_parser.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/command_handler/parser/mc_parser.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/command_handler/parser/mc_housekeeping.o: command_handler/parser/mc_housekeeping.c  .generated_files/flags/default/24fc3ae1f3717890640fce5c1a71e58de7a5f40 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/command_handler/parser" 
	@${RM} ${OBJECTDIR}/command_handler/parser/mc_housekeeping.o.d 
	@${RM} ${OBJECTDIR}/command_handler/parser/mc_housekeeping.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  command_handler/parser/mc_housekeeping.c  -o ${OBJECTDIR}/command_handler/parser/mc_housekeeping.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/command_handler/parser/mc_housekeeping.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/command_handler/mc_argparser.o: command_handler/mc_argparser.c  .generated_files/flags/default/8f44f55a5d099987bcb8c9826a6db8591d3e1254 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/command_handler" 
	@${RM} ${OBJECTDIR}/command_handler/mc_argparser.o.d 
	@${RM} ${OBJECTDIR}/command_handler/mc_argparser.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  command_handler/mc_argparser.c  -o ${OBJECTDIR}/command_handler/mc_argparser.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/command_handler/mc_argparser.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/command_handler/mc_board.o: command_handler/mc_board.c  .generated_files/flags/default/d4c1a0429d7f985a4ad0eaf811f0581f57e7a4f4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/command_handler" 
	@${RM} ${OBJECTDIR}/command_handler/mc_board.o.d 
	@${RM} ${OBJECTDIR}/command_handler/mc_board.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  command_handler/mc_board.c  -o ${OBJECTDIR}/command_handler/mc_board.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/command_handler/mc_board.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/command_handler/mc_commands.o: command_handler/mc_commands.c  .generated_files/flags/default/8af733c3458c181960bc4e939afcbd258850aedc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/command_handler" 
	@${RM} ${OBJECTDIR}/command_handler/mc_commands.o.d 
	@${RM} ${OBJECTDIR}/command_handler/mc_commands.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  command_handler/mc_commands.c  -o ${OBJECTDIR}/command_handler/mc_commands.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/command_handler/mc_commands.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.c  .generated_files/flags/default/ca34714fbfdb0b2b19e5761a6d05829741b9bf12 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.c  .generated_files/flags/default/dd71b79e5b62d455f5f83fe2115adfd549d07330 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.c  .generated_files/flags/default/c58754c555829eb7bd0a92ae098096d940f2a1a2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.c  .generated_files/flags/default/8d1a1815114ab143763d5649d3325aa9d44f2500 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.c  .generated_files/flags/default/3c3a3efe462fe4fcc46bfcdc56b9b75ef57fb6d7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.c  .generated_files/flags/default/39a6c8066a5b5e285fea45f74a55a0b4e8beab46 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.c  .generated_files/flags/default/4a262062c0ed1f7a707af0196c67e9509950ae33 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.c  .generated_files/flags/default/93926a6fcc65f2981bd5b9ab8aeac9e7596e6a46 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.c  .generated_files/flags/default/b357ff7872061d1de107aa63a984bcba13b4a109 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.c  .generated_files/flags/default/bcbb84c21646b5fbd209ad79bc8a5241a6dcfb14 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.c  .generated_files/flags/default/ef05d0a32ad70b777a47f18d6c4774335865ef4a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.c  .generated_files/flags/default/4ff1ba58b0025a4bec97cf7dafb8a58af7555d2c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.c  .generated_files/flags/default/207eb9e4f0a7ad80e8bc37179b489e7c7005bb4e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.c  .generated_files/flags/default/d07152823ba231409f9d32cea60f2e656b05fce4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.c  .generated_files/flags/default/d9fbc5d07d91821e446c3e0a887e7ff0733df02b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.c  .generated_files/flags/default/9f2e1d63319c07f0291ec4a502baafd7ddb7925 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.c  .generated_files/flags/default/bac6b885724283ec64281a791ca3520162a849ad .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.c  .generated_files/flags/default/dc28a89c2804d44bc4e56581e0807cc69042ca55 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.c  .generated_files/flags/default/b56fcef4038fde42a6beaf59215da69661dea14e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.c  .generated_files/flags/default/834b8fb3543b1888f73de1f669f9e03ddf8d1bfa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.c  .generated_files/flags/default/981e651627e771a110cf024b0f34613721330cd0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.c  .generated_files/flags/default/85370a254d971de6ef7c7d793be7ab25ef7c8462 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.c  .generated_files/flags/default/b58ce65052d4ac6b170fc06ea697bb573f3d3a5f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.c  .generated_files/flags/default/1fa1a46aa14cec46a1f21915bacee6d4633a63b4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.c  .generated_files/flags/default/3294b02f0c9828f6e326a9827d8f7238359e2ed5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.c  .generated_files/flags/default/9f948dfbace182004758c56697071dad0c20b2fe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.c  .generated_files/flags/default/90bd072756b25c310ffdc366fceb33400d65d970 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.c  .generated_files/flags/default/f12297154a2b8c30a3e13a9edf73ab2587e4a961 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.c  .generated_files/flags/default/59ceba9321cbedddab546b133307033287832f5a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.c  .generated_files/flags/default/490503f6d235f2151962d02c7577188a0baff35e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.c  .generated_files/flags/default/8a925b2edabc61e45ed3ac282a1303a32c7e2f71 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.c  .generated_files/flags/default/32a586aec6324dbea662875f04d9d616bd643dfe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.c  .generated_files/flags/default/f404ffd42a9b088d32561598a4613ed2973213dc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.c  .generated_files/flags/default/8a1b8d866a55f6256ea56e2a2b8abe3fb549aa93 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.c  .generated_files/flags/default/f423781da030868d366a2c09243a146b864ce24f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.c  .generated_files/flags/default/13aa6855cd8737d89b73f0cc6caff9e2b5cf5f79 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.c  .generated_files/flags/default/a237ae5f578bf27ec62fea99c7d8462b737f46d5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.c  .generated_files/flags/default/69d70064300d8e3d0110ab6488069fd2ff140880 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o: mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.c  .generated_files/flags/default/2485e0c1da60d72afeddc04cc6f4bf091476bed5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o: mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.c  .generated_files/flags/default/9601901e2882d4e2abf5d1713b0d77c27f0fadd6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o: mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.c  .generated_files/flags/default/519e3ba0eb116824f35cc06581e6cd25b5307a06 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o: mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.c  .generated_files/flags/default/8c55962c0f5c04612890c9bc04a68c9e8ca124f2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o: mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.c  .generated_files/flags/default/f7018bf702e4ac8fc9cf260b45b245008d2358c4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.c  .generated_files/flags/default/aec7e4bf52acdfce891e96ae96ef0052393b4575 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.c  .generated_files/flags/default/1cd67f0a243a88cacb1e98612ba2a63a3a65e532 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_command.c  .generated_files/flags/default/f9b662eaa2f48006b83224848b0ddd3c088dacc3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_command.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_device.c  .generated_files/flags/default/1029e762ecd75724e45f79e47a89d19c142c3be6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_device.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.c  .generated_files/flags/default/a5a56449a01252e223e0f7f8213c1c7e2b00bdba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o: mcc_generated_files/drivers/i2c_types.c  .generated_files/flags/default/2982f20fa6d43413fbeb0a5a4c4d3726c1f6d909 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_types.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o: mcc_generated_files/drivers/i2c_simple_master.c  .generated_files/flags/default/969fffb62a495f8ba1a90ce532eb8c308b1d7ff4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_simple_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o: mcc_generated_files/drivers/spi_master.c  .generated_files/flags/default/43d62befa0aecf807b921d709d5dfd60523a4779 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/spi_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o: mcc_generated_files/drivers/i2c_master.c  .generated_files/flags/default/25801ec0bb79fda01c2a36efb7465971c450d510 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o: mcc_generated_files/winc/driver/winc_spi.c  .generated_files/flags/default/79db53a72e1a4ba217ece82f895f66f2209def2a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_spi.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o: mcc_generated_files/winc/driver/winc_hif.c  .generated_files/flags/default/ab917f3300c1f11401d8d5a230027f9af4c8c9c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_hif.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o: mcc_generated_files/winc/driver/winc_asic.c  .generated_files/flags/default/43d391b999530153825627c7eec9d57b86f40b58 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_asic.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o: mcc_generated_files/winc/driver/winc_adapter.c  .generated_files/flags/default/b9b3541a8eed4794600abe354c36aaa33b910198 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_adapter.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o: mcc_generated_files/winc/driver/winc_drv.c  .generated_files/flags/default/81a8f64daa16d1e55ca1cccf7bed0394d956ce8e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_drv.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o: mcc_generated_files/winc/m2m/m2m_ota.c  .generated_files/flags/default/e4662681e211852981ba4ffcbfab3bab13c7bdab .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_ota.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o: mcc_generated_files/winc/m2m/m2m_fwinfo.c  .generated_files/flags/default/f2b64bdbeefdc780e177280f7ed9981e33ccd7d3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_fwinfo.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o: mcc_generated_files/winc/m2m/m2m_ssl.c  .generated_files/flags/default/a9938922a7463451ae9a2ff520da708b05e00637 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_ssl.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o: mcc_generated_files/winc/m2m/m2m_wifi.c  .generated_files/flags/default/535e6cdbbe4eca0e3fd1dd98c6a4a89bc53a51f8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_wifi.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o: mcc_generated_files/winc/m2m/m2m_periph.c  .generated_files/flags/default/8a310752cd7e5d16a4b2e3139349d452a67bb4b0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_periph.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o: mcc_generated_files/winc/m2m/m2m_crypto.c  .generated_files/flags/default/e3d216fecb73b1b0d2beba562a0d3448aa6b6fa9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_crypto.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o: mcc_generated_files/winc/socket/socket.c  .generated_files/flags/default/db10cacb81ea4ea540abedf4dc2e7fd8a6cc1130 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/socket" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/socket/socket.c  -o ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o: mcc_generated_files/winc/spi_flash/flexible_flash.c  .generated_files/flags/default/b5187c333b6ec5dd4d2824f385afca608e450395 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/spi_flash" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/spi_flash/flexible_flash.c  -o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o: mcc_generated_files/winc/spi_flash/spi_flash.c  .generated_files/flags/default/5cee316b7cc47fafc3f8133a6df37038ccab69d0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/spi_flash" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/spi_flash/spi_flash.c  -o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/fa1cb5011ef7d819238a32eb8fdde00a2185a471 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/3d5dd7fe80b0046f1d413515ba61bf1aaf54ee9e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/a5656563cfa67a2f0547979f215f08c6d5da1792 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c2_driver.o: mcc_generated_files/i2c2_driver.c  .generated_files/flags/default/85369ea0b2fa6f919244b668aaf319eaf8dc01b3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c2_driver.c  -o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o: mcc_generated_files/CryptoAuth_init.c  .generated_files/flags/default/c70f075682ab923f936912ae11f19d180acd7b94 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuth_init.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/delay.o: mcc_generated_files/delay.c  .generated_files/flags/default/79e70f40088f6836cbaed102d27b8e3a77684172 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/delay.c  -o ${OBJECTDIR}/mcc_generated_files/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/delay.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/f389344f75ab8155ff43c887972ec0f463a9d943 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/a4ba19c928d34d1d537e507da9fd93e0b8d9f207 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/9817a169c3c8e137c14da8fe967c4c5521006f22 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/spi1_driver.o: mcc_generated_files/spi1_driver.c  .generated_files/flags/default/e561f74c1bd0773a5b636e26e6a43c092c7e396a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/spi1_driver.c  -o ${OBJECTDIR}/mcc_generated_files/spi1_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/27a039c188a56211a3b4668529017f05217da20a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/conversions.o: conversions.c  .generated_files/flags/default/a76760504f05484e5a364d50eeac925d6aff64ba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/conversions.o.d 
	@${RM} ${OBJECTDIR}/conversions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  conversions.c  -o ${OBJECTDIR}/conversions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/conversions.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/ecc_commands.o: ecc_commands.c  .generated_files/flags/default/6a6dd31e319d194715db77d031ef49465315b23a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ecc_commands.o.d 
	@${RM} ${OBJECTDIR}/ecc_commands.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ecc_commands.c  -o ${OBJECTDIR}/ecc_commands.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/ecc_commands.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/38398ee15842ba397a2ba5a1da8bcbc5f25ed7b4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/winc_commands.o: winc_commands.c  .generated_files/flags/default/cf230abe04acdf08001e67c556e9b4c64264a4fe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/winc_commands.o.d 
	@${RM} ${OBJECTDIR}/winc_commands.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  winc_commands.c  -o ${OBJECTDIR}/winc_commands.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/winc_commands.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/command_handler/parser/mc_parser.o: command_handler/parser/mc_parser.c  .generated_files/flags/default/a9188115ee2d443846fcb6fa282911becda67b1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/command_handler/parser" 
	@${RM} ${OBJECTDIR}/command_handler/parser/mc_parser.o.d 
	@${RM} ${OBJECTDIR}/command_handler/parser/mc_parser.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  command_handler/parser/mc_parser.c  -o ${OBJECTDIR}/command_handler/parser/mc_parser.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/command_handler/parser/mc_parser.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/command_handler/parser/mc_housekeeping.o: command_handler/parser/mc_housekeeping.c  .generated_files/flags/default/2496b1ae3de7f0bccb5d50ea5b402a34c800df33 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/command_handler/parser" 
	@${RM} ${OBJECTDIR}/command_handler/parser/mc_housekeeping.o.d 
	@${RM} ${OBJECTDIR}/command_handler/parser/mc_housekeeping.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  command_handler/parser/mc_housekeeping.c  -o ${OBJECTDIR}/command_handler/parser/mc_housekeeping.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/command_handler/parser/mc_housekeeping.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/command_handler/mc_argparser.o: command_handler/mc_argparser.c  .generated_files/flags/default/1d8b598fd9f1cc6506654a267e6175aa2dfcc507 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/command_handler" 
	@${RM} ${OBJECTDIR}/command_handler/mc_argparser.o.d 
	@${RM} ${OBJECTDIR}/command_handler/mc_argparser.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  command_handler/mc_argparser.c  -o ${OBJECTDIR}/command_handler/mc_argparser.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/command_handler/mc_argparser.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/command_handler/mc_board.o: command_handler/mc_board.c  .generated_files/flags/default/b6251b7ab909e064677186ded44d20575da51737 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/command_handler" 
	@${RM} ${OBJECTDIR}/command_handler/mc_board.o.d 
	@${RM} ${OBJECTDIR}/command_handler/mc_board.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  command_handler/mc_board.c  -o ${OBJECTDIR}/command_handler/mc_board.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/command_handler/mc_board.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/command_handler/mc_commands.o: command_handler/mc_commands.c  .generated_files/flags/default/5abb6669f7bb4085e5d2f0f55ef956ca3faa6ef4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/command_handler" 
	@${RM} ${OBJECTDIR}/command_handler/mc_commands.o.d 
	@${RM} ${OBJECTDIR}/command_handler/mc_commands.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  command_handler/mc_commands.c  -o ${OBJECTDIR}/command_handler/mc_commands.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/command_handler/mc_commands.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.c  .generated_files/flags/default/b1ebe3be5388d42de5396094ed3d72ebb084ab46 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.c  .generated_files/flags/default/23e272bbca041a85dd782c5dd8025cccb7a8ac42 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.c  .generated_files/flags/default/168b92c8f9c579169f13fffcdc867f62762b1967 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.c  .generated_files/flags/default/cd25b1e40b0f493a6ee2ac3fadc72ba4bfbb392e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.c  .generated_files/flags/default/dafd88820735a4112e9cca353f5f1ce49b607f29 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.c  .generated_files/flags/default/25d153eeae1de0e9699ac095221d707585e52a0c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.c  .generated_files/flags/default/8e4a39730222d2a65bc42b1b9ca3d1d44506ffbb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.c  .generated_files/flags/default/e677d543913673e341690788fb3fac88d1724b3e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.c  .generated_files/flags/default/75882fe55c3adc1989f8b7ee0d64e7a0e9ba1aa3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.c  .generated_files/flags/default/edbafbf2d0f0e8b533dcd1138a777ca7408a6578 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.c  .generated_files/flags/default/99f8268286e4a8894d5b77c23fc139d744076ec2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.c  .generated_files/flags/default/c6b4e96b585bc03e85416cc85d16e884cbf14433 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.c  .generated_files/flags/default/f335b680de1f79dcbb2b36bce958afb9844939c8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.c  .generated_files/flags/default/856421e29c2236ee89df9db1c4d44bf948647d22 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.c  .generated_files/flags/default/b8f2583e49898c5c1a891ad47dd2180af67cf5ec .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.c  .generated_files/flags/default/2370a98b69cc4ebf588b14ab5490df7aff7b74d8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.c  .generated_files/flags/default/d3f213f728798656f994a917b3f76f4602b08fb0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.c  .generated_files/flags/default/97c432f068f745bae252f47e584bda2789102d3d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.c  .generated_files/flags/default/711df5f5c9dadebb580f2b19eb3f3d5ce6edfc35 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.c  .generated_files/flags/default/d04b8b5235d1e40eed0185666958bfaa7d99578d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.c  .generated_files/flags/default/5f9570f47be11fd030a8ababd6935edd86651c5e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.c  .generated_files/flags/default/5422dae28d0a3259303107ee432c7a74ab9b3f94 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.c  .generated_files/flags/default/16929ebd57455f9fcce0df53fa059022667013b3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.c  .generated_files/flags/default/1516dd63df18599140b4725cbc47bed20f68c2a9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.c  .generated_files/flags/default/7983936cf70b0aa1530f727829963db9520acc7c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.c  .generated_files/flags/default/8300c4090ec7de508829bcbeae781b5a1349ae7f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.c  .generated_files/flags/default/8568ba50af99ff4e8cb2d3fdbc2862d9bc2712d1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.c  .generated_files/flags/default/d16d31f9f399311c53b8981c26a315e6ac8aa0fd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.c  .generated_files/flags/default/dde177da92f4a30e458b4a55054c45337c44d0e5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.c  .generated_files/flags/default/b772529109a385fbe9184c583c3d54aa7fead4e8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.c  .generated_files/flags/default/4112331f321bafea718cb587bc41665be593e7b3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.c  .generated_files/flags/default/dfcc8fd577c8845f4eb51cfd36ad19fcffbb9329 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.c  .generated_files/flags/default/655ea3e299d2ea50db6063fa67d57ac98c0742f6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.c  .generated_files/flags/default/c95f5d5454831a9c2723b4657273b3f5a00be4c8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.c  .generated_files/flags/default/321376ba79fef5945818b4b865f17184b4abe1b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.c  .generated_files/flags/default/1c8cbb5ad8db3bc73a9c0ed5b521d16d14e077b0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.c  .generated_files/flags/default/65ac24803e2e8178e9db263abfd09e7e462dbbf4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.c  .generated_files/flags/default/177fe61349bf68dd65e253cb2c12142a3b1f2553 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o: mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.c  .generated_files/flags/default/64393ffd8e1754e3ed2dbedbc003b599e4a563b8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o: mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.c  .generated_files/flags/default/8bcda7d33b7f1107dbf84bc3dd32e670dcfbde11 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o: mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.c  .generated_files/flags/default/edc8666bcd3fd7ac03b3d151d16e7e65af63ec6d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o: mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.c  .generated_files/flags/default/bb7eca97056e67d63b7b7ac4fe7ce2634ba07f06 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o: mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.c  .generated_files/flags/default/877ef6f0981494e7070a23bca2279296e31c52cd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.c  .generated_files/flags/default/41c0bcb8f400b50617e3dabd7c15c0574c2148c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.c  .generated_files/flags/default/9512be6498c344f1e4115dc9b71694d2922c8355 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_command.c  .generated_files/flags/default/694b7f4dc3f860d21e4cc436d6cf3439f82be693 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_command.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_device.c  .generated_files/flags/default/9efba15f7b143c3e8d2dc9d6e707deb41adc63c1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_device.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.c  .generated_files/flags/default/f84da962d98106d8b9823ecd0522a777cd2d7f6c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o: mcc_generated_files/drivers/i2c_types.c  .generated_files/flags/default/bf8db3481abe155ecdc160653eca079d6881b1d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_types.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o: mcc_generated_files/drivers/i2c_simple_master.c  .generated_files/flags/default/6ef4536c6f79e92f99b550155fc540bb78d1f8a5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_simple_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o: mcc_generated_files/drivers/spi_master.c  .generated_files/flags/default/c9bfbe3cf5120695d34016559e77871c3a4d6d76 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/spi_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o: mcc_generated_files/drivers/i2c_master.c  .generated_files/flags/default/8beaf3faa077a8078acff769f5815cad9aa0026a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o: mcc_generated_files/winc/driver/winc_spi.c  .generated_files/flags/default/eab272d178c5f00ea36ee6ea08ba0fa00f0fbcf0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_spi.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o: mcc_generated_files/winc/driver/winc_hif.c  .generated_files/flags/default/8e07a7a1fbdf5be0f3ac092052985fba2432d26b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_hif.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o: mcc_generated_files/winc/driver/winc_asic.c  .generated_files/flags/default/5dc158345338cbcd39d40dc057437cc061469a6a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_asic.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o: mcc_generated_files/winc/driver/winc_adapter.c  .generated_files/flags/default/f1c13a7dbc2335102a1c9f9285baf6f1470f08e2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_adapter.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o: mcc_generated_files/winc/driver/winc_drv.c  .generated_files/flags/default/c2def89b34cf889c1940c61c6d70aa1a7b6b8fa6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_drv.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o: mcc_generated_files/winc/m2m/m2m_ota.c  .generated_files/flags/default/406cf8ff8bd092911d1bd40f02011ab68f35862f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_ota.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o: mcc_generated_files/winc/m2m/m2m_fwinfo.c  .generated_files/flags/default/d93d3c70f021be98d9809a1d2107a09e84c5ca3b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_fwinfo.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o: mcc_generated_files/winc/m2m/m2m_ssl.c  .generated_files/flags/default/a674c219058611c8db5609c6760750558e36d784 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_ssl.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o: mcc_generated_files/winc/m2m/m2m_wifi.c  .generated_files/flags/default/deae7ff96473e3e574716b5c9a3dd4fe38416aa6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_wifi.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o: mcc_generated_files/winc/m2m/m2m_periph.c  .generated_files/flags/default/90dc4127f250968221a375e8f2d04d7ea9994b36 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_periph.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o: mcc_generated_files/winc/m2m/m2m_crypto.c  .generated_files/flags/default/9a38d794530f3bf7af8c8c87fb4209ef9b511197 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_crypto.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o: mcc_generated_files/winc/socket/socket.c  .generated_files/flags/default/f30380dce889bf2af9909751935b5684ce0a01e5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/socket" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/socket/socket.c  -o ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o: mcc_generated_files/winc/spi_flash/flexible_flash.c  .generated_files/flags/default/9b42f2a6c593d1d4c5f069bcbe0b24c882c12d96 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/spi_flash" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/spi_flash/flexible_flash.c  -o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o: mcc_generated_files/winc/spi_flash/spi_flash.c  .generated_files/flags/default/b36950d139568eb3d03d0ce849e512e3742c3e0f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/spi_flash" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/spi_flash/spi_flash.c  -o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/a6c5af95b51d75b5315c3b05e08a9a1c70d70b2a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/a8260b14fff8079c32df40100a92a2664b6545c3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/6400b80d26318013adf8e5851998ceb43efb73f7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c2_driver.o: mcc_generated_files/i2c2_driver.c  .generated_files/flags/default/acdf5ce1c842e0076512bd67f58cd6839c8cd8de .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c2_driver.c  -o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o: mcc_generated_files/CryptoAuth_init.c  .generated_files/flags/default/f4d5b4fc61620dfa52e410fe4e4ed77c7c8fb0f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuth_init.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/delay.o: mcc_generated_files/delay.c  .generated_files/flags/default/1e1d410e322e9c66aa91a1645f4eeb611dd76616 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/delay.c  -o ${OBJECTDIR}/mcc_generated_files/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/delay.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/a1c9d4d8e219fed47ccacb203e2a6988d42e8361 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/8addd47bf73ebc4e00b65941d962df6a883db8fc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/bd4aaf586941b8449fe5a50a8280f548262a22e7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/spi1_driver.o: mcc_generated_files/spi1_driver.c  .generated_files/flags/default/7a324d52c5abc6d211c18fd090f27c530620d5e1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/spi1_driver.c  -o ${OBJECTDIR}/mcc_generated_files/spi1_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/add6091f69ae72db121520bda3528e591e0f3cf2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/conversions.o: conversions.c  .generated_files/flags/default/82ba8e58b67714449270eb45fa7876001919294 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/conversions.o.d 
	@${RM} ${OBJECTDIR}/conversions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  conversions.c  -o ${OBJECTDIR}/conversions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/conversions.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/ecc_commands.o: ecc_commands.c  .generated_files/flags/default/5f8a1fd401593e5af0eee4f96de6f1c8dd81f2d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ecc_commands.o.d 
	@${RM} ${OBJECTDIR}/ecc_commands.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ecc_commands.c  -o ${OBJECTDIR}/ecc_commands.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/ecc_commands.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/6d04b2c0756966d44d498c78b1a0e6efb69a525d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/winc_commands.o: winc_commands.c  .generated_files/flags/default/d43aeeb59eb821e2f1b5036fd57424bbdfc7534b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/winc_commands.o.d 
	@${RM} ${OBJECTDIR}/winc_commands.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  winc_commands.c  -o ${OBJECTDIR}/winc_commands.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/winc_commands.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
${DISTDIR}/pic-iot-provisioning-mplab.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/pic-iot-provisioning-mplab.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary"     -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/pic-iot-provisioning-mplab.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/pic-iot-provisioning-mplab.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}/xc16-bin2hex ${DISTDIR}/pic-iot-provisioning-mplab.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}
