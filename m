Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 00236A50491
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Mar 2025 17:23:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ADD9B81B83;
	Wed,  5 Mar 2025 16:23:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xksPgQ7KvGGA; Wed,  5 Mar 2025 16:23:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E1F081B10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741191780;
	bh=k6t5vM8zDGah9yKgLEUq0/iHa5ohsKqsGwPPxd0JiTw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1UqCey+In8RPtl7CTSV32zSdo5DuvNCBrA5p6YTJ50XpIEINWdACChc0HbX6sss39
	 x05rjTVLljw0csmkvkFxhzD+nWpRyS3ePq4lJS/lWUFs++YwAXqfGNudQfI7ATaJFM
	 aafU2LqmTnpmtG/0z3/DgHHEOE4BN7ja7+YhbAVZnlI/erJkjDk3zE/VmPih1wYHUq
	 0ZjYg7ZEH5N49Jt2950qkkAT7mwuhnwqE0e3hnoAXB7UqK+Sph2iHVoxXQ4I8zyoo4
	 WJeOCJPewIXb7zYMX12tnVckJJLV/CLu/O5ttgcFkGdShXr2aUjPzfJmJWROHpDmYC
	 MfKEfSH8d95hw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E1F081B10;
	Wed,  5 Mar 2025 16:23:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B44A895F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 16:22:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 981A060B29
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 16:22:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bDtaP4nwKKhX for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Mar 2025 16:22:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 83BDE60B15
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 83BDE60B15
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 83BDE60B15
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 16:22:57 +0000 (UTC)
X-CSE-ConnectionGUID: eFOgmIBoTPmqAI8TsiHWjg==
X-CSE-MsgGUID: Clp7aU/XTMO9yYpDuaBCaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42026541"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="42026541"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 08:22:58 -0800
X-CSE-ConnectionGUID: 6B3u9LfTQ6e4iqhcxP6WCw==
X-CSE-MsgGUID: QM9sFAxKQ4S/1/iwesZGPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="123832940"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa004.fm.intel.com with ESMTP; 05 Mar 2025 08:22:53 -0800
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
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Simon Horman <horms@kernel.org>,
 bpf@vger.kernel.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Wed,  5 Mar 2025 17:21:26 +0100
Message-ID: <20250305162132.1106080-11-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
References: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741191778; x=1772727778;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iOUrLyyD90agdG+MapFFbwzoVnBBjFeNa2Q64hlQvDk=;
 b=aX972R7Zsjh7ldb7guOrnIxzOKSqu+yBMkLvvqMaZ1Zgm9TUiKUq1h8m
 O8m1o8PHn5p5H00BgfFDicUTuUGm7csdIQERcpOSPx7M8qwJYqy9WuHED
 75lqbCtu7HT7aWGbrNjrFB8yNrTlcraRqtDCySGh2b/0sO/D3d0Lb/xrn
 ZsA2PpmvwyxJ26mLIkSiF80poViyjUeQa9BEUGJwye/wk7k/YEvIR7jQQ
 eKWLiGXwXvWARWNSGM6OSWR5Eoy5wnA4bDzwTV/Axn16k/K3dX4eAltRN
 +A6fofkfHTARwFyfdicnvA+f0LQj/8lQXMeqy2MRic0Yhw1x6E7ZYumjX
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aX972R7Z
Subject: [Intel-wired-lan] [PATCH net-next 10/16] idpf: add support for
 nointerrupt queues
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

Currently, queues are associated 1:1 with interrupt vectors as it's
assumed queues are always interrupt-driven.
In order to use a queue without an interrupt, idpf still needs to have
a vector assigned to it to flush descriptors. This vector can be global
and only one for the whole vport to handle all its noirq queues.
Always request one excessive vector and configure it in non-interrupt
mode right away when creating vport, so that it can be used later by
queues when needed.

