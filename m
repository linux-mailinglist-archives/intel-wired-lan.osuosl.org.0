Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BACD2AD45E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Nov 2020 12:02:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 44D4F86A22;
	Tue, 10 Nov 2020 11:02:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2gtPTV0pscU9; Tue, 10 Nov 2020 11:02:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6F14B86640;
	Tue, 10 Nov 2020 11:02:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2A3DB1BF298
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 11:02:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 26B1987367
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 11:02:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WNsF+6WSsbJq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Nov 2020 11:02:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5AD6887342
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 11:02:27 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id q5so8123269pfk.6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 03:02:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Np8Kwt0HgYs9CiWR284tIJBNdXajPeiuljd5LB33iOo=;
 b=ZzbCjSroItNvdMfepjeqAArqNYIKkDILb1A2SstxWnNgalJmtyzVsmZ5OrtCgXrGUV
 zJ83s9Ll2Yrng7BCz/zip8+fweAac7QBN3oYc8NqhGZQoymQDefh4nU5Ow86foqYDP8J
 EtW+pwdmT5/M3dkmm+JWi/g6/hGeTNnenOIu2xo+BlBEkD3vPOqgiJdI6LaXOaenlg8Z
 xYTt/PCkuqwTvZfu9LXVUWQb2ewNG5LxTpnURB45StJMMR89lIOl7aQuiw13pxYty+PH
 nfAOv0LvkI1pw0UrsEDUCakwQxoC/BRxOMDOTgp0Oi0vQz/0/usoZUpeap+G0v7KuUel
 wLFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Np8Kwt0HgYs9CiWR284tIJBNdXajPeiuljd5LB33iOo=;
 b=GXBapOpKhfI4VBRXTlNe67TzlgLKq9Q9pOn2L6gx8S2w99F5CJEBAQPJQIKfdGduxs
 bT12D1OkyPTXVzik0aRifewPgpT3MDS2M4gjCSxpGiSMeSNcztFGaBLb2w1wHxq3tt4m
 HwW3kR22AYusPCi2X1e0ocbt19A6byZ2eiN/T99SW7k81ESEU5GUD5gBj/2i1OXrZXDR
 nv5DZF8ppoPcYliU9U6IHzsjs69l0Z5FqagJ9Ba4aPZ+154ZiLgBeJ6r6X7+panqqtq0
 rQMK51eyXrpJEABS6wFpsOoda1lIQuWNhQkGHJ9u7XZX1HrVK3sNYmMF0pOY1x7ebOZ9
 PJjQ==
X-Gm-Message-State: AOAM530gcNlyzKXQz0BVzmm7Klw+Vhw/2Vb85hh4eZNNTw+faobSko+f
 ENNipvyLj2vztFEo65xUcjo=
X-Google-Smtp-Source: ABdhPJxgIiZYzHp+Qdpymo3t9JY0huD1GMCTe+j+bFgmutjAPVvpKaJSyxfvX2pRQUWqSF3+lOXsNg==
X-Received: by 2002:a62:7e14:0:b029:18a:d515:dc47 with SMTP id
 z20-20020a627e140000b029018ad515dc47mr18316970pfc.78.1605006146962; 
 Tue, 10 Nov 2020 03:02:26 -0800 (PST)
Received: from VM.ger.corp.intel.com ([192.55.55.45])
 by smtp.gmail.com with ESMTPSA id 22sm3012024pjb.40.2020.11.10.03.02.22
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 10 Nov 2020 03:02:26 -0800 (PST)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com, ast@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, jonathan.lemon@gmail.com,
 kuba@kernel.org, john.fastabend@gmail.com
Date: Tue, 10 Nov 2020 12:01:34 +0100
Message-Id: <1605006094-31097-6-git-send-email-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1605006094-31097-1-git-send-email-magnus.karlsson@gmail.com>
References: <1605006094-31097-1-git-send-email-magnus.karlsson@gmail.com>
Subject: [Intel-wired-lan] [PATCH bpf-next v2 5/5] i40e: use batched xsk Tx
 interfaces to increase performance
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
Cc: maciejromanfijalkowski@gmail.com, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Magnus Karlsson <magnus.karlsson@intel.com>

Use the new batched xsk interfaces for the Tx path in the i40e driver
to improve performance. On my machine, this yields a throughput
increase of 4% for the l2fwd sample app in xdpsock. If we instead just
look at the Tx part, this patch set increases throughput with above
20% for Tx.

