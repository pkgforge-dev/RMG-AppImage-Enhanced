# RMG-AppImage-Enhanced 🐧

[![GitHub Downloads](https://img.shields.io/github/downloads/pkgforge-dev/RMG-AppImage-Enhanced/total?logo=github&label=GitHub%20Downloads)](https://github.com/pkgforge-dev/RMG-AppImage-Enhanced/releases/latest)
[![CI Build Status](https://github.com//pkgforge-dev/RMG-AppImage-Enhanced/actions/workflows/appimage.yml/badge.svg)](https://github.com/pkgforge-dev/RMG-AppImage-Enhanced/releases/latest)

* [Latest Stable Release](https://github.com/pkgforge-dev/RMG-AppImage-Enhanced/releases/latest)

---

**Disclaimer**

The Official RMG AppImage releases are already very good since they use sharun, this repo was made mainly for [emuze](https://github.com/bmsuseluda/emuze) using the [debloated packages](https://github.com/pkgforge-dev/archlinux-pkgs-debloated) repo to reduce the size of the AppImage to nearly half. They are also compiled targetting `x86-64-v3` for better performance. 

---

AppImage made using [sharun](https://github.com/VHSgunzo/sharun), which makes it extremely easy to turn any binary into a portable package without using containers or similar tricks.

**This AppImage bundles everything and should work on any linux distro, even on musl based ones.**

It is possible that this appimage may fail to work with appimagelauncher, I recommend these alternatives instead: 

* [AM](https://github.com/ivan-hc/AM) `am -i rmg-enhanced` or `appman -i rmg-enhanced`

* [dbin](https://github.com/xplshn/dbin) `dbin install rmg-enhanced.appimage`

* [soar](https://github.com/pkgforge/soar) `soar install rmg-enhanced`

This AppImage can work **without FUSE** at all thanks to the [uruntime](https://github.com/VHSgunzo/uruntime)

<details>
  <summary><b><i>raison d'être</i></b></summary>
    <img src="https://github.com/user-attachments/assets/d40067a6-37d2-4784-927c-2c7f7cc6104b" alt="Inspiration Image">
  </a>
</details>

---

More at: [AnyLinux-AppImages](https://pkgforge-dev.github.io/Anylinux-AppImages/) 
