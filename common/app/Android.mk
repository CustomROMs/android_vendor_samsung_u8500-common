#ifneq ($(filter u8500,$(TARGET_BOARD_PLATFORM)),)
include $(call first-makefiles-under,$(call my-dir))
#endif
