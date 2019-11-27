Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E739610A7C0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Nov 2019 02:04:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 832692268D;
	Wed, 27 Nov 2019 01:04:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WgQZUJrlsQPo; Wed, 27 Nov 2019 01:04:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 427D022650;
	Wed, 27 Nov 2019 01:04:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0E0611BF357
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Nov 2019 01:04:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 099078757F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Nov 2019 01:04:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CERThVPasF+0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Nov 2019 01:04:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E683887582
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Nov 2019 01:04:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 17:04:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,247,1571727600"; d="scan'208";a="233934683"
Received: from vcostago-desk1.jf.intel.com ([10.54.70.26])
 by fmsmga004.fm.intel.com with ESMTP; 26 Nov 2019 17:04:45 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Nov 2019 17:04:35 -0800
Message-Id: <20191127010435.1733698-6-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191127010435.1733698-1-vinicius.gomes@intel.com>
References: <20191127010435.1733698-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue PATCH v2 5/5] igc: Use Start of
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
index e978fd484fc8..8e1f2e27cc0b 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -364,6 +364,7 @@
 #define IGC_TSYNCRXCTL_TYPE_EVENT_V2	0x0A
 #define IGC_TSYNCRXCTL_ENABLED		0x00000010  /* enable Rx timestamping */
 #define IGC_TSYNCRXCTL_SYSCFI		0x00000020  /* Sys clock frequency */
+#define IGC_TSYNCRXCTL_RXSYNSIG		0x00000400  /* Sample RX tstamp in PHY sop */
 
 /* Time Sync Receive Configuration */
 #define IGC_TSYNCRXCFG_PTP_V1_CTRLT_MASK	0x000000FF
@@ -387,6 +388,7 @@
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
