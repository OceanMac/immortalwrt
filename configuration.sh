#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: configuration.sh
# Description: OpenWrt DIY script (After Update feeds)


# Modify default IP
# sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate

# Set default Theme
default_theme='bootstrap'
sed -i "s/bootstrap/$default_theme/g" feeds/luci/modules/luci-base/root/etc/config/luci
