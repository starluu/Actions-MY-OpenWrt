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

# 修改原版luci版本
sed -i 's/17.01-dev/master/g' feeds.conf.default

# 修改原版默认插件
sed -i 's/luci-app-timecontrol/luci-app-alist/g' include/target.mk
sed -i 's/luci-app-control-timewol/luci-app-diskman/g' include/target.mk
sed -i 's/luci-app-control-weburl/kmod-nft-offload/g' include/target.mk
sed -i 's/luci-app-control-webrestriction/luci-app-aliyundrive-fuse/g' include/target.mk

# 添加第三方插件源
sed -i '$a src-git kiddin9 https://github.com/kiddin9/openwrt-packages.git' feeds.conf.default
