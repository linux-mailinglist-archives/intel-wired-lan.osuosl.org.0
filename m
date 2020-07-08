Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B91921807A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jul 2020 09:09:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EFFC7894E1;
	Wed,  8 Jul 2020 07:09:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vs9HzEn50C+1; Wed,  8 Jul 2020 07:09:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F3DD489505;
	Wed,  8 Jul 2020 07:09:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A5DA1BF5F4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 07:09:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 03F6586B33
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 07:09:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JQSE36ADrh7q for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2020 07:09:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1B98586F8D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 07:09:05 +0000 (UTC)
IronPort-SDR: KFD0d0JuYTG6Nyn/V/O+Zu39HF7cR9YJcJYfYC3NQLBj1A4yErpABAcejk3A2hTWQsn9FTLlC/
 drQELVa9fZiA==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="212694606"
X-IronPort-AV: E=Sophos;i="5.75,326,1589266800"; d="scan'208";a="212694606"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2020 00:08:59 -0700
IronPort-SDR: 67lLR0/uFblFpZ61h+g+8VqXyM/E272JYuqOVKg9pCHuYUHPu6s1+qnnnhGapcSlHNiUyWQ0S4
 q/sw9hKAi3HQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,326,1589266800"; d="scan'208";a="427741447"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.160.241])
 by orsmga004.jf.intel.com with ESMTP; 08 Jul 2020 00:08:58 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  8 Jul 2020 10:08:58 +0300
Message-Id: <20200708070858.6424-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v2 1/1] igc: Clean up the _hw_stats
 structure
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

Remove icrxptc, icrxatc, ictxptc, ictxatc, ictxqec, ictxqmtc,
icrxdmtc, icrxoc, cbrdpc, cbrmpc and htcbdpc fields from
the _hw_stats structure. Accordance to the i225 device
specification these fields not in use.
This patch come to clean up the driver code.

v1 -> v2:
minor complete

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_hw.h   | 12 ------------
 drivers/net/ethernet/intel/igc/igc_mac.c  |  3 ---
 drivers/net/ethernet/intel/igc/igc_main.c |  2 --
 drivers/net/ethernet/intel/igc/igc_regs.h |  2 --
 4 files changed, 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ethernet/intel/igc/igc_hw.h
index 24412a6c2289..b9fe51b91c47 100644
--- a/drivers/net/ethernet/intel/igc/igc_hw.h
+++ b/drivers/net/ethernet/intel/igc/igc_hw.h
@@ -268,21 +268,9 @@ struct igc_hw_stats {
 	u64 tsctc;
 	u64 tsctfc;
 	u64 iac;
-	u64 icrxptc;
-	u64 icrxatc;
-	u64 ictxptc;
-	u64 ictxatc;
-	u64 ictxqec;
-	u64 ictxqmtc;
-	u64 icrxdmtc;
-	u64 icrxoc;
-	u64 cbtmpc;
 	u64 htdpmc;
-	u64 cbrdpc;
-	u64 cbrmpc;
 	u64 rpthc;
 	u64 hgptc;
-	u64 htcbdpc;
 	u64 hgorc;
 	u64 hgotc;
 	u64 lenerrs;
diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ethernet/intel/igc/igc_mac.c
index 02bbb8ac4f68..674b8ad21fea 100644
--- a/drivers/net/ethernet/intel/igc/igc_mac.c
+++ b/drivers/net/ethernet/intel/igc/igc_mac.c
@@ -296,9 +296,6 @@ void igc_clear_hw_cntrs_base(struct igc_hw *hw)
 
 	rd32(IGC_IAC);
 
-	rd32(IGC_ICTXPTC);
-	rd32(IGC_ICTXATC);
-
 	rd32(IGC_RPTHC);
 	rd32(IGC_TLPIC);
 	rd32(IGC_RLPIC);
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index db3cbb5de128..ab5b302d6655 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3731,8 +3731,6 @@ void igc_update_stats(struct igc_adapter *adapter)
 	adapter->stats.tsctc += rd32(IGC_TSCTC);
 
 	adapter->stats.iac += rd32(IGC_IAC);
-	adapter->stats.ictxptc += rd32(IGC_ICTXPTC);
-	adapter->stats.ictxatc += rd32(IGC_ICTXATC);
 
 	/* Fill out the OS statistics structure */
 	net_stats->multicast = adapter->stats.mprc;
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index 5ff3316717c7..b52dd9d737e8 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -172,8 +172,6 @@
 #define IGC_BPTC	0x040F4  /* Broadcast Packets Tx Count - R/clr */
 #define IGC_TSCTC	0x040F8  /* TCP Segmentation Context Tx - R/clr */
 #define IGC_IAC		0x04100  /* Interrupt Assertion Count */
-#define IGC_ICTXPTC	0x0410C  /* Interrupt Cause Tx Pkt Timer Expire Count */
-#define IGC_ICTXATC	0x04110  /* Interrupt Cause Tx Abs Timer Expire Count */
 #define IGC_RPTHC	0x04104  /* Rx Packets To Host */
 #define IGC_TLPIC	0x04148  /* EEE Tx LPI Count */
 #define IGC_RLPIC	0x0414C  /* EEE Rx LPI Count */
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
