etc#!/bin/sh
# 99-custom.sh 就是immortalwrt固件首次启动时运行的脚本 位于固件内的/etc/uci-defaults/99-custom.sh
# Log file for debugging
LOGFILE="/tmp/uci-defaults-log.txt"
echo "Starting 99-custom.sh at $(date)" >> $LOGFILE

# 多网口设备 支持修改为别的ip地址
uci set network.lan.ipaddr='192.168.1.1'
uci set network.lan.gateway='192.168.1.2'
uci add_list network.lan.dns='1.1.1.1'
uci add_list network.lan.dns='8.8.8.8'
uci add_list network.lan.dns='192.168.1.2'
uci commit

# 删除作者广告信息
rm -rf /usr/lib/lua/luci/view/admin_status/index/links.htm

# 卸载顽固预装软件
opkg --force-removal-of-dependent-packages --autoremove remove luci-app-partexp
opkg --force-depends --autoremove remove v2ray-core v2ray-plugin

# 安装最新alist
opkg install /etc/alist/*.ipk  --force-depends
rm -rf /etc/alist/*

exit 0
