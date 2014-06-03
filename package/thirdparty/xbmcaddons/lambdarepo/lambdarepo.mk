###############################################################################
#
## Xbmc repository.lambda
#
###############################################################################
LAMBDA_VERSION = 1.0
LAMBDA_SOURCE = gomovies-repository.lambda-$(LAMBDA_VERSION).zip
LAMBDA_SITE = http://navixhardware.com/repo/zips/repository.lambda/
LAMBDA_INSTALL_STAGING = NO
LAMBDA_INSTALL_TARGET = YES

define LAMBDA_EXTRACT_CMDS
	unzip $(DL_DIR)/$(LAMBDA_SOURCE) -d $(@D)
endef

define LAMBDA_INSTALL_TARGET_CMDS
	cp -rf $(@D)/repository.lambda $(TARGET_DIR)/usr/share/xbmc/addons/
endef

$(eval $(call xbmc-addon,package/thirdparty/xbmcaddons,lambda))
