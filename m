Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D95EB098CC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Jul 2025 02:14:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C4FC080D00;
	Fri, 18 Jul 2025 00:14:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vhCBYblx-0nh; Fri, 18 Jul 2025 00:14:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E959380D02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752797667;
	bh=JK0FHfXwc2jmSHu1IDu/rfaUzgk+94QCe4ioOyOpwF8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lTit4a7atWCAA0Z0Zw1Cb49g/HB6DsjKVm18ICaM83QeP6cyNL51gas5npo7YzW0B
	 vuNOyU2ZWhAb763t3OuNbxzweNxhuEfq9zDQQ6WCERJ1tK1ClAFUD5LkHySwXDmBdq
	 RaILvtRAkyZe6KlDjKkrjJ09k5QB4Yt2PC933xmU7l0KaloYqSU2ABDfrdeHjTYybW
	 AeVwGe7P90ktQBiHgzmab62tPyHGVfUZvBRLq1XUNC4+0iW0FPMSU6YKIvtkh89hM1
	 KWrelooBn8BZxaS0y8mbEui5g37fiGqELeflQDYUgiY2iybErvVHvIYI9g758q/on8
	 lcuAmMG9YLIQg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E959380D02;
	Fri, 18 Jul 2025 00:14:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3FD31E1E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 00:14:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EA096409B9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 00:14:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WS-LUrHCIWAe for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Jul 2025 00:14:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 130AF408D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 130AF408D1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 130AF408D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 00:14:22 +0000 (UTC)
X-CSE-ConnectionGUID: gVaQmRfyRO6l8omZ7HfmXg==
X-CSE-MsgGUID: HEa1RFlLRK6JZHIxw6Fsmg==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="65345437"
X-IronPort-AV: E=Sophos;i="6.16,320,1744095600"; d="scan'208";a="65345437"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 17:14:23 -0700
X-CSE-ConnectionGUID: ltmei6RyS7ykZckFdOLFlA==
X-CSE-MsgGUID: rNJqO+zWQNC7dTkB/SFpAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,320,1744095600"; d="scan'208";a="188908867"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.13])
 by fmviesa001.fm.intel.com with ESMTP; 17 Jul 2025 17:14:22 -0700
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Joshua Hay <joshua.a.hay@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>
Date: Thu, 17 Jul 2025 17:21:49 -0700
Message-Id: <20250718002150.2724409-6-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20250718002150.2724409-1-joshua.a.hay@intel.com>
References: <20250718002150.2724409-1-joshua.a.hay@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752797664; x=1784333664;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=prU+GBffQ65sf1NCIcl3SkpxIlPrpjYL1T+MesbVWGQ=;
 b=EycSqRJ8rHkywrh7zgP2eVsmLPPP2ayrvCD/g6C5Y6gXHz/I1m8zCK6m
 QhzlLSeHDhmeAcITCz9J++PJHouHK+VdRWFC7nq8rpSRylbjrGm1aRrgi
 HkzKwYQX4MJ8KCsl0P/jbWkh8w2waPJjcaJC6K/tjt/k5htkcQGOPhzmW
 mucAuEggs+PskfdbaPU5tV5sMAODkX0liyozriyTkBROaqcGqeAA/TZYB
 j57bI/q10H4TAEmHVClmf35z2v29zGbzgE03Bdv5WdjQiJ59wdPEhrAfM
 IiDi/Zbu6hgiGJhNDFeQmlDHF/Uq+EiiONg/7Pmb3wbQQcivYiQr1QY+X
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EycSqRJ8
Subject: [Intel-wired-lan] [PATCH net v2 5/6] idpf: stop Tx if there are
 insufficient buffer resources
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

The Tx refillq logic will cause packets to be silently dropped if there
are not enough buffer resources available to send a packet in flow
scheduling mode. Instead, determine how many buffers are needed along
with number of descriptors. Make sure there are enough of both resources
to send the packet, and stop the queue if not.

