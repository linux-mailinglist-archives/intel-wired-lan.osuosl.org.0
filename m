Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D258727090
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Jun 2023 23:32:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 16E554183C;
	Wed,  7 Jun 2023 21:32:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 16E554183C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686173576;
	bh=oQ+BCBW8HXyjekqznszmPhmZu8HcER0ZJ7fpjNYovFI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CxPK/mvXdP4YtQGubki12FHUfUaiMQnGZJ5d8AsitJT1xOeSanYJAbjy8kzkRrFYk
	 i1NOSt19n0z62QS38dWg0JGnK0T+gIWaXMFw7q6RM8ExTSYvVwP85H0PurQDZSX3Mu
	 NZN+kmLxqYJG0T2S/atAhvMFL52DzStq6DfbRf/fJRvbf/xeROAixyoqfBmH8eR587
	 YatV+pb5ebN/vZIe0LNKxu/uM3NptL/wKvvZkRqWNJIWe92Q8vapOFPlDFGeMKnneV
	 OOUfn5/YrQsc6DifVUYS9LerAnyMsfBkFwym5N57n0vOXapymql9QVZxbNRTThEcc7
	 /QMeiaI5UeoCA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i7CXfHKnjxdK; Wed,  7 Jun 2023 21:32:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C8F5241736;
	Wed,  7 Jun 2023 21:32:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C8F5241736
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6216B1BF969
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 21:32:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CD9D060B36
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 21:32:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD9D060B36
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YLaQFRBY2NoB for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jun 2023 21:32:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EEE0160FB6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EEE0160FB6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 21:32:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="336741884"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="336741884"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 14:32:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="742853915"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="742853915"
Received: from adtotpal-mobl.amr.corp.intel.com (HELO
 vcostago-mobl3.intel.com) ([10.209.21.176])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 14:32:38 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  7 Jun 2023 14:32:30 -0700
Message-Id: <20230607213232.875138-3-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230607213232.875138-1-vinicius.gomes@intel.com>
References: <20230607213232.875138-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686173560; x=1717709560;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=g2xPpxC3MX8g3M2Wixudvlkpb5F3e48HsV2zyncpWIU=;
 b=ePbS3CSVBo6fip9HjH+mcYaabLNFNPzvNqldp7Nl342EBuY5HFvG70eO
 fKwwbNJtda3r/PlyaDP5M+j1tu2CjPzF8uXEO3qexK+17bzS6VbyjSuSX
 J08o6kK4UN5ab5it3g2wDtdDxb1bDD92wQLvAu9FqcrqZtMDUrHuJrmZ4
 MFX0iu+TMNqnzkCssJFAagEgfYBd4Q9WiiRAbBzxRk8yGaRbHh1ZISeFF
 H2tlM7RXWgXNDZZDTUo6emlFvEqUdF1Wnt3aarNV3sst50ZlOh3q2gWTg
 a/Ts2mh+S+MYqbo+ojb/oKg0UiG5urY2RN8ptc6mvlJxJilZCJ0+eA1pZ
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ePbS3CSV
Subject: [Intel-wired-lan] [PATCH iwl-net v4 2/4] igc: Check if hardware TX
 timestamping is enabled earlier
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
Cc: vladimir.oltean@nxp.com, kurt@linutronix.de, anthony.l.nguyen@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Before requesting a packet transmission to be hardware timestamped,
check if the user has TX timestamping enabled. Fixes an issue that if
a packet was internally forwarded to the NIC, and it had the
SKBTX_HW_TSTAMP flag set, the driver would mark that timestamp as
skipped.

In reality, that timestamp was "not for us", as TX timestamp could
never be enabled in the NIC.

Checking if the TX timestamping is enabled earlier has a secondary
effect that when TX timestamping is disabled, there's no need to check
for timestamp timeouts.

We should only take care to free any pending timestamp when TX
timestamping is disabled, as that skb would never be released
otherwise.

