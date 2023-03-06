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

# 修改原版默认插件
sed -i 's/luci-app-timecontrol/luci-app-alist/g' include/target.mk
sed -i 's/luci-app-control-weburl/luci-app-turboacc/g' include/target.mk
sed -i 's/luci-app-control-timewol/luci-app-diskman/g' include/target.mk
sed -i 's/luci-app-control-webrestriction/luci-app-aliyundrive-fuse/g' include/target.mk
sed -i 's/autosamba/luci-app-samba4/g' target/linux/x86/Makefile
sed -i 's/luci-app-usb-printer/openssh-sftp-server/g' target/linux/x86/Makefile

# 添加第三方插件源
sed -i '$a src-git kiddin9 https://github.com/kiddin9/openwrt-packages.git' feeds.conf.default
