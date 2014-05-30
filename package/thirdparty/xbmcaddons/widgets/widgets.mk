###############################################################################
#
## Xbmc service.skin.widgets Addon
#
###############################################################################
WIDGETS_VERSION = 0.0.29
WIDGETS_SOURCE = service.skin.widgets-$(WIDGETS_VERSION).zip
WIDGETS_SITE = http://mirrors.xbmc.org/addons/frodo/service.skin.widgets/
WIDGETS_INSTALL_STAGING = NO
WIDGETS_INSTALL_TARGET = YES

define WIDGETS_EXTRACT_CMDS
	unzip $(DL_DIR)/$(WIDGETS_SOURCE) -d $(@D)
endef

define WIDGETS_INSTALL_TARGET_CMDS
	cp -rf $(@D)/service.skin.widgets $(TARGET_DIR)/usr/share/xbmc/addons/
endef

$(eval $(call xbmc-addon,package/thirdparty/xbmcaddons,widgets))
