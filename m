Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 56253B123F5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Jul 2025 20:34:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14A1E41D82;
	Fri, 25 Jul 2025 18:34:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0zIDf-y5DEiv; Fri, 25 Jul 2025 18:34:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 67A5041D62
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753468494;
	bh=b8FpYcJa+3dP2GALKf8SiEH3wsduyeClQ0evbEuQW5w=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OJFKRu1Mti7nwtvBHyZig77TnDubp0lfUmt9t6gTH9TOfvcOufrNhjzlcr4wN0rFa
	 7iWqLGYH4KYdR+sjAYhJ+e8iOXSCVHPM4MKvA+UHpH/05mATEMRqW2kyyXK+ixHe0y
	 jvuFxuio0RXTor4xMLb9JJjIndjI8+Gn5hn0rqjfjmXMUI4FIH1cNCWHYGrYNsLEoP
	 SRzOnc92jI8mizubkLN2D/p1LxPloYAjEL1nKpF/uVTgQyzsnmitY5XmilfnAXZ4nH
	 YXB6jYD5wk1t4MgX2EbE6EI4MiZsV5vLyUeF4tmMF+MigJ6MIkSrtXEkgAYtq6m2Wk
	 Nf4R8eT9IJ3HQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 67A5041D62;
	Fri, 25 Jul 2025 18:34:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2CF49177
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 18:34:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1EF8941EA8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 18:34:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9u-QTXtn6LOp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Jul 2025 18:34:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2CAFB4005B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2CAFB4005B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2CAFB4005B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 18:34:52 +0000 (UTC)
X-CSE-ConnectionGUID: tO02U0V0TJiGVM9+1rJK0g==
X-CSE-MsgGUID: zeRu6PyZRteoMqxHgSo9kQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11503"; a="81252338"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="81252338"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2025 11:34:51 -0700
X-CSE-ConnectionGUID: c6pQijtCQGiBspfzR5WYJw==
X-CSE-MsgGUID: eJE71/NLR+ypvd/PaAaS/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="160803946"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.13])
 by orviesa009.jf.intel.com with ESMTP; 25 Jul 2025 11:34:52 -0700
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Joshua Hay <joshua.a.hay@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>
Date: Fri, 25 Jul 2025 11:42:18 -0700
Message-Id: <20250725184223.4084821-2-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20250725184223.4084821-1-joshua.a.hay@intel.com>
References: <20250725184223.4084821-1-joshua.a.hay@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753468492; x=1785004492;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vUaURi58xMhQqSMydZ+TXlBMX96LfreiAlaReuNrRbg=;
 b=LdRgzPCJcSogXR/za1Hg+h5PR+luarYgtdxr/U/YcFQp8MVSkXGaqh6x
 BQ+zZKmE0UVIiRhqTNy5h4Rx41K6FW9r8SYNIL41hvGHJ6i9/wf/MWJlf
 5b9MKYYfiVZhD+SvkLTmLJJEkjyE7COkLvkuHyE7FLpAUb6rPqBIaPvmP
 XQ86nF2AFtOYIpXq3VXUtUtykw4Kj4pcZYGB6t9COgXVdoLF2aIzBrOWZ
 EsKe9bvQoihC+aEVJnI/RAUT/1x7Erw+kkyhNjhbV9wfNnyePjB2tWT+T
 LsuK4OLoL5OnknmNQGg0jCkvlRnX2VVBjwy5KspGldLKHRHZ+W9glgVFw
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LdRgzPCJ
Subject: [Intel-wired-lan] [PATCH iwl-net v3 1/6] idpf: add support for Tx
 refillqs in flow scheduling mode
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

