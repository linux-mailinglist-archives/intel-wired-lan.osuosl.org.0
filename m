Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8929CB16420
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jul 2025 18:08:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 406E260B04;
	Wed, 30 Jul 2025 16:08:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id INSDyTz1gXaq; Wed, 30 Jul 2025 16:08:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6DCBE613ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753891712;
	bh=BaHndAN7W0iCANzmr4LFB7HPrnvgDEDP3QX8hDbJ2Sw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Vj+V2pQheiT4YR0naG8T6ZXj/+RI+bhRIcxOraE6DAqZKlDFsboYUA4Fda55/Nkv6
	 spgKNgGOKGgaMS87Hc6wk1x1CEO2Z31r3Qu/ON1x3YxgCk+B1+wYpbbz2gActk78T5
	 FpPmu/Wx2CAjyg//P4zna5HZDlpMF+Nqgq2SyEl8NLg9SL5gq9AEM2UiAolk8V1HJw
	 +diDGixZMS4Bs+gtGlY/3gfEP+1UNtjvabkeb5yxt82mkBsy0rEN4JlsMNZ4e1xZET
	 gkCeggnXckPmcO6IFZ1/SEn8F+58xrUoVHcZY82HtQQ5+qarczJO8UZpSwXL1ECtqL
	 u2fMYePXXpXgw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6DCBE613ED;
	Wed, 30 Jul 2025 16:08:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4C76713D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 16:08:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2F58E613C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 16:08:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KYZjBTRdii8Z for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jul 2025 16:08:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 54B33613F0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 54B33613F0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 54B33613F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 16:08:29 +0000 (UTC)
X-CSE-ConnectionGUID: mi+Jb/klQfeMnyg8e2I5mQ==
X-CSE-MsgGUID: qMgKX89SRnO+5FvgiymZJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="67278889"
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="67278889"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 09:08:29 -0700
X-CSE-ConnectionGUID: K4R7QIh3SealjWAvN2yBMw==
X-CSE-MsgGUID: dtq0yOO9Q4KLR47Eb1dY+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="163812986"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa010.fm.intel.com with ESMTP; 30 Jul 2025 09:08:25 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Simon Horman <horms@kernel.org>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, bpf@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Wed, 30 Jul 2025 18:07:09 +0200
Message-ID: <20250730160717.28976-11-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250730160717.28976-1-aleksander.lobakin@intel.com>
References: <20250730160717.28976-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753891710; x=1785427710;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jURueI/QgGrZ6um0yH99F1lStbRfGYLvaLrbClFpun0=;
 b=RcaLKxn3F7QroUi37CGAxkCrno7Hgu9AHgoYEzWrrEGKeqmigDN+cxx9
 Afh368nOVkfwHBRxv7Cncl7NYCxFVv1dhjX28TNJhkOHMlrPrBGaRLljM
 uSSqBU3F6gPNop1CnDUzfZ4wmOQdjbGv1b6pLulw4T6t0G4iA1HheDJz4
 ITAQ90owG7PFO8mcfBREnxQMUcJfEj3Ambiz2HwEt+Mk2bXvNua8VNnFY
 KO9O9gMXA5gVevab67sX5FsPKAjcOJYvXkJ/VG+sr3VNTkIjrVycd9D2O
 +rrER8pZDZyd6gUGnCzi/EeAbZ0/zMci2NCetuyAvHnwZpOi9wUk9WYeH
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RcaLKxn3
Subject: [Intel-wired-lan] [PATCH iwl-next v3 10/18] idpf: add 4-byte
 completion descriptor definition
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

From: Michal Kubiak <michal.kubiak@intel.com>

In the queue-based scheduling mode, Tx completion descriptor is 4 bytes
comparing to 8 bytes in flow-based.
Add definition for it and allocate the corresponding amount of memory
for the descriptors during the completion queue creation.
This does not include handling 4-byte completions during Tx polling, as
for now, the only user of QB will be XDP, which has its own routines.

Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |  6 +++-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   | 11 ++++--
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 34 +++++++++++--------
 3 files changed, 33 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h
index 7492d1713243..20d5af64e750 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h
@@ -186,13 +186,17 @@ struct idpf_base_tx_desc {
 	__le64 qw1; /* type_cmd_offset_bsz_l2tag1 */
 }; /* read used with buffer queues */
 
