Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id J+zYGlQOH2olewAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 19:09:40 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F7063088D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 19:09:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=GkEEpMdB;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 547384031F;
	Tue,  2 Jun 2026 17:09:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eRmFoOw27i-c; Tue,  2 Jun 2026 17:09:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59881419BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780420176;
	bh=8cp9ruOw8MOACs5oO+ru7c4B7SIqgkh0F+YLO62LAvM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GkEEpMdBt0H6qgAzNpIgTIfNm9XoRuUbd4nB1OXWqKvtG1IK0t4hcxGTT2tPznk0Y
	 TkLoPuLL8plqO4+t+X1yBxINRnpmngSvPeLYxj70flFigzHXovtVBcQv/R+ZqGlo6+
	 5m/pIYlKcqcrje9gH9HSwNX9og1cb5kZSgXoBK5dc3Ld3VwBiiABqzLAXhY6LgWkYS
	 MY/j8GXPiQOCWCV/NGtJMAySDSdNNxAwOXLFT/yVLNr8OjyLXkp9EhJq4qd+S9Xv7c
	 JY654ydqjrGtMZhgsXBLmRELwMkB4zJ4+Yz6qvFxztuYlHsozqIasksiQn9WkAvh5t
	 Yg2JoJVXagkbg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 59881419BB;
	Tue,  2 Jun 2026 17:09:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id EEEC22F5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 17:09:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E12F860B00
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 17:09:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xMOoNKOOZpVE for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jun 2026 17:09:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C63A960F72
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C63A960F72
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C63A960F72
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 17:09:33 +0000 (UTC)
X-CSE-ConnectionGUID: N3ZZiJ/VRw+U4FK2etjmFg==
X-CSE-MsgGUID: 1B8YTFTqStO3ajDcOusTCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="81074151"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="81074151"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 10:09:33 -0700
X-CSE-ConnectionGUID: JVoat2iQTGu0yZBYIzl66Q==
X-CSE-MsgGUID: pjhSrO6ZSTKcH1fHo0nhUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="241475801"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.14])
 by fmviesa008.fm.intel.com with ESMTP; 02 Jun 2026 10:09:32 -0700
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Date: Tue,  2 Jun 2026 10:20:24 -0700
Message-Id: <20260602172024.2285947-4-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20260602172024.2285947-1-joshua.a.hay@intel.com>
References: <20260602172024.2285947-1-joshua.a.hay@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780420174; x=1811956174;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0hNyd6l4mAlhdLZzhVHbZjXeQ+X9+9CN45W6x7Lxqxo=;
 b=jr/+/lTgWqnKmdAeARutYBRzYifPvzrKRwaQu9Yr0os2v9NmobAZDtyf
 /uZ3VcLZyqw3L8rVgfEH7alT+wUs4SIfbUOfa5J/VVc9d0aPR0ASrr4sc
 079LZvaRn3fpvkduUE8Fy1m7aRLsGVbrXwELCMzXS5YnuxQW/Fv//FDRZ
 cRV6oVd8vkA++8cb2HVX89Nj4kRgPeGlpVf/98XWZ9FpM1TLnNyvLzpNU
 Vz0GPThyNuBp+yiiSCiRQGNsY6onTeluO10TSG+f0g+KjIPSMS9wzixqj
 W0j/K+NK9HjEnTtx4dNeVXVjDfROGiA7fXmUXiowUgzBRrQfJIjughT4C
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jr/+/lTg
Subject: [Intel-wired-lan] [PATCH net v2 3/3] idpf: fix skb datapath queue
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joshua.a.hay@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:from_mime,intel.com:email,osuosl.org:from_smtp,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,sashiko.dev:url];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B3F7063088D

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

As reported by Sashiko [1], add a dma_rmb to read ownership (gen) bit in
the completion descriptor before any other fields.

