Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C3DCBDC71
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Dec 2025 13:26:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AC58640394;
	Mon, 15 Dec 2025 12:26:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CBQAPQ-Di_Rh; Mon, 15 Dec 2025 12:26:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A8D8440478
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765801593;
	bh=SHeSyo6aWQLMl6CJj9hPsqlMyzoKVNNXGWaEUfcV0C0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qAsR9lvf2lx2kOW35I1NxFjPdMs3LSv5xSIJFzct50RCb0ER+WeG+oHaboKf2XLRM
	 oEeDFdww21+eU1Ku3HGdqyaFj3V+It5s2cp8IOSyXYM5yu+KF6/GntWVDvh9iR7vlw
	 MIVIseM11g5hYwn5+HUsJpJ601wXglJW6CuP2C63qqquoLAoUR9LV5E+a43tHkAiha
	 ZNIVDgniiitAoKhnP4BhYjW6oOMqVBFWIo+lgGD+Tf/y6H2tyI1WC3IE50i+lzzpXW
	 o8aFqM2I/OeasgrOff+UwC/zlJeuCex5ZW9BEL+J1Igt8ziBm5Mf4IctllAGJFUYza
	 ydIaZk6Enl4Sg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A8D8440478;
	Mon, 15 Dec 2025 12:26:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9ACCB118
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 12:26:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7F1E440451
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 12:26:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n11pSFw_go6d for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Dec 2025 12:26:30 +0000 (UTC)
X-Greylist: delayed 303 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 15 Dec 2025 12:26:28 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8F81340394
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F81340394
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.136.64.226;
 helo=mta-64-226.siemens.flowmailer.net;
 envelope-from=fm-1333436-202512151221229c3e51a03e0002076e-omav98@rts-flowmailer.siemens.com;
 receiver=<UNKNOWN> 
Received: from mta-64-226.siemens.flowmailer.net
 (mta-64-226.siemens.flowmailer.net [185.136.64.226])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8F81340394
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 12:26:28 +0000 (UTC)
Received: by mta-64-226.siemens.flowmailer.net with ESMTPSA id
 202512151221229c3e51a03e0002076e
 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Dec 2025 13:21:22 +0100
From: Vivek Behera <vivek.behera@siemens.com>
To: aleksandr.loktionov@intel.com, jacob.e.keller@intel.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Cc: intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 vivek.behera@siemens.com
Date: Mon, 15 Dec 2025 13:20:52 +0100
Message-Id: <20251215122052.412327-1-vivek.behera@siemens.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1333436:519-21489:flowmailer
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; s=fm2; 
 d=siemens.com; i=vivek.behera@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=SHeSyo6aWQLMl6CJj9hPsqlMyzoKVNNXGWaEUfcV0C0=;
 b=hdNeqDWGq9HKSxOuMQflohQnqjdXexA51LIQdK3LBC2uUTsTH17fbAhMrLifACdSHE2HuQ
 rQeFRldyM1iC5cjrSWJp3ozzZtrNv9UfCU9vakYyaN6ZvOiDDJrY/OFS1mXzDKzKFo1v3twN
 O05pCbqeG2D7vjzrsho/j3JLmLYndXa3nNxmi29frfjuGG43xPv9P+zFvg0i3ihwA+IVFG/y
 FpWhh4YNyOD+zKtS0K14v6UW7RB5vATqRSfW+bnLSuidVtVWOk9aW6EKEt6c3chftUgnHXGO
 Z2NAFWKsQtYA7jB+3M3S+wGDHfjmEYDPlILDNRuxgMen3wiaC++JjkeQ==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=vivek.behera@siemens.com
 header.a=rsa-sha256 header.s=fm2 header.b=hdNeqDWG
Subject: [Intel-wired-lan] [PATCH iwl-net v8] igc: Fix trigger of incorrect
 irq in igc_xsk_wakeup function
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch addresses the issue where the igc_xsk_wakeup function
was triggering an incorrect IRQ for tx-0 when the i226 is configured
with only 2 combined queues or in an environment with 2 active CPU cores.
This prevented XDP Zero-copy send functionality in such split IRQ
configurations.

The fix implements the correct logic for extracting q_vectors saved
during rx and tx ring allocation and utilizes flags provided by the
ndo_xsk_wakeup API to trigger the appropriate IRQ.

