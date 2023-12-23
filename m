Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C567A81D188
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Dec 2023 04:00:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5257942DFD;
	Sat, 23 Dec 2023 03:00:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5257942DFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703300455;
	bh=+XxzU9MycUWVK+lg6sjbLhb3KHX0yi2tqpzVUgp0INs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9e4dY1/PbD+EEVV/h3cwbebHg1HzLkhTJF1zVLViEBsTWyZx3hNDRUY9iL/54CeYw
	 Ha0B+gEvJ9W7R7JKj9L9Q/p4Fj3HWZvkrjojv4LahBOOnA9/Tm6kKxKoxh4wfS2R6v
	 UMZYywQFIYBAngrKWLs7468WGJxjZUIKgWbo5VFAcHuclcaMcQONGXtCEFgZpTb8IW
	 wG60D3ed5hQsVawVw941N/pA2v9jhgCk5fAi9nNC861KdbT5eSxT5u1KbCQv51JSbT
	 uGaviHoK0RdCIGb8WQb5RmYxUGlgQ3Fg+Nz4BS8XM7w416RXTP19Vc/Rz4oTwm6pf4
	 1fRkXK0k1nNIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mhmWoiwfEwOy; Sat, 23 Dec 2023 03:00:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B63A042032;
	Sat, 23 Dec 2023 03:00:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B63A042032
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 263601BF3EC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 03:00:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F2ADA40147
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 03:00:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F2ADA40147
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id juWepNy6eG1f for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Dec 2023 03:00:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DCCF3400CB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 03:00:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DCCF3400CB
X-IronPort-AV: E=McAfee;i="6600,9927,10932"; a="386611109"
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="386611109"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2023 19:00:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="25537687"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa001.jf.intel.com with ESMTP; 22 Dec 2023 19:00:10 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Sat, 23 Dec 2023 03:55:53 +0100
Message-ID: <20231223025554.2316836-34-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
References: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703300413; x=1734836413;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BCgdqYGgp7i35gD2revPuKhwoQXv+qZoYNqZ2KhNIkI=;
 b=V/FCAV7kG3to8f2LAuTUJnTYYKe78KfSHxhdwouS298TKAGyyiyf4i2T
 RwhGiZl7nPc5ViPKZbLCGBaCpVseo2NlNeSTg8+/F96HYerHP53u1EAln
 tRTt/Bz2kYfLjmk7K1pwR4+oVEs08s/kfx6pmI5hM+Bicv+6efqmNh/SF
 p+/tBguLVf3OeOoNOMfUn+UT8FMup60L8Ilsixt9znOiMWmrlACYiSoPj
 QdBAAsB9hA8YMR6SuvGMZij1PzYNFmG7+/FBdPtp06aFVnvhIsEXJnzXY
 kUSQ5gOQLThKn8k3pt8ot2VVY+50gbVP4tpyUof+b+dLchP8dQmkirr6A
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=V/FCAV7k
Subject: [Intel-wired-lan] [PATCH RFC net-next 33/34] idpf: implement Rx
 path for AF_XDP
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

From: Michal Kubiak <michal.kubiak@intel.com>

Implement RX packet processing specific to AF_XDP ZC using the libie
XSk infra. XDP_PASS case is implemented using the generic ZC-to-skb
conversion function.

Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
Co-developed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c |  36 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h |   6 +
 drivers/net/ethernet/intel/idpf/idpf_xdp.c  |  44 ++-
 drivers/net/ethernet/intel/idpf/idpf_xsk.c  | 347 ++++++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_xsk.h  |   4 +
 5 files changed, 422 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 5ba880c2bedc..0c78811d65e5 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -409,9 +409,13 @@ void idpf_rx_desc_rel(struct idpf_queue *rxq, bool bufq, s32 q_model)
 		rxq->xdp.data = NULL;
 	}
 
