Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 11959D12B01
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 14:09:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD07C84BA0;
	Mon, 12 Jan 2026 13:09:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eMpOOJQQL80I; Mon, 12 Jan 2026 13:09:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D4BC284B9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768223351;
	bh=FLcdCP+My4DCueALID4i/Q8t+i6Vpfd3XrW+x8aSd1g=;
	h=To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=Rsg4zspv3JwE1jjFT2+qEL6yCQ2YRxKmW46Mfs30CkWaGJXlk5dPhe9dIGb07/x0V
	 R4CCQt6pX8vkwhvOS8pMpOw4IWbVv+lixOVee9Ihak1VwbqpBbaukv2jAkZD4WMHSN
	 TazlCsnQdBs2C1Gdueh1la4DgQTQxQoaAccTAdJDWsyhCR2n+y1ds5C/qRzVsRrc+L
	 kOl6kkkeTRwnoHyO2sKbVDGNzHHitFx8DdZkScMCheAev2yNLBHGl51QTlW2OqQeRW
	 NyxdKlC9R3pEatml48p3ZB7TVahOL3zbvWkk6CjgB3o06zM8CdJDfR5n08aLDvN9sm
	 jv0R6iwg3qZaw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D4BC284B9E;
	Mon, 12 Jan 2026 13:09:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5DAC01CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 13:09:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 446C1407BA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 13:09:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BeoKxd2XP6NJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 13:09:07 +0000 (UTC)
X-Greylist: delayed 303 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 12 Jan 2026 13:09:06 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 31BE340418
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 31BE340418
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.136.65.226;
 helo=mta-65-226.siemens.flowmailer.net;
 envelope-from=fm-1333436-20260112130359f15b1cf53000020780-lxqhag@rts-flowmailer.siemens.com;
 receiver=<UNKNOWN> 
Received: from mta-65-226.siemens.flowmailer.net
 (mta-65-226.siemens.flowmailer.net [185.136.65.226])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 31BE340418
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 13:09:05 +0000 (UTC)
Received: by mta-65-226.siemens.flowmailer.net with ESMTPSA id
 20260112130359f15b1cf53000020780
 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 14:03:59 +0100
To: aleksandr.loktionov@intel.com, jacob.e.keller@intel.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 maciej.fijalkowski@intel.com, sriram.yagnaraman@ericsson.com,
 kurt@linutronix.de
Cc: intel-wired-lan@lists.osuosl.org,
	vivek.behera@siemens.com
Date: Mon, 12 Jan 2026 14:03:49 +0100
Message-Id: <20260112130349.1737901-1-vivek.behera@siemens.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1333436:519-21489:flowmailer
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; s=fm1; 
 d=siemens.com; i=vivek.behera@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=FLcdCP+My4DCueALID4i/Q8t+i6Vpfd3XrW+x8aSd1g=;
 b=N3y54iVq1ehmWxlTh8uGwK+cxXxi4mv9AdpU0+GLnhGTxd5xUM+zX5vVpZZmC+JOCgQZ4c
 vBjRg0l6rHjXSkUioo8qQf9okEyUr1uT1vwjvG/lyCuvjyM/rMMFZC9/cZBoWAiQi9MNDu60
 qOkUix0noAI4PvFB8vpTXdl7fal/NloU7CC/462ai165NmWh8bin+EsJf4kQhCX5QU9ofqmG
 dl03homcR3Peb9oG8Yow1IBtjc1nQ7wLgX65vaxEWnVJSfAmv4599Bb97jdjrd+Iqv04dbMc
 2rhjTwiuTW0qVJwwiAosy3nE9+FoeJcEYfKdm/C4TMbmV/ZYLFEsFvig==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=vivek.behera@siemens.com
 header.a=rsa-sha256 header.s=fm1 header.b=N3y54iVq
Subject: [Intel-wired-lan] [PATCH iwl-net v5] igb: Fix trigger of incorrect
 irq in igb_xsk_wakeup
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
From: Vivek Behera via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Vivek Behera <vivek.behera@siemens.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The current implementation in the igb_xsk_wakeup expects the Rx and Tx queues
to share the same irq. This would lead to triggering of incorrect irq
in split irq configuration.
This patch addresses this issue which could impact environments
with 2 active cpu cores
or when the number of queues is reduced to 2 or less

cat /proc/interrupts | grep eno2
 167:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
 0-edge      eno2
 168:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
 1-edge      eno2-rx-0
 169:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
 2-edge      eno2-rx-1
 170:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
 3-edge      eno2-tx-0
 171:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
 4-edge      eno2-tx-1

Furthermore it uses the flags input argument to trigger either rx, tx or
both rx and tx irqs as specified in the ndo_xsk_wakeup api documentation

Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and helpers")
Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v1: https://lore.kernel.org/intel-wired-lan/20251212131454.124116-1-vivek.behera@siemens.com/
v2: https://lore.kernel.org/intel-wired-lan/20251215115416.410619-1-vivek.behera@siemens.com/
v3: https://lore.kernel.org/intel-wired-lan/20251220114936.140473-1-vivek.behera@siemens.com/
v4: https://lore.kernel.org/intel-wired-lan/20251222115747.230521-1-vivek.behera@siemens.com/

changelog:
v1
- Inital description of the Bug and fixes made in the patch

v1 -> v2
- Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ configuration
- Review suggestions by Aleksander: Modified sequence to complete all
  error checks for rx and tx before updating napi states and triggering irqs
