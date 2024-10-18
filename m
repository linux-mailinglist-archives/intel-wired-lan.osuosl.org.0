Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CAFF9A38C9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Oct 2024 10:40:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A439960AD0;
	Fri, 18 Oct 2024 08:40:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MI9sfjcwGVod; Fri, 18 Oct 2024 08:40:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 680B360ACB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729240818;
	bh=4vj4+7zQnr0qpPNcFDIF3nADIgFtRl4ND+JkIeZZpyo=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LIDUvPbuWVLEroyVdT4VijGzagRZ6jtUQ1+Z2AgkZmXn3hm56UhTsDdZzHuawoN57
	 XYgaj2/iTcWTmJimFlWFnZj0YFY895cfMBBQeliDxV1fOvtY2JPg1/9AKeKOXbAMHA
	 TPF8b8kEe2fYAx1ED29c+PZva6NSbTyu3qvCIq6rNT0u7gpG7dNu9d9RMlCE0oV1QX
	 L6J39y/v+c9TFlmRLs7yypnvb695M1WcYrBnccwLJR+wDgewz4oXdWIaVJbs+gyS/k
	 ngQsejW2oVBsLVJnVMHn1fdyOHFuzUeNgj6MFClNtC73lntQUhMIsmb7OMtsMJC+I1
	 vpUyCp549mRFg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 680B360ACB;
	Fri, 18 Oct 2024 08:40:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D20A52804
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 08:40:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C0CB160628
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 08:40:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tvPOHWuq7zI3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Oct 2024 08:40:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 583B56062F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 583B56062F
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 583B56062F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 08:40:14 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Fri, 18 Oct 2024 10:40:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241018-b4-igb_zero_copy-v9-6-da139d78d796@linutronix.de>
References: <20241018-b4-igb_zero_copy-v9-0-da139d78d796@linutronix.de>
In-Reply-To: <20241018-b4-igb_zero_copy-v9-0-da139d78d796@linutronix.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, 
 Daniel Borkmann <daniel@iogearbox.net>, 
 Jesper Dangaard Brouer <hawk@kernel.org>, 
 John Fastabend <john.fastabend@gmail.com>, 
 Richard Cochran <richardcochran@gmail.com>, 
 Sriram Yagnaraman <sriram.yagnaraman@ericsson.com>, 
 Benjamin Steinke <benjamin.steinke@woks-audio.com>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 bpf@vger.kernel.org, Sriram Yagnaraman <sriram.yagnaraman@est.tech>, 
 Kurt Kanzenbach <kurt@linutronix.de>
X-Developer-Signature: v=1; a=openpgp-sha256; l=9844; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=2VOrkHfABIRZuuqUvnmAIdU7/YEtW6QOicEf0xDcLEM=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBnEh7jOsfYkYvomE1ad11pClK8jqYdCVCug6N/R
 NiNMfZApq6JAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZxIe4wAKCRDBk9HyqkZz
 gohND/9Xc1d0XdlrZemsZXV9O8chTnoNiNqAk7KqRHZ/DBLvYMeIchUGPcyymeaSL+9GGrobPea
 OhutwWMYRyYrSAvyy2tQTsy4tZ8juJNnuekn/pr54ny0om2+H1j+URynHsfhc73daE6bn7+xYHx
 D7jkhPasECdWS/oBmAKsCPIvnDYoWq2FnDBmZg8PempmwbHY9mUGVEZFg0M4BY46R6xFbflg4ts
 J+zp0Bd93tVTBhMiPnzjzrqPGHuo2eLCIkHSJDIlmWvaqR+aKDjIgUs2ibJIc/Yi/swg4k+VlHm
 HUtb90wxSe74Tj02yfZV29mL4h1K+cfQL1jJgkDFBv4JtDKECFnrGwi63R1+bxzo3NqR/Nv87u2
 fsBZrVx1oWvkM6B7D57n64E9bmKYprCvJg1C3hLVVaW7lS5lo6p47xL4vAAOUsm1GG6HNossACW
 /8eNABdJzxoVOFw/i28X+MTKEwADIF8aZ6rqyt3UH2e3aZ3/pcgYt1/0MotJhCklXOmtYUaFpdh
 rtMHRJ8CILKj1Y/HaFVzLLJx730mf0ogd8moMnduFvTz+MFAXb7l8ajbFQCSagiYAbj3ypfSc2w
 iENg7+M935DxwhMaopHcNaXBBqLbTuBjvSuY9NY70hnpXHh09ssBP2hpmn4xDm43oApuvBY/VqD
 e/zjQ9q28pgL1nQ==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1729240812;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4vj4+7zQnr0qpPNcFDIF3nADIgFtRl4ND+JkIeZZpyo=;
 b=YWJtcxLUOSqhufC69cBU/U5CkNvriPglLxz16cGNT25GWVNy7/VXMtXCLCSNU/2q7SgM6/
 RPW/CkvjtNmLWsW3k6PuqOsXGL0lM4Vz/b2CR2GeEaqhgjhJFfHXDsky9aF1FPE6lHX/g5
 7kkj33mqAFFz0K5tYL6KBkop9DNpyJnwWmJec1xi11tyXtPOSgzLVVaBvw3FnxCiOVu0FB
 uc1X6iWW+DMTMkXxwX2oaoLdrYAJM+2Hui4fPeUWgug6Oa/k4UL9cdmohhbMYEQtUaJnDL
 diCS8ZrlVlyhR5Z2xklLEY0c1FTsk0Roud0lE14AgPk7D9o/AkhkJyo8brvaUA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1729240812;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4vj4+7zQnr0qpPNcFDIF3nADIgFtRl4ND+JkIeZZpyo=;
 b=kG8/CkPD59fJiTR4X/zl6qq1ZQfYFXClDK29pZ64OrfFscoUAT/Q1t3RCI6rcbBIq8158K
 YI+QhoxumAk2m2BA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=YWJtcxLU; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=kG8/CkPD
