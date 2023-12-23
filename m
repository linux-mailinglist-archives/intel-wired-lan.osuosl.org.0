Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E860481D158
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Dec 2023 03:58:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6CA9942145;
	Sat, 23 Dec 2023 02:58:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6CA9942145
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703300304;
	bh=Uw6G7HUOAJtsDfHvGgDS8ZaVBnCj5i/3Ceq+d8iMs9A=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zsP9BAK75yMhJp1EhBcMwI9YmAwpvjWfeZ/vkoGuXCgaV4V7GJCJamhqI53par4p+
	 5jtr453H7RqawgpkOifdlr0vOuog2cP7M10TURAIwTg087eGrmqDIdk+noqbnHJRc0
	 KXehIqTR016mJLI6wRDvlEkbw/fnrirVdmutW/H9A6FLHczRfP2Fjzjoyhx8vZ+3YA
	 fP4nlCYw2dMGatoBVOtrdDlz8WqwclvcaKEMZwZGo5ZHfmBQD+ewBcfE+zfDiaT2+9
	 mPV3CbPO7gp4Qn2lntl84BTxt6BhwNxGNcppeHanoZc3FZWcwFyoBd/RrVz8n8tE5/
	 C6uB6dHuYkrdg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2UBAPJky_ZS3; Sat, 23 Dec 2023 02:58:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB3E140348;
	Sat, 23 Dec 2023 02:58:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB3E140348
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 571071BF3EC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:58:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2FA1860AFC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:58:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2FA1860AFC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M5p4HaP06F9k for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Dec 2023 02:58:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2A01460AFB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:58:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A01460AFB
X-IronPort-AV: E=McAfee;i="6600,9927,10932"; a="386610782"
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="386610782"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2023 18:58:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="25537398"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa001.jf.intel.com with ESMTP; 22 Dec 2023 18:58:08 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Sat, 23 Dec 2023 03:55:22 +0100
Message-ID: <20231223025554.2316836-3-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
References: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703300292; x=1734836292;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oVmgQdkcEevhqooMC4P7+6J+WN/iGM5H6Cnw3TXI9oo=;
 b=d0xEam8MhFWeyHXvYGj23Z0Yke32Kw1bzvIAzHAKTv5UZjvCnAWnpwsv
 XKi8/Q+qcMHcoLJGxw81cBx3Sb/Saux6UwD3LECm3XCykzoFy40x+LrlK
 v0I64AAAG9R0MG9WtCT4UUO7eMUT8m1+a4ZusCHaC/0ZqB1BxL6IU4wyV
 ZbqT07TrggPVpf2MrwNomQ/fXDSw6XZtwEQkkkiG4z887inJC+Y45ukIe
 SXBNnFaWNWq7f/nlZtZCDbKHsMpPHtOyJG/O/kRViebmpJJbqD7ws/+yJ
 It/SSk4VcF1ETcajQFYD9FSFXpBXJy+4zVz32yge5X9bCwvxKy0vGGYS/
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d0xEam8M
Subject: [Intel-wired-lan] [PATCH RFC net-next 02/34] idpf: pack &idpf_queue
 way more efficiently
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently, sizeof(struct idpf_queue) is 32 Kb.
This is due to the 12-bit hashtable declaration at the end of the queue.
This HT is needed only for Tx queues when the flow scheduling mode is
enabled. But &idpf_queue is unified for all of the queue types,
provoking excessive memory usage.
Instead, allocate those hashtables dynamically only when needed at the
moment of Tx queues initialization.
Next, reshuffle queue fields to reduce holes and ensure better cacheline
locality. Ideally, &idpf_queue must be split into 4, as lots of fields
are used only in 1 or 2 types, but for now, just unionize as much as we
can.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 58 ++++++++++++-----
 drivers/net/ethernet/intel/idpf/idpf_txrx.h | 72 ++++++++++++++-------
 2 files changed, 91 insertions(+), 39 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 70785f9afadd..d81eff39a632 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -179,6 +179,9 @@ static int idpf_tx_buf_alloc_all(struct idpf_queue *tx_q)
 	for (i = 0; i < tx_q->desc_count; i++)
 		tx_q->tx_buf[i].compl_tag = IDPF_SPLITQ_TX_INVAL_COMPL_TAG;
 
+	if (!test_bit(__IDPF_Q_FLOW_SCH_EN, tx_q->flags))
+		return 0;
+
 	/* Initialize tx buf stack for out-of-order completions if
 	 * flow scheduling offload is enabled
 	 */