-struct idpf_splitq_tx_compl_desc {
+struct idpf_splitq_4b_tx_compl_desc {
 	/* qid=[10:0] comptype=[13:11] rsvd=[14] gen=[15] */
 	__le16 qid_comptype_gen;
 	union {
 		__le16 q_head; /* Queue head */
 		__le16 compl_tag; /* Completion tag */
 	} q_head_compl_tag;
+}; /* writeback used with completion queues */
+
+struct idpf_splitq_tx_compl_desc {
+	struct idpf_splitq_4b_tx_compl_desc common;
 	u8 ts[3];
 	u8 rsvd; /* Reserved */
 }; /* writeback used with completion queues */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 52753dff381c..11a318fd48d4 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -728,7 +728,9 @@ libeth_cacheline_set_assert(struct idpf_buf_queue, 64, 24, 32);
 
 /**
  * struct idpf_compl_queue - software structure representing a completion queue
- * @comp: completion descriptor array
+ * @comp: 8-byte completion descriptor array
+ * @comp_4b: 4-byte completion descriptor array
+ * @desc_ring: virtual descriptor ring address
  * @txq_grp: See struct idpf_txq_group
  * @flags: See enum idpf_queue_flags_t
  * @desc_count: Number of descriptors
@@ -748,7 +750,12 @@ libeth_cacheline_set_assert(struct idpf_buf_queue, 64, 24, 32);
  */
 struct idpf_compl_queue {
 	__cacheline_group_begin_aligned(read_mostly);
-	struct idpf_splitq_tx_compl_desc *comp;
+	union {
+		struct idpf_splitq_tx_compl_desc *comp;
+		struct idpf_splitq_4b_tx_compl_desc *comp_4b;
+
+		void *desc_ring;
+	};
 	struct idpf_txq_group *txq_grp;
 
 	DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 34dc12cf5b21..8a7b58ae05d4 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -95,8 +95,8 @@ static void idpf_compl_desc_rel(struct idpf_compl_queue *complq)
 		return;
 
 	dma_free_coherent(complq->netdev->dev.parent, complq->size,
-			  complq->comp, complq->dma);
-	complq->comp = NULL;
+			  complq->desc_ring, complq->dma);
+	complq->desc_ring = NULL;
 	complq->next_to_use = 0;
 	complq->next_to_clean = 0;
 }
@@ -225,12 +225,16 @@ static int idpf_tx_desc_alloc(const struct idpf_vport *vport,
 static int idpf_compl_desc_alloc(const struct idpf_vport *vport,
 				 struct idpf_compl_queue *complq)
 {
-	complq->size = array_size(complq->desc_count, sizeof(*complq->comp));
+	u32 desc_size;
 
-	complq->comp = dma_alloc_coherent(complq->netdev->dev.parent,
-					  complq->size, &complq->dma,
-					  GFP_KERNEL);
-	if (!complq->comp)
+	desc_size = idpf_queue_has(FLOW_SCH_EN, complq) ?
+		    sizeof(*complq->comp) : sizeof(*complq->comp_4b);
+	complq->size = array_size(complq->desc_count, desc_size);
+
+	complq->desc_ring = dma_alloc_coherent(complq->netdev->dev.parent,
+					       complq->size, &complq->dma,
+					       GFP_KERNEL);
+	if (!complq->desc_ring)
 		return -ENOMEM;
 
 	complq->next_to_use = 0;
@@ -1738,7 +1742,7 @@ static void idpf_tx_handle_rs_completion(struct idpf_tx_queue *txq,
 	/* RS completion contains queue head for queue based scheduling or
 	 * completion tag for flow based scheduling.
 	 */
-	u16 rs_compl_val = le16_to_cpu(desc->q_head_compl_tag.q_head);
+	u16 rs_compl_val = le16_to_cpu(desc->common.q_head_compl_tag.q_head);
 
 	if (!idpf_queue_has(FLOW_SCH_EN, txq)) {
 		idpf_tx_splitq_clean(txq, rs_compl_val, budget, cleaned, false);
@@ -1773,19 +1777,19 @@ static bool idpf_tx_clean_complq(struct idpf_compl_queue *complq, int budget,
 	do {
 		struct libeth_sq_napi_stats cleaned_stats = { };
 		struct idpf_tx_queue *tx_q;
+		__le16 hw_head;
 		int rel_tx_qid;
-		u16 hw_head;
 		u8 ctype;	/* completion type */
 		u16 gen;
 
 		/* if the descriptor isn't done, no work yet to do */
-		gen = le16_get_bits(tx_desc->qid_comptype_gen,
+		gen = le16_get_bits(tx_desc->common.qid_comptype_gen,
 				    IDPF_TXD_COMPLQ_GEN_M);
 		if (idpf_queue_has(GEN_CHK, complq) != gen)
 			break;
 
 		/* Find necessary info of TX queue to clean buffers */
-		rel_tx_qid = le16_get_bits(tx_desc->qid_comptype_gen,
+		rel_tx_qid = le16_get_bits(tx_desc->common.qid_comptype_gen,
 					   IDPF_TXD_COMPLQ_QID_M);
 		if (rel_tx_qid >= complq->txq_grp->num_txq ||
 		    !complq->txq_grp->txqs[rel_tx_qid]) {
@@ -1795,14 +1799,14 @@ static bool idpf_tx_clean_complq(struct idpf_compl_queue *complq, int budget,
 		tx_q = complq->txq_grp->txqs[rel_tx_qid];
 
 		/* Determine completion type */
-		ctype = le16_get_bits(tx_desc->qid_comptype_gen,
+		ctype = le16_get_bits(tx_desc->common.qid_comptype_gen,
 				      IDPF_TXD_COMPLQ_COMPL_TYPE_M);
 		switch (ctype) {
 		case IDPF_TXD_COMPLT_RE:
-			hw_head = le16_to_cpu(tx_desc->q_head_compl_tag.q_head);
+			hw_head = tx_desc->common.q_head_compl_tag.q_head;
 
-			idpf_tx_splitq_clean(tx_q, hw_head, budget,
-					     &cleaned_stats, true);
+			idpf_tx_splitq_clean(tx_q, le16_to_cpu(hw_head),
+					     budget, &cleaned_stats, true);
 			break;
 		case IDPF_TXD_COMPLT_RS:
 			idpf_tx_handle_rs_completion(tx_q, tx_desc,
-- 
2.50.1

