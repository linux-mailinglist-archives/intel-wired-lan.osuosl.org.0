Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB7FB53908
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Sep 2025 18:23:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F58A6E283;
	Thu, 11 Sep 2025 16:23:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F2gZ1_qVPxHZ; Thu, 11 Sep 2025 16:23:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 631A96E6AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757607808;
	bh=YKMxDl64zgeOpM/pStK4ocik9vmKQbcOrtcr7JMnsDI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8Sp35L3oaEoirSRloHbz9WRXeBRMQErw2cqafmwtTaM4RIzfoZVjM1Vom1QYvgcCM
	 lMuveM7sv3U/wOb2GAW3/+suRStv+KyYpDVKuTymvp5OJ8alUiVENlyAw38QrhzVCE
	 W5fOAa9QhDmy6Q0pTGXRMAgF/JkFoqg3FA5mZzYWg9timAifa58EzcWd2fVhYvFS3q
	 vtKh2cT8/oLrULZ8Nvh1i9rkMZ9tEC0ruEVTwmp2GA4Hx5DoqnQYeVQjYgGNBqYKO4
	 NkItMX8UJULqscqwikJONwpSNOrT7EJPLBe2smCYAfGHsSePwnlA3+rKzQZNWdiXoq
	 vSljbOZyLaYMg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 631A96E6AD;
	Thu, 11 Sep 2025 16:23:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C5840234
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 16:23:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C0F4A41E4A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 16:23:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RZaJcZx1gMAj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Sep 2025 16:23:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A10F441E10
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A10F441E10
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A10F441E10
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 16:23:24 +0000 (UTC)
X-CSE-ConnectionGUID: PIJHTquTS1O3xtluDAsRRg==
X-CSE-MsgGUID: VHCNDR0VTTyOGUOHDpvKHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11549"; a="70635171"
X-IronPort-AV: E=Sophos;i="6.18,257,1751266800"; d="scan'208";a="70635171"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 09:23:24 -0700
X-CSE-ConnectionGUID: EkGKB+bMSXKyc0s1q2FC9g==
X-CSE-MsgGUID: RC1IHAenSD2jBiAvsAMZDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,257,1751266800"; d="scan'208";a="173284642"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa009.jf.intel.com with ESMTP; 11 Sep 2025 09:23:19 -0700
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
Date: Thu, 11 Sep 2025 18:22:29 +0200
Message-ID: <20250911162233.1238034-2-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250911162233.1238034-1-aleksander.lobakin@intel.com>
References: <20250911162233.1238034-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757607804; x=1789143804;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KUdZicuWZDTzJeD5R2x9S2PLy//12bjDbzPArxUq/i0=;
 b=cAlBas8I/UFPHkWunqOt1uMuU+iFMLaum10Y+xsQNxmGzZitaj2ulQ9n
 lEheE/5eZH2EPFz9T6u5N3qipUShgTHHXcud6u3TTn7BZ9g5/hX8ub3qd
 HJJQs27SpPBDyeDuZyoS46wrn8QDyMTXmFZUcbUF66eS3MiIkl7zFbNiK
 XWNy9ZLf3EbpPBLnoghmE2lHPAYxRPN+FFn9Nyqvg7c4N8vJgoWlJ2Uyk
 XsjwG3UdzGHNofOl+PTonFDAAqlvrcCskvrz0M3VoGZmJZnsxy3u7zCKi
 REuPOtuPxkE3Opq5WdLuUD+614fJXWW75nrZEIL6HOlhKaFwrUxatj8L/
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cAlBas8I
Subject: [Intel-wired-lan] [PATCH iwl-next 1/5] idpf: add virtchnl functions
 to manage selected queues
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

Implement VC functions dedicated to enabling, disabling and configuring
not all but only selected queues.

Also, refactor the existing implementation to make the code more
modular. Introduce new generic functions for sending VC messages
consisting of chunks, in order to isolate the sending algorithm
and its implementation for specific VC messages.