Fixes: 2c344ae24501 ("igc: Add support for TX timestamping")
Suggested-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      |  1 +
 drivers/net/ethernet/intel/igc/igc_main.c |  5 +--
 drivers/net/ethernet/intel/igc/igc_ptp.c  | 42 +++++++++++++++++++++--
 3 files changed, 43 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 7da0657ea48f..66fb67c17e4f 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -581,6 +581,7 @@ enum igc_ring_flags_t {
 	IGC_RING_FLAG_TX_CTX_IDX,
 	IGC_RING_FLAG_TX_DETECT_HANG,
 	IGC_RING_FLAG_AF_XDP_ZC,
+	IGC_RING_FLAG_TX_HWTSTAMP,
 };
 
 #define ring_uses_large_buffer(ring) \
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index a61afa69975e..d3cfb8e97ac8 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1578,7 +1578,8 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 		}
 	}
 
-	if (unlikely(skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP)) {
+	if (unlikely(test_bit(IGC_RING_FLAG_TX_HWTSTAMP, &tx_ring->flags) &&
+		     skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP)) {
 		/* FIXME: add support for retrieving timestamps from
 		 * the other timer registers before skipping the
 		 * timestamping request.
@@ -1586,7 +1587,7 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 		unsigned long flags;
 
 		spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
-		if (adapter->tstamp_config.tx_type == HWTSTAMP_TX_ON && !adapter->ptp_tx_skb) {
+		if (!adapter->ptp_tx_skb) {
 			skb_shinfo(skb)->tx_flags |= SKBTX_IN_PROGRESS;
 			tx_flags |= IGC_TX_FLAGS_TSTAMP;
 
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 56128e55f5c0..42f622ceb64b 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -536,9 +536,36 @@ static void igc_ptp_enable_rx_timestamp(struct igc_adapter *adapter)
 	wr32(IGC_TSYNCRXCTL, val);
 }
 
+static void igc_ptp_clear_tx_tstamp(struct igc_adapter *adapter)
+{
+	unsigned long flags;
+
+	cancel_work_sync(&adapter->ptp_tx_work);
+
+	spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
+
+	dev_kfree_skb_any(adapter->ptp_tx_skb);
+	adapter->ptp_tx_skb = NULL;
+
+	spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);
+}
+
 static void igc_ptp_disable_tx_timestamp(struct igc_adapter *adapter)
 {
 	struct igc_hw *hw = &adapter->hw;
+	int i;
+
+	/* Clear the flags first to avoid new packets to be enqueued
+	 * for TX timestamping.
+	 */
+	for (i = 0; i < adapter->num_tx_queues; i++) {
+		struct igc_ring *tx_ring = adapter->tx_ring[i];
+
+		clear_bit(IGC_RING_FLAG_TX_HWTSTAMP, &tx_ring->flags);
+	}
+
+	/* Now we can clean the pending TX timestamp requests. */
+	igc_ptp_clear_tx_tstamp(adapter);
 
 	wr32(IGC_TSYNCTXCTL, 0);
 }
@@ -546,12 +573,23 @@ static void igc_ptp_disable_tx_timestamp(struct igc_adapter *adapter)
 static void igc_ptp_enable_tx_timestamp(struct igc_adapter *adapter)
 {
 	struct igc_hw *hw = &adapter->hw;
+	int i;
 
 	wr32(IGC_TSYNCTXCTL, IGC_TSYNCTXCTL_ENABLED | IGC_TSYNCTXCTL_TXSYNSIG);
 
 	/* Read TXSTMP registers to discard any timestamp previously stored. */
 	rd32(IGC_TXSTMPL);
 	rd32(IGC_TXSTMPH);
+
+	/* The hardware is ready to accept TX timestamp requests,
+	 * notify the transmit path.
+	 */
+	for (i = 0; i < adapter->num_tx_queues; i++) {
+		struct igc_ring *tx_ring = adapter->tx_ring[i];
+
+		set_bit(IGC_RING_FLAG_TX_HWTSTAMP, &tx_ring->flags);
+	}
+
 }
 
 /**
@@ -1026,9 +1064,7 @@ void igc_ptp_suspend(struct igc_adapter *adapter)
 	if (!(adapter->ptp_flags & IGC_PTP_ENABLED))
 		return;
 
-	cancel_work_sync(&adapter->ptp_tx_work);
-	dev_kfree_skb_any(adapter->ptp_tx_skb);
-	adapter->ptp_tx_skb = NULL;
+	igc_ptp_clear_tx_tstamp(adapter);
 
 	if (pci_device_is_present(adapter->pdev)) {
 		igc_ptp_time_save(adapter);
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
