#!/bin/sh

set -eu

ARCH=$(uname -m)

echo "Installing package dependencies..."
echo "---------------------------------------------------------------"
# pacman -Syu --noconfirm PACKAGESHERE

echo "Installing debloated packages..."
echo "---------------------------------------------------------------"
get-debloated-pkgs --add-common

# build with x86_64_v3
if [ "$ARCH" = 'x86_64' ]; then
	sed -i -e 's|march=x86-64|march=x86-64-v3|g' /etc/makepkg.conf
	cat /etc/makepkg.conf
fi

# Comment this out if you need an AUR package
make-aur-package rmg

# If the application needs to be manually built that has to be done down here
