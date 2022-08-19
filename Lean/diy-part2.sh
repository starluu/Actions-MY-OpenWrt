#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
# sed -i 's/192.168.1.1/192.168.1.6/g' package/base-files/files/bin/config_generate

# 修改target.mk
sed -i 's/dnsmasq/dnsmasq-full/g' include/target.mk
sed -i 's/kmod-nft-offload/luci-app-turboacc/g' include/target.mk

# 修改Makefile
sed -i 's/KERNEL_PATCHVER:=5.10/KERNEL_PATCHVER:=5.19/g' target/linux/x86/Makefile
