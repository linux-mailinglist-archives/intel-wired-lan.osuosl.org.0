Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AD039AE6CB0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 18:46:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA06B40C47;
	Tue, 24 Jun 2025 16:46:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fTh2bstfMWqk; Tue, 24 Jun 2025 16:46:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1673740C1E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750783566;
	bh=+J1C/CSgDCtrvu7GE1QU+Aj4YRJXWC4ieDwwpy5oguI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KH9zm00/PIrKcRdhZEsj7L3/KGdFUm2nNBLBdqyHX+hUI9z7u/sk8FA1wh5hNAP+x
	 dpyCQxc4ktDHxRLuvpiSf1QJmFVSJCIUa5OtktnsJuNnZ/9Ks1YXTL1w1guqgrPskk
	 R7RzjH+m9o7WZe9zC+TSU8aJ3Px5MhdqpjodX3gN91PRV/fIsWvJ4CEkYshOQxGnfS
	 VIaABnV2Th1K/r5TspsaU2b/6S9l/XnfwhwDJYl4RwZgZE8igzYtT2MVfmlcnuo1et
	 Lg6eM1lii6FdeCUhGyfHDkUVfaHuNG+El8/QWYzRfM7P0KYocttOaV5wPYsVTY0TRt
	 mxPnlPJWeTKIQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1673740C1E;
	Tue, 24 Jun 2025 16:46:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0BE59154
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:46:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F20E0813EB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:46:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EyLxkV_kk0hB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 16:46:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 255A48143C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 255A48143C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 255A48143C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:46:04 +0000 (UTC)
X-CSE-ConnectionGUID: eSijcutkQlWSymFDXdRsIg==
X-CSE-MsgGUID: CKLyyrfMQlK5xORP5ItdTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="64091214"
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="64091214"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 09:46:04 -0700
X-CSE-ConnectionGUID: Y5Y+VeosRkmDXx66JNMdYg==
X-CSE-MsgGUID: arUYkRq1T5qMrD10A9862g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="152669477"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa010.fm.intel.com with ESMTP; 24 Jun 2025 09:46:00 -0700
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
Date: Tue, 24 Jun 2025 18:45:09 +0200
Message-ID: <20250624164515.2663137-7-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250624164515.2663137-1-aleksander.lobakin@intel.com>
References: <20250624164515.2663137-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750783564; x=1782319564;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fvS6KQ1HDLpO1EDy8tD3y16ZD9Kbio8lsg6izkoNg9M=;
 b=A3Z1UC4DvDdDBdOesvPs2ZUq+JceWQFo783Ujnt3W0zvRlvbtJvAzSow
 ERY7SRXHRSo22capp/TpIZaQDYnNrWaFu/i7n6lVFbCg+6Wj34+eJRuMZ
 dj3LVNhoh+BjPyJJS98b8yq/g2yFP8dModyQT6LyGvjY7jmtO3upC2rw0
 AbU+H6EjwEYisWg54M7RZc4PA4ncqmE0Yyu44PTa3Dp2hKwIIxkkXgBil
 6B03rfPC1T6cPq5jOXmkRkHCY/E+gHf3EIboyrA0dH90o1HBKMxLwBuPx
 G1C+/1jUc02aHjYnPV3oCNNApfmJzbFVibS+hq6PLWqCjvG5TbeLo4ipA
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=A3Z1UC4D
Subject: [Intel-wired-lan] [PATCH iwl-next v2 06/12] idpf: add support for
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
assumed queues are always interrupt-driven. For XDP, we want to use
Tx queues without interrupts and only do "lazy" cleaning when the number
of free elements is <= threshold (closest pow-2 to 1/4 of the ring).
In order to use a queue without an interrupt, idpf still needs to have
a vector assigned to it to flush descriptors. This vector can be global
and only one for the whole vport to handle all its noirq queues.
Always request one excessive vector and configure it in non-interrupt
mode right away when creating vport, so that it can be used later by
queues when needed (not only XDP ones).

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
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 54 ++++++++++++++-----
 7 files changed, 81 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 99fa506fe536..316b601a03b6 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -285,6 +285,9 @@ struct idpf_port_stats {
  * @num_q_vectors: Number of IRQ vectors allocated
  * @q_vectors: Array of queue vectors
  * @q_vector_idxs: Starting index of queue vectors
+ * @noirq_dyn_ctl: register to enable/disable the vector for NOIRQ queues
+ * @noirq_dyn_ctl_ena: value to write to the above to enable it
+ * @noirq_v_idx: ID of the NOIRQ vector
  * @max_mtu: device given max possible MTU
  * @default_mac_addr: device will give a default MAC to use
  * @rx_itr_profile: RX profiles for Dynamic Interrupt Moderation
@@ -329,6 +332,11 @@ struct idpf_vport {
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
index ca98450683dc..4cce3c5c3739 100644
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
@@ -291,6 +293,7 @@ struct idpf_ptype_state {
  * @__IDPF_Q_HSPLIT_EN: enable header split on Rx (splitq)
  * @__IDPF_Q_PTP: indicates whether the Rx timestamping is enabled for the
  *		  queue
+ * @__IDPF_Q_NOIRQ: queue is polling-driven and has no interrupt
  * @__IDPF_Q_FLAGS_NBITS: Must be last
  */
 enum idpf_queue_flags_t {
@@ -301,6 +304,7 @@ enum idpf_queue_flags_t {
 	__IDPF_Q_CRC_EN,
 	__IDPF_Q_HSPLIT_EN,
 	__IDPF_Q_PTP,
+	__IDPF_Q_NOIRQ,
 
 	__IDPF_Q_FLAGS_NBITS,
 };
diff --git a/drivers/net/ethernet/intel/idpf/idpf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_dev.c
index 3fae81f1f988..1aad22903b9d 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_dev.c
@@ -74,7 +74,7 @@ static int idpf_intr_reg_init(struct idpf_vport *vport)
 	int num_vecs = vport->num_q_vectors;
 	struct idpf_vec_regs *reg_vals;
 	int num_regs, i, err = 0;
-	u32 rx_itr, tx_itr;
+	u32 rx_itr, tx_itr, val;
 	u16 total_vecs;
 
 	total_vecs = idpf_get_reserved_vecs(vport->adapter);
@@ -118,6 +118,15 @@ static int idpf_intr_reg_init(struct idpf_vport *vport)
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
index a7d504a5ea05..caac316bf7f2 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1100,7 +1100,7 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
 	vport->default_vport = adapter->num_alloc_vports <
 			       idpf_get_default_vports(adapter);
 
-	num_max_q = max(max_q->max_txq, max_q->max_rxq);
+	num_max_q = max(max_q->max_txq, max_q->max_rxq) + IDPF_RESERVED_VECS;
 	vport->q_vector_idxs = kcalloc(num_max_q, sizeof(u16), GFP_KERNEL);
 	if (!vport->q_vector_idxs)
 		goto free_vport;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 127f3afeb522..e1cdc35e2bfa 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3781,6 +3781,8 @@ static void idpf_vport_intr_dis_irq_all(struct idpf_vport *vport)
 	struct idpf_q_vector *q_vector = vport->q_vectors;
 	int q_idx;
 
+	writel(0, vport->noirq_dyn_ctl);
+
 	for (q_idx = 0; q_idx < vport->num_q_vectors; q_idx++)
 		writel(0, q_vector[q_idx].intr_reg.dyn_ctl);
 }
@@ -4024,6 +4026,8 @@ static void idpf_vport_intr_ena_irq_all(struct idpf_vport *vport)
 		if (qv->num_txq || qv->num_rxq)
 			idpf_vport_intr_update_itr_ena_irq(qv);
 	}
+
+	writel(vport->noirq_dyn_ctl_ena, vport->noirq_dyn_ctl);
 }
 
 /**
@@ -4335,6 +4339,8 @@ static int idpf_vport_intr_init_vec_idx(struct idpf_vport *vport)
 		for (i = 0; i < vport->num_q_vectors; i++)
 			vport->q_vectors[i].v_idx = vport->q_vector_idxs[i];
 
+		vport->noirq_v_idx = vport->q_vector_idxs[i];
+
 		return 0;
 	}
 
@@ -4348,6 +4354,8 @@ static int idpf_vport_intr_init_vec_idx(struct idpf_vport *vport)
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
index ca846d31a260..3e3fa3df2ac0 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -1843,21 +1843,31 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
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
 
@@ -1875,6 +1885,7 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 
 		for (j = 0; j < num_rxq; j++, k++) {
 			struct idpf_rx_queue *rxq;
+			u32 v_idx, rx_itr_idx;
 
 			if (idpf_is_queue_model_split(vport->rxq_model))
 				rxq = &rx_qgrp->splitq.rxq_sets[j]->rxq;
@@ -1884,8 +1895,17 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
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
 
@@ -3084,9 +3104,15 @@ int idpf_vport_alloc_vec_indexes(struct idpf_vport *vport)
 {
 	struct idpf_vector_info vec_info;
 	int num_alloc_vecs;
+	u32 req;
 
 	vec_info.num_curr_vecs = vport->num_q_vectors;
-	vec_info.num_req_vecs = max(vport->num_txq, vport->num_rxq);
+	if (vec_info.num_curr_vecs)
+		vec_info.num_curr_vecs += IDPF_RESERVED_VECS;
+
+	req = max(vport->num_txq, vport->num_rxq) + IDPF_RESERVED_VECS;
+	vec_info.num_req_vecs = req;
+
 	vec_info.default_vport = vport->default_vport;
 	vec_info.index = vport->idx;
 
@@ -3099,7 +3125,7 @@ int idpf_vport_alloc_vec_indexes(struct idpf_vport *vport)
 		return -EINVAL;
 	}
 
-	vport->num_q_vectors = num_alloc_vecs;
+	vport->num_q_vectors = num_alloc_vecs - IDPF_RESERVED_VECS;
 
 	return 0;
 }
-- 
2.49.0

