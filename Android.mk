ifneq ($(filter Ilium_M1,$(TARGET_DEVICE)),)

LOCAL_PATH := device/LANIX/Ilium_M1

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
