Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6177B249180
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Aug 2020 01:41:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0561F20794;
	Tue, 18 Aug 2020 23:41:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pK7u4SFE8H0x; Tue, 18 Aug 2020 23:41:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 11BF4207A1;
	Tue, 18 Aug 2020 23:41:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 301B21BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Aug 2020 23:41:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2C52386FC3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Aug 2020 23:41:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vtbv21Km4148 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Aug 2020 23:41:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 49E6A8666D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Aug 2020 23:41:27 +0000 (UTC)
IronPort-SDR: i+vkqnAhRx48NP7APrRLKlLZ/S2Vsg8KhzOSNpljjO8+nSDfuteDNZ7p7CTdBs/Se4OyGi3jcq
 vu/7hxqJB6gg==
X-IronPort-AV: E=McAfee;i="6000,8403,9717"; a="216546510"
X-IronPort-AV: E=Sophos;i="5.76,329,1592895600"; d="scan'208";a="216546510"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2020 16:41:26 -0700
IronPort-SDR: 9xobGMnE0LTOmlWDDVGazeZ8bk2TP1urtTPazV0YuBcZW/8tAoSBk7i4rhAp3InYDzniMqgcSP
 jwI7VyTxfJUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,329,1592895600"; d="scan'208";a="371059521"
Received: from jrperren-desk4.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.212.63.39])
 by orsmga001.jf.intel.com with ESMTP; 18 Aug 2020 16:41:26 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 18 Aug 2020 16:40:02 -0700
Message-Id: <20200818234002.3057510-2-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200818234002.3057510-1-vinicius.gomes@intel.com>
References: <20200818234002.3057510-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2 2/2] igc: Fix not considering the
 TX delay for timestamps
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
Cc: andre.guedes@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Changes from v1:
  - Added Fixes tag

When timestamping a packet there's a delay between the start of the
packet and the point where the hardware actually captures the
timestamp. This difference needs to be considered if we want accurate
timestamps.

This was done on the RX side, but not on the TX side.

Fixes: 2c344ae24501 ("igc: Add support for TX timestamping")
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 36c999250fcc..6a9b5102aa55 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -364,6 +364,7 @@ static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
 	struct sk_buff *skb = adapter->ptp_tx_skb;
 	struct skb_shared_hwtstamps shhwtstamps;
 	struct igc_hw *hw = &adapter->hw;
+	int adjust = 0;
 	u64 regval;
 
 	if (WARN_ON_ONCE(!skb))
@@ -373,6 +374,24 @@ static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
 	regval |= (u64)rd32(IGC_TXSTMPH) << 32;
 	igc_ptp_systim_to_hwtstamp(adapter, &shhwtstamps, regval);
 
+	switch (adapter->link_speed) {
+	case SPEED_10:
+		adjust = IGC_I225_TX_LATENCY_10;
+		break;
+	case SPEED_100:
+		adjust = IGC_I225_TX_LATENCY_100;
+		break;
+	case SPEED_1000:
+		adjust = IGC_I225_TX_LATENCY_1000;
+		break;
+	case SPEED_2500:
+		adjust = IGC_I225_TX_LATENCY_2500;
+		break;
+	}
+
+	shhwtstamps.hwtstamp =
+		ktime_add_ns(shhwtstamps.hwtstamp, adjust);
+
 	/* Clear the lock early before calling skb_tstamp_tx so that
 	 * applications are not woken up before the lock bit is clear. We use
 	 * a copy of the skb pointer to ensure other threads can't change it
-- 
2.28.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
