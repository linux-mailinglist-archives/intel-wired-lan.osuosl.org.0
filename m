Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C421954562
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Aug 2024 11:24:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3750E605B7;
	Fri, 16 Aug 2024 09:24:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U_wnDDWFi8zU; Fri, 16 Aug 2024 09:24:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C0A1605AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723800260;
	bh=ZaR8iEzX7KBsYHzVBJx2Y4+FMFVonSVh7MepxUI1Uo4=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qIynhl10rP5Q5QzUhl359Q/8oT+aOS4Hin0YANDZw2A8LPPBILrLRwhThc46+Mxi6
	 a8cYDwt0NMlYJsecluORg8NjiLwQcIDRVAoqtDiqzmG5zdiexlHyE9bwmfijbfMh/Y
	 4EQlE5H2/0ZKhnYVqg4pm7mMAV20ZIVbqxSP8J2/i+r31K2Fa7FT0V3tTDQmBpgj09
	 ZK/HvsAwff0kuT/RG0cSY2n1y2pSGAIyK9avkLt/xcr+SPD3d/fMEU9DAvqALqNzFu
	 btkR7EZA/DTxk9QdfsoQBqUBLzuwY2p+NDZpHygpaXOKYvqEUNUJUjqy4ZXcFzDWBa
	 YbxUEoBS9i6TA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C0A1605AD;
	Fri, 16 Aug 2024 09:24:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 67DED1BF292
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 09:24:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 61D5C4010D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 09:24:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nkCNqSlXh6pk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Aug 2024 09:24:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 238A840512
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 238A840512
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 238A840512
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 09:24:11 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Fri, 16 Aug 2024 11:24:04 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240711-b4-igb_zero_copy-v6-5-4bfb68773b18@linutronix.de>
References: <20240711-b4-igb_zero_copy-v6-0-4bfb68773b18@linutronix.de>
In-Reply-To: <20240711-b4-igb_zero_copy-v6-0-4bfb68773b18@linutronix.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=19393; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=5r7fS6lGQuqUz3aHw5lemeFtOV/4tvxLVskoSIdYHa0=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBmvxqz8NDUVHsYSs0i2+MCnLVG5r7xnbhHo20B2
 rKJ9Mv0MHSJAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZr8aswAKCRDBk9HyqkZz
 guK0D/9YawkZ7tnQN/npgs6ZWQ6X/0Qz3dqS+iCXuLoYyluO+cB+JHpltGOw3sCY2eJci5/yA2y
 fvPGW/VYr8Nu5/dJP4Z2Qe7uPrd6FZVsx855hVt5ki9nfZoNLSDsXcJiK81xnYXTWR66HyDhPtF
 kQCQ86cXhh6faYbW6poF+9bzpHWrLcngkSwZgECrJe2PYsSaYSfVTPF/lIHIrJv/ZrWJ6yzcJC6
 A9xsGl+DYOkMoHcv2F8uO6MhJ0FncrEdNt8VPDqQ/SHShJbW+wzyHdHeIV4cWQhZN/in/dgBbi3
 hYNEeCSjTXuEQ/R4QJqTHw4WrI/RncyJv3LJqPLd6xkjYjxIlINa8me+7gZ0ETZtxLUZk/mXWBa
 e36VnxjNuLl8jIb8PgA7UHafnqv92bWVIB1MTyhh9WjspsocEKSKIdJAp4NmTMO7GuFeNjfOx8P
 8VHuSamZ2xMcdpOnPJkX63dIeFhUYY1FQHF7o2AQl3Fxs7WgFBUAh+R6G5cfFNHvZ+eQxmjhpbE
 tL2qOns/o5gJZJbJdvK6f5jlCEzat5uNCTB2tfGrGdE39mbYlYVYuV5V4vZ6oWR45cJtKbSrKSq
 C0/i8N59z7Cumj4CTZOFqTRe+puM8FL+boe6nsaX78s3SEEUyn6B2q0gvaeqcD4avA5uvzIrbbs
 nCLf1FnolYJCLMg==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1723800248;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZaR8iEzX7KBsYHzVBJx2Y4+FMFVonSVh7MepxUI1Uo4=;
 b=MkgQU6nJO/UmNWYpuy7ipYwVolmNY2F/g/WO2QaRvKkK6bwBI3AO1wqKkA//jvXLck8aGT
 owPYoM+IwfuULYkL7MuGe8dCL99dZ0uG1zVJX8QTsxMyesohI7ETRh8jEt59lcUR8Eqi+E
 MNaca1zDPrrz1jg+HNsKZDNM0NdGgGeoLnjnGNeQRTR+FwFRf3dmP1fTH9HWKjf8jqOfgz
 JoM3Tu9lPQBsl7FGtG7bff+1+ObEO9z9dNsUNqK+Oz6a9JuZfFQFl4hn3TUAhlf/Wb4F/+
 TElNvgw7pwbzvLYiYjhj3pHDF1fnmSwVFb3PElTdxj3N6X7A4BmLCUUw+LdKlg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1723800248;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZaR8iEzX7KBsYHzVBJx2Y4+FMFVonSVh7MepxUI1Uo4=;
 b=eZObyBYcV4umnHOEWZlnW8ficzoDiglcy3hyQAkBnIf4ACZ/6JHgyqjcY+5JnnhbB73hKf
 Um7DcqtsVLAKv3Bw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=MkgQU6nJ; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=eZObyBYc
