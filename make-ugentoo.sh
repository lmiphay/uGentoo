#!/bin/bash

umask 022

PROFILE="default/linux/amd64/13.0/no-multilib"

PACKAGES="
app-arch/bzip2
app-arch/gzip
app-editors/vim
app-shells/bash
net-misc/ntp
sys-apps/busybox
sys-apps/coreutils
sys-apps/file
sys-apps/findutils
sys-apps/grep
sys-apps/iproute2
sys-apps/kbd
sys-apps/less
sys-apps/net-tools
sys-apps/openrc
sys-apps/sed
sys-apps/shadow
sys-apps/kmod
sys-fs/e2fsprogs
sys-process/procps
"
# these pull in python
PACKAGES="$PACKAGES sys-apps/portage app-portage/gentoolkit app-portage/portage-utils"

mkdir -p \
      boot \
      etc \
      dev \
      proc \
      root \
      sys \
      tmp \
      etc/portage \
      etc/portage/repos.conf \
      usr/portage

chmod a+rwt tmp
cp -L /etc/resolv.conf etc/resolv.conf
cp -L /etc/portage/repos.conf/gentoo.conf etc/portage/repos.conf

mount --rbind /usr/portage usr/portage
mount --rbind /dev dev
mount -t proc proc proc
mount --rbind /sys sys

export ROOT=${PWD}
export PORTAGE_CONFIGROOT=${PWD}

ln -snf /usr/portage/profiles/$PROFILE etc/portage/make.profile

cat >etc/portage/make.conf <<EOF
CFLAGS="-Os -pipe -fomit-frame-pointer"
CXXFLAGS="${CFLAGS}"
MAKEOPTS="-j9"
CHOST="x86_64-pc-linux-gnu"
USE="-acl bindist -gpm -iptables minimal -xattr -X"
CPU_FLAGS_X86="aes avx avx2 fma3 mmx mmxext popcnt sse sse2 sse3 sse4_1 sse4_2 ssse3"
PORTDIR="/usr/portage"
DISTDIR="${PORTDIR}/distfiles"
PKGDIR="${PORTDIR}/packages"
FEATURES="buildpkg distlocks nodoc noinfo noman preserve-libs collision-protect"
PYTHON_TARGETS="python2_7"
USE_PYTHON="2.7"
AUTOCLEAN="yes"
GENTOO_MIRRORS="http://ftp.heanet.ie/pub/gentoo/ http://mirror.bytemark.co.uk/gentoo/"
EOF

emerge --nodeps --buildpkg baselayout
emerge --buildpkg --usepkg $PACKAGES

exit 0

