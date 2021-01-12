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
  chromeos-base/device-appid
  chromeos-base/chromeos-bsp-surface-go2
  chromeos-base/auto-expand-partition
  virtual/fydemina
  chromeos-base/flash_player
  sys-kernel/linux-firmware-ath10k
"

DEPEND="${RDEPEND}"
