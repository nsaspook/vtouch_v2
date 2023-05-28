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
FINAL_IMAGE=${DISTDIR}/remote_daq.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/remote_daq.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/remote_daq.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_helper_c32.S  .generated_files/flags/default/fdacd5a75c43bfab4a2cfba01e12165852bf54c8 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_helper_c32.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_helper_c32.S  .generated_files/flags/default/abb7c46174383f20fa3fdaf5bc1adf65900f6f50 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_helper_c32.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/28091179/misc.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/misc.c  .generated_files/flags/default/5cee662fcf4b4c69f06db9fd042c99c4fc2df74d .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/misc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/misc.o.d" -o ${OBJECTDIR}/_ext/28091179/misc.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/misc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/74298950/bsp.o: ../src/system_config/default/bsp/bsp.c  .generated_files/flags/default/9a225b72e9be6726ea5c0f7e7534c18f171931da .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/74298950" 
	@${RM} ${OBJECTDIR}/_ext/74298950/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/74298950/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/74298950/bsp.o.d" -o ${OBJECTDIR}/_ext/74298950/bsp.o ../src/system_config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1361460060/drv_adc_static.o: ../src/system_config/default/framework/driver/adc/src/drv_adc_static.c  .generated_files/flags/default/5cd95a7208a910fe496fb672e4ff5c8961b218c0 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1361460060" 
	@${RM} ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1361460060/drv_adc_static.o.d" -o ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o ../src/system_config/default/framework/driver/adc/src/drv_adc_static.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c  .generated_files/flags/default/d219a5e5cf845255e2e8f0be5ea02aec0ae0931d .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/977502197/drv_spi_api.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c  .generated_files/flags/default/92c0f5d044192695854d623cdb82c05ab2b10d7a .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_api.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c  .generated_files/flags/default/1c5cda35cf4a04a69b8adeab86fc483b34e8add6 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o: ../src/system_config/default/framework/net/pres/net_pres_enc_glue.c  .generated_files/flags/default/290235ab79db47630fa1e618c29e765c759a304e .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1278673032" 
	@${RM} ${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o.d" -o ${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o ../src/system_config/default/framework/net/pres/net_pres_enc_glue.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o: ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c  .generated_files/flags/default/8116a88d8eacdb04aca951a2526da4e8fc06044e .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/340578644/sys_devcon.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon.c  .generated_files/flags/default/f4e6b07e56276bd5ec00d0eae839ad8c7ac3da18 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ../src/system_config/default/framework/system/devcon/src/sys_devcon.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c  .generated_files/flags/default/ec43162a78d87d0290cd41a3303d06ac7a199d28 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/default/d1821e4460695c8058fd80d89eebdbb381cbfdc0 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/68765530/sys_reset.o: ../src/system_config/default/framework/system/reset/src/sys_reset.c  .generated_files/flags/default/9a3d55b308579287f4b8aa76a06a316d4bf75c38 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/68765530" 
	@${RM} ${OBJECTDIR}/_ext/68765530/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/68765530/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/68765530/sys_reset.o.d" -o ${OBJECTDIR}/_ext/68765530/sys_reset.o ../src/system_config/default/framework/system/reset/src/sys_reset.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  .generated_files/flags/default/5fea7c790d0382456173f0dd24860fd52f7cb821 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  .generated_files/flags/default/8a2f181ae2d02a40c9dfbbaaeb0cee9ea639cd04 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_exceptions.o: ../src/system_config/default/system_exceptions.c  .generated_files/flags/default/b813cb683331e1bf9eadff20ba327fc3164d7438 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ../src/system_config/default/system_exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  .generated_files/flags/default/cf32fbf7fa5039722c895eec38fb95d03be0ce55 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/88f203f537a501ddb637a6aec94ac970457d60f0 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/4c609c9b55ecb43f0956e0f540f1eac7622ee6de .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/http_print.o: ../src/http_print.c  .generated_files/flags/default/1e5de76144902ecedfcc14ad548c6fe8e8c3498b .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/http_print.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/http_print.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/http_print.o.d" -o ${OBJECTDIR}/_ext/1360937237/http_print.o ../src/http_print.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/custom_http_app.o: ../src/custom_http_app.c  .generated_files/flags/default/97ed099c9fdea5c1576b5e3d61273e9f494ebdee .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/custom_http_app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d" -o ${OBJECTDIR}/_ext/1360937237/custom_http_app.o ../src/custom_http_app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/mpfs_img2.o: ../src/mpfs_img2.c  .generated_files/flags/default/d191aa6ce8e382edb69a9f88a295ededce971477 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d" -o ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o ../src/mpfs_img2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/adler32.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/adler32.c  .generated_files/flags/default/c04b528222abaef0d82fcab9ad6c35c682ab5d7 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/adler32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/adler32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/adler32.o.d" -o ${OBJECTDIR}/_ext/1762287818/adler32.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/adler32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/compress.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/compress.c  .generated_files/flags/default/43195d9265f3ea296c8ebd0a58016538ebd4e808 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/compress.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/compress.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/compress.o.d" -o ${OBJECTDIR}/_ext/1762287818/compress.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/compress.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/crc32.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/crc32.c  .generated_files/flags/default/ae349544bb55881f9683675c27bf0885aa728f85 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/crc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/crc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/crc32.o.d" -o ${OBJECTDIR}/_ext/1762287818/crc32.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/crc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/deflate.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/deflate.c  .generated_files/flags/default/8d5369e9b154fae3b9bce1983c28695630948914 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/deflate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/deflate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/deflate.o.d" -o ${OBJECTDIR}/_ext/1762287818/deflate.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/deflate.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/infback.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/infback.c  .generated_files/flags/default/aebb79f7dc9bb4bf213051b31d53a4b0a067a57c .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/infback.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/infback.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/infback.o.d" -o ${OBJECTDIR}/_ext/1762287818/infback.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/infback.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/inffast.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inffast.c  .generated_files/flags/default/4fbfddc4b1849d26e7a96d9328b53270c4fd5cd6 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inffast.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inffast.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/inffast.o.d" -o ${OBJECTDIR}/_ext/1762287818/inffast.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inffast.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/inflate.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inflate.c  .generated_files/flags/default/37f055e66a9c8c51e661e7e81bd98cccb976b474 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inflate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inflate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/inflate.o.d" -o ${OBJECTDIR}/_ext/1762287818/inflate.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inflate.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/inftrees.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inftrees.c  .generated_files/flags/default/9d745771979b43d8dab19c4908974435f856c56a .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inftrees.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inftrees.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/inftrees.o.d" -o ${OBJECTDIR}/_ext/1762287818/inftrees.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inftrees.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/trees.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/trees.c  .generated_files/flags/default/1bff75224e18ca8750385dba45dba78b725d985 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/trees.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/trees.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/trees.o.d" -o ${OBJECTDIR}/_ext/1762287818/trees.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/trees.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/uncompr.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/uncompr.c  .generated_files/flags/default/1e3d15086052259c0b7aa6ca2a7c33ab48ee3d14 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/uncompr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/uncompr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/uncompr.o.d" -o ${OBJECTDIR}/_ext/1762287818/uncompr.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/uncompr.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/zutil.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/zutil.c  .generated_files/flags/default/3d46287a4d3aa7760848222e3eaa75e04cbdf7b4 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/zutil.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/zutil.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/zutil.o.d" -o ${OBJECTDIR}/_ext/1762287818/zutil.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/zutil.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/ecc.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/ecc.c  .generated_files/flags/default/f53c9ee18455c5f932c7e4827ce5c81dc8240b05 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/ecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/ecc.o.d" -o ${OBJECTDIR}/_ext/28091179/ecc.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/ecc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/arc4.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/arc4.c  .generated_files/flags/default/63bd8abfd7a03987bbed383e46308b57c1ae2ba9 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/arc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/arc4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/arc4.o.d" -o ${OBJECTDIR}/_ext/28091179/arc4.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/arc4.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/pwdbased.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/pwdbased.c  .generated_files/flags/default/ff3bbd0cd2de5f204908d302574b407c06b7ae3e .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/pwdbased.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/pwdbased.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/pwdbased.o.d" -o ${OBJECTDIR}/_ext/28091179/pwdbased.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/pwdbased.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/tfm.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/tfm.c  .generated_files/flags/default/79ef2831e270a3a575783d6bb292e9c17b080f38 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/tfm.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/tfm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/tfm.o.d" -o ${OBJECTDIR}/_ext/28091179/tfm.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/tfm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/asm.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/asm.c  .generated_files/flags/default/3a0567bff3a21bc2622fae27820c0530cb36b158 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/asm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/asm.o.d" -o ${OBJECTDIR}/_ext/28091179/asm.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/asm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/asn.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/asn.c  .generated_files/flags/default/afb8b575a7307e2df0d680650dc63f5c2f62c65b .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/asn.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/asn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/asn.o.d" -o ${OBJECTDIR}/_ext/28091179/asn.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/asn.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/des3.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/des3.c  .generated_files/flags/default/d91ec558b85d6941dfd2737ab1f1fb493fbd786b .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/des3.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/des3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/des3.o.d" -o ${OBJECTDIR}/_ext/28091179/des3.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/des3.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/rsa.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/rsa.c  .generated_files/flags/default/170e4e8ff399774ef31153d63cfc4a4edcf95ccf .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/rsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/rsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/rsa.o.d" -o ${OBJECTDIR}/_ext/28091179/rsa.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/rsa.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/aes.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/aes.c  .generated_files/flags/default/f50afab8b7397e07aa00168bd3a40dd5ea62346 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/aes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/aes.o.d" -o ${OBJECTDIR}/_ext/28091179/aes.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/aes.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/md5.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/md5.c  .generated_files/flags/default/6a6fa34d4d24b921a0b330c2dd8a59edb6a4f5e2 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/md5.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/md5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/md5.o.d" -o ${OBJECTDIR}/_ext/28091179/md5.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/md5.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/sha.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha.c  .generated_files/flags/default/523274cf29d9c7f11e6b32cac0146c44d7c92a7e .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/sha.o.d" -o ${OBJECTDIR}/_ext/28091179/sha.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/sha256.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha256.c  .generated_files/flags/default/7972bbe5741ca3d07315bfcbf17ab8c040a98199 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/sha256.o.d" -o ${OBJECTDIR}/_ext/28091179/sha256.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha256.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/sha512.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha512.c  .generated_files/flags/default/78577585300f90a35aa1f059dd18a2a392603a01 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha512.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha512.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/sha512.o.d" -o ${OBJECTDIR}/_ext/28091179/sha512.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha512.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/hmac.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/hmac.c  .generated_files/flags/default/c388c473b46bc593367ba2119f825f8ae89006a0 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/hmac.o.d" -o ${OBJECTDIR}/_ext/28091179/hmac.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/hmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/hash.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/hash.c  .generated_files/flags/default/63a2b551dc5fa4b58d083baf53081ef9ae52ba74 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/hash.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/hash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/hash.o.d" -o ${OBJECTDIR}/_ext/28091179/hash.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/hash.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/compress.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/compress.c  .generated_files/flags/default/87cec55500131b26e3cc7e0587f19936e51e47e9 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/compress.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/compress.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/compress.o.d" -o ${OBJECTDIR}/_ext/28091179/compress.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/compress.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/crypto.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/crypto.c  .generated_files/flags/default/186c42656aaca4c01ed06b75c80d3611761009b0 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/crypto.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/crypto.o.d" -o ${OBJECTDIR}/_ext/28091179/crypto.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/crypto.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/coding.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/coding.c  .generated_files/flags/default/15b5692bcab42084853c6016189ddb82112a918f .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/coding.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/coding.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/coding.o.d" -o ${OBJECTDIR}/_ext/28091179/coding.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/coding.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/error.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/error.c  .generated_files/flags/default/d18dc09fc1512ab709443887e1b8cf85588a3870 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/error.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/error.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/error.o.d" -o ${OBJECTDIR}/_ext/28091179/error.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/error.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/integer.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/integer.c  .generated_files/flags/default/ed4e05fba2e8026f36ebabf1e736440990b9a510 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/integer.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/integer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/integer.o.d" -o ${OBJECTDIR}/_ext/28091179/integer.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/integer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/logging.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/logging.c  .generated_files/flags/default/edfc89f1db9984ee4b10edea2bfe22cfa8517c27 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/logging.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/logging.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/logging.o.d" -o ${OBJECTDIR}/_ext/28091179/logging.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/logging.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/memory.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/memory.c  .generated_files/flags/default/43ae8f0281142566f46c2276079453efe2cef9b5 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/memory.o.d" -o ${OBJECTDIR}/_ext/28091179/memory.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/memory.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/wc_port.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/wc_port.c  .generated_files/flags/default/cda748d313d8025ecb7a77778e280b27b9b1c66c .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/wc_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/wc_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/wc_port.o.d" -o ${OBJECTDIR}/_ext/28091179/wc_port.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/wc_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/wolfmath.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/wolfmath.c  .generated_files/flags/default/e8818dbb07a96af14c80586fdc6b03f3a7ef8432 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/wolfmath.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/wolfmath.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/wolfmath.o.d" -o ${OBJECTDIR}/_ext/28091179/wolfmath.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/wolfmath.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1486592573/drv_ethmac.o: ../../../../../../microchip/harmony/v2_06/framework/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/flags/default/9064a559f10508fbc2a1c7abf890039f37264ced .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1486592573" 
	@${RM} ${OBJECTDIR}/_ext/1486592573/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1486592573/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1486592573/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1486592573/drv_ethmac.o ../../../../../../microchip/harmony/v2_06/framework/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o: ../../../../../../microchip/harmony/v2_06/framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/flags/default/d91575e98f96521297f363b22ff5a9ec2aed660b .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1486592573" 
	@${RM} ${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o ../../../../../../microchip/harmony/v2_06/framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1632220917/drv_ethphy.o: ../../../../../../microchip/harmony/v2_06/framework/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/flags/default/f42d94fe1567b984ae3a4063f0139d7c07c0489b .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1632220917" 
	@${RM} ${OBJECTDIR}/_ext/1632220917/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1632220917/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1632220917/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/1632220917/drv_ethphy.o ../../../../../../microchip/harmony/v2_06/framework/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o: ../../../../../../microchip/harmony/v2_06/framework/driver/ethphy/src/dynamic/drv_extphy_dp83848.c  .generated_files/flags/default/2a366b440f07c8c6c4dc8042fb087c26700b08ff .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1632220917" 
	@${RM} ${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o.d 
	@${RM} ${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o.d" -o ${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o ../../../../../../microchip/harmony/v2_06/framework/driver/ethphy/src/dynamic/drv_extphy_dp83848.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1426996077/drv_miim.o: ../../../../../../microchip/harmony/v2_06/framework/driver/miim/src/dynamic/drv_miim.c  .generated_files/flags/default/6a48cb6cda8b9e6cd52684eb80368f112ce9a655 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1426996077" 
	@${RM} ${OBJECTDIR}/_ext/1426996077/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/1426996077/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1426996077/drv_miim.o.d" -o ${OBJECTDIR}/_ext/1426996077/drv_miim.o ../../../../../../microchip/harmony/v2_06/framework/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/47425154/drv_nvm.o: ../../../../../../microchip/harmony/v2_06/framework/driver/nvm/src/dynamic/drv_nvm.c  .generated_files/flags/default/9317ef4d1dae3ee8428b7127cf8455b121173d1a .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/47425154" 
	@${RM} ${OBJECTDIR}/_ext/47425154/drv_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/47425154/drv_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/47425154/drv_nvm.o.d" -o ${OBJECTDIR}/_ext/47425154/drv_nvm.o ../../../../../../microchip/harmony/v2_06/framework/driver/nvm/src/dynamic/drv_nvm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o: ../../../../../../microchip/harmony/v2_06/framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c  .generated_files/flags/default/93a435401e3e7a3b94cf6f8c5e1cf7c7d461e58b .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/47425154" 
	@${RM} ${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o.d 
	@${RM} ${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o.d" -o ${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o ../../../../../../microchip/harmony/v2_06/framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1092753911/drv_spi.o: ../../../../../../microchip/harmony/v2_06/framework/driver/spi/src/dynamic/drv_spi.c  .generated_files/flags/default/68cf029cb5b4a9dd3515959275df67181c1caab9 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1092753911" 
	@${RM} ${OBJECTDIR}/_ext/1092753911/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1092753911/drv_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1092753911/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1092753911/drv_spi.o ../../../../../../microchip/harmony/v2_06/framework/driver/spi/src/dynamic/drv_spi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o: ../../../../../../microchip/harmony/v2_06/framework/driver/spi/src/drv_spi_sys_queue_fifo.c  .generated_files/flags/default/318426106224e08f8c1e0fb9d88ed8041c933469 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/111161817" 
	@${RM} ${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o.d" -o ${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o ../../../../../../microchip/harmony/v2_06/framework/driver/spi/src/drv_spi_sys_queue_fifo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/709153290/drv_tmr.o: ../../../../../../microchip/harmony/v2_06/framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/default/42a20dd1c7e38499a1395dfc572a869958dbb25 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/709153290" 
	@${RM} ${OBJECTDIR}/_ext/709153290/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/709153290/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/709153290/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/709153290/drv_tmr.o ../../../../../../microchip/harmony/v2_06/framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1201400862/drv_usart.o: ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart.c  .generated_files/flags/default/6d15cfc2fc77355b21d9d8078502a6d912c0f418 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1201400862" 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1201400862/drv_usart.o.d" -o ${OBJECTDIR}/_ext/1201400862/drv_usart.o ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o: ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c  .generated_files/flags/default/a6c762355152963e54561a3c032e1ceb49736ce3 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1201400862" 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o.d" -o ${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o: ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart_read_write.c  .generated_files/flags/default/86835b9c2fc1f3d5b2cd3eef754d74e52a445ad8 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1201400862" 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o.d" -o ${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart_read_write.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1817879350/net_pres.o: ../../../../../../microchip/harmony/v2_06/framework/net/pres/src/net_pres.c  .generated_files/flags/default/75d0ef5d0b8baab90f4652ae4a9d2c94094f003a .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1817879350" 
	@${RM} ${OBJECTDIR}/_ext/1817879350/net_pres.o.d 
	@${RM} ${OBJECTDIR}/_ext/1817879350/net_pres.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1817879350/net_pres.o.d" -o ${OBJECTDIR}/_ext/1817879350/net_pres.o ../../../../../../microchip/harmony/v2_06/framework/net/pres/src/net_pres.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/433538943/sys_command.o: ../../../../../../microchip/harmony/v2_06/framework/system/command/src/sys_command.c  .generated_files/flags/default/8cc131da4401f1bf9e262ea8a9d419bab005d269 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/433538943" 
	@${RM} ${OBJECTDIR}/_ext/433538943/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/433538943/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/433538943/sys_command.o.d" -o ${OBJECTDIR}/_ext/433538943/sys_command.o ../../../../../../microchip/harmony/v2_06/framework/system/command/src/sys_command.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/23173237/sys_console.o: ../../../../../../microchip/harmony/v2_06/framework/system/console/src/sys_console.c  .generated_files/flags/default/c514b218dd9b4173e54d862cf22810e8d66f2080 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/23173237" 
	@${RM} ${OBJECTDIR}/_ext/23173237/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/23173237/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/23173237/sys_console.o.d" -o ${OBJECTDIR}/_ext/23173237/sys_console.o ../../../../../../microchip/harmony/v2_06/framework/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/23173237/sys_console_uart.o: ../../../../../../microchip/harmony/v2_06/framework/system/console/src/sys_console_uart.c  .generated_files/flags/default/a31a8aa058f4e2a4185dc898accc6067444146c7 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/23173237" 
	@${RM} ${OBJECTDIR}/_ext/23173237/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/23173237/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/23173237/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/23173237/sys_console_uart.o ../../../../../../microchip/harmony/v2_06/framework/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2034620947/sys_fs.o: ../../../../../../microchip/harmony/v2_06/framework/system/fs/src/dynamic/sys_fs.c  .generated_files/flags/default/3756b3126b140c45db8cbedf5d982c5d1c307077 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/2034620947" 
	@${RM} ${OBJECTDIR}/_ext/2034620947/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/2034620947/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2034620947/sys_fs.o.d" -o ${OBJECTDIR}/_ext/2034620947/sys_fs.o ../../../../../../microchip/harmony/v2_06/framework/system/fs/src/dynamic/sys_fs.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o: ../../../../../../microchip/harmony/v2_06/framework/system/fs/src/dynamic/sys_fs_media_manager.c  .generated_files/flags/default/3e6df68acbc9368bd52b3e98247cf8f0133cf40f .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/2034620947" 
	@${RM} ${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o ../../../../../../microchip/harmony/v2_06/framework/system/fs/src/dynamic/sys_fs_media_manager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/842901914/mpfs.o: ../../../../../../microchip/harmony/v2_06/framework/system/fs/mpfs/src/mpfs.c  .generated_files/flags/default/247d3a4e22f2e28bf9322d1b4b5ce817d739285e .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/842901914" 
	@${RM} ${OBJECTDIR}/_ext/842901914/mpfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/842901914/mpfs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/842901914/mpfs.o.d" -o ${OBJECTDIR}/_ext/842901914/mpfs.o ../../../../../../microchip/harmony/v2_06/framework/system/fs/mpfs/src/mpfs.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/231205469/sys_int_pic32.o: ../../../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c  .generated_files/flags/default/de2b9a6a5f84bcc8cefeef8f1b5b4e08a7bbd43d .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/231205469" 
	@${RM} ${OBJECTDIR}/_ext/231205469/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/231205469/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/231205469/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/231205469/sys_int_pic32.o ../../../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/655575975/sys_random.o: ../../../../../../microchip/harmony/v2_06/framework/system/random/src/sys_random.c  .generated_files/flags/default/81c1ba1d9d3176affd253cb27f812b5ba164b183 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/655575975" 
	@${RM} ${OBJECTDIR}/_ext/655575975/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/655575975/sys_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/655575975/sys_random.o.d" -o ${OBJECTDIR}/_ext/655575975/sys_random.o ../../../../../../microchip/harmony/v2_06/framework/system/random/src/sys_random.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/910924237/sys_tmr.o: ../../../../../../microchip/harmony/v2_06/framework/system/tmr/src/sys_tmr.c  .generated_files/flags/default/bb757c467c371aae9b7b291681d8ebab598efbb6 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/910924237" 
	@${RM} ${OBJECTDIR}/_ext/910924237/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/910924237/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/910924237/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/910924237/sys_tmr.o ../../../../../../microchip/harmony/v2_06/framework/system/tmr/src/sys_tmr.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/common/sys_fs_wrapper.c  .generated_files/flags/default/8c9efbfe78c771d6056c7de534504519ae7e3da5 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/2030780900" 
	@${RM} ${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o.d" -o ${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/common/sys_fs_wrapper.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2030780900/helpers.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/common/helpers.c  .generated_files/flags/default/20e8b5beb94145f6f40c60bc2b5aa2177c9ff08f .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/2030780900" 
	@${RM} ${OBJECTDIR}/_ext/2030780900/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/2030780900/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2030780900/helpers.o.d" -o ${OBJECTDIR}/_ext/2030780900/helpers.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/common/helpers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/ipv4.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/ipv4.c  .generated_files/flags/default/63dfef3ce2e1819e6e982e993fe8ed3c3d975c54 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/ipv4.o.d" -o ${OBJECTDIR}/_ext/361655554/ipv4.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/ipv4.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcp.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcp.c  .generated_files/flags/default/89cba8a8b6ce13860f0507b76ffd6fa237a8571d .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcp.o.d" -o ${OBJECTDIR}/_ext/361655554/tcp.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/udp.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/udp.c  .generated_files/flags/default/765ad2f4ef42ba4d300c87b363ec414f58effd32 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/udp.o.d" -o ${OBJECTDIR}/_ext/361655554/udp.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/udp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/default/fc4f26b45a4f2b4f3d20b952098a94f10523a549 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/default/68aec8de8115eee32c132989947e02105179ee5 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_heap_internal.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/arp.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/arp.c  .generated_files/flags/default/a34d60b678c829e2c37911c800af60eababf7c6c .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/arp.o.d" -o ${OBJECTDIR}/_ext/361655554/arp.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/arp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/berkeley_api.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/berkeley_api.c  .generated_files/flags/default/e9853581aeef03b340f42e3a865a7db8fc8a5388 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/berkeley_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/berkeley_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/berkeley_api.o.d" -o ${OBJECTDIR}/_ext/361655554/berkeley_api.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/berkeley_api.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/dhcp.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/dhcp.c  .generated_files/flags/default/70aa698c07b1b3924f4468fa46f715d67280c997 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/dhcp.o.d" -o ${OBJECTDIR}/_ext/361655554/dhcp.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/dhcp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/dns.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/dns.c  .generated_files/flags/default/b14e80f9bdfc5f3a016c09f8a59cde4f62430aec .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/dns.o.d" -o ${OBJECTDIR}/_ext/361655554/dns.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/dns.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/http.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/http.c  .generated_files/flags/default/283b4325e6dbc69b6387312c515462ec3d7ba872 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/http.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/http.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/http.o.d" -o ${OBJECTDIR}/_ext/361655554/http.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/http.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/nbns.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/nbns.c  .generated_files/flags/default/d2074f38dfefeafe617197880c40f7b6954754ce .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/nbns.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/nbns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/nbns.o.d" -o ${OBJECTDIR}/_ext/361655554/nbns.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/nbns.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/sntp.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/sntp.c  .generated_files/flags/default/6c1e0a41c9f1f41c590a10891c6d03d3d36affe8 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/sntp.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/sntp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/sntp.o.d" -o ${OBJECTDIR}/_ext/361655554/sntp.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/sntp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/telnet.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/telnet.c  .generated_files/flags/default/3b67bf66a77a9e40651e1f6fbf23423ae0679940 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/telnet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/telnet.o.d" -o ${OBJECTDIR}/_ext/361655554/telnet.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/telnet.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcpip_announce.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_announce.c  .generated_files/flags/default/8164e25db9de00f6f30336c2e4f8df80207585c4 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_announce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_announce.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_announce.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_announce.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/hash_fnv.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/hash_fnv.c  .generated_files/flags/default/67b69316b27501fa6dc47f42e54aadd4978a3d2c .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/361655554/hash_fnv.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/hash_fnv.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/oahash.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/oahash.c  .generated_files/flags/default/913ca58e426664f6de15a5ac23890e697ba3653e .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/oahash.o.d" -o ${OBJECTDIR}/_ext/361655554/oahash.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/oahash.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcpip_helpers.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_helpers.c  .generated_files/flags/default/b17cbeac6b8c83a0b424129296e98b386858fa4f .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_helpers.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_helpers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcpip_manager.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_manager.c  .generated_files/flags/default/8e4d14eae3da15b99310fce173c8d68db3a6977e .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_manager.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_manager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcpip_notify.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_notify.c  .generated_files/flags/default/58eb4e5eed05723ac0f19b3a936e2e4d6b359974 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_notify.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_notify.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcpip_packet.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_packet.c  .generated_files/flags/default/db129977f0d837f0adfa6c1b0fb1a7edd838c934 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_packet.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_packet.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/bmcnet.o: ../src/bmcnet.c  .generated_files/flags/default/b997d1b70ca483ffc142e0834d469689b8ec3769 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bmcnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bmcnet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bmcnet.o.d" -o ${OBJECTDIR}/_ext/1360937237/bmcnet.o ../src/bmcnet.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/28091179/misc.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/misc.c  .generated_files/flags/default/d6b6ed8cb78165180ed1638496fd017fa8540153 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/misc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/misc.o.d" -o ${OBJECTDIR}/_ext/28091179/misc.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/misc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/74298950/bsp.o: ../src/system_config/default/bsp/bsp.c  .generated_files/flags/default/8cee32dfb039f64c6a92c539dccd22402b7294b4 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/74298950" 
	@${RM} ${OBJECTDIR}/_ext/74298950/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/74298950/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/74298950/bsp.o.d" -o ${OBJECTDIR}/_ext/74298950/bsp.o ../src/system_config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1361460060/drv_adc_static.o: ../src/system_config/default/framework/driver/adc/src/drv_adc_static.c  .generated_files/flags/default/81f9ffa92238e45a856b8ebd24acd4fa2fe27dcf .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1361460060" 
	@${RM} ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1361460060/drv_adc_static.o.d" -o ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o ../src/system_config/default/framework/driver/adc/src/drv_adc_static.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c  .generated_files/flags/default/220d520ff035d6a80d30d556afbeaf764323e37 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/977502197/drv_spi_api.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c  .generated_files/flags/default/cfa62100da9be908fcd28420763bd2817f9c78e8 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_api.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c  .generated_files/flags/default/790b099c47d28308dd166248368e88b6edc05fce .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o: ../src/system_config/default/framework/net/pres/net_pres_enc_glue.c  .generated_files/flags/default/a7c77b75c3b3cc4ea1f052de13bbb0e8a486eb16 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1278673032" 
	@${RM} ${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o.d" -o ${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o ../src/system_config/default/framework/net/pres/net_pres_enc_glue.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o: ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c  .generated_files/flags/default/117b0a01016d758c5b363196d65371cec114c8f5 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/340578644/sys_devcon.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon.c  .generated_files/flags/default/bfa82b9d41434e023850ac56c3d2687dbe04ba94 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ../src/system_config/default/framework/system/devcon/src/sys_devcon.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c  .generated_files/flags/default/950710e5445cd4534e1b300b8ffb5e7118a83fc4 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/default/31063d63a198d5e8e0ef3f0300e335a6abaa4abe .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/68765530/sys_reset.o: ../src/system_config/default/framework/system/reset/src/sys_reset.c  .generated_files/flags/default/3683cbdc0270729979c2e89739bb38f70e9c39c4 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/68765530" 
	@${RM} ${OBJECTDIR}/_ext/68765530/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/68765530/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/68765530/sys_reset.o.d" -o ${OBJECTDIR}/_ext/68765530/sys_reset.o ../src/system_config/default/framework/system/reset/src/sys_reset.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  .generated_files/flags/default/61cfd578a217e522ad3f700bfcddf5f86c6fea48 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  .generated_files/flags/default/414cea17fc5f12d221928c027a278a553622e0b0 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_exceptions.o: ../src/system_config/default/system_exceptions.c  .generated_files/flags/default/33aa7872916fbbd4778fa54e1d8a9678cd0d3d1e .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ../src/system_config/default/system_exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  .generated_files/flags/default/57ccea8440a3b28fee05908d71e266b99d8a8ad5 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/9568fdaf34388c8319ede39c00dddb8df2a17a14 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/1d0bbf845f935fe5485732d3e4ffdcc6dd2ae644 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/http_print.o: ../src/http_print.c  .generated_files/flags/default/fda884ffa168f90e055dd9f2b563526c902d87db .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/http_print.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/http_print.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/http_print.o.d" -o ${OBJECTDIR}/_ext/1360937237/http_print.o ../src/http_print.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/custom_http_app.o: ../src/custom_http_app.c  .generated_files/flags/default/19d0b98909d93403b787d1f8752dbb3b41497be7 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/custom_http_app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d" -o ${OBJECTDIR}/_ext/1360937237/custom_http_app.o ../src/custom_http_app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/mpfs_img2.o: ../src/mpfs_img2.c  .generated_files/flags/default/cffea2657dc435774b7dcd384f64190b8b9be4a3 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d" -o ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o ../src/mpfs_img2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/adler32.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/adler32.c  .generated_files/flags/default/3c180c0f857e5272924e293cca9b53e3e6886f70 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/adler32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/adler32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/adler32.o.d" -o ${OBJECTDIR}/_ext/1762287818/adler32.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/adler32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/compress.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/compress.c  .generated_files/flags/default/c32757c9192cbab905f995399f1707ad0694e605 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/compress.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/compress.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/compress.o.d" -o ${OBJECTDIR}/_ext/1762287818/compress.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/compress.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/crc32.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/crc32.c  .generated_files/flags/default/229a6d3911425a44d23117661e9b7acf9dac8c82 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/crc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/crc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/crc32.o.d" -o ${OBJECTDIR}/_ext/1762287818/crc32.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/crc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/deflate.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/deflate.c  .generated_files/flags/default/5aa65dd23eea7c2e24133715889bd5609ae39111 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/deflate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/deflate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/deflate.o.d" -o ${OBJECTDIR}/_ext/1762287818/deflate.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/deflate.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/infback.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/infback.c  .generated_files/flags/default/3ac1202a1beb7033899ab16b2dc3deed4084a424 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/infback.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/infback.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/infback.o.d" -o ${OBJECTDIR}/_ext/1762287818/infback.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/infback.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/inffast.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inffast.c  .generated_files/flags/default/1c7748835125fe1f16bb088fd23cf15ae341ef61 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inffast.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inffast.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/inffast.o.d" -o ${OBJECTDIR}/_ext/1762287818/inffast.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inffast.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/inflate.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inflate.c  .generated_files/flags/default/aa64c52c91a9bea2a0c124c83ca180ca2f27c4db .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inflate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inflate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/inflate.o.d" -o ${OBJECTDIR}/_ext/1762287818/inflate.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inflate.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/inftrees.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inftrees.c  .generated_files/flags/default/98ec658a5eb57ed344a6a38e2b8349d394dace9a .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inftrees.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inftrees.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/inftrees.o.d" -o ${OBJECTDIR}/_ext/1762287818/inftrees.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inftrees.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/trees.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/trees.c  .generated_files/flags/default/4a6b64579df792dd233dc7e382969eb18e8d1d62 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/trees.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/trees.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/trees.o.d" -o ${OBJECTDIR}/_ext/1762287818/trees.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/trees.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/uncompr.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/uncompr.c  .generated_files/flags/default/d98da851a88bc45a80770c47b8ab714ca7c83000 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/uncompr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/uncompr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/uncompr.o.d" -o ${OBJECTDIR}/_ext/1762287818/uncompr.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/uncompr.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1762287818/zutil.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/zutil.c  .generated_files/flags/default/a67e7ed17fce4c043a06361858733059aade120 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/zutil.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/zutil.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/zutil.o.d" -o ${OBJECTDIR}/_ext/1762287818/zutil.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/zutil.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/ecc.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/ecc.c  .generated_files/flags/default/6b87a0895cb8da7682fa5a4b5a6962dce60f4d2d .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/ecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/ecc.o.d" -o ${OBJECTDIR}/_ext/28091179/ecc.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/ecc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/arc4.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/arc4.c  .generated_files/flags/default/4cc750e3b76275dae7b9eb73b061fa58b9dba209 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/arc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/arc4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/arc4.o.d" -o ${OBJECTDIR}/_ext/28091179/arc4.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/arc4.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/pwdbased.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/pwdbased.c  .generated_files/flags/default/a54a04637f0717a1612c1a381fab554efe9c0371 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/pwdbased.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/pwdbased.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/pwdbased.o.d" -o ${OBJECTDIR}/_ext/28091179/pwdbased.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/pwdbased.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/tfm.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/tfm.c  .generated_files/flags/default/4bd98937efa6f61fb477d21f7a17e2871b9eccec .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/tfm.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/tfm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/tfm.o.d" -o ${OBJECTDIR}/_ext/28091179/tfm.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/tfm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/asm.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/asm.c  .generated_files/flags/default/52b5b8ca5372bc32d2a771cfd99ca6758297507d .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/asm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/asm.o.d" -o ${OBJECTDIR}/_ext/28091179/asm.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/asm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/asn.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/asn.c  .generated_files/flags/default/58926c6484162ef0677c6d8f11787ed5b29a4014 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/asn.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/asn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/asn.o.d" -o ${OBJECTDIR}/_ext/28091179/asn.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/asn.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/des3.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/des3.c  .generated_files/flags/default/bcaed9e8a8d75348eb93ce4a85dc8d5fd127df9a .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/des3.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/des3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/des3.o.d" -o ${OBJECTDIR}/_ext/28091179/des3.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/des3.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/rsa.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/rsa.c  .generated_files/flags/default/39c8badabb78b4684fce977d0125182f271fddd5 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/rsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/rsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/rsa.o.d" -o ${OBJECTDIR}/_ext/28091179/rsa.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/rsa.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/aes.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/aes.c  .generated_files/flags/default/d17b5124754eef695d568a2ad6fc01a9878d77cf .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/aes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/aes.o.d" -o ${OBJECTDIR}/_ext/28091179/aes.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/aes.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/md5.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/md5.c  .generated_files/flags/default/ef8f414b9e4da7ea25d03c177476452e4f3589c3 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/md5.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/md5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/md5.o.d" -o ${OBJECTDIR}/_ext/28091179/md5.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/md5.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/sha.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha.c  .generated_files/flags/default/b32517cbe78c1b121a4615fda344cd1d695b5f56 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/sha.o.d" -o ${OBJECTDIR}/_ext/28091179/sha.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/sha256.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha256.c  .generated_files/flags/default/143d937c94b227d8929567e91709b3cc96d15afb .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/sha256.o.d" -o ${OBJECTDIR}/_ext/28091179/sha256.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha256.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/sha512.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha512.c  .generated_files/flags/default/42abbe1a309e886aa099d87fce8c28c0b055ccc7 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha512.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha512.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/sha512.o.d" -o ${OBJECTDIR}/_ext/28091179/sha512.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha512.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/hmac.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/hmac.c  .generated_files/flags/default/6ecb8f40d2d813a30305e7e0cbb946ad581b4fe3 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/hmac.o.d" -o ${OBJECTDIR}/_ext/28091179/hmac.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/hmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/hash.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/hash.c  .generated_files/flags/default/bcb78e92e1cca937551cbbdfc51c6277802b55c1 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/hash.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/hash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/hash.o.d" -o ${OBJECTDIR}/_ext/28091179/hash.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/hash.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/compress.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/compress.c  .generated_files/flags/default/c079ffcb88bf8f5ed4dafe2e3f29c2203ae06bdf .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/compress.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/compress.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/compress.o.d" -o ${OBJECTDIR}/_ext/28091179/compress.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/compress.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/crypto.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/crypto.c  .generated_files/flags/default/129d0d73d1a7c72e4e1c37745766ca12404dc998 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/crypto.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/crypto.o.d" -o ${OBJECTDIR}/_ext/28091179/crypto.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/crypto.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/coding.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/coding.c  .generated_files/flags/default/85a2ab35faed85886750eccc6b540cef07539950 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/coding.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/coding.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/coding.o.d" -o ${OBJECTDIR}/_ext/28091179/coding.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/coding.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/error.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/error.c  .generated_files/flags/default/ad26ab8637f7932e8d8954291851c11e95dd7d2f .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/error.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/error.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/error.o.d" -o ${OBJECTDIR}/_ext/28091179/error.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/error.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/integer.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/integer.c  .generated_files/flags/default/e346c26d97f1a6c75f7f7f1c3e771717671ee49 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/integer.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/integer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/integer.o.d" -o ${OBJECTDIR}/_ext/28091179/integer.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/integer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/logging.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/logging.c  .generated_files/flags/default/fff000345a843287fbc1bb38891841fe7bf1c9f3 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/logging.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/logging.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/logging.o.d" -o ${OBJECTDIR}/_ext/28091179/logging.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/logging.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/memory.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/memory.c  .generated_files/flags/default/93f84c6d821ead729ec82212d6bd468286832e19 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/memory.o.d" -o ${OBJECTDIR}/_ext/28091179/memory.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/memory.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/wc_port.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/wc_port.c  .generated_files/flags/default/c5eff9b4c876cdfe39a4807c0c6c99f2e16f9f98 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/wc_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/wc_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/wc_port.o.d" -o ${OBJECTDIR}/_ext/28091179/wc_port.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/wc_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/28091179/wolfmath.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/wolfmath.c  .generated_files/flags/default/e65997fd10a087c64f35aa25e16989cbad5c1e62 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/wolfmath.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/wolfmath.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/wolfmath.o.d" -o ${OBJECTDIR}/_ext/28091179/wolfmath.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/wolfmath.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1486592573/drv_ethmac.o: ../../../../../../microchip/harmony/v2_06/framework/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/flags/default/59c4e682517d17b8dc7dca2bf09f16a1fdee0b4b .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1486592573" 
	@${RM} ${OBJECTDIR}/_ext/1486592573/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1486592573/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1486592573/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1486592573/drv_ethmac.o ../../../../../../microchip/harmony/v2_06/framework/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o: ../../../../../../microchip/harmony/v2_06/framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/flags/default/abc2fdbb51ed3ffeacf38c1a3b11bdf34cd2c9c3 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1486592573" 
	@${RM} ${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o ../../../../../../microchip/harmony/v2_06/framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1632220917/drv_ethphy.o: ../../../../../../microchip/harmony/v2_06/framework/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/flags/default/7053a5f8972cde63f8947bb09bd5e37cd1f1a969 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1632220917" 
	@${RM} ${OBJECTDIR}/_ext/1632220917/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1632220917/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1632220917/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/1632220917/drv_ethphy.o ../../../../../../microchip/harmony/v2_06/framework/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o: ../../../../../../microchip/harmony/v2_06/framework/driver/ethphy/src/dynamic/drv_extphy_dp83848.c  .generated_files/flags/default/b6869076a9a594a76936938510e431c39e2d2298 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1632220917" 
	@${RM} ${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o.d 
	@${RM} ${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o.d" -o ${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o ../../../../../../microchip/harmony/v2_06/framework/driver/ethphy/src/dynamic/drv_extphy_dp83848.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1426996077/drv_miim.o: ../../../../../../microchip/harmony/v2_06/framework/driver/miim/src/dynamic/drv_miim.c  .generated_files/flags/default/6a529e15a2adf16d28b1e6939e178cb88a1ff31c .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1426996077" 
	@${RM} ${OBJECTDIR}/_ext/1426996077/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/1426996077/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1426996077/drv_miim.o.d" -o ${OBJECTDIR}/_ext/1426996077/drv_miim.o ../../../../../../microchip/harmony/v2_06/framework/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/47425154/drv_nvm.o: ../../../../../../microchip/harmony/v2_06/framework/driver/nvm/src/dynamic/drv_nvm.c  .generated_files/flags/default/e18eb9f8aa37b4750eb1d81245aa8863c5122222 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/47425154" 
	@${RM} ${OBJECTDIR}/_ext/47425154/drv_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/47425154/drv_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/47425154/drv_nvm.o.d" -o ${OBJECTDIR}/_ext/47425154/drv_nvm.o ../../../../../../microchip/harmony/v2_06/framework/driver/nvm/src/dynamic/drv_nvm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o: ../../../../../../microchip/harmony/v2_06/framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c  .generated_files/flags/default/9b6042cf48c3c3ed11624329f30bb3a6b37b342e .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/47425154" 
	@${RM} ${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o.d 
	@${RM} ${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o.d" -o ${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o ../../../../../../microchip/harmony/v2_06/framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1092753911/drv_spi.o: ../../../../../../microchip/harmony/v2_06/framework/driver/spi/src/dynamic/drv_spi.c  .generated_files/flags/default/e1d01b01f1ade86df67baabfffb2b19c2952f343 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1092753911" 
	@${RM} ${OBJECTDIR}/_ext/1092753911/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1092753911/drv_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1092753911/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1092753911/drv_spi.o ../../../../../../microchip/harmony/v2_06/framework/driver/spi/src/dynamic/drv_spi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o: ../../../../../../microchip/harmony/v2_06/framework/driver/spi/src/drv_spi_sys_queue_fifo.c  .generated_files/flags/default/74b315952c3b5c00da56b7a0a6ad9dac2cf8099c .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/111161817" 
	@${RM} ${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o.d" -o ${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o ../../../../../../microchip/harmony/v2_06/framework/driver/spi/src/drv_spi_sys_queue_fifo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/709153290/drv_tmr.o: ../../../../../../microchip/harmony/v2_06/framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/default/4b86ae519b712c69558b3cb7217d5b2f179e2c81 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/709153290" 
	@${RM} ${OBJECTDIR}/_ext/709153290/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/709153290/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/709153290/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/709153290/drv_tmr.o ../../../../../../microchip/harmony/v2_06/framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1201400862/drv_usart.o: ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart.c  .generated_files/flags/default/728a16fce979a3acced3632ffe980a8e78c813fe .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1201400862" 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1201400862/drv_usart.o.d" -o ${OBJECTDIR}/_ext/1201400862/drv_usart.o ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o: ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c  .generated_files/flags/default/c80ef27ce1f75eedff44e92c51781cc7f5220f77 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1201400862" 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o.d" -o ${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o: ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart_read_write.c  .generated_files/flags/default/a5e972d9a225b26b5019f57e7e40dcb8c605c1cb .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1201400862" 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o.d" -o ${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart_read_write.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1817879350/net_pres.o: ../../../../../../microchip/harmony/v2_06/framework/net/pres/src/net_pres.c  .generated_files/flags/default/b00528aa4e0cd152fecfe3413f92b386b1188c9e .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1817879350" 
	@${RM} ${OBJECTDIR}/_ext/1817879350/net_pres.o.d 
	@${RM} ${OBJECTDIR}/_ext/1817879350/net_pres.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1817879350/net_pres.o.d" -o ${OBJECTDIR}/_ext/1817879350/net_pres.o ../../../../../../microchip/harmony/v2_06/framework/net/pres/src/net_pres.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/433538943/sys_command.o: ../../../../../../microchip/harmony/v2_06/framework/system/command/src/sys_command.c  .generated_files/flags/default/fb64ff8de34142d08566cf6134ea8f492f20d5bc .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/433538943" 
	@${RM} ${OBJECTDIR}/_ext/433538943/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/433538943/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/433538943/sys_command.o.d" -o ${OBJECTDIR}/_ext/433538943/sys_command.o ../../../../../../microchip/harmony/v2_06/framework/system/command/src/sys_command.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/23173237/sys_console.o: ../../../../../../microchip/harmony/v2_06/framework/system/console/src/sys_console.c  .generated_files/flags/default/81301998c2ed18707e0db5191607d4b4add0f6a7 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/23173237" 
	@${RM} ${OBJECTDIR}/_ext/23173237/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/23173237/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/23173237/sys_console.o.d" -o ${OBJECTDIR}/_ext/23173237/sys_console.o ../../../../../../microchip/harmony/v2_06/framework/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/23173237/sys_console_uart.o: ../../../../../../microchip/harmony/v2_06/framework/system/console/src/sys_console_uart.c  .generated_files/flags/default/df59722627adf3c02a568b4cda5d97e7af5235ca .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/23173237" 
	@${RM} ${OBJECTDIR}/_ext/23173237/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/23173237/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/23173237/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/23173237/sys_console_uart.o ../../../../../../microchip/harmony/v2_06/framework/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2034620947/sys_fs.o: ../../../../../../microchip/harmony/v2_06/framework/system/fs/src/dynamic/sys_fs.c  .generated_files/flags/default/47c3d42f777795f8fb966efbc62bbb3282ec6a1e .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/2034620947" 
	@${RM} ${OBJECTDIR}/_ext/2034620947/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/2034620947/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2034620947/sys_fs.o.d" -o ${OBJECTDIR}/_ext/2034620947/sys_fs.o ../../../../../../microchip/harmony/v2_06/framework/system/fs/src/dynamic/sys_fs.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o: ../../../../../../microchip/harmony/v2_06/framework/system/fs/src/dynamic/sys_fs_media_manager.c  .generated_files/flags/default/c45f6211038d19939ba1d1180d546dc4b97d453f .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/2034620947" 
	@${RM} ${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o ../../../../../../microchip/harmony/v2_06/framework/system/fs/src/dynamic/sys_fs_media_manager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/842901914/mpfs.o: ../../../../../../microchip/harmony/v2_06/framework/system/fs/mpfs/src/mpfs.c  .generated_files/flags/default/16382580be69355508270c604dbb37431ee8d8b5 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/842901914" 
	@${RM} ${OBJECTDIR}/_ext/842901914/mpfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/842901914/mpfs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/842901914/mpfs.o.d" -o ${OBJECTDIR}/_ext/842901914/mpfs.o ../../../../../../microchip/harmony/v2_06/framework/system/fs/mpfs/src/mpfs.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/231205469/sys_int_pic32.o: ../../../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c  .generated_files/flags/default/578ef6cc21b924a61b8933addf286bc147ce8493 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/231205469" 
	@${RM} ${OBJECTDIR}/_ext/231205469/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/231205469/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/231205469/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/231205469/sys_int_pic32.o ../../../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/655575975/sys_random.o: ../../../../../../microchip/harmony/v2_06/framework/system/random/src/sys_random.c  .generated_files/flags/default/1fbf6011b523c47961c99209d0f225a63433314b .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/655575975" 
	@${RM} ${OBJECTDIR}/_ext/655575975/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/655575975/sys_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/655575975/sys_random.o.d" -o ${OBJECTDIR}/_ext/655575975/sys_random.o ../../../../../../microchip/harmony/v2_06/framework/system/random/src/sys_random.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/910924237/sys_tmr.o: ../../../../../../microchip/harmony/v2_06/framework/system/tmr/src/sys_tmr.c  .generated_files/flags/default/9ece99e8455b31112ec0d727a902001d45077a9b .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/910924237" 
	@${RM} ${OBJECTDIR}/_ext/910924237/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/910924237/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/910924237/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/910924237/sys_tmr.o ../../../../../../microchip/harmony/v2_06/framework/system/tmr/src/sys_tmr.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/common/sys_fs_wrapper.c  .generated_files/flags/default/13768fabd709e74665eee629e40ed17a51739e40 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/2030780900" 
	@${RM} ${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o.d" -o ${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/common/sys_fs_wrapper.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2030780900/helpers.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/common/helpers.c  .generated_files/flags/default/b90282d6da4698dc71af153f5faf1bf66c7c143b .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/2030780900" 
	@${RM} ${OBJECTDIR}/_ext/2030780900/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/2030780900/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2030780900/helpers.o.d" -o ${OBJECTDIR}/_ext/2030780900/helpers.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/common/helpers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/ipv4.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/ipv4.c  .generated_files/flags/default/eb68ed3c854a30126f5c37fb8c0e74f81267dad9 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/ipv4.o.d" -o ${OBJECTDIR}/_ext/361655554/ipv4.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/ipv4.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcp.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcp.c  .generated_files/flags/default/d1f1fcc66b40d6870bb736217dda48750896a642 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcp.o.d" -o ${OBJECTDIR}/_ext/361655554/tcp.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/udp.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/udp.c  .generated_files/flags/default/2286218815d75aecfad5ab1304f44df84366b6f8 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/udp.o.d" -o ${OBJECTDIR}/_ext/361655554/udp.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/udp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/default/4c65542db677cf0abd453bff56c48c719b8e9b6e .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/default/858836ba134a2d4ce26ab110fb82d3e1affb4577 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_heap_internal.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/arp.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/arp.c  .generated_files/flags/default/cdaf7377b2edb9a8d2ff58f1c20ab93283e403c1 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/arp.o.d" -o ${OBJECTDIR}/_ext/361655554/arp.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/arp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/berkeley_api.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/berkeley_api.c  .generated_files/flags/default/1d8ba58072f6474c9170183f788d22ea1a17c235 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/berkeley_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/berkeley_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/berkeley_api.o.d" -o ${OBJECTDIR}/_ext/361655554/berkeley_api.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/berkeley_api.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/dhcp.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/dhcp.c  .generated_files/flags/default/fd018b8e5f90e805eaa8ddffb58af7ba69ca0f87 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/dhcp.o.d" -o ${OBJECTDIR}/_ext/361655554/dhcp.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/dhcp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/dns.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/dns.c  .generated_files/flags/default/f62bfe4f4ee052368f90e7af0b04615acd37bae4 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/dns.o.d" -o ${OBJECTDIR}/_ext/361655554/dns.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/dns.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/http.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/http.c  .generated_files/flags/default/7f658b01195f4c9206f15b1307965a56c48ef216 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/http.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/http.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/http.o.d" -o ${OBJECTDIR}/_ext/361655554/http.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/http.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/nbns.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/nbns.c  .generated_files/flags/default/7995e217d8f7f3514fb0eeab7605c10175495847 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/nbns.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/nbns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/nbns.o.d" -o ${OBJECTDIR}/_ext/361655554/nbns.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/nbns.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/sntp.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/sntp.c  .generated_files/flags/default/4e2cab8aa7c077e1742327ce7c92164aef164974 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/sntp.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/sntp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/sntp.o.d" -o ${OBJECTDIR}/_ext/361655554/sntp.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/sntp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/telnet.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/telnet.c  .generated_files/flags/default/dacd17155d7bbe97e25ae28bc668614aa8d3c365 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/telnet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/telnet.o.d" -o ${OBJECTDIR}/_ext/361655554/telnet.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/telnet.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcpip_announce.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_announce.c  .generated_files/flags/default/428e5cc86cca8a11e2fd7e2a93cae893c570077d .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_announce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_announce.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_announce.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_announce.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/hash_fnv.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/hash_fnv.c  .generated_files/flags/default/64cc9035f0399fdb04002acb2a22a43e0fb7c074 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/361655554/hash_fnv.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/hash_fnv.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/oahash.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/oahash.c  .generated_files/flags/default/eea24495d313c42e814ec94d1dbc5aa15c9095c6 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/oahash.o.d" -o ${OBJECTDIR}/_ext/361655554/oahash.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/oahash.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcpip_helpers.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_helpers.c  .generated_files/flags/default/58b757a81d3ae7d894a2a6c2c2d531af1d86676 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_helpers.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_helpers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcpip_manager.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_manager.c  .generated_files/flags/default/3eddd78ee54ce9600d4cebf5e6ebec32f1e5bdf2 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_manager.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_manager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcpip_notify.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_notify.c  .generated_files/flags/default/cf19f44e93237513f10c1093cb2dfc684ec240ec .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_notify.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_notify.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/361655554/tcpip_packet.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_packet.c  .generated_files/flags/default/2a6da1cc9e3fb91bdfbbafd27f456c066c37ae04 .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_packet.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_packet.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/bmcnet.o: ../src/bmcnet.c  .generated_files/flags/default/524892e5803c37b4814191fa15ad25d55dcb5f1e .generated_files/flags/default/f771c43d2b5d2a67da2c4ea3e647e16a157ee5dd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bmcnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bmcnet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bmcnet.o.d" -o ${OBJECTDIR}/_ext/1360937237/bmcnet.o ../src/bmcnet.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/remote_daq.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../microchip/harmony/v2_06/bin/framework/peripheral/PIC32MX795F512L_peripherals.a  
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/remote_daq.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ../../../../../../microchip/harmony/v2_06/bin/framework/peripheral/PIC32MX795F512L_peripherals.a      -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=44960,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/remote_daq.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../microchip/harmony/v2_06/bin/framework/peripheral/PIC32MX795F512L_peripherals.a 
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/remote_daq.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ../../../../../../microchip/harmony/v2_06/bin/framework/peripheral/PIC32MX795F512L_peripherals.a      -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=44960,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}/xc32-bin2hex ${DISTDIR}/remote_daq.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
