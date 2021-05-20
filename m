Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 925A438B498
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 May 2021 18:49:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F40E940477;
	Thu, 20 May 2021 16:49:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9IGF9pqHWFaR; Thu, 20 May 2021 16:49:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6F69C40409;
	Thu, 20 May 2021 16:49:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CA6D61BF956
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 May 2021 16:49:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B49764044D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 May 2021 16:49:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vKRg1v2w7S-o for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 May 2021 16:48:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9105B403C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 May 2021 16:48:59 +0000 (UTC)
IronPort-SDR: Ju29MwhLRph7zRgTUqtqL9fGWRDk7i6NPrH83QP3Itq/8Oiu95/zWuXG2eYJtG02xVE8nLi+2y
 CMYrUKsdQikg==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="188401241"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="188401241"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2021 09:48:58 -0700
IronPort-SDR: /qSghyAbdx3R+IQyCPPpPLDUYfURstdij8wNmAf2ufTpI40sScHS9gUuv8wGZX2myK8gTyWtN8
 eYQQhrrMEITA==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="543659607"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.4])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2021 09:48:57 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Thu, 20 May 2021 09:48:42 -0700
Message-Id: <20210520164850.1884656-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.31.1.331.gb0c09ab8796f
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 0/8] ice: implement PTP clock for E810
 devices
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: Sean Lion <sean.lion@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Extend the ice driver to support basic PTP clock functionality for E810
devices.

This includes some tangential work required to setup the sideband queue and
driver shared parameters as well.

This series only supports E810-based devices. This is because other devices
based on the E822 MAC use a different and more complex PHY.

The low level device functionality is kept within ice_ptp_hw.c and is
designed to be extensible for supporting E822 devices in a future series.

This series also only supports very basic functionality including the
ptp_clock device and timestamping. Support for configuring periodic outputs
and external input timestamps will be implemented in a future series.

There are a couple of potential "what? why?" bits in this series I want to
point out:

1) the PTP hardware functionality is shared between multiple functions. This
means that the same clock registers are shared across multiple PFs. In order
to avoid contention or clashing between PFs, firmware assigns "ownership" to
one PF, while other PFs are merely "associated" with the timer. Because we
share the hardware resource, only the clock owner will allocate and register
a PTP clock device. Other PFs determine the appropriate PTP clock index to
report by using a firmware interface to read a shared parameter that is set
by the owning PF.

2) the ice driver uses its own kthread instead of using do_aux_work. This is
because the periodic and asynchronous tasks are necessary for all PFs, but
only one PF will allocate the clock.

The series is broken up into functional pieces to allow easy review.

Jacob Keller (8):
  ice: add support for sideband messages
  ice: process 1588 PTP capabilities during initialization
  ice: add support for set/get of driver-stored firmware parameters
  ice: add low level PTP clock access functions
  ice: register 1588 PTP clock device object for E810 devices
  ice: report the PTP clock index in ethtool .get_ts_info
  ice: enable receive hardware timestamping
  ice: enable transmit timestamps for E810 devices

 drivers/net/ethernet/intel/Kconfig            |    1 +
 drivers/net/ethernet/intel/ice/Makefile       |    1 +
 drivers/net/ethernet/intel/ice/ice.h          |    8 +-
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   41 +
 drivers/net/ethernet/intel/ice/ice_base.c     |   14 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |  243 ++++
 drivers/net/ethernet/intel/ice/ice_common.h   |   10 +
 drivers/net/ethernet/intel/ice/ice_controlq.c |   62 +
 drivers/net/ethernet/intel/ice/ice_controlq.h |    2 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |   27 +-
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   69 +
 drivers/net/ethernet/intel/ice/ice_lib.c      |    9 +-
 drivers/net/ethernet/intel/ice/ice_lib.h      |    3 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |   94 ++
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 1285 +++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp.h      |  160 ++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  662 +++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |   81 ++
 drivers/net/ethernet/intel/ice/ice_sbq_cmd.h  |   92 ++
 drivers/net/ethernet/intel/ice/ice_txrx.c     |   37 +
 drivers/net/ethernet/intel/ice/ice_txrx.h     |    5 +
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |    3 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   62 +
 include/linux/kernel.h                        |   12 +
 24 files changed, 2977 insertions(+), 6 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_ptp.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_ptp.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_ptp_hw.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_ptp_hw.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_sbq_cmd.h


base-commit: 2ea69bb97b73af5e086d83419403207c1f24818f
-- 
2.31.1.331.gb0c09ab8796f

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
