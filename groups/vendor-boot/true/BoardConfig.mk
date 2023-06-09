ifeq ($(BOOTCONFIG_ENABLE), true)
BOARD_BOOT_HEADER_VERSION := 4
BOARD_KERNEL_CMDLINE += bootconfig
else
BOARD_BOOT_HEADER_VERSION := 3
endif

BOARD_MKBOOTIMG_ARGS := --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := $(shell echo {{partition_size}}*1048576 | bc)


{{#slot-ab}}
AB_OTA_PARTITIONS += vendor_boot
{{/slot-ab}}
