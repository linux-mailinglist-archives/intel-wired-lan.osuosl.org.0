Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DC9CBDAAB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Dec 2025 13:01:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B1A0340424;
	Mon, 15 Dec 2025 12:01:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EFGGxduGMWRd; Mon, 15 Dec 2025 12:01:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DDBA74043E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765800079;
	bh=jStgpWwjcolV7vrixZyywrv3ukB+FW3NxzcPpegR6zs=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wx0fwFoc8/8HtRxFY7lTsX/dgu/iN9UYtz0HcSsOFaBn3/hFluusuGf54kZs8ptFe
	 jIKz4X6BBzetkGmVKuQg3lz1Gr7JNMJmY0cCtjSsfsL4hTLLUWCVfvVDjRNOSQWzh8
	 dE+5xjyvTqa2215m37/xTnIrQqCliFPsIctiiHw5rygP7i8+/cLQ5MMCPTiPYkJWVY
	 eT05bRhiBY0VkLKXr4SubnBCtyznKKxgNSqU32PNJZPLExWr83PToy0Bzm7hQfJ7zL
	 7kPiXyOKlg7jDCYOVmwpldXJSjKTTdp91gsMvVDMCvSlO3enydzwaridtzzfZLvQAI
	 /EaHJGsaWrFEg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DDBA74043E;
	Mon, 15 Dec 2025 12:01:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1E990118
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 12:01:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1BFF840438
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 12:01:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HX98Ewwu_9eh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Dec 2025 12:01:16 +0000 (UTC)
X-Greylist: delayed 304 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 15 Dec 2025 12:01:15 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1933640424
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1933640424
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.136.64.227;
 helo=mta-64-227.siemens.flowmailer.net;
 envelope-from=fm-1333436-202512151156079e6115dabb0002070f-pwvtom@rts-flowmailer.siemens.com;
 receiver=<UNKNOWN> 
Received: from mta-64-227.siemens.flowmailer.net
 (mta-64-227.siemens.flowmailer.net [185.136.64.227])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1933640424
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 12:01:15 +0000 (UTC)
Received: by mta-64-227.siemens.flowmailer.net with ESMTPSA id
 202512151156079e6115dabb0002070f
 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Dec 2025 12:56:08 +0100
From: Vivek Behera <vivek.behera@siemens.com>
To: aleksandr.loktionov@intel.com, jacob.e.keller@intel.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 maciej.fijalkowski@intel.com, sriram.yagnaraman@ericsson.com,
 kurt@linutronix.de
Cc: intel-wired-lan@lists.osuosl.org,
	vivek.behera@siemens.com
Date: Mon, 15 Dec 2025 12:54:16 +0100
Message-Id: <20251215115416.410619-1-vivek.behera@siemens.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1333436:519-21489:flowmailer
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; s=fm2; 
 d=siemens.com; i=vivek.behera@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=jStgpWwjcolV7vrixZyywrv3ukB+FW3NxzcPpegR6zs=;
 b=VFCXtwegGfxXcTpi/gNFJVezwrfH8YDr8BT87uTXCQWQnfO70H3ipxd9xaWPnURFaen074
 JkTcAs/q4y5osvRZv1HsEbj9iSxBlnCeNfr50sTGBTaVOJhCKd1kg5KhWwyaC8/ppz4/ZEmn
 c/GZhxEKJxhujv/Nxaebk6RRyyZZz1HBuhk9Xd2gK9ez9lu4Y0DLo+9TuhciAKoD91VjByQX
 DXgtJDV2HM2SoxM+mzlg5JzaSZq/Jzc5SsFwcmcGDfMTMTCQ7R+hVzztDjQSELWfTQrxUbML
 jdMBVLhuSZI7TIqMlF3W7L3I1uORwww5a4Fu9SL9TSvdd1IMONqxijug==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=vivek.behera@siemens.com
 header.a=rsa-sha256 header.s=fm2 header.b=VFCXtweg
