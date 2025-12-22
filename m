Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 316EDCD5E9D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Dec 2025 13:03:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A11FF6075F;
	Mon, 22 Dec 2025 12:03:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bZdVRr2Cz376; Mon, 22 Dec 2025 12:03:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2F0EC60811
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766404986;
	bh=OVTBZVpdYmmPFdmobZxSeloO9wS+oYaCOAbD03Dpil4=;
	h=To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=74s+0Ypnb3fkztbfNgqB/jjUhd7dTMj4TS3o5N4mpP90M8A/qwK3VwPuOwk7noOh+
	 /hHq1hqgUIr5ndNKhj2UvpJFWNXMnPtOFBaIZFnDOcjuAQ1yr3q0U/cLjqlGLwaArg
	 qm+3M0BOv3u8W7iPD852z4eLy4sAJ4xAPZKLaxbnujQYVYYIoCF8pFm+yYeKrobOb0
	 kzbSLhMQIpDKG/4M7dp12/C1r5msHPCme5BjGUW+d1A/lxaDptL73SCztxUvTMKMTk
	 rzfecTqVPpPeCdoM1zVnDj7jPi7005DFrYhh61igo6HgrlIT2D4iZZqchEC978rb8+
	 sJ3UCxcv0L76g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F0EC60811;
	Mon, 22 Dec 2025 12:03:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B4FE71A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Dec 2025 12:03:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A71724032B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Dec 2025 12:03:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EJsXYmPZaIfP for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Dec 2025 12:03:03 +0000 (UTC)
X-Greylist: delayed 304 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 22 Dec 2025 12:03:01 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 367E740321
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 367E740321
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.136.64.228;
 helo=mta-64-228.siemens.flowmailer.net;
 envelope-from=fm-1333436-202512221157536c58cfd3cd00020763-ahzp_i@rts-flowmailer.siemens.com;
 receiver=<UNKNOWN> 
Received: from mta-64-228.siemens.flowmailer.net
 (mta-64-228.siemens.flowmailer.net [185.136.64.228])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 367E740321
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Dec 2025 12:03:01 +0000 (UTC)
Received: by mta-64-228.siemens.flowmailer.net with ESMTPSA id
 202512221157536c58cfd3cd00020763
 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Dec 2025 12:57:54 +0100
To: aleksandr.loktionov@intel.com, jacob.e.keller@intel.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 maciej.fijalkowski@intel.com, sriram.yagnaraman@ericsson.com,
 kurt@linutronix.de
Cc: intel-wired-lan@lists.osuosl.org,
	vivek.behera@siemens.com
Date: Mon, 22 Dec 2025 12:57:47 +0100
Message-Id: <20251222115747.230521-1-vivek.behera@siemens.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1333436:519-21489:flowmailer
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; s=fm2; 
 d=siemens.com; i=vivek.behera@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=OVTBZVpdYmmPFdmobZxSeloO9wS+oYaCOAbD03Dpil4=;
 b=K9MpflwO4KrsmdKKgFj/7uM5JAkZODUR9q3SjIoRzM1lAFi/b7Imz2PY4GHH+cKkcnRAEC
 yjfcayaLQYqDw0DInMNwsDmqz5kl853RHlB8v35cHIupuoNNboEMfog3gRReeoX9gLj+zpgW
 DFc3JIgqr4t7Fjc7g0aHDdEb/JmyrKngNpyZLor3xeBgEfGwKL+kM28oR9dNO+1sZbQvz8fC
 JYSkEsyMXUHR+bjMrrlepxjIsTIT9z6LnEfizbZFofE0mpCp1x2YXvt6drwxilOPv8XQAgii
 wNLPwmRM+BsCw3ncN7Pz2mPe3H62QGNrax4yjoyEC+8PGhnfmppFC/8A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=vivek.behera@siemens.com
 header.a=rsa-sha256 header.s=fm2 header.b=K9MpflwO
Subject: [Intel-wired-lan] [PATCH iwl-net v4] igb: Fix trigger of incorrect
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
---
 .../net/ethernet/intel/igb/e1000_defines.h    |  1 +
 drivers/net/ethernet/intel/igb/igb_xsk.c      | 90 +++++++++++++++++--
 2 files changed, 83 insertions(+), 8 deletions(-)

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
index 30ce5fbb5b77..1d21674c0f33 100644
--- a/drivers/net/ethernet/intel/igb/igb_xsk.c
+++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
@@ -529,6 +529,7 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
 	struct igb_adapter *adapter = netdev_priv(dev);
 	struct e1000_hw *hw = &adapter->hw;
 	struct igb_ring *ring;
+	struct igb_q_vector *q_vector;
 	u32 eics = 0;
 
 	if (test_bit(__IGB_DOWN, &adapter->state))
@@ -536,14 +537,82 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
 
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
+			/* In queue-pair mode, rx_ring and tx_ring share the same q_vector,
+			 * so a single IRQ trigger will wake both RX and TX processing
+			 */
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
+			if (!READ_ONCE(ring->xsk_pool))
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
+			if (!READ_ONCE(ring->xsk_pool))
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
@@ -551,10 +620,15 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
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

