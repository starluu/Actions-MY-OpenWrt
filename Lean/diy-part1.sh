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
wget -P include https://github.com/x-wrt/x-wrt/raw/master/include/target.mk

# 删除原版Makefile
rm -rf target/linux/x86/Makefile

# 下载新的Makefile
wget -P target/linux/x86 https://github.com/x-wrt/x-wrt/raw/master/target/linux/x86/Makefile