Subject: [Intel-wired-lan] [PATCH iwl-next v9 6/6] igb: Add AF_XDP zero-copy
 Tx support
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

From: Sriram Yagnaraman <sriram.yagnaraman@est.tech>

Add support for AF_XDP zero-copy transmit path.

A new TX buffer type IGB_TYPE_XSK is introduced to indicate that the Tx
frame was allocated from the xsk buff pool, so igb_clean_tx_ring() and
igb_clean_tx_irq() can clean the buffers correctly based on type.

igb_xmit_zc() performs the actual packet transmit when AF_XDP zero-copy is
enabled. We share the TX ring between slow path, XDP and AF_XDP
zero-copy, so we use the netdev queue lock to ensure mutual exclusion.

Signed-off-by: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
[Kurt: Set olinfo_status in igb_xmit_zc() so that frames are transmitted,
       Use READ_ONCE() for xsk_pool and check Tx disabled and carrier in
       igb_xmit_zc(), Add FIXME for RS bit]
Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/igb/igb.h      |  2 +
 drivers/net/ethernet/intel/igb/igb_main.c | 61 +++++++++++++++++++++++++-----
 drivers/net/ethernet/intel/igb/igb_xsk.c  | 63 +++++++++++++++++++++++++++++++
 3 files changed, 116 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