@@ -801,11 +804,16 @@ static int idpf_rx_desc_alloc_all(struct idpf_vport *vport)
  */
 static void idpf_txq_group_rel(struct idpf_vport *vport)
 {
+	bool split, flow_sch_en;
 	int i, j;
 
 	if (!vport->txq_grps)
 		return;
 
+	split = idpf_is_queue_model_split(vport->txq_model);
+	flow_sch_en = !idpf_is_cap_ena(vport->adapter, IDPF_OTHER_CAPS,
+				       VIRTCHNL2_CAP_SPLITQ_QSCHED);
+
 	for (i = 0; i < vport->num_txq_grp; i++) {
 		struct idpf_txq_group *txq_grp = &vport->txq_grps[i];
 
@@ -813,8 +821,15 @@ static void idpf_txq_group_rel(struct idpf_vport *vport)
 			kfree(txq_grp->txqs[j]);
 			txq_grp->txqs[j] = NULL;
 		}
+
+		if (!split)
+			continue;
+
 		kfree(txq_grp->complq);
 		txq_grp->complq = NULL;
+
+		if (flow_sch_en)
+			kfree(txq_grp->hashes);
 	}
 	kfree(vport->txq_grps);
 	vport->txq_grps = NULL;
@@ -1157,20 +1172,22 @@ static void idpf_rxq_set_descids(struct idpf_vport *vport, struct idpf_queue *q)
  */
 static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
 {
-	bool flow_sch_en;
-	int err, i;
+	bool split, flow_sch_en;
+	int i;
 
 	vport->txq_grps = kcalloc(vport->num_txq_grp,
 				  sizeof(*vport->txq_grps), GFP_KERNEL);
 	if (!vport->txq_grps)
 		return -ENOMEM;
 
+	split = idpf_is_queue_model_split(vport->txq_model);
 	flow_sch_en = !idpf_is_cap_ena(vport->adapter, IDPF_OTHER_CAPS,
 				       VIRTCHNL2_CAP_SPLITQ_QSCHED);
 
 	for (i = 0; i < vport->num_txq_grp; i++) {
 		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
 		struct idpf_adapter *adapter = vport->adapter;
+		struct idpf_txq_hash *hashes;
 		int j;
 
 		tx_qgrp->vport = vport;
@@ -1179,10 +1196,16 @@ static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
 		for (j = 0; j < tx_qgrp->num_txq; j++) {
 			tx_qgrp->txqs[j] = kzalloc(sizeof(*tx_qgrp->txqs[j]),
 						   GFP_KERNEL);
-			if (!tx_qgrp->txqs[j]) {
-				err = -ENOMEM;
+			if (!tx_qgrp->txqs[j])
 				goto err_alloc;
-			}
+		}
+
+		if (split && flow_sch_en) {
+			hashes = kcalloc(num_txq, sizeof(*hashes), GFP_KERNEL);
+			if (!hashes)
+				goto err_alloc;
+
+			tx_qgrp->hashes = hashes;
 		}
 
 		for (j = 0; j < tx_qgrp->num_txq; j++) {
@@ -1194,22 +1217,26 @@ static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
 			q->tx_min_pkt_len = idpf_get_min_tx_pkt_len(adapter);
 			q->vport = vport;
 			q->txq_grp = tx_qgrp;
-			hash_init(q->sched_buf_hash);
 
-			if (flow_sch_en)
-				set_bit(__IDPF_Q_FLOW_SCH_EN, q->flags);
+			if (!flow_sch_en)
+				continue;
+
+			if (split) {
+				q->sched_buf_hash = &hashes[j];
+				hash_init(q->sched_buf_hash->hash);
+			}
+
+			set_bit(__IDPF_Q_FLOW_SCH_EN, q->flags);
 		}
 
-		if (!idpf_is_queue_model_split(vport->txq_model))
+		if (!split)
 			continue;
 
 		tx_qgrp->complq = kcalloc(IDPF_COMPLQ_PER_GROUP,
 					  sizeof(*tx_qgrp->complq),
 					  GFP_KERNEL);
-		if (!tx_qgrp->complq) {
-			err = -ENOMEM;
+		if (!tx_qgrp->complq)
 			goto err_alloc;
-		}
 
 		tx_qgrp->complq->dev = &adapter->pdev->dev;
 		tx_qgrp->complq->desc_count = vport->complq_desc_count;
@@ -1225,7 +1252,7 @@ static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
 err_alloc:
 	idpf_txq_group_rel(vport);
 
-	return err;
+	return -ENOMEM;
 }
 
 /**
@@ -1512,7 +1539,7 @@ static void idpf_tx_clean_stashed_bufs(struct idpf_queue *txq, u16 compl_tag,
 	struct hlist_node *tmp_buf;
 
 	/* Buffer completion */
-	hash_for_each_possible_safe(txq->sched_buf_hash, stash, tmp_buf,
+	hash_for_each_possible_safe(txq->sched_buf_hash->hash, stash, tmp_buf,
 				    hlist, compl_tag) {
 		if (unlikely(stash->buf.compl_tag != (int)compl_tag))
 			continue;
@@ -1567,7 +1594,8 @@ static int idpf_stash_flow_sch_buffers(struct idpf_queue *txq,
 	stash->buf.compl_tag = tx_buf->compl_tag;
 
 	/* Add buffer to buf_hash table to be freed later */
-	hash_add(txq->sched_buf_hash, &stash->hlist, stash->buf.compl_tag);
+	hash_add(txq->sched_buf_hash->hash, &stash->hlist,
+		 stash->buf.compl_tag);
 
 	memset(tx_buf, 0, sizeof(struct idpf_tx_buf));
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index f082d3edeb9c..4a97790cbf68 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -623,7 +623,6 @@ struct idpf_queue {
 		struct idpf_txq_group *txq_grp;
 		struct idpf_rxq_group *rxq_grp;
 	};
-	u16 idx;
 	void __iomem *tail;
 	union {
 		struct idpf_tx_buf *tx_buf;
@@ -634,7 +633,8 @@ struct idpf_queue {
 		} rx_buf;
 	};
 	struct page_pool *pp;
-	struct sk_buff *skb;
+	void *desc_ring;
+	u16 idx;
 	u16 q_type;
 	u32 q_id;
 	u16 desc_count;
@@ -644,38 +644,57 @@ struct idpf_queue {
 	u16 next_to_alloc;
 	DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
 
+	struct idpf_q_vector *q_vector;
+
 	union idpf_queue_stats q_stats;
 	struct u64_stats_sync stats_sync;
 
-	u32 cleaned_bytes;
-	u16 cleaned_pkts;
+	union {
+		/* Rx */
+		struct {
+			u64 rxdids;
+			u8 rx_buffer_low_watermark;
+			bool rx_hsplit_en:1;
+			u16 rx_hbuf_size;
+			u16 rx_buf_size;
+			u16 rx_max_pkt_size;
+			u16 rx_buf_stride;
+		};
+		/* Tx */
+		struct {
+			u32 cleaned_bytes;
+			u16 cleaned_pkts;
 
-	bool rx_hsplit_en;
-	u16 rx_hbuf_size;
-	u16 rx_buf_size;
-	u16 rx_max_pkt_size;
-	u16 rx_buf_stride;
-	u8 rx_buffer_low_watermark;
-	u64 rxdids;
-	struct idpf_q_vector *q_vector;
-	unsigned int size;
-	dma_addr_t dma;
-	void *desc_ring;
+			u16 tx_max_bufs;
+			u8 tx_min_pkt_len;
 
-	u16 tx_max_bufs;
-	u8 tx_min_pkt_len;
+			u32 num_completions;
 
-	u32 num_completions;
+			struct idpf_buf_lifo buf_stack;
+		};
+	};
 
-	struct idpf_buf_lifo buf_stack;
+	union {
+		/* Rx */
+		struct {
+			struct sk_buff *skb;
+		};
+		/* Tx */
+		struct {
+			u16 compl_tag_bufid_m;
+			u16 compl_tag_gen_s;
 
-	u16 compl_tag_bufid_m;
-	u16 compl_tag_gen_s;
+			u16 compl_tag_cur_gen;
+			u16 compl_tag_gen_max;
 
-	u16 compl_tag_cur_gen;
-	u16 compl_tag_gen_max;
+			struct idpf_txq_hash *sched_buf_hash;
+		};
+	};
 
-	DECLARE_HASHTABLE(sched_buf_hash, 12);
+	/* Slowpath */
+
+	dma_addr_t dma;
+	unsigned int size;
 } ____cacheline_internodealigned_in_smp;
 
 /**
@@ -768,6 +787,10 @@ struct idpf_rxq_group {
 	};
 };
 
+struct idpf_txq_hash {
+	DECLARE_HASHTABLE(hash, 12);
+};
+
 /**
  * struct idpf_txq_group
  * @vport: Vport back pointer
@@ -787,6 +810,7 @@ struct idpf_txq_group {
 
 	u16 num_txq;
 	struct idpf_queue *txqs[IDPF_LARGE_MAX_Q];
+	struct idpf_txq_hash *hashes;
 
 	struct idpf_queue *complq;
 
-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
