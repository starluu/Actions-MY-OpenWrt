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
wget -P include https://github.com/starluu/Actions-MY-OpenWrt/raw/main/Lean/target.mk

# 删除原版Makefile
rm -rf target/linux/x86/Makefile

# 下载新的Makefile
wget -P target/linux/x86 https://github.com/starluu/Actions-MY-OpenWrt/raw/main/Lean/Makefile

# 注销原版luci
sed -i 's/^[^#].*luci$/#&/g' feeds.conf.default

# 添加第三方luci源
sed -i '$a src-git luci https://github.com/Lienol/openwrt-luci.git;master' feeds.conf.default
