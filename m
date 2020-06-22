Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB0F203085
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2020 09:20:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6F06B888E4;
	Mon, 22 Jun 2020 07:20:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A1cm2hSG6BWe; Mon, 22 Jun 2020 07:20:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 571F288907;
	Mon, 22 Jun 2020 07:20:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8797C1BF314
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 07:20:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 83981866F2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 07:20:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 74PjbKKimrOC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2020 07:20:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A5BCE866AD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 07:20:19 +0000 (UTC)
IronPort-SDR: QEilwIHr3nri1/dmWpLtQr1gdzMj1ZNxZB2Xbtm19db0a0IfWnD4Kch+qg1+lcdqct9ru6xY53
 UvXmtBWFbbCA==
X-IronPort-AV: E=McAfee;i="6000,8403,9659"; a="161770997"
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; d="scan'208";a="161770997"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 00:20:19 -0700
IronPort-SDR: d9XvCAlOd2a3uy7nbHZNxebv+h2GzyR1sDS2Vsakplftn3rQuFhuqlRRZ6A0TJdjQmyUJdqdq8
 Ceex/g5YdqwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; d="scan'208";a="318702832"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.160.241])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Jun 2020 00:20:17 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 22 Jun 2020 10:20:17 +0300
Message-Id: <20200622072017.31186-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 1/2] igc: Fix double definition
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

Accordance to the i225 specification address 0x4118 used for
Host Good Packet Transmitted Count and defined as read on clear.
IGC_ICTXQEC not in use and could be removed.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_mac.c  | 1 -
 drivers/net/ethernet/intel/igc/igc_main.c | 1 -
 drivers/net/ethernet/intel/igc/igc_regs.h | 2 --
 3 files changed, 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ethernet/intel/igc/igc_mac.c
index b47e7b0a6398..2d9ca3e1bdde 100644
--- a/drivers/net/ethernet/intel/igc/igc_mac.c
+++ b/drivers/net/ethernet/intel/igc/igc_mac.c
@@ -301,7 +301,6 @@ void igc_clear_hw_cntrs_base(struct igc_hw *hw)
 	rd32(IGC_ICRXATC);
 	rd32(IGC_ICTXPTC);
 	rd32(IGC_ICTXATC);
-	rd32(IGC_ICTXQEC);
 	rd32(IGC_ICTXQMTC);
 	rd32(IGC_ICRXDMTC);
 
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 83c94fa58c40..59d75b6e7d64 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3736,7 +3736,6 @@ void igc_update_stats(struct igc_adapter *adapter)
 	adapter->stats.icrxatc += rd32(IGC_ICRXATC);
 	adapter->stats.ictxptc += rd32(IGC_ICTXPTC);
 	adapter->stats.ictxatc += rd32(IGC_ICTXATC);
-	adapter->stats.ictxqec += rd32(IGC_ICTXQEC);
 	adapter->stats.ictxqmtc += rd32(IGC_ICTXQMTC);
 	adapter->stats.icrxdmtc += rd32(IGC_ICRXDMTC);
 
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index 1c46cec5a799..d6ed1b1ebcbc 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -63,7 +63,6 @@
 #define IGC_ICRXATC		0x04108  /* Rx Absolute Timer Expire Count */
 #define IGC_ICTXPTC		0x0410C  /* Tx Packet Timer Expire Count */
 #define IGC_ICTXATC		0x04110  /* Tx Absolute Timer Expire Count */
-#define IGC_ICTXQEC		0x04118  /* Tx Queue Empty Count */
 #define IGC_ICTXQMTC		0x0411C  /* Tx Queue Min Threshold Count */
 #define IGC_ICRXDMTC		0x04120  /* Rx Descriptor Min Threshold Count */
 #define IGC_ICRXOC		0x04124  /* Receiver Overrun Count */
@@ -184,7 +183,6 @@
 #define IGC_IAC		0x04100  /* Interrupt Assertion Count */
 #define IGC_ICTXPTC	0x0410C  /* Interrupt Cause Tx Pkt Timer Expire Count */
 #define IGC_ICTXATC	0x04110  /* Interrupt Cause Tx Abs Timer Expire Count */
-#define IGC_ICTXQEC	0x04118  /* Interrupt Cause Tx Queue Empty Count */
 #define IGC_ICTXQMTC	0x0411C  /* Interrupt Cause Tx Queue Min Thresh Count */
 #define IGC_RPTHC	0x04104  /* Rx Packets To Host */
 #define IGC_TLPIC	0x04148  /* EEE Tx LPI Count */
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