Fixes: fc9df2a0b520 ("igc: Enable RX via AF_XDP zero-copy")
Fixes: 15fd021bc427 ("igc: Add Tx hardware timestamp request for AF_XDP zero-copy packet")
Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
Reviewed-by: Jacob Keller <jacob.keller@intel.com>
Reviewed-by: Aleksandr loktinov <aleksandr.loktionov@intel.com>
Reviewed-by: Przemyslaw Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
v1: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.kernel.org%2Fintel-wired-lan%2FAS1PR10MB5392B7268416DB8A1624FDB88FA7A%40AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM%2F&data=05%7C02%7Cvivek.behera%40siemens.com%7Cb609a859d19b47e8f47808de38d77627%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C639010695226787962%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=S1060xzCOGrJo0cO2enNhDmCIJUcCLZd%2F%2BmKLByazm8%3D&reserved=0
v2: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.kernel.org%2Fintel-wired-lan%2FAS1PR10MB539280B1427DA0ABE9D65E628FA5A%40AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM%2F&data=05%7C02%7Cvivek.behera%40siemens.com%7Cb609a859d19b47e8f47808de38d77627%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C639010695226846016%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=ksDVfndVlbafyexZ2%2B3j9GccO9hupybvtl1twZs5OSk%3D&reserved=0
v3: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.kernel.org%2Fintel-wired-lan%2FIA3PR11MB8986E4ACB7F264CF2DD1D750E5A0A%40IA3PR11MB8986.namprd11.prod.outlook.com%2F&data=05%7C02%7Cvivek.behera%40siemens.com%7Cb609a859d19b47e8f47808de38d77627%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C639010695226890990%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=zEWhj7N2%2BmwsShmoy1ACAjb3vi7yJgbA077fISIOZiM%3D&reserved=0
v4: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.kernel.org%2Fintel-wired-lan%2FAS1PR10MB53926CB955FBD4F9F4A018818FA0A%40AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM%2F&data=05%7C02%7Cvivek.behera%40siemens.com%7Cb609a859d19b47e8f47808de38d77627%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C639010695226933538%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=23aTM4TNsnyzoS%2FpSM1GcluaWzLPNbrPKEo%2BOrm9hZQ%3D&reserved=0
v5: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.kernel.org%2Fintel-wired-lan%2FAS1PR10MB5392FCA415A38B9DD7BB5F218FA0A%40AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM%2F&data=05%7C02%7Cvivek.behera%40siemens.com%7Cb609a859d19b47e8f47808de38d77627%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C639010695227205026%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=JdY3aHzIcIWtir9fAV%2BMELNWtiyLJYRU7IMxLZ0mPqQ%3D&reserved=0
v6: https://lore.kernel.org/intel-wired-lan/20251211173916.23951-1-vivek.behera@siemens.com/
v7: https://lore.kernel.org/intel-wired-lan/20251212163208.137164-1-vivek.behera@siemens.com/

changelog:
v1
- Inital description of the Bug and steps to reproduce with RTC Testbench
- Test results after applying the patch
v1 -> v2
- Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ configuration
- Removal of igc_trigger_rxtxq_interrupt (now redundant)
- Added flag to igc_xsk_wakeup function call in igc_ptp_free_tx_buffer
v2 -> v3
- Added 'Fixes:' tags for the relevant commits.
- Added reviewer
v3 -> v4
- Added reviewer
v4 -> v5
- Updated comment style from multi-star to standard linux convention
v5 -> v6
- Resolve formatting issues highlighted by reviewers
- Try to include version histroy as defined in netdev guidelines
- Included review suggestions from Przemyslaw
- Added reviewers
v6 -> v7
- Included review suggestions from Przemyslaw missed in v6
v7 -> v8
- Modified sequence to complete all error checks for rx and tx
  before updating napi states and triggering irq
---
 drivers/net/ethernet/intel/igc/igc_main.c | 90 ++++++++++++++++++-----
 drivers/net/ethernet/intel/igc/igc_ptp.c  |  2 +-
 2 files changed, 73 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 7aafa60ba0c8..76e4790bd3c0 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6908,21 +6908,13 @@ static int igc_xdp_xmit(struct net_device *dev, int num_frames,
 	return nxmit;
 }
 
