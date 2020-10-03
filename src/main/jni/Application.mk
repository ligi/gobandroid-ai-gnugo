APP_PROJECT_PATH := $(call my-dir)/.. 

#project
APP_MODULES      := gnuGo-3.8
APP_OPTIM	 := release
APP_BUILD_SCRIPT := $(call my-dir)/project/Android.mk
APP_ABI :=  armeabi-v7a x86 x86_64 arm64-v8a
APP_PLATFORM := android-8

