APP_PROJECT_PATH := $(call my-dir)/.. 

#project
APP_MODULES      := gnuGo-3.8
APP_OPTIM	 := release
APP_BUILD_SCRIPT := $(call my-dir)/project/Android.mk
APP_ABI :=  armeabi armeabi-v7a x86 mips x86_64 mips64 arm64-v8a
