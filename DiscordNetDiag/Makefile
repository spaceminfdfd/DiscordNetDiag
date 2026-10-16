ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:12.0
INSTALL_TARGET_PROCESSES = Discord

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DiscordNetDiag
DiscordNetDiag_FILES = Tweak.xm
DiscordNetDiag_CFLAGS = -fobjc-arc
DiscordNetDiag_FRAMEWORKS = Foundation
DiscordNetDiag_PRIVATE_FRAMEWORKS = 

include $(THEOS_MAKE_PATH)/tweak.mk