In certain production environments, it is possible for completion tags
to collide, meaning N packets with the same completion tag are in flight
at the same time. In this environment, any given Tx queue is effectively
used to send both slower traffic and higher throughput traffic
simultaneously. This is the result of a customer's specific
configuration in the device pipeline, the details of which Intel cannot
provide. This configuration results in a small number of out-of-order
completions, i.e., a small number of packets in flight. The existing
guardrails in the driver only protect against a large number of packets
in flight. The slower flow completions are delayed which causes the
out-of-order completions. The fast flow will continue sending traffic
and generating tags. Because tags are generated on the fly, the fast
flow eventually uses the same tag for a packet that is still in flight
from the slower flow. The driver has no idea which packet it should
clean when it processes the completion with that tag, but it will look
for the packet on the buffer ring before the hash table.  If the slower
flow packet completion is processed first, it will end up cleaning the
fast flow packet on the ring prematurely. This leaves the descriptor
ring in a bad state resulting in a crashes or Tx timeout.

In summary, generating a tag when a packet is sent can lead to the same
tag being associated with multiple packets. This can lead to resource
leaks, crashes, and/or Tx timeouts.

Before we can replace the tag generation, we need a new mechanism for
the send path to know what tag to use next. The driver will allocate and
initialize a refillq for each TxQ with all of the possible free tag
values. During send, the driver grabs the next free tag from the refillq
from next_to_clean. While cleaning the packet, the clean routine posts
the tag back to the refillq's next_to_use to indicate that it is now
free to use.

This mechanism works exactly the same way as the existing Rx refill
queues, which post the cleaned buffer IDs back to the buffer queue to be
reposted to HW. Since we're using the refillqs for both Rx and Tx now,
genercize some of the existing refillq support.

Note: the refillqs will not be used yet. This is only demonstrating how
they will be used to pass free tags back to the send path.

Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
---
v2:
- reorder refillq init logic to reduce indentation
- don't drop skb if get free bufid fails, increment busy counter
- add missing unlikely
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 93 +++++++++++++++++++--
 drivers/net/ethernet/intel/idpf/idpf_txrx.h |  8 +-
 2 files changed, 91 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 5cf440e09d0a..d5908126163d 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -139,6 +139,9 @@ static void idpf_tx_desc_rel(struct idpf_tx_queue *txq)
 	if (!txq->desc_ring)
 		return;
 
+	if (txq->refillq)
+		kfree(txq->refillq->ring);
+
 	dmam_free_coherent(txq->dev, txq->size, txq->desc_ring, txq->dma);
 	txq->desc_ring = NULL;
 	txq->next_to_use = 0;
