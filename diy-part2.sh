#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Replace argon theme - no need because kenzok8 feeds prvides new argon_new theme
#rm -rf package/lean/luci-theme-argon/
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon

# Add Extra packages - no need because kenzok8 feeds priveds all of extra packages like
# adguardhome,smartdns,openclash etc
#git clone https://github.com/rufengsuixing/luci-app-adguardhome package/lean/luci-app-adguardhome

# repatch kenso8's naiveproxy patchfiles
# kenso8 had been fixed this issue at 2020.10.15
#sed -i 's/if (is_linux) {/if (is_linux || is_chromeos) {/' package/feeds/kenzo/naiveproxy/patches/100-build-add-OpenWrt-staging-libraries.patch
#sed -i 's/@@ -746,7 +746,6/@@ -751,7 +751,6/' package/feeds/kenzo/naiveproxy/patches/101-build-drop-useless-deps-simd_asm.patch