Subject: [Intel-wired-lan] [PATCH iwl-next v6 5/6] igb: Add AF_XDP zero-copy
 Rx support
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

Add support for AF_XDP zero-copy receive path.

When AF_XDP zero-copy is enabled, the rx buffers are allocated from the
xsk buff pool using igb_alloc_rx_buffers_zc().

Use xsk_pool_get_rx_frame_size() to set SRRCTL rx buf size when zero-copy
is enabled.

Signed-off-by: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
[Kurt: Port to v6.10 and provide napi_id for xdp_rxq_info_reg(),
       RCT, remove NETDEV_XDP_ACT_XSK_ZEROCOPY, update NTC handling,
       move stats update and xdp finalize to common functions,
       READ_ONCE() xsk_pool, likelyfy for XDP_REDIRECT case]
Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igb/igb.h      |   8 +
 drivers/net/ethernet/intel/igb/igb_main.c | 132 +++++++++----
 drivers/net/ethernet/intel/igb/igb_xsk.c  | 297 +++++++++++++++++++++++++++++-
 3 files changed, 399 insertions(+), 38 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
index 8db5b44b4576..348f32f4c11c 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -87,6 +87,7 @@ struct igb_adapter;
 #define IGB_XDP_CONSUMED	BIT(0)
 #define IGB_XDP_TX		BIT(1)
 #define IGB_XDP_REDIR		BIT(2)