Finally, rewrite the function for mapping queues to q_vectors using the
new modular approach to avoid copying the code that implements the VC
message sending algorithm.

Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
Co-developed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |    3 +
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   32 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |    1 +
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 1160 +++++++++++------
 4 files changed, 767 insertions(+), 429 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 39a9c6bd6055..88dc3db488b1 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -614,6 +614,7 @@ libeth_cacheline_set_assert(struct idpf_rx_queue,
  * @dma: Physical address of ring
  * @q_vector: Backreference to associated vector
  * @buf_pool_size: Total number of idpf_tx_buf
+ * @rel_q_id: relative virtchnl queue index
  */
 struct idpf_tx_queue {
 	__cacheline_group_begin_aligned(read_mostly);
@@ -684,7 +685,9 @@ struct idpf_tx_queue {
 	dma_addr_t dma;
 
 	struct idpf_q_vector *q_vector;
+
 	u32 buf_pool_size;
+	u32 rel_q_id;
 	__cacheline_group_end_aligned(cold);
 };
 libeth_cacheline_set_assert(struct idpf_tx_queue, 64,
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
index d714ff0eaca0..eac3d15daa42 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -4,6 +4,8 @@
 #ifndef _IDPF_VIRTCHNL_H_
 #define _IDPF_VIRTCHNL_H_
 
+#include "virtchnl2.h"
+
 #define IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC	(60 * 1000)
 #define IDPF_VC_XN_IDX_M		GENMASK(7, 0)
 #define IDPF_VC_XN_SALT_M		GENMASK(15, 8)
@@ -114,6 +116,33 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter);
 int idpf_send_mb_msg(struct idpf_adapter *adapter, u32 op,
 		     u16 msg_size, u8 *msg, u16 cookie);
 
+struct idpf_queue_ptr {
+	enum virtchnl2_queue_type	type;
+	union {
+		struct idpf_rx_queue		*rxq;
+		struct idpf_tx_queue		*txq;
+		struct idpf_buf_queue		*bufq;
+		struct idpf_compl_queue		*complq;
+	};
+};
+
+struct idpf_queue_set {
+	struct idpf_vport		*vport;
+
+	u32				num;
+	struct idpf_queue_ptr		qs[] __counted_by(num);
+};
+
+struct idpf_queue_set *idpf_alloc_queue_set(struct idpf_vport *vport, u32 num);
+
+int idpf_send_enable_queue_set_msg(const struct idpf_queue_set *qs);
+int idpf_send_disable_queue_set_msg(const struct idpf_queue_set *qs);
+int idpf_send_config_queue_set_msg(const struct idpf_queue_set *qs);
+
+int idpf_send_disable_queues_msg(struct idpf_vport *vport);
+int idpf_send_config_queues_msg(struct idpf_vport *vport);
+int idpf_send_enable_queues_msg(struct idpf_vport *vport);
+
 void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q);
 u32 idpf_get_vport_id(struct idpf_vport *vport);
 int idpf_send_create_vport_msg(struct idpf_adapter *adapter,
@@ -130,9 +159,6 @@ void idpf_vport_dealloc_max_qs(struct idpf_adapter *adapter,
 int idpf_send_add_queues_msg(const struct idpf_vport *vport, u16 num_tx_q,
 			     u16 num_complq, u16 num_rx_q, u16 num_rx_bufq);
 int idpf_send_delete_queues_msg(struct idpf_vport *vport);
-int idpf_send_enable_queues_msg(struct idpf_vport *vport);
-int idpf_send_disable_queues_msg(struct idpf_vport *vport);
-int idpf_send_config_queues_msg(struct idpf_vport *vport);
 
 int idpf_vport_alloc_vec_indexes(struct idpf_vport *vport);
 int idpf_get_vec_ids(struct idpf_adapter *adapter,
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 1a756cc0ccd6..81b6646dd3fc 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -1365,6 +1365,7 @@ static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
 			q->tx_min_pkt_len = idpf_get_min_tx_pkt_len(adapter);
 			q->netdev = vport->netdev;
 			q->txq_grp = tx_qgrp;
+			q->rel_q_id = j;
 
 			if (!split) {
 				q->clean_budget = vport->compln_clean_budget;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 31b5dbfcbc39..e46b88f7ce37 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -716,30 +716,145 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter)
 	return err;
 }
 
+struct idpf_chunked_msg_params {
+	u32			(*prepare_msg)(const struct idpf_vport *vport,
+					       void *buf, const void *pos,
+					       u32 num);
+
+	const void		*chunks;
+	u32			num_chunks;
+
+	u32			chunk_sz;
+	u32			config_sz;
+
+	u32			vc_op;
+};
+
+struct idpf_queue_set *idpf_alloc_queue_set(struct idpf_vport *vport, u32 num)
+{
+	struct idpf_queue_set *qp;
+
+	qp = kzalloc(struct_size(qp, qs, num), GFP_KERNEL);
+	if (!qp)
+		return NULL;
+
+	qp->vport = vport;
+	qp->num = num;
+
+	return qp;
+}
+
 /**
- * idpf_wait_for_marker_event - wait for software marker response
+ * idpf_send_chunked_msg - send VC message consisting of chunks
  * @vport: virtual port data structure
+ * @params: message params
  *
- * Returns 0 success, negative on failure.
- **/
-static int idpf_wait_for_marker_event(struct idpf_vport *vport)
+ * Helper function for preparing a message describing queues to be enabled
+ * or disabled.
+ *
+ * Return: the total size of the prepared message.
+ */
+static int idpf_send_chunked_msg(struct idpf_vport *vport,
+				 const struct idpf_chunked_msg_params *params)
 {
+	struct idpf_vc_xn_params xn_params = {
+		.vc_op		= params->vc_op,
+		.timeout_ms	= IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
+	};
+	const void *pos = params->chunks;
+	u32 num_chunks, num_msgs, buf_sz;
+	void *buf __free(kfree) = NULL;
+	u32 totqs = params->num_chunks;
+
+	num_chunks = min(IDPF_NUM_CHUNKS_PER_MSG(params->config_sz,
+						 params->chunk_sz), totqs);
+	num_msgs = DIV_ROUND_UP(totqs, num_chunks);
+
+	buf_sz = params->config_sz + num_chunks * params->chunk_sz;
+	buf = kzalloc(buf_sz, GFP_KERNEL);
+	if (!buf)
+		return -ENOMEM;
+
+	xn_params.send_buf.iov_base = buf;
+
+	for (u32 i = 0; i < num_msgs; i++) {
+		ssize_t reply_sz;
+
+		memset(buf, 0, buf_sz);
+		xn_params.send_buf.iov_len = buf_sz;
+
+		if (params->prepare_msg(vport, buf, pos, num_chunks) != buf_sz)
+			return -EINVAL;
+
+		reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
+		if (reply_sz < 0)
+			return reply_sz;
+
+		pos += num_chunks * params->chunk_sz;
+		totqs -= num_chunks;
+
+		num_chunks = min(num_chunks, totqs);
+		buf_sz = params->config_sz + num_chunks * params->chunk_sz;
+	}
+
+	return 0;
+}
+
+/**
+ * idpf_wait_for_marker_event_set - wait for software marker response for
+ *				    selected Tx queues
+ * @qs: set of the Tx queues
+ *
+ * Return: 0 success, -errno on failure.
+ */
+static int idpf_wait_for_marker_event_set(const struct idpf_queue_set *qs)
+{
+	struct idpf_tx_queue *txq;
 	bool markers_rcvd = true;
 
-	for (u32 i = 0; i < vport->num_txq; i++) {
-		struct idpf_tx_queue *txq = vport->txqs[i];
+	for (u32 i = 0; i < qs->num; i++) {
+		switch (qs->qs[i].type) {
+		case VIRTCHNL2_QUEUE_TYPE_TX:
+			txq = qs->qs[i].txq;
 
-		idpf_queue_set(SW_MARKER, txq);
-		idpf_wait_for_sw_marker_completion(txq);
-		markers_rcvd &= !idpf_queue_has(SW_MARKER, txq);
+			idpf_queue_set(SW_MARKER, txq);
+			idpf_wait_for_sw_marker_completion(txq);
+			markers_rcvd &= !idpf_queue_has(SW_MARKER, txq);
+			break;
+		default:
+			break;
+		}
 	}
 
-	if (markers_rcvd)
-		return 0;
+	if (!markers_rcvd) {
+		netdev_warn(qs->vport->netdev,
+			    "Failed to receive marker packets\n");
+		return -ETIMEDOUT;
+	}
 
-	dev_warn(&vport->adapter->pdev->dev, "Failed to receive marker packets\n");
+	return 0;
+}
 
-	return -ETIMEDOUT;
+/**
+ * idpf_wait_for_marker_event - wait for software marker response
+ * @vport: virtual port data structure
+ *
+ * Return: 0 success, negative on failure.
+ **/
+static int idpf_wait_for_marker_event(struct idpf_vport *vport)
+{
+	struct idpf_queue_set *qs __free(kfree) = NULL;
+
+	qs = idpf_alloc_queue_set(vport, vport->num_txq);
+	if (!qs)
+		return -ENOMEM;
+
+	for (u32 i = 0; i < qs->num; i++) {
+		qs->qs[i].type = VIRTCHNL2_QUEUE_TYPE_TX;
+		qs->qs[i].txq = vport->txqs[i];
+	}
+
+	return idpf_wait_for_marker_event_set(qs);
 }
 
 /**
@@ -1571,234 +1686,361 @@ int idpf_send_disable_vport_msg(struct idpf_vport *vport)
 }
 
 /**
- * idpf_send_config_tx_queues_msg - Send virtchnl config tx queues message
+ * idpf_fill_txq_config_chunk - fill chunk describing the Tx queue
+ * @vport: virtual port data structure
+ * @q: Tx queue to be inserted into VC chunk
+ * @qi: pointer to the buffer containing the VC chunk
+ */
+static void idpf_fill_txq_config_chunk(const struct idpf_vport *vport,
+				       const struct idpf_tx_queue *q,
+				       struct virtchnl2_txq_info *qi)
+{
+	u32 val;
+
+	qi->queue_id = cpu_to_le32(q->q_id);
+	qi->model = cpu_to_le16(vport->txq_model);
+	qi->type = cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_TX);
+	qi->ring_len = cpu_to_le16(q->desc_count);
+	qi->dma_ring_addr = cpu_to_le64(q->dma);
+	qi->relative_queue_id = cpu_to_le16(q->rel_q_id);
+
+	if (!idpf_is_queue_model_split(vport->txq_model)) {
+		qi->sched_mode = cpu_to_le16(VIRTCHNL2_TXQ_SCHED_MODE_QUEUE);
+		return;
+	}
+
+	if (idpf_queue_has(XDP, q))
+		val = q->complq->q_id;
+	else
+		val = q->txq_grp->complq->q_id;
+
+	qi->tx_compl_queue_id = cpu_to_le16(val);
+
+	if (idpf_queue_has(FLOW_SCH_EN, q))
+		val = VIRTCHNL2_TXQ_SCHED_MODE_FLOW;
+	else
+		val = VIRTCHNL2_TXQ_SCHED_MODE_QUEUE;
+
+	qi->sched_mode = cpu_to_le16(val);
+}
+
+/**
+ * idpf_fill_complq_config_chunk - fill chunk describing the completion queue
  * @vport: virtual port data structure
+ * @q: completion queue to be inserted into VC chunk
+ * @qi: pointer to the buffer containing the VC chunk
+ */
+static void idpf_fill_complq_config_chunk(const struct idpf_vport *vport,
+					  const struct idpf_compl_queue *q,
+					  struct virtchnl2_txq_info *qi)
+{
+	u32 val;
+
+	qi->queue_id = cpu_to_le32(q->q_id);
+	qi->model = cpu_to_le16(vport->txq_model);
+	qi->type = cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION);
+	qi->ring_len = cpu_to_le16(q->desc_count);
+	qi->dma_ring_addr = cpu_to_le64(q->dma);
+
+	if (idpf_queue_has(FLOW_SCH_EN, q))
+		val = VIRTCHNL2_TXQ_SCHED_MODE_FLOW;
+	else
+		val = VIRTCHNL2_TXQ_SCHED_MODE_QUEUE;
+
+	qi->sched_mode = cpu_to_le16(val);
+}
+
+/**
+ * idpf_prepare_cfg_txqs_msg - prepare message to configure selected Tx queues
+ * @vport: virtual port data structure
+ * @buf: buffer containing the message
+ * @pos: pointer to the first chunk describing the tx queue
+ * @num_chunks: number of chunks in the message
  *
- * Send config tx queues virtchnl message. Returns 0 on success, negative on
- * failure.
+ * Helper function for preparing the message describing configuration of
+ * Tx queues.
+ *
+ * Return: the total size of the prepared message.
  */
-static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
+static u32 idpf_prepare_cfg_txqs_msg(const struct idpf_vport *vport,
+				     void *buf, const void *pos,
+				     u32 num_chunks)
+{
+	struct virtchnl2_config_tx_queues *ctq = buf;
+
+	ctq->vport_id = cpu_to_le32(vport->vport_id);
+	ctq->num_qinfo = cpu_to_le16(num_chunks);
+	memcpy(ctq->qinfo, pos, num_chunks * sizeof(*ctq->qinfo));
+
+	return struct_size(ctq, qinfo, num_chunks);
+}
+
+/**
+ * idpf_send_config_tx_queue_set_msg - send virtchnl config Tx queues
+ *				       message for selected queues
+ * @qs: set of the Tx queues to configure
+ *
+ * Send config queues virtchnl message for queues contained in the @qs array.
+ * The @qs array can contain Tx queues (or completion queues) only.
+ *
+ * Return: 0 on success, -errno on failure.
+ */
+static int idpf_send_config_tx_queue_set_msg(const struct idpf_queue_set *qs)
 {
-	struct virtchnl2_config_tx_queues *ctq __free(kfree) = NULL;
 	struct virtchnl2_txq_info *qi __free(kfree) = NULL;
-	struct idpf_vc_xn_params xn_params = {};
-	u32 config_sz, chunk_sz, buf_sz;
-	int totqs, num_msgs, num_chunks;
-	ssize_t reply_sz;
-	int i, k = 0;
+	struct idpf_chunked_msg_params params = {
+		.vc_op		= VIRTCHNL2_OP_CONFIG_TX_QUEUES,
+		.prepare_msg	= idpf_prepare_cfg_txqs_msg,
+		.config_sz	= sizeof(struct virtchnl2_config_tx_queues),
+		.chunk_sz	= sizeof(*qi),
+	};
 
-	totqs = vport->num_txq + vport->num_complq;
-	qi = kcalloc(totqs, sizeof(struct virtchnl2_txq_info), GFP_KERNEL);
+	qi = kcalloc(qs->num, sizeof(*qi), GFP_KERNEL);
 	if (!qi)
 		return -ENOMEM;
 
-	/* Populate the queue info buffer with all queue context info */
-	for (i = 0; i < vport->num_txq_grp; i++) {
-		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
-		int j, sched_mode;
-
-		for (j = 0; j < tx_qgrp->num_txq; j++, k++) {
-			qi[k].queue_id =
-				cpu_to_le32(tx_qgrp->txqs[j]->q_id);
-			qi[k].model =
-				cpu_to_le16(vport->txq_model);
-			qi[k].type =
-				cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_TX);
-			qi[k].ring_len =
-				cpu_to_le16(tx_qgrp->txqs[j]->desc_count);
-			qi[k].dma_ring_addr =
-				cpu_to_le64(tx_qgrp->txqs[j]->dma);
-			if (idpf_is_queue_model_split(vport->txq_model)) {
-				struct idpf_tx_queue *q = tx_qgrp->txqs[j];
-
-				qi[k].tx_compl_queue_id =
-					cpu_to_le16(tx_qgrp->complq->q_id);
-				qi[k].relative_queue_id = cpu_to_le16(j);
-
-				if (idpf_queue_has(FLOW_SCH_EN, q))
-					qi[k].sched_mode =
-					cpu_to_le16(VIRTCHNL2_TXQ_SCHED_MODE_FLOW);
-				else
-					qi[k].sched_mode =
-					cpu_to_le16(VIRTCHNL2_TXQ_SCHED_MODE_QUEUE);
-			} else {
-				qi[k].sched_mode =
-					cpu_to_le16(VIRTCHNL2_TXQ_SCHED_MODE_QUEUE);
-			}
-		}
+	params.chunks = qi;
 
-		if (!idpf_is_queue_model_split(vport->txq_model))
-			continue;
+	for (u32 i = 0; i < qs->num; i++) {
+		if (qs->qs[i].type == VIRTCHNL2_QUEUE_TYPE_TX)
+			idpf_fill_txq_config_chunk(qs->vport, qs->qs[i].txq,
+						   &qi[params.num_chunks++]);
+		else if (qs->qs[i].type == VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION)
+			idpf_fill_complq_config_chunk(qs->vport,
+						      qs->qs[i].complq,
+						      &qi[params.num_chunks++]);
+	}
 
-		qi[k].queue_id = cpu_to_le32(tx_qgrp->complq->q_id);
-		qi[k].model = cpu_to_le16(vport->txq_model);
-		qi[k].type = cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION);
-		qi[k].ring_len = cpu_to_le16(tx_qgrp->complq->desc_count);
-		qi[k].dma_ring_addr = cpu_to_le64(tx_qgrp->complq->dma);
+	return idpf_send_chunked_msg(qs->vport, &params);
+}
 
-		if (idpf_queue_has(FLOW_SCH_EN, tx_qgrp->complq))
-			sched_mode = VIRTCHNL2_TXQ_SCHED_MODE_FLOW;
-		else
-			sched_mode = VIRTCHNL2_TXQ_SCHED_MODE_QUEUE;
-		qi[k].sched_mode = cpu_to_le16(sched_mode);
+/**
+ * idpf_send_config_tx_queues_msg - send virtchnl config Tx queues message
+ * @vport: virtual port data structure
+ *
+ * Return: 0 on success, -errno on failure.
+ */
+static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
+{
+	struct idpf_queue_set *qs __free(kfree) = NULL;
+	u32 totqs = vport->num_txq + vport->num_complq;
+	u32 k = 0;
+
+	qs = idpf_alloc_queue_set(vport, totqs);
+	if (!qs)
+		return -ENOMEM;
+
+	/* Populate the queue info buffer with all queue context info */
+	for (u32 i = 0; i < vport->num_txq_grp; i++) {
+		const struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
+
+		for (u32 j = 0; j < tx_qgrp->num_txq; j++) {
+			qs->qs[k].type = VIRTCHNL2_QUEUE_TYPE_TX;
+			qs->qs[k++].txq = tx_qgrp->txqs[j];
+		}
 
-		k++;
+		if (idpf_is_queue_model_split(vport->txq_model)) {
+			qs->qs[k].type = VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION;
+			qs->qs[k++].complq = tx_qgrp->complq;
+		}
 	}
 
 	/* Make sure accounting agrees */
 	if (k != totqs)
 		return -EINVAL;
 
-	/* Chunk up the queue contexts into multiple messages to avoid
-	 * sending a control queue message buffer that is too large
-	 */
-	config_sz = sizeof(struct virtchnl2_config_tx_queues);
-	chunk_sz = sizeof(struct virtchnl2_txq_info);
+	return idpf_send_config_tx_queue_set_msg(qs);
+}
 
-	num_chunks = min_t(u32, IDPF_NUM_CHUNKS_PER_MSG(config_sz, chunk_sz),
-			   totqs);
-	num_msgs = DIV_ROUND_UP(totqs, num_chunks);
+/**
+ * idpf_fill_rxq_config_chunk - fill chunk describing then Rx queue
+ * @vport: virtual port data structure
+ * @q: Rx queue to be inserted into VC chunk
+ * @qi: pointer to the buffer containing the VC chunk
+ */
+static void idpf_fill_rxq_config_chunk(const struct idpf_vport *vport,
+				       struct idpf_rx_queue *q,
+				       struct virtchnl2_rxq_info *qi)
+{
+	const struct idpf_bufq_set *sets;
+
+	qi->queue_id = cpu_to_le32(q->q_id);
+	qi->model = cpu_to_le16(vport->rxq_model);
+	qi->type = cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_RX);
+	qi->ring_len = cpu_to_le16(q->desc_count);
+	qi->dma_ring_addr = cpu_to_le64(q->dma);
+	qi->max_pkt_size = cpu_to_le32(q->rx_max_pkt_size);
+	qi->rx_buffer_low_watermark = cpu_to_le16(q->rx_buffer_low_watermark);
+	qi->qflags = cpu_to_le16(VIRTCHNL2_RX_DESC_SIZE_32BYTE);
+	if (idpf_is_feature_ena(vport, NETIF_F_GRO_HW))
+		qi->qflags |= cpu_to_le16(VIRTCHNL2_RXQ_RSC);
+
+	if (!idpf_is_queue_model_split(vport->rxq_model)) {
+		qi->data_buffer_size = cpu_to_le32(q->rx_buf_size);
+		qi->desc_ids = cpu_to_le64(q->rxdids);
 
-	buf_sz = struct_size(ctq, qinfo, num_chunks);
-	ctq = kzalloc(buf_sz, GFP_KERNEL);
-	if (!ctq)
-		return -ENOMEM;
+		return;
+	}
 
-	xn_params.vc_op = VIRTCHNL2_OP_CONFIG_TX_QUEUES;
-	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
+	sets = q->bufq_sets;
 
-	for (i = 0, k = 0; i < num_msgs; i++) {
-		memset(ctq, 0, buf_sz);
-		ctq->vport_id = cpu_to_le32(vport->vport_id);
-		ctq->num_qinfo = cpu_to_le16(num_chunks);
-		memcpy(ctq->qinfo, &qi[k], chunk_sz * num_chunks);
+	/*
+	 * In splitq mode, RxQ buffer size should be set to that of the first
+	 * buffer queue associated with this RxQ.
+	 */
+	q->rx_buf_size = sets[0].bufq.rx_buf_size;
+	qi->data_buffer_size = cpu_to_le32(q->rx_buf_size);
 
-		xn_params.send_buf.iov_base = ctq;
-		xn_params.send_buf.iov_len = buf_sz;
-		reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
-		if (reply_sz < 0)
-			return reply_sz;
+	qi->rx_bufq1_id = cpu_to_le16(sets[0].bufq.q_id);
+	if (vport->num_bufqs_per_qgrp > IDPF_SINGLE_BUFQ_PER_RXQ_GRP) {
+		qi->bufq2_ena = IDPF_BUFQ2_ENA;
+		qi->rx_bufq2_id = cpu_to_le16(sets[1].bufq.q_id);
+	}
 
-		k += num_chunks;
-		totqs -= num_chunks;
-		num_chunks = min(num_chunks, totqs);
-		/* Recalculate buffer size */
-		buf_sz = struct_size(ctq, qinfo, num_chunks);
+	q->rx_hbuf_size = sets[0].bufq.rx_hbuf_size;
+
+	if (idpf_queue_has(HSPLIT_EN, q)) {
+		qi->qflags |= cpu_to_le16(VIRTCHNL2_RXQ_HDR_SPLIT);
+		qi->hdr_buffer_size = cpu_to_le16(q->rx_hbuf_size);
 	}
 
-	return 0;
+	qi->desc_ids = cpu_to_le64(VIRTCHNL2_RXDID_2_FLEX_SPLITQ_M);
 }
 
 /**
- * idpf_send_config_rx_queues_msg - Send virtchnl config rx queues message
+ * idpf_fill_bufq_config_chunk - fill chunk describing the buffer queue
  * @vport: virtual port data structure
+ * @q: buffer queue to be inserted into VC chunk
+ * @qi: pointer to the buffer containing the VC chunk
+ */
+static void idpf_fill_bufq_config_chunk(const struct idpf_vport *vport,
+					const struct idpf_buf_queue *q,
+					struct virtchnl2_rxq_info *qi)
+{
+	qi->queue_id = cpu_to_le32(q->q_id);
+	qi->model = cpu_to_le16(vport->rxq_model);
+	qi->type = cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_RX_BUFFER);
+	qi->ring_len = cpu_to_le16(q->desc_count);
+	qi->dma_ring_addr = cpu_to_le64(q->dma);
+	qi->data_buffer_size = cpu_to_le32(q->rx_buf_size);
+	qi->rx_buffer_low_watermark = cpu_to_le16(q->rx_buffer_low_watermark);
+	qi->desc_ids = cpu_to_le64(VIRTCHNL2_RXDID_2_FLEX_SPLITQ_M);
+	qi->buffer_notif_stride = IDPF_RX_BUF_STRIDE;
+	if (idpf_is_feature_ena(vport, NETIF_F_GRO_HW))
+		qi->qflags = cpu_to_le16(VIRTCHNL2_RXQ_RSC);
+
+	if (idpf_queue_has(HSPLIT_EN, q)) {
+		qi->qflags |= cpu_to_le16(VIRTCHNL2_RXQ_HDR_SPLIT);
+		qi->hdr_buffer_size = cpu_to_le16(q->rx_hbuf_size);
+	}
+}
+
+/**
+ * idpf_prepare_cfg_rxqs_msg - prepare message to configure selected Rx queues
+ * @vport: virtual port data structure
+ * @buf: buffer containing the message
+ * @pos: pointer to the first chunk describing the rx queue
+ * @num_chunks: number of chunks in the message
  *
- * Send config rx queues virtchnl message.  Returns 0 on success, negative on
- * failure.
+ * Helper function for preparing the message describing configuration of
+ * Rx queues.
+ *
+ * Return: the total size of the prepared message.
  */
