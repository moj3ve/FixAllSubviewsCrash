INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

ARCHS = arm64 arm64e
TWEAK_NAME = FixAllSubviewsCrash

FixAllSubviewsCrash_FILES = Tweak.x
FixAllSubviewsCrash_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
