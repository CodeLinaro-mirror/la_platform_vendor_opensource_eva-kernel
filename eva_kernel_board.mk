# Build eva kernel driver

ENABLE_EVA_KERNEL := true
ifeq ($(TARGET_KERNEL_DLKM_DISABLE), true)
ifneq ($(TARGET_KERNEL_DLKM_EVA_OVERRIDE), true)
ENABLE_EVA_KERNEL := false
endif
endif

ifeq ($(ENABLE_EVA_KERNEL), true)
ifneq ($(TARGET_BOARD_AUTO),true)
ifneq ($(TARGET_BOARD_PLATFORM),)
BOARD_VENDOR_KERNEL_MODULES += $(KERNEL_MODULES_OUT)/msm-eva.ko
endif
endif
endif
