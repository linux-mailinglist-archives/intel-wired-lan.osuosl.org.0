Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0285A20CF50
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Jun 2020 16:59:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8EB39886BE;
	Mon, 29 Jun 2020 14:59:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yz+ZnuVUXQnw; Mon, 29 Jun 2020 14:59:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A27408869C;
	Mon, 29 Jun 2020 14:59:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CDB1A1BF20D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 14:59:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A8BA020425
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 14:59:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xffYnRNXQKvp for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Jun 2020 14:59:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id 6F66020410
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 14:59:46 +0000 (UTC)
IronPort-SDR: QcxkjgO5iaTwKihC0LJc2MrFNOZFtyqofIT9lhU2YEiIZbDRvl6E/qzKAuDPRsT7G9l9DfHm1c
 VBkng87oWicQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="211059488"
X-IronPort-AV: E=Sophos;i="5.75,295,1589266800"; d="scan'208";a="211059488"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2020 07:59:45 -0700
IronPort-SDR: lwQXcUSXwFdPwnz+XIbY8BDA3/JCOdGPxPoq5WspI7naWyblb6vyD+TPSjfwhayMv11NQgo5zL
 cD3jQIz8OwJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,295,1589266800"; d="scan'208";a="424845742"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.160.241])
 by orsmga004.jf.intel.com with ESMTP; 29 Jun 2020 07:59:44 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 29 Jun 2020 17:59:44 +0300
Message-Id: <20200629145944.34867-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Fix registers definition
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

Fix double definition and remove unneeded registers.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_mac.c  | 4 ----
 drivers/net/ethernet/intel/igc/igc_main.c | 4 ----
 drivers/net/ethernet/intel/igc/igc_regs.h | 8 --------
 3 files changed, 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ethernet/intel/igc/igc_mac.c
index f85c8bcd7f70..02bbb8ac4f68 100644
--- a/drivers/net/ethernet/intel/igc/igc_mac.c
+++ b/drivers/net/ethernet/intel/igc/igc_mac.c
@@ -295,13 +295,9 @@ void igc_clear_hw_cntrs_base(struct igc_hw *hw)
 	rd32(IGC_MGTPTC);
 
 	rd32(IGC_IAC);
-	rd32(IGC_ICRXOC);
 
-	rd32(IGC_ICRXPTC);
-	rd32(IGC_ICRXATC);
 	rd32(IGC_ICTXPTC);
 	rd32(IGC_ICTXATC);
-	rd32(IGC_ICRXDMTC);
 
 	rd32(IGC_RPTHC);
 	rd32(IGC_TLPIC);
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index ca6fa7c3d0a0..db3cbb5de128 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3731,12 +3731,8 @@ void igc_update_stats(struct igc_adapter *adapter)
 	adapter->stats.tsctc += rd32(IGC_TSCTC);
 
 	adapter->stats.iac += rd32(IGC_IAC);
-	adapter->stats.icrxoc += rd32(IGC_ICRXOC);
-	adapter->stats.icrxptc += rd32(IGC_ICRXPTC);
-	adapter->stats.icrxatc += rd32(IGC_ICRXATC);
 	adapter->stats.ictxptc += rd32(IGC_ICTXPTC);
 	adapter->stats.ictxatc += rd32(IGC_ICTXATC);
-	adapter->stats.icrxdmtc += rd32(IGC_ICRXDMTC);
 
 	/* Fill out the OS statistics structure */
 	net_stats->multicast = adapter->stats.mprc;
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index 23554d39ad18..5ff3316717c7 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -58,14 +58,6 @@
 #define IGC_IVAR_MISC		0x01740  /* IVAR for "other" causes - RW */
 #define IGC_GPIE		0x01514  /* General Purpose Intr Enable - RW */
 
-/* Interrupt Cause */
-#define IGC_ICRXPTC		0x04104  /* Rx Packet Timer Expire Count */
-#define IGC_ICRXATC		0x04108  /* Rx Absolute Timer Expire Count */
-#define IGC_ICTXPTC		0x0410C  /* Tx Packet Timer Expire Count */
-#define IGC_ICTXATC		0x04110  /* Tx Absolute Timer Expire Count */
-#define IGC_ICRXDMTC		0x04120  /* Rx Descriptor Min Threshold Count */
-#define IGC_ICRXOC		0x04124  /* Receiver Overrun Count */
-
 /* MSI-X Table Register Descriptions */
 #define IGC_PBACL		0x05B68  /* MSIx PBA Clear - R/W 1 to clear */
 
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
