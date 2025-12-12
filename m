Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5376ECB8E2A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Dec 2025 14:20:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6282881281;
	Fri, 12 Dec 2025 13:20:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m9NWKLivri1e; Fri, 12 Dec 2025 13:20:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA96081D65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765545629;
	bh=v0xQvkIAFlqQLz0UR8ErnUu+CWFI8ZUJjHLqIX+rg9Y=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0rdHIePRffcsv9WsHab4C3kNJUGjxp25mw5C+Vh0B6/xXEGzndVoyxfAV231K7mmL
	 NbpqXwhtCatQGmy20nhj7XVfkwAedmSqk/UVyRnIq/E54dN7YZsFuTPOT5W2HMvYUZ
	 Zn5lwmXPZhX8JJdaWVr5uFv1RgDqiJHkswCE/PeSa63qLDdB8VWBU4ETZuVj8/3XZc
	 9kVRbMErnfTHWKvlKGGRFBIrvci5P7KfMWilr2AnwcqdYPVjpackliCpkxMpvJu2TD
	 6OuDl7UgE8xqBdcsmnMS/xumJv6zKgG3PKoe+ziNipywRRdT0Ph8JEkNpIuDZ8pDzY
	 rmsuR5DC5wcqA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA96081D65;
	Fri, 12 Dec 2025 13:20:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id BABED2C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 13:20:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A0F324118E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 13:20:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kYEzP-mSH0uh for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Dec 2025 13:20:26 +0000 (UTC)
X-Greylist: delayed 304 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 12 Dec 2025 13:20:25 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F1A5B4118D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F1A5B4118D
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.136.64.227;
 helo=mta-64-227.siemens.flowmailer.net;
 envelope-from=fm-1333436-20251212131517bd657071bc00020748-9kokon@rts-flowmailer.siemens.com;
 receiver=<UNKNOWN> 
Received: from mta-64-227.siemens.flowmailer.net
 (mta-64-227.siemens.flowmailer.net [185.136.64.227])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F1A5B4118D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 13:20:24 +0000 (UTC)
Received: by mta-64-227.siemens.flowmailer.net with ESMTPSA id
 20251212131517bd657071bc00020748
 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Dec 2025 14:15:17 +0100
From: Vivek Behera <vivek.behera@siemens.com>
To: aleksandr.loktionov@intel.com, jacob.e.keller@intel.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 maciej.fijalkowski@intel.com, sriram.yagnaraman@ericsson.com,
 kurt@linutronix.de
Cc: intel-wired-lan@lists.osuosl.org,
	vivek.behera@siemens.com
Date: Fri, 12 Dec 2025 14:14:54 +0100
Message-Id: <20251212131454.124116-1-vivek.behera@siemens.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1333436:519-21489:flowmailer
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; s=fm2; 
 d=siemens.com; i=vivek.behera@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=v0xQvkIAFlqQLz0UR8ErnUu+CWFI8ZUJjHLqIX+rg9Y=;
 b=fGWExih0w7h0QaeVEp6PfrDt96Y1KtT4TsFREJk/AC5RsXzkFM2Imsxc9i0eUP/CH8Us5p
 qdnWYF5LPmC+KjE65BqBvPTH1Dxh6OkjKHgmOYsCcU7v5hk8XCBDurU9c+SV3ZtTYP0Q5sJl
 rPGsPM2AMHeJLkZljk9DYWjaytGnG0ReoKVPZYbom+dtjzrYfXfXa6JYeRJSNgwtrbukFPzb
 z8a6tm99V9mINo45cirC83mCCS3oLDpQn7g+gbuawzALw6TZ0C/9bJUAyLzAGi2yojiNecwn
 FfQpXJ6Brl+o8U2UsKxQVSqtjHmL56BPu1qJkeTTWTCeRFFYlh8l/Bmw==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=vivek.behera@siemens.com
 header.a=rsa-sha256 header.s=fm2 header.b=fGWExih0
Subject: [Intel-wired-lan] [PATCH iwl-net v1] igb: Fix trigger of incorrect
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
 167:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0    0-edge      eno2
 168:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0    1-edge      eno2-rx-0
 169:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0    2-edge      eno2-rx-1
 170:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0    3-edge      eno2-tx-0
 171:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0    4-edge      eno2-tx-1

Furthermore it uses the flags input argument to trigger either rx, tx or
both rx and tx irqs as specified in the ndo_xsk_wakeup api documentation

Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and helpers")
Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
---
 drivers/net/ethernet/intel/igb/igb_xsk.c | 77 ++++++++++++++++++++++--
 1 file changed, 71 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/igb/igb_xsk.c
index 30ce5fbb5b77..9f23e6740640 100644
--- a/drivers/net/ethernet/intel/igb/igb_xsk.c
+++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
@@ -529,7 +529,9 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
 	struct igb_adapter *adapter = netdev_priv(dev);
 	struct e1000_hw *hw = &adapter->hw;
 	struct igb_ring *ring;
+	struct igb_q_vector *q_vector;
 	u32 eics = 0;
+	bool trigger_irq_no_msix = false;
 
 	if (test_bit(__IGB_DOWN, &adapter->state))
 		return -ENETDOWN;
@@ -537,13 +539,76 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
 	if (!igb_xdp_is_enabled(adapter))
 		return -EINVAL;
 
-	if (qid >= adapter->num_tx_queues)
-		return -EINVAL;
-
-	ring = adapter->tx_ring[qid];
+	if ((flags & XDP_WAKEUP_RX) && (flags & XDP_WAKEUP_TX)) {
+		/* If both TX and RX need to be woken up */
+		/* check if queue pairs are active. */
+		if ((adapter->flags & IGB_FLAG_QUEUE_PAIRS)) {
+			/* Extract ring params from Rx. */
+			if (qid >= adapter->num_rx_queues)
+				return -EINVAL;
+			ring = adapter->rx_ring[qid];
+		} else {
+			/* Two irqs for Rx AND Tx need to be triggered */
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
+
+			q_vector = ring->q_vector;
+			if (!napi_if_scheduled_mark_missed(&q_vector->napi)) {
+				/* Extend the BIT mask for eics */
+				if (adapter->flags & IGB_FLAG_HAS_MSIX)
+					eics |= ring->q_vector->eims_value;
+				else
+					trigger_irq_no_msix = true;
+			}
+			/* IRQ trigger preparation for Tx */
+			ring = adapter->tx_ring[qid];
+			if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
+				return -ENETDOWN;
+
+			if (!ring->xsk_pool)
+				return -ENXIO;
+
+			/* Retrieve the q_vector saved in the ring */
+			q_vector = ring->q_vector;
+			if (!napi_if_scheduled_mark_missed(&q_vector->napi)) {
+				/* Extend the BIT mask for eics */
+				if (adapter->flags & IGB_FLAG_HAS_MSIX)
+					eics |= ring->q_vector->eims_value;
+				else
+					trigger_irq_no_msix = true;
+			}
+			/* Now we trigger the split irqs for Rx and Tx over eics */
+			if (eics)
+				wr32(E1000_EICS, eics);
+			else if (trigger_irq_no_msix)
+				wr32(E1000_ICS, E1000_ICS_RXDMT0);
 
-	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
-		return -ENETDOWN;
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
+		return -EINVAL;
+	}
 
 	if (!READ_ONCE(ring->xsk_pool))
 		return -EINVAL;
-- 
2.34.1

