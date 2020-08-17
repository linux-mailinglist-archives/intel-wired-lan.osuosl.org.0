Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A120247B03
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Aug 2020 01:13:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0741886BAF;
	Mon, 17 Aug 2020 23:13:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rgJEw8RxFpKl; Mon, 17 Aug 2020 23:13:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 70E4886B90;
	Mon, 17 Aug 2020 23:13:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D68A81BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Aug 2020 23:12:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D1A4820013
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Aug 2020 23:12:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VJprsfTSpNJf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Aug 2020 23:12:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id DE02E20343
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Aug 2020 23:12:54 +0000 (UTC)
IronPort-SDR: qaqthg8ScBpQOlsKnFjBMgsOGSL3cAuyqKuIJo4uRuAWUFgqykzuOIP/PSkaXBYt2gQIVV/W71
 2lOZ4djIAB2Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9716"; a="172854032"
X-IronPort-AV: E=Sophos;i="5.76,324,1592895600"; d="scan'208";a="172854032"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2020 16:12:49 -0700
IronPort-SDR: tQ563Rd2m4S+RchAIPFGj3hA9P2JnxsdEPPm46u4E8jZlqJCTA6J2kPCsyJg7rWyrgawRl8Q9m
 Hps4uA8IoaUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,324,1592895600"; d="scan'208";a="292581856"
Received: from jcclancy-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.209.76.31])
 by orsmga003.jf.intel.com with ESMTP; 17 Aug 2020 16:12:48 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 17 Aug 2020 16:12:31 -0700
Message-Id: <20200817231231.2971207-2-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200817231231.2971207-1-vinicius.gomes@intel.com>
References: <20200817231231.2971207-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 2/2] igc: Fix not considering the TX delay
 for timestamps
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

When timestamping a packet there's a delay between the start of the
packet and the point where the hardware actually captures the
timestamp. This difference needs to be considered if we want accurate
timestamps.

This was done on the RX side, but not on the TX side.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index f78e9acb801f..a841ac1088aa 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -366,6 +366,7 @@ static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
 	struct sk_buff *skb = adapter->ptp_tx_skb;
 	struct skb_shared_hwtstamps shhwtstamps;
 	struct igc_hw *hw = &adapter->hw;
+	int adjust = 0;
 	u64 regval;
 
 	if (WARN_ON_ONCE(!skb))
@@ -375,6 +376,24 @@ static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
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
