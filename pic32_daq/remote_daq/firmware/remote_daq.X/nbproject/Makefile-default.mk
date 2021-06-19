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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/remote_daq.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/remote_daq.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../../../../../microchip/harmony/v2_06/framework/crypto/src/misc.c ../src/system_config/default/bsp/bsp.c ../src/system_config/default/framework/driver/adc/src/drv_adc_static.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c ../src/system_config/default/framework/net/pres/net_pres_enc_glue.c ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c ../src/system_config/default/framework/system/devcon/src/sys_devcon.c ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/framework/system/reset/src/sys_reset.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_exceptions.c ../src/system_config/default/system_tasks.c ../src/app.c ../src/main.c ../src/http_print.c ../src/custom_http_app.c ../src/mpfs_img2.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/adler32.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/compress.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/crc32.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/deflate.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/infback.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inffast.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inflate.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inftrees.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/trees.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/uncompr.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/zutil.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/ecc.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/arc4.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/pwdbased.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/tfm.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/asm.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/asn.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/des3.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/rsa.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/aes.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/md5.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha256.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha512.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/hmac.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/hash.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/compress.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/crypto.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/coding.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/error.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/integer.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/logging.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/memory.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/wc_port.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/wolfmath.c ../../../../../../microchip/harmony/v2_06/framework/driver/ethmac/src/dynamic/drv_ethmac.c ../../../../../../microchip/harmony/v2_06/framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c ../../../../../../microchip/harmony/v2_06/framework/driver/ethphy/src/dynamic/drv_ethphy.c ../../../../../../microchip/harmony/v2_06/framework/driver/ethphy/src/dynamic/drv_extphy_dp83848.c ../../../../../../microchip/harmony/v2_06/framework/driver/miim/src/dynamic/drv_miim.c ../../../../../../microchip/harmony/v2_06/framework/driver/nvm/src/dynamic/drv_nvm.c ../../../../../../microchip/harmony/v2_06/framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c ../../../../../../microchip/harmony/v2_06/framework/driver/spi/src/dynamic/drv_spi.c ../../../../../../microchip/harmony/v2_06/framework/driver/spi/src/drv_spi_sys_queue_fifo.c ../../../../../../microchip/harmony/v2_06/framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart.c ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart_read_write.c ../../../../../../microchip/harmony/v2_06/framework/net/pres/src/net_pres.c ../../../../../../microchip/harmony/v2_06/framework/system/command/src/sys_command.c ../../../../../../microchip/harmony/v2_06/framework/system/console/src/sys_console.c ../../../../../../microchip/harmony/v2_06/framework/system/console/src/sys_console_uart.c ../../../../../../microchip/harmony/v2_06/framework/system/fs/src/dynamic/sys_fs.c ../../../../../../microchip/harmony/v2_06/framework/system/fs/src/dynamic/sys_fs_media_manager.c ../../../../../../microchip/harmony/v2_06/framework/system/fs/mpfs/src/mpfs.c ../../../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c ../../../../../../microchip/harmony/v2_06/framework/system/random/src/sys_random.c ../../../../../../microchip/harmony/v2_06/framework/system/tmr/src/sys_tmr.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/common/sys_fs_wrapper.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/common/helpers.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/ipv4.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcp.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/udp.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_heap_alloc.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_heap_internal.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/arp.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/berkeley_api.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/dhcp.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/dns.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/http.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/nbns.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/sntp.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/telnet.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_announce.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/hash_fnv.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/oahash.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_helpers.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_helper_c32.S ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_manager.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_notify.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_packet.c ../src/bmcnet.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/28091179/misc.o ${OBJECTDIR}/_ext/74298950/bsp.o ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o ${OBJECTDIR}/_ext/977502197/drv_spi_api.o ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o ${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/68765530/sys_reset.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/http_print.o ${OBJECTDIR}/_ext/1360937237/custom_http_app.o ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o ${OBJECTDIR}/_ext/1762287818/adler32.o ${OBJECTDIR}/_ext/1762287818/compress.o ${OBJECTDIR}/_ext/1762287818/crc32.o ${OBJECTDIR}/_ext/1762287818/deflate.o ${OBJECTDIR}/_ext/1762287818/infback.o ${OBJECTDIR}/_ext/1762287818/inffast.o ${OBJECTDIR}/_ext/1762287818/inflate.o ${OBJECTDIR}/_ext/1762287818/inftrees.o ${OBJECTDIR}/_ext/1762287818/trees.o ${OBJECTDIR}/_ext/1762287818/uncompr.o ${OBJECTDIR}/_ext/1762287818/zutil.o ${OBJECTDIR}/_ext/28091179/ecc.o ${OBJECTDIR}/_ext/28091179/arc4.o ${OBJECTDIR}/_ext/28091179/pwdbased.o ${OBJECTDIR}/_ext/28091179/tfm.o ${OBJECTDIR}/_ext/28091179/asm.o ${OBJECTDIR}/_ext/28091179/asn.o ${OBJECTDIR}/_ext/28091179/des3.o ${OBJECTDIR}/_ext/28091179/rsa.o ${OBJECTDIR}/_ext/28091179/aes.o ${OBJECTDIR}/_ext/28091179/md5.o ${OBJECTDIR}/_ext/28091179/sha.o ${OBJECTDIR}/_ext/28091179/sha256.o ${OBJECTDIR}/_ext/28091179/sha512.o ${OBJECTDIR}/_ext/28091179/hmac.o ${OBJECTDIR}/_ext/28091179/hash.o ${OBJECTDIR}/_ext/28091179/compress.o ${OBJECTDIR}/_ext/28091179/crypto.o ${OBJECTDIR}/_ext/28091179/coding.o ${OBJECTDIR}/_ext/28091179/error.o ${OBJECTDIR}/_ext/28091179/integer.o ${OBJECTDIR}/_ext/28091179/logging.o ${OBJECTDIR}/_ext/28091179/memory.o ${OBJECTDIR}/_ext/28091179/wc_port.o ${OBJECTDIR}/_ext/28091179/wolfmath.o ${OBJECTDIR}/_ext/1486592573/drv_ethmac.o ${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o ${OBJECTDIR}/_ext/1632220917/drv_ethphy.o ${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o ${OBJECTDIR}/_ext/1426996077/drv_miim.o ${OBJECTDIR}/_ext/47425154/drv_nvm.o ${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o ${OBJECTDIR}/_ext/1092753911/drv_spi.o ${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o ${OBJECTDIR}/_ext/709153290/drv_tmr.o ${OBJECTDIR}/_ext/1201400862/drv_usart.o ${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o ${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o ${OBJECTDIR}/_ext/1817879350/net_pres.o ${OBJECTDIR}/_ext/433538943/sys_command.o ${OBJECTDIR}/_ext/23173237/sys_console.o ${OBJECTDIR}/_ext/23173237/sys_console_uart.o ${OBJECTDIR}/_ext/2034620947/sys_fs.o ${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o ${OBJECTDIR}/_ext/842901914/mpfs.o ${OBJECTDIR}/_ext/231205469/sys_int_pic32.o ${OBJECTDIR}/_ext/655575975/sys_random.o ${OBJECTDIR}/_ext/910924237/sys_tmr.o ${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o ${OBJECTDIR}/_ext/2030780900/helpers.o ${OBJECTDIR}/_ext/361655554/ipv4.o ${OBJECTDIR}/_ext/361655554/tcp.o ${OBJECTDIR}/_ext/361655554/udp.o ${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o ${OBJECTDIR}/_ext/361655554/arp.o ${OBJECTDIR}/_ext/361655554/berkeley_api.o ${OBJECTDIR}/_ext/361655554/dhcp.o ${OBJECTDIR}/_ext/361655554/dns.o ${OBJECTDIR}/_ext/361655554/http.o ${OBJECTDIR}/_ext/361655554/nbns.o ${OBJECTDIR}/_ext/361655554/sntp.o ${OBJECTDIR}/_ext/361655554/telnet.o ${OBJECTDIR}/_ext/361655554/tcpip_announce.o ${OBJECTDIR}/_ext/361655554/hash_fnv.o ${OBJECTDIR}/_ext/361655554/oahash.o ${OBJECTDIR}/_ext/361655554/tcpip_helpers.o ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o ${OBJECTDIR}/_ext/361655554/tcpip_manager.o ${OBJECTDIR}/_ext/361655554/tcpip_notify.o ${OBJECTDIR}/_ext/361655554/tcpip_packet.o ${OBJECTDIR}/_ext/1360937237/bmcnet.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/28091179/misc.o.d ${OBJECTDIR}/_ext/74298950/bsp.o.d ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o.d ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d ${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d ${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o.d ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d ${OBJECTDIR}/_ext/68765530/sys_reset.o.d ${OBJECTDIR}/_ext/1688732426/system_init.o.d ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/http_print.o.d ${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d ${OBJECTDIR}/_ext/1762287818/adler32.o.d ${OBJECTDIR}/_ext/1762287818/compress.o.d ${OBJECTDIR}/_ext/1762287818/crc32.o.d ${OBJECTDIR}/_ext/1762287818/deflate.o.d ${OBJECTDIR}/_ext/1762287818/infback.o.d ${OBJECTDIR}/_ext/1762287818/inffast.o.d ${OBJECTDIR}/_ext/1762287818/inflate.o.d ${OBJECTDIR}/_ext/1762287818/inftrees.o.d ${OBJECTDIR}/_ext/1762287818/trees.o.d ${OBJECTDIR}/_ext/1762287818/uncompr.o.d ${OBJECTDIR}/_ext/1762287818/zutil.o.d ${OBJECTDIR}/_ext/28091179/ecc.o.d ${OBJECTDIR}/_ext/28091179/arc4.o.d ${OBJECTDIR}/_ext/28091179/pwdbased.o.d ${OBJECTDIR}/_ext/28091179/tfm.o.d ${OBJECTDIR}/_ext/28091179/asm.o.d ${OBJECTDIR}/_ext/28091179/asn.o.d ${OBJECTDIR}/_ext/28091179/des3.o.d ${OBJECTDIR}/_ext/28091179/rsa.o.d ${OBJECTDIR}/_ext/28091179/aes.o.d ${OBJECTDIR}/_ext/28091179/md5.o.d ${OBJECTDIR}/_ext/28091179/sha.o.d ${OBJECTDIR}/_ext/28091179/sha256.o.d ${OBJECTDIR}/_ext/28091179/sha512.o.d ${OBJECTDIR}/_ext/28091179/hmac.o.d ${OBJECTDIR}/_ext/28091179/hash.o.d ${OBJECTDIR}/_ext/28091179/compress.o.d ${OBJECTDIR}/_ext/28091179/crypto.o.d ${OBJECTDIR}/_ext/28091179/coding.o.d ${OBJECTDIR}/_ext/28091179/error.o.d ${OBJECTDIR}/_ext/28091179/integer.o.d ${OBJECTDIR}/_ext/28091179/logging.o.d ${OBJECTDIR}/_ext/28091179/memory.o.d ${OBJECTDIR}/_ext/28091179/wc_port.o.d ${OBJECTDIR}/_ext/28091179/wolfmath.o.d ${OBJECTDIR}/_ext/1486592573/drv_ethmac.o.d ${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o.d ${OBJECTDIR}/_ext/1632220917/drv_ethphy.o.d ${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o.d ${OBJECTDIR}/_ext/1426996077/drv_miim.o.d ${OBJECTDIR}/_ext/47425154/drv_nvm.o.d ${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o.d ${OBJECTDIR}/_ext/1092753911/drv_spi.o.d ${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o.d ${OBJECTDIR}/_ext/709153290/drv_tmr.o.d ${OBJECTDIR}/_ext/1201400862/drv_usart.o.d ${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o.d ${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o.d ${OBJECTDIR}/_ext/1817879350/net_pres.o.d ${OBJECTDIR}/_ext/433538943/sys_command.o.d ${OBJECTDIR}/_ext/23173237/sys_console.o.d ${OBJECTDIR}/_ext/23173237/sys_console_uart.o.d ${OBJECTDIR}/_ext/2034620947/sys_fs.o.d ${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o.d ${OBJECTDIR}/_ext/842901914/mpfs.o.d ${OBJECTDIR}/_ext/231205469/sys_int_pic32.o.d ${OBJECTDIR}/_ext/655575975/sys_random.o.d ${OBJECTDIR}/_ext/910924237/sys_tmr.o.d ${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o.d ${OBJECTDIR}/_ext/2030780900/helpers.o.d ${OBJECTDIR}/_ext/361655554/ipv4.o.d ${OBJECTDIR}/_ext/361655554/tcp.o.d ${OBJECTDIR}/_ext/361655554/udp.o.d ${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o.d ${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o.d ${OBJECTDIR}/_ext/361655554/arp.o.d ${OBJECTDIR}/_ext/361655554/berkeley_api.o.d ${OBJECTDIR}/_ext/361655554/dhcp.o.d ${OBJECTDIR}/_ext/361655554/dns.o.d ${OBJECTDIR}/_ext/361655554/http.o.d ${OBJECTDIR}/_ext/361655554/nbns.o.d ${OBJECTDIR}/_ext/361655554/sntp.o.d ${OBJECTDIR}/_ext/361655554/telnet.o.d ${OBJECTDIR}/_ext/361655554/tcpip_announce.o.d ${OBJECTDIR}/_ext/361655554/hash_fnv.o.d ${OBJECTDIR}/_ext/361655554/oahash.o.d ${OBJECTDIR}/_ext/361655554/tcpip_helpers.o.d ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.d ${OBJECTDIR}/_ext/361655554/tcpip_manager.o.d ${OBJECTDIR}/_ext/361655554/tcpip_notify.o.d ${OBJECTDIR}/_ext/361655554/tcpip_packet.o.d ${OBJECTDIR}/_ext/1360937237/bmcnet.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/28091179/misc.o ${OBJECTDIR}/_ext/74298950/bsp.o ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o ${OBJECTDIR}/_ext/977502197/drv_spi_api.o ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o ${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/68765530/sys_reset.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/http_print.o ${OBJECTDIR}/_ext/1360937237/custom_http_app.o ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o ${OBJECTDIR}/_ext/1762287818/adler32.o ${OBJECTDIR}/_ext/1762287818/compress.o ${OBJECTDIR}/_ext/1762287818/crc32.o ${OBJECTDIR}/_ext/1762287818/deflate.o ${OBJECTDIR}/_ext/1762287818/infback.o ${OBJECTDIR}/_ext/1762287818/inffast.o ${OBJECTDIR}/_ext/1762287818/inflate.o ${OBJECTDIR}/_ext/1762287818/inftrees.o ${OBJECTDIR}/_ext/1762287818/trees.o ${OBJECTDIR}/_ext/1762287818/uncompr.o ${OBJECTDIR}/_ext/1762287818/zutil.o ${OBJECTDIR}/_ext/28091179/ecc.o ${OBJECTDIR}/_ext/28091179/arc4.o ${OBJECTDIR}/_ext/28091179/pwdbased.o ${OBJECTDIR}/_ext/28091179/tfm.o ${OBJECTDIR}/_ext/28091179/asm.o ${OBJECTDIR}/_ext/28091179/asn.o ${OBJECTDIR}/_ext/28091179/des3.o ${OBJECTDIR}/_ext/28091179/rsa.o ${OBJECTDIR}/_ext/28091179/aes.o ${OBJECTDIR}/_ext/28091179/md5.o ${OBJECTDIR}/_ext/28091179/sha.o ${OBJECTDIR}/_ext/28091179/sha256.o ${OBJECTDIR}/_ext/28091179/sha512.o ${OBJECTDIR}/_ext/28091179/hmac.o ${OBJECTDIR}/_ext/28091179/hash.o ${OBJECTDIR}/_ext/28091179/compress.o ${OBJECTDIR}/_ext/28091179/crypto.o ${OBJECTDIR}/_ext/28091179/coding.o ${OBJECTDIR}/_ext/28091179/error.o ${OBJECTDIR}/_ext/28091179/integer.o ${OBJECTDIR}/_ext/28091179/logging.o ${OBJECTDIR}/_ext/28091179/memory.o ${OBJECTDIR}/_ext/28091179/wc_port.o ${OBJECTDIR}/_ext/28091179/wolfmath.o ${OBJECTDIR}/_ext/1486592573/drv_ethmac.o ${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o ${OBJECTDIR}/_ext/1632220917/drv_ethphy.o ${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o ${OBJECTDIR}/_ext/1426996077/drv_miim.o ${OBJECTDIR}/_ext/47425154/drv_nvm.o ${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o ${OBJECTDIR}/_ext/1092753911/drv_spi.o ${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o ${OBJECTDIR}/_ext/709153290/drv_tmr.o ${OBJECTDIR}/_ext/1201400862/drv_usart.o ${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o ${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o ${OBJECTDIR}/_ext/1817879350/net_pres.o ${OBJECTDIR}/_ext/433538943/sys_command.o ${OBJECTDIR}/_ext/23173237/sys_console.o ${OBJECTDIR}/_ext/23173237/sys_console_uart.o ${OBJECTDIR}/_ext/2034620947/sys_fs.o ${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o ${OBJECTDIR}/_ext/842901914/mpfs.o ${OBJECTDIR}/_ext/231205469/sys_int_pic32.o ${OBJECTDIR}/_ext/655575975/sys_random.o ${OBJECTDIR}/_ext/910924237/sys_tmr.o ${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o ${OBJECTDIR}/_ext/2030780900/helpers.o ${OBJECTDIR}/_ext/361655554/ipv4.o ${OBJECTDIR}/_ext/361655554/tcp.o ${OBJECTDIR}/_ext/361655554/udp.o ${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o ${OBJECTDIR}/_ext/361655554/arp.o ${OBJECTDIR}/_ext/361655554/berkeley_api.o ${OBJECTDIR}/_ext/361655554/dhcp.o ${OBJECTDIR}/_ext/361655554/dns.o ${OBJECTDIR}/_ext/361655554/http.o ${OBJECTDIR}/_ext/361655554/nbns.o ${OBJECTDIR}/_ext/361655554/sntp.o ${OBJECTDIR}/_ext/361655554/telnet.o ${OBJECTDIR}/_ext/361655554/tcpip_announce.o ${OBJECTDIR}/_ext/361655554/hash_fnv.o ${OBJECTDIR}/_ext/361655554/oahash.o ${OBJECTDIR}/_ext/361655554/tcpip_helpers.o ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o ${OBJECTDIR}/_ext/361655554/tcpip_manager.o ${OBJECTDIR}/_ext/361655554/tcpip_notify.o ${OBJECTDIR}/_ext/361655554/tcpip_packet.o ${OBJECTDIR}/_ext/1360937237/bmcnet.o

# Source Files
SOURCEFILES=../../../../../../microchip/harmony/v2_06/framework/crypto/src/misc.c ../src/system_config/default/bsp/bsp.c ../src/system_config/default/framework/driver/adc/src/drv_adc_static.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c ../src/system_config/default/framework/net/pres/net_pres_enc_glue.c ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c ../src/system_config/default/framework/system/devcon/src/sys_devcon.c ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/framework/system/reset/src/sys_reset.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_exceptions.c ../src/system_config/default/system_tasks.c ../src/app.c ../src/main.c ../src/http_print.c ../src/custom_http_app.c ../src/mpfs_img2.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/adler32.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/compress.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/crc32.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/deflate.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/infback.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inffast.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inflate.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inftrees.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/trees.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/uncompr.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/zutil.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/ecc.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/arc4.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/pwdbased.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/tfm.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/asm.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/asn.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/des3.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/rsa.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/aes.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/md5.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha256.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha512.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/hmac.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/hash.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/compress.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/crypto.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/coding.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/error.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/integer.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/logging.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/memory.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/wc_port.c ../../../../../../microchip/harmony/v2_06/framework/crypto/src/wolfmath.c ../../../../../../microchip/harmony/v2_06/framework/driver/ethmac/src/dynamic/drv_ethmac.c ../../../../../../microchip/harmony/v2_06/framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c ../../../../../../microchip/harmony/v2_06/framework/driver/ethphy/src/dynamic/drv_ethphy.c ../../../../../../microchip/harmony/v2_06/framework/driver/ethphy/src/dynamic/drv_extphy_dp83848.c ../../../../../../microchip/harmony/v2_06/framework/driver/miim/src/dynamic/drv_miim.c ../../../../../../microchip/harmony/v2_06/framework/driver/nvm/src/dynamic/drv_nvm.c ../../../../../../microchip/harmony/v2_06/framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c ../../../../../../microchip/harmony/v2_06/framework/driver/spi/src/dynamic/drv_spi.c ../../../../../../microchip/harmony/v2_06/framework/driver/spi/src/drv_spi_sys_queue_fifo.c ../../../../../../microchip/harmony/v2_06/framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart.c ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart_read_write.c ../../../../../../microchip/harmony/v2_06/framework/net/pres/src/net_pres.c ../../../../../../microchip/harmony/v2_06/framework/system/command/src/sys_command.c ../../../../../../microchip/harmony/v2_06/framework/system/console/src/sys_console.c ../../../../../../microchip/harmony/v2_06/framework/system/console/src/sys_console_uart.c ../../../../../../microchip/harmony/v2_06/framework/system/fs/src/dynamic/sys_fs.c ../../../../../../microchip/harmony/v2_06/framework/system/fs/src/dynamic/sys_fs_media_manager.c ../../../../../../microchip/harmony/v2_06/framework/system/fs/mpfs/src/mpfs.c ../../../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c ../../../../../../microchip/harmony/v2_06/framework/system/random/src/sys_random.c ../../../../../../microchip/harmony/v2_06/framework/system/tmr/src/sys_tmr.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/common/sys_fs_wrapper.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/common/helpers.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/ipv4.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcp.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/udp.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_heap_alloc.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_heap_internal.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/arp.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/berkeley_api.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/dhcp.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/dns.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/http.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/nbns.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/sntp.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/telnet.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_announce.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/hash_fnv.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/oahash.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_helpers.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_helper_c32.S ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_manager.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_notify.c ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_packet.c ../src/bmcnet.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/remote_daq.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_helper_c32.S  .generated_files/flags/default/7f3389aad4c3a03040be049c163228c314d176dc .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_helper_c32.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_helper_c32.S  .generated_files/flags/default/8ad4f4cb9e984ab5961f72c66d593e13e4b2eff3 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_helper_c32.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/28091179/misc.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/misc.c  .generated_files/flags/default/56006bea39e7adbc0e1d006e95b4488b645cc49b .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/misc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/misc.o.d" -o ${OBJECTDIR}/_ext/28091179/misc.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/74298950/bsp.o: ../src/system_config/default/bsp/bsp.c  .generated_files/flags/default/a8b73f5fae771c71f9eed7ef8ecc00712066e2e0 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/74298950" 
	@${RM} ${OBJECTDIR}/_ext/74298950/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/74298950/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/74298950/bsp.o.d" -o ${OBJECTDIR}/_ext/74298950/bsp.o ../src/system_config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1361460060/drv_adc_static.o: ../src/system_config/default/framework/driver/adc/src/drv_adc_static.c  .generated_files/flags/default/d99f1c5f4e918a7c5e18f87a6f40faf40a33af7a .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1361460060" 
	@${RM} ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1361460060/drv_adc_static.o.d" -o ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o ../src/system_config/default/framework/driver/adc/src/drv_adc_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c  .generated_files/flags/default/8de00b23d47915ac95122b34c8952a6d6037de98 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/977502197/drv_spi_api.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c  .generated_files/flags/default/7cbaaae93b4cf593c69f825c2d6e4a12d888b164 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_api.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c  .generated_files/flags/default/63a53f0d27a766379ce3051ca1c44cb2481c13f1 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o: ../src/system_config/default/framework/net/pres/net_pres_enc_glue.c  .generated_files/flags/default/61cae697bcd3ef2a41606ad616e4d2049130c8a1 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1278673032" 
	@${RM} ${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o.d" -o ${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o ../src/system_config/default/framework/net/pres/net_pres_enc_glue.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o: ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c  .generated_files/flags/default/cbedd2d5aa25ac0a3c2f8596f2a2ae3632ef48e2 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/340578644/sys_devcon.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon.c  .generated_files/flags/default/3b9953be505088cd135c38a87a6cd1179314031f .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ../src/system_config/default/framework/system/devcon/src/sys_devcon.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c  .generated_files/flags/default/d78a21c10939c3067f85e826708c0c23e241285e .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/default/3b57a872ac0eb848e0f31a8ffbaf3c46d95f0e82 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/68765530/sys_reset.o: ../src/system_config/default/framework/system/reset/src/sys_reset.c  .generated_files/flags/default/e3d71770989bab336b0b7bd4f1b7d3930b50e7db .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/68765530" 
	@${RM} ${OBJECTDIR}/_ext/68765530/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/68765530/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/68765530/sys_reset.o.d" -o ${OBJECTDIR}/_ext/68765530/sys_reset.o ../src/system_config/default/framework/system/reset/src/sys_reset.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  .generated_files/flags/default/4c5561412f39fe79bb6a62209a8d3f7e0e7b4161 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  .generated_files/flags/default/a0eea946b44cfa7c05411e5791b7619c41918adf .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_exceptions.o: ../src/system_config/default/system_exceptions.c  .generated_files/flags/default/9ab2cdcedef3c88bbc72947d46647df1b614bb7e .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ../src/system_config/default/system_exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  .generated_files/flags/default/897a328f32fc443a11feb43565583f4f0ea7e91c .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/2d779ff9c665585e28c9000b332b73f59e472774 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/3b10e119127934e385b04184667d903cff1279c6 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/http_print.o: ../src/http_print.c  .generated_files/flags/default/a9de4378ce7dacda50bf79a6116ff646ee149683 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/http_print.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/http_print.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/http_print.o.d" -o ${OBJECTDIR}/_ext/1360937237/http_print.o ../src/http_print.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/custom_http_app.o: ../src/custom_http_app.c  .generated_files/flags/default/e34ba05ffdcd7a0998fce7a7c479099f8ba613d6 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/custom_http_app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d" -o ${OBJECTDIR}/_ext/1360937237/custom_http_app.o ../src/custom_http_app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/mpfs_img2.o: ../src/mpfs_img2.c  .generated_files/flags/default/34b74dcdafc85bfd6d130af3cd08f852fce8493b .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d" -o ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o ../src/mpfs_img2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/adler32.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/adler32.c  .generated_files/flags/default/6669259415b9acc8862e91ab6307da76895d0912 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/adler32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/adler32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/adler32.o.d" -o ${OBJECTDIR}/_ext/1762287818/adler32.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/adler32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/compress.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/compress.c  .generated_files/flags/default/7bdcc62e8761e8c0e4e7db7bad345745843a80f7 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/compress.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/compress.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/compress.o.d" -o ${OBJECTDIR}/_ext/1762287818/compress.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/compress.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/crc32.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/crc32.c  .generated_files/flags/default/26f479313dc851d0d66f30d60cb16b15c73b5137 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/crc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/crc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/crc32.o.d" -o ${OBJECTDIR}/_ext/1762287818/crc32.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/crc32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/deflate.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/deflate.c  .generated_files/flags/default/727db291fe1de148eb3f1ea38b1098efae45fa21 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/deflate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/deflate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/deflate.o.d" -o ${OBJECTDIR}/_ext/1762287818/deflate.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/deflate.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/infback.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/infback.c  .generated_files/flags/default/ee7860ec3b56a08c7c9b05ae20117b9806c2cc4a .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/infback.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/infback.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/infback.o.d" -o ${OBJECTDIR}/_ext/1762287818/infback.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/infback.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/inffast.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inffast.c  .generated_files/flags/default/80768d077460dd81c8e1d8b0a314ba5e9ab3a4e0 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inffast.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inffast.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/inffast.o.d" -o ${OBJECTDIR}/_ext/1762287818/inffast.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inffast.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/inflate.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inflate.c  .generated_files/flags/default/3fe78c192395a838c3f0a50273624b1463608e1d .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inflate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inflate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/inflate.o.d" -o ${OBJECTDIR}/_ext/1762287818/inflate.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inflate.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/inftrees.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inftrees.c  .generated_files/flags/default/6cf07a78c1919ce293804744aa956bbca52ad76a .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inftrees.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inftrees.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/inftrees.o.d" -o ${OBJECTDIR}/_ext/1762287818/inftrees.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inftrees.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/trees.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/trees.c  .generated_files/flags/default/9db3ba847563068264473c7f1e252adc9db649c4 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/trees.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/trees.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/trees.o.d" -o ${OBJECTDIR}/_ext/1762287818/trees.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/trees.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/uncompr.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/uncompr.c  .generated_files/flags/default/484dbeb3e75288042f0aeeddf83d6fc175c969a5 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/uncompr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/uncompr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/uncompr.o.d" -o ${OBJECTDIR}/_ext/1762287818/uncompr.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/uncompr.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/zutil.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/zutil.c  .generated_files/flags/default/86803dc5b657e83bdfa33344c77757fcde0716da .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/zutil.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/zutil.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/zutil.o.d" -o ${OBJECTDIR}/_ext/1762287818/zutil.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/zutil.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/ecc.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/ecc.c  .generated_files/flags/default/87949c0504897a67f56e9c7e2c0254f19de78c9a .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/ecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/ecc.o.d" -o ${OBJECTDIR}/_ext/28091179/ecc.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/ecc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/arc4.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/arc4.c  .generated_files/flags/default/11a66f805262129e9ccee8ce1d02f3419204b8f4 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/arc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/arc4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/arc4.o.d" -o ${OBJECTDIR}/_ext/28091179/arc4.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/arc4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/pwdbased.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/pwdbased.c  .generated_files/flags/default/f47fb09eac4476d00b2be231fa0e32bac5ed08bc .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/pwdbased.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/pwdbased.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/pwdbased.o.d" -o ${OBJECTDIR}/_ext/28091179/pwdbased.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/pwdbased.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/tfm.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/tfm.c  .generated_files/flags/default/cd3569bd99d7b8fd1de80f92b3f94b8f3c3f1682 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/tfm.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/tfm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/tfm.o.d" -o ${OBJECTDIR}/_ext/28091179/tfm.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/tfm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/asm.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/asm.c  .generated_files/flags/default/c02783d8cd8c1cbe02fb4f48ebcdf37efea2ccb9 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/asm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/asm.o.d" -o ${OBJECTDIR}/_ext/28091179/asm.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/asm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/asn.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/asn.c  .generated_files/flags/default/f6aa7621842f732d7dc54b3c8ecfe72e241b0fd4 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/asn.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/asn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/asn.o.d" -o ${OBJECTDIR}/_ext/28091179/asn.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/asn.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/des3.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/des3.c  .generated_files/flags/default/1f41dfdf4e96bf6caac79ce70b32e15639cf07cc .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/des3.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/des3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/des3.o.d" -o ${OBJECTDIR}/_ext/28091179/des3.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/des3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/rsa.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/rsa.c  .generated_files/flags/default/1a90422a305ff30811009d9ea362ba92f70d6b51 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/rsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/rsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/rsa.o.d" -o ${OBJECTDIR}/_ext/28091179/rsa.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/rsa.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/aes.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/aes.c  .generated_files/flags/default/873bc4ff531190c8e5d7a52dc2c050a135bf5271 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/aes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/aes.o.d" -o ${OBJECTDIR}/_ext/28091179/aes.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/aes.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/md5.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/md5.c  .generated_files/flags/default/6cc39c42f2eb786defde0fa89d4986069d35a6d0 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/md5.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/md5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/md5.o.d" -o ${OBJECTDIR}/_ext/28091179/md5.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/md5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/sha.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha.c  .generated_files/flags/default/2f6d40ecdac28ae6d057aa5e0b7ffe8cce9c1d40 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/sha.o.d" -o ${OBJECTDIR}/_ext/28091179/sha.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/sha256.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha256.c  .generated_files/flags/default/af3284bb679ce18dc9ebc76c94b43a4ff0de4327 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/sha256.o.d" -o ${OBJECTDIR}/_ext/28091179/sha256.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha256.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/sha512.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha512.c  .generated_files/flags/default/c751c345d975536b0f150d6747c958b1e211a436 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha512.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha512.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/sha512.o.d" -o ${OBJECTDIR}/_ext/28091179/sha512.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha512.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/hmac.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/hmac.c  .generated_files/flags/default/14d64ed6965b131a25331196c79f6c5f049c78c .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/hmac.o.d" -o ${OBJECTDIR}/_ext/28091179/hmac.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/hmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/hash.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/hash.c  .generated_files/flags/default/a98492b732bd9301fcdd4c07a968fe373a23fe5b .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/hash.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/hash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/hash.o.d" -o ${OBJECTDIR}/_ext/28091179/hash.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/hash.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/compress.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/compress.c  .generated_files/flags/default/7040ee780642662e9b9a87f845c669c1a2d3ae72 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/compress.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/compress.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/compress.o.d" -o ${OBJECTDIR}/_ext/28091179/compress.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/compress.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/crypto.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/crypto.c  .generated_files/flags/default/f869ff4ac76507b4f285ab3f9a98a05559379826 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/crypto.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/crypto.o.d" -o ${OBJECTDIR}/_ext/28091179/crypto.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/crypto.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/coding.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/coding.c  .generated_files/flags/default/869da55906706c4e98fe5ba8f5e5b7644c6e3016 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/coding.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/coding.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/coding.o.d" -o ${OBJECTDIR}/_ext/28091179/coding.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/coding.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/error.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/error.c  .generated_files/flags/default/f7cdf48c61336b26d6531a2393bd11f885dd6b84 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/error.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/error.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/error.o.d" -o ${OBJECTDIR}/_ext/28091179/error.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/error.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/integer.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/integer.c  .generated_files/flags/default/673fff986a406bfdf318d56c0ca7fee8d82c1c7e .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/integer.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/integer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/integer.o.d" -o ${OBJECTDIR}/_ext/28091179/integer.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/integer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/logging.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/logging.c  .generated_files/flags/default/fbf7a1fafe377a21774abd223362a08d910da3fa .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/logging.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/logging.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/logging.o.d" -o ${OBJECTDIR}/_ext/28091179/logging.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/logging.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/memory.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/memory.c  .generated_files/flags/default/3921940bf2504c819f8f621b6cda7c2653d93f7a .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/memory.o.d" -o ${OBJECTDIR}/_ext/28091179/memory.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/memory.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/wc_port.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/wc_port.c  .generated_files/flags/default/8004554e976b1de10ec1946057adecb41e8cb0a9 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/wc_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/wc_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/wc_port.o.d" -o ${OBJECTDIR}/_ext/28091179/wc_port.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/wc_port.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/wolfmath.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/wolfmath.c  .generated_files/flags/default/14df22242956631bf94d95a4c1ca8fb451edb828 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/wolfmath.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/wolfmath.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/wolfmath.o.d" -o ${OBJECTDIR}/_ext/28091179/wolfmath.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/wolfmath.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1486592573/drv_ethmac.o: ../../../../../../microchip/harmony/v2_06/framework/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/flags/default/b34c0addb7e30738552e95238834496243e07c97 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1486592573" 
	@${RM} ${OBJECTDIR}/_ext/1486592573/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1486592573/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1486592573/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1486592573/drv_ethmac.o ../../../../../../microchip/harmony/v2_06/framework/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o: ../../../../../../microchip/harmony/v2_06/framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/flags/default/3748b49eb3c5aad801d14fc9c2c8c3db981d364f .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1486592573" 
	@${RM} ${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o ../../../../../../microchip/harmony/v2_06/framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1632220917/drv_ethphy.o: ../../../../../../microchip/harmony/v2_06/framework/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/flags/default/831c1f9a395560da8185dc8d49c42fbafcd538fc .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1632220917" 
	@${RM} ${OBJECTDIR}/_ext/1632220917/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1632220917/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1632220917/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/1632220917/drv_ethphy.o ../../../../../../microchip/harmony/v2_06/framework/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o: ../../../../../../microchip/harmony/v2_06/framework/driver/ethphy/src/dynamic/drv_extphy_dp83848.c  .generated_files/flags/default/9d22d155a5a4ada7d707023a5d4f0dbac4c95b8e .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1632220917" 
	@${RM} ${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o.d 
	@${RM} ${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o.d" -o ${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o ../../../../../../microchip/harmony/v2_06/framework/driver/ethphy/src/dynamic/drv_extphy_dp83848.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1426996077/drv_miim.o: ../../../../../../microchip/harmony/v2_06/framework/driver/miim/src/dynamic/drv_miim.c  .generated_files/flags/default/16e4a5f5cdc23c8031dd043e9d4271aab54409f .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1426996077" 
	@${RM} ${OBJECTDIR}/_ext/1426996077/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/1426996077/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1426996077/drv_miim.o.d" -o ${OBJECTDIR}/_ext/1426996077/drv_miim.o ../../../../../../microchip/harmony/v2_06/framework/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/47425154/drv_nvm.o: ../../../../../../microchip/harmony/v2_06/framework/driver/nvm/src/dynamic/drv_nvm.c  .generated_files/flags/default/651336b30e1b5062e0e0f2d888a800aea481f17 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/47425154" 
	@${RM} ${OBJECTDIR}/_ext/47425154/drv_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/47425154/drv_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/47425154/drv_nvm.o.d" -o ${OBJECTDIR}/_ext/47425154/drv_nvm.o ../../../../../../microchip/harmony/v2_06/framework/driver/nvm/src/dynamic/drv_nvm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o: ../../../../../../microchip/harmony/v2_06/framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c  .generated_files/flags/default/1edfdc803a68d012628bfdda268dae080549a702 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/47425154" 
	@${RM} ${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o.d 
	@${RM} ${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o.d" -o ${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o ../../../../../../microchip/harmony/v2_06/framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1092753911/drv_spi.o: ../../../../../../microchip/harmony/v2_06/framework/driver/spi/src/dynamic/drv_spi.c  .generated_files/flags/default/39666bb59fb79d3f74b8eed6f2e28d52e8ac11ec .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1092753911" 
	@${RM} ${OBJECTDIR}/_ext/1092753911/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1092753911/drv_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1092753911/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1092753911/drv_spi.o ../../../../../../microchip/harmony/v2_06/framework/driver/spi/src/dynamic/drv_spi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o: ../../../../../../microchip/harmony/v2_06/framework/driver/spi/src/drv_spi_sys_queue_fifo.c  .generated_files/flags/default/90fc061908269ea1d9cf1c32dd5823641a874a72 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/111161817" 
	@${RM} ${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o.d" -o ${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o ../../../../../../microchip/harmony/v2_06/framework/driver/spi/src/drv_spi_sys_queue_fifo.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/709153290/drv_tmr.o: ../../../../../../microchip/harmony/v2_06/framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/default/ffed873045348168be49644a24e8a1fef1a27a2 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/709153290" 
	@${RM} ${OBJECTDIR}/_ext/709153290/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/709153290/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/709153290/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/709153290/drv_tmr.o ../../../../../../microchip/harmony/v2_06/framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1201400862/drv_usart.o: ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart.c  .generated_files/flags/default/37a2714f602213b910fc5feddb52a1c81487f982 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1201400862" 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1201400862/drv_usart.o.d" -o ${OBJECTDIR}/_ext/1201400862/drv_usart.o ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o: ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c  .generated_files/flags/default/9ecedc8bd9e1401bab0b9a5eb7c72507a92284aa .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1201400862" 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o.d" -o ${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o: ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart_read_write.c  .generated_files/flags/default/2f264c37b01a342c8bf200ca3a3b3019e9b2d9f .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1201400862" 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o.d" -o ${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart_read_write.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1817879350/net_pres.o: ../../../../../../microchip/harmony/v2_06/framework/net/pres/src/net_pres.c  .generated_files/flags/default/be84f4a6cc627a660a5c10bac2d83100a64fa58c .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1817879350" 
	@${RM} ${OBJECTDIR}/_ext/1817879350/net_pres.o.d 
	@${RM} ${OBJECTDIR}/_ext/1817879350/net_pres.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1817879350/net_pres.o.d" -o ${OBJECTDIR}/_ext/1817879350/net_pres.o ../../../../../../microchip/harmony/v2_06/framework/net/pres/src/net_pres.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/433538943/sys_command.o: ../../../../../../microchip/harmony/v2_06/framework/system/command/src/sys_command.c  .generated_files/flags/default/f1c7373228467ed9de06f7c1b0f1b45b78fc07a3 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/433538943" 
	@${RM} ${OBJECTDIR}/_ext/433538943/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/433538943/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/433538943/sys_command.o.d" -o ${OBJECTDIR}/_ext/433538943/sys_command.o ../../../../../../microchip/harmony/v2_06/framework/system/command/src/sys_command.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/23173237/sys_console.o: ../../../../../../microchip/harmony/v2_06/framework/system/console/src/sys_console.c  .generated_files/flags/default/9deb5e3678bb9a90002b3da3a42c42168f98bead .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/23173237" 
	@${RM} ${OBJECTDIR}/_ext/23173237/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/23173237/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/23173237/sys_console.o.d" -o ${OBJECTDIR}/_ext/23173237/sys_console.o ../../../../../../microchip/harmony/v2_06/framework/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/23173237/sys_console_uart.o: ../../../../../../microchip/harmony/v2_06/framework/system/console/src/sys_console_uart.c  .generated_files/flags/default/bb7e9872fcefaedccf8af3884012e74ecd630109 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/23173237" 
	@${RM} ${OBJECTDIR}/_ext/23173237/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/23173237/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/23173237/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/23173237/sys_console_uart.o ../../../../../../microchip/harmony/v2_06/framework/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2034620947/sys_fs.o: ../../../../../../microchip/harmony/v2_06/framework/system/fs/src/dynamic/sys_fs.c  .generated_files/flags/default/29b0b3ac0d2032198576b27ebf35546d3d927bac .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/2034620947" 
	@${RM} ${OBJECTDIR}/_ext/2034620947/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/2034620947/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2034620947/sys_fs.o.d" -o ${OBJECTDIR}/_ext/2034620947/sys_fs.o ../../../../../../microchip/harmony/v2_06/framework/system/fs/src/dynamic/sys_fs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o: ../../../../../../microchip/harmony/v2_06/framework/system/fs/src/dynamic/sys_fs_media_manager.c  .generated_files/flags/default/48414730f829e5e8a2a20a403beb26f65aba2c9a .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/2034620947" 
	@${RM} ${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o ../../../../../../microchip/harmony/v2_06/framework/system/fs/src/dynamic/sys_fs_media_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/842901914/mpfs.o: ../../../../../../microchip/harmony/v2_06/framework/system/fs/mpfs/src/mpfs.c  .generated_files/flags/default/c62f884e72e2a3364ce7bb888c35525978bc7d17 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/842901914" 
	@${RM} ${OBJECTDIR}/_ext/842901914/mpfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/842901914/mpfs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/842901914/mpfs.o.d" -o ${OBJECTDIR}/_ext/842901914/mpfs.o ../../../../../../microchip/harmony/v2_06/framework/system/fs/mpfs/src/mpfs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/231205469/sys_int_pic32.o: ../../../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c  .generated_files/flags/default/5c14f058d13904596d6013d1a2b618b0b41691ae .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/231205469" 
	@${RM} ${OBJECTDIR}/_ext/231205469/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/231205469/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/231205469/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/231205469/sys_int_pic32.o ../../../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/655575975/sys_random.o: ../../../../../../microchip/harmony/v2_06/framework/system/random/src/sys_random.c  .generated_files/flags/default/9078e0199738219677f193f04bf5a397f51748d1 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/655575975" 
	@${RM} ${OBJECTDIR}/_ext/655575975/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/655575975/sys_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/655575975/sys_random.o.d" -o ${OBJECTDIR}/_ext/655575975/sys_random.o ../../../../../../microchip/harmony/v2_06/framework/system/random/src/sys_random.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/910924237/sys_tmr.o: ../../../../../../microchip/harmony/v2_06/framework/system/tmr/src/sys_tmr.c  .generated_files/flags/default/56ecc94eb3d9267c1f5536d956fdb554504250a2 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/910924237" 
	@${RM} ${OBJECTDIR}/_ext/910924237/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/910924237/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/910924237/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/910924237/sys_tmr.o ../../../../../../microchip/harmony/v2_06/framework/system/tmr/src/sys_tmr.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/common/sys_fs_wrapper.c  .generated_files/flags/default/290c553da7e5587d608a7e9d2bef7bb6aa3fe146 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/2030780900" 
	@${RM} ${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o.d" -o ${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/common/sys_fs_wrapper.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2030780900/helpers.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/common/helpers.c  .generated_files/flags/default/ad3f5ea72ef62189379b755dd6dde2558a7d1256 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/2030780900" 
	@${RM} ${OBJECTDIR}/_ext/2030780900/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/2030780900/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2030780900/helpers.o.d" -o ${OBJECTDIR}/_ext/2030780900/helpers.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/common/helpers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/ipv4.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/ipv4.c  .generated_files/flags/default/f0451062a5d8ff0109325053ffb64f290cb7c35f .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/ipv4.o.d" -o ${OBJECTDIR}/_ext/361655554/ipv4.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/ipv4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcp.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcp.c  .generated_files/flags/default/df39eec4e9b5379b52022f6d92ac6353d7188a6d .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcp.o.d" -o ${OBJECTDIR}/_ext/361655554/tcp.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/udp.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/udp.c  .generated_files/flags/default/a8924d6e30b361d09cf876289e68e284e36ee38 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/udp.o.d" -o ${OBJECTDIR}/_ext/361655554/udp.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/udp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/default/27ff4ad562b9b1bf5f11349c6bbce472703e9699 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/default/e7f5bd5d1c136f344af0d4e3ff8bc7c0ef19e6f7 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_heap_internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/arp.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/arp.c  .generated_files/flags/default/336c6ea4ce702fd64e81fe64029a8f737e364f0e .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/arp.o.d" -o ${OBJECTDIR}/_ext/361655554/arp.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/arp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/berkeley_api.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/berkeley_api.c  .generated_files/flags/default/af2b2056b73338f8ec6b645c9f3f58ef66175440 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/berkeley_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/berkeley_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/berkeley_api.o.d" -o ${OBJECTDIR}/_ext/361655554/berkeley_api.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/berkeley_api.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/dhcp.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/dhcp.c  .generated_files/flags/default/28b91344efc20f3aa76a9c1fd70ca640f1503ae4 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/dhcp.o.d" -o ${OBJECTDIR}/_ext/361655554/dhcp.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/dhcp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/dns.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/dns.c  .generated_files/flags/default/1c4e27e7eb84f705dad42668eab1d198a5d8e7dd .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/dns.o.d" -o ${OBJECTDIR}/_ext/361655554/dns.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/dns.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/http.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/http.c  .generated_files/flags/default/c22568b5cafa17eaafa5254d814251de56bec5e2 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/http.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/http.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/http.o.d" -o ${OBJECTDIR}/_ext/361655554/http.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/http.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/nbns.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/nbns.c  .generated_files/flags/default/1c02654f6f9e6a613c9da44462bb6d1f2426be4 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/nbns.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/nbns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/nbns.o.d" -o ${OBJECTDIR}/_ext/361655554/nbns.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/nbns.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/sntp.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/sntp.c  .generated_files/flags/default/71c3275bcab94d493048bfdf02a5f3e6ca3d714e .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/sntp.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/sntp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/sntp.o.d" -o ${OBJECTDIR}/_ext/361655554/sntp.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/sntp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/telnet.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/telnet.c  .generated_files/flags/default/ab14273885aac4e7a7fb6ffc2e34c62c330f2f31 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/telnet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/telnet.o.d" -o ${OBJECTDIR}/_ext/361655554/telnet.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/telnet.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcpip_announce.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_announce.c  .generated_files/flags/default/372ed239d4fcd889ca88347f3b7825f21dd208a8 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_announce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_announce.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_announce.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_announce.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/hash_fnv.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/hash_fnv.c  .generated_files/flags/default/6a59a4be3d867af5f8a79fb7dfd9639eb3b2dfab .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/361655554/hash_fnv.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/hash_fnv.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/oahash.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/oahash.c  .generated_files/flags/default/b9c4478eccb4eb7c41ac1faf9fa8457c22002496 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/oahash.o.d" -o ${OBJECTDIR}/_ext/361655554/oahash.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/oahash.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcpip_helpers.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_helpers.c  .generated_files/flags/default/34102224ba52eb03c9058663e402e0db2829beb0 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_helpers.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_helpers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcpip_manager.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_manager.c  .generated_files/flags/default/b7efad3b1040ea662ef65e3ac7b5daf2be5f3a7e .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_manager.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcpip_notify.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_notify.c  .generated_files/flags/default/62bb7b2b219abfa5153bbb0daed1172fa99e441c .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_notify.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_notify.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcpip_packet.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_packet.c  .generated_files/flags/default/5520325e74d9b60b2d512fe966bde27e29745498 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_packet.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_packet.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/bmcnet.o: ../src/bmcnet.c  .generated_files/flags/default/3e2dbd3ba282b04f0db80d7c426ede211cd38925 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bmcnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bmcnet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bmcnet.o.d" -o ${OBJECTDIR}/_ext/1360937237/bmcnet.o ../src/bmcnet.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/28091179/misc.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/misc.c  .generated_files/flags/default/b446670cbef8c7beb6ea7c0ae59b7882c434d8c9 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/misc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/misc.o.d" -o ${OBJECTDIR}/_ext/28091179/misc.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/74298950/bsp.o: ../src/system_config/default/bsp/bsp.c  .generated_files/flags/default/86c2bb8064f06f617fb224660fea51a6bc16af37 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/74298950" 
	@${RM} ${OBJECTDIR}/_ext/74298950/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/74298950/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/74298950/bsp.o.d" -o ${OBJECTDIR}/_ext/74298950/bsp.o ../src/system_config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1361460060/drv_adc_static.o: ../src/system_config/default/framework/driver/adc/src/drv_adc_static.c  .generated_files/flags/default/ad91acb4a0476e2df70959fe986e46c5f5e40a72 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1361460060" 
	@${RM} ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1361460060/drv_adc_static.o.d" -o ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o ../src/system_config/default/framework/driver/adc/src/drv_adc_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c  .generated_files/flags/default/b0934e1b3b68d4aa80770e4c20c6a717721ebccd .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/977502197/drv_spi_api.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c  .generated_files/flags/default/3e77955af7c4c78db9e6c4bc64bf14b00af7541d .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_api.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c  .generated_files/flags/default/5993c8643d8bf5b4120b62d07f6da90db6bf69de .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o: ../src/system_config/default/framework/net/pres/net_pres_enc_glue.c  .generated_files/flags/default/b6aaf305446950f2f8cdd4f66755173deb8bf6ec .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1278673032" 
	@${RM} ${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o.d" -o ${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o ../src/system_config/default/framework/net/pres/net_pres_enc_glue.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o: ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c  .generated_files/flags/default/7673c72192a7827d8b734cce349f49a14c44f977 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/340578644/sys_devcon.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon.c  .generated_files/flags/default/9c1fe0844d603aa41b5e752eb7bbdd7d84aa20c2 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ../src/system_config/default/framework/system/devcon/src/sys_devcon.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c  .generated_files/flags/default/2e44ac1a5214c9d5419535ccbe9e3e32d0b1b223 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/default/3d4b16d7d5dba5743300fea5eecb8332d87141c8 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/68765530/sys_reset.o: ../src/system_config/default/framework/system/reset/src/sys_reset.c  .generated_files/flags/default/431349a64c4aa2881451aa8a205a4639a6c6bce0 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/68765530" 
	@${RM} ${OBJECTDIR}/_ext/68765530/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/68765530/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/68765530/sys_reset.o.d" -o ${OBJECTDIR}/_ext/68765530/sys_reset.o ../src/system_config/default/framework/system/reset/src/sys_reset.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  .generated_files/flags/default/b1fa827505a3f1ef096dcde02957e23ef191a7f8 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  .generated_files/flags/default/8d49527c711545a34ce4f8d5a6ab67b066f665ad .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_exceptions.o: ../src/system_config/default/system_exceptions.c  .generated_files/flags/default/80b6593a681c275c7beda750b9cf87b75e703808 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ../src/system_config/default/system_exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  .generated_files/flags/default/8c903ee33b59d6bfab6e171abab7589de854412b .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/743ead3fdfb751b917070ca8834d0cfa68bf70e7 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/e17be29333f6129285bbe4a4e01f2637ce7fa70f .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/http_print.o: ../src/http_print.c  .generated_files/flags/default/b79fbbb6ef305e18fbe165af9944aa8b721070fc .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/http_print.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/http_print.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/http_print.o.d" -o ${OBJECTDIR}/_ext/1360937237/http_print.o ../src/http_print.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/custom_http_app.o: ../src/custom_http_app.c  .generated_files/flags/default/a0b4d8419ff99994dcaa9c67edcf07ea2ee36312 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/custom_http_app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d" -o ${OBJECTDIR}/_ext/1360937237/custom_http_app.o ../src/custom_http_app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/mpfs_img2.o: ../src/mpfs_img2.c  .generated_files/flags/default/f7894422f72fec2b3418508ee66a42ab5eda8bff .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d" -o ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o ../src/mpfs_img2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/adler32.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/adler32.c  .generated_files/flags/default/33755dd0dda78c97ba5430c9e3cc8696c9498ce1 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/adler32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/adler32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/adler32.o.d" -o ${OBJECTDIR}/_ext/1762287818/adler32.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/adler32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/compress.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/compress.c  .generated_files/flags/default/f55c9b1f5add5c349928a1ad39bb150ed8ff37a .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/compress.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/compress.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/compress.o.d" -o ${OBJECTDIR}/_ext/1762287818/compress.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/compress.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/crc32.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/crc32.c  .generated_files/flags/default/81c1022d6d80547e0d99c6e27bfc51a814e1abb .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/crc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/crc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/crc32.o.d" -o ${OBJECTDIR}/_ext/1762287818/crc32.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/crc32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/deflate.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/deflate.c  .generated_files/flags/default/1dbd928108cb828844fa6f3ef842e3b45b71b7dd .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/deflate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/deflate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/deflate.o.d" -o ${OBJECTDIR}/_ext/1762287818/deflate.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/deflate.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/infback.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/infback.c  .generated_files/flags/default/8aa76141328749d7f3dddaf801740df8b2057f1b .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/infback.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/infback.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/infback.o.d" -o ${OBJECTDIR}/_ext/1762287818/infback.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/infback.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/inffast.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inffast.c  .generated_files/flags/default/143ed1c5c240fee448268899f29e20934d2dc189 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inffast.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inffast.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/inffast.o.d" -o ${OBJECTDIR}/_ext/1762287818/inffast.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inffast.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/inflate.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inflate.c  .generated_files/flags/default/d6bee694277cf36e3d8e6a93c27f1f9dfa4997b2 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inflate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inflate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/inflate.o.d" -o ${OBJECTDIR}/_ext/1762287818/inflate.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inflate.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/inftrees.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inftrees.c  .generated_files/flags/default/7520fc36df2a318530ebe763f266425acf11eddd .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inftrees.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inftrees.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/inftrees.o.d" -o ${OBJECTDIR}/_ext/1762287818/inftrees.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inftrees.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/trees.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/trees.c  .generated_files/flags/default/829b53babe54d823425867c713497ce389a6829a .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/trees.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/trees.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/trees.o.d" -o ${OBJECTDIR}/_ext/1762287818/trees.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/trees.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/uncompr.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/uncompr.c  .generated_files/flags/default/da5cf022dbdf8c147a50cf6e3c33d914fe9678cc .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/uncompr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/uncompr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/uncompr.o.d" -o ${OBJECTDIR}/_ext/1762287818/uncompr.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/uncompr.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/zutil.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/zutil.c  .generated_files/flags/default/da9fc16542ba7615b9584d10f06de93f938f227c .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/zutil.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/zutil.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/zutil.o.d" -o ${OBJECTDIR}/_ext/1762287818/zutil.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/zutil.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/ecc.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/ecc.c  .generated_files/flags/default/d84f62221e9b2990d2c16739392a08dacb9518b9 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/ecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/ecc.o.d" -o ${OBJECTDIR}/_ext/28091179/ecc.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/ecc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/arc4.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/arc4.c  .generated_files/flags/default/ec83baaf11124249c751502ad13180bf1ea39055 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/arc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/arc4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/arc4.o.d" -o ${OBJECTDIR}/_ext/28091179/arc4.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/arc4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/pwdbased.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/pwdbased.c  .generated_files/flags/default/3d85fbdfd48c62da616ebf130f99aabe30f57df1 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/pwdbased.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/pwdbased.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/pwdbased.o.d" -o ${OBJECTDIR}/_ext/28091179/pwdbased.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/pwdbased.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/tfm.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/tfm.c  .generated_files/flags/default/16e871eb8c41da7ab8ceae5deba2f3d37a7752c .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/tfm.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/tfm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/tfm.o.d" -o ${OBJECTDIR}/_ext/28091179/tfm.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/tfm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/asm.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/asm.c  .generated_files/flags/default/bb023afb1613f7c993c6b74e971a42149ec15dda .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/asm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/asm.o.d" -o ${OBJECTDIR}/_ext/28091179/asm.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/asm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/asn.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/asn.c  .generated_files/flags/default/90493d6987d70042cedfd47f1a192a6efccf441a .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/asn.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/asn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/asn.o.d" -o ${OBJECTDIR}/_ext/28091179/asn.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/asn.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/des3.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/des3.c  .generated_files/flags/default/d655001dde58a57374df0a26e6d3598cb4568458 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/des3.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/des3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/des3.o.d" -o ${OBJECTDIR}/_ext/28091179/des3.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/des3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/rsa.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/rsa.c  .generated_files/flags/default/87ae5a1b974da20bc2e24626eaf771cddf5a48e2 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/rsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/rsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/rsa.o.d" -o ${OBJECTDIR}/_ext/28091179/rsa.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/rsa.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/aes.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/aes.c  .generated_files/flags/default/3950f7a08b4ca02c4f9a6b7c2bf0ed76e00ec4d1 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/aes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/aes.o.d" -o ${OBJECTDIR}/_ext/28091179/aes.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/aes.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/md5.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/md5.c  .generated_files/flags/default/2c918810498cc36dd0715157e689d3302ef7a11d .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/md5.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/md5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/md5.o.d" -o ${OBJECTDIR}/_ext/28091179/md5.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/md5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/sha.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha.c  .generated_files/flags/default/fea23ea43c8ab5ffacea3fc25c520b2ca96b00d .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/sha.o.d" -o ${OBJECTDIR}/_ext/28091179/sha.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/sha256.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha256.c  .generated_files/flags/default/7893a18bf1f5410994dc3881bd2a8ae82649a382 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/sha256.o.d" -o ${OBJECTDIR}/_ext/28091179/sha256.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha256.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/sha512.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha512.c  .generated_files/flags/default/c1f8b007399094009138085c85a7aa0324638ef1 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha512.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha512.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/sha512.o.d" -o ${OBJECTDIR}/_ext/28091179/sha512.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha512.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/hmac.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/hmac.c  .generated_files/flags/default/e915a31c894d086124045b1688cd1865ae2bed .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/hmac.o.d" -o ${OBJECTDIR}/_ext/28091179/hmac.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/hmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/hash.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/hash.c  .generated_files/flags/default/d6bbb8559186ca420eaedab1a03ab5d31c3a5c6f .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/hash.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/hash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/hash.o.d" -o ${OBJECTDIR}/_ext/28091179/hash.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/hash.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/compress.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/compress.c  .generated_files/flags/default/1a42a9e284c8afe8119bc5120b61e7025d31e1f7 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/compress.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/compress.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/compress.o.d" -o ${OBJECTDIR}/_ext/28091179/compress.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/compress.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/crypto.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/crypto.c  .generated_files/flags/default/583e982fcd928117c14974a7e0fc2853bf899040 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/crypto.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/crypto.o.d" -o ${OBJECTDIR}/_ext/28091179/crypto.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/crypto.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/coding.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/coding.c  .generated_files/flags/default/ce1e7a491578397a5921b1f2d5fe9e96aef4f59c .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/coding.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/coding.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/coding.o.d" -o ${OBJECTDIR}/_ext/28091179/coding.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/coding.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/error.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/error.c  .generated_files/flags/default/9d03c867b112552543be3f7ffe568cae927bb2e4 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/error.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/error.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/error.o.d" -o ${OBJECTDIR}/_ext/28091179/error.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/error.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/integer.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/integer.c  .generated_files/flags/default/3b7a425a276620b0ce22c5600650782fb8770e8f .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/integer.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/integer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/integer.o.d" -o ${OBJECTDIR}/_ext/28091179/integer.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/integer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/logging.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/logging.c  .generated_files/flags/default/fdf76f6f478d3bf9ccac4dd11acedfcf5d84f8a .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/logging.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/logging.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/logging.o.d" -o ${OBJECTDIR}/_ext/28091179/logging.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/logging.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/memory.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/memory.c  .generated_files/flags/default/2a8e79ac985b121bedc9965dc3dcd1bd5380e1f4 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/memory.o.d" -o ${OBJECTDIR}/_ext/28091179/memory.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/memory.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/wc_port.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/wc_port.c  .generated_files/flags/default/ce73f4a69ff18e0e7e7cfce73d12e30a857c0da7 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/wc_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/wc_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/wc_port.o.d" -o ${OBJECTDIR}/_ext/28091179/wc_port.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/wc_port.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/wolfmath.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/wolfmath.c  .generated_files/flags/default/41f60479f9e9f6483cd2cf25177d779dd29d2add .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/wolfmath.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/wolfmath.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/wolfmath.o.d" -o ${OBJECTDIR}/_ext/28091179/wolfmath.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/wolfmath.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1486592573/drv_ethmac.o: ../../../../../../microchip/harmony/v2_06/framework/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/flags/default/5aede9dbade3764149dc0a3b794651b64b47cdd .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1486592573" 
	@${RM} ${OBJECTDIR}/_ext/1486592573/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1486592573/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1486592573/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1486592573/drv_ethmac.o ../../../../../../microchip/harmony/v2_06/framework/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o: ../../../../../../microchip/harmony/v2_06/framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/flags/default/2a22db1e42b09ea265bc7a3a23db8276d367c8c1 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1486592573" 
	@${RM} ${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o ../../../../../../microchip/harmony/v2_06/framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1632220917/drv_ethphy.o: ../../../../../../microchip/harmony/v2_06/framework/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/flags/default/6986f032c50d3ba2f3fa4a58dfd839022b6e6266 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1632220917" 
	@${RM} ${OBJECTDIR}/_ext/1632220917/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1632220917/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1632220917/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/1632220917/drv_ethphy.o ../../../../../../microchip/harmony/v2_06/framework/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o: ../../../../../../microchip/harmony/v2_06/framework/driver/ethphy/src/dynamic/drv_extphy_dp83848.c  .generated_files/flags/default/9fdf77d6e946e72855be9f801827bddaec101e1d .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1632220917" 
	@${RM} ${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o.d 
	@${RM} ${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o.d" -o ${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o ../../../../../../microchip/harmony/v2_06/framework/driver/ethphy/src/dynamic/drv_extphy_dp83848.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1426996077/drv_miim.o: ../../../../../../microchip/harmony/v2_06/framework/driver/miim/src/dynamic/drv_miim.c  .generated_files/flags/default/5e3ed3227a45c8879c3c4b9d71aaee6389826d9b .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1426996077" 
	@${RM} ${OBJECTDIR}/_ext/1426996077/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/1426996077/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1426996077/drv_miim.o.d" -o ${OBJECTDIR}/_ext/1426996077/drv_miim.o ../../../../../../microchip/harmony/v2_06/framework/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/47425154/drv_nvm.o: ../../../../../../microchip/harmony/v2_06/framework/driver/nvm/src/dynamic/drv_nvm.c  .generated_files/flags/default/f53f2102e28c956c0c40a4b2831ec13868776d25 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/47425154" 
	@${RM} ${OBJECTDIR}/_ext/47425154/drv_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/47425154/drv_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/47425154/drv_nvm.o.d" -o ${OBJECTDIR}/_ext/47425154/drv_nvm.o ../../../../../../microchip/harmony/v2_06/framework/driver/nvm/src/dynamic/drv_nvm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o: ../../../../../../microchip/harmony/v2_06/framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c  .generated_files/flags/default/61314a75bd91ca1d65aa7dba3f46a0a67500e2cb .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/47425154" 
	@${RM} ${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o.d 
	@${RM} ${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o.d" -o ${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o ../../../../../../microchip/harmony/v2_06/framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1092753911/drv_spi.o: ../../../../../../microchip/harmony/v2_06/framework/driver/spi/src/dynamic/drv_spi.c  .generated_files/flags/default/55d966093edbc3303a9ad787182fd7751007e06f .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1092753911" 
	@${RM} ${OBJECTDIR}/_ext/1092753911/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1092753911/drv_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1092753911/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1092753911/drv_spi.o ../../../../../../microchip/harmony/v2_06/framework/driver/spi/src/dynamic/drv_spi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o: ../../../../../../microchip/harmony/v2_06/framework/driver/spi/src/drv_spi_sys_queue_fifo.c  .generated_files/flags/default/bcad86bdd64c15ff6bb3fe1656eafa9b52d00a16 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/111161817" 
	@${RM} ${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o.d" -o ${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o ../../../../../../microchip/harmony/v2_06/framework/driver/spi/src/drv_spi_sys_queue_fifo.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/709153290/drv_tmr.o: ../../../../../../microchip/harmony/v2_06/framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/default/953e12af17658f7127ff8271a637f5e6c6556732 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/709153290" 
	@${RM} ${OBJECTDIR}/_ext/709153290/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/709153290/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/709153290/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/709153290/drv_tmr.o ../../../../../../microchip/harmony/v2_06/framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1201400862/drv_usart.o: ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart.c  .generated_files/flags/default/6887c2af86671a9f24fa6079eb62ecaf2d471a1c .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1201400862" 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1201400862/drv_usart.o.d" -o ${OBJECTDIR}/_ext/1201400862/drv_usart.o ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o: ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c  .generated_files/flags/default/699c2c0a82c30848892c8432b9a7469bfbc6ccac .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1201400862" 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o.d" -o ${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o: ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart_read_write.c  .generated_files/flags/default/5630448cdecf5f78936aa953eb848e5c99ae2c40 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1201400862" 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o.d" -o ${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart_read_write.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1817879350/net_pres.o: ../../../../../../microchip/harmony/v2_06/framework/net/pres/src/net_pres.c  .generated_files/flags/default/5e0440a09428739f735e5ed02e7bff8c473ef736 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1817879350" 
	@${RM} ${OBJECTDIR}/_ext/1817879350/net_pres.o.d 
	@${RM} ${OBJECTDIR}/_ext/1817879350/net_pres.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1817879350/net_pres.o.d" -o ${OBJECTDIR}/_ext/1817879350/net_pres.o ../../../../../../microchip/harmony/v2_06/framework/net/pres/src/net_pres.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/433538943/sys_command.o: ../../../../../../microchip/harmony/v2_06/framework/system/command/src/sys_command.c  .generated_files/flags/default/1fbd36be29768e15defee89e93dd36fe0288b4e4 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/433538943" 
	@${RM} ${OBJECTDIR}/_ext/433538943/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/433538943/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/433538943/sys_command.o.d" -o ${OBJECTDIR}/_ext/433538943/sys_command.o ../../../../../../microchip/harmony/v2_06/framework/system/command/src/sys_command.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/23173237/sys_console.o: ../../../../../../microchip/harmony/v2_06/framework/system/console/src/sys_console.c  .generated_files/flags/default/4bfb8e7aa6ca53e5f837f8cdab43aa514b3f2303 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/23173237" 
	@${RM} ${OBJECTDIR}/_ext/23173237/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/23173237/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/23173237/sys_console.o.d" -o ${OBJECTDIR}/_ext/23173237/sys_console.o ../../../../../../microchip/harmony/v2_06/framework/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/23173237/sys_console_uart.o: ../../../../../../microchip/harmony/v2_06/framework/system/console/src/sys_console_uart.c  .generated_files/flags/default/d5a81f2d7928eb29446de18ade12a190be75308c .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/23173237" 
	@${RM} ${OBJECTDIR}/_ext/23173237/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/23173237/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/23173237/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/23173237/sys_console_uart.o ../../../../../../microchip/harmony/v2_06/framework/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2034620947/sys_fs.o: ../../../../../../microchip/harmony/v2_06/framework/system/fs/src/dynamic/sys_fs.c  .generated_files/flags/default/62e28e9256092e1cf39889deecf9f1647ae98796 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/2034620947" 
	@${RM} ${OBJECTDIR}/_ext/2034620947/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/2034620947/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2034620947/sys_fs.o.d" -o ${OBJECTDIR}/_ext/2034620947/sys_fs.o ../../../../../../microchip/harmony/v2_06/framework/system/fs/src/dynamic/sys_fs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o: ../../../../../../microchip/harmony/v2_06/framework/system/fs/src/dynamic/sys_fs_media_manager.c  .generated_files/flags/default/198111dd6a9ddf3b8e2488eafa82b7f06b97c3c8 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/2034620947" 
	@${RM} ${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o ../../../../../../microchip/harmony/v2_06/framework/system/fs/src/dynamic/sys_fs_media_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/842901914/mpfs.o: ../../../../../../microchip/harmony/v2_06/framework/system/fs/mpfs/src/mpfs.c  .generated_files/flags/default/3f5534ab6b7e4ca091645095db6808fc7c31b3ac .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/842901914" 
	@${RM} ${OBJECTDIR}/_ext/842901914/mpfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/842901914/mpfs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/842901914/mpfs.o.d" -o ${OBJECTDIR}/_ext/842901914/mpfs.o ../../../../../../microchip/harmony/v2_06/framework/system/fs/mpfs/src/mpfs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/231205469/sys_int_pic32.o: ../../../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c  .generated_files/flags/default/e775d9cbc4c91c496c8a7223a14585538b9ac0e4 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/231205469" 
	@${RM} ${OBJECTDIR}/_ext/231205469/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/231205469/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/231205469/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/231205469/sys_int_pic32.o ../../../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/655575975/sys_random.o: ../../../../../../microchip/harmony/v2_06/framework/system/random/src/sys_random.c  .generated_files/flags/default/65787825f2e604e150c82ccaf6184c8b0bc089bf .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/655575975" 
	@${RM} ${OBJECTDIR}/_ext/655575975/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/655575975/sys_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/655575975/sys_random.o.d" -o ${OBJECTDIR}/_ext/655575975/sys_random.o ../../../../../../microchip/harmony/v2_06/framework/system/random/src/sys_random.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/910924237/sys_tmr.o: ../../../../../../microchip/harmony/v2_06/framework/system/tmr/src/sys_tmr.c  .generated_files/flags/default/dac3050440c404580b411ef43443023f31334e03 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/910924237" 
	@${RM} ${OBJECTDIR}/_ext/910924237/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/910924237/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/910924237/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/910924237/sys_tmr.o ../../../../../../microchip/harmony/v2_06/framework/system/tmr/src/sys_tmr.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/common/sys_fs_wrapper.c  .generated_files/flags/default/2543eb3492a455d871f3294798fe58fd79a0ed54 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/2030780900" 
	@${RM} ${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o.d" -o ${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/common/sys_fs_wrapper.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2030780900/helpers.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/common/helpers.c  .generated_files/flags/default/5a91a37893ab72de87cde9d3f33e87f20a72fcbb .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/2030780900" 
	@${RM} ${OBJECTDIR}/_ext/2030780900/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/2030780900/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2030780900/helpers.o.d" -o ${OBJECTDIR}/_ext/2030780900/helpers.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/common/helpers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/ipv4.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/ipv4.c  .generated_files/flags/default/5e91662eb340675a3358ae542c502db01a92919c .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/ipv4.o.d" -o ${OBJECTDIR}/_ext/361655554/ipv4.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/ipv4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcp.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcp.c  .generated_files/flags/default/c00046e1328628f39d49146904a2e5ce2967ac1 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcp.o.d" -o ${OBJECTDIR}/_ext/361655554/tcp.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/udp.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/udp.c  .generated_files/flags/default/46c54ddec580afd7058a14b2fa2ae9a9296b3cda .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/udp.o.d" -o ${OBJECTDIR}/_ext/361655554/udp.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/udp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/default/2ca2597037654402059e9389504af6631a6a46e4 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/default/97d8b9f3b1c89a9591ce8a99d52a6a8c7d8e8078 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_heap_internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/arp.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/arp.c  .generated_files/flags/default/9efe7912068e626dd8397593ef425e384e23c552 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/arp.o.d" -o ${OBJECTDIR}/_ext/361655554/arp.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/arp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/berkeley_api.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/berkeley_api.c  .generated_files/flags/default/e59677d96a2fedf34573c22fb9d52ff380fb01ee .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/berkeley_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/berkeley_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/berkeley_api.o.d" -o ${OBJECTDIR}/_ext/361655554/berkeley_api.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/berkeley_api.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/dhcp.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/dhcp.c  .generated_files/flags/default/dd23f3e5d7122c967acea31acd7b3aaa0941c574 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/dhcp.o.d" -o ${OBJECTDIR}/_ext/361655554/dhcp.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/dhcp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/dns.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/dns.c  .generated_files/flags/default/c3b71241a7441aa1b829fb666f30bddea47ca606 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/dns.o.d" -o ${OBJECTDIR}/_ext/361655554/dns.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/dns.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/http.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/http.c  .generated_files/flags/default/3cdbce9f299cf884a5ab4490ce3f428ced08a279 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/http.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/http.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/http.o.d" -o ${OBJECTDIR}/_ext/361655554/http.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/http.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/nbns.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/nbns.c  .generated_files/flags/default/c420727c82fc770de67f9ebb6f7f23d35702f8aa .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/nbns.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/nbns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/nbns.o.d" -o ${OBJECTDIR}/_ext/361655554/nbns.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/nbns.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/sntp.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/sntp.c  .generated_files/flags/default/d55c64e0f0e75dabbe7f8d77746201b069d2f368 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/sntp.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/sntp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/sntp.o.d" -o ${OBJECTDIR}/_ext/361655554/sntp.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/sntp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/telnet.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/telnet.c  .generated_files/flags/default/7fa434036413568e6658134f65cb4aaa070f8151 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/telnet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/telnet.o.d" -o ${OBJECTDIR}/_ext/361655554/telnet.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/telnet.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcpip_announce.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_announce.c  .generated_files/flags/default/2199e5195a90cf86a662409da338f5612d962a78 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_announce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_announce.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_announce.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_announce.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/hash_fnv.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/hash_fnv.c  .generated_files/flags/default/86b7aa6ef5cfb45da8f6b75600bd963c55430a8e .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/361655554/hash_fnv.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/hash_fnv.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/oahash.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/oahash.c  .generated_files/flags/default/275e73d255a85406ab34c06f94db88116564d33d .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/oahash.o.d" -o ${OBJECTDIR}/_ext/361655554/oahash.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/oahash.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcpip_helpers.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_helpers.c  .generated_files/flags/default/8b6e48bc2620c2fbd41d6b10e018b769d375bb87 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_helpers.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_helpers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcpip_manager.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_manager.c  .generated_files/flags/default/ce63fd8d852dd85f8f1b3a85fa07b2f3fef6dd03 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_manager.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcpip_notify.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_notify.c  .generated_files/flags/default/31beca889fd04fe2dde27f8c2a4591b7580cd5a4 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_notify.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_notify.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcpip_packet.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_packet.c  .generated_files/flags/default/f2326c86759ef16f51c429b9b0a003a46ba2cb3f .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_packet.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_packet.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/bmcnet.o: ../src/bmcnet.c  .generated_files/flags/default/19fbbb752e8389cdb4a5fee32a9186f0a9d12219 .generated_files/flags/default/dd3623c89e4677f90469d78ff507bf2f23022ec
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bmcnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bmcnet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bmcnet.o.d" -o ${OBJECTDIR}/_ext/1360937237/bmcnet.o ../src/bmcnet.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/remote_daq.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../microchip/harmony/v2_06/bin/framework/peripheral/PIC32MX795F512L_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/remote_daq.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ../../../../../../microchip/harmony/v2_06/bin/framework/peripheral/PIC32MX795F512L_peripherals.a      -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=44960,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/remote_daq.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../microchip/harmony/v2_06/bin/framework/peripheral/PIC32MX795F512L_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/remote_daq.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ../../../../../../microchip/harmony/v2_06/bin/framework/peripheral/PIC32MX795F512L_peripherals.a      -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=44960,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}/xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/remote_daq.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
