Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A24B36FFD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Aug 2025 18:21:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B2A5180745;
	Tue, 26 Aug 2025 16:20:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oKa2rdCmwLwF; Tue, 26 Aug 2025 16:20:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB50E80741
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756225257;
	bh=wsanEsJ1nhoQbDqkvJ4Z/0USgpQt3OIiWJGdp6dmW4Y=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hR8sEzMcycmlUz+yPM4uQkyCUjJm6/tp/wtGLRL1OAnmKwnWtHy0SetVML3umkTrH
	 8JdrO0DeL2upwdsiNFrPP1m4ID4yQ9ZZ97BpiXKyeI/MZEsKMvzntcNnpEJA8MY+Vo
	 9TT02R98JE844y0+LsUH6PRwMyW86dsL0lGz8UWyBdMlDzR8SKcOY2q4kRGUpaHuii
	 f//xYz3cHRkxzFqZ9VmY2MQXOeYTz7szgeGQQ3CBGYML9qFlJAqP765/aHNs2etma1
	 ETiFhgJifjB7RQ9lv+kfP05JF7xkd0FPGA+gowLzJ7+b4lM6sk4Ww+sWFQsQbZkN8H
	 +ym4apr0OCgqw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB50E80741;
	Tue, 26 Aug 2025 16:20:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6007CB0B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:20:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 46206403F8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:20:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UINpURmIyu3K for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Aug 2025 16:20:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7DB1D406E3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7DB1D406E3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7DB1D406E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:20:55 +0000 (UTC)
X-CSE-ConnectionGUID: Yorq3FsoQBmeUEL6uw/pOg==
X-CSE-MsgGUID: FiGm+R9RQ8y7+gcL6CYfHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="46044952"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="46044952"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 09:13:49 -0700
X-CSE-ConnectionGUID: A4iekAqhQquAxOmQHjJXNQ==
X-CSE-MsgGUID: duhTR3DRQSeeOOSj0xXs7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="200562197"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa002.jf.intel.com with ESMTP; 26 Aug 2025 09:13:44 -0700
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
Date: Tue, 26 Aug 2025 17:54:59 +0200
Message-ID: <20250826155507.2138401-6-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250826155507.2138401-1-aleksander.lobakin@intel.com>
References: <20250826155507.2138401-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756225255; x=1787761255;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xJtOSi5aIWMYLH0p0ok+yb+IaaOhf6kfqMcp711y9r0=;
 b=BD2CL2CvgJOmjskNYQaMO9u0zyIhfEeM1hk6gvsi9MZkvchHUX14uMyb
 qOwU1UBvGyyXcql20+pHOKmwn02g2qQ10tqbpMLUzENHpUzU6y7znVgyF
 K+cX4urg5y3nKtHcQ9Zjk3/3Tld7IxAogEPzJvgECMbrDSuqjx/BZCSKr
 u83ktVzLWrQ1I1LAOqr+8xG7g0LDUkeebcym5JY5IV1errxZbr/s734IF
 golXQWvAKynoFakF9drkqlEEjs4Dgy+t5pioCNPL3R4uVDjwiTOno1Y/Y
 f/kjOcbZgJF4amFO5JIF5kDkDBOolFY3MJiIeX2nc7nvux2UcrNtZYdI4
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BD2CL2Cv
Subject: [Intel-wired-lan] [PATCH iwl-next v5 05/13] idpf: add 4-byte
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
index 0a2a2b21d1ef..15bdbb2c62a9 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -115,8 +115,8 @@ static void idpf_compl_desc_rel(struct idpf_compl_queue *complq)
 		return;
 
 	dma_free_coherent(complq->netdev->dev.parent, complq->size,
-			  complq->comp, complq->dma);
-	complq->comp = NULL;
+			  complq->desc_ring, complq->dma);
+	complq->desc_ring = NULL;
 	complq->next_to_use = 0;
 	complq->next_to_clean = 0;
 }
@@ -245,12 +245,16 @@ static int idpf_tx_desc_alloc(const struct idpf_vport *vport,
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
@@ -1758,7 +1762,7 @@ static void idpf_tx_handle_rs_completion(struct idpf_tx_queue *txq,
 	/* RS completion contains queue head for queue based scheduling or
 	 * completion tag for flow based scheduling.
 	 */
-	u16 rs_compl_val = le16_to_cpu(desc->q_head_compl_tag.q_head);
+	u16 rs_compl_val = le16_to_cpu(desc->common.q_head_compl_tag.q_head);
 
 	if (!idpf_queue_has(FLOW_SCH_EN, txq)) {
 		idpf_tx_splitq_clean(txq, rs_compl_val, budget, cleaned, false);
@@ -1793,19 +1797,19 @@ static bool idpf_tx_clean_complq(struct idpf_compl_queue *complq, int budget,
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
@@ -1815,14 +1819,14 @@ static bool idpf_tx_clean_complq(struct idpf_compl_queue *complq, int budget,
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
2.51.0