Fixes: 7292af042bcf ("idpf: fix a race in txq wakeup")
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>

v2:
- Init buf_count to 1 and += nr_frags to account for header
- s/unsigned int/u32 where appropriate
- replaced BUFS_UNUSED macro with static inline func
---
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  4 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 47 +++++++++++++------
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   | 15 +++++-
 3 files changed, 47 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index a3b3261bbdfa..bf9b820c8330 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -415,11 +415,11 @@ netdev_tx_t idpf_tx_singleq_frame(struct sk_buff *skb,
 {
 	struct idpf_tx_offload_params offload = { };
 	struct idpf_tx_buf *first;
+	u32 count, buf_count = 1;
 	int csum, tso, needed;
-	unsigned int count;
 	__be16 protocol;
 
-	count = idpf_tx_desc_count_required(tx_q, skb);
+	count = idpf_tx_res_count_required(tx_q, skb, &buf_count);
 	if (unlikely(!count))
 		return idpf_tx_drop_skb(tx_q, skb);
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 96d5dcd4a85a..cfda566270c7 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -2251,15 +2251,22 @@ void idpf_tx_splitq_build_flow_desc(union idpf_tx_flex_desc *desc,
 	desc->flow.qw1.compl_tag = cpu_to_le16(params->compl_tag);
 }
 
-/* Global conditions to tell whether the txq (and related resources)
- * has room to allow the use of "size" descriptors.
+/**
+ * idpf_tx_splitq_has_room - check if enough Tx splitq resources are available
+ * @tx_q: the queue to be checked
+ * @descs_needed: number of descriptors required for this packet
+ * @bufs_needed: number of Tx buffers required for this packet
+ *
+ * Return: 0 if no room available, 1 otherwise
  */
-static int idpf_txq_has_room(struct idpf_tx_queue *tx_q, u32 size)
+static int idpf_txq_has_room(struct idpf_tx_queue *tx_q, u32 descs_needed,
+			     u32 bufs_needed)
 {
-	if (IDPF_DESC_UNUSED(tx_q) < size ||
+	if (IDPF_DESC_UNUSED(tx_q) < descs_needed ||
 	    IDPF_TX_COMPLQ_PENDING(tx_q->txq_grp) >
 		IDPF_TX_COMPLQ_OVERFLOW_THRESH(tx_q->txq_grp->complq) ||
-	    IDPF_TX_BUF_RSV_LOW(tx_q))
+	    IDPF_TX_BUF_RSV_LOW(tx_q) ||
+	    idpf_tx_splitq_get_free_bufs(tx_q->refillq) < bufs_needed)
 		return 0;
 	return 1;
 }
@@ -2268,14 +2275,21 @@ static int idpf_txq_has_room(struct idpf_tx_queue *tx_q, u32 size)
  * idpf_tx_maybe_stop_splitq - 1st level check for Tx splitq stop conditions
  * @tx_q: the queue to be checked
  * @descs_needed: number of descriptors required for this packet
+ * @bufs_needed: number of buffers needed for this packet
  *
- * Returns 0 if stop is not needed
+ * Return: 0 if stop is not needed
  */
 static int idpf_tx_maybe_stop_splitq(struct idpf_tx_queue *tx_q,
-				     unsigned int descs_needed)
+				     u32 descs_needed,
+				     u32 bufs_needed)
 {
+	/* Since we have multiple resources to check for splitq, our
+	 * start,stop_thrs becomes a boolean check instead of a count
+	 * threshold.
+	 */
 	if (netif_subqueue_maybe_stop(tx_q->netdev, tx_q->idx,
-				      idpf_txq_has_room(tx_q, descs_needed),
+				      idpf_txq_has_room(tx_q, descs_needed,
+							bufs_needed),
 				      1, 1))
 		return 0;
 
@@ -2317,14 +2331,16 @@ void idpf_tx_buf_hw_update(struct idpf_tx_queue *tx_q, u32 val,
 }
 
 /**
- * idpf_tx_desc_count_required - calculate number of Tx descriptors needed
+ * idpf_tx_res_count_required - get number of Tx resources needed for this pkt
  * @txq: queue to send buffer on
  * @skb: send buffer
+ * @bufs_needed: (output) number of buffers needed for this skb.
  *
- * Returns number of data descriptors needed for this skb.
+ * Return: number of data descriptors and buffers needed for this skb.
  */
-unsigned int idpf_tx_desc_count_required(struct idpf_tx_queue *txq,
-					 struct sk_buff *skb)
+unsigned int idpf_tx_res_count_required(struct idpf_tx_queue *txq,
+					struct sk_buff *skb,
+					u32 *bufs_needed)
 {
 	const struct skb_shared_info *shinfo;
 	unsigned int count = 0, i;
@@ -2335,6 +2351,7 @@ unsigned int idpf_tx_desc_count_required(struct idpf_tx_queue *txq,
 		return count;
 
 	shinfo = skb_shinfo(skb);
+	*bufs_needed += shinfo->nr_frags;
 	for (i = 0; i < shinfo->nr_frags; i++) {
 		unsigned int size;
 
@@ -2952,11 +2969,11 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 	};
 	union idpf_flex_tx_ctx_desc *ctx_desc;
 	struct idpf_tx_buf *first;
-	unsigned int count;
+	u32 count, buf_count = 1;
 	int tso, idx;
 	u32 buf_id;
 
-	count = idpf_tx_desc_count_required(tx_q, skb);
+	count = idpf_tx_res_count_required(tx_q, skb, &buf_count);
 	if (unlikely(!count))
 		return idpf_tx_drop_skb(tx_q, skb);
 
@@ -2966,7 +2983,7 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 
 	/* Check for splitq specific TX resources */
 	count += (IDPF_TX_DESCS_PER_CACHE_LINE + tso);
-	if (idpf_tx_maybe_stop_splitq(tx_q, count)) {
+	if (idpf_tx_maybe_stop_splitq(tx_q, count, buf_count)) {
 		idpf_tx_buf_hw_update(tx_q, tx_q->next_to_use, false);
 
 		return NETDEV_TX_BUSY;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 10ec37d10081..36020db47880 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -1025,6 +1025,17 @@ static inline void idpf_vport_intr_set_wb_on_itr(struct idpf_q_vector *q_vector)
 	       reg->dyn_ctl);
 }
 
+/**
+ * idpf_tx_splitq_get_free_bufs - get number of free buf_ids in refillq
+ * @refillq: pointer to refillq containing buf_ids
+ */
+static inline u32 idpf_tx_splitq_get_free_bufs(struct idpf_sw_queue *refillq)
+{
+	return (refillq->next_to_use > refillq->next_to_clean ?
+		0 : refillq->desc_count) +
+	       refillq->next_to_use - refillq->next_to_clean - 1;
+}
+
 int idpf_vport_singleq_napi_poll(struct napi_struct *napi, int budget);
 void idpf_vport_init_num_qs(struct idpf_vport *vport,
 			    struct virtchnl2_create_vport *vport_msg);
@@ -1052,8 +1063,8 @@ void idpf_tx_buf_hw_update(struct idpf_tx_queue *tx_q, u32 val,
 			   bool xmit_more);
 unsigned int idpf_size_to_txd_count(unsigned int size);
 netdev_tx_t idpf_tx_drop_skb(struct idpf_tx_queue *tx_q, struct sk_buff *skb);
-unsigned int idpf_tx_desc_count_required(struct idpf_tx_queue *txq,
-					 struct sk_buff *skb);
+unsigned int idpf_tx_res_count_required(struct idpf_tx_queue *txq,
+					struct sk_buff *skb, u32 *buf_count);
 void idpf_tx_timeout(struct net_device *netdev, unsigned int txqueue);
 netdev_tx_t idpf_tx_singleq_frame(struct sk_buff *skb,
 				  struct idpf_tx_queue *tx_q);
-- 
2.39.2

