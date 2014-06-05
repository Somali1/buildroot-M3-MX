###############################################################################
#
## Xbmc jailbreak Addons
#
###############################################################################
GOJAILBREAK_SOURCE = jailbreak.zip
GOJAILBREAK_SITE = http://navixhardware.com/addons/
GOJAILBREAK_INSTALL_STAGING = NO
GOJAILBREAK_INSTALL_TARGET = YES

define GOJAILBREAK_EXTRACT_CMDS
	unzip $(DL_DIR)/$(GOJAILBREAK_SOURCE) -d $(@D)
endef

define GOJAILBREAK_INSTALL_TARGET_CMDS
	cp -rf $(@D)/* $(TARGET_DIR)/usr/share/xbmc/
endef

$(eval $(call xbmc-addon,package/thirdparty/xbmcaddons,gojailbreak))

