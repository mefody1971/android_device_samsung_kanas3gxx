LOCAL_PATH := device/samsung/kanas3gxx

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/kanas3gxx/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := sc8830
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a5
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := kanas3gxx

BOARD_KERNEL_CMDLINE := init=/sbin/init root=/dev/ram rw initrd=0x11000000,16M console=ttyDCC0 mem=88M
BOARD_KERNEL_PAGESIZE := 4096

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

# set path to kernel source & config, if now use prebuilt
TARGET_KERNEL_SOURCE := kernel/samsung/kanas3gxx
TARGET_KERNEL_CONFIG := cm_kanas3g_hw02_defconfig
BOARD_HAS_NO_MISC_PARTITION := true
# TARGET_USES_UNCOMPRESSED_KERNEL := true

TARGET_PREBUILT_KERNEL := &(LOCAL_PATH)/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

# fix resolution, sdcard & pixel format
TARGET_USES_ION := true
DEVICE_RESOLUTION := 480x800
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

# recovery variants
# RECOVERY_VARIANT := recovery
# RECOVERY_VARIANT := recovery-philz
# RECOVERY_VARIANT := recovery-twrp
# RECOVERY_VARIANT := recovery-carliv