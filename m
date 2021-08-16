Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB433EDAA7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Aug 2021 18:17:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EFC2740426;
	Mon, 16 Aug 2021 16:17:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j6qRRFa7Y_It; Mon, 16 Aug 2021 16:17:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F4C540434;
	Mon, 16 Aug 2021 16:17:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ABC221BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 16:17:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 92EE16078B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 16:17:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QydDFPv-BL_u for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Aug 2021 16:17:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 763F260625
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 16:17:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="214041169"
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; d="scan'208";a="214041169"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 09:17:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; d="scan'208";a="487523670"
Received: from amlin-018-053.igk.intel.com ([10.102.18.53])
 by fmsmga008.fm.intel.com with ESMTP; 16 Aug 2021 09:17:31 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kselftest@vger.kernel.org
Date: Mon, 16 Aug 2021 18:07:10 +0200
Message-Id: <20210816160717.31285-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC net-next 0/7] Add basic SyncE interfaces
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
Cc: cong.wang@bytedance.com, arnd@arndb.de, gustavoars@kernel.org,
 richardcochran@gmail.com, nikolay@nvidia.com, colin.king@canonical.com,
 kuba@kernel.org, shuah@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SyncE - Synchronous Ethernet is defined in ITU-T Rec. G.8264
(https://www.itu.int/rec/T-REC-G.8264)

SyncE allows synchronizing the frequency of ethernet PHY clock signal
(the frequency used to send the data onto wire), to some reference
clock signal.

Multiple reference clock sources can be available. PHY ports recover
the frequency at which the transmitter sent the data on the RX side.
Alternatively, we can use external sources like 1PPS GPS, etc.

This patch series introduces basic interfaces for communication
with a SyncE capable device.

The first part of the interface allows acquiring the synchronization
state of DPLL (Digital Phase Locked Loop). DPLL LOCKED state means
that the frequency generated by it is locked to the input frequency.
As a result, PHYs connected to it are synchronized to the chosen input
frequency signal.

The second part can be used to select the port from which the clock
gets recovered. Each PHY chip can have multiple pins on which the
recovered clock can be propagated. For example, a SyncE-capable PHY
can recover the carrier frequency of the first port, divide it
internally, and output it as a reference clock on PIN 0.
When such a signal is enabled, the DPLL can LOCK to the frequency
recovered on PIN 0.

Next steps:
 - Add CONFIG_SYNCE definition into Kconfig
 - Add more configuration interfaces. Aiming at devlink, since this
   would be device-wide configuration

Arkadiusz Kubalewski (7):
  ptp: Add interface for acquiring DPLL state
  selftests/ptp: Add usage of PTP_DPLL_GETSTATE ioctl in testptp
  ice: add get_dpll_state ptp interface usage
  net: add ioctl interface for recover reference clock on netdev
  selftests/net: Add test app for SIOC{S|G}SYNCE
  ice: add SIOC{S|G}SYNCE interface usage to recover reference signal
  ice: add sysfs interface to configure PHY recovered reference signal

 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  62 +++++
 drivers/net/ethernet/intel/ice/ice_common.c   | 101 ++++++++
 drivers/net/ethernet/intel/ice/ice_common.h   |   9 +
 drivers/net/ethernet/intel/ice/ice_main.c     |   4 +
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 234 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_ptp.h      |   9 +
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |   6 +
 drivers/ptp/ptp_chardev.c                     |  15 ++
 drivers/ptp/ptp_clockmatrix.h                 |  12 -
 drivers/ptp/ptp_private.h                     |   2 +
 drivers/ptp/ptp_sysfs.c                       |  48 ++++
 include/linux/ptp_clock_kernel.h              |   9 +
 include/uapi/linux/net_synce.h                |  21 ++
 include/uapi/linux/ptp_clock.h                |  27 ++
 include/uapi/linux/sockios.h                  |   4 +
 net/core/dev_ioctl.c                          |   6 +-
 tools/testing/selftests/net/Makefile          |   1 +
 tools/testing/selftests/net/phy_ref_clk.c     | 138 +++++++++++
 tools/testing/selftests/ptp/testptp.c         |  27 +-
 19 files changed, 720 insertions(+), 15 deletions(-)
 create mode 100644 include/uapi/linux/net_synce.h
 create mode 100644 tools/testing/selftests/net/phy_ref_clk.c


base-commit: aba1e4adb54e020d3ca85a4df3ef0f8febe87548
-- 
2.24.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
