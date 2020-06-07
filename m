Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A341F0A8E
	for <lists+intel-wired-lan@lfdr.de>; Sun,  7 Jun 2020 10:51:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 762A781BDC;
	Sun,  7 Jun 2020 08:51:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 62nzNeA8rKKw; Sun,  7 Jun 2020 08:51:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E578987ED9;
	Sun,  7 Jun 2020 08:51:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 889301BF377
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Jun 2020 08:51:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 804A086969
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Jun 2020 08:51:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QKmbMGiNB6KJ for <intel-wired-lan@lists.osuosl.org>;
 Sun,  7 Jun 2020 08:51:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2854486959
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Jun 2020 08:51:30 +0000 (UTC)
IronPort-SDR: cJYn7IdJEyvcfdAQPCGmakzdGtEdptjkZlm0TbSGKJBu6waC9mYTnYHGx+S/SKTtCxVKeqD3xc
 4zp+uIBljsZA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2020 01:51:27 -0700
IronPort-SDR: ehv5ARXcWd1PksiZLrwhwtWsmgPXXsZ9o+PYQdVcsVLAzdhSILJ4lRRQ65qpjeLfE4WSpklQP4
 7ii6B0s4DrkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,483,1583222400"; d="scan'208";a="348878449"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.160.241])
 by orsmga001.jf.intel.com with ESMTP; 07 Jun 2020 01:51:26 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun,  7 Jun 2020 11:51:27 +0300
Message-Id: <20200607085127.29281-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove TCP segmentation TX
 fail counter
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

TCP segmentation TX context fail counter is not
applicable for i225 devices.
This patch comes to clean up this counter.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_mac.c  | 1 -
 drivers/net/ethernet/intel/igc/igc_main.c | 1 -
 drivers/net/ethernet/intel/igc/igc_regs.h | 1 -
 3 files changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ethernet/intel/igc/igc_mac.c
index f3f7717b6233..9a5e44ef45f4 100644
--- a/drivers/net/ethernet/intel/igc/igc_mac.c
+++ b/drivers/net/ethernet/intel/igc/igc_mac.c
@@ -289,7 +289,6 @@ void igc_clear_hw_cntrs_base(struct igc_hw *hw)
 	rd32(IGC_TNCRS);
 	rd32(IGC_HTDPMC);
 	rd32(IGC_TSCTC);
-	rd32(IGC_TSCTFC);
 
 	rd32(IGC_MGTPRC);
 	rd32(IGC_MGTPDC);
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index b92e7e20ce78..5d70751e8ab3 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3740,7 +3740,6 @@ void igc_update_stats(struct igc_adapter *adapter)
 	adapter->stats.algnerrc += rd32(IGC_ALGNERRC);
 
 	adapter->stats.tsctc += rd32(IGC_TSCTC);
-	adapter->stats.tsctfc += rd32(IGC_TSCTFC);
 
 	adapter->stats.iac += rd32(IGC_IAC);
 	adapter->stats.icrxoc += rd32(IGC_ICRXOC);
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index eb3e8e70501d..1c46cec5a799 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -181,7 +181,6 @@
 #define IGC_MPTC	0x040F0  /* Multicast Packets Tx Count - R/clr */
 #define IGC_BPTC	0x040F4  /* Broadcast Packets Tx Count - R/clr */
 #define IGC_TSCTC	0x040F8  /* TCP Segmentation Context Tx - R/clr */
-#define IGC_TSCTFC	0x040FC  /* TCP Segmentation Context Tx Fail - R/clr */
 #define IGC_IAC		0x04100  /* Interrupt Assertion Count */
 #define IGC_ICTXPTC	0x0410C  /* Interrupt Cause Tx Pkt Timer Expire Count */
 #define IGC_ICTXATC	0x04110  /* Interrupt Cause Tx Abs Timer Expire Count */
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
