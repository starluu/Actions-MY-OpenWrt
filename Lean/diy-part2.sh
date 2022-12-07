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
# 删除原版golang添加Alist支持
rm -rf feeds/packages/lang/golang
svn export https://github.com/sbwml/packages_lang_golang/trunk feeds/packages/lang/golang

# replace default passwall2
rm -rf feeds/luci/applications/luci-app-passwall2
svn export https://github.com/smallprogram/openwrt-passwall2/trunk feeds/luci/applications/luci-app-passwall2