- Corrected trigger of TX and RX interrupts over E1000_ICS (non msix use case)
- Added define for Tx interrupt trigger bit mask for E1000_ICS

v2 -> v3
- Included applicable feedback and suggestions from igc patch
- Fixed logic in updating eics value when  both TX and RX need wakeup

v3 -> v4
- Added comments to explain trigerring of both TX and RX with active queue pairs
- Fixed check of xsk pools in if statement

v4 -> v5
- Introduced a simplified logic for sequential check for RX and TX
---
 .../net/ethernet/intel/igb/e1000_defines.h    |  1 +
 drivers/net/ethernet/intel/igb/igb_xsk.c      | 75 +++++++++++++++----
 2 files changed, 61 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/e1000_defines.h b/drivers/net/ethernet/intel/igb/e1000_defines.h
index fa028928482f..9357564a2d58 100644
--- a/drivers/net/ethernet/intel/igb/e1000_defines.h
+++ b/drivers/net/ethernet/intel/igb/e1000_defines.h
@@ -443,6 +443,7 @@
 #define E1000_ICS_LSC       E1000_ICR_LSC       /* Link Status Change */
 #define E1000_ICS_RXDMT0    E1000_ICR_RXDMT0    /* rx desc min. threshold */
 #define E1000_ICS_DRSTA     E1000_ICR_DRSTA     /* Device Reset Aserted */
+#define E1000_ICS_TXDW      E1000_ICR_TXDW	/* Transmit desc written back */
 
 /* Extended Interrupt Cause Set */
 /* E1000_EITR_CNT_IGNR is only for 82576 and newer */
diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/igb/igb_xsk.c
index 30ce5fbb5b77..6e51b5b6f131 100644
--- a/drivers/net/ethernet/intel/igb/igb_xsk.c
+++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
@@ -529,6 +529,13 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
 	struct igb_adapter *adapter = netdev_priv(dev);
 	struct e1000_hw *hw = &adapter->hw;
 	struct igb_ring *ring;
+	struct igb_q_vector *q_vector;
+	struct napi_struct *rx_napi;
+	struct napi_struct *tx_napi;
+	bool trigger_irq_tx = false;
+	bool trigger_irq_rx = false;
+	u32 eics_tx = 0;
+	u32 eics_rx = 0;
 	u32 eics = 0;
 
 	if (test_bit(__IGB_DOWN, &adapter->state))
@@ -536,27 +543,65 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
 
 	if (!igb_xdp_is_enabled(adapter))
 		return -EINVAL;
-
-	if (qid >= adapter->num_tx_queues)
+	/* Check if queue_id is valid. Tx and Rx queue numbers are always same */
+	if (qid >= adapter->num_rx_queues)
 		return -EINVAL;
-
-	ring = adapter->tx_ring[qid];
-
-	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
-		return -ENETDOWN;
-
-	if (!READ_ONCE(ring->xsk_pool))
+	/* Check if flags are valid */
+	if (!(flags & XDP_WAKEUP_RX) && !(flags & XDP_WAKEUP_TX))
 		return -EINVAL;
-
-	if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
-		/* Cause software interrupt */
+	if (flags & XDP_WAKEUP_RX) {
+		/* IRQ trigger preparation for Rx */
+		ring = adapter->rx_ring[qid];
+		if (!READ_ONCE(ring->xsk_pool))
+			return -ENXIO;
+		q_vector = ring->q_vector;
+		rx_napi = &q_vector->napi;
+		/* Extend the BIT mask for eics */
+		eics_rx = ring->q_vector->eims_value;
+		trigger_irq_rx = true;
+	}
+	if (flags & XDP_WAKEUP_TX) {
+		if (adapter->flags & IGB_FLAG_QUEUE_PAIRS) {
+		/* In queue-pair mode, rx_ring and tx_ring share the same q_vector,
+		 * so a single IRQ trigger will wake both RX and TX processing
+		 */
+		} else {
+			/* IRQ trigger preparation for Tx */
+			ring = adapter->tx_ring[qid];
+			if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
+				return -ENETDOWN;
+
+			if (!READ_ONCE(ring->xsk_pool))
+				return -ENXIO;
+			q_vector = ring->q_vector;
+			tx_napi = &q_vector->napi;
+			/* Extend the BIT mask for eics */
+			eics_tx = ring->q_vector->eims_value;
+			trigger_irq_tx = true;
+		}
+	}
+	/* All error checks are finished. Check and update napi states for rx and tx */
+	if (trigger_irq_rx) {
+		if (!napi_if_scheduled_mark_missed(rx_napi))
+			eics |= eics_rx;
+	}
+	if (trigger_irq_tx) {
+		if (!napi_if_scheduled_mark_missed(tx_napi))
+			eics |= eics_tx;
+	}
+	/* Now we trigger the required irqs for Rx and Tx */
+	if ((trigger_irq_rx) || (trigger_irq_tx)) {
 		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
-			eics |= ring->q_vector->eims_value;
 			wr32(E1000_EICS, eics);
 		} else {
-			wr32(E1000_ICS, E1000_ICS_RXDMT0);
+			if ((trigger_irq_rx) && (trigger_irq_tx))
+				wr32(E1000_ICS,
+				     E1000_ICS_RXDMT0 | E1000_ICS_TXDW);
+			else if (trigger_irq_rx)
+				wr32(E1000_ICS, E1000_ICS_RXDMT0);
+			else
+				wr32(E1000_ICS, E1000_ICS_TXDW);
 		}
 	}
-
 	return 0;
 }
-- 
2.34.1

