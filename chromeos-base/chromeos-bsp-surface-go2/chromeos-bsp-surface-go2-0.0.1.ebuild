# Copyright (c) 2018 The Fyde OS Authors. All rights reserved.
# Distributed under the terms of the BSD

EAPI="5"

DESCRIPTION="empty project"
HOMEPAGE="http://fydeos.com"

LICENSE="BSD-Google"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND="
    chromeos-base/chromeos-accelerometer-init
	sys-kernel/linux-firmware-intel-i915
"

DEPEND="${RDEPEND}"

S=${WORKDIR}

src_install() {
  insinto /etc/init
  doins ${FILESDIR}/accelmeter/cros-ec-accel.conf

  insinto /lib/udev/rules.d
  doins ${FILESDIR}/accelmeter/99-cros-ec-accel.rules

  insinto /lib/firmware
  doins -r ${FILESDIR}/firmware/*

  insinto /usr/share/power_manager
  doins -r ${FILESDIR}/board_specific
}
