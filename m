Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 54666954561
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Aug 2024 11:24:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 27C4060E24;
	Fri, 16 Aug 2024 09:24:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m79zbosDNdQi; Fri, 16 Aug 2024 09:24:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F4A8605AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723800259;
	bh=7yG1ACRnHrh+YmajwvU3e4DURwq84JBWecStQNpiZO0=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=725zmv2HsYX3ibWgvf+YHH4Z1ugvAjU7s/+OPxGCzg308VDOLroGL9LfB5ZCWsN/9
	 FuwMecIa5Acx6SutlEnWV6pap1WtI1uf478HGih9Cnh42LG3Q4CLM985xtfQZi7QUm
	 dCJ+UgX+KgmaX/prZoOWPP5NPfxrYAAiSB5+ktG8r1ZWLdcrsaCZ4SOTpa+BrWodNf
	 q1yid0ulYAq8220141BGOsYARvPIm15d/i98u+2iGAKHr+gHsK0nbEj/7tSuVjVdeO
	 xGPDsnqwCFC4J8Rl1KGbQ/nWYaCpfdvPXu39xWBEPZuOwbYL306gJxo/KloivV9tif
	 nN2F0SkaxUBFw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1F4A8605AD;
	Fri, 16 Aug 2024 09:24:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 65B251BF292
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 09:24:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5D46760B23
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 09:24:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YD_3B7_UggH0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Aug 2024 09:24:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 10410605AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 10410605AD
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 10410605AD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 09:24:10 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Fri, 16 Aug 2024 11:24:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240711-b4-igb_zero_copy-v6-6-4bfb68773b18@linutronix.de>
References: <20240711-b4-igb_zero_copy-v6-0-4bfb68773b18@linutronix.de>
In-Reply-To: <20240711-b4-igb_zero_copy-v6-0-4bfb68773b18@linutronix.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=9478; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=PefxL3kNeXOYDdUS68qN4pno+ulpwpgKURF3sXGr9k8=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBmvxqzU7muPTaFHW2Pgk7wZGebNbY9HBNHH+Quv
 K9mDzC43SyJAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZr8aswAKCRDBk9HyqkZz
 gjHpD/9+09Nuvt2YDrqFYYj7W5xYTx+eHuDfQPxI6K8sx+6gXsAF9a50SkEP0jOxwj8bN1r9lzz
 Hb4XghlhK5sp5V3iRpAgrr+dXG166263lBWhSNpaC1JEilZeT9ctxkSfyHD/FPEBH9CzD3H4FW5
 WUmxE+fBZx4rW7nkWoBry2tAVgTE2PnEDDA2XucX32HsNrR4qso9AL+DLeTjyx8rCX8ZezCYl28
 CyJe1OGHbIEo9R2CSMTRWk8NhvSyvAU/UX4kfTEl8ByXgqh2CrIwHL3aXblaT5rZTnGF2550RiG
 43cWOP5+R3npgl2BlFDZotDqMk1yNhfQECUy1m7unS3dD+IK73QARB9A5Xshmkrnt1juBpdhIof
 sdL5E7fUCcSlzlTZ0jXdFmhA3Umr/9qcKz/vKPZGbKZRYQMoz21BelcrgYgcsYpq3FaQePBiVMg
 yGjjQgClcobR2oV8PTqwo1W3A+ydaKevMtQrt5j5EUjx/qucjA036To7ZBzbHMYwLJcoBJiUUhO
 eAOnb1oeZuzJbaHPTFuipHa9NYIchKh0fYi66tJD6jRR0WhlGtEzt3YmHanIPAdPVxd9CHMMEn9
 p00LLzcp3+6q5H6qENr5EVP/yKkvh4n4uLt2CI5A5N6zMgh329p48ab261dfF3FJU3EpLFPLcAN
 ViIFr/jdfNS2rrg==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1723800249;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7yG1ACRnHrh+YmajwvU3e4DURwq84JBWecStQNpiZO0=;
 b=HVWzGKccULbwPqp6Cs7IGtziZFaPA243AJgPE1u4aZ0r20cXJ/zB20TcauMqwxoMsp6ZVm
 cxRMKnOqie9JU+RW1kVWMV/zKEFtVBGYzxBiH8q/HtayPWQXkLBhzumH0UB+9IVQULgqKP
 lPCQoZfMCcfgo22Fp/rSoAgi8/5soAg+KkfLPCCgBeW1NW1hmWa8w9gVGLa0EUmtlouegP
 JkUrvorZVjilsI+4vMZ0e39nxPjXJXEnD54KqSNERFZhXRE7MaOQ0LgUA7e5ydnUuMplMD
 4f5SfBl599GX0dYIwS5CIFjUrEtkk7ic5iSIzFw3mWpiWvvexd5uDc9/WShjiA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1723800249;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7yG1ACRnHrh+YmajwvU3e4DURwq84JBWecStQNpiZO0=;
 b=US96cqC4CIODqTZ2mnakBwdJZiKIk4t+HQYnPjo7N/xkRmg59FKm+2gvfnIm6wJKu0/7Fm
 Y7Dr87HFAhHdfkCw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=HVWzGKcc; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=US96cqC4
