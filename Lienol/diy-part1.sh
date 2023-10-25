#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# 删除原版target.mk
rm -rf include/target.mk

# 下载新的target.mk
wget -P include https://github.com/starluu/Actions-MY-OpenWrt/raw/main/Lienol/target.mk

# 修改target.mk
sed -i 's/dnsmasq/dnsmasq-full/g' include/target.mk

# 修改原版默认插件
sed -i 's/autosamba/luci-app-samba4/g' target/linux/x86/Makefile
sed -i 's/luci-app-usb-printer/openssh-sftp-server/g' target/linux/x86/Makefile

# 取消原版lienol
sed -i 's/^\(.*lienol\)/#&/' feeds.conf.default

# 取消原版other
sed -i 's/^\(.*other\)/#&/' feeds.conf.default

# 添加第三方插件源
sed -i '$a src-git kiddin9 https://github.com/kiddin9/openwrt-packages.git' feeds.conf.default
