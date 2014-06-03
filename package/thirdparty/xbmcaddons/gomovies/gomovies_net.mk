###############################################################################
#
## Xbmc GOmovies Addon
#
###############################################################################
GOmovies_VERSION = 1.2.2
GOmovies_SOURCE = plugin.video.GOmovies-$(GOmovies_VERSION).zip
GOmovies_SITE = http://navixhardware.com/addons/plugin.video.GOmovies/
GOmovies_INSTALL_STAGING = NO
GOmovies_INSTALL_TARGET = YES

define GOmovies_EXTRACT_CMDS
	unzip $(DL_DIR)/$(GOmovies_SOURCE) -d $(@D)
endef

define GOmovies_INSTALL_TARGET_CMDS
	cp -rf $(@D)/plugin.video.GOmovies $(TARGET_DIR)/usr/share/xbmc/addons/
endef

$(eval $(call xbmc-addon,package/thirdparty/xbmcaddons,GOmovies))