+#define IGB_XDP_EXIT		BIT(3)
 
 struct vf_data_storage {
 	unsigned char vf_mac_addresses[ETH_ALEN];
@@ -741,6 +742,9 @@ void igb_clean_tx_ring(struct igb_ring *tx_ring);
 void igb_clean_rx_ring(struct igb_ring *rx_ring);
 void igb_configure_tx_ring(struct igb_adapter *, struct igb_ring *);
 void igb_configure_rx_ring(struct igb_adapter *, struct igb_ring *);
+void igb_finalize_xdp(struct igb_adapter *adapter, unsigned int status);
+void igb_update_rx_stats(struct igb_q_vector *q_vector, unsigned int packets,
+			 unsigned int bytes);
 void igb_setup_tctl(struct igb_adapter *);
 void igb_setup_rctl(struct igb_adapter *);
 void igb_setup_srrctl(struct igb_adapter *, struct igb_ring *);
@@ -829,6 +833,10 @@ struct xsk_buff_pool *igb_xsk_pool(struct igb_adapter *adapter,
 int igb_xsk_pool_setup(struct igb_adapter *adapter,
 		       struct xsk_buff_pool *pool,
 		       u16 qid);
+bool igb_alloc_rx_buffers_zc(struct igb_ring *rx_ring, u16 count);
+void igb_clean_rx_ring_zc(struct igb_ring *rx_ring);
+int igb_clean_rx_irq_zc(struct igb_q_vector *q_vector,
+			struct xsk_buff_pool *xsk_pool, const int budget);
 int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags);
 
 #endif /* _IGB_H_ */
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 9234c768a600..063ba0144dfd 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -472,12 +472,17 @@ static void igb_dump(struct igb_adapter *adapter)
 
 		for (i = 0; i < rx_ring->count; i++) {
 			const char *next_desc;
-			struct igb_rx_buffer *buffer_info;
-			buffer_info = &rx_ring->rx_buffer_info[i];
+			dma_addr_t dma = (dma_addr_t)0;
+			struct igb_rx_buffer *buffer_info = NULL;
 			rx_desc = IGB_RX_DESC(rx_ring, i);
 			u0 = (struct my_u0 *)rx_desc;
 			staterr = le32_to_cpu(rx_desc->wb.upper.status_error);
 
+			if (!rx_ring->xsk_pool) {
+				buffer_info = &rx_ring->rx_buffer_info[i];
+				dma = buffer_info->dma;
+			}
+
 			if (i == rx_ring->next_to_use)
 				next_desc = " NTU";
 			else if (i == rx_ring->next_to_clean)
@@ -497,11 +502,11 @@ static void igb_dump(struct igb_adapter *adapter)
 					"R  ", i,
 					le64_to_cpu(u0->a),
 					le64_to_cpu(u0->b),
-					(u64)buffer_info->dma,
+					(u64)dma,
 					next_desc);
 
 				if (netif_msg_pktdata(adapter) &&
-				    buffer_info->dma && buffer_info->page) {
+				    buffer_info && dma && buffer_info->page) {
 					print_hex_dump(KERN_INFO, "",
 					  DUMP_PREFIX_ADDRESS,
 					  16, 1,
@@ -1983,7 +1988,10 @@ static void igb_configure(struct igb_adapter *adapter)
 	 */
 	for (i = 0; i < adapter->num_rx_queues; i++) {
 		struct igb_ring *ring = adapter->rx_ring[i];
-		igb_alloc_rx_buffers(ring, igb_desc_unused(ring));
+		if (ring->xsk_pool)
+			igb_alloc_rx_buffers_zc(ring, igb_desc_unused(ring));
+		else
+			igb_alloc_rx_buffers(ring, igb_desc_unused(ring));
 	}
 }
 
@@ -4425,7 +4433,8 @@ int igb_setup_rx_resources(struct igb_ring *rx_ring)
 	if (xdp_rxq_info_is_reg(&rx_ring->xdp_rxq))
 		xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
 	res = xdp_rxq_info_reg(&rx_ring->xdp_rxq, rx_ring->netdev,
-			       rx_ring->queue_index, 0);
+			       rx_ring->queue_index,
+			       rx_ring->q_vector->napi.napi_id);
 	if (res < 0) {
 		dev_err(dev, "Failed to register xdp_rxq index %u\n",
 			rx_ring->queue_index);
@@ -4721,12 +4730,17 @@ void igb_setup_srrctl(struct igb_adapter *adapter, struct igb_ring *ring)
 	struct e1000_hw *hw = &adapter->hw;
 	int reg_idx = ring->reg_idx;
 	u32 srrctl = 0;
+	u32 buf_size;
 
-	srrctl = IGB_RX_HDR_LEN << E1000_SRRCTL_BSIZEHDRSIZE_SHIFT;
-	if (ring_uses_large_buffer(ring))
-		srrctl |= IGB_RXBUFFER_3072 >> E1000_SRRCTL_BSIZEPKT_SHIFT;
+	if (ring->xsk_pool)
+		buf_size = xsk_pool_get_rx_frame_size(ring->xsk_pool);
+	else if (ring_uses_large_buffer(ring))
+		buf_size = IGB_RXBUFFER_3072;
 	else
-		srrctl |= IGB_RXBUFFER_2048 >> E1000_SRRCTL_BSIZEPKT_SHIFT;
+		buf_size = IGB_RXBUFFER_2048;
+
+	srrctl = IGB_RX_HDR_LEN << E1000_SRRCTL_BSIZEHDRSIZE_SHIFT;
+	srrctl |= buf_size >> E1000_SRRCTL_BSIZEPKT_SHIFT;
 	srrctl |= E1000_SRRCTL_DESCTYPE_ADV_ONEBUF;
 	if (hw->mac.type >= e1000_82580)
 		srrctl |= E1000_SRRCTL_TIMESTAMP;
@@ -4758,9 +4772,17 @@ void igb_configure_rx_ring(struct igb_adapter *adapter,
 	u32 rxdctl = 0;
 
 	xdp_rxq_info_unreg_mem_model(&ring->xdp_rxq);
-	WARN_ON(xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
-					   MEM_TYPE_PAGE_SHARED, NULL));
 	WRITE_ONCE(ring->xsk_pool, igb_xsk_pool(adapter, ring));
+	if (ring->xsk_pool) {
+		WARN_ON(xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
+						   MEM_TYPE_XSK_BUFF_POOL,
+						   NULL));
+		xsk_pool_set_rxq_info(ring->xsk_pool, &ring->xdp_rxq);
+	} else {
+		WARN_ON(xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
+						   MEM_TYPE_PAGE_SHARED,
+						   NULL));
+	}
 
 	/* disable the queue */
 	wr32(E1000_RXDCTL(reg_idx), 0);
