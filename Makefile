include $(THEOS)/makefiles/common.mk

TWEAK_NAME = AdblockForYout
AdblockForYout_FILES = Tweak.xm
AdblockForYout_CFLAGS=-fobjc-arc
include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
