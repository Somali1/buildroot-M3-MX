###############################################################################
#
## Xbmc jailbreak Addons
#
###############################################################################
gojailbreak_SOURCE = jailbreak.zip
gojailbreak_SITE = http://navixhardware.com/addons/
gojailbreak_INSTALL_STAGING = NO
gojailbreak_INSTALL_TARGET = YES

define gojailbreak_EXTRACT_CMDS
	unzip $(DL_DIR)/$(gojailbreak_SOURCE) -d $(@D)
endef

define gojailbreak_INSTALL_TARGET_CMDS
	cp -rf $(@D)/plugin.video.gojailbreak $(TARGET_DIR)/usr/share/xbmc/
endef

$(eval $(call xbmc-addon,package/thirdparty/xbmcaddons,gojailbreak))
