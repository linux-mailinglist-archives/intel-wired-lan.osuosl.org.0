Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Ev/EhFA1GmRsQcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Apr 2026 01:21:53 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9077B3A8174
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Apr 2026 01:21:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 761E480DF4;
	Mon,  6 Apr 2026 23:21:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nYklYLcaEGYg; Mon,  6 Apr 2026 23:21:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA36D80DD8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775517708;
	bh=IeOafykmlncr8ZsAU6WO41Q1CIBiGCoHoCU4eZ7nqv4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5FY0geqIEJa4Cz+zq4JMcOMClOiOvEmzqjdJKVm6vR9hmJfSSYZCWtJIeR510L2HY
	 HYiMcmbCvg+Zs6lLdsTeZv7Ruu9NqW/HmsFKvKpAhYc/Uhsa7hjf3g2OR3quzUfuGS
	 wtcwVV1w+B9aTAyD3H2p+PLuXA/LsMakRAIhIFEf113EVMMBouTLWA2L1ZM5goDHlW
	 L2d2hanPodm8N9DHHwSnaGEw/YABOjtxd644dDB6rR51tjTSP1wuXHMmH7ApTqXmI4
	 llfoQsbiS9xOexXeY55q3vvLspt9ryxWH+uALUekptYjuHpxWeL3SewPyKG3S65zoM
	 TC/3hEMsiCI2g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA36D80DD8;
	Mon,  6 Apr 2026 23:21:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 66C161EB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Apr 2026 23:21:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 58AA160A43
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Apr 2026 23:21:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oOY39R9MbMuh for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Apr 2026 23:21:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7766A607DB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7766A607DB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7766A607DB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Apr 2026 23:21:46 +0000 (UTC)
X-CSE-ConnectionGUID: ZAMXC6thQ8u73hdKfQnuIw==
X-CSE-MsgGUID: vvwwk58cQa+4so2HEsLIOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="76368986"
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="76368986"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 16:21:45 -0700
X-CSE-ConnectionGUID: ie146FGOS0qcepsWoRMBfA==
X-CSE-MsgGUID: 6mnlO9qORUmQRZmMAe4jag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="232050500"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.14])
 by orviesa003.jf.intel.com with ESMTP; 06 Apr 2026 16:21:45 -0700
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Date: Mon,  6 Apr 2026 16:32:36 -0700
Message-Id: <20260406233236.3585504-3-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20260406233236.3585504-1-joshua.a.hay@intel.com>
References: <20260406233236.3585504-1-joshua.a.hay@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775517707; x=1807053707;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LoyL83Q4kP/YIk5ssgNwI9pOEK+CHoIbH+8bUYCFx5w=;
 b=HX1PV0p/4ih2xLknPcGvJh07clPSui24aiZ5+QeKJi90BTE/fuuXqyLa
 sXBN9ORUuHLbAo1VKAbOx4D+ydePICH3NzM5J9D03KvTNOmL42uunUgQi
 86mDdFnNFg11IOHygBcwzFa95tnRQhi3xfF8Dces5/wimcKsasOz6JsS9
 7eaVBaZyij3YCCQRW3Swnh8OXTVG85lL5obthowAXUOffVUMeQZcNSnQu
 pVosBZhlVJglExc918r3bc7pPQAiUPXHraauzYWGLLh/qACQ1R1DjI8yv
 lA5bL0Zq+cb27KFBTYuhWZvAwL+UwPEuPVmqOfvTL0Xft8jxq+s9EdfV/
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HX1PV0p/
Subject: [Intel-wired-lan] [PATCH iwl-net 2/2] idpf: fix skb datapath queue
 based scheduling crashes and timeouts
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[joshua.a.hay@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9077B3A8174
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The splitq Tx resource checks were assuming that the queues were using
flow based scheduling and checking the refillqs for free buffers.
However, the Tx refillqs are not allocated when using queue based
scheduling resulting in a NULL ptr dereference. Adjust the Tx resource
checks to only check available descriptor resources when using queue
based scheduling. Because queue based scheduling does not have any
notion of descriptor only completions, there cannot be any packets in
flight, meaning there is no need to check for pending completions.

The driver also only supported 8 byte completion descriptors in the skb
datapath previously. However, currently the FW only supports 4 byte
completion descriptors when using queue based scheduling. This meant we
were skipping over completions, resulting in Tx timeouts.  Add support
to process both 4 and 8 byte completion descriptors, depending on the
scheduling mode. Cache the next_to_clean completion descriptor in the
completion queue struct, and fetch this descriptor before the start of
each cleaning loop. Access the next descriptor in the loop by
calculating the index based on raw byte count.

Fixes: 0c3f135e840d ("idpf: stop Tx if there are insufficient buffer resources")
Fixes: 1c325aac10a8 ("idpf: configure resources for TX queues")
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 49 +++++++++++++--------
 drivers/net/ethernet/intel/idpf/idpf_txrx.h |  6 ++-
 2 files changed, 36 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index f6b3b15364ff..4fc0bb14c5b1 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -270,11 +270,9 @@ static int idpf_tx_desc_alloc(const struct idpf_vport *vport,
 static int idpf_compl_desc_alloc(const struct idpf_vport *vport,
 				 struct idpf_compl_queue *complq)
 {
-	u32 desc_size;
-
-	desc_size = idpf_queue_has(FLOW_SCH_EN, complq) ?
-		    sizeof(*complq->comp) : sizeof(*complq->comp_4b);
-	complq->size = array_size(complq->desc_count, desc_size);
+	complq->desc_sz = idpf_queue_has(FLOW_SCH_EN, complq) ?
+			  sizeof(*complq->comp) : sizeof(*complq->comp_4b);
+	complq->size = array_size(complq->desc_count, complq->desc_sz);
 
 	complq->desc_ring = dma_alloc_coherent(complq->netdev->dev.parent,
 					       complq->size, &complq->dma,
@@ -284,6 +282,7 @@ static int idpf_compl_desc_alloc(const struct idpf_vport *vport,
 
 	complq->next_to_use = 0;
 	complq->next_to_clean = 0;
+	complq->ntc_desc = complq->comp;
 	idpf_queue_set(GEN_CHK, complq);
 
 	idpf_xsk_setup_queue(vport, complq,
@@ -2193,7 +2192,7 @@ static void idpf_tx_handle_rs_completion(struct idpf_tx_queue *txq,
 static bool idpf_tx_clean_complq(struct idpf_compl_queue *complq, int budget,
 				 int *cleaned)
 {
-	struct idpf_splitq_tx_compl_desc *tx_desc;
+	struct idpf_splitq_tx_compl_desc *tx_desc = complq->ntc_desc;
 	s16 ntc = complq->next_to_clean;
 	struct idpf_netdev_priv *np;
 	unsigned int complq_budget;
@@ -2201,7 +2200,6 @@ static bool idpf_tx_clean_complq(struct idpf_compl_queue *complq, int budget,
 	int i;
 
 	complq_budget = complq->clean_budget;
-	tx_desc = &complq->comp[ntc];
 	ntc -= complq->desc_count;
 
 	do {
@@ -2257,11 +2255,12 @@ static bool idpf_tx_clean_complq(struct idpf_compl_queue *complq, int budget,
 		u64_stats_update_end(&tx_q->stats_sync);
 
 fetch_next_desc:
-		tx_desc++;
+		tx_desc = (struct idpf_splitq_tx_compl_desc *)
+				((u8 *)tx_desc + complq->desc_sz);
 		ntc++;
 		if (unlikely(!ntc)) {
 			ntc -= complq->desc_count;
-			tx_desc = &complq->comp[0];
+			tx_desc = complq->comp;
 			idpf_queue_change(GEN_CHK, complq);
 		}
 
@@ -2271,6 +2270,8 @@ static bool idpf_tx_clean_complq(struct idpf_compl_queue *complq, int budget,
 		complq_budget--;
 	} while (likely(complq_budget));
 
+	complq->ntc_desc = tx_desc;
+
 	/* Store the state of the complq to be used later in deciding if a
 	 * TXQ can be started again
 	 */
@@ -2437,21 +2438,32 @@ static int idpf_txq_has_room(struct idpf_tx_queue *tx_q, u32 descs_needed,
  * @tx_q: the queue to be checked
  * @descs_needed: number of descriptors required for this packet
  * @bufs_needed: number of buffers needed for this packet
+ * @flow: true if queue uses flow based scheduling, false if queue based scheduling
  *
  * Return: 0 if stop is not needed
  */
 static int idpf_tx_maybe_stop_splitq(struct idpf_tx_queue *tx_q,
-				     u32 descs_needed,
-				     u32 bufs_needed)
+				     u32 descs_needed, u32 bufs_needed,
+				     bool flow)
 {
-	/* Since we have multiple resources to check for splitq, our
+	/* Since we have multiple resources to check for flow based splitq, our
 	 * start,stop_thrs becomes a boolean check instead of a count
 	 * threshold.
 	 */
-	if (netif_subqueue_maybe_stop(tx_q->netdev, tx_q->idx,
-				      idpf_txq_has_room(tx_q, descs_needed,
-							bufs_needed),
-				      1, 1))
+	if (flow && netif_subqueue_maybe_stop(tx_q->netdev, tx_q->idx,
+					      idpf_txq_has_room(tx_q,
+								descs_needed,
+								bufs_needed),
+					      1, 1))
+		return 0;
+
+	/* For queue based splitq, there is no need to check the number of
+	 * pending completions since we cannot reuse descriptors until we get
+	 * completions, so we only need to check for descriptor resources.
+	 */
+	if (!flow && netif_subqueue_maybe_stop(tx_q->netdev, tx_q->idx,
+					       IDPF_DESC_UNUSED(tx_q),
+					       descs_needed, descs_needed))
 		return 0;
 
 	u64_stats_update_begin(&tx_q->stats_sync);
@@ -3021,6 +3033,7 @@ static bool idpf_tx_splitq_need_re(struct idpf_tx_queue *tx_q)
 static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 					struct idpf_tx_queue *tx_q)
 {
+	bool flow = idpf_queue_has(FLOW_SCH_EN, tx_q);
 	struct idpf_tx_splitq_params tx_params = {
 		.prev_ntu = tx_q->next_to_use,
 	};
@@ -3040,7 +3053,7 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 
 	/* Check for splitq specific TX resources */
 	count += (IDPF_TX_DESCS_PER_CACHE_LINE + tso);
-	if (idpf_tx_maybe_stop_splitq(tx_q, count, buf_count)) {
+	if (idpf_tx_maybe_stop_splitq(tx_q, count, buf_count, flow)) {
 		idpf_tx_buf_hw_update(tx_q, tx_q->next_to_use, false);
 
 		return NETDEV_TX_BUSY;
@@ -3072,7 +3085,7 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 		idpf_tx_set_tstamp_desc(ctx_desc, idx);
 	}
 
-	if (idpf_queue_has(FLOW_SCH_EN, tx_q)) {
+	if (flow) {
 		struct idpf_sw_queue *refillq = tx_q->refillq;
 
 		/* Save refillq state in case of a packet rollback.  Otherwise,
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 4be5b3b6d3ed..b6836e38f449 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -807,11 +807,13 @@ libeth_cacheline_set_assert(struct idpf_buf_queue, 64, 24, 32);
  * @txq_grp: See struct idpf_txq_group
  * @flags: See enum idpf_queue_flags_t
  * @desc_count: Number of descriptors
+ * @desc_sz: Descriptor size in bytes
  * @clean_budget: queue cleaning budget
  * @netdev: &net_device corresponding to this queue
  * @next_to_use: Next descriptor to use. Relevant in both split & single txq
  *		 and bufq.
  * @next_to_clean: Next descriptor to clean
+ * @ntc_desc: Pointer to next_to_clean descriptor for next NAPI poll
  * @num_completions: Only relevant for TX completion queue. It tracks the
  *		     number of completions received to compare against the
  *		     number of completions pending, as accumulated by the
@@ -833,6 +835,7 @@ struct idpf_compl_queue {
 
 	DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
 	u32 desc_count;
+	u32 desc_sz;
 
 	u32 clean_budget;
 	struct net_device *netdev;
@@ -841,6 +844,7 @@ struct idpf_compl_queue {
 	__cacheline_group_begin_aligned(read_write);
 	u32 next_to_use;
 	u32 next_to_clean;
+	struct idpf_splitq_tx_compl_desc *ntc_desc;
 
 	aligned_u64 num_completions;
 	__cacheline_group_end_aligned(read_write);
@@ -853,7 +857,7 @@ struct idpf_compl_queue {
 	struct idpf_q_vector *q_vector;
 	__cacheline_group_end_aligned(cold);
 };
-libeth_cacheline_set_assert(struct idpf_compl_queue, 40, 16, 24);
+libeth_cacheline_set_assert(struct idpf_compl_queue, 48, 24, 24);
 
 /**
  * struct idpf_sw_queue
-- 
2.39.2