@@ -244,6 +247,7 @@ static int idpf_tx_desc_alloc(const struct idpf_vport *vport,
 			      struct idpf_tx_queue *tx_q)
 {
 	struct device *dev = tx_q->dev;
+	struct idpf_sw_queue *refillq;
 	int err;
 
 	err = idpf_tx_buf_alloc_all(tx_q);
@@ -267,6 +271,29 @@ static int idpf_tx_desc_alloc(const struct idpf_vport *vport,
 	tx_q->next_to_clean = 0;
 	idpf_queue_set(GEN_CHK, tx_q);
 
+	if (!idpf_queue_has(FLOW_SCH_EN, tx_q))
+		return 0;
+
+	refillq = tx_q->refillq;
+	refillq->desc_count = tx_q->desc_count;
+	refillq->ring = kcalloc(refillq->desc_count, sizeof(u32),
+				GFP_KERNEL);
+	if (!refillq->ring) {
+		err = -ENOMEM;
+		goto err_alloc;
+	}
+
+	for (u32 i = 0; i < refillq->desc_count; i++)
+		refillq->ring[i] =
+			FIELD_PREP(IDPF_RFL_BI_BUFID_M, i) |
+			FIELD_PREP(IDPF_RFL_BI_GEN_M,
+				   idpf_queue_has(GEN_CHK, refillq));
+
+	/* Go ahead and flip the GEN bit since this counts as filling
+	 * up the ring, i.e. we already ring wrapped.
+	 */
+	idpf_queue_change(GEN_CHK, refillq);
+
 	return 0;
 
 err_alloc:
@@ -603,18 +630,18 @@ static int idpf_rx_hdr_buf_alloc_all(struct idpf_buf_queue *bufq)
 }
 
 /**
- * idpf_rx_post_buf_refill - Post buffer id to refill queue
+ * idpf_post_buf_refill - Post buffer id to refill queue
  * @refillq: refill queue to post to
  * @buf_id: buffer id to post
  */
-static void idpf_rx_post_buf_refill(struct idpf_sw_queue *refillq, u16 buf_id)
+static void idpf_post_buf_refill(struct idpf_sw_queue *refillq, u16 buf_id)
 {
 	u32 nta = refillq->next_to_use;
 
 	/* store the buffer ID and the SW maintained GEN bit to the refillq */
 	refillq->ring[nta] =
-		FIELD_PREP(IDPF_RX_BI_BUFID_M, buf_id) |
-		FIELD_PREP(IDPF_RX_BI_GEN_M,
+		FIELD_PREP(IDPF_RFL_BI_BUFID_M, buf_id) |
+		FIELD_PREP(IDPF_RFL_BI_GEN_M,
 			   idpf_queue_has(GEN_CHK, refillq));
 
 	if (unlikely(++nta == refillq->desc_count)) {
@@ -995,6 +1022,11 @@ static void idpf_txq_group_rel(struct idpf_vport *vport)
 		struct idpf_txq_group *txq_grp = &vport->txq_grps[i];
 
 		for (j = 0; j < txq_grp->num_txq; j++) {
+			if (flow_sch_en) {
+				kfree(txq_grp->txqs[j]->refillq);
+				txq_grp->txqs[j]->refillq = NULL;
+			}
+
 			kfree(txq_grp->txqs[j]);
 			txq_grp->txqs[j] = NULL;
 		}
@@ -1414,6 +1446,13 @@ static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
 			}
 
 			idpf_queue_set(FLOW_SCH_EN, q);
+
+			q->refillq = kzalloc(sizeof(*q->refillq), GFP_KERNEL);
+			if (!q->refillq)
+				goto err_alloc;
+
+			idpf_queue_set(GEN_CHK, q->refillq);
+			idpf_queue_set(RFL_GEN_CHK, q->refillq);
 		}
 
 		if (!split)
@@ -2005,6 +2044,8 @@ static void idpf_tx_handle_rs_completion(struct idpf_tx_queue *txq,
 
 	compl_tag = le16_to_cpu(desc->q_head_compl_tag.compl_tag);
 
+	idpf_post_buf_refill(txq->refillq, compl_tag);
+
 	/* If we didn't clean anything on the ring, this packet must be
 	 * in the hash table. Go clean it there.
 	 */
@@ -2364,6 +2405,37 @@ static unsigned int idpf_tx_splitq_bump_ntu(struct idpf_tx_queue *txq, u16 ntu)
 	return ntu;
 }
 
+/**
+ * idpf_tx_get_free_buf_id - get a free buffer ID from the refill queue
+ * @refillq: refill queue to get buffer ID from
+ * @buf_id: return buffer ID
+ *
+ * Return: true if a buffer ID was found, false if not
+ */
+static bool idpf_tx_get_free_buf_id(struct idpf_sw_queue *refillq,
+				    u16 *buf_id)
+{
+	u16 ntc = refillq->next_to_clean;
+	u32 refill_desc;
+
+	refill_desc = refillq->ring[ntc];
+
+	if (unlikely(idpf_queue_has(RFL_GEN_CHK, refillq) !=
+		     !!(refill_desc & IDPF_RFL_BI_GEN_M)))
+		return false;
+
+	*buf_id = FIELD_GET(IDPF_RFL_BI_BUFID_M, refill_desc);
+
+	if (unlikely(++ntc == refillq->desc_count)) {
+		idpf_queue_change(RFL_GEN_CHK, refillq);
+		ntc = 0;
+	}
+
+	refillq->next_to_clean = ntc;
+
+	return true;
+}
+
 /**
  * idpf_tx_splitq_map - Build the Tx flex descriptor
  * @tx_q: queue to send buffer on
@@ -2912,6 +2984,13 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 	}
 
 	if (idpf_queue_has(FLOW_SCH_EN, tx_q)) {
+		if (unlikely(!idpf_tx_get_free_buf_id(tx_q->refillq,
+						      &tx_params.compl_tag))) {
+			u64_stats_update_begin(&tx_q->stats_sync);
+			u64_stats_inc(&tx_q->q_stats.q_busy);
+			u64_stats_update_end(&tx_q->stats_sync);
+		}
+
 		tx_params.dtype = IDPF_TX_DESC_DTYPE_FLEX_FLOW_SCHE;
 		tx_params.eop_cmd = IDPF_TXD_FLEX_FLOW_CMD_EOP;
 		/* Set the RE bit to catch any packets that may have not been
@@ -3464,7 +3543,7 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
 skip_data:
 		rx_buf->page = NULL;
 
-		idpf_rx_post_buf_refill(refillq, buf_id);
+		idpf_post_buf_refill(refillq, buf_id);
 		IDPF_RX_BUMP_NTC(rxq, ntc);
 
 		/* skip if it is non EOP desc */
@@ -3572,10 +3651,10 @@ static void idpf_rx_clean_refillq(struct idpf_buf_queue *bufq,
 		bool failure;
 
 		if (idpf_queue_has(RFL_GEN_CHK, refillq) !=
-		    !!(refill_desc & IDPF_RX_BI_GEN_M))
+		    !!(refill_desc & IDPF_RFL_BI_GEN_M))
 			break;
 
-		buf_id = FIELD_GET(IDPF_RX_BI_BUFID_M, refill_desc);
+		buf_id = FIELD_GET(IDPF_RFL_BI_BUFID_M, refill_desc);
 		failure = idpf_rx_update_bufq_desc(bufq, buf_id, buf_desc);
 		if (failure)
 			break;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 36a0f828a6f8..6924bee6ff5b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -107,8 +107,8 @@ do {								\
  */
 #define IDPF_TX_SPLITQ_RE_MIN_GAP	64
 
-#define IDPF_RX_BI_GEN_M		BIT(16)
-#define IDPF_RX_BI_BUFID_M		GENMASK(15, 0)
+#define IDPF_RFL_BI_GEN_M		BIT(16)
+#define IDPF_RFL_BI_BUFID_M		GENMASK(15, 0)
 
 #define IDPF_RXD_EOF_SPLITQ		VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_EOF_M
 #define IDPF_RXD_EOF_SINGLEQ		VIRTCHNL2_RX_BASE_DESC_STATUS_EOF_M
@@ -621,6 +621,7 @@ libeth_cacheline_set_assert(struct idpf_rx_queue, 64,
  * @cleaned_pkts: Number of packets cleaned for the above said case
  * @tx_max_bufs: Max buffers that can be transmitted with scatter-gather
  * @stash: Tx buffer stash for Flow-based scheduling mode
+ * @refillq: Pointer to refill queue
  * @compl_tag_bufid_m: Completion tag buffer id mask
  * @compl_tag_cur_gen: Used to keep track of current completion tag generation
  * @compl_tag_gen_max: To determine when compl_tag_cur_gen should be reset
@@ -670,6 +671,7 @@ struct idpf_tx_queue {
 
 	u16 tx_max_bufs;
 	struct idpf_txq_stash *stash;
+	struct idpf_sw_queue *refillq;
 
 	u16 compl_tag_bufid_m;
 	u16 compl_tag_cur_gen;
@@ -691,7 +693,7 @@ struct idpf_tx_queue {
 	__cacheline_group_end_aligned(cold);
 };
 libeth_cacheline_set_assert(struct idpf_tx_queue, 64,
-			    112 + sizeof(struct u64_stats_sync),
+			    120 + sizeof(struct u64_stats_sync),
 			    24);
 
 /**
-- 
2.39.2

