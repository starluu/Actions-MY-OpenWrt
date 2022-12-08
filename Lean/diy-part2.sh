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


# 添加第三方插件
svn export https://github.com/NueXini/NueXini_Packages/trunk/luci-app-vsftpd feeds/luci/applications/luci-app-vsftpd
svn export https://github.com/NueXini/NueXini_Packages/trunk/luci-app-diskman feeds/luci/applications/luci-app-diskman

# 删除原版golang添加Alist支持
rm -rf feeds/packages/lang/golang
svn export https://github.com/sbwml/packages_lang_golang/trunk feeds/packages/lang/golang
