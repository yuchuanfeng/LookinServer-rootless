TARGET := iphone:clang:latest:10.0
#INSTALL_TARGET_PROCESSES = SpringBoard
THEOS_PACKAGE_SCHEME = rootless

export THEOS_DEVICE_IP=127.0.0.1
export THEOS_DEVICE_PORT=2222

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = lookin

# lookin_FILES = Tweak.x
lookin_FILES = $(shell find LookinServer -name "*.m")
lookin_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
