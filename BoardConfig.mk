LOCAL_PATH := device/LANIX/Ilium_M1

TARGET_BOARD_PLATFORM := mt6580               
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME :=      
BOARD_USES_MTK_HARDWARE := true
BOARD_HAS_MTK_HARDWARE := true

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true            
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_FLASH_BLOCK_SIZE := 0
BOARD_HAS_NO_REAL_SDCARD := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_RECOVERY_SWIPE := true
BOARD_USES_MMCUTILS := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_CHARGER_SHOW_PERCENTAGE := true

# TWRP stuff
TW_EXCLUDE_SUPERSU := fasle                     
TW_INCLUDE_CRYPTO := true                      
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_SCREEN_BLANK_ON_BOOT := true
DEVICE_RESOLUTION := 800x480              
TARGET_SCREEN_HEIGHT := 480		
TARGET_SCREEN_WIDTH := 800
TW_THEME := portrait_hdpi                      
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"

# Set the Brightness Control File Path below
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_SECONDARY_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
# Set the Path of Logical Units (LUNs) for Storage below
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 80                   
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_NO_BATT_PERCENT := true 
TW_CUSTOM_POWER_BUTTON := 107
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_REBOOT_RECOVERY := true
RECOVERY_TOUCHSCREEN_SWAP_XY := true 
RECOVERY_TOUCHSCREEN_FLIP_Y := true
RECOVERY_TOUCHSCREEN_FLIP_X := true
TWRP_EVENT_LOGGING := true
BOARD_HAS_FLIPPED_SCREEN


TW_INCLUDE_NTFS_3G := true                   
TW_INCLUDE_FUSE_EXFAT := true                 
TWRP_INCLUDE_LOGCAT := true                   
TW_INCLUDE_FB2PNG := true                     
TW_DEFAULT_LANGUAGE := en                     
TW_EXTRA_LANGUAGES := false

# Kernel
TARGET_IS_64_BIT := false                      
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/zImage
# Get the CMDLine, Base, Pagesize and offsets from Unpacked recovery image and put below
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x03f88000 --tags_offset 0x0df88000


# Check whether the device is 64-bit or 32-bit, and then include the TWRPBuilder Part
ifeq ($(TARGET_IS_64_BIT),true)
include device/generic/twrpbuilder/BoardConfig64.mk   # If the device Is 64-bit, it'll be used
else
include device/generic/twrpbuilder/BoardConfig32.mk   # If the device Is 32-bit, it'll be used
endif
