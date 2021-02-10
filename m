Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 973A4317306
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Feb 2021 23:15:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1511287529;
	Wed, 10 Feb 2021 22:15:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iPfELoQeh8so; Wed, 10 Feb 2021 22:14:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6AAE88751D;
	Wed, 10 Feb 2021 22:14:58 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B02D91BF3D7
 for <intel-wired-lan@osuosl.org>; Wed, 10 Feb 2021 22:14:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A991E8751D
 for <intel-wired-lan@osuosl.org>; Wed, 10 Feb 2021 22:14:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 68qLDMIpROCC for <intel-wired-lan@osuosl.org>;
 Wed, 10 Feb 2021 22:14:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D1B3187519
 for <intel-wired-lan@osuosl.org>; Wed, 10 Feb 2021 22:14:55 +0000 (UTC)
IronPort-SDR: 4yrZlyMNKt1ips/3mzF2yr2uyizuRfDm3i8KR0peTeW2WplD5E5LhCBHXfD4BQvangN2s6J5Rn
 uA5j09PYavyQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="169835574"
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="169835574"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 14:14:54 -0800
IronPort-SDR: UPkl84ND9au9hMZ4OcvCl7H++dMIy2I1JZwLw58ciNxLiZFg7eDfMIPfkY+ru0nYxDHgJ2Rov0
 GVuXBaG7EbXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="588110661"
Received: from otc-cfl-ubuntu-15.jf.intel.com ([10.54.31.57])
 by fmsmga005.fm.intel.com with ESMTP; 10 Feb 2021 14:14:54 -0800
From: Vedang Patel <vedang.patel@intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed, 10 Feb 2021 13:58:39 -0800
Message-Id: <20210210215848.24514-1-vedang.patel@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net-next v6 0/9] igc: Add XDP support
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
Cc: jithu.joseph@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi all,

This is the sixth version of this series which adds XDP support
to igc driver.

Changes from v5 are:

    - Avoid premature Rx buffer re-use in XDP_REDIRECT action by storing
      page count prior to invoking xdp_do_redirect. This is similar to
      what has been done for other Intel drivers.

v5 is here:

    https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20210209024243.23406-1-vedang.patel@intel.com/

v4 is here:

    https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20201104031210.27772-1-andre.guedes@intel.com/

v3 is here:

    https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20201030210351.46482-1-andre.guedes@intel.com/

v2 is here:

    https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20201028201943.93147-1-andre.guedes@intel.com/

v1 is here:

    https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20201009025349.4037-1-andre.guedes@intel.com/

Thanks,
Vedang


Andre Guedes (9):
  igc: Fix igc_ptp_rx_pktstamp()
  igc: Remove unused argument from igc_tx_cmd_type()
  igc: Introduce igc_rx_buffer_flip() helper
  igc: Introduce igc_get_rx_frame_truesize() helper
  igc: Refactor Rx timestamp handling
  igc: Add set/clear large buffer helpers
  igc: Add initial XDP support
  igc: Add support for XDP_TX action
  igc: Add support for XDP_REDIRECT action

 drivers/net/ethernet/intel/igc/Makefile   |   2 +-
 drivers/net/ethernet/intel/igc/igc.h      |  18 +-
 drivers/net/ethernet/intel/igc/igc_main.c | 458 +++++++++++++++++++---
 drivers/net/ethernet/intel/igc/igc_ptp.c  |  87 ++--
 drivers/net/ethernet/intel/igc/igc_xdp.c  |  60 +++
 drivers/net/ethernet/intel/igc/igc_xdp.h  |  13 +
 6 files changed, 531 insertions(+), 107 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/igc/igc_xdp.c
 create mode 100644 drivers/net/ethernet/intel/igc/igc_xdp.h

-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
