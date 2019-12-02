Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8026710F34E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Dec 2019 00:20:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4202685FAD;
	Mon,  2 Dec 2019 23:20:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VKV1zWct3StS; Mon,  2 Dec 2019 23:20:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0AA8A85E8C;
	Mon,  2 Dec 2019 23:20:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5C2FF1BF391
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Dec 2019 23:20:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 57D3F85E71
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Dec 2019 23:20:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FbpOy-bb4mTL for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Dec 2019 23:20:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2AEBD862A9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Dec 2019 23:20:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Dec 2019 15:19:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,270,1571727600"; d="scan'208";a="213201675"
Received: from vcostago-desk1.jf.intel.com ([10.54.70.26])
 by orsmga006.jf.intel.com with ESMTP; 02 Dec 2019 15:19:55 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  2 Dec 2019 15:19:53 -0800
Message-Id: <20191202231953.2203397-6-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191202231953.2203397-1-vinicius.gomes@intel.com>
References: <20191202231953.2203397-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue PATCH v3 5/5] igc: Use Start of
 Packet signal from PHY for timestamping
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

For better accuracy, i225 is able to do timestamping using the Start of
Packet signal from the PHY.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 2 ++
 drivers/net/ethernet/intel/igc/igc_ptp.c     | 5 ++++-
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 2ecaeddc6d3d..ed037ef01533 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -395,6 +395,7 @@
 #define IGC_TSYNCRXCTL_TYPE_EVENT_V2	0x0A
 #define IGC_TSYNCRXCTL_ENABLED		0x00000010  /* enable Rx timestamping */
 #define IGC_TSYNCRXCTL_SYSCFI		0x00000020  /* Sys clock frequency */
+#define IGC_TSYNCRXCTL_RXSYNSIG		0x00000400  /* Sample RX tstamp in PHY sop */
 
 /* Time Sync Receive Configuration */
 #define IGC_TSYNCRXCFG_PTP_V1_CTRLT_MASK	0x000000FF
@@ -418,6 +419,7 @@
 #define IGC_TSYNCTXCTL_SYNC_COMP_ERR		0x20000000  /* sync err */
 #define IGC_TSYNCTXCTL_SYNC_COMP		0x40000000  /* sync complete */
 #define IGC_TSYNCTXCTL_START_SYNC		0x80000000  /* initiate sync */
+#define IGC_TSYNCTXCTL_TXSYNSIG			0x00000020  /* Sample TX tstamp in PHY sop */
 
 /* Receive Checksum Control */
 #define IGC_RXCSUM_CRCOFL	0x00000800   /* CRC32 offload enable */
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index b63a03157ec1..86ca93cb2fc5 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -368,6 +368,7 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
 	if (tsync_rx_ctl) {
 		tsync_rx_ctl = IGC_TSYNCRXCTL_ENABLED;
 		tsync_rx_ctl |= IGC_TSYNCRXCTL_TYPE_ALL;
+		tsync_rx_ctl |= IGC_TSYNCRXCTL_RXSYNSIG;
 		config->rx_filter = HWTSTAMP_FILTER_ALL;
 		is_l2 = true;
 		is_l4 = true;
@@ -384,8 +385,10 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
 		}
 	}
 
-	if (tsync_tx_ctl)
+	if (tsync_tx_ctl) {
 		tsync_tx_ctl = IGC_TSYNCTXCTL_ENABLED;
+		tsync_tx_ctl |= IGC_TSYNCTXCTL_TXSYNSIG;
+	}
 
 	/* enable/disable TX */
 	regval = rd32(IGC_TSYNCTXCTL);
-- 
2.24.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
