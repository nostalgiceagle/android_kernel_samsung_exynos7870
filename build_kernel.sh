#!/bin/bash

export ARCH=arm64
export CROSS_COMPILE=$(pwd)/toolchain/bin/aarch64-linux-android-
export ANDROID_MAJOR_VERSION=q
export ANDROID_PLATFORM_VERSION=10

make O=./out $1
make O=./out -j64
