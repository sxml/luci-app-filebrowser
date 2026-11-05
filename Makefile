# Copyright (C) 2018-2020 Lienol <lawlienol@gmail.com>
#
# This is free software, licensed under the Apache License, Version 2.0 .
#
# Improve by xiaozhuai <xiaozhuai7@gmail.com>
#
# Adapted for OpenWrt / LuCI 25.12 (coolsnowwolf/luci branch openwrt-25.12)

include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI support for FileBrowser
LUCI_PKGARCH:=all

# OpenWrt 25.12: luci-base is a pure ucode package, the legacy Lua runtime and
# the classic CBI UI are split out of it.  This app is a legacy Lua/CBI app and
# therefore must explicitly pull in the compatibility stack:
#   - luci-compat        : classic CBI pages/templates (luci.model.cbi, ...)
#                          it also pulls luci-lua-runtime + luci-lib-base
#   - luci-lua-runtime   : luci.sys, luci.dispatcher, luci.template, ...
#                          (auto-added by luci.mk because a luasrc/ exists)
#   - luci-lib-nixio     : the nixio / nixio.fs modules used by the code
#   - luci-lib-jsonc     : the luci.jsonc module used to parse GitHub replies
LUCI_DEPENDS:=+luci-compat +luci-lib-nixio +luci-lib-jsonc

PKG_LICENSE:=Apache-2.0
PKG_MAINTAINER:=Lienol <lawlienol@gmail.com>

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