Fixes: 0c3f135e840d ("idpf: stop Tx if there are insufficient buffer resources")
Fixes: 1c325aac10a8 ("idpf: configure resources for TX queues")
Link: https://sashiko.dev/#/patchset/20260504-jk-iwl-net-2026-05-04-v1-0-a222a88bd962%40intel.com [1]
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v1->v2: add dma_rmb after completion desc gen bit read
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 51 +++++++++++++--------
 drivers/net/ethernet/intel/idpf/idpf_txrx.h |  6 ++-
 2 files changed, 38 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 9cc4fbd13313..54ef86ebf11f 100644
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
@@ -2196,7 +2195,7 @@ static void idpf_tx_handle_rs_completion(struct idpf_tx_queue *txq,
 static bool idpf_tx_clean_complq(struct idpf_compl_queue *complq, int budget,
 				 int *cleaned)
 {
-	struct idpf_splitq_tx_compl_desc *tx_desc;
+	struct idpf_splitq_tx_compl_desc *tx_desc = complq->ntc_desc;
 	s16 ntc = complq->next_to_clean;
 	struct idpf_netdev_priv *np;
 	unsigned int complq_budget;
@@ -2204,7 +2203,6 @@ static bool idpf_tx_clean_complq(struct idpf_compl_queue *complq, int budget,
 	int i;
 
 	complq_budget = complq->clean_budget;
-	tx_desc = &complq->comp[ntc];
 	ntc -= complq->desc_count;
 
 	do {
@@ -2221,6 +2219,8 @@ static bool idpf_tx_clean_complq(struct idpf_compl_queue *complq, int budget,
 		if (idpf_queue_has(GEN_CHK, complq) != gen)
 			break;
 
+		dma_rmb();
+
 		/* Find necessary info of TX queue to clean buffers */
 		rel_tx_qid = le16_get_bits(tx_desc->common.qid_comptype_gen,
 					   IDPF_TXD_COMPLQ_QID_M);
@@ -2260,11 +2260,12 @@ static bool idpf_tx_clean_complq(struct idpf_compl_queue *complq, int budget,
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
 
@@ -2274,6 +2275,8 @@ static bool idpf_tx_clean_complq(struct idpf_compl_queue *complq, int budget,
 		complq_budget--;
 	} while (likely(complq_budget));
 
+	complq->ntc_desc = tx_desc;
+
 	/* Store the state of the complq to be used later in deciding if a
 	 * TXQ can be started again
 	 */
@@ -2440,21 +2443,32 @@ static int idpf_txq_has_room(struct idpf_tx_queue *tx_q, u32 descs_needed,
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
@@ -3024,6 +3038,7 @@ static bool idpf_tx_splitq_need_re(struct idpf_tx_queue *tx_q)
 static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 					struct idpf_tx_queue *tx_q)
 {
+	bool flow = idpf_queue_has(FLOW_SCH_EN, tx_q);
 	struct idpf_tx_splitq_params tx_params = {
 		.prev_ntu = tx_q->next_to_use,
 	};
@@ -3043,7 +3058,7 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 
 	/* Check for splitq specific TX resources */
 	count += (IDPF_TX_DESCS_PER_CACHE_LINE + tso);
-	if (idpf_tx_maybe_stop_splitq(tx_q, count, buf_count)) {
+	if (idpf_tx_maybe_stop_splitq(tx_q, count, buf_count, flow)) {
 		idpf_tx_buf_hw_update(tx_q, tx_q->next_to_use, false);
 
 		return NETDEV_TX_BUSY;
@@ -3075,7 +3090,7 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 		idpf_tx_set_tstamp_desc(ctx_desc, idx);
 	}
 
-	if (idpf_queue_has(FLOW_SCH_EN, tx_q)) {
+	if (flow) {
 		struct idpf_sw_queue *refillq = tx_q->refillq;
 
 		/* Save refillq state in case of a packet rollback.  Otherwise,
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 8eadc2682c96..2a03ec586161 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -810,11 +810,13 @@ libeth_cacheline_set_assert(struct idpf_buf_queue, 64, 24, 32);
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
@@ -836,6 +838,7 @@ struct idpf_compl_queue {
 
 	DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
 	u32 desc_count;
+	u32 desc_sz;
 
 	u32 clean_budget;
 	struct net_device *netdev;
@@ -844,6 +847,7 @@ struct idpf_compl_queue {
 	__cacheline_group_begin_aligned(read_write);
 	u32 next_to_use;
 	u32 next_to_clean;
+	struct idpf_splitq_tx_compl_desc *ntc_desc;
 
 	aligned_u64 num_completions;
 	__cacheline_group_end_aligned(read_write);
@@ -856,7 +860,7 @@ struct idpf_compl_queue {
 	struct idpf_q_vector *q_vector;
 	__cacheline_group_end_aligned(cold);
 };
-libeth_cacheline_set_assert(struct idpf_compl_queue, 40, 16, 24);
+libeth_cacheline_set_assert(struct idpf_compl_queue, 48, 24, 24);
 
 /**
  * struct idpf_sw_queue
-- 
2.39.2

