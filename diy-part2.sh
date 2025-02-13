#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script (After Update feeds)


# Add luci-app-poweroff
git clone --depth=1 https://github.com/esirplayground/luci-app-poweroff ./package/luci-app-poweroff

# Add luci-app-netdata
rm -rf ./feeds/luci/applications/luci-app-netdata/
git clone --depth=1 https://github.com/Jason6111/luci-app-netdata ./feeds/luci/applications/luci-app-netdata/

# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate
