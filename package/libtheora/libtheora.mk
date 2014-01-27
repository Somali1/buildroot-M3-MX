################################################################################
#
# libtheora
#
################################################################################

LIBTHEORA_VERSION = 1.0
LIBTHEORA_SOURCE = libtheora-$(LIBTHEORA_VERSION).tar.gz
LIBTHEORA_SITE = http://downloads.xiph.org/releases/theora
LIBTHEORA_INSTALL_STAGING = YES
LIBTHEORA_LICENSE = BSD-3c
LIBTHEORA_LICENSE_FILES = COPYING LICENSE

LIBTHEORA_CONF_OPT = \
		--disable-oggtest \
		--disable-vorbistest \
		--disable-sdltest \
		--disable-examples \
		--disable-spec

LIBTHEORA_DEPENDENCIES = libogg libvorbis host-pkgconf

$(eval $(autotools-package))