-static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
+static u32 idpf_prepare_cfg_rxqs_msg(const struct idpf_vport *vport,
+				     void *buf, const void *pos,
+				     u32 num_chunks)
+{
+	struct virtchnl2_config_rx_queues *crq = buf;
+
+	crq->vport_id = cpu_to_le32(vport->vport_id);
+	crq->num_qinfo = cpu_to_le16(num_chunks);
+	memcpy(crq->qinfo, pos, num_chunks * sizeof(*crq->qinfo));
+
+	return struct_size(crq, qinfo, num_chunks);
+}
+
+/**
+ * idpf_send_config_rx_queue_set_msg - send virtchnl config Rx queues message
+ *				       for selected queues.
+ * @qs: set of the Rx queues to configure
+ *
+ * Send config queues virtchnl message for queues contained in the @qs array.
+ * The @qs array can contain Rx queues (or buffer queues) only.
+ *
+ * Return: 0 on success, -errno on failure.
+ */
+static int idpf_send_config_rx_queue_set_msg(const struct idpf_queue_set *qs)
 {
-	struct virtchnl2_config_rx_queues *crq __free(kfree) = NULL;
 	struct virtchnl2_rxq_info *qi __free(kfree) = NULL;
-	struct idpf_vc_xn_params xn_params = {};
-	u32 config_sz, chunk_sz, buf_sz;
-	int totqs, num_msgs, num_chunks;
-	ssize_t reply_sz;
-	int i, k = 0;
+	struct idpf_chunked_msg_params params = {
+		.vc_op		= VIRTCHNL2_OP_CONFIG_RX_QUEUES,
+		.prepare_msg	= idpf_prepare_cfg_rxqs_msg,
+		.config_sz	= sizeof(struct virtchnl2_config_rx_queues),
+		.chunk_sz	= sizeof(*qi),
+	};
 
-	totqs = vport->num_rxq + vport->num_bufq;
-	qi = kcalloc(totqs, sizeof(struct virtchnl2_rxq_info), GFP_KERNEL);
+	qi = kcalloc(qs->num, sizeof(*qi), GFP_KERNEL);
 	if (!qi)
 		return -ENOMEM;
 
-	/* Populate the queue info buffer with all queue context info */
-	for (i = 0; i < vport->num_rxq_grp; i++) {
-		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
-		u16 num_rxq;
-		int j;
-
-		if (!idpf_is_queue_model_split(vport->rxq_model))
-			goto setup_rxqs;
-
-		for (j = 0; j < vport->num_bufqs_per_qgrp; j++, k++) {
-			struct idpf_buf_queue *bufq =
-				&rx_qgrp->splitq.bufq_sets[j].bufq;
-
-			qi[k].queue_id = cpu_to_le32(bufq->q_id);
-			qi[k].model = cpu_to_le16(vport->rxq_model);
-			qi[k].type =
-				cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_RX_BUFFER);
-			qi[k].desc_ids = cpu_to_le64(VIRTCHNL2_RXDID_2_FLEX_SPLITQ_M);
-			qi[k].ring_len = cpu_to_le16(bufq->desc_count);
-			qi[k].dma_ring_addr = cpu_to_le64(bufq->dma);
-			qi[k].data_buffer_size = cpu_to_le32(bufq->rx_buf_size);
-			qi[k].buffer_notif_stride = IDPF_RX_BUF_STRIDE;
-			qi[k].rx_buffer_low_watermark =
-				cpu_to_le16(bufq->rx_buffer_low_watermark);
-			if (idpf_is_feature_ena(vport, NETIF_F_GRO_HW))
-				qi[k].qflags |= cpu_to_le16(VIRTCHNL2_RXQ_RSC);
-		}
+	params.chunks = qi;
 
-setup_rxqs:
-		if (idpf_is_queue_model_split(vport->rxq_model))
-			num_rxq = rx_qgrp->splitq.num_rxq_sets;
-		else
-			num_rxq = rx_qgrp->singleq.num_rxq;
+	for (u32 i = 0; i < qs->num; i++) {
+		if (qs->qs[i].type == VIRTCHNL2_QUEUE_TYPE_RX)
+			idpf_fill_rxq_config_chunk(qs->vport, qs->qs[i].rxq,
+						   &qi[params.num_chunks++]);
+		else if (qs->qs[i].type == VIRTCHNL2_QUEUE_TYPE_RX_BUFFER)
+			idpf_fill_bufq_config_chunk(qs->vport, qs->qs[i].bufq,
+						    &qi[params.num_chunks++]);
+	}
 
-		for (j = 0; j < num_rxq; j++, k++) {
-			const struct idpf_bufq_set *sets;
-			struct idpf_rx_queue *rxq;
-			u32 rxdids;
+	return idpf_send_chunked_msg(qs->vport, &params);
+}
 
-			if (!idpf_is_queue_model_split(vport->rxq_model)) {
-				rxq = rx_qgrp->singleq.rxqs[j];
-				rxdids = rxq->rxdids;
+/**
+ * idpf_send_config_rx_queues_msg - send virtchnl config Rx queues message
+ * @vport: virtual port data structure
+ *
+ * Return: 0 on success, -errno on failure.
+ */
+static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
+{
+	bool splitq = idpf_is_queue_model_split(vport->rxq_model);
+	struct idpf_queue_set *qs __free(kfree) = NULL;
+	u32 totqs = vport->num_rxq + vport->num_bufq;
+	u32 k = 0;
 
-				goto common_qi_fields;
-			}
+	qs = idpf_alloc_queue_set(vport, totqs);
+	if (!qs)
+		return -ENOMEM;
 
-			rxq = &rx_qgrp->splitq.rxq_sets[j]->rxq;
-			sets = rxq->bufq_sets;
+	/* Populate the queue info buffer with all queue context info */
+	for (u32 i = 0; i < vport->num_rxq_grp; i++) {
+		const struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+		u32 num_rxq;
 
-			/* In splitq mode, RXQ buffer size should be
-			 * set to that of the first buffer queue
-			 * associated with this RXQ.
-			 */
-			rxq->rx_buf_size = sets[0].bufq.rx_buf_size;
+		if (!splitq) {
+			num_rxq = rx_qgrp->singleq.num_rxq;
+			goto rxq;
+		}
 
-			qi[k].rx_bufq1_id = cpu_to_le16(sets[0].bufq.q_id);
-			if (vport->num_bufqs_per_qgrp > IDPF_SINGLE_BUFQ_PER_RXQ_GRP) {
-				qi[k].bufq2_ena = IDPF_BUFQ2_ENA;
-				qi[k].rx_bufq2_id =
-					cpu_to_le16(sets[1].bufq.q_id);
-			}
-			qi[k].rx_buffer_low_watermark =
-				cpu_to_le16(rxq->rx_buffer_low_watermark);
-			if (idpf_is_feature_ena(vport, NETIF_F_GRO_HW))
-				qi[k].qflags |= cpu_to_le16(VIRTCHNL2_RXQ_RSC);
-
-			rxq->rx_hbuf_size = sets[0].bufq.rx_hbuf_size;
-
-			if (idpf_queue_has(HSPLIT_EN, rxq)) {
-				qi[k].qflags |=
-					cpu_to_le16(VIRTCHNL2_RXQ_HDR_SPLIT);
-				qi[k].hdr_buffer_size =
-					cpu_to_le16(rxq->rx_hbuf_size);
-			}
+		for (u32 j = 0; j < vport->num_bufqs_per_qgrp; j++) {
+			qs->qs[k].type = VIRTCHNL2_QUEUE_TYPE_RX_BUFFER;
+			qs->qs[k++].bufq = &rx_qgrp->splitq.bufq_sets[j].bufq;
+		}
 
-			rxdids = VIRTCHNL2_RXDID_2_FLEX_SPLITQ_M;
-
-common_qi_fields:
-			qi[k].queue_id = cpu_to_le32(rxq->q_id);
-			qi[k].model = cpu_to_le16(vport->rxq_model);
-			qi[k].type = cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_RX);
-			qi[k].ring_len = cpu_to_le16(rxq->desc_count);
-			qi[k].dma_ring_addr = cpu_to_le64(rxq->dma);
-			qi[k].max_pkt_size = cpu_to_le32(rxq->rx_max_pkt_size);
-			qi[k].data_buffer_size = cpu_to_le32(rxq->rx_buf_size);
-			qi[k].qflags |=
-				cpu_to_le16(VIRTCHNL2_RX_DESC_SIZE_32BYTE);
-			qi[k].desc_ids = cpu_to_le64(rxdids);
+		num_rxq = rx_qgrp->splitq.num_rxq_sets;
+
+rxq:
+		for (u32 j = 0; j < num_rxq; j++) {
+			qs->qs[k].type = VIRTCHNL2_QUEUE_TYPE_RX;
+
+			if (splitq)
+				qs->qs[k++].rxq =
+					&rx_qgrp->splitq.rxq_sets[j]->rxq;
+			else
+				qs->qs[k++].rxq = rx_qgrp->singleq.rxqs[j];
 		}
 	}
 
@@ -1806,329 +2048,395 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 	if (k != totqs)
 		return -EINVAL;
 
-	/* Chunk up the queue contexts into multiple messages to avoid
-	 * sending a control queue message buffer that is too large
-	 */
-	config_sz = sizeof(struct virtchnl2_config_rx_queues);
-	chunk_sz = sizeof(struct virtchnl2_rxq_info);
+	return idpf_send_config_rx_queue_set_msg(qs);
+}
 
