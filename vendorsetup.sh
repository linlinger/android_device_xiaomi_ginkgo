
#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
# 关于橙狐变量详见 OrangeFox_10/fox_10.0/vendor/recovery/orangefox_build_vars.txt

	export LC_ALL="C"
	export ALLOW_MISSING_DEPENDENCIES=true

	echo -e "\x1b[96mRedmi Note8/8T 开始添加OrangeFox Vars...\x1b[m"
	## 构建信息
	# 设置显示在关于页面里的维护人员名称
	export OF_MAINTAINER=linlinger
	# 设置版本号为日期
	export FOX_VERSION=$(date +%y.%m.%d)

	## 添加功能
	# 使用完整版ps命令
	export FOX_REPLACE_BUSYBOX_PS=1
	# 使用完整版getprop命令
	export FOX_REPLACE_TOOLBOX_GETPROP=1
	# 支持tar命令
	export FOX_USE_TAR_BINARY=1
	# 支持sed命令
	export FOX_USE_SED_BINARY=1
	# 使用bash代替sh和ash
	export FOX_USE_BASH_SHELL=1
	export FOX_ASH_IS_BASH=1
	# 使用完整版grep命令
	export FOX_USE_GREP_BINARY=1
	# 支持lzma, xz命令
	export FOX_USE_XZ_UTILS=1
	# 使用橙狐编译的NANO编辑器
	export FOX_USE_NANO_EDITOR=1
	# 添加phhusson's lptools工具
	export OF_ENABLE_LPTOOLS=1
	# 移除 AromaFM
	export FOX_DELETE_AROMAFM="1"
	# 添加 备选设备
	export TARGET_DEVICE_ALT="willow"

	export OF_FORCE_MAGISKBOOT_BOOT_PATCH_MIUI=1
	export OF_USE_MAGISKBOOT=1
	export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
	export OF_USE_NEW_MAGISKBOOT=1
	export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
	export OF_DONT_PATCH_ENCRYPTED_DEVICE=1

	export OF_FBE_METADATA_MOUNT_IGNORE=1
	export OF_CHECK_OVERWRITE_ATTEMPTS=1
	export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES=1
	export OF_SKIP_MULTIUSER_FOLDERS_BACKUP=1
	export OF_OTA_BACKUP_STOCK_BOOT_IMAGE=1
	export FOX_BUGGED_AOSP_ARB_WORKAROUND=1510672800
	export OF_USE_TWRP_SAR_DETECT=1
	export FOX_QUICK_BACKUP_LIST="/data;/boot;/vendor_image;/system_image"
	export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1
	export OF_PATCH_AVB20=1
	export FOX_REMOVE_AAPT=1
	export FOX_ADVANCED_SECURITY=1


	## 硬件功能设定

	## 界面显示设定
	# 设置屏幕高度，状态栏高度，状态栏左右边距
	# 由于橙狐默认屏幕比例是16：9,所以应设置屏幕高度为屏幕比例换算成n：9之后，n*120
	export OF_SCREEN_H=2340
	export OF_STATUS_H=80
	export OF_STATUS_INDENT_LEFT=48
	export OF_STATUS_INDENT_RIGHT=48
	# 禁止禁用导航栏
	export OF_ALLOW_DISABLE_NAVBAR=0
	# 提供隐藏刘海选项
	export OF_HIDE_NORCH=1
	# 时钟位置选项（左右可选）
	export OF_CLOCK_POS=1

	export OF_USE_GREEN_LED=0

	## 使刷机包兼容红米Note8/8t （不确认设备代号是否一致）
	# 使一加5和一加5t都能刷入橙狐zip卡刷包
	export TARGET_DEVICE_ALT="ginkgo"


	# 手动刷入OTA增量包时尝试进入OpenRecoveryScript模式完成更新
	export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1

	# 修复部分设备或者rom的解密问题
	export OF_FIX_DECRYPTION_ON_DATA_MEDIA=1

	echo -e "\x1b[96mRedmi Note 8/8T: 当你看到这个消息的时候，所有的OrangeFox Var已经添加完毕！\x1b[m"
