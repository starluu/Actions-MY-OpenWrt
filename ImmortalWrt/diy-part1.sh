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

# 添加passwall2源
sed -i '$a src-git passwall2 https://github.com/smallprogram/openwrt-passwall2.git' feeds.conf.default

# 添加alist源
sed -i '$a src-git alist https://github.com/sbwml/luci-app-alist.git' feeds.conf.default
