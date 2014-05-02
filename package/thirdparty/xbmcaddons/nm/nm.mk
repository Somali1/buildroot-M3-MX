###############################################################################
#
## Xbmc NetworkManager Addon
#
###############################################################################
NM_VERSION = f6e7e6e1f5a5d1dbed786cf36bc96bd90caed1ef
NM_SOURCE=nm-$(NM_VERSION).tar.gz
NM_SITE = git://github.com/CoreTech-Development/script.mxlinux.wifimanager.git
NM_SITE_METHOD = git
NM_INSTALL_STAGING = NO
NM_INSTALL_TARGET = YES

define NM_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/xbmc/addons/script.linux.nm
	cp -rf $(@D)/* $(TARGET_DIR)/usr/share/xbmc/addons/script.linux.nm/
endef

$(eval $(call xbmc-addon,package/thirdparty/xbmcaddons,nm))