-static void igc_trigger_rxtxq_interrupt(struct igc_adapter *adapter,
-					struct igc_q_vector *q_vector)
-{
-	struct igc_hw *hw = &adapter->hw;
-	u32 eics = 0;
-
-	eics |= q_vector->eims_value;
-	wr32(IGC_EICS, eics);
-}
-
 int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)
 {
 	struct igc_adapter *adapter = netdev_priv(dev);
+	struct igc_hw *hw = &adapter->hw;
 	struct igc_q_vector *q_vector;
 	struct igc_ring *ring;
+	u32 eics = 0;
 
 	if (test_bit(__IGC_DOWN, &adapter->state))
 		return -ENETDOWN;
@@ -6930,18 +6922,80 @@ int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)
 	if (!igc_xdp_is_enabled(adapter))
 		return -ENXIO;
 
-	if (queue_id >= adapter->num_rx_queues)
+	if ((flags & XDP_WAKEUP_RX) && (flags & XDP_WAKEUP_TX)) {
+		/* If both TX and RX need to be woken up */
+		/* check if queue pairs are active. */
+		if ((adapter->flags & IGC_FLAG_QUEUE_PAIRS)) {
+			/* Just get the ring params from Rx */
+			if (queue_id >= adapter->num_rx_queues)
+				return -EINVAL;
+			ring = adapter->rx_ring[queue_id];
+		} else {
+			/* Two irqs for Rx AND Tx need to be triggered */
+			u32 eics_tx = 0;
+			u32 eics_rx = 0;
+			struct napi_struct *rx_napi;
+			struct napi_struct *tx_napi;
+
+			if (queue_id >= adapter->num_rx_queues)
+				return -EINVAL;
+
+			if (queue_id >= adapter->num_tx_queues)
+				return -EINVAL;
+
+			/* IRQ trigger preparation for Rx */
+			ring = adapter->rx_ring[queue_id];
+			if (!ring->xsk_pool)
+				return -ENXIO;
+			q_vector = ring->q_vector;
+			rx_napi = &q_vector->napi;
+			/* Extend the BIT mask for eics */
+			eics_rx |= ring->q_vector->eims_value;
+
+			/* IRQ trigger preparation for Tx */
+			ring = adapter->tx_ring[queue_id];
+			if (!ring->xsk_pool)
+				return -ENXIO;
+			q_vector = ring->q_vector;
+			tx_napi = &q_vector->napi;
+			/* Extend the BIT mask for eics */
+			eics_tx |= ring->q_vector->eims_value;
+
+			/* Check and update napi states for rx and tx */
+			if (!napi_if_scheduled_mark_missed(rx_napi))
+				eics |= eics_rx;
+			if (!napi_if_scheduled_mark_missed(tx_napi))
+				eics |= eics_tx;
+
+			/* Now we trigger the required irqs for Rx and Tx */
+			if (eics)
+				wr32(IGC_EICS, eics);
+
+			return 0;
+		}
+	} else if (flags & XDP_WAKEUP_TX) {
+		if (queue_id >= adapter->num_tx_queues)
+			return -EINVAL;
+		/* Get the ring params from Tx */
+		ring = adapter->tx_ring[queue_id];
+	} else if (flags & XDP_WAKEUP_RX) {
+		if (queue_id >= adapter->num_rx_queues)
+			return -EINVAL;
+		/* Get the ring params from Rx */
+		ring = adapter->rx_ring[queue_id];
+	} else {
+		/* Invalid Flags */
 		return -EINVAL;
-
-	ring = adapter->rx_ring[queue_id];
-
+	}
+	/* Prepare to trigger single irq */
 	if (!ring->xsk_pool)
 		return -ENXIO;
 
-	q_vector = adapter->q_vector[queue_id];
-	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
-		igc_trigger_rxtxq_interrupt(adapter, q_vector);
-
+	q_vector = ring->q_vector;
+	if (!napi_if_scheduled_mark_missed(&q_vector->napi)) {
+		eics |= q_vector->eims_value;
+		wr32(IGC_EICS, eics);
+	}
 	return 0;
 }
 
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index b7b46d863bee..6d8c2d639cd7 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -550,7 +550,7 @@ static void igc_ptp_free_tx_buffer(struct igc_adapter *adapter,
 		tstamp->buffer_type = 0;
 
 		/* Trigger txrx interrupt for transmit completion */
-		igc_xsk_wakeup(adapter->netdev, tstamp->xsk_queue_index, 0);
+		igc_xsk_wakeup(adapter->netdev, tstamp->xsk_queue_index, XDP_WAKEUP_TX);
 
 		return;
 	}
-- 
2.34.1

