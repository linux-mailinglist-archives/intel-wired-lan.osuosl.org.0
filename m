Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BEFCD2E7B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Dec 2025 12:54:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 41F2F80D9C;
	Sat, 20 Dec 2025 11:54:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YO8fIRG0rQAJ; Sat, 20 Dec 2025 11:54:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C3CD80F71
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766231693;
	bh=iN8fkkVBCFgaV6pAMYEUybU6noJ1nH5tpcNdJD6rXY8=;
	h=To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=46m8aGb23UBaKDuBdWp4eae76TC+/Y56b6Q4HlsXMR72RG5A5A1vBuCYpx/beFajP
	 EmqvB8dayAwna6MaeDp6S1VnM02XI8Sp8zUx39PsUc5+HZFUTSlnLINZGfmJBo2EpC
	 SRvZ9Zmr1C91hhE7RRbFhZEsLt7ZxUvMVi2y9PHMEztEBfnzzysIGP4PxZzEiMOqsW
	 t604DIdAjLN4nsE+F4ugxpFFptWtxrF+5R9o5MWZDDETaWO/7q1c6vCQfBtG9cx7PU
	 uj74UwM8xvwlqnlG+EfOzuEPfp1/Xd2OzuXpe2fjz4n5IZPbA13zQRItZSQWhIMjhC
	 sX/zJagNQ2AxA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C3CD80F71;
	Sat, 20 Dec 2025 11:54:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 218F4119
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Dec 2025 11:54:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F4229401BB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Dec 2025 11:54:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gTv3lR8M6FDa for <intel-wired-lan@lists.osuosl.org>;
 Sat, 20 Dec 2025 11:54:51 +0000 (UTC)
X-Greylist: delayed 303 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 20 Dec 2025 11:54:49 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4940240140
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4940240140
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.136.65.228;
 helo=mta-65-228.siemens.flowmailer.net;
 envelope-from=fm-1333436-20251220114943bae625d0460002077b-jszzmc@rts-flowmailer.siemens.com;
 receiver=<UNKNOWN> 
Received: from mta-65-228.siemens.flowmailer.net
 (mta-65-228.siemens.flowmailer.net [185.136.65.228])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4940240140
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Dec 2025 11:54:49 +0000 (UTC)
Received: by mta-65-228.siemens.flowmailer.net with ESMTPSA id
 20251220114943bae625d0460002077b
 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 20 Dec 2025 12:49:43 +0100
To: aleksandr.loktionov@intel.com, jacob.e.keller@intel.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 maciej.fijalkowski@intel.com, sriram.yagnaraman@ericsson.com,
 kurt@linutronix.de
Cc: intel-wired-lan@lists.osuosl.org,
	vivek.behera@siemens.com
Date: Sat, 20 Dec 2025 12:49:36 +0100
Message-Id: <20251220114936.140473-1-vivek.behera@siemens.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1333436:519-21489:flowmailer
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; s=fm2; 
 d=siemens.com; i=vivek.behera@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=iN8fkkVBCFgaV6pAMYEUybU6noJ1nH5tpcNdJD6rXY8=;
 b=SupVXNDHzIjwWSzPYmkGEdc582gcPixmzlRwm58/PZbJqdnMVjR1gq4TNLU4oiOW0NXAEt
 A2e/qobAauWaih8/M+Fx8Ef6uWoh0NdHkb7pj8f19a5t+OUJ2YvF2FlJ6D3HeRkh5Wmjq6Tf
 y4KzdAQ87z8Ri0KQO5zH5cm9ALWFya23NyzLuh8bYRkT90D3kxNMpktFfTUlPv09hE4DWWF2
 Bdk3wWD8BQklDUBA87QNZjso3JuyhHVvCjaMlF7y9L8qA/skqiAqdWv6R+iiG4vn5mmlorjC
 ZnVeCyqbZ3shumayWcdy4xKMLBZrYJTKBfmdSm9RXIq8oXuxy0wxgcHg==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=vivek.behera@siemens.com
 header.a=rsa-sha256 header.s=fm2 header.b=SupVXNDH
Subject: [Intel-wired-lan] [PATCH iwl-net v3] igb: Fix trigger of incorrect
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

---
v1: https://lore.kernel.org/intel-wired-lan/20251212131454.124116-1-vivek.behera@siemens.com/
v2: https://lore.kernel.org/intel-wired-lan/20251215115416.410619-1-vivek.behera@siemens.com/

changelog:
v1
- Inital description of the Bug and fixes made in the patch

v1 -> v2
- Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ configuration
- Review by Aleksander: Modified sequence to complete all error checks for rx and tx
  before updating napi states and triggering irqs
- Corrected trigger of TX and RX interrupts over E1000_ICS (non msix use case)
- Added define for Tx interrupt trigger bit mask for E1000_ICS