-	num_chunks = min_t(u32, IDPF_NUM_CHUNKS_PER_MSG(config_sz, chunk_sz),
-			   totqs);
-	num_msgs = DIV_ROUND_UP(totqs, num_chunks);
+/**
+ * idpf_prepare_ena_dis_qs_msg - prepare message to enable/disable selected
+ *				 queues
+ * @vport: virtual port data structure
+ * @buf: buffer containing the message
+ * @pos: pointer to the first chunk describing the queue
+ * @num_chunks: number of chunks in the message
+ *
+ * Helper function for preparing the message describing queues to be enabled
+ * or disabled.
+ *
+ * Return: the total size of the prepared message.
+ */
+static u32 idpf_prepare_ena_dis_qs_msg(const struct idpf_vport *vport,
+				       void *buf, const void *pos,
+				       u32 num_chunks)
+{
+	struct virtchnl2_del_ena_dis_queues *eq = buf;
+
+	eq->vport_id = cpu_to_le32(vport->vport_id);
+	eq->chunks.num_chunks = cpu_to_le16(num_chunks);
+	memcpy(eq->chunks.chunks, pos,
+	       num_chunks * sizeof(*eq->chunks.chunks));
+
+	return struct_size(eq, chunks.chunks, num_chunks);
+}
 