Subject: [Intel-wired-lan] [PATCH iwl-next v6 6/6] igb: Add AF_XDP zero-copy
 Tx support
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Sriram Yagnaraman <sriram.yagnaraman@ericsson.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Benjamin Steinke <benjamin.steinke@woks-audio.com>,
 Eric Dumazet <edumazet@google.com>,
 Sriram Yagnaraman <sriram.yagnaraman@est.tech>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
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
       igb_xmit_zc()]
Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igb/igb.h      |  2 +
 drivers/net/ethernet/intel/igb/igb_main.c | 61 ++++++++++++++++++++++++++-----
 drivers/net/ethernet/intel/igb/igb_xsk.c  | 59 ++++++++++++++++++++++++++++++
 3 files changed, 112 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
index 348f32f4c11c..cd8b68eb2eea 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -257,6 +257,7 @@ enum igb_tx_flags {
 enum igb_tx_buf_type {
 	IGB_TYPE_SKB = 0,
 	IGB_TYPE_XDP,
+	IGB_TYPE_XSK
 };
 
 /* wrapper around a pointer to a socket buffer,
@@ -837,6 +838,7 @@ bool igb_alloc_rx_buffers_zc(struct igb_ring *rx_ring, u16 count);
 void igb_clean_rx_ring_zc(struct igb_ring *rx_ring);
 int igb_clean_rx_irq_zc(struct igb_q_vector *q_vector,
 			struct xsk_buff_pool *xsk_pool, const int budget);
+bool igb_xmit_zc(struct igb_ring *tx_ring);
 int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags);
 
 #endif /* _IGB_H_ */
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 063ba0144dfd..c6d54b5a9688 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -2998,6 +2998,9 @@ static int igb_xdp_xmit(struct net_device *dev, int n,
 	if (unlikely(!tx_ring))
 		return -ENXIO;
 
+	if (unlikely(test_bit(IGB_RING_FLAG_TX_DISABLED, &tx_ring->flags)))
+		return -ENXIO;
+
 	nq = txring_txq(tx_ring);
 	__netif_tx_lock(nq, cpu);
 
@@ -3345,7 +3348,8 @@ static int igb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	netdev->priv_flags |= IFF_SUPP_NOFCS;
 
 	netdev->priv_flags |= IFF_UNICAST_FLT;
-	netdev->xdp_features = NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIRECT;
+	netdev->xdp_features = NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIRECT |
+			       NETDEV_XDP_ACT_XSK_ZEROCOPY;
 
 	/* MTU range: 68 - 9216 */
 	netdev->min_mtu = ETH_MIN_MTU;
@@ -4918,15 +4922,20 @@ void igb_clean_tx_ring(struct igb_ring *tx_ring)
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
@@ -4957,6 +4966,7 @@ void igb_clean_tx_ring(struct igb_ring *tx_ring)
 					       DMA_TO_DEVICE);
 		}
 