v2 -> v3
- Included applicable feedback and suggestions from igc patch
- Fixed logic in updating eics value when  both TX and RX need wakeup
---
 .../net/ethernet/intel/igb/e1000_defines.h    |  1 +
 drivers/net/ethernet/intel/igb/igb_xsk.c      | 88 +++++++++++++++++--
 2 files changed, 81 insertions(+), 8 deletions(-)

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
index 30ce5fbb5b77..3dbc2573b47a 100644
--- a/drivers/net/ethernet/intel/igb/igb_xsk.c
+++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
@@ -529,6 +529,7 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
 	struct igb_adapter *adapter = netdev_priv(dev);
 	struct e1000_hw *hw = &adapter->hw;
 	struct igb_ring *ring;
+	struct igb_q_vector *q_vector;
 	u32 eics = 0;
 
 	if (test_bit(__IGB_DOWN, &adapter->state))
@@ -536,14 +537,80 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
 
 	if (!igb_xdp_is_enabled(adapter))
 		return -EINVAL;
-
-	if (qid >= adapter->num_tx_queues)
+	/* Check if queue_id is valid. Tx and Rx queue numbers are always same */
+	if (qid >= adapter->num_rx_queues)
 		return -EINVAL;
 
-	ring = adapter->tx_ring[qid];
-
-	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
-		return -ENETDOWN;
+	if ((flags & XDP_WAKEUP_RX) && (flags & XDP_WAKEUP_TX)) {
+		/* If both TX and RX need to be woken up check if queue pairs are active */
+		if (adapter->flags & IGB_FLAG_QUEUE_PAIRS) {
+			/* Extract ring params from Rx */
+			ring = adapter->rx_ring[qid];
+		} else {
+			/* Two irqs for Rx AND Tx need to be triggered */
+			struct napi_struct *rx_napi;
+			struct napi_struct *tx_napi;
+			bool trigger_irq_tx = false;
+			bool trigger_irq_rx = false;
+			u32 eics_tx = 0;
+			u32 eics_rx = 0;
+			/* IRQ trigger preparation for Rx */
+			ring = adapter->rx_ring[qid];
+			if (!ring->xsk_pool)
+				return -ENXIO;
+			q_vector = ring->q_vector;
+			rx_napi  = &q_vector->napi;
+			/* Extend the BIT mask for eics */
+			eics_rx = ring->q_vector->eims_value;
+
+			/* IRQ trigger preparation for Tx */
+			ring = adapter->tx_ring[qid];
+			if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
+				return -ENETDOWN;
+
+			if (!ring->xsk_pool)
+				return -ENXIO;
+			q_vector = ring->q_vector;
+			tx_napi  = &q_vector->napi;
+			/* Extend the BIT mask for eics */
+			eics_tx = ring->q_vector->eims_value;
+
+			/* Check and update napi states for rx and tx */
+			if (!napi_if_scheduled_mark_missed(rx_napi)) {
+				trigger_irq_rx = true;
+				eics |= eics_rx;
+			}
+			if (!napi_if_scheduled_mark_missed(tx_napi)) {
+				trigger_irq_tx = true;
+				eics |= eics_tx;
+			}
+			/* Now we trigger the required irqs for Rx and Tx */
+			if ((trigger_irq_rx) || (trigger_irq_tx)) {
+				if (adapter->flags & IGB_FLAG_HAS_MSIX) {
+					wr32(E1000_EICS, eics);
+				} else {
+					if ((trigger_irq_rx) && (trigger_irq_tx))
+						wr32(E1000_ICS, E1000_ICS_RXDMT0 | E1000_ICS_TXDW);
+					else if (trigger_irq_rx)
+						wr32(E1000_ICS, E1000_ICS_RXDMT0);
+					else
+						wr32(E1000_ICS, E1000_ICS_TXDW);
+				}
+			}
+			return 0;
+		}
+	} else if (flags & XDP_WAKEUP_TX) {
+		/* Get the ring params from Tx */
+		ring = adapter->tx_ring[qid];
+		if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
+			return -ENETDOWN;
+	} else if (flags & XDP_WAKEUP_RX) {
+		/* Get the ring params from Rx */
+		ring = adapter->rx_ring[qid];
+	} else {
+		/* Invalid Flags */
+		return -EINVAL;
+	}
 
 	if (!READ_ONCE(ring->xsk_pool))
 		return -EINVAL;
@@ -551,10 +618,15 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
 	if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
 		/* Cause software interrupt */
 		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
-			eics |= ring->q_vector->eims_value;
+			eics = ring->q_vector->eims_value;
 			wr32(E1000_EICS, eics);
 		} else {
-			wr32(E1000_ICS, E1000_ICS_RXDMT0);
+			if ((flags & XDP_WAKEUP_RX) && (flags & XDP_WAKEUP_TX))
+				wr32(E1000_ICS, E1000_ICS_RXDMT0 | E1000_ICS_TXDW);
+			else if (flags & XDP_WAKEUP_RX)
+				wr32(E1000_ICS, E1000_ICS_RXDMT0);
+			else
+				wr32(E1000_ICS, E1000_ICS_TXDW);
 		}
 	}
 
-- 
2.34.1