-	buf_sz = struct_size(crq, qinfo, num_chunks);
-	crq = kzalloc(buf_sz, GFP_KERNEL);
-	if (!crq)
+/**
+ * idpf_send_ena_dis_queue_set_msg - send virtchnl enable or disable queues
+ *				     message for selected queues
+ * @qs: set of the queues to enable or disable
+ * @en: whether to enable or disable queues
+ *
+ * Send enable or disable queues virtchnl message for queues contained
+ * in the @qs array.
+ * The @qs array can contain pointers to both Rx and Tx queues.
+ *
+ * Return: 0 on success, -errno on failure.
+ */
+static int idpf_send_ena_dis_queue_set_msg(const struct idpf_queue_set *qs,
+					   bool en)
+{
+	struct virtchnl2_queue_chunk *qc __free(kfree) = NULL;
+	struct idpf_chunked_msg_params params = {
+		.vc_op		= en ? VIRTCHNL2_OP_ENABLE_QUEUES :
+				       VIRTCHNL2_OP_DISABLE_QUEUES,
+		.prepare_msg	= idpf_prepare_ena_dis_qs_msg,
+		.config_sz	= sizeof(struct virtchnl2_del_ena_dis_queues),
+		.chunk_sz	= sizeof(*qc),
+		.num_chunks	= qs->num,
+	};
+
+	qc = kcalloc(qs->num, sizeof(*qc), GFP_KERNEL);
+	if (!qc)
 		return -ENOMEM;
 
-	xn_params.vc_op = VIRTCHNL2_OP_CONFIG_RX_QUEUES;
-	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
+	params.chunks = qc;
 
-	for (i = 0, k = 0; i < num_msgs; i++) {
-		memset(crq, 0, buf_sz);
-		crq->vport_id = cpu_to_le32(vport->vport_id);
-		crq->num_qinfo = cpu_to_le16(num_chunks);
-		memcpy(crq->qinfo, &qi[k], chunk_sz * num_chunks);
+	for (u32 i = 0; i < qs->num; i++) {
+		const struct idpf_queue_ptr *q = &qs->qs[i];
+		u32 qid;
 
-		xn_params.send_buf.iov_base = crq;
-		xn_params.send_buf.iov_len = buf_sz;
-		reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
-		if (reply_sz < 0)
-			return reply_sz;
+		qc[i].type = cpu_to_le32(q->type);
+		qc[i].num_queues = cpu_to_le32(IDPF_NUMQ_PER_CHUNK);
 
-		k += num_chunks;
-		totqs -= num_chunks;
-		num_chunks = min(num_chunks, totqs);
-		/* Recalculate buffer size */
-		buf_sz = struct_size(crq, qinfo, num_chunks);
+		switch (q->type) {
+		case VIRTCHNL2_QUEUE_TYPE_RX:
+			qid = q->rxq->q_id;
+			break;
+		case VIRTCHNL2_QUEUE_TYPE_TX:
+			qid = q->txq->q_id;
+			break;
+		case VIRTCHNL2_QUEUE_TYPE_RX_BUFFER:
+			qid = q->bufq->q_id;
+			break;
+		case VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION:
+			qid = q->complq->q_id;
+			break;
+		default:
+			return -EINVAL;
+		}
+
+		qc[i].start_queue_id = cpu_to_le32(qid);
 	}
 
-	return 0;
+	return idpf_send_chunked_msg(qs->vport, &params);
 }
 
 /**
- * idpf_send_ena_dis_queues_msg - Send virtchnl enable or disable
- * queues message
+ * idpf_send_ena_dis_queues_msg - send virtchnl enable or disable queues
+ *				  message
  * @vport: virtual port data structure
- * @ena: if true enable, false disable
+ * @en: whether to enable or disable queues
  *
- * Send enable or disable queues virtchnl message. Returns 0 on success,
- * negative on failure.
+ * Return: 0 on success, -errno on failure.
  */
-static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, bool ena)
+static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, bool en)
 {
-	struct virtchnl2_del_ena_dis_queues *eq __free(kfree) = NULL;
-	struct virtchnl2_queue_chunk *qc __free(kfree) = NULL;
-	u32 num_msgs, num_chunks, num_txq, num_rxq, num_q;
-	struct idpf_vc_xn_params xn_params = {
-		.timeout_ms	= IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
-	};
-	struct virtchnl2_queue_chunks *qcs;
-	u32 config_sz, chunk_sz, buf_sz;
-	ssize_t reply_sz;
-	int i, j, k = 0;
+	struct idpf_queue_set *qs __free(kfree) = NULL;
+	u32 num_txq, num_q, k = 0;
+	bool split;
 
 	num_txq = vport->num_txq + vport->num_complq;
-	num_rxq = vport->num_rxq + vport->num_bufq;
-	num_q = num_txq + num_rxq;
-	buf_sz = sizeof(struct virtchnl2_queue_chunk) * num_q;
-	qc = kzalloc(buf_sz, GFP_KERNEL);
-	if (!qc)
+	num_q = num_txq + vport->num_rxq + vport->num_bufq;
+
+	qs = idpf_alloc_queue_set(vport, num_q);
+	if (!qs)
 		return -ENOMEM;
 
-	for (i = 0; i < vport->num_txq_grp; i++) {
-		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
+	split = idpf_is_queue_model_split(vport->txq_model);
 
-		for (j = 0; j < tx_qgrp->num_txq; j++, k++) {
-			qc[k].type = cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_TX);
-			qc[k].start_queue_id = cpu_to_le32(tx_qgrp->txqs[j]->q_id);
-			qc[k].num_queues = cpu_to_le32(IDPF_NUMQ_PER_CHUNK);
-		}
-	}
-	if (vport->num_txq != k)
-		return -EINVAL;
+	for (u32 i = 0; i < vport->num_txq_grp; i++) {
+		const struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
 
-	if (!idpf_is_queue_model_split(vport->txq_model))
-		goto setup_rx;
+		for (u32 j = 0; j < tx_qgrp->num_txq; j++) {
+			qs->qs[k].type = VIRTCHNL2_QUEUE_TYPE_TX;
+			qs->qs[k++].txq = tx_qgrp->txqs[j];
+		}
 
-	for (i = 0; i < vport->num_txq_grp; i++, k++) {
-		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
+		if (!split)
+			continue;
 
-		qc[k].type = cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION);
-		qc[k].start_queue_id = cpu_to_le32(tx_qgrp->complq->q_id);
-		qc[k].num_queues = cpu_to_le32(IDPF_NUMQ_PER_CHUNK);
+		qs->qs[k].type = VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION;
+		qs->qs[k++].complq = tx_qgrp->complq;
 	}
