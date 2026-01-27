#!/bin/sh

set -eu

ARCH=$(uname -m)

echo "Installing package dependencies..."
echo "---------------------------------------------------------------"
# pacman -Syu --noconfirm PACKAGESHERE

echo "Installing debloated packages..."
echo "---------------------------------------------------------------"
get-debloated-pkgs --add-common

# Comment this out if you need an AUR package
TARGET_V3_CPU=1 make-aur-package rmg

# If the application needs to be manually built that has to be done down here
