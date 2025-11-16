#!/bin/sh

set -eu

ARCH=$(uname -m)
VERSION=$(pacman -Q rmg | awk '{print $2; exit}') # example command to get version of application here
export ARCH VERSION
export OUTPATH=./dist
export ADD_HOOKS="self-updater.bg.hook"
export UPINFO="gh-releases-zsync|${GITHUB_REPOSITORY%/*}|${GITHUB_REPOSITORY#*/}|latest|*$ARCH.AppImage.zsync"
export ICON=/usr/share/icons/hicolor/scalable/apps/com.github.Rosalie241.RMG.svg
export DESKTOP=/usr/share/applications/com.github.Rosalie241.RMG.desktop
export DEPLOY_OPENGL=1
export DEPLOY_VULKAN=1

# Deploy dependencies
quick-sharun \
  /usr/bin/RMG       \
  /usr/lib/RMG       \
  /usr/lib/RMG/*     \
  /usr/lib/RMG/*/*   \
  /usr/lib/RMG/*/*/*

# Additional changes can be done in between here

# Turn AppDir into AppImage
quick-sharun --make-appimage
