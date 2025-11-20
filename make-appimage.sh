#!/bin/sh

set -eu

ARCH=$(uname -m)
VERSION=$(pacman -Q rmg | awk '{print $2; exit}') # example command to get version of application here
export ARCH VERSION
export OUTPATH=./dist
export APPNAME=RMG
export ADD_HOOKS="self-updater.bg.hook:x86-64-v3-check.hook"
export UPINFO="gh-releases-zsync|${GITHUB_REPOSITORY%/*}|${GITHUB_REPOSITORY#*/}|latest|*$ARCH.AppImage.zsync"
export ICON=/usr/share/icons/hicolor/scalable/apps/com.github.Rosalie241.RMG.svg
export DESKTOP=/usr/share/applications/com.github.Rosalie241.RMG.desktop
export DEPLOY_OPENGL=1
export DEPLOY_VULKAN=1
# libRMG-Core.so is hardcoded to /usr/lib/RMG but the library does not contain 
# the string '/usr/lib/RMG', it contains '/usr/libL' instead with a capital L
export PATH_MAPPING_HARDCODED='libRMG-Core.so*'

# Deploy dependencies
quick-sharun /usr/bin/RMG /usr/lib/RMG

# Additional changes can be done in between here

# Turn AppDir into AppImage
quick-sharun --make-appimage