+skip_for_xsk:
 		tx_buffer->next_to_watch = NULL;
 
 		/* move us one more past the eop_desc for start of next pkt */
@@ -4971,6 +4981,9 @@ void igb_clean_tx_ring(struct igb_ring *tx_ring)
 	/* reset BQL for queue */
 	netdev_tx_reset_queue(txring_txq(tx_ring));
 
+	if (tx_ring->xsk_pool && xsk_frames)
+		xsk_tx_completed(tx_ring->xsk_pool, xsk_frames);
+
 	/* reset next_to_use and next_to_clean */
 	tx_ring->next_to_use = 0;
 	tx_ring->next_to_clean = 0;
@@ -6504,6 +6517,9 @@ netdev_tx_t igb_xmit_frame_ring(struct sk_buff *skb,
 		return NETDEV_TX_BUSY;
 	}
 
+	if (unlikely(test_bit(IGB_RING_FLAG_TX_DISABLED, &tx_ring->flags)))
+		return NETDEV_TX_BUSY;
+
 	/* record the location of the first descriptor for this packet */
 	first = &tx_ring->tx_buffer_info[tx_ring->next_to_use];
 	first->type = IGB_TYPE_SKB;
@@ -8268,13 +8284,18 @@ static int igb_poll(struct napi_struct *napi, int budget)
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
@@ -8305,10 +8326,14 @@ static bool igb_clean_tx_irq(struct igb_q_vector *q_vector, int napi_budget)
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
@@ -8340,6 +8365,7 @@ static bool igb_clean_tx_irq(struct igb_q_vector *q_vector, int napi_budget)
 			}
 		}
 
+skip_for_xsk:
 		/* move us one more past the eop_desc for start of next pkt */
 		tx_buffer++;
 		tx_desc++;
@@ -8368,6 +8394,21 @@ static bool igb_clean_tx_irq(struct igb_q_vector *q_vector, int napi_budget)
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
+		xsk_xmit_done = igb_xmit_zc(tx_ring);
+		__netif_tx_unlock(nq);
+	}
+
 	if (test_bit(IGB_RING_FLAG_TX_DETECT_HANG, &tx_ring->flags)) {
 		struct e1000_hw *hw = &adapter->hw;
 
@@ -8430,7 +8471,7 @@ static bool igb_clean_tx_irq(struct igb_q_vector *q_vector, int napi_budget)
 		}
 	}
 
-	return !!budget;
+	return !!budget && xsk_xmit_done;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/igb/igb_xsk.c
index 2ae16ae99193..52602ef25321 100644
--- a/drivers/net/ethernet/intel/igb/igb_xsk.c
+++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
@@ -464,6 +464,65 @@ int igb_clean_rx_irq_zc(struct igb_q_vector *q_vector,
 	return failure ? budget : (int)total_packets;
 }
 
+bool igb_xmit_zc(struct igb_ring *tx_ring)
+{
+	unsigned int budget = igb_desc_unused(tx_ring);
+	struct xsk_buff_pool *pool = tx_ring->xsk_pool;
+	u32 cmd_type, olinfo_status, nb_pkts, i = 0;
+	struct xdp_desc *descs = pool->tx_descs;
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
+	nb_pkts = xsk_tx_peek_release_desc_batch(pool, budget);
+	if (!nb_pkts)
+		return true;
+
+	while (nb_pkts-- > 0) {
+		dma = xsk_buff_raw_get_dma(pool, descs[i].addr);
+		xsk_buff_raw_dma_sync_for_device(pool, dma, descs[i].len);
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
2.39.2