-	if (vport->num_complq != (k - vport->num_txq))
+
+	if (k != num_txq)
 		return -EINVAL;
 
-setup_rx:
-	for (i = 0; i < vport->num_rxq_grp; i++) {
-		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+	split = idpf_is_queue_model_split(vport->rxq_model);
 
-		if (idpf_is_queue_model_split(vport->rxq_model))
+	for (u32 i = 0; i < vport->num_rxq_grp; i++) {
+		const struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+		u32 num_rxq;
+
+		if (split)
 			num_rxq = rx_qgrp->splitq.num_rxq_sets;
 		else
 			num_rxq = rx_qgrp->singleq.num_rxq;
 
-		for (j = 0; j < num_rxq; j++, k++) {
-			if (idpf_is_queue_model_split(vport->rxq_model)) {
-				qc[k].start_queue_id =
-				cpu_to_le32(rx_qgrp->splitq.rxq_sets[j]->rxq.q_id);
-				qc[k].type =
-				cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_RX);
-			} else {
-				qc[k].start_queue_id =
-				cpu_to_le32(rx_qgrp->singleq.rxqs[j]->q_id);
-				qc[k].type =
-				cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_RX);
-			}
-			qc[k].num_queues = cpu_to_le32(IDPF_NUMQ_PER_CHUNK);
-		}
-	}
-	if (vport->num_rxq != k - (vport->num_txq + vport->num_complq))
-		return -EINVAL;
-
-	if (!idpf_is_queue_model_split(vport->rxq_model))
-		goto send_msg;
+		for (u32 j = 0; j < num_rxq; j++) {
+			qs->qs[k].type = VIRTCHNL2_QUEUE_TYPE_RX;
 
-	for (i = 0; i < vport->num_rxq_grp; i++) {
-		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+			if (split)
+				qs->qs[k++].rxq =
+					&rx_qgrp->splitq.rxq_sets[j]->rxq;
+			else
+				qs->qs[k++].rxq = rx_qgrp->singleq.rxqs[j];
+		}
 
-		for (j = 0; j < vport->num_bufqs_per_qgrp; j++, k++) {
-			const struct idpf_buf_queue *q;
+		if (!split)
+			continue;
 
-			q = &rx_qgrp->splitq.bufq_sets[j].bufq;
-			qc[k].type =
-				cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_RX_BUFFER);
-			qc[k].start_queue_id = cpu_to_le32(q->q_id);
-			qc[k].num_queues = cpu_to_le32(IDPF_NUMQ_PER_CHUNK);
+		for (u32 j = 0; j < vport->num_bufqs_per_qgrp; j++) {
+			qs->qs[k].type = VIRTCHNL2_QUEUE_TYPE_RX_BUFFER;
+			qs->qs[k++].bufq = &rx_qgrp->splitq.bufq_sets[j].bufq;
 		}
 	}
