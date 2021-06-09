Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 070E43A1B45
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Jun 2021 18:52:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 63E4583D18;
	Wed,  9 Jun 2021 16:52:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mxpwTTVA8iph; Wed,  9 Jun 2021 16:52:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3FAB883CF5;
	Wed,  9 Jun 2021 16:52:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 048A91BF29D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 16:51:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9DA724053A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 16:51:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qV1-32b-b-Ni for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Jun 2021 16:51:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D741740535
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 16:51:49 +0000 (UTC)
IronPort-SDR: kx8eHx/2vUKppPGxrGrH35XrtL8cFskZA3nQatgZCs7guGODcb9C3hcjjBg2PvbxBbD7eyGIbz
 qrlSNd7r6UlQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="290743478"
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="290743478"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 09:51:47 -0700
IronPort-SDR: wRjBfprY1W9ax9Bdj3QyFOoV4jT/Dfjfh+pkvot1xBLLHEGXbDc3jLPPYfAkgJpgRbxHZTVGQ+
 V7rO+f1bicqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="638054832"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by fmsmga005.fm.intel.com with ESMTP; 09 Jun 2021 09:51:47 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Jun 2021 09:39:45 -0700
Message-Id: <20210609163953.52440-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 0/8] ice: implement PTP clock for E810
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
---
v2:
- Reduce usage of ice_status
- Squash in fix up patches [1] [2]

[1]https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20210526202313.3354027-1-jacob.e.keller@intel.com/
[2]https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20210602173134.4167891-1-jacob.e.keller@intel.com/

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
 drivers/net/ethernet/intel/ice/ice_common.c   |  244 ++++
 drivers/net/ethernet/intel/ice/ice_common.h   |   10 +
 drivers/net/ethernet/intel/ice/ice_controlq.c |   62 +
 drivers/net/ethernet/intel/ice/ice_controlq.h |    2 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |   27 +-
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   69 +
 drivers/net/ethernet/intel/ice/ice_lib.c      |   20 +-
 drivers/net/ethernet/intel/ice/ice_lib.h      |    3 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |   95 ++
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 1270 +++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp.h      |  160 +++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  655 +++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |   79 +
 drivers/net/ethernet/intel/ice/ice_sbq_cmd.h  |   92 ++
 drivers/net/ethernet/intel/ice/ice_txrx.c     |   37 +
 drivers/net/ethernet/intel/ice/ice_txrx.h     |    5 +
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |    3 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   62 +
 include/linux/kernel.h                        |   12 +
 24 files changed, 2965 insertions(+), 7 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_ptp.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_ptp.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_ptp_hw.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_ptp_hw.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_sbq_cmd.h

-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