@@ -4787,9 +4809,12 @@ void igb_configure_rx_ring(struct igb_adapter *adapter,
 	rxdctl |= IGB_RX_HTHRESH << 8;
 	rxdctl |= IGB_RX_WTHRESH << 16;
 
-	/* initialize rx_buffer_info */
-	memset(ring->rx_buffer_info, 0,
-	       sizeof(struct igb_rx_buffer) * ring->count);
+	if (ring->xsk_pool)
+		memset(ring->rx_buffer_info_zc, 0,
+		       sizeof(*ring->rx_buffer_info_zc) * ring->count);
+	else
+		memset(ring->rx_buffer_info, 0,
+		       sizeof(*ring->rx_buffer_info) * ring->count);
 
 	/* initialize Rx descriptor 0 */
 	rx_desc = IGB_RX_DESC(ring, 0);
@@ -4976,8 +5001,13 @@ void igb_free_rx_resources(struct igb_ring *rx_ring)
 
 	rx_ring->xdp_prog = NULL;
 	xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
-	vfree(rx_ring->rx_buffer_info);
-	rx_ring->rx_buffer_info = NULL;
+	if (rx_ring->xsk_pool) {
+		vfree(rx_ring->rx_buffer_info_zc);
+		rx_ring->rx_buffer_info_zc = NULL;
+	} else {
+		vfree(rx_ring->rx_buffer_info);
+		rx_ring->rx_buffer_info = NULL;
+	}
 
 	/* if not set, then don't free */
 	if (!rx_ring->desc)
@@ -5015,6 +5045,11 @@ void igb_clean_rx_ring(struct igb_ring *rx_ring)
 	dev_kfree_skb(rx_ring->skb);
 	rx_ring->skb = NULL;
 
+	if (rx_ring->xsk_pool) {
+		igb_clean_rx_ring_zc(rx_ring);
+		goto skip_for_xsk;
+	}
+
 	/* Free all the Rx ring sk_buffs */
 	while (i != rx_ring->next_to_alloc) {
 		struct igb_rx_buffer *buffer_info = &rx_ring->rx_buffer_info[i];
@@ -5042,6 +5077,7 @@ void igb_clean_rx_ring(struct igb_ring *rx_ring)
 			i = 0;
 	}
 
+skip_for_xsk:
 	rx_ring->next_to_alloc = 0;
 	rx_ring->next_to_clean = 0;
 	rx_ring->next_to_use = 0;
@@ -8186,6 +8222,7 @@ static int igb_poll(struct napi_struct *napi, int budget)
 	struct igb_q_vector *q_vector = container_of(napi,
 						     struct igb_q_vector,
 						     napi);
+	struct xsk_buff_pool *xsk_pool;
 	bool clean_complete = true;
 	int work_done = 0;
 
@@ -8197,7 +8234,12 @@ static int igb_poll(struct napi_struct *napi, int budget)
 		clean_complete = igb_clean_tx_irq(q_vector, budget);
 
 	if (q_vector->rx.ring) {
-		int cleaned = igb_clean_rx_irq(q_vector, budget);
+		int cleaned;
+
+		xsk_pool = READ_ONCE(q_vector->rx.ring->xsk_pool);
+		cleaned = xsk_pool ?
+			igb_clean_rx_irq_zc(q_vector, xsk_pool, budget) :
+			igb_clean_rx_irq(q_vector, budget);
 
 		work_done += cleaned;
 		if (cleaned >= budget)
@@ -8861,6 +8903,38 @@ static void igb_put_rx_buffer(struct igb_ring *rx_ring,
 	rx_buffer->page = NULL;
 }
 
+void igb_finalize_xdp(struct igb_adapter *adapter, unsigned int status)
+{
+	int cpu = smp_processor_id();
+	struct netdev_queue *nq;
+
+	if (status & IGB_XDP_REDIR)
+		xdp_do_flush();
+
+	if (status & IGB_XDP_TX) {
+		struct igb_ring *tx_ring = igb_xdp_tx_queue_mapping(adapter);
+
+		nq = txring_txq(tx_ring);
+		__netif_tx_lock(nq, cpu);
+		igb_xdp_ring_update_tail(tx_ring);
+		__netif_tx_unlock(nq);
+	}
+}
+
+void igb_update_rx_stats(struct igb_q_vector *q_vector, unsigned int packets,
+			 unsigned int bytes)
+{
+	struct igb_ring *ring = q_vector->rx.ring;
+
+	u64_stats_update_begin(&ring->rx_syncp);
+	ring->rx_stats.packets += packets;
+	ring->rx_stats.bytes += bytes;
+	u64_stats_update_end(&ring->rx_syncp);
+
+	q_vector->rx.total_packets += packets;
+	q_vector->rx.total_bytes += bytes;
+}
+
 static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
 {
 	unsigned int total_bytes = 0, total_packets = 0;
@@ -8868,9 +8942,7 @@ static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
 	struct igb_ring *rx_ring = q_vector->rx.ring;
 	u16 cleaned_count = igb_desc_unused(rx_ring);
 	struct sk_buff *skb = rx_ring->skb;
-	int cpu = smp_processor_id();
 	unsigned int xdp_xmit = 0;
-	struct netdev_queue *nq;
 	struct xdp_buff xdp;
 	u32 frame_sz = 0;
 	int rx_buf_pgcnt;
@@ -8992,24 +9064,10 @@ static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
 	/* place incomplete frames back on ring for completion */
 	rx_ring->skb = skb;
 
-	if (xdp_xmit & IGB_XDP_REDIR)
-		xdp_do_flush();
-
-	if (xdp_xmit & IGB_XDP_TX) {
-		struct igb_ring *tx_ring = igb_xdp_tx_queue_mapping(adapter);
-
-		nq = txring_txq(tx_ring);
-		__netif_tx_lock(nq, cpu);
-		igb_xdp_ring_update_tail(tx_ring);
-		__netif_tx_unlock(nq);
-	}
+	if (xdp_xmit)
+		igb_finalize_xdp(adapter, xdp_xmit);
 
-	u64_stats_update_begin(&rx_ring->rx_syncp);
-	rx_ring->rx_stats.packets += total_packets;
-	rx_ring->rx_stats.bytes += total_bytes;
-	u64_stats_update_end(&rx_ring->rx_syncp);
-	q_vector->rx.total_packets += total_packets;
-	q_vector->rx.total_bytes += total_bytes;
+	igb_update_rx_stats(q_vector, total_packets, total_bytes);
 
 	if (cleaned_count)
 		igb_alloc_rx_buffers(rx_ring, cleaned_count);
diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/igb/igb_xsk.c
index 7b632be3e7e3..2ae16ae99193 100644
--- a/drivers/net/ethernet/intel/igb/igb_xsk.c
+++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
@@ -70,7 +70,10 @@ static void igb_txrx_ring_enable(struct igb_adapter *adapter, u16 qid)
 	 * at least 1 descriptor unused to make sure
 	 * next_to_use != next_to_clean
 	 */
-	igb_alloc_rx_buffers(rx_ring, igb_desc_unused(rx_ring));
+	if (rx_ring->xsk_pool)
+		igb_alloc_rx_buffers_zc(rx_ring, igb_desc_unused(rx_ring));
+	else
+		igb_alloc_rx_buffers(rx_ring, igb_desc_unused(rx_ring));
 
 	/* Rx/Tx share the same napi context. */
 	napi_enable(&rx_ring->q_vector->napi);
@@ -169,6 +172,298 @@ int igb_xsk_pool_setup(struct igb_adapter *adapter,
 		igb_xsk_pool_disable(adapter, qid);
 }
 
+static u16 igb_fill_rx_descs(struct xsk_buff_pool *pool, struct xdp_buff **xdp,
+			     union e1000_adv_rx_desc *rx_desc, u16 count)
+{
+	dma_addr_t dma;
+	u16 buffs;
+	int i;
+
+	/* nothing to do */
+	if (!count)
+		return 0;
+
+	buffs = xsk_buff_alloc_batch(pool, xdp, count);
+	for (i = 0; i < buffs; i++) {
+		dma = xsk_buff_xdp_get_dma(*xdp);
+		rx_desc->read.pkt_addr = cpu_to_le64(dma);
+		rx_desc->wb.upper.length = 0;
+
+		rx_desc++;
+		xdp++;
+	}
+
+	return buffs;
+}
+
+bool igb_alloc_rx_buffers_zc(struct igb_ring *rx_ring, u16 count)
+{
+	u32 nb_buffs_extra = 0, nb_buffs = 0;
+	union e1000_adv_rx_desc *rx_desc;
+	u16 ntu = rx_ring->next_to_use;
+	u16 total_count = count;
+	struct xdp_buff **xdp;
+
+	rx_desc = IGB_RX_DESC(rx_ring, ntu);
+	xdp = &rx_ring->rx_buffer_info_zc[ntu];
+
+	if (ntu + count >= rx_ring->count) {
+		nb_buffs_extra = igb_fill_rx_descs(rx_ring->xsk_pool, xdp,
+						   rx_desc,
+						   rx_ring->count - ntu);
+		if (nb_buffs_extra != rx_ring->count - ntu) {
+			ntu += nb_buffs_extra;
+			goto exit;
+		}
+		rx_desc = IGB_RX_DESC(rx_ring, 0);
+		xdp = rx_ring->rx_buffer_info_zc;
+		ntu = 0;
+		count -= nb_buffs_extra;
+	}
+
+	nb_buffs = igb_fill_rx_descs(rx_ring->xsk_pool, xdp, rx_desc, count);
+	ntu += nb_buffs;
+	if (ntu == rx_ring->count)
+		ntu = 0;
+
+	/* clear the length for the next_to_use descriptor */
+	rx_desc = IGB_RX_DESC(rx_ring, ntu);
+	rx_desc->wb.upper.length = 0;
+
+exit:
+	if (rx_ring->next_to_use != ntu) {
+		rx_ring->next_to_use = ntu;
+
+		/* Force memory writes to complete before letting h/w
+		 * know there are new descriptors to fetch.  (Only
+		 * applicable for weak-ordered memory model archs,
+		 * such as IA-64).
+		 */
+		wmb();
+		writel(ntu, rx_ring->tail);
+	}
+
+	return total_count == (nb_buffs + nb_buffs_extra);
+}
+
+void igb_clean_rx_ring_zc(struct igb_ring *rx_ring)
+{
+	u16 ntc = rx_ring->next_to_clean;
+	u16 ntu = rx_ring->next_to_use;
+
+	while (ntc != ntu) {
+		struct xdp_buff *xdp = rx_ring->rx_buffer_info_zc[ntc];
+
+		xsk_buff_free(xdp);
+		ntc++;
+		if (ntc >= rx_ring->count)
+			ntc = 0;
+	}
+}
+
+static struct sk_buff *igb_construct_skb_zc(struct igb_ring *rx_ring,
+					    struct xdp_buff *xdp,
+					    ktime_t timestamp)
+{
+	unsigned int totalsize = xdp->data_end - xdp->data_meta;
+	unsigned int metasize = xdp->data - xdp->data_meta;
+	struct sk_buff *skb;
+
+	net_prefetch(xdp->data_meta);
+
+	/* allocate a skb to store the frags */
+	skb = napi_alloc_skb(&rx_ring->q_vector->napi, totalsize);
+	if (unlikely(!skb))
+		return NULL;
+
+	if (timestamp)
+		skb_hwtstamps(skb)->hwtstamp = timestamp;
+
+	memcpy(__skb_put(skb, totalsize), xdp->data_meta,
+	       ALIGN(totalsize, sizeof(long)));
+
+	if (metasize) {
+		skb_metadata_set(skb, metasize);
+		__skb_pull(skb, metasize);
+	}
+
+	return skb;
+}
+
+static struct sk_buff *igb_run_xdp_zc(struct igb_adapter *adapter,
+				      struct igb_ring *rx_ring,
+				      struct xdp_buff *xdp,
+				      struct xsk_buff_pool *xsk_pool)
+{
+	int err, result = IGB_XDP_PASS;
+	struct bpf_prog *xdp_prog;
+	u32 act;
+
+	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
+
+	if (!xdp_prog)
+		goto xdp_out;
+
+	prefetchw(xdp->data_hard_start); /* xdp_frame write */
+
+	act = bpf_prog_run_xdp(xdp_prog, xdp);
+
+	if (likely(act == XDP_REDIRECT)) {
+		err = xdp_do_redirect(adapter->netdev, xdp, xdp_prog);
+		if (!err) {
+			result = IGB_XDP_REDIR;
+			goto xdp_out;
+		}
+
+		if (xsk_uses_need_wakeup(xsk_pool) &&
+		    err == -ENOBUFS)
+			result = IGB_XDP_EXIT;
+		else
+			result = IGB_XDP_CONSUMED;
+		goto out_failure;
+	}
+
+	switch (act) {
+	case XDP_PASS:
+		break;
+	case XDP_TX:
+		result = igb_xdp_xmit_back(adapter, xdp);
+		if (result == IGB_XDP_CONSUMED)
+			goto out_failure;
+		break;
+	default:
+		bpf_warn_invalid_xdp_action(adapter->netdev, xdp_prog, act);
+		fallthrough;
+	case XDP_ABORTED:
+out_failure:
+		trace_xdp_exception(rx_ring->netdev, xdp_prog, act);
+		fallthrough;
+	case XDP_DROP:
+		result = IGB_XDP_CONSUMED;
+		break;
+	}
+xdp_out:
+	return ERR_PTR(-result);
+}
+
+int igb_clean_rx_irq_zc(struct igb_q_vector *q_vector,
+			struct xsk_buff_pool *xsk_pool, const int budget)
+{
+	struct igb_adapter *adapter = q_vector->adapter;
+	unsigned int total_bytes = 0, total_packets = 0;
+	struct igb_ring *rx_ring = q_vector->rx.ring;
+	u16 ntc = rx_ring->next_to_clean;
+	unsigned int xdp_xmit = 0;
+	bool failure = false;
+	u16 entries_to_alloc;
+	struct sk_buff *skb;
+
+	while (likely(total_packets < budget)) {
+		union e1000_adv_rx_desc *rx_desc;
+		ktime_t timestamp = 0;
+		struct xdp_buff *xdp;
+		unsigned int size;
+
+		rx_desc = IGB_RX_DESC(rx_ring, ntc);
+		size = le16_to_cpu(rx_desc->wb.upper.length);
+		if (!size)
+			break;
+
+		/* This memory barrier is needed to keep us from reading
+		 * any other fields out of the rx_desc until we know the
+		 * descriptor has been written back
+		 */
+		dma_rmb();
+
+		xdp = rx_ring->rx_buffer_info_zc[ntc];
+		xsk_buff_set_size(xdp, size);
+		xsk_buff_dma_sync_for_cpu(xdp);
+
+		/* pull rx packet timestamp if available and valid */
+		if (igb_test_staterr(rx_desc, E1000_RXDADV_STAT_TSIP)) {
+			int ts_hdr_len;
+
+			ts_hdr_len = igb_ptp_rx_pktstamp(rx_ring->q_vector,
+							 xdp->data,
+							 &timestamp);
+
+			xdp->data += ts_hdr_len;
+			xdp->data_meta += ts_hdr_len;
+			size -= ts_hdr_len;
+		}
+
+		skb = igb_run_xdp_zc(adapter, rx_ring, xdp, xsk_pool);
+
+		if (IS_ERR(skb)) {
+			unsigned int xdp_res = -PTR_ERR(skb);
+
+			if (likely(xdp_res & (IGB_XDP_TX | IGB_XDP_REDIR))) {
+				xdp_xmit |= xdp_res;
+			} else if (xdp_res == IGB_XDP_EXIT) {
+				failure = true;
+				break;
+			} else if (xdp_res == IGB_XDP_CONSUMED) {
+				xsk_buff_free(xdp);
+			}
+
+			total_packets++;
+			total_bytes += size;
+			ntc++;
+			if (ntc == rx_ring->count)
+				ntc = 0;
+			continue;
+		}
+
+		skb = igb_construct_skb_zc(rx_ring, xdp, timestamp);
+
+		/* exit if we failed to retrieve a buffer */
+		if (!skb) {
+			rx_ring->rx_stats.alloc_failed++;
+			break;
+		}
+
+		xsk_buff_free(xdp);
+		ntc++;
+		if (ntc == rx_ring->count)
+			ntc = 0;
+
+		if (eth_skb_pad(skb))
+			continue;
+
+		/* probably a little skewed due to removing CRC */
+		total_bytes += skb->len;
+
+		/* populate checksum, timestamp, VLAN, and protocol */
+		igb_process_skb_fields(rx_ring, rx_desc, skb);
+
+		napi_gro_receive(&q_vector->napi, skb);
+
+		/* update budget accounting */
+		total_packets++;
+	}
+
+	rx_ring->next_to_clean = ntc;
+
+	if (xdp_xmit)
+		igb_finalize_xdp(adapter, xdp_xmit);
+
+	igb_update_rx_stats(q_vector, total_packets, total_bytes);
+
+	entries_to_alloc = igb_desc_unused(rx_ring);
+	if (entries_to_alloc >= IGB_RX_BUFFER_WRITE)
+		failure |= !igb_alloc_rx_buffers_zc(rx_ring, entries_to_alloc);
+
+	if (xsk_uses_need_wakeup(xsk_pool)) {
+		if (failure || rx_ring->next_to_clean == rx_ring->next_to_use)
+			xsk_set_rx_need_wakeup(xsk_pool);
+		else
+			xsk_clear_rx_need_wakeup(xsk_pool);
+
+		return (int)total_packets;
+	}
+	return failure ? budget : (int)total_packets;
+}
+
 int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
 {
 	struct igb_adapter *adapter = netdev_priv(dev);

-- 
2.39.2