-	if (vport->num_bufq != k - (vport->num_txq +
-				    vport->num_complq +
-				    vport->num_rxq))
-		return -EINVAL;
-
-send_msg:
-	/* Chunk up the queue info into multiple messages */
-	config_sz = sizeof(struct virtchnl2_del_ena_dis_queues);
-	chunk_sz = sizeof(struct virtchnl2_queue_chunk);
-
-	num_chunks = min_t(u32, IDPF_NUM_CHUNKS_PER_MSG(config_sz, chunk_sz),
-			   num_q);
-	num_msgs = DIV_ROUND_UP(num_q, num_chunks);
 
-	buf_sz = struct_size(eq, chunks.chunks, num_chunks);
-	eq = kzalloc(buf_sz, GFP_KERNEL);
-	if (!eq)
-		return -ENOMEM;
-
-	if (ena)
-		xn_params.vc_op = VIRTCHNL2_OP_ENABLE_QUEUES;
-	else
-		xn_params.vc_op = VIRTCHNL2_OP_DISABLE_QUEUES;
+	if (k != num_q)
+		return -EINVAL;
 
-	for (i = 0, k = 0; i < num_msgs; i++) {
-		memset(eq, 0, buf_sz);
-		eq->vport_id = cpu_to_le32(vport->vport_id);
-		eq->chunks.num_chunks = cpu_to_le16(num_chunks);
-		qcs = &eq->chunks;
-		memcpy(qcs->chunks, &qc[k], chunk_sz * num_chunks);
+	return idpf_send_ena_dis_queue_set_msg(qs, en);
+}
 
-		xn_params.send_buf.iov_base = eq;
-		xn_params.send_buf.iov_len = buf_sz;
-		reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
-		if (reply_sz < 0)
-			return reply_sz;
+/**
+ * idpf_prep_map_unmap_queue_set_vector_msg - prepare message to map or unmap
+ *					      queue set to the interrupt vector
+ * @vport: virtual port data structure
+ * @buf: buffer containing the message
+ * @pos: pointer to the first chunk describing the vector mapping
+ * @num_chunks: number of chunks in the message
+ *
+ * Helper function for preparing the message describing mapping queues to
+ * q_vectors.
+ *
+ * Return: the total size of the prepared message.
+ */
+static u32
+idpf_prep_map_unmap_queue_set_vector_msg(const struct idpf_vport *vport,
+					 void *buf, const void *pos,
+					 u32 num_chunks)
+{
+	struct virtchnl2_queue_vector_maps *vqvm = buf;
 
-		k += num_chunks;
-		num_q -= num_chunks;
-		num_chunks = min(num_chunks, num_q);
-		/* Recalculate buffer size */
-		buf_sz = struct_size(eq, chunks.chunks, num_chunks);
-	}
+	vqvm->vport_id = cpu_to_le32(vport->vport_id);
+	vqvm->num_qv_maps = cpu_to_le16(num_chunks);
+	memcpy(vqvm->qv_maps, pos, num_chunks * sizeof(*vqvm->qv_maps));
 
-	return 0;
+	return struct_size(vqvm, qv_maps, num_chunks);
 }
 
 /**
- * idpf_send_map_unmap_queue_vector_msg - Send virtchnl map or unmap queue
- * vector message
- * @vport: virtual port data structure
+ * idpf_send_map_unmap_queue_set_vector_msg - send virtchnl map or unmap
+ *					      queue set vector message
+ * @qs: set of the queues to map or unmap
  * @map: true for map and false for unmap
  *
- * Send map or unmap queue vector virtchnl message.  Returns 0 on success,
- * negative on failure.
+ * Return: 0 on success, -errno on failure.
  */