Co-developed-by: Michal Kubiak <michal.kubiak@intel.com>
Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        |  8 +++
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  4 ++
 drivers/net/ethernet/intel/idpf/idpf_dev.c    | 11 +++-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  2 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  8 +++
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c | 11 +++-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 53 +++++++++++++------
 7 files changed, 79 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 6b51a5dcc1e0..50dde09c525b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -281,6 +281,9 @@ struct idpf_port_stats {
  * @num_q_vectors: Number of IRQ vectors allocated
  * @q_vectors: Array of queue vectors
  * @q_vector_idxs: Starting index of queue vectors
+ * @noirq_dyn_ctl: register to enable/disable the vector for NOIRQ queues
+ * @noirq_dyn_ctl_ena: value to write to the above to enable it
+ * @noirq_v_idx: ID of the NOIRQ vector
  * @max_mtu: device given max possible MTU
  * @default_mac_addr: device will give a default MAC to use
  * @rx_itr_profile: RX profiles for Dynamic Interrupt Moderation
@@ -322,6 +325,11 @@ struct idpf_vport {
 	u16 num_q_vectors;
 	struct idpf_q_vector *q_vectors;
 	u16 *q_vector_idxs;
+
+	void __iomem *noirq_dyn_ctl;
+	u32 noirq_dyn_ctl_ena;
+	u16 noirq_v_idx;
+
 	u16 max_mtu;
 	u8 default_mac_addr[ETH_ALEN];
 	u16 rx_itr_profile[IDPF_DIM_PROFILE_SLOTS];
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index dd6cc3b5cdab..fb3b352d542e 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -57,6 +57,8 @@
 /* Default vector sharing */
 #define IDPF_MBX_Q_VEC		1
 #define IDPF_MIN_Q_VEC		1
+/* Data vector for NOIRQ queues */
+#define IDPF_RESERVED_VECS			1
 
 #define IDPF_DFLT_TX_Q_DESC_COUNT		512
 #define IDPF_DFLT_TX_COMPLQ_DESC_COUNT		512
@@ -288,6 +290,7 @@ struct idpf_ptype_state {
  * @__IDPF_Q_SW_MARKER: Used to indicate TX queue marker completions
  * @__IDPF_Q_CRC_EN: enable CRC offload in singleq mode
  * @__IDPF_Q_HSPLIT_EN: enable header split on Rx (splitq)
+ * @__IDPF_Q_NOIRQ: queue is polling-driven and has no interrupt
  * @__IDPF_Q_FLAGS_NBITS: Must be last
  */
 enum idpf_queue_flags_t {
@@ -297,6 +300,7 @@ enum idpf_queue_flags_t {
 	__IDPF_Q_SW_MARKER,
 	__IDPF_Q_CRC_EN,
 	__IDPF_Q_HSPLIT_EN,
+	__IDPF_Q_NOIRQ,
 
 	__IDPF_Q_FLAGS_NBITS,
 };
diff --git a/drivers/net/ethernet/intel/idpf/idpf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_dev.c
index 41e4bd49402a..5f177933b55c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_dev.c
@@ -73,7 +73,7 @@ static int idpf_intr_reg_init(struct idpf_vport *vport)
 	int num_vecs = vport->num_q_vectors;
 	struct idpf_vec_regs *reg_vals;
 	int num_regs, i, err = 0;
-	u32 rx_itr, tx_itr;
+	u32 rx_itr, tx_itr, val;
 	u16 total_vecs;
 
 	total_vecs = idpf_get_reserved_vecs(vport->adapter);
@@ -117,6 +117,15 @@ static int idpf_intr_reg_init(struct idpf_vport *vport)
 		intr->tx_itr = idpf_get_reg_addr(adapter, tx_itr);
 	}
 
+	/* Data vector for NOIRQ queues */
+
+	val = reg_vals[vport->q_vector_idxs[i] - IDPF_MBX_Q_VEC].dyn_ctl_reg;
+	vport->noirq_dyn_ctl = idpf_get_reg_addr(adapter, val);
+
+	val = PF_GLINT_DYN_CTL_WB_ON_ITR_M | PF_GLINT_DYN_CTL_INTENA_MSK_M |
+	      FIELD_PREP(PF_GLINT_DYN_CTL_ITR_INDX_M, IDPF_NO_ITR_UPDATE_IDX);
+	vport->noirq_dyn_ctl_ena = val;
+
 free_reg_vals:
 	kfree(reg_vals);
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index e17582d15e27..2594ca38e8ca 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1126,7 +1126,7 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
 	vport->default_vport = adapter->num_alloc_vports <
 			       idpf_get_default_vports(adapter);
 
-	num_max_q = max(max_q->max_txq, max_q->max_rxq);
+	num_max_q = max(max_q->max_txq, max_q->max_rxq) + IDPF_RESERVED_VECS;
 	vport->q_vector_idxs = kcalloc(num_max_q, sizeof(u16), GFP_KERNEL);
 	if (!vport->q_vector_idxs) {
 		kfree(vport);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 4e3de6031422..5d51e68c2878 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3710,6 +3710,8 @@ static void idpf_vport_intr_dis_irq_all(struct idpf_vport *vport)
 	struct idpf_q_vector *q_vector = vport->q_vectors;
 	int q_idx;
 
+	writel(0, vport->noirq_dyn_ctl);
+
 	for (q_idx = 0; q_idx < vport->num_q_vectors; q_idx++)
 		writel(0, q_vector[q_idx].intr_reg.dyn_ctl);
 }
@@ -3963,6 +3965,8 @@ static void idpf_vport_intr_ena_irq_all(struct idpf_vport *vport)
 		if (qv->num_txq || qv->num_rxq)
 			idpf_vport_intr_update_itr_ena_irq(qv);
 	}
+
+	writel(vport->noirq_dyn_ctl_ena, vport->noirq_dyn_ctl);
 }
 
 /**
@@ -4274,6 +4278,8 @@ static int idpf_vport_intr_init_vec_idx(struct idpf_vport *vport)
 		for (i = 0; i < vport->num_q_vectors; i++)
 			vport->q_vectors[i].v_idx = vport->q_vector_idxs[i];
 
+		vport->noirq_v_idx = vport->q_vector_idxs[i];
+
 		return 0;
 	}
 
@@ -4287,6 +4293,8 @@ static int idpf_vport_intr_init_vec_idx(struct idpf_vport *vport)
 	for (i = 0; i < vport->num_q_vectors; i++)
 		vport->q_vectors[i].v_idx = vecids[vport->q_vector_idxs[i]];
 
+	vport->noirq_v_idx = vecids[vport->q_vector_idxs[i]];
+
 	kfree(vecids);
 
 	return 0;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
index aba828abcb17..a6993a01a9b0 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
@@ -73,7 +73,7 @@ static int idpf_vf_intr_reg_init(struct idpf_vport *vport)
 	int num_vecs = vport->num_q_vectors;
 	struct idpf_vec_regs *reg_vals;
 	int num_regs, i, err = 0;
-	u32 rx_itr, tx_itr;
+	u32 rx_itr, tx_itr, val;
 	u16 total_vecs;
 
 	total_vecs = idpf_get_reserved_vecs(vport->adapter);
@@ -117,6 +117,15 @@ static int idpf_vf_intr_reg_init(struct idpf_vport *vport)
 		intr->tx_itr = idpf_get_reg_addr(adapter, tx_itr);
 	}
 
+	/* Data vector for NOIRQ queues */
+
+	val = reg_vals[vport->q_vector_idxs[i] - IDPF_MBX_Q_VEC].dyn_ctl_reg;
+	vport->noirq_dyn_ctl = idpf_get_reg_addr(adapter, val);
+
+	val = VF_INT_DYN_CTLN_WB_ON_ITR_M | VF_INT_DYN_CTLN_INTENA_MSK_M |
+	      FIELD_PREP(VF_INT_DYN_CTLN_ITR_INDX_M, IDPF_NO_ITR_UPDATE_IDX);
+	vport->noirq_dyn_ctl_ena = val;
+
 free_reg_vals:
 	kfree(reg_vals);
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 24495e4d6c78..aa45821f38f1 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -1871,21 +1871,31 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
 
 		for (j = 0; j < tx_qgrp->num_txq; j++, k++) {
+			const struct idpf_tx_queue *txq = tx_qgrp->txqs[j];
+			const struct idpf_q_vector *vec;
+			u32 v_idx, tx_itr_idx;
+
 			vqv[k].queue_type =
 				cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_TX);
-			vqv[k].queue_id = cpu_to_le32(tx_qgrp->txqs[j]->q_id);
+			vqv[k].queue_id = cpu_to_le32(txq->q_id);
 
-			if (idpf_is_queue_model_split(vport->txq_model)) {
-				vqv[k].vector_id =
-				cpu_to_le16(tx_qgrp->complq->q_vector->v_idx);
-				vqv[k].itr_idx =
-				cpu_to_le32(tx_qgrp->complq->q_vector->tx_itr_idx);
+			if (idpf_queue_has(NOIRQ, txq))
+				vec = NULL;
+			else if (idpf_is_queue_model_split(vport->txq_model))
+				vec = txq->txq_grp->complq->q_vector;
+			else
+				vec = txq->q_vector;
+
+			if (vec) {
+				v_idx = vec->v_idx;
+				tx_itr_idx = vec->tx_itr_idx;
 			} else {
-				vqv[k].vector_id =
-				cpu_to_le16(tx_qgrp->txqs[j]->q_vector->v_idx);
-				vqv[k].itr_idx =
-				cpu_to_le32(tx_qgrp->txqs[j]->q_vector->tx_itr_idx);
+				v_idx = vport->noirq_v_idx;
+				tx_itr_idx = VIRTCHNL2_ITR_IDX_1;
 			}
+
+			vqv[k].vector_id = cpu_to_le16(v_idx);
+			vqv[k].itr_idx = cpu_to_le32(tx_itr_idx);
 		}
 	}
 
