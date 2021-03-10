Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C166333623
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Mar 2021 08:10:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F0908435F;
	Wed, 10 Mar 2021 07:10:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 38RZC_Ot8RDS; Wed, 10 Mar 2021 07:10:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C0EF08434F;
	Wed, 10 Mar 2021 07:10:44 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 18C581BF47E
 for <intel-wired-lan@osuosl.org>; Wed, 10 Mar 2021 07:10:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 70D236F6BA
 for <intel-wired-lan@osuosl.org>; Wed, 10 Mar 2021 07:10:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0ygufwycdR-8 for <intel-wired-lan@osuosl.org>;
 Wed, 10 Mar 2021 07:10:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7610D6F48A
 for <intel-wired-lan@osuosl.org>; Wed, 10 Mar 2021 07:10:35 +0000 (UTC)
IronPort-SDR: 4crA8CzxhDB7h3JjpnkJWm2/T3XNou+sB5bt68eNytRKA+UOcBNsGEKnpT5YLUdfyOWTwAVde3
 t0wFyJH2hNnQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9917"; a="208203839"
X-IronPort-AV: E=Sophos;i="5.81,237,1610438400"; d="scan'208";a="208203839"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2021 23:10:34 -0800
IronPort-SDR: CxdmLhZ5skD6+SrII05SHf8kiCJCyMesv5xpgoZZ5+VtyD32PYdxXjz2kWE5l0g8Enh0lEt3pR
 Y3owRJmtpwVA==
X-IronPort-AV: E=Sophos;i="5.81,237,1610438400"; d="scan'208";a="410070530"
Received: from coffy.sc.intel.com ([10.3.79.166])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2021 23:10:33 -0800
From: Jithu Joseph <jithu.joseph@intel.com>
To: intel-wired-lan@osuosl.org
Date: Tue,  9 Mar 2021 23:13:14 -0800
Message-Id: <20210310071322.15425-1-jithu.joseph@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH v7 0/8] igc: Add XDP support
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi all,

This is the seventh version of this series which adds XDP support
to igc driver.

This series has to be applied after the patch below:
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20210310064256.15299-1-jithu.joseph@intel.com/

Changes in v7
  - First patch from the v6 series "igc: Fix igc_ptp_rx_pktstamp()"
    was separated from this v7 series as the maintainer wants that one patch
    to take a different upstream path
  - Minor reabasing change in igc_ptp_rx_pktstamp() touched by the patch
    "igc: Refactor Rx timestamp handling", due to a sparse warning
    fix in the separated patch
  - Added Tested-by: Dvora Fuxbrumer

v6 is here
   https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20210210215848.24514-1-vedang.patel@intel.com/

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
Jithu

Andre Guedes (8):
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
 drivers/net/ethernet/intel/igc/igc_ptp.c  |  25 +-
 drivers/net/ethernet/intel/igc/igc_xdp.c  |  60 +++
 drivers/net/ethernet/intel/igc/igc_xdp.h  |  13 +
 6 files changed, 496 insertions(+), 80 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/igc/igc_xdp.c
 create mode 100644 drivers/net/ethernet/intel/igc/igc_xdp.h

-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