-	if (bufq || !idpf_is_queue_model_split(q_model))
+	if (bufq && test_bit(__IDPF_Q_XSK, rxq->flags))
+		idpf_xsk_buf_rel(rxq);
+	else if (bufq || !idpf_is_queue_model_split(q_model))
 		idpf_rx_buf_rel_all(rxq);
 
+	idpf_xsk_clear_queue(rxq);
+
 	rxq->next_to_alloc = 0;
 	rxq->next_to_clean = 0;
 	rxq->next_to_use = 0;
@@ -674,6 +678,9 @@ int idpf_rx_bufs_init(struct idpf_queue *rxbufq, enum libie_rx_buf_type type)
 	};
 	int ret;
 
+	if (test_bit(__IDPF_Q_XSK, rxbufq->flags))
+		return idpf_check_alloc_rx_buffers_zc(rxbufq);
+
 	ret = libie_rx_page_pool_create(&bq, &rxbufq->q_vector->napi);
 	if (ret)
 		return ret;
@@ -745,6 +752,7 @@ int idpf_rx_bufs_init_all(struct idpf_vport *vport)
  */
 int idpf_rx_desc_alloc(struct idpf_queue *rxq, bool bufq, s32 q_model)
 {
+	enum virtchnl2_queue_type type;
 	struct device *dev = rxq->dev;
 
 	if (bufq)
@@ -769,6 +777,9 @@ int idpf_rx_desc_alloc(struct idpf_queue *rxq, bool bufq, s32 q_model)
 	rxq->next_to_use = 0;
 	set_bit(__IDPF_Q_GEN_CHK, rxq->flags);
 
+	type = bufq ? VIRTCHNL2_QUEUE_TYPE_RX_BUFFER : VIRTCHNL2_QUEUE_TYPE_RX;
+	idpf_xsk_setup_queue(rxq, type);
+
 	return 0;
 }
 
