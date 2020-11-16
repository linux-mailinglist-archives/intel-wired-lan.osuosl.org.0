Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 774962B4253
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Nov 2020 12:14:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 35C8985F3E;
	Mon, 16 Nov 2020 11:14:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id esIz_apYr5vF; Mon, 16 Nov 2020 11:14:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 958DF85F49;
	Mon, 16 Nov 2020 11:14:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7BD5F1BF42C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 11:14:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 789408712B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 11:14:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7HTZY3aUC3sB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Nov 2020 11:14:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 815A68711D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 11:14:05 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id c20so13788878pfr.8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 03:14:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ERjlSJo/a6lM7+vUC4rxT4rHbrdNDAXqh1n1PrY0dJA=;
 b=ZLwHPUQ4wh4H2wJIO3q4ypIajQTGmAjeh9a4Zn7DopWiMmuWGwWXvfT+ttzXPRxgzD
 bgX/a1q487QdDtWcgMVnJI7xcbfKT3Gw0lh0y8pHrGZspw8iL+iGqIU/KaIMjVlrkUif
 U7GlhGYatXBEnUodHy5XpA29hl3Ex+Q8DNsvjcsfL3u9S5Jcdfv19yG8WLKGNvwRidQR
 auyHNeMzv4zJEGsnrFpattFewo18Dz37AnzVCvJVKi7eTrL2u97OJ7XBEmCNdGczRJ/3
 ZCmMPd078YkS9qePKFR9IqdsFN8CHK42RwRbszeHXIA0qVAwTuXZxGXDnfjvSFIwuMV2
 jPIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ERjlSJo/a6lM7+vUC4rxT4rHbrdNDAXqh1n1PrY0dJA=;
 b=jX0Y14Pj9Vr+Q864kyTYbdxJZNL8BN3MF0l7UPIi3vlX/3CTJCFQQnXDEvjMsN9GPr
 RzfXi0t7MuPWIfp/E8m0CM0zOTaDgYI30WKH9nqvh5UHELk6+YoMlYIP+t6m5EEfYrVO
 HlVedoD9BtdONe0ks/Q2ziS+nFIpCGHUSExQ3jqSvKG8uswgxr7aAmG5Nh4BjWiqKBqZ
 JJfRMG50d/+8OWACe2P/gNgS2VEujVIbvwuhyLpvCrGbARw6ZCEavfzZD73a45Z1YMBM
 oC7dG7KqJ01JEU0MnaG8mN2sTiaxIxQAlbueSJrFrBQJcPLuWCjeEh+67MygP04z3IkN
 CkCg==
X-Gm-Message-State: AOAM530jcSzGaqk3yi8TmBtjIwldIJtP8KRJQnMWE03CvfoYmTSu37vh
 DlscdS0i3h8A2VbA/kwFF/4=
X-Google-Smtp-Source: ABdhPJxQUQhAG6+YxxqyBDAplM6pCfT6+l4DiHqgtDmZnPAP6iUPaDNtJ1H3uT/1zScSykPybKJxtA==
X-Received: by 2002:a17:90a:f0c7:: with SMTP id
 fa7mr15887151pjb.3.1605525245177; 
 Mon, 16 Nov 2020 03:14:05 -0800 (PST)
Received: from localhost.localdomain ([192.55.54.40])
 by smtp.gmail.com with ESMTPSA id u24sm19486826pfm.81.2020.11.16.03.14.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 16 Nov 2020 03:14:04 -0800 (PST)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com, ast@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, jonathan.lemon@gmail.com,
 kuba@kernel.org, john.fastabend@gmail.com
Date: Mon, 16 Nov 2020 12:12:47 +0100
Message-Id: <1605525167-14450-6-git-send-email-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1605525167-14450-1-git-send-email-magnus.karlsson@gmail.com>
References: <1605525167-14450-1-git-send-email-magnus.karlsson@gmail.com>
Subject: [Intel-wired-lan] [PATCH bpf-next v3 5/5] i40e: use batched xsk Tx
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
 drivers/net/ethernet/intel/i40e/i40e_xsk.c  | 119 ++++++++++++++++++++--------
 drivers/net/ethernet/intel/i40e/i40e_xsk.h  |  16 ++++
 4 files changed, 112 insertions(+), 35 deletions(-)

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
index 20d2632..4c44f49 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -2,6 +2,7 @@
 /* Copyright(c) 2018 Intel Corporation. */
 
 #include <linux/bpf_trace.h>
+#include <linux/stringify.h>
 #include <net/xdp_sock_drv.h>
 #include <net/xdp.h>
 
@@ -381,6 +382,69 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
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
+static void i40e_xmit_pkt_batch(struct i40e_ring *xdp_ring, struct xdp_desc *desc,
+				unsigned int *total_bytes)
+{
+	u16 ntu = xdp_ring->next_to_use;
+	struct i40e_tx_desc *tx_desc;
+	dma_addr_t dma;
+	u32 i;
+
+	loop_unrolled_for(i = 0; i < PKTS_PER_BATCH; i++) {
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
@@ -390,45 +454,30 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
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
diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.h b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
index 7adfd85..ea88f45 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
@@ -4,6 +4,22 @@
 #ifndef _I40E_XSK_H_
 #define _I40E_XSK_H_
 
+/* This value should match the pragma in the loop_unrolled_for
+ * macro. Why 4? It is strictly empirical. It seems to be a good
+ * compromise between the advantage of having simultaneous outstanding
+ * reads to the DMA array that can hide each others latency and the
+ * disadvantage of having a larger code path.
+ */
+#define PKTS_PER_BATCH 4
+
+#ifdef __clang__
+#define loop_unrolled_for _Pragma("clang loop unroll_count(4)") for
+#elif __GNUC__ >= 8
+#define loop_unrolled_for _Pragma("GCC unroll 4") for
+#else
+#define loop_unrolled_for for
+#endif
+
 struct i40e_vsi;
 struct xsk_buff_pool;
 struct zero_copy_allocator;
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