-int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
+static int
+idpf_send_map_unmap_queue_set_vector_msg(const struct idpf_queue_set *qs,
+					 bool map)
 {
-	struct virtchnl2_queue_vector_maps *vqvm __free(kfree) = NULL;
 	struct virtchnl2_queue_vector *vqv __free(kfree) = NULL;
-	struct idpf_vc_xn_params xn_params = {
-		.timeout_ms	= IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
+	struct idpf_chunked_msg_params params = {
+		.vc_op		= map ? VIRTCHNL2_OP_MAP_QUEUE_VECTOR :
+					VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR,
+		.prepare_msg	= idpf_prep_map_unmap_queue_set_vector_msg,
+		.config_sz	= sizeof(struct virtchnl2_queue_vector_maps),
+		.chunk_sz	= sizeof(*vqv),
+		.num_chunks	= qs->num,
 	};
-	u32 config_sz, chunk_sz, buf_sz;
-	u32 num_msgs, num_chunks, num_q;
-	ssize_t reply_sz;
-	int i, j, k = 0;
-
-	num_q = vport->num_txq + vport->num_rxq;
+	bool split;
 
-	buf_sz = sizeof(struct virtchnl2_queue_vector) * num_q;
-	vqv = kzalloc(buf_sz, GFP_KERNEL);
+	vqv = kcalloc(qs->num, sizeof(*vqv), GFP_KERNEL);
 	if (!vqv)
 		return -ENOMEM;
 
-	for (i = 0; i < vport->num_txq_grp; i++) {
-		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
+	params.chunks = vqv;
 
-		for (j = 0; j < tx_qgrp->num_txq; j++, k++) {
-			const struct idpf_tx_queue *txq = tx_qgrp->txqs[j];
-			const struct idpf_q_vector *vec;
-			u32 v_idx, tx_itr_idx;
+	split = idpf_is_queue_model_split(qs->vport->txq_model);
 
-			vqv[k].queue_type =
-				cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_TX);
-			vqv[k].queue_id = cpu_to_le32(txq->q_id);
+	for (u32 i = 0; i < qs->num; i++) {
+		const struct idpf_queue_ptr *q = &qs->qs[i];
+		const struct idpf_q_vector *vec;
+		u32 qid, v_idx, itr_idx;
 
-			if (idpf_queue_has(NOIRQ, txq))
+		vqv[i].queue_type = cpu_to_le32(q->type);
+
+		switch (q->type) {
+		case VIRTCHNL2_QUEUE_TYPE_RX:
+			qid = q->rxq->q_id;
+
+			if (idpf_queue_has(NOIRQ, q->rxq))
+				vec = NULL;
+			else
+				vec = q->rxq->q_vector;
+
+			if (vec) {
+				v_idx = vec->v_idx;
+				itr_idx = vec->rx_itr_idx;
+			} else {
+				v_idx = qs->vport->noirq_v_idx;
+				itr_idx = VIRTCHNL2_ITR_IDX_0;
+			}
+			break;
+		case VIRTCHNL2_QUEUE_TYPE_TX:
+			qid = q->txq->q_id;
+
+			if (idpf_queue_has(NOIRQ, q->txq))
 				vec = NULL;
-			else if (idpf_queue_has(XDP, txq))
-				vec = txq->complq->q_vector;
-			else if (idpf_is_queue_model_split(vport->txq_model))
-				vec = txq->txq_grp->complq->q_vector;
+			else if (idpf_queue_has(XDP, q->txq))
+				vec = q->txq->complq->q_vector;
+			else if (split)
+				vec = q->txq->txq_grp->complq->q_vector;
 			else
-				vec = txq->q_vector;
+				vec = q->txq->q_vector;
 
 			if (vec) {
 				v_idx = vec->v_idx;
-				tx_itr_idx = vec->tx_itr_idx;
+				itr_idx = vec->tx_itr_idx;
 			} else {
-				v_idx = vport->noirq_v_idx;
-				tx_itr_idx = VIRTCHNL2_ITR_IDX_1;
+				v_idx = qs->vport->noirq_v_idx;
+				itr_idx = VIRTCHNL2_ITR_IDX_1;
 			}
+			break;
+		default:
+			return -EINVAL;
+		}
+
+		vqv[i].queue_id = cpu_to_le32(qid);
+		vqv[i].vector_id = cpu_to_le16(v_idx);
+		vqv[i].itr_idx = cpu_to_le32(itr_idx);
+	}
+
+	return idpf_send_chunked_msg(qs->vport, &params);
+}
+
+/**
+ * idpf_send_map_unmap_queue_vector_msg - send virtchnl map or unmap queue
+ *					  vector message
+ * @vport: virtual port data structure
+ * @map: true for map and false for unmap
+ *
+ * Return: 0 on success, -errno on failure.
+ */
+int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
+{
+	struct idpf_queue_set *qs __free(kfree) = NULL;
+	u32 num_q = vport->num_txq + vport->num_rxq;
+	u32 k = 0;
+
+	qs = idpf_alloc_queue_set(vport, num_q);
+	if (!qs)
+		return -ENOMEM;
 
-			vqv[k].vector_id = cpu_to_le16(v_idx);
-			vqv[k].itr_idx = cpu_to_le32(tx_itr_idx);
+	for (u32 i = 0; i < vport->num_txq_grp; i++) {
+		const struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
+
+		for (u32 j = 0; j < tx_qgrp->num_txq; j++) {
+			qs->qs[k].type = VIRTCHNL2_QUEUE_TYPE_TX;
+			qs->qs[k++].txq = tx_qgrp->txqs[j];
 		}
 	}
 
-	for (i = 0; i < vport->num_rxq_grp; i++) {
-		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
-		u16 num_rxq;
+	if (k != vport->num_txq)
+		return -EINVAL;
+
+	for (u32 i = 0; i < vport->num_rxq_grp; i++) {
+		const struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+		u32 num_rxq;
 
 		if (idpf_is_queue_model_split(vport->rxq_model))
 			num_rxq = rx_qgrp->splitq.num_rxq_sets;
 		else
 			num_rxq = rx_qgrp->singleq.num_rxq;
 
-		for (j = 0; j < num_rxq; j++, k++) {
-			struct idpf_rx_queue *rxq;
-			u32 v_idx, rx_itr_idx;
+		for (u32 j = 0; j < num_rxq; j++) {
+			qs->qs[k].type = VIRTCHNL2_QUEUE_TYPE_RX;
 
 			if (idpf_is_queue_model_split(vport->rxq_model))
-				rxq = &rx_qgrp->splitq.rxq_sets[j]->rxq;
+				qs->qs[k++].rxq =
+					&rx_qgrp->splitq.rxq_sets[j]->rxq;
 			else
-				rxq = rx_qgrp->singleq.rxqs[j];
-
-			vqv[k].queue_type =
-				cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_RX);
-			vqv[k].queue_id = cpu_to_le32(rxq->q_id);
-
-			if (idpf_queue_has(NOIRQ, rxq)) {
-				v_idx = vport->noirq_v_idx;
-				rx_itr_idx = VIRTCHNL2_ITR_IDX_0;
-			} else {
-				v_idx = rxq->q_vector->v_idx;
-				rx_itr_idx = rxq->q_vector->rx_itr_idx;
-			}
-
-			vqv[k].vector_id = cpu_to_le16(v_idx);
-			vqv[k].itr_idx = cpu_to_le32(rx_itr_idx);
+				qs->qs[k++].rxq = rx_qgrp->singleq.rxqs[j];
 		}
 	}
 
 	if (k != num_q)
 		return -EINVAL;
 
-	/* Chunk up the vector info into multiple messages */
-	config_sz = sizeof(struct virtchnl2_queue_vector_maps);
-	chunk_sz = sizeof(struct virtchnl2_queue_vector);
+	return idpf_send_map_unmap_queue_set_vector_msg(qs, map);
+}
 
-	num_chunks = min_t(u32, IDPF_NUM_CHUNKS_PER_MSG(config_sz, chunk_sz),
-			   num_q);
-	num_msgs = DIV_ROUND_UP(num_q, num_chunks);
+/**
+ * idpf_send_enable_queue_set_msg - send enable queues virtchnl message for
+ *				    selected queues
+ * @qs: set of the queues
+ *
+ * Send enable queues virtchnl message for queues contained in the @qs array.
+ *
+ * Return: 0 on success, -errno on failure.
+ */
+int idpf_send_enable_queue_set_msg(const struct idpf_queue_set *qs)
+{
+	return idpf_send_ena_dis_queue_set_msg(qs, true);
+}
 
-	buf_sz = struct_size(vqvm, qv_maps, num_chunks);
-	vqvm = kzalloc(buf_sz, GFP_KERNEL);
-	if (!vqvm)
-		return -ENOMEM;
+/**
+ * idpf_send_disable_queue_set_msg - send disable queues virtchnl message for
+ *				     selected queues
+ * @qs: set of the queues
+ *
+ * Return: 0 on success, -errno on failure.
+ */
+int idpf_send_disable_queue_set_msg(const struct idpf_queue_set *qs)
+{
+	int err;
 
-	if (map)
-		xn_params.vc_op = VIRTCHNL2_OP_MAP_QUEUE_VECTOR;
-	else
-		xn_params.vc_op = VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR;
+	err = idpf_send_ena_dis_queue_set_msg(qs, false);
+	if (err)
+		return err;
 
-	for (i = 0, k = 0; i < num_msgs; i++) {
-		memset(vqvm, 0, buf_sz);
-		xn_params.send_buf.iov_base = vqvm;
-		xn_params.send_buf.iov_len = buf_sz;
-		vqvm->vport_id = cpu_to_le32(vport->vport_id);
-		vqvm->num_qv_maps = cpu_to_le16(num_chunks);
-		memcpy(vqvm->qv_maps, &vqv[k], chunk_sz * num_chunks);
+	return idpf_wait_for_marker_event_set(qs);
+}
 
-		reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
-		if (reply_sz < 0)
-			return reply_sz;
+/**
+ * idpf_send_config_queue_set_msg - send virtchnl config queues message for
+ *				    selected queues
+ * @qs: set of the queues
+ *
+ * Send config queues virtchnl message for queues contained in the @qs array.
+ * The @qs array can contain both Rx or Tx queues.
+ *
+ * Return: 0 on success, -errno on failure.
+ */
+int idpf_send_config_queue_set_msg(const struct idpf_queue_set *qs)
+{
+	int err;
 
-		k += num_chunks;
-		num_q -= num_chunks;
-		num_chunks = min(num_chunks, num_q);
-		/* Recalculate buffer size */
-		buf_sz = struct_size(vqvm, qv_maps, num_chunks);
-	}
+	err = idpf_send_config_tx_queue_set_msg(qs);
+	if (err)
+		return err;
 
-	return 0;
+	return idpf_send_config_rx_queue_set_msg(qs);
 }
 
 /**
-- 
2.51.0

