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

# 注销原版luci
sed -i 's/^#\(.*luci\)/\1/' feeds.conf.default

# 添加第三方luci源
sed -i '$a src-git Lienolluci https://github.com/Lienol/openwrt-luci.git;master' feeds.conf.default