index e4a85867aa18..02f340280d20 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -258,6 +258,7 @@ enum igb_tx_flags {
 enum igb_tx_buf_type {
 	IGB_TYPE_SKB = 0,
 	IGB_TYPE_XDP,
+	IGB_TYPE_XSK
 };
 
 /* wrapper around a pointer to a socket buffer,
@@ -859,6 +860,7 @@ bool igb_alloc_rx_buffers_zc(struct igb_ring *rx_ring,
 void igb_clean_rx_ring_zc(struct igb_ring *rx_ring);
 int igb_clean_rx_irq_zc(struct igb_q_vector *q_vector,
 			struct xsk_buff_pool *xsk_pool, const int budget);
+bool igb_xmit_zc(struct igb_ring *tx_ring, struct xsk_buff_pool *xsk_pool);
 int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags);
 
 #endif /* _IGB_H_ */
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 711b60cab594..4587877d1761 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -2979,6 +2979,9 @@ static int igb_xdp_xmit(struct net_device *dev, int n,
 	if (unlikely(!tx_ring))
 		return -ENXIO;
 
+	if (unlikely(test_bit(IGB_RING_FLAG_TX_DISABLED, &tx_ring->flags)))
+		return -ENXIO;
+
 	nq = txring_txq(tx_ring);
 	__netif_tx_lock(nq, cpu);
 
@@ -3326,7 +3329,8 @@ static int igb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	netdev->priv_flags |= IFF_SUPP_NOFCS;
 
 	netdev->priv_flags |= IFF_UNICAST_FLT;
-	netdev->xdp_features = NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIRECT;
+	netdev->xdp_features = NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIRECT |
+			       NETDEV_XDP_ACT_XSK_ZEROCOPY;
 
 	/* MTU range: 68 - 9216 */
 	netdev->min_mtu = ETH_MIN_MTU;
@@ -4900,15 +4904,20 @@ void igb_clean_tx_ring(struct igb_ring *tx_ring)
 {
 	u16 i = tx_ring->next_to_clean;
 	struct igb_tx_buffer *tx_buffer = &tx_ring->tx_buffer_info[i];
+	u32 xsk_frames = 0;
 
 	while (i != tx_ring->next_to_use) {
 		union e1000_adv_tx_desc *eop_desc, *tx_desc;
 
 		/* Free all the Tx ring sk_buffs or xdp frames */
-		if (tx_buffer->type == IGB_TYPE_SKB)
+		if (tx_buffer->type == IGB_TYPE_SKB) {
 			dev_kfree_skb_any(tx_buffer->skb);
-		else
+		} else if (tx_buffer->type == IGB_TYPE_XDP) {
 			xdp_return_frame(tx_buffer->xdpf);
+		} else if (tx_buffer->type == IGB_TYPE_XSK) {
+			xsk_frames++;
+			goto skip_for_xsk;
+		}
 
 		/* unmap skb header data */
 		dma_unmap_single(tx_ring->dev,
@@ -4939,6 +4948,7 @@ void igb_clean_tx_ring(struct igb_ring *tx_ring)
 					       DMA_TO_DEVICE);
 		}
 
+skip_for_xsk:
 		tx_buffer->next_to_watch = NULL;
 
 		/* move us one more past the eop_desc for start of next pkt */
@@ -4953,6 +4963,9 @@ void igb_clean_tx_ring(struct igb_ring *tx_ring)
 	/* reset BQL for queue */
 	netdev_tx_reset_queue(txring_txq(tx_ring));
 
+	if (tx_ring->xsk_pool && xsk_frames)
+		xsk_tx_completed(tx_ring->xsk_pool, xsk_frames);
+
 	/* reset next_to_use and next_to_clean */
 	tx_ring->next_to_use = 0;
 	tx_ring->next_to_clean = 0;
@@ -6486,6 +6499,9 @@ netdev_tx_t igb_xmit_frame_ring(struct sk_buff *skb,
 		return NETDEV_TX_BUSY;
 	}
 
+	if (unlikely(test_bit(IGB_RING_FLAG_TX_DISABLED, &tx_ring->flags)))
+		return NETDEV_TX_BUSY;
+
 	/* record the location of the first descriptor for this packet */
 	first = &tx_ring->tx_buffer_info[tx_ring->next_to_use];
 	first->type = IGB_TYPE_SKB;
@@ -8260,13 +8276,18 @@ static int igb_poll(struct napi_struct *napi, int budget)
  **/
 static bool igb_clean_tx_irq(struct igb_q_vector *q_vector, int napi_budget)
 {
-	struct igb_adapter *adapter = q_vector->adapter;
-	struct igb_ring *tx_ring = q_vector->tx.ring;
-	struct igb_tx_buffer *tx_buffer;
-	union e1000_adv_tx_desc *tx_desc;
 	unsigned int total_bytes = 0, total_packets = 0;
+	struct igb_adapter *adapter = q_vector->adapter;
 	unsigned int budget = q_vector->tx.work_limit;
+	struct igb_ring *tx_ring = q_vector->tx.ring;
 	unsigned int i = tx_ring->next_to_clean;
+	union e1000_adv_tx_desc *tx_desc;
+	struct igb_tx_buffer *tx_buffer;
+	struct xsk_buff_pool *xsk_pool;
+	int cpu = smp_processor_id();
+	bool xsk_xmit_done = true;
+	struct netdev_queue *nq;
+	u32 xsk_frames = 0;
 
 	if (test_bit(__IGB_DOWN, &adapter->state))
 		return true;
@@ -8297,10 +8318,14 @@ static bool igb_clean_tx_irq(struct igb_q_vector *q_vector, int napi_budget)
 		total_packets += tx_buffer->gso_segs;
 
 		/* free the skb */
-		if (tx_buffer->type == IGB_TYPE_SKB)
+		if (tx_buffer->type == IGB_TYPE_SKB) {
 			napi_consume_skb(tx_buffer->skb, napi_budget);
-		else
+		} else if (tx_buffer->type == IGB_TYPE_XDP) {
 			xdp_return_frame(tx_buffer->xdpf);
+		} else if (tx_buffer->type == IGB_TYPE_XSK) {
+			xsk_frames++;
+			goto skip_for_xsk;
+		}
 
 		/* unmap skb header data */
 		dma_unmap_single(tx_ring->dev,
@@ -8332,6 +8357,7 @@ static bool igb_clean_tx_irq(struct igb_q_vector *q_vector, int napi_budget)
 			}
 		}
 
+skip_for_xsk:
 		/* move us one more past the eop_desc for start of next pkt */
 		tx_buffer++;
 		tx_desc++;
@@ -8360,6 +8386,21 @@ static bool igb_clean_tx_irq(struct igb_q_vector *q_vector, int napi_budget)
 	q_vector->tx.total_bytes += total_bytes;
 	q_vector->tx.total_packets += total_packets;
 
+	xsk_pool = READ_ONCE(tx_ring->xsk_pool);
+	if (xsk_pool) {
+		if (xsk_frames)
+			xsk_tx_completed(xsk_pool, xsk_frames);
+		if (xsk_uses_need_wakeup(xsk_pool))
+			xsk_set_tx_need_wakeup(xsk_pool);
+
+		nq = txring_txq(tx_ring);
+		__netif_tx_lock(nq, cpu);
+		/* Avoid transmit queue timeout since we share it with the slow path */
+		txq_trans_cond_update(nq);
+		xsk_xmit_done = igb_xmit_zc(tx_ring, xsk_pool);
+		__netif_tx_unlock(nq);
+	}
+
 	if (test_bit(IGB_RING_FLAG_TX_DETECT_HANG, &tx_ring->flags)) {
 		struct e1000_hw *hw = &adapter->hw;
 
@@ -8422,7 +8463,7 @@ static bool igb_clean_tx_irq(struct igb_q_vector *q_vector, int napi_budget)
 		}
 	}
 
-	return !!budget;
+	return !!budget && xsk_xmit_done;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/igb/igb_xsk.c
index 3d64a9f6360c..157d43787fa0 100644
--- a/drivers/net/ethernet/intel/igb/igb_xsk.c
+++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
@@ -461,6 +461,69 @@ int igb_clean_rx_irq_zc(struct igb_q_vector *q_vector,
 	return failure ? budget : (int)total_packets;
 }
 
+bool igb_xmit_zc(struct igb_ring *tx_ring, struct xsk_buff_pool *xsk_pool)
+{
+	unsigned int budget = igb_desc_unused(tx_ring);
+	u32 cmd_type, olinfo_status, nb_pkts, i = 0;
+	struct xdp_desc *descs = xsk_pool->tx_descs;
+	union e1000_adv_tx_desc *tx_desc = NULL;
+	struct igb_tx_buffer *tx_buffer_info;
+	unsigned int total_bytes = 0;
+	dma_addr_t dma;
+
+	if (!netif_carrier_ok(tx_ring->netdev))
+		return true;
+
+	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &tx_ring->flags))
+		return true;
+
+	nb_pkts = xsk_tx_peek_release_desc_batch(xsk_pool, budget);
+	if (!nb_pkts)
+		return true;
+
+	while (nb_pkts-- > 0) {
+		dma = xsk_buff_raw_get_dma(xsk_pool, descs[i].addr);
+		xsk_buff_raw_dma_sync_for_device(xsk_pool, dma, descs[i].len);
+
+		tx_buffer_info = &tx_ring->tx_buffer_info[tx_ring->next_to_use];
+		tx_buffer_info->bytecount = descs[i].len;
+		tx_buffer_info->type = IGB_TYPE_XSK;
+		tx_buffer_info->xdpf = NULL;
+		tx_buffer_info->gso_segs = 1;
+		tx_buffer_info->time_stamp = jiffies;
+
+		tx_desc = IGB_TX_DESC(tx_ring, tx_ring->next_to_use);
+		tx_desc->read.buffer_addr = cpu_to_le64(dma);
+
+		/* put descriptor type bits */
+		cmd_type = E1000_ADVTXD_DTYP_DATA | E1000_ADVTXD_DCMD_DEXT |
+			   E1000_ADVTXD_DCMD_IFCS;
+		olinfo_status = descs[i].len << E1000_ADVTXD_PAYLEN_SHIFT;
+
+		/* FIXME: This sets the Report Status (RS) bit for every
+		 * descriptor. One nice to have optimization would be to set it
+		 * only for the last descriptor in the whole batch. See Intel
+		 * ice driver for an example on how to do it.
+		 */
+		cmd_type |= descs[i].len | IGB_TXD_DCMD;
+		tx_desc->read.cmd_type_len = cpu_to_le32(cmd_type);
+		tx_desc->read.olinfo_status = cpu_to_le32(olinfo_status);
+
+		total_bytes += descs[i].len;
+
+		i++;
+		tx_ring->next_to_use++;
+		tx_buffer_info->next_to_watch = tx_desc;
+		if (tx_ring->next_to_use == tx_ring->count)
+			tx_ring->next_to_use = 0;
+	}
+
+	netdev_tx_sent_queue(txring_txq(tx_ring), total_bytes);
+	igb_xdp_ring_update_tail(tx_ring);
+
+	return nb_pkts < budget;
+}
+
 int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
 {
 	struct igb_adapter *adapter = netdev_priv(dev);

-- 
2.39.5