Subject: [Intel-wired-lan] [PATCH iwl-net v2] igb: Fix trigger of incorrect
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
Reviewed-by: Aleksandr loktinov <aleksandr.loktionov@intel.com>
---
v1: https://lore.kernel.org/intel-wired-lan/20251212131454.124116-1-vivek.behera@siemens.com/

changelog:
v1
- Inital description of the Bug and fixes made in the patch

v1 -> v2
- Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ configuration
- Review by Aleksander: Modified sequence to complete all error checks for rx and tx
  before updating napi states and triggering irqs
- Corrected trigger of TX and RX interrupts over E1000_ICS (non msix use case)
- Added define for Tx interrupt trigger bit mask for E1000_ICS
---
 .../net/ethernet/intel/igb/e1000_defines.h    |  1 +
 drivers/net/ethernet/intel/igb/igb_xsk.c      | 98 +++++++++++++++++--
 2 files changed, 92 insertions(+), 7 deletions(-)

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
index 30ce5fbb5b77..d146ab629ef0 100644
--- a/drivers/net/ethernet/intel/igb/igb_xsk.c
+++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
@@ -529,6 +529,7 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
 	struct igb_adapter *adapter = netdev_priv(dev);
 	struct e1000_hw *hw = &adapter->hw;
 	struct igb_ring *ring;
+	struct igb_q_vector *q_vector;
 	u32 eics = 0;
 
 	if (test_bit(__IGB_DOWN, &adapter->state))
@@ -537,13 +538,91 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
 	if (!igb_xdp_is_enabled(adapter))
 		return -EINVAL;
 
-	if (qid >= adapter->num_tx_queues)
+	if ((flags & XDP_WAKEUP_RX) && (flags & XDP_WAKEUP_TX)) {
+		/* If both TX and RX need to be woken up */
+		/* check if queue pairs are active. */
+		if (adapter->flags & IGB_FLAG_QUEUE_PAIRS) {
+			/* Extract ring params from Rx. */
+			if (qid >= adapter->num_rx_queues)
+				return -EINVAL;
+			ring = adapter->rx_ring[qid];
+		} else {
+			/* Two irqs for Rx AND Tx need to be triggered */
+			u32 eics_tx = 0;
+			u32 eics_rx = 0;
+			struct napi_struct *rx_napi;
+			struct napi_struct *tx_napi;
+			bool trigger_irq_tx = false;
+			bool trigger_irq_rx = false;
+
+			if (qid >= adapter->num_rx_queues)
+				return -EINVAL;
+
+			if (qid >= adapter->num_tx_queues)
+				return -EINVAL;
+
+			/* IRQ trigger preparation for Rx */
+			ring = adapter->rx_ring[qid];
+			if (!ring->xsk_pool)
+				return -ENXIO;
+			q_vector = ring->q_vector;
+			rx_napi  = &q_vector->napi;
+			/* Extend the BIT mask for eics */
+			eics_rx |= ring->q_vector->eims_value;
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
+			eics_tx |= ring->q_vector->eims_value;
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
+					eics |= ring->q_vector->eims_value;
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
+		if (qid >= adapter->num_tx_queues)
+			return -EINVAL;
+		/* Get the ring params from Tx */
+		ring = adapter->tx_ring[qid];
+		if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
+			return -ENETDOWN;
+	} else if (flags & XDP_WAKEUP_RX) {
+		if (qid >= adapter->num_rx_queues)
+			return -EINVAL;
+		/* Get the ring params from Rx */
+		ring = adapter->rx_ring[qid];
+	} else {
+		/* Invalid Flags */
 		return -EINVAL;
-
-	ring = adapter->tx_ring[qid];
-
-	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
-		return -ENETDOWN;
+	}
 
 	if (!READ_ONCE(ring->xsk_pool))
 		return -EINVAL;
@@ -554,7 +633,12 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
 			eics |= ring->q_vector->eims_value;
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