@@ -2788,8 +2799,8 @@ netdev_tx_t idpf_tx_splitq_start(struct sk_buff *skb,
  * @rx_desc: Receive descriptor
  * @parsed: parsed Rx packet type related fields
  */
-static void idpf_rx_hash(struct idpf_queue *rxq, struct sk_buff *skb,
-			 struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
+static void idpf_rx_hash(const struct idpf_queue *rxq, struct sk_buff *skb,
+			 const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
 			 struct libie_rx_ptype_parsed parsed)
 {
 	u32 hash;
@@ -2865,7 +2876,7 @@ static void idpf_rx_csum(struct idpf_queue *rxq, struct sk_buff *skb,
  * @csum: structure to extract checksum fields
  *
  **/
-static void idpf_rx_splitq_extract_csum_bits(struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
+static void idpf_rx_splitq_extract_csum_bits(const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
 					     struct idpf_rx_csum_decoded *csum)
 {
 	u8 qword0, qword1;
@@ -2901,7 +2912,7 @@ static void idpf_rx_splitq_extract_csum_bits(struct virtchnl2_rx_flex_desc_adv_n
  * length and packet type.
  */
 static int idpf_rx_rsc(struct idpf_queue *rxq, struct sk_buff *skb,
-		       struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
+		       const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
 		       struct libie_rx_ptype_parsed parsed)
 {
 	u16 rsc_segments, rsc_seg_len;
@@ -2970,9 +2981,8 @@ static int idpf_rx_rsc(struct idpf_queue *rxq, struct sk_buff *skb,
  * order to populate the hash, checksum, protocol, and
  * other fields within the skb.
  */
-static int idpf_rx_process_skb_fields(struct idpf_queue *rxq,
-				      struct sk_buff *skb,
-				      struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc)
+int idpf_rx_process_skb_fields(struct idpf_queue *rxq, struct sk_buff *skb,
+			       const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc)
 {
 	struct idpf_rx_csum_decoded csum_bits = { };
 	struct libie_rx_ptype_parsed parsed;
@@ -3851,7 +3861,9 @@ static bool idpf_rx_splitq_clean_all(struct idpf_q_vector *q_vec, int budget,
 		struct idpf_queue *rxq = q_vec->rx[i];
 		int pkts_cleaned_per_q;
 
-		pkts_cleaned_per_q = idpf_rx_splitq_clean(rxq, budget_per_q);
+		pkts_cleaned_per_q = test_bit(__IDPF_Q_XSK, rxq->flags) ?
+				     idpf_clean_rx_irq_zc(rxq, budget_per_q) :
+				     idpf_rx_splitq_clean(rxq, budget_per_q);
 		/* if we clean as many as budgeted, we must not be done */
 		if (pkts_cleaned_per_q >= budget_per_q)
 			clean_complete = false;
@@ -3859,8 +3871,10 @@ static bool idpf_rx_splitq_clean_all(struct idpf_q_vector *q_vec, int budget,
 	}
 	*cleaned = pkts_cleaned;
 
-	for (i = 0; i < q_vec->num_bufq; i++)
-		idpf_rx_clean_refillq_all(q_vec->bufq[i]);
+	for (i = 0; i < q_vec->num_bufq; i++) {
+		if (!test_bit(__IDPF_Q_XSK, q_vec->bufq[i]->flags))
+			idpf_rx_clean_refillq_all(q_vec->bufq[i]);
+	}
 
 	return clean_complete;
 }
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index d55ff6aaae2b..bfb867256ad2 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -572,6 +572,7 @@ struct idpf_queue {
 			struct libie_rx_buffer *hdr_buf;
 			struct idpf_rx_buf *buf;
 		} rx_buf;
+		struct xdp_buff **xsk;
 	};
 	union {
 		struct page_pool *hdr_pp;
@@ -951,6 +952,11 @@ netdev_tx_t idpf_tx_singleq_start(struct sk_buff *skb,
 				  struct net_device *netdev);
 bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_queue *rxq,
 				      u16 cleaned_count);
+
+struct virtchnl2_rx_flex_desc_adv_nic_3;
+
+int idpf_rx_process_skb_fields(struct idpf_queue *rxq, struct sk_buff *skb,
+			       const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc);
 int idpf_tso(struct sk_buff *skb, struct idpf_tx_offload_params *off);
 void idpf_tx_handle_sw_marker(struct idpf_queue *tx_q);
 int idpf_rx_desc_alloc(struct idpf_queue *rxq, bool bufq, s32 q_model);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_xdp.c b/drivers/net/ethernet/intel/idpf/idpf_xdp.c
index c20c805583be..de5187192c58 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_xdp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_xdp.c
@@ -48,7 +48,6 @@ static int idpf_rxq_for_each(const struct idpf_vport *vport,
 static int idpf_xdp_rxq_info_init(struct idpf_queue *rxq, void *arg)
 {
 	const struct idpf_vport *vport = rxq->vport;
-	const struct page_pool *pp;
 	int err;
 
 	err = __xdp_rxq_info_reg(&rxq->xdp_rxq, vport->netdev, rxq->idx,
@@ -57,13 +56,28 @@ static int idpf_xdp_rxq_info_init(struct idpf_queue *rxq, void *arg)
 	if (err)
 		return err;
 
-	pp = arg ? rxq->rxq_grp->splitq.bufq_sets[0].bufq.pp : rxq->pp;
-	xdp_rxq_info_attach_page_pool(&rxq->xdp_rxq, pp);
+	if (test_bit(__IDPF_Q_XSK, rxq->flags)) {
+		err = xdp_rxq_info_reg_mem_model(&rxq->xdp_rxq,
+						 MEM_TYPE_XSK_BUFF_POOL,
+						 NULL);
+	} else {
+		const struct page_pool *pp;
+
+		pp = arg ? rxq->rxq_grp->splitq.bufq_sets[0].bufq.pp : rxq->pp;
+		xdp_rxq_info_attach_page_pool(&rxq->xdp_rxq, pp);
+	}
+	if (err)
+		goto unreg;
 
 	rxq->xdpqs = &vport->txqs[vport->xdp_txq_offset];
 	rxq->num_xdp_txq = vport->num_xdp_txq;
 
 	return 0;
+
+unreg:
+	xdp_rxq_info_unreg(&rxq->xdp_rxq);
+
+	return err;
 }
 
 /**
@@ -90,7 +104,9 @@ static int idpf_xdp_rxq_info_deinit(struct idpf_queue *rxq, void *arg)
 	rxq->xdpqs = NULL;
 	rxq->num_xdp_txq = 0;
 
-	xdp_rxq_info_detach_mem_model(&rxq->xdp_rxq);
+	if (!test_bit(__IDPF_Q_XSK, rxq->flags))
+		xdp_rxq_info_detach_mem_model(&rxq->xdp_rxq);
+
 	xdp_rxq_info_unreg(&rxq->xdp_rxq);
 
 	return 0;
@@ -132,6 +148,23 @@ void idpf_copy_xdp_prog_to_qs(const struct idpf_vport *vport,
 	idpf_rxq_for_each(vport, idpf_xdp_rxq_assign_prog, xdp_prog);
 }
 
+static int idpf_rx_napi_schedule(struct idpf_queue *rxq, void *arg)
+{
+	if (test_bit(__IDPF_Q_XSK, rxq->flags))
+		napi_schedule(&rxq->q_vector->napi);
+
+	return 0;
+}
+
+/**
+ * idpf_vport_rx_napi_schedule - Schedule napi on RX queues from vport
+ * @vport: vport to schedule napi on
+ */
+static void idpf_vport_rx_napi_schedule(const struct idpf_vport *vport)
+{
+	idpf_rxq_for_each(vport, idpf_rx_napi_schedule, NULL);
+}
+
 void idpf_vport_xdpq_get(const struct idpf_vport *vport)
 {
 	if (!idpf_xdp_is_prog_ena(vport))
@@ -451,6 +484,9 @@ idpf_xdp_setup_prog(struct idpf_vport *vport, struct bpf_prog *prog,
 			NL_SET_ERR_MSG_MOD(extack, "Could not re-open the vport after XDP setup\n");
 			return err;
 		}
+
+		if (prog)
+			idpf_vport_rx_napi_schedule(vport);
 	}
 
 	return 0;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_xsk.c b/drivers/net/ethernet/intel/idpf/idpf_xsk.c
index 6f1870c05948..01231e828f6a 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_xsk.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_xsk.c
@@ -573,6 +573,171 @@ int idpf_xsk_pool_setup(struct idpf_vport *vport, struct xsk_buff_pool *pool,
 	return err;
 }
 
+/**
+ * idpf_init_rx_descs_zc - pick buffers from XSK buffer pool and use it
+ * @pool: XSK Buffer pool to pull the buffers from
+ * @xdp: SW ring of xdp_buff that will hold the buffers
+ * @buf_desc: Pointer to buffer descriptors that will be filled
+ * @first_buf_id: ID of the first buffer to be filled
+ * @count: The number of buffers to allocate
+ *
+ * This function allocates a number of Rx buffers from the fill queue
+ * or the internal recycle mechanism and places them on the buffer queue.
+ *
+ * Note that queue wrap should be handled by caller of this function.
+ *
+ * Returns the amount of allocated Rx descriptors
+ */
+static u32 idpf_init_rx_descs_zc(struct xsk_buff_pool *pool,
+				 struct xdp_buff **xdp,
+				 struct virtchnl2_splitq_rx_buf_desc *buf_desc,
+				 u32 first_buf_id,
+				 u32 count)
+{
+	dma_addr_t dma;
+	u32 num_buffs;
+	u32 i;
+
+	num_buffs = xsk_buff_alloc_batch(pool, xdp, count);
+	for (i = 0; i < num_buffs; i++) {
+		dma = xsk_buff_xdp_get_dma(*xdp);
+		buf_desc->pkt_addr = cpu_to_le64(dma);
+		buf_desc->qword0.buf_id = cpu_to_le16(i + first_buf_id);
+
+		buf_desc++;
+		xdp++;
+	}
+
+	return num_buffs;
+}
+
+static struct xdp_buff **idpf_get_xdp_buff(const struct idpf_queue *q, u32 idx)
+{
+	return &q->xsk[idx];
+}
+
+/**
+ * __idpf_alloc_rx_buffers_zc - allocate a number of Rx buffers
+ * @rxbufq: buffer queue
+ * @count: The number of buffers to allocate
+ *
+ * Place the @count of descriptors onto buffer queue. Handle the queue wrap
+ * for case where space from next_to_use up to the end of ring is less
+ * than @count. Finally do a tail bump.
+ *
+ * Returns true if all allocations were successful, false if any fail.
+ */
+static bool __idpf_alloc_rx_buffers_zc(struct idpf_queue *rxbufq, u32 count)
+{
+	struct virtchnl2_splitq_rx_buf_desc *buf_desc;
+	u32 nb_buffs_extra = 0, nb_buffs = 0;
+	u32 ntu = rxbufq->next_to_use;
+	u32 total_count = count;
+	struct xdp_buff **xdp;
+
+	buf_desc = &rxbufq->split_buf[ntu];
+	xdp = idpf_get_xdp_buff(rxbufq, ntu);
+
+	if (ntu + count >= rxbufq->desc_count) {
+		nb_buffs_extra = idpf_init_rx_descs_zc(rxbufq->xsk_rx, xdp,
+						       buf_desc,
+						       ntu,
+						       rxbufq->desc_count - ntu);
+		if (nb_buffs_extra != rxbufq->desc_count - ntu) {
+			ntu += nb_buffs_extra;
+			goto exit;
+		}
+		buf_desc = &rxbufq->split_buf[0];
+		xdp = idpf_get_xdp_buff(rxbufq, 0);
+		ntu = 0;
+		count -= nb_buffs_extra;
+		idpf_rx_buf_hw_update(rxbufq, 0);
+
+		if (!count)
+			goto exit;
+	}
+
+	nb_buffs = idpf_init_rx_descs_zc(rxbufq->xsk_rx, xdp,
+					 buf_desc, ntu, count);
+
+	ntu += nb_buffs;
+	if (ntu == rxbufq->desc_count)
+		ntu = 0;
+
+exit:
+	if (rxbufq->next_to_use != ntu)
+		idpf_rx_buf_hw_update(rxbufq, ntu);
+
+	rxbufq->next_to_alloc = ntu;
+
+	return total_count == (nb_buffs_extra + nb_buffs);
+}
+
+/**
+ * idpf_alloc_rx_buffers_zc - allocate a number of Rx buffers
+ * @rxbufq: buffer queue
+ * @count: The number of buffers to allocate
+ *
+ * Wrapper for internal allocation routine; figure out how many tail
+ * bumps should take place based on the given threshold
+ *
+ * Returns true if all calls to internal alloc routine succeeded
+ */
+static bool idpf_alloc_rx_buffers_zc(struct idpf_queue *rxbufq, u32 count)
+{
+	u32 rx_thresh = IDPF_QUEUE_QUARTER(rxbufq);
+	u32 leftover, i, tail_bumps;
+
+	tail_bumps = count / rx_thresh;
+	leftover = count - (tail_bumps * rx_thresh);
+
+	for (i = 0; i < tail_bumps; i++)
+		if (!__idpf_alloc_rx_buffers_zc(rxbufq, rx_thresh))
+			return false;
+	return __idpf_alloc_rx_buffers_zc(rxbufq, leftover);
+}
+
+/**
+ * idpf_check_alloc_rx_buffers_zc - allocate a number of Rx buffers with logs
+ * @adapter: board private structure
+ * @rxbufq: buffer queue
+ *
+ * Wrapper for internal allocation routine; Prints out logs, if allocation
+ * did not go as expected
+ */
+int idpf_check_alloc_rx_buffers_zc(struct idpf_queue *rxbufq)
+{
+	struct net_device *netdev = rxbufq->vport->netdev;
+	struct xsk_buff_pool *pool = rxbufq->xsk_rx;
+	u32 count = IDPF_DESC_UNUSED(rxbufq);
+
+	rxbufq->xsk = kcalloc(rxbufq->desc_count, sizeof(*rxbufq->xsk),
+			      GFP_KERNEL);
+	if (!rxbufq->xsk)
+		return -ENOMEM;
+
+	if (!xsk_buff_can_alloc(pool, count)) {
+		netdev_warn(netdev, "XSK buffer pool does not provide enough addresses to fill %d buffers on Rx queue %d\n",
+			    count, rxbufq->idx);
+		netdev_warn(netdev, "Change Rx queue/fill queue size to avoid performance issues\n");
+	}
+
+	if (!idpf_alloc_rx_buffers_zc(rxbufq, count))
+		netdev_warn(netdev, "Failed to allocate some buffers on XSK buffer pool enabled Rx queue %d\n",
+			    rxbufq->idx);
+
+	rxbufq->rx_buf_size = xsk_pool_get_rx_frame_size(pool);
+
+	return 0;
+}
+
+void idpf_xsk_buf_rel(struct idpf_queue *rxbufq)
+{
+	rxbufq->rx_buf_size = 0;
+
+	kfree(rxbufq->xsk);
+}
+
 /**
  * idpf_xsk_clean_xdpq - Clean the XDP Tx queue and its buffer pool queues
  * @xdpq: XDP_Tx queue
@@ -711,6 +876,30 @@ static u32 idpf_clean_xdp_irq_zc(struct idpf_queue *complq)
 	return done_frames;
 }
 
+static u32 idpf_xsk_tx_prep(void *_xdpq, struct libie_xdp_tx_queue *sq)
+{
+	struct idpf_queue *xdpq = _xdpq;
+	u32 free;
+
+	libie_xdp_sq_lock(&xdpq->xdp_lock);
+
+	free = IDPF_DESC_UNUSED(xdpq);
+	if (unlikely(free < IDPF_QUEUE_QUARTER(xdpq)))
+		free += idpf_clean_xdp_irq_zc(xdpq->txq_grp->complq);
+
+	*sq = (struct libie_xdp_tx_queue){
+		.dev		= xdpq->dev,
+		.tx_buf		= xdpq->tx_buf,
+		.desc_ring	= xdpq->desc_ring,
+		.xdp_lock	= &xdpq->xdp_lock,
+		.next_to_use	= &xdpq->next_to_use,
+		.desc_count	= xdpq->desc_count,
+		.xdp_tx_active	= &xdpq->xdp_tx_active,
+	};
+
+	return free;
+}
+
 /**
  * idpf_xmit_pkt - produce a single HW Tx descriptor out of AF_XDP descriptor
  * @xdpq: XDP queue to produce the HW Tx descriptor on
@@ -734,6 +923,24 @@ static void idpf_xsk_xmit_pkt(struct libie_xdp_tx_desc desc,
 				  desc.len);
 }
 
+static bool idpf_xsk_tx_flush_bulk(struct libie_xdp_tx_bulk *bq)
+{
+	return libie_xsk_tx_flush_bulk(bq, idpf_xsk_tx_prep,
+				       idpf_xsk_xmit_pkt);
+}
+
+static bool idpf_xsk_run_prog(struct xdp_buff *xdp,
+			      struct libie_xdp_tx_bulk *bq)
+{
+	return libie_xdp_run_prog(xdp, bq, idpf_xsk_tx_flush_bulk);
+}
+
+static void idpf_xsk_finalize_rx(struct libie_xdp_tx_bulk *bq)
+{
+	if (bq->act_mask >= LIBIE_XDP_TX)
+		libie_xdp_finalize_rx(bq, idpf_xsk_tx_flush_bulk,
+				      idpf_xdp_tx_finalize);
+}
 static u32 idpf_xsk_xmit_prep(void *_xdpq, struct libie_xdp_tx_queue *sq)
 {
 	struct idpf_queue *xdpq = _xdpq;
@@ -753,6 +960,146 @@ static u32 idpf_xsk_xmit_prep(void *_xdpq, struct libie_xdp_tx_queue *sq)
 	return IDPF_DESC_UNUSED(xdpq);
 }
 
+static bool
+idpf_xsk_rx_skb(struct xdp_buff *xdp,
+		const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
+		struct idpf_queue *rxq)
+{
+	struct napi_struct *napi = &rxq->q_vector->napi;
+	struct sk_buff *skb;
+
+	skb = xdp_build_skb_from_zc(napi, xdp);
+	if (unlikely(!skb))
+		return false;
+
+	if (unlikely(!idpf_rx_process_skb_fields(rxq, skb, rx_desc))) {
+		kfree_skb(skb);
+		return false;
+	}
+
+	napi_gro_receive(napi, skb);
+
+	return true;
+}
+
+/**
+ * idpf_clean_rx_irq_zc - consumes packets from the hardware queue
+ * @rxq: AF_XDP Rx queue
+ * @budget: NAPI budget
+ *
+ * Returns number of processed packets on success, remaining budget on failure.
+ */
+int idpf_clean_rx_irq_zc(struct idpf_queue *rxq, int budget)
+{
+	int total_rx_bytes = 0, total_rx_pkts = 0;
+	struct idpf_queue *rx_bufq = NULL;
+	u32 ntc = rxq->next_to_clean;
+	struct libie_xdp_tx_bulk bq;
+	bool failure = false;
+	u32 to_refill;
+	u16 buf_id;
+
+	libie_xsk_tx_init_bulk(&bq, rxq->xdp_prog, rxq->xdp_rxq.dev,
+			       rxq->xdpqs, rxq->num_xdp_txq);
+
+	while (likely(total_rx_pkts < budget)) {
+		struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc;
+		union virtchnl2_rx_desc *desc;
+		unsigned int pkt_len = 0;
+		struct xdp_buff *xdp;
+		u32 bufq_id, xdp_act;
+		u16 gen_id;
+		u8 rxdid;
+
+		desc = &rxq->rx[ntc];
+		rx_desc = (struct virtchnl2_rx_flex_desc_adv_nic_3 *)desc;
+
+		dma_rmb();
+
+		/* if the descriptor isn't done, no work yet to do */
+		gen_id = le16_to_cpu(rx_desc->pktlen_gen_bufq_id);
+		gen_id = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_GEN_M, gen_id);
+
+		if (test_bit(__IDPF_Q_GEN_CHK, rxq->flags) != gen_id)
+			break;
+
+		rxdid = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_RXDID_M,
+				  rx_desc->rxdid_ucast);
+		if (rxdid != VIRTCHNL2_RXDID_2_FLEX_SPLITQ) {
+			IDPF_RX_BUMP_NTC(rxq, ntc);
+			u64_stats_update_begin(&rxq->stats_sync);
+			u64_stats_inc(&rxq->q_stats.rx.bad_descs);
+			u64_stats_update_end(&rxq->stats_sync);
+			continue;
+		}
+
+		pkt_len = le16_to_cpu(rx_desc->pktlen_gen_bufq_id);
+		pkt_len = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_LEN_PBUF_M,
+				    pkt_len);
+
+		bufq_id = le16_to_cpu(rx_desc->pktlen_gen_bufq_id);
+		bufq_id = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_BUFQ_ID_M,
+				    bufq_id);
+
+		rx_bufq = &rxq->rxq_grp->splitq.bufq_sets[bufq_id].bufq;
+		buf_id = le16_to_cpu(rx_desc->buf_id);
+
+		xdp = *idpf_get_xdp_buff(rx_bufq, buf_id);
+
+		if (unlikely(!pkt_len)) {
+			xsk_buff_free(xdp);
+			goto next;
+		}
+
+		xsk_buff_set_size(xdp, pkt_len);
+		xsk_buff_dma_sync_for_cpu(xdp, rxq->xsk_rx);
+
+		xdp_act = idpf_xsk_run_prog(xdp, &bq);
+		if ((xdp_act == LIBIE_XDP_PASS &&
+		     unlikely(!idpf_xsk_rx_skb(xdp, rx_desc, rxq))) ||
+		    unlikely(xdp_act == LIBIE_XDP_ABORTED)) {
+			failure = true;
+			break;
+		}
+
+		total_rx_bytes += pkt_len;
+		total_rx_pkts++;
+
+next:
+		IDPF_RX_BUMP_NTC(rxq, ntc);
+	}
+
+	rxq->next_to_clean = ntc;
+	idpf_xsk_finalize_rx(&bq);
+
+	u64_stats_update_begin(&rxq->stats_sync);
+	u64_stats_add(&rxq->q_stats.rx.packets, total_rx_pkts);
+	u64_stats_add(&rxq->q_stats.rx.bytes, total_rx_bytes);
+	u64_stats_update_end(&rxq->stats_sync);
+
+	if (!rx_bufq)
+		goto skip_refill;
+
+	IDPF_RX_BUMP_NTC(rx_bufq, buf_id);
+	rx_bufq->next_to_clean = buf_id;
+
+	to_refill = IDPF_DESC_UNUSED(rx_bufq);
+	if (to_refill > IDPF_QUEUE_QUARTER(rx_bufq))
+		failure |= !idpf_alloc_rx_buffers_zc(rx_bufq, to_refill);
+
+skip_refill:
+	if (xsk_uses_need_wakeup(rxq->xsk_rx)) {
+		if (failure || rxq->next_to_clean == rxq->next_to_use)
+			xsk_set_rx_need_wakeup(rxq->xsk_rx);
+		else
+			xsk_clear_rx_need_wakeup(rxq->xsk_rx);
+
+		return total_rx_pkts;
+	}
+
+	return unlikely(failure) ? budget : total_rx_pkts;
+}
+
 /**
  * idpf_xmit_xdpq_zc - take entries from XSK Tx queue and place them onto HW Tx queue
  * @xdpq: XDP queue to produce the HW Tx descriptors on
diff --git a/drivers/net/ethernet/intel/idpf/idpf_xsk.h b/drivers/net/ethernet/intel/idpf/idpf_xsk.h
index 777d6ab7891d..51ddf2e36577 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_xsk.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_xsk.h
@@ -15,7 +15,11 @@ struct xsk_buff_pool;
 void idpf_xsk_setup_queue(struct idpf_queue *q, enum virtchnl2_queue_type t);
 void idpf_xsk_clear_queue(struct idpf_queue *q);
 
+int idpf_check_alloc_rx_buffers_zc(struct idpf_queue *rxbufq);
+void idpf_xsk_buf_rel(struct idpf_queue *rxbufq);
 void idpf_xsk_clean_xdpq(struct idpf_queue *xdpq);
+
+int idpf_clean_rx_irq_zc(struct idpf_queue *rxq, int budget);
 bool idpf_xmit_zc(struct idpf_queue *complq);
 
 int idpf_xsk_pool_setup(struct idpf_vport *vport, struct xsk_buff_pool *pool,
-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
