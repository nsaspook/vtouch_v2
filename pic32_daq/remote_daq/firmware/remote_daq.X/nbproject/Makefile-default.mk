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
${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_helper_c32.S  .generated_files/flags/default/e6d75066822c855eb1941f8f5c42d13ee038379e .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_helper_c32.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 
	@${FIXDEPS} "${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_helper_c32.S  .generated_files/flags/default/3484cd977fa67ec8b473105f8e684c8a6ec1397a .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_helper_c32.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.asm.d",--gdwarf-2 
	@${FIXDEPS} "${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/361655554/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/28091179/misc.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/misc.c  .generated_files/flags/default/2a22106ef786a91c0fbae91e9eb5e7d87c1a3e73 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/misc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/misc.o.d" -o ${OBJECTDIR}/_ext/28091179/misc.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/74298950/bsp.o: ../src/system_config/default/bsp/bsp.c  .generated_files/flags/default/d6e8ab1a5a3575e6c8daacdc28815ad5264fefdf .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/74298950" 
	@${RM} ${OBJECTDIR}/_ext/74298950/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/74298950/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/74298950/bsp.o.d" -o ${OBJECTDIR}/_ext/74298950/bsp.o ../src/system_config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1361460060/drv_adc_static.o: ../src/system_config/default/framework/driver/adc/src/drv_adc_static.c  .generated_files/flags/default/77038419838db11dab3acfe9bf2ea2f6ed228636 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1361460060" 
	@${RM} ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1361460060/drv_adc_static.o.d" -o ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o ../src/system_config/default/framework/driver/adc/src/drv_adc_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c  .generated_files/flags/default/cc7b79aa934d64c80a399646d399fb25e8f66209 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/977502197/drv_spi_api.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c  .generated_files/flags/default/733e30bcad99aefe1fec21eff9d228f4fe8c5c1e .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_api.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c  .generated_files/flags/default/9cc1140be2e310b46eec00e9df4a6c91e5f1e834 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o: ../src/system_config/default/framework/net/pres/net_pres_enc_glue.c  .generated_files/flags/default/8fa0b87f3b8b9d2fed61c89fa4e215b0782c2c1a .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1278673032" 
	@${RM} ${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o.d" -o ${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o ../src/system_config/default/framework/net/pres/net_pres_enc_glue.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o: ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c  .generated_files/flags/default/467b7fbd1de44f4e8a6bf52664816789fe19079 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/340578644/sys_devcon.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon.c  .generated_files/flags/default/27f6bdd38f9ad536e09765e0f918062a503bbb1c .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ../src/system_config/default/framework/system/devcon/src/sys_devcon.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c  .generated_files/flags/default/c8596570f875ede64499de5dd13d741783fbdbdf .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/default/4b07a0945615bb7c7b05f697286e585aa7124bd8 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/68765530/sys_reset.o: ../src/system_config/default/framework/system/reset/src/sys_reset.c  .generated_files/flags/default/7e4c7428041841d6a691fbc30d87b5e7f274b8cd .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/68765530" 
	@${RM} ${OBJECTDIR}/_ext/68765530/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/68765530/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/68765530/sys_reset.o.d" -o ${OBJECTDIR}/_ext/68765530/sys_reset.o ../src/system_config/default/framework/system/reset/src/sys_reset.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  .generated_files/flags/default/68508ea6e11a84fab7ce95b7700eb3b3e32216a1 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  .generated_files/flags/default/591a0d30dbd0d58a11313d2ed67bed1b5b618c66 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_exceptions.o: ../src/system_config/default/system_exceptions.c  .generated_files/flags/default/1dcad91e7a814c36b163ddfb27e5f6f3beb75635 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ../src/system_config/default/system_exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  .generated_files/flags/default/1e0002d971355bb47f0be8a09e8f9556bac638be .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/615742967b6acf1f9c11a7f182e969cc37c3e62d .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/308af0ecefe3688d5dde6da388803cf7cc57d707 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/http_print.o: ../src/http_print.c  .generated_files/flags/default/a8c86bd23dfe6b730f40d1b3e62611b2daa3a51c .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/http_print.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/http_print.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/http_print.o.d" -o ${OBJECTDIR}/_ext/1360937237/http_print.o ../src/http_print.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/custom_http_app.o: ../src/custom_http_app.c  .generated_files/flags/default/169f409259e86ade82ae262515d31f91fbb7379c .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/custom_http_app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d" -o ${OBJECTDIR}/_ext/1360937237/custom_http_app.o ../src/custom_http_app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/mpfs_img2.o: ../src/mpfs_img2.c  .generated_files/flags/default/5e842ac61c6e75fca038cd3ecd188e6c82648f42 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d" -o ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o ../src/mpfs_img2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1762287818/adler32.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/adler32.c  .generated_files/flags/default/8bc817e95ca5d5715453c3415e7fa04dc7fd8f64 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/adler32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/adler32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/adler32.o.d" -o ${OBJECTDIR}/_ext/1762287818/adler32.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/adler32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1762287818/compress.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/compress.c  .generated_files/flags/default/287a1e20c6ce0460f77f140b80042347388dbb7e .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/compress.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/compress.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/compress.o.d" -o ${OBJECTDIR}/_ext/1762287818/compress.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/compress.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1762287818/crc32.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/crc32.c  .generated_files/flags/default/abeca86a5a5288874a9b88bc459c32068e319067 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/crc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/crc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/crc32.o.d" -o ${OBJECTDIR}/_ext/1762287818/crc32.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/crc32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1762287818/deflate.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/deflate.c  .generated_files/flags/default/f915e422dfff67e729163781b8921b6184377d1 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/deflate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/deflate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/deflate.o.d" -o ${OBJECTDIR}/_ext/1762287818/deflate.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/deflate.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1762287818/infback.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/infback.c  .generated_files/flags/default/f4e366c4cb03c85db9c90e140828fd78d2f29788 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/infback.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/infback.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/infback.o.d" -o ${OBJECTDIR}/_ext/1762287818/infback.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/infback.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1762287818/inffast.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inffast.c  .generated_files/flags/default/9df244a8a0fc801c3918fc0bf3a487a04216a796 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inffast.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inffast.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/inffast.o.d" -o ${OBJECTDIR}/_ext/1762287818/inffast.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inffast.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1762287818/inflate.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inflate.c  .generated_files/flags/default/76a43432c0f82dc1993d0ead538d7537a287c6ec .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inflate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inflate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/inflate.o.d" -o ${OBJECTDIR}/_ext/1762287818/inflate.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inflate.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1762287818/inftrees.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inftrees.c  .generated_files/flags/default/2a84bd6b31f69e291225b3ec7ad45d2a6e452790 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inftrees.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inftrees.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/inftrees.o.d" -o ${OBJECTDIR}/_ext/1762287818/inftrees.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inftrees.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1762287818/trees.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/trees.c  .generated_files/flags/default/a67f82fa99d940603b617f79a9dcb24d8121a913 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/trees.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/trees.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/trees.o.d" -o ${OBJECTDIR}/_ext/1762287818/trees.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/trees.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1762287818/uncompr.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/uncompr.c  .generated_files/flags/default/5e70d302f3bcf96b13ba4086b929c0a54aafd9e3 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/uncompr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/uncompr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/uncompr.o.d" -o ${OBJECTDIR}/_ext/1762287818/uncompr.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/uncompr.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1762287818/zutil.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/zutil.c  .generated_files/flags/default/21a83c278342c4a82e15b2f845fd1b2f3b85d861 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/zutil.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/zutil.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/zutil.o.d" -o ${OBJECTDIR}/_ext/1762287818/zutil.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/zutil.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/ecc.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/ecc.c  .generated_files/flags/default/217c725538014596fc807bf8b7c854fdd190b649 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/ecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/ecc.o.d" -o ${OBJECTDIR}/_ext/28091179/ecc.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/ecc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/arc4.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/arc4.c  .generated_files/flags/default/b892021a9d4e29e31d3e54a28092ec815dac2d93 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/arc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/arc4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/arc4.o.d" -o ${OBJECTDIR}/_ext/28091179/arc4.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/arc4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/pwdbased.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/pwdbased.c  .generated_files/flags/default/4b691b0c771545cada2504001d86ca0814890636 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/pwdbased.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/pwdbased.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/pwdbased.o.d" -o ${OBJECTDIR}/_ext/28091179/pwdbased.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/pwdbased.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/tfm.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/tfm.c  .generated_files/flags/default/fe159b3a342b43490568eb2c6adad7e09a218e6c .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/tfm.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/tfm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/tfm.o.d" -o ${OBJECTDIR}/_ext/28091179/tfm.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/tfm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/asm.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/asm.c  .generated_files/flags/default/7f3fce2feea8a384c05ec1e7a85b8a49865619c3 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/asm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/asm.o.d" -o ${OBJECTDIR}/_ext/28091179/asm.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/asm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/asn.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/asn.c  .generated_files/flags/default/402496c7b6a67b92b52b54747fbe7be6f96d207a .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/asn.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/asn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/asn.o.d" -o ${OBJECTDIR}/_ext/28091179/asn.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/asn.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/des3.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/des3.c  .generated_files/flags/default/c57096546f8f7767fefdd0ab9d7c74aaafd033fa .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/des3.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/des3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/des3.o.d" -o ${OBJECTDIR}/_ext/28091179/des3.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/des3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/rsa.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/rsa.c  .generated_files/flags/default/8a5390e1ca505702f08acbc65f72d0cccd33c7de .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/rsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/rsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/rsa.o.d" -o ${OBJECTDIR}/_ext/28091179/rsa.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/rsa.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/aes.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/aes.c  .generated_files/flags/default/251180281f33a0411fba71b9769df4f7d61f5023 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/aes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/aes.o.d" -o ${OBJECTDIR}/_ext/28091179/aes.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/aes.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/md5.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/md5.c  .generated_files/flags/default/a1abbcf4f4562bbe62a6c8e239ac75e7e963a3d1 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/md5.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/md5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/md5.o.d" -o ${OBJECTDIR}/_ext/28091179/md5.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/md5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/sha.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha.c  .generated_files/flags/default/864286da66d07ec85aece30cc649a0a0088516d2 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/sha.o.d" -o ${OBJECTDIR}/_ext/28091179/sha.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/sha256.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha256.c  .generated_files/flags/default/d4dcc003ff12854b3cf39287318332e817c98970 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/sha256.o.d" -o ${OBJECTDIR}/_ext/28091179/sha256.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha256.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/sha512.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha512.c  .generated_files/flags/default/d7ae0892d9fa7beb4e30b64892be4519431beaa5 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha512.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha512.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/sha512.o.d" -o ${OBJECTDIR}/_ext/28091179/sha512.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha512.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/hmac.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/hmac.c  .generated_files/flags/default/fa4c4f2b4327cb5ee452924bc3b3a9dda79bfc2 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/hmac.o.d" -o ${OBJECTDIR}/_ext/28091179/hmac.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/hmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/hash.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/hash.c  .generated_files/flags/default/701a87ad0518f08a1dacc49aac0534d9d9e7d645 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/hash.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/hash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/hash.o.d" -o ${OBJECTDIR}/_ext/28091179/hash.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/hash.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/compress.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/compress.c  .generated_files/flags/default/fc171d4626573b2d69ba81750ed2bc0e8a52ebd6 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/compress.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/compress.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/compress.o.d" -o ${OBJECTDIR}/_ext/28091179/compress.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/compress.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/crypto.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/crypto.c  .generated_files/flags/default/21eeaa2e822fe205b5dc6e096332265ef9ac8f89 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/crypto.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/crypto.o.d" -o ${OBJECTDIR}/_ext/28091179/crypto.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/crypto.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/coding.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/coding.c  .generated_files/flags/default/e603b68e7c1616c32a1ce39c4e0ac4cbeb1f4628 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/coding.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/coding.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/coding.o.d" -o ${OBJECTDIR}/_ext/28091179/coding.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/coding.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/error.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/error.c  .generated_files/flags/default/7ef57aa11e3ff95ff422ba3830897623b2619539 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/error.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/error.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/error.o.d" -o ${OBJECTDIR}/_ext/28091179/error.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/error.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/integer.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/integer.c  .generated_files/flags/default/13691b1dbe2eb64ec9720fa5896774fe07edaabf .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/integer.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/integer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/integer.o.d" -o ${OBJECTDIR}/_ext/28091179/integer.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/integer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/logging.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/logging.c  .generated_files/flags/default/6b2dbbe240d5936e1dd4c4be6ddaeade304321fc .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/logging.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/logging.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/logging.o.d" -o ${OBJECTDIR}/_ext/28091179/logging.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/logging.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/memory.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/memory.c  .generated_files/flags/default/cf5a18e5e065cf2bc8cd62ef038f871e1038c65b .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/memory.o.d" -o ${OBJECTDIR}/_ext/28091179/memory.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/memory.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/wc_port.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/wc_port.c  .generated_files/flags/default/4f3788a021b3e0e624c75f2d8f95156ffaff2760 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/wc_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/wc_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/wc_port.o.d" -o ${OBJECTDIR}/_ext/28091179/wc_port.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/wc_port.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/wolfmath.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/wolfmath.c  .generated_files/flags/default/af68354342bb91922711117bbd610c77bfd9762c .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/wolfmath.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/wolfmath.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/wolfmath.o.d" -o ${OBJECTDIR}/_ext/28091179/wolfmath.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/wolfmath.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1486592573/drv_ethmac.o: ../../../../../../microchip/harmony/v2_06/framework/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/flags/default/5b579d2db97dd481fe468b78c62b88033f5cc437 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1486592573" 
	@${RM} ${OBJECTDIR}/_ext/1486592573/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1486592573/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1486592573/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1486592573/drv_ethmac.o ../../../../../../microchip/harmony/v2_06/framework/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o: ../../../../../../microchip/harmony/v2_06/framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/flags/default/88a024dda36f61d4f069534995b2fefaffd1024d .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1486592573" 
	@${RM} ${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o ../../../../../../microchip/harmony/v2_06/framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1632220917/drv_ethphy.o: ../../../../../../microchip/harmony/v2_06/framework/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/flags/default/ccfee1bda9744ac5e20936e0b55bda382932547c .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1632220917" 
	@${RM} ${OBJECTDIR}/_ext/1632220917/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1632220917/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1632220917/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/1632220917/drv_ethphy.o ../../../../../../microchip/harmony/v2_06/framework/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o: ../../../../../../microchip/harmony/v2_06/framework/driver/ethphy/src/dynamic/drv_extphy_dp83848.c  .generated_files/flags/default/63e31500f1728bb3f8ca69274df4cb6f5ef6c9eb .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1632220917" 
	@${RM} ${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o.d 
	@${RM} ${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o.d" -o ${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o ../../../../../../microchip/harmony/v2_06/framework/driver/ethphy/src/dynamic/drv_extphy_dp83848.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1426996077/drv_miim.o: ../../../../../../microchip/harmony/v2_06/framework/driver/miim/src/dynamic/drv_miim.c  .generated_files/flags/default/d358e616aefe31cc0450048541bed085c14ffbe .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1426996077" 
	@${RM} ${OBJECTDIR}/_ext/1426996077/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/1426996077/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1426996077/drv_miim.o.d" -o ${OBJECTDIR}/_ext/1426996077/drv_miim.o ../../../../../../microchip/harmony/v2_06/framework/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/47425154/drv_nvm.o: ../../../../../../microchip/harmony/v2_06/framework/driver/nvm/src/dynamic/drv_nvm.c  .generated_files/flags/default/a893eac557fc2145e1151cd59bc7789bbca8a994 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/47425154" 
	@${RM} ${OBJECTDIR}/_ext/47425154/drv_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/47425154/drv_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/47425154/drv_nvm.o.d" -o ${OBJECTDIR}/_ext/47425154/drv_nvm.o ../../../../../../microchip/harmony/v2_06/framework/driver/nvm/src/dynamic/drv_nvm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o: ../../../../../../microchip/harmony/v2_06/framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c  .generated_files/flags/default/34a063b17b9c8d928813c38017451c4a25d18f0c .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/47425154" 
	@${RM} ${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o.d 
	@${RM} ${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o.d" -o ${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o ../../../../../../microchip/harmony/v2_06/framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1092753911/drv_spi.o: ../../../../../../microchip/harmony/v2_06/framework/driver/spi/src/dynamic/drv_spi.c  .generated_files/flags/default/b96c6cbd6d3e670aeafe497fc43fd8c804ba2e99 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1092753911" 
	@${RM} ${OBJECTDIR}/_ext/1092753911/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1092753911/drv_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1092753911/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1092753911/drv_spi.o ../../../../../../microchip/harmony/v2_06/framework/driver/spi/src/dynamic/drv_spi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o: ../../../../../../microchip/harmony/v2_06/framework/driver/spi/src/drv_spi_sys_queue_fifo.c  .generated_files/flags/default/aec2d78f7d94b214006f980ddea9132fd5cf1689 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/111161817" 
	@${RM} ${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o.d" -o ${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o ../../../../../../microchip/harmony/v2_06/framework/driver/spi/src/drv_spi_sys_queue_fifo.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/709153290/drv_tmr.o: ../../../../../../microchip/harmony/v2_06/framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/default/205c6160148e594d1513cab08ac0a31a137883fe .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/709153290" 
	@${RM} ${OBJECTDIR}/_ext/709153290/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/709153290/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/709153290/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/709153290/drv_tmr.o ../../../../../../microchip/harmony/v2_06/framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1201400862/drv_usart.o: ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart.c  .generated_files/flags/default/561fce099c244dd714c28eaffcec80a200a5a401 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1201400862" 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1201400862/drv_usart.o.d" -o ${OBJECTDIR}/_ext/1201400862/drv_usart.o ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o: ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c  .generated_files/flags/default/dfcad9b1f0d018697a28526750e67e4646e5b76c .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1201400862" 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o.d" -o ${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o: ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart_read_write.c  .generated_files/flags/default/aabbc78a90b7a4b913b790d21b64d40c74a9f0d .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1201400862" 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o.d" -o ${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart_read_write.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1817879350/net_pres.o: ../../../../../../microchip/harmony/v2_06/framework/net/pres/src/net_pres.c  .generated_files/flags/default/51db5d5625ffaa18a693107a71ba8a721d56fbb6 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1817879350" 
	@${RM} ${OBJECTDIR}/_ext/1817879350/net_pres.o.d 
	@${RM} ${OBJECTDIR}/_ext/1817879350/net_pres.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1817879350/net_pres.o.d" -o ${OBJECTDIR}/_ext/1817879350/net_pres.o ../../../../../../microchip/harmony/v2_06/framework/net/pres/src/net_pres.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/433538943/sys_command.o: ../../../../../../microchip/harmony/v2_06/framework/system/command/src/sys_command.c  .generated_files/flags/default/174204b18ca510576e27bb5541f6706e9eff8cd7 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/433538943" 
	@${RM} ${OBJECTDIR}/_ext/433538943/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/433538943/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/433538943/sys_command.o.d" -o ${OBJECTDIR}/_ext/433538943/sys_command.o ../../../../../../microchip/harmony/v2_06/framework/system/command/src/sys_command.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/23173237/sys_console.o: ../../../../../../microchip/harmony/v2_06/framework/system/console/src/sys_console.c  .generated_files/flags/default/c961bb7372e349c2cca2c292923b30ac76a60a9c .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/23173237" 
	@${RM} ${OBJECTDIR}/_ext/23173237/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/23173237/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/23173237/sys_console.o.d" -o ${OBJECTDIR}/_ext/23173237/sys_console.o ../../../../../../microchip/harmony/v2_06/framework/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/23173237/sys_console_uart.o: ../../../../../../microchip/harmony/v2_06/framework/system/console/src/sys_console_uart.c  .generated_files/flags/default/a2a0f7c33d25f060ee5ef7116ea0df9254513c12 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/23173237" 
	@${RM} ${OBJECTDIR}/_ext/23173237/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/23173237/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/23173237/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/23173237/sys_console_uart.o ../../../../../../microchip/harmony/v2_06/framework/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2034620947/sys_fs.o: ../../../../../../microchip/harmony/v2_06/framework/system/fs/src/dynamic/sys_fs.c  .generated_files/flags/default/1ba90b574c9c3343dd91eb5287704c550fa7e291 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/2034620947" 
	@${RM} ${OBJECTDIR}/_ext/2034620947/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/2034620947/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2034620947/sys_fs.o.d" -o ${OBJECTDIR}/_ext/2034620947/sys_fs.o ../../../../../../microchip/harmony/v2_06/framework/system/fs/src/dynamic/sys_fs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o: ../../../../../../microchip/harmony/v2_06/framework/system/fs/src/dynamic/sys_fs_media_manager.c  .generated_files/flags/default/2f2d8719e6b6546f72c31a5266545b4c3281fbcb .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/2034620947" 
	@${RM} ${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o ../../../../../../microchip/harmony/v2_06/framework/system/fs/src/dynamic/sys_fs_media_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/842901914/mpfs.o: ../../../../../../microchip/harmony/v2_06/framework/system/fs/mpfs/src/mpfs.c  .generated_files/flags/default/c04e332e3f0e3c2eac77edf059b2f63e75ce3894 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/842901914" 
	@${RM} ${OBJECTDIR}/_ext/842901914/mpfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/842901914/mpfs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/842901914/mpfs.o.d" -o ${OBJECTDIR}/_ext/842901914/mpfs.o ../../../../../../microchip/harmony/v2_06/framework/system/fs/mpfs/src/mpfs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/231205469/sys_int_pic32.o: ../../../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c  .generated_files/flags/default/988b9858090a5fd6a2c549be177fb010f955689a .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/231205469" 
	@${RM} ${OBJECTDIR}/_ext/231205469/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/231205469/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/231205469/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/231205469/sys_int_pic32.o ../../../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/655575975/sys_random.o: ../../../../../../microchip/harmony/v2_06/framework/system/random/src/sys_random.c  .generated_files/flags/default/230965181b5e48e24b73661650a3b17e8ed07f9 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/655575975" 
	@${RM} ${OBJECTDIR}/_ext/655575975/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/655575975/sys_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/655575975/sys_random.o.d" -o ${OBJECTDIR}/_ext/655575975/sys_random.o ../../../../../../microchip/harmony/v2_06/framework/system/random/src/sys_random.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/910924237/sys_tmr.o: ../../../../../../microchip/harmony/v2_06/framework/system/tmr/src/sys_tmr.c  .generated_files/flags/default/adafa811dd46084a4751f84f199c853c5f960cfb .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/910924237" 
	@${RM} ${OBJECTDIR}/_ext/910924237/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/910924237/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/910924237/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/910924237/sys_tmr.o ../../../../../../microchip/harmony/v2_06/framework/system/tmr/src/sys_tmr.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/common/sys_fs_wrapper.c  .generated_files/flags/default/8abcd8221444af3e8e11d987aa2567eac025e554 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/2030780900" 
	@${RM} ${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o.d" -o ${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/common/sys_fs_wrapper.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2030780900/helpers.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/common/helpers.c  .generated_files/flags/default/f875957cca2257b5cb4ad3d777f7576ceb6b38dd .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/2030780900" 
	@${RM} ${OBJECTDIR}/_ext/2030780900/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/2030780900/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2030780900/helpers.o.d" -o ${OBJECTDIR}/_ext/2030780900/helpers.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/common/helpers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/ipv4.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/ipv4.c  .generated_files/flags/default/5f9b719fa2c6adb560850f1b91ef95453ce92466 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/ipv4.o.d" -o ${OBJECTDIR}/_ext/361655554/ipv4.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/ipv4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/tcp.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcp.c  .generated_files/flags/default/67bfb37e4b851cf5c70edfc084466bf85ed77af9 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcp.o.d" -o ${OBJECTDIR}/_ext/361655554/tcp.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/udp.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/udp.c  .generated_files/flags/default/bf339dfe8f13f0c32f0223cb3b90a68246501079 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/udp.o.d" -o ${OBJECTDIR}/_ext/361655554/udp.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/udp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/default/ab1b3f7b335db6f4d9a9b52854dbd4d2c4825126 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/default/488da31a744e2c23d8b1471ebd5a37f0654975e3 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_heap_internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/arp.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/arp.c  .generated_files/flags/default/285f13f3b6cba41042eb630d70dac23bd7740238 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/arp.o.d" -o ${OBJECTDIR}/_ext/361655554/arp.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/arp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/berkeley_api.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/berkeley_api.c  .generated_files/flags/default/23aeedff70506e782346850a1fa2213b610db84c .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/berkeley_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/berkeley_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/berkeley_api.o.d" -o ${OBJECTDIR}/_ext/361655554/berkeley_api.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/berkeley_api.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/dhcp.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/dhcp.c  .generated_files/flags/default/c04dd9f499881ea757241d9b86bb14a85712b449 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/dhcp.o.d" -o ${OBJECTDIR}/_ext/361655554/dhcp.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/dhcp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/dns.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/dns.c  .generated_files/flags/default/643195e5e2f9299c90b0d3ef5def6fcbf0dac84c .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/dns.o.d" -o ${OBJECTDIR}/_ext/361655554/dns.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/dns.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/http.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/http.c  .generated_files/flags/default/65a05f78caebe7e77515839a1691ec42c72f8cf9 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/http.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/http.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/http.o.d" -o ${OBJECTDIR}/_ext/361655554/http.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/http.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/nbns.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/nbns.c  .generated_files/flags/default/25149c62fd8be2be2f17aa0f8cff92a441400829 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/nbns.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/nbns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/nbns.o.d" -o ${OBJECTDIR}/_ext/361655554/nbns.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/nbns.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/sntp.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/sntp.c  .generated_files/flags/default/74e1f2982cbe7b3a5ddba729c9273f3fb030d9bb .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/sntp.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/sntp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/sntp.o.d" -o ${OBJECTDIR}/_ext/361655554/sntp.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/sntp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/telnet.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/telnet.c  .generated_files/flags/default/603bc6dae5df063436b8c3b18b46205b18d9f5e1 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/telnet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/telnet.o.d" -o ${OBJECTDIR}/_ext/361655554/telnet.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/telnet.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/tcpip_announce.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_announce.c  .generated_files/flags/default/f4c55a441818d23b2d9928f8b3eef95842b17a03 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_announce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_announce.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_announce.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_announce.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/hash_fnv.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/hash_fnv.c  .generated_files/flags/default/1998aafe2d42f8c80c31222e83ec4251535a29fb .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/361655554/hash_fnv.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/hash_fnv.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/oahash.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/oahash.c  .generated_files/flags/default/859e17747817282a454544044a548626144a121e .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/oahash.o.d" -o ${OBJECTDIR}/_ext/361655554/oahash.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/oahash.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/tcpip_helpers.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_helpers.c  .generated_files/flags/default/d0e5f28a3deef7522b397792fccab74d14835dbb .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_helpers.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_helpers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/tcpip_manager.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_manager.c  .generated_files/flags/default/846e15385244dd2ed5bfcfbad0754ae2c315a860 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_manager.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/tcpip_notify.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_notify.c  .generated_files/flags/default/de6266a544510f095a846ff2489d33e8264bacfb .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_notify.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_notify.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/tcpip_packet.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_packet.c  .generated_files/flags/default/1221ec01f41dc99e82a8a9ed4c7b86da0147ea07 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_packet.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_packet.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/bmcnet.o: ../src/bmcnet.c  .generated_files/flags/default/19dd4dcb4f653c44e091f38720396088e82b00f9 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bmcnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bmcnet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bmcnet.o.d" -o ${OBJECTDIR}/_ext/1360937237/bmcnet.o ../src/bmcnet.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/_ext/28091179/misc.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/misc.c  .generated_files/flags/default/347520a1e5c562a3faeb1f251175a3e94d0e9cdb .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/misc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/misc.o.d" -o ${OBJECTDIR}/_ext/28091179/misc.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/74298950/bsp.o: ../src/system_config/default/bsp/bsp.c  .generated_files/flags/default/eca180e49782c32c6c55a08c66689909dc54bb64 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/74298950" 
	@${RM} ${OBJECTDIR}/_ext/74298950/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/74298950/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/74298950/bsp.o.d" -o ${OBJECTDIR}/_ext/74298950/bsp.o ../src/system_config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1361460060/drv_adc_static.o: ../src/system_config/default/framework/driver/adc/src/drv_adc_static.c  .generated_files/flags/default/95af08353011283f16af689b32c75543b88a24b4 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1361460060" 
	@${RM} ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1361460060/drv_adc_static.o.d" -o ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o ../src/system_config/default/framework/driver/adc/src/drv_adc_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c  .generated_files/flags/default/d713b40c711c16e13d580807c98f77e756f4ed0b .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/977502197/drv_spi_api.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c  .generated_files/flags/default/a0e1d7f637b7d267ccce83132fbc8b20151909bf .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_api.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c  .generated_files/flags/default/647bac8d39920d98f715d0b9a63cf49ed7c3b5ae .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o: ../src/system_config/default/framework/net/pres/net_pres_enc_glue.c  .generated_files/flags/default/580fa8a3b00f5870aedf7fd041a9281d59a91346 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1278673032" 
	@${RM} ${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o.d" -o ${OBJECTDIR}/_ext/1278673032/net_pres_enc_glue.o ../src/system_config/default/framework/net/pres/net_pres_enc_glue.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o: ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c  .generated_files/flags/default/c685fc3311c06f8b6783433176620511d3369a4 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/340578644/sys_devcon.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon.c  .generated_files/flags/default/60709fbe4498553524fbee8e963bcc68031a071a .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ../src/system_config/default/framework/system/devcon/src/sys_devcon.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c  .generated_files/flags/default/c2b79f85a5666355cb94e0c1768c811e9d00f69 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/default/93abf4707384c24e37c57edea58b251ee1df15b5 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/68765530/sys_reset.o: ../src/system_config/default/framework/system/reset/src/sys_reset.c  .generated_files/flags/default/a682d4605a33b897c4ffbfaeb5b2c153c24cf8f .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/68765530" 
	@${RM} ${OBJECTDIR}/_ext/68765530/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/68765530/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/68765530/sys_reset.o.d" -o ${OBJECTDIR}/_ext/68765530/sys_reset.o ../src/system_config/default/framework/system/reset/src/sys_reset.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  .generated_files/flags/default/ba4a660f7529921bf42348dbe4d770b8a572480d .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  .generated_files/flags/default/18ce33382ff357bc14a508f827ef7772ee4520aa .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_exceptions.o: ../src/system_config/default/system_exceptions.c  .generated_files/flags/default/6be99700b93aa37ee90ee0b3f010aeab10530aa1 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ../src/system_config/default/system_exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  .generated_files/flags/default/1458bd13b80006519b08a1f4ab54b5e7a55a7cc4 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/1c34d6cf71cab7bfd0aee082e9507bb1409d0cc0 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/bc997e96d17cd4a8d700ee1ef978686e2440c668 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/http_print.o: ../src/http_print.c  .generated_files/flags/default/262be27adad37c915e5fe5272b2a4eb6e5aefdaf .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/http_print.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/http_print.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/http_print.o.d" -o ${OBJECTDIR}/_ext/1360937237/http_print.o ../src/http_print.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/custom_http_app.o: ../src/custom_http_app.c  .generated_files/flags/default/c22cf07aa01a984271e5e73e7d2bb0ae897ae9d .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/custom_http_app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d" -o ${OBJECTDIR}/_ext/1360937237/custom_http_app.o ../src/custom_http_app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/mpfs_img2.o: ../src/mpfs_img2.c  .generated_files/flags/default/fcce629c3a11ecb6738943a6ae9e8f116a2e4f89 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d" -o ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o ../src/mpfs_img2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1762287818/adler32.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/adler32.c  .generated_files/flags/default/419456fba061613f3b3ab33cb21d5e714fd8e1b5 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/adler32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/adler32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/adler32.o.d" -o ${OBJECTDIR}/_ext/1762287818/adler32.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/adler32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1762287818/compress.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/compress.c  .generated_files/flags/default/35258bde4c04f21a5da383d3c8a2a625b9cb1c4b .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/compress.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/compress.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/compress.o.d" -o ${OBJECTDIR}/_ext/1762287818/compress.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/compress.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1762287818/crc32.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/crc32.c  .generated_files/flags/default/f58de5ac06c355da4041b4456716b16dd7c22d2 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/crc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/crc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/crc32.o.d" -o ${OBJECTDIR}/_ext/1762287818/crc32.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/crc32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1762287818/deflate.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/deflate.c  .generated_files/flags/default/8f03c857436e20d27361f6d5d74c2d2dc7753c7b .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/deflate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/deflate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/deflate.o.d" -o ${OBJECTDIR}/_ext/1762287818/deflate.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/deflate.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1762287818/infback.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/infback.c  .generated_files/flags/default/9d225311e2e5089195770650f333c7a94fb08e28 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/infback.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/infback.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/infback.o.d" -o ${OBJECTDIR}/_ext/1762287818/infback.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/infback.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1762287818/inffast.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inffast.c  .generated_files/flags/default/8d8c1fa81985e564b2875c5234e2c34d9934b954 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inffast.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inffast.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/inffast.o.d" -o ${OBJECTDIR}/_ext/1762287818/inffast.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inffast.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1762287818/inflate.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inflate.c  .generated_files/flags/default/774d524bb152b60e127195197749aa9acbaf684e .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inflate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inflate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/inflate.o.d" -o ${OBJECTDIR}/_ext/1762287818/inflate.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inflate.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1762287818/inftrees.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inftrees.c  .generated_files/flags/default/fb863449997f6bfb112522e31da71233507ca401 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inftrees.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/inftrees.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/inftrees.o.d" -o ${OBJECTDIR}/_ext/1762287818/inftrees.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/inftrees.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1762287818/trees.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/trees.c  .generated_files/flags/default/8520ac9cc88f036320d013349c041a6ef5f76695 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/trees.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/trees.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/trees.o.d" -o ${OBJECTDIR}/_ext/1762287818/trees.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/trees.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1762287818/uncompr.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/uncompr.c  .generated_files/flags/default/d473841dc975933026e900000a868e06ad06f52b .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/uncompr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/uncompr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/uncompr.o.d" -o ${OBJECTDIR}/_ext/1762287818/uncompr.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/uncompr.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1762287818/zutil.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/zutil.c  .generated_files/flags/default/45f4b81d58a9b387cadc5e5ec94543a6f5f7e9c4 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1762287818" 
	@${RM} ${OBJECTDIR}/_ext/1762287818/zutil.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762287818/zutil.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1762287818/zutil.o.d" -o ${OBJECTDIR}/_ext/1762287818/zutil.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/zlib-1.2.7/zutil.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/ecc.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/ecc.c  .generated_files/flags/default/a8eeb38a5638d9dca6d3dbb999b61e47412890eb .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/ecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/ecc.o.d" -o ${OBJECTDIR}/_ext/28091179/ecc.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/ecc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/arc4.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/arc4.c  .generated_files/flags/default/b0073bb598cdfee78dc7076f9f2572ffefe681ce .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/arc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/arc4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/arc4.o.d" -o ${OBJECTDIR}/_ext/28091179/arc4.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/arc4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/pwdbased.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/pwdbased.c  .generated_files/flags/default/1a9476ecd40ef8fe36fe09411b00bca07386bf77 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/pwdbased.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/pwdbased.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/pwdbased.o.d" -o ${OBJECTDIR}/_ext/28091179/pwdbased.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/pwdbased.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/tfm.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/tfm.c  .generated_files/flags/default/5c6f089674596150b9953337b42711916bc717a0 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/tfm.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/tfm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/tfm.o.d" -o ${OBJECTDIR}/_ext/28091179/tfm.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/tfm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/asm.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/asm.c  .generated_files/flags/default/cab2f83d1c5c7a705f381b1c9d76129783f4a069 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/asm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/asm.o.d" -o ${OBJECTDIR}/_ext/28091179/asm.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/asm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/asn.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/asn.c  .generated_files/flags/default/3059b7147dbcc6af07b89a31f4f26c917fca34cf .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/asn.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/asn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/asn.o.d" -o ${OBJECTDIR}/_ext/28091179/asn.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/asn.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/des3.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/des3.c  .generated_files/flags/default/457da5ca3f8bf7b0d8f0d7a182a529e0f9e58ab0 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/des3.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/des3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/des3.o.d" -o ${OBJECTDIR}/_ext/28091179/des3.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/des3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/rsa.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/rsa.c  .generated_files/flags/default/4e814f860efb4d5332aaca24d75a5786c137f4a8 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/rsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/rsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/rsa.o.d" -o ${OBJECTDIR}/_ext/28091179/rsa.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/rsa.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/aes.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/aes.c  .generated_files/flags/default/f50c2dc70e04f95b33a4864b36fd63edf1951f00 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/aes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/aes.o.d" -o ${OBJECTDIR}/_ext/28091179/aes.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/aes.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/md5.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/md5.c  .generated_files/flags/default/50b168d094f5ba24a593b3de83c4d5f93bfa8c05 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/md5.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/md5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/md5.o.d" -o ${OBJECTDIR}/_ext/28091179/md5.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/md5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/sha.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha.c  .generated_files/flags/default/d4af15d38f1591336f137e67df8620db85093386 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/sha.o.d" -o ${OBJECTDIR}/_ext/28091179/sha.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/sha256.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha256.c  .generated_files/flags/default/78a99e350f3722c38dd8ba3dc483dfecf5f30b63 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/sha256.o.d" -o ${OBJECTDIR}/_ext/28091179/sha256.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha256.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/sha512.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha512.c  .generated_files/flags/default/8c40f3bbc64d7196b51fea9c5385c05aa10ae9d9 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha512.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/sha512.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/sha512.o.d" -o ${OBJECTDIR}/_ext/28091179/sha512.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/sha512.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/hmac.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/hmac.c  .generated_files/flags/default/ba460f3b81a0069b5fe23035eede5c6a2de72352 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/hmac.o.d" -o ${OBJECTDIR}/_ext/28091179/hmac.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/hmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/hash.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/hash.c  .generated_files/flags/default/c6936382f3286ba25136bf5ddec5b8083e885356 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/hash.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/hash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/hash.o.d" -o ${OBJECTDIR}/_ext/28091179/hash.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/hash.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/compress.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/compress.c  .generated_files/flags/default/ea3e8a80aa490c039a2b829357100aa6e663d3db .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/compress.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/compress.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/compress.o.d" -o ${OBJECTDIR}/_ext/28091179/compress.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/compress.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/crypto.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/crypto.c  .generated_files/flags/default/d3d06c4bf8485b07c220d88e2cd8d8d774b12e55 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/crypto.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/crypto.o.d" -o ${OBJECTDIR}/_ext/28091179/crypto.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/crypto.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/coding.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/coding.c  .generated_files/flags/default/b34d07a99d698359b8d4020ee44ca5b386bbdbe3 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/coding.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/coding.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/coding.o.d" -o ${OBJECTDIR}/_ext/28091179/coding.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/coding.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/error.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/error.c  .generated_files/flags/default/ab72823e9bb2cc4201c0ccb03ac11d80c2439e91 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/error.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/error.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/error.o.d" -o ${OBJECTDIR}/_ext/28091179/error.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/error.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/integer.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/integer.c  .generated_files/flags/default/2390679263380a0dd9deae4e2623cf023256c753 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/integer.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/integer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/integer.o.d" -o ${OBJECTDIR}/_ext/28091179/integer.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/integer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/logging.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/logging.c  .generated_files/flags/default/7cd4b6ad1e87c308842f0fc272c97b03bb88c45f .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/logging.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/logging.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/logging.o.d" -o ${OBJECTDIR}/_ext/28091179/logging.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/logging.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/memory.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/memory.c  .generated_files/flags/default/1389676dad62db3a54a5d7d717c43bc2673ab059 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/memory.o.d" -o ${OBJECTDIR}/_ext/28091179/memory.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/memory.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/wc_port.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/wc_port.c  .generated_files/flags/default/6fae67f2c03ac678ec3d71e6f60f6eae05b95198 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/wc_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/wc_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/wc_port.o.d" -o ${OBJECTDIR}/_ext/28091179/wc_port.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/wc_port.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/28091179/wolfmath.o: ../../../../../../microchip/harmony/v2_06/framework/crypto/src/wolfmath.c  .generated_files/flags/default/b2d415431d133bb176227659a720af09542dbe82 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/28091179" 
	@${RM} ${OBJECTDIR}/_ext/28091179/wolfmath.o.d 
	@${RM} ${OBJECTDIR}/_ext/28091179/wolfmath.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/28091179/wolfmath.o.d" -o ${OBJECTDIR}/_ext/28091179/wolfmath.o ../../../../../../microchip/harmony/v2_06/framework/crypto/src/wolfmath.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1486592573/drv_ethmac.o: ../../../../../../microchip/harmony/v2_06/framework/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/flags/default/cab41e06031cb877b87cb911a1bf976fd22eb878 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1486592573" 
	@${RM} ${OBJECTDIR}/_ext/1486592573/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1486592573/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1486592573/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1486592573/drv_ethmac.o ../../../../../../microchip/harmony/v2_06/framework/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o: ../../../../../../microchip/harmony/v2_06/framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/flags/default/ea6dec4d9333656266981db8380223d39d271f14 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1486592573" 
	@${RM} ${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1486592573/drv_ethmac_lib.o ../../../../../../microchip/harmony/v2_06/framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1632220917/drv_ethphy.o: ../../../../../../microchip/harmony/v2_06/framework/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/flags/default/3362abfcaf5b24ca16ef0e354cbc2ea1c7246a9 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1632220917" 
	@${RM} ${OBJECTDIR}/_ext/1632220917/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1632220917/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1632220917/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/1632220917/drv_ethphy.o ../../../../../../microchip/harmony/v2_06/framework/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o: ../../../../../../microchip/harmony/v2_06/framework/driver/ethphy/src/dynamic/drv_extphy_dp83848.c  .generated_files/flags/default/e5b610cd5e55641e8fbd6511a9a4fdfe0c5e9710 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1632220917" 
	@${RM} ${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o.d 
	@${RM} ${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o.d" -o ${OBJECTDIR}/_ext/1632220917/drv_extphy_dp83848.o ../../../../../../microchip/harmony/v2_06/framework/driver/ethphy/src/dynamic/drv_extphy_dp83848.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1426996077/drv_miim.o: ../../../../../../microchip/harmony/v2_06/framework/driver/miim/src/dynamic/drv_miim.c  .generated_files/flags/default/c24e7abd67bcfd8255e3e8c63ba0a1da1a35ee96 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1426996077" 
	@${RM} ${OBJECTDIR}/_ext/1426996077/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/1426996077/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1426996077/drv_miim.o.d" -o ${OBJECTDIR}/_ext/1426996077/drv_miim.o ../../../../../../microchip/harmony/v2_06/framework/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/47425154/drv_nvm.o: ../../../../../../microchip/harmony/v2_06/framework/driver/nvm/src/dynamic/drv_nvm.c  .generated_files/flags/default/58997b6159dae12f57f4fe6e090e0d12f5209954 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/47425154" 
	@${RM} ${OBJECTDIR}/_ext/47425154/drv_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/47425154/drv_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/47425154/drv_nvm.o.d" -o ${OBJECTDIR}/_ext/47425154/drv_nvm.o ../../../../../../microchip/harmony/v2_06/framework/driver/nvm/src/dynamic/drv_nvm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o: ../../../../../../microchip/harmony/v2_06/framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c  .generated_files/flags/default/f1c4edb5a335ddb77643a5b8e6b8ee3bcf74e392 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/47425154" 
	@${RM} ${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o.d 
	@${RM} ${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o.d" -o ${OBJECTDIR}/_ext/47425154/drv_nvm_erasewrite.o ../../../../../../microchip/harmony/v2_06/framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1092753911/drv_spi.o: ../../../../../../microchip/harmony/v2_06/framework/driver/spi/src/dynamic/drv_spi.c  .generated_files/flags/default/e55b01c74db99af030dbebf7a20e278b7c6310a2 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1092753911" 
	@${RM} ${OBJECTDIR}/_ext/1092753911/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1092753911/drv_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1092753911/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1092753911/drv_spi.o ../../../../../../microchip/harmony/v2_06/framework/driver/spi/src/dynamic/drv_spi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o: ../../../../../../microchip/harmony/v2_06/framework/driver/spi/src/drv_spi_sys_queue_fifo.c  .generated_files/flags/default/80088ce0b64e770a28a637ffbe5e0c442bea6219 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/111161817" 
	@${RM} ${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o.d" -o ${OBJECTDIR}/_ext/111161817/drv_spi_sys_queue_fifo.o ../../../../../../microchip/harmony/v2_06/framework/driver/spi/src/drv_spi_sys_queue_fifo.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/709153290/drv_tmr.o: ../../../../../../microchip/harmony/v2_06/framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/default/98c67366a4e8488beb844bfd4b32ecad2de0e025 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/709153290" 
	@${RM} ${OBJECTDIR}/_ext/709153290/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/709153290/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/709153290/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/709153290/drv_tmr.o ../../../../../../microchip/harmony/v2_06/framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1201400862/drv_usart.o: ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart.c  .generated_files/flags/default/53c978d9c74b7bea2fe299f97604d2f454777c76 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1201400862" 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1201400862/drv_usart.o.d" -o ${OBJECTDIR}/_ext/1201400862/drv_usart.o ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o: ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c  .generated_files/flags/default/fd743407024b2a1c5144c4c34da4c70044ac1d8d .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1201400862" 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o.d" -o ${OBJECTDIR}/_ext/1201400862/drv_usart_buffer_queue.o ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o: ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart_read_write.c  .generated_files/flags/default/5666a3204b52069af8765b9ee691c4316ff19fd9 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1201400862" 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o.d" -o ${OBJECTDIR}/_ext/1201400862/drv_usart_read_write.o ../../../../../../microchip/harmony/v2_06/framework/driver/usart/src/dynamic/drv_usart_read_write.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1817879350/net_pres.o: ../../../../../../microchip/harmony/v2_06/framework/net/pres/src/net_pres.c  .generated_files/flags/default/373e7f0424fccb6bb3fc33a84922f4514958b7b7 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1817879350" 
	@${RM} ${OBJECTDIR}/_ext/1817879350/net_pres.o.d 
	@${RM} ${OBJECTDIR}/_ext/1817879350/net_pres.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1817879350/net_pres.o.d" -o ${OBJECTDIR}/_ext/1817879350/net_pres.o ../../../../../../microchip/harmony/v2_06/framework/net/pres/src/net_pres.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/433538943/sys_command.o: ../../../../../../microchip/harmony/v2_06/framework/system/command/src/sys_command.c  .generated_files/flags/default/d884d9fae5c2d6a445f21c3799568e06d5dea530 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/433538943" 
	@${RM} ${OBJECTDIR}/_ext/433538943/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/433538943/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/433538943/sys_command.o.d" -o ${OBJECTDIR}/_ext/433538943/sys_command.o ../../../../../../microchip/harmony/v2_06/framework/system/command/src/sys_command.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/23173237/sys_console.o: ../../../../../../microchip/harmony/v2_06/framework/system/console/src/sys_console.c  .generated_files/flags/default/4c76c4aab56aa3bc95a3301afb13e2bc54a4c4b6 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/23173237" 
	@${RM} ${OBJECTDIR}/_ext/23173237/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/23173237/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/23173237/sys_console.o.d" -o ${OBJECTDIR}/_ext/23173237/sys_console.o ../../../../../../microchip/harmony/v2_06/framework/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/23173237/sys_console_uart.o: ../../../../../../microchip/harmony/v2_06/framework/system/console/src/sys_console_uart.c  .generated_files/flags/default/e76fe123eddeecb15df8d804708bdbbc7587c570 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/23173237" 
	@${RM} ${OBJECTDIR}/_ext/23173237/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/23173237/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/23173237/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/23173237/sys_console_uart.o ../../../../../../microchip/harmony/v2_06/framework/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2034620947/sys_fs.o: ../../../../../../microchip/harmony/v2_06/framework/system/fs/src/dynamic/sys_fs.c  .generated_files/flags/default/90d98c657ab66bdd0ad4f926675f118d5f467b4c .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/2034620947" 
	@${RM} ${OBJECTDIR}/_ext/2034620947/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/2034620947/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2034620947/sys_fs.o.d" -o ${OBJECTDIR}/_ext/2034620947/sys_fs.o ../../../../../../microchip/harmony/v2_06/framework/system/fs/src/dynamic/sys_fs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o: ../../../../../../microchip/harmony/v2_06/framework/system/fs/src/dynamic/sys_fs_media_manager.c  .generated_files/flags/default/229a69d3fe8598e29f7608970f9cb1c7af587a41 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/2034620947" 
	@${RM} ${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/2034620947/sys_fs_media_manager.o ../../../../../../microchip/harmony/v2_06/framework/system/fs/src/dynamic/sys_fs_media_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/842901914/mpfs.o: ../../../../../../microchip/harmony/v2_06/framework/system/fs/mpfs/src/mpfs.c  .generated_files/flags/default/bea0e86e4e33d26ab35c5e11556bf72f4c3bec3c .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/842901914" 
	@${RM} ${OBJECTDIR}/_ext/842901914/mpfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/842901914/mpfs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/842901914/mpfs.o.d" -o ${OBJECTDIR}/_ext/842901914/mpfs.o ../../../../../../microchip/harmony/v2_06/framework/system/fs/mpfs/src/mpfs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/231205469/sys_int_pic32.o: ../../../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c  .generated_files/flags/default/a33b480bb7c452865c0dbb3be15974752f47d8d2 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/231205469" 
	@${RM} ${OBJECTDIR}/_ext/231205469/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/231205469/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/231205469/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/231205469/sys_int_pic32.o ../../../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/655575975/sys_random.o: ../../../../../../microchip/harmony/v2_06/framework/system/random/src/sys_random.c  .generated_files/flags/default/1a136ffd413c0430523edfb6ac74a192db9001d4 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/655575975" 
	@${RM} ${OBJECTDIR}/_ext/655575975/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/655575975/sys_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/655575975/sys_random.o.d" -o ${OBJECTDIR}/_ext/655575975/sys_random.o ../../../../../../microchip/harmony/v2_06/framework/system/random/src/sys_random.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/910924237/sys_tmr.o: ../../../../../../microchip/harmony/v2_06/framework/system/tmr/src/sys_tmr.c  .generated_files/flags/default/a1ec4a90c3d70555c4d593eb1b384071f1f5c91 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/910924237" 
	@${RM} ${OBJECTDIR}/_ext/910924237/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/910924237/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/910924237/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/910924237/sys_tmr.o ../../../../../../microchip/harmony/v2_06/framework/system/tmr/src/sys_tmr.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/common/sys_fs_wrapper.c  .generated_files/flags/default/9db8e51d9cb885413d16b22e794122786f0bbc23 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/2030780900" 
	@${RM} ${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o.d" -o ${OBJECTDIR}/_ext/2030780900/sys_fs_wrapper.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/common/sys_fs_wrapper.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2030780900/helpers.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/common/helpers.c  .generated_files/flags/default/40533ca0d900a846ff80fe0c9fcf3a35cf079f20 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/2030780900" 
	@${RM} ${OBJECTDIR}/_ext/2030780900/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/2030780900/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2030780900/helpers.o.d" -o ${OBJECTDIR}/_ext/2030780900/helpers.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/common/helpers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/ipv4.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/ipv4.c  .generated_files/flags/default/80df7ab74326b435e145ca2fd25147d9eadf8518 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/ipv4.o.d" -o ${OBJECTDIR}/_ext/361655554/ipv4.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/ipv4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/tcp.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcp.c  .generated_files/flags/default/a1ec09fe6ee5dbe0bd4f9ca73589a01df4534dda .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcp.o.d" -o ${OBJECTDIR}/_ext/361655554/tcp.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/udp.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/udp.c  .generated_files/flags/default/6f14ce7cb26848ddea687369d5c45db5e9cffc93 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/udp.o.d" -o ${OBJECTDIR}/_ext/361655554/udp.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/udp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/default/83635360e3ea8305a3d77e691caec06602ad5e48 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_heap_alloc.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/default/ccdfbe5e74ca7b8f24926632b04c4b3b3eb85ff9 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_heap_internal.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_heap_internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/arp.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/arp.c  .generated_files/flags/default/befe8c7a268c4f2a4ba3dbb7bbed70136ae657e8 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/arp.o.d" -o ${OBJECTDIR}/_ext/361655554/arp.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/arp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/berkeley_api.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/berkeley_api.c  .generated_files/flags/default/1c70bdd7dc6a2288b7b1000dadfd6860c19bef .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/berkeley_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/berkeley_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/berkeley_api.o.d" -o ${OBJECTDIR}/_ext/361655554/berkeley_api.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/berkeley_api.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/dhcp.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/dhcp.c  .generated_files/flags/default/87da86483d5ae50e8526d7263ee45788906d8fc8 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/dhcp.o.d" -o ${OBJECTDIR}/_ext/361655554/dhcp.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/dhcp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/dns.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/dns.c  .generated_files/flags/default/3bc5ce3822552e90380a1bbf439fe5f7c57d03e .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/dns.o.d" -o ${OBJECTDIR}/_ext/361655554/dns.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/dns.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/http.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/http.c  .generated_files/flags/default/c178704810ea5062f26b98bce095e29030aa44b .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/http.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/http.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/http.o.d" -o ${OBJECTDIR}/_ext/361655554/http.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/http.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/nbns.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/nbns.c  .generated_files/flags/default/faf6d799a46135c114ed1964eca22b6b9d34e5d .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/nbns.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/nbns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/nbns.o.d" -o ${OBJECTDIR}/_ext/361655554/nbns.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/nbns.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/sntp.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/sntp.c  .generated_files/flags/default/799dca4c0bd16f09b95dbce07f62cbe595320668 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/sntp.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/sntp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/sntp.o.d" -o ${OBJECTDIR}/_ext/361655554/sntp.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/sntp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/telnet.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/telnet.c  .generated_files/flags/default/832f0cf26b4483fca822f24911cb0733e886e3af .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/telnet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/telnet.o.d" -o ${OBJECTDIR}/_ext/361655554/telnet.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/telnet.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/tcpip_announce.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_announce.c  .generated_files/flags/default/afc730b8f6360958d7ec8a822f4fc308d2f234ad .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_announce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_announce.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_announce.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_announce.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/hash_fnv.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/hash_fnv.c  .generated_files/flags/default/f83535e1c2fbd0d3dd7fe7e51d1b997c16ae9586 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/361655554/hash_fnv.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/hash_fnv.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/oahash.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/oahash.c  .generated_files/flags/default/86e6e8bbaf2b49d5f03c80411decbe9a36492ed5 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/oahash.o.d" -o ${OBJECTDIR}/_ext/361655554/oahash.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/oahash.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/tcpip_helpers.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_helpers.c  .generated_files/flags/default/5885d3f5d19f8b374b2070a0eadcdd96e508d0a8 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_helpers.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_helpers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/tcpip_manager.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_manager.c  .generated_files/flags/default/8378ceed01cb68e9935d384c83fb7a99e616f910 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_manager.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/tcpip_notify.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_notify.c  .generated_files/flags/default/6d05feb4579b248ddef92c066c37a94a25e4749c .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_notify.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_notify.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/361655554/tcpip_packet.o: ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_packet.c  .generated_files/flags/default/e3d4c7438e0707b9c19b4c47a922981d5796408a .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/361655554" 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/361655554/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/361655554/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/361655554/tcpip_packet.o ../../../../../../microchip/harmony/v2_06/framework/tcpip/src/tcpip_packet.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/bmcnet.o: ../src/bmcnet.c  .generated_files/flags/default/bf4e291eac4cc12a822655aad4fcad2df275f533 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bmcnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bmcnet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bmcnet.o.d" -o ${OBJECTDIR}/_ext/1360937237/bmcnet.o ../src/bmcnet.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/remote_daq.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ../../../../../../microchip/harmony/v2_06/bin/framework/peripheral/PIC32MX795F512L_peripherals.a      -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=44960,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml 
	
else
${DISTDIR}/remote_daq.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../microchip/harmony/v2_06/bin/framework/peripheral/PIC32MX795F512L_peripherals.a 
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/remote_daq.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ../../../../../../microchip/harmony/v2_06/bin/framework/peripheral/PIC32MX795F512L_peripherals.a      -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=44960,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml 
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