@@ -1903,6 +1913,7 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 
 		for (j = 0; j < num_rxq; j++, k++) {
 			struct idpf_rx_queue *rxq;
+			u32 v_idx, rx_itr_idx;
 
 			if (idpf_is_queue_model_split(vport->rxq_model))
 				rxq = &rx_qgrp->splitq.rxq_sets[j]->rxq;
@@ -1912,8 +1923,17 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 			vqv[k].queue_type =
 				cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_RX);
 			vqv[k].queue_id = cpu_to_le32(rxq->q_id);
-			vqv[k].vector_id = cpu_to_le16(rxq->q_vector->v_idx);
-			vqv[k].itr_idx = cpu_to_le32(rxq->q_vector->rx_itr_idx);
+
+			if (idpf_queue_has(NOIRQ, rxq)) {
+				v_idx = vport->noirq_v_idx;
+				rx_itr_idx = VIRTCHNL2_ITR_IDX_0;
+			} else {
+				v_idx = rxq->q_vector->v_idx;
+				rx_itr_idx = rxq->q_vector->rx_itr_idx;
+			}
+
+			vqv[k].vector_id = cpu_to_le16(v_idx);
+			vqv[k].itr_idx = cpu_to_le32(rx_itr_idx);
 		}
 	}
 
@@ -3106,9 +3126,12 @@ int idpf_vport_alloc_vec_indexes(struct idpf_vport *vport)
 {
 	struct idpf_vector_info vec_info;
 	int num_alloc_vecs;
+	u32 req;
+
+	vec_info.num_curr_vecs = vport->num_q_vectors + IDPF_RESERVED_VECS;
+	req = max(vport->num_txq, vport->num_rxq) + IDPF_RESERVED_VECS;
+	vec_info.num_req_vecs = req;
 
-	vec_info.num_curr_vecs = vport->num_q_vectors;
-	vec_info.num_req_vecs = max(vport->num_txq, vport->num_rxq);
 	vec_info.default_vport = vport->default_vport;
 	vec_info.index = vport->idx;
 
@@ -3121,7 +3144,7 @@ int idpf_vport_alloc_vec_indexes(struct idpf_vport *vport)
 		return -EINVAL;
 	}
 
-	vport->num_q_vectors = num_alloc_vecs;
+	vport->num_q_vectors = num_alloc_vecs - IDPF_RESERVED_VECS;
 
 	return 0;
 }
-- 
2.48.1