Note that I had to explicitly loop unroll the inner loop to get to
this performance level, by using a pragma. It is honored by both clang
and gcc and should be ignored by versions that do not support
it. Using the -funroll-loops compiler command line switch on the
source file resulted in a loop unrolling on a higher level that
lead to a performance decrease instead of an increase.

Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
Acked-by: John Fastabend <john.fastabend@gmail.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c |  11 +++
 drivers/net/ethernet/intel/i40e/i40e_txrx.h |   1 +
 drivers/net/ethernet/intel/i40e/i40e_xsk.c  | 127 ++++++++++++++++++++--------
 3 files changed, 104 insertions(+), 35 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index d43ce13..c21548c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -676,6 +676,8 @@ void i40e_free_tx_resources(struct i40e_ring *tx_ring)
 	i40e_clean_tx_ring(tx_ring);
 	kfree(tx_ring->tx_bi);
 	tx_ring->tx_bi = NULL;
+	kfree(tx_ring->xsk_descs);
+	tx_ring->xsk_descs = NULL;
 
 	if (tx_ring->desc) {
 		dma_free_coherent(tx_ring->dev, tx_ring->size,
@@ -1277,6 +1279,13 @@ int i40e_setup_tx_descriptors(struct i40e_ring *tx_ring)
 	if (!tx_ring->tx_bi)
 		goto err;
 
+	if (ring_is_xdp(tx_ring)) {
+		tx_ring->xsk_descs = kcalloc(I40E_MAX_NUM_DESCRIPTORS, sizeof(*tx_ring->xsk_descs),
+					     GFP_KERNEL);
+		if (!tx_ring->xsk_descs)
+			goto err;
+	}
+
 	u64_stats_init(&tx_ring->syncp);
 
 	/* round up to nearest 4K */
@@ -1300,6 +1309,8 @@ int i40e_setup_tx_descriptors(struct i40e_ring *tx_ring)
 	return 0;
 
 err:
+	kfree(tx_ring->xsk_descs);
+	tx_ring->xsk_descs = NULL;
 	kfree(tx_ring->tx_bi);
 	tx_ring->tx_bi = NULL;
 	return -ENOMEM;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
index 2feed92..5f531b1 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
@@ -389,6 +389,7 @@ struct i40e_ring {
 	struct i40e_channel *ch;
 	struct xdp_rxq_info xdp_rxq;
 	struct xsk_buff_pool *xsk_pool;
+	struct xdp_desc *xsk_descs;      /* For storing descriptors in the AF_XDP ZC path */
 } ____cacheline_internodealigned_in_smp;
 
 static inline bool ring_uses_build_skb(struct i40e_ring *ring)
diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index 61aa1fc..a271a02 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -381,6 +381,78 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
 	return failure ? budget : (int)total_rx_packets;
 }
 
+static void i40e_xmit_pkt(struct i40e_ring *xdp_ring, struct xdp_desc *desc,
+			  unsigned int *total_bytes)
+{
+	struct i40e_tx_desc *tx_desc;
+	dma_addr_t dma;
+
+	dma = xsk_buff_raw_get_dma(xdp_ring->xsk_pool, desc->addr);
+	xsk_buff_raw_dma_sync_for_device(xdp_ring->xsk_pool, dma, desc->len);
+
+	tx_desc = I40E_TX_DESC(xdp_ring, xdp_ring->next_to_use++);
+	tx_desc->buffer_addr = cpu_to_le64(dma);
+	tx_desc->cmd_type_offset_bsz = build_ctob(I40E_TX_DESC_CMD_ICRC | I40E_TX_DESC_CMD_EOP,
+						  0, desc->len, 0);
+
+	*total_bytes += desc->len;
+}
+
+/* This value should match the pragma below. Why 4? It is strictly
+ * empirical. It seems to be a good compromise between the advantage
+ * of having simultaneous outstanding reads to the DMA array that can
+ * hide each others latency and the disadvantage of having a larger
+ * code path.
+ */
+#define PKTS_PER_BATCH 4
+
+static void i40e_xmit_pkt_batch(struct i40e_ring *xdp_ring, struct xdp_desc *desc,
+				unsigned int *total_bytes)
+{
+	u16 ntu = xdp_ring->next_to_use;
+	struct i40e_tx_desc *tx_desc;
+	dma_addr_t dma;
+	u32 i;
+
+#pragma GCC unroll 4
+	for (i = 0; i < PKTS_PER_BATCH; i++) {
+		dma = xsk_buff_raw_get_dma(xdp_ring->xsk_pool, desc[i].addr);
+		xsk_buff_raw_dma_sync_for_device(xdp_ring->xsk_pool, dma, desc[i].len);
+
+		tx_desc = I40E_TX_DESC(xdp_ring, ntu++);
+		tx_desc->buffer_addr = cpu_to_le64(dma);
+		tx_desc->cmd_type_offset_bsz = build_ctob(I40E_TX_DESC_CMD_ICRC |
+							  I40E_TX_DESC_CMD_EOP,
+							  0, desc[i].len, 0);
+
+		*total_bytes += desc[i].len;
+	}
+
+	xdp_ring->next_to_use = ntu;
+}
+
+static void i40e_fill_tx_hw_ring(struct i40e_ring *xdp_ring, struct xdp_desc *descs, u32 nb_pkts,
+				 unsigned int *total_bytes)
+{
+	u32 batched, leftover, i;
+
+	batched = nb_pkts & ~(PKTS_PER_BATCH - 1);
+	leftover = nb_pkts & (PKTS_PER_BATCH - 1);
+	for (i = 0; i < batched; i += PKTS_PER_BATCH)
+		i40e_xmit_pkt_batch(xdp_ring, &descs[i], total_bytes);
+	for (i = batched; i < batched + leftover; i++)
+		i40e_xmit_pkt(xdp_ring, &descs[i], total_bytes);
+}
+
+static void i40e_set_rs_bit(struct i40e_ring *xdp_ring)
+{
+	u16 ntu = xdp_ring->next_to_use ? xdp_ring->next_to_use - 1 : xdp_ring->count - 1;
+	struct i40e_tx_desc *tx_desc;
+
+	tx_desc = I40E_TX_DESC(xdp_ring, ntu);
+	tx_desc->cmd_type_offset_bsz |= (I40E_TX_DESC_CMD_RS << I40E_TXD_QW1_CMD_SHIFT);
+}
+
 /**
  * i40e_xmit_zc - Performs zero-copy Tx AF_XDP
  * @xdp_ring: XDP Tx ring
@@ -390,45 +462,30 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
  **/
 static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
 {
-	unsigned int sent_frames = 0, total_bytes = 0;
-	struct i40e_tx_desc *tx_desc = NULL;
-	struct xdp_desc desc;
-	dma_addr_t dma;
-
-	while (budget-- > 0) {
-		if (!xsk_tx_peek_desc(xdp_ring->xsk_pool, &desc))
-			break;
-
-		dma = xsk_buff_raw_get_dma(xdp_ring->xsk_pool, desc.addr);
-		xsk_buff_raw_dma_sync_for_device(xdp_ring->xsk_pool, dma,
-						 desc.len);
-
-		tx_desc = I40E_TX_DESC(xdp_ring, xdp_ring->next_to_use);
-		tx_desc->buffer_addr = cpu_to_le64(dma);
-		tx_desc->cmd_type_offset_bsz =
-			build_ctob(I40E_TX_DESC_CMD_ICRC
-				   | I40E_TX_DESC_CMD_EOP,
-				   0, desc.len, 0);
-
-		sent_frames++;
-		total_bytes += desc.len;
-
-		xdp_ring->next_to_use++;
-		if (xdp_ring->next_to_use == xdp_ring->count)
-			xdp_ring->next_to_use = 0;
+	struct xdp_desc *descs = xdp_ring->xsk_descs;
+	u32 nb_pkts, nb_processed = 0;
+	unsigned int total_bytes = 0;
+
+	nb_pkts = xsk_tx_peek_release_desc_batch(xdp_ring->xsk_pool, descs, budget);
+	if (!nb_pkts)
+		return false;
+
+	if (xdp_ring->next_to_use + nb_pkts >= xdp_ring->count) {
+		nb_processed = xdp_ring->count - xdp_ring->next_to_use;
+		i40e_fill_tx_hw_ring(xdp_ring, descs, nb_processed, &total_bytes);
+		xdp_ring->next_to_use = 0;
 	}
 
-	if (tx_desc) {
-		/* Request an interrupt for the last frame and bump tail ptr. */
-		tx_desc->cmd_type_offset_bsz |= (I40E_TX_DESC_CMD_RS <<
-						 I40E_TXD_QW1_CMD_SHIFT);
-		i40e_xdp_ring_update_tail(xdp_ring);
+	i40e_fill_tx_hw_ring(xdp_ring, &descs[nb_processed], nb_pkts - nb_processed,
+			     &total_bytes);
 
-		xsk_tx_release(xdp_ring->xsk_pool);
-		i40e_update_tx_stats(xdp_ring, sent_frames, total_bytes);
-	}
+	/* Request an interrupt for the last frame and bump tail ptr. */
+	i40e_set_rs_bit(xdp_ring);
+	i40e_xdp_ring_update_tail(xdp_ring);
+
+	i40e_update_tx_stats(xdp_ring, nb_pkts, total_bytes);
 
-	return !!budget;
+	return true;
 }
 
 /**
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
