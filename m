Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 50904A9F76A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Apr 2025 19:36:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB1FE81171;
	Mon, 28 Apr 2025 17:36:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6jG4d9mcUNV7; Mon, 28 Apr 2025 17:36:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C7D6A8124D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745861778;
	bh=jy1J9zQk9zxLJ8abJHVSKK1D0APTK8QWtrxyiFJWU4U=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Pjp5JRujHROdIIrkwUnnLu8T2YLlOC+fPA0WNNUjYQDt5jcpqw6WRkkwsNVn8MJ5/
	 marvgdDNCqBlhx9SqrIC+ntD8SDbVugGncslsB7szpepXR0qq1AY7q6cDB+2iaBihB
	 pNEXvhJB6+iF5t8oALMb3PtljgDkbuZKEcFNLaXArr7SXFxBkySP1xg8ikt62uvfMP
	 26xqH/h4LGo6bWamMHzjVWKTYqZIp+zi8hR94dfF+L+ca9DSpdKVogBcF2sXWyU0fH
	 NbQm8Fe7y1l2cZhS8jspwkTMVNRrBUcivP8r6OxT+2lmHLRPtZGShOAVzkg2nSkncd
	 an8RIdbrWWnaw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C7D6A8124D;
	Mon, 28 Apr 2025 17:36:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 27AA3C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 17:36:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 00A9C81170
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 17:36:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pIP-GYTLp7gG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Apr 2025 17:36:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DC43681171
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC43681171
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DC43681171
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 17:36:12 +0000 (UTC)
X-CSE-ConnectionGUID: cmnrOWwjSmC1S5kU2udloQ==
X-CSE-MsgGUID: ZYMqMv1kRBug/eEcpe5u4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11417"; a="58452155"
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="58452155"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 10:36:12 -0700
X-CSE-ConnectionGUID: HQgML8xeTa2/ZFW4sggIXA==
X-CSE-MsgGUID: yrEh7E0VQ8Khc8GZJx3L7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="138679013"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.55])
 by fmviesa004.fm.intel.com with ESMTP; 28 Apr 2025 10:36:11 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, milena.olech@intel.com, anton.nadezhdin@intel.com,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Date: Mon, 28 Apr 2025 10:35:45 -0700
Message-ID: <20250428173552.2884-3-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250428173552.2884-1-pavan.kumar.linga@intel.com>
References: <20250428173552.2884-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745861773; x=1777397773;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/3QCpVUE79OmG2yoagqDBpC/Q7FvxjoHcVcrMlk1sVk=;
 b=e9VMOfjueX2Cm50de7SIYAZOvDS8FXsTcTuvZbwTUfDWgv5zt5/RS9fI
 bVZUF0Zh36w9/EOsJldxBALRp5SdhbGPHpUB9lVZb7kZW/nEnc5NPGxx2
 i93jMKVJevtLnlF2YEsrJEQh6IV4VCtqVdKyQOq8dJv6fXkoRS4+M/a4T
 6aGr2PJClX2/zlcXwJQjLuXOl2vYooLnQazsm6q7CCLaimSNW1h1/TFVw
 pcRybkkXsK2wLFhsCG90CKCqyA+nk37F+sTdv3WlGYdv0touLa32etUdO
 u2isf1+cOaaAsPeOVK7Ej9SMY5KTIXCaQRshFBupL1PwFlqAy3Cea8zzb
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e9VMOfju
Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/9] idpf: use existing queue
 chunk info instead of preparing it
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

Queue chunk info received from the device control plane
is stored in the persistent data section. Necessary info from
these chunks is parsed and stored in the queue structure.
While sending the enable/disable queues virtchnl message,
queue chunk info is prepared using the stored queue info.
Instead of that, use the stored queue chunks directly which has
info about all the queues that needs to be enabled/disabled.

Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   6 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 188 +++++-------------
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   6 +-
 3 files changed, 52 insertions(+), 148 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index a11097e98517..bc342e79addd 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -849,7 +849,7 @@ static void idpf_vport_stop(struct idpf_vport *vport)
 	chunks = &vport->adapter->vport_config[vport->idx]->qid_reg_info;
 
 	idpf_send_disable_vport_msg(vport);
-	idpf_send_disable_queues_msg(vport);
+	idpf_send_disable_queues_msg(vport, chunks);
 	idpf_send_map_unmap_queue_vector_msg(vport, false);
 	/* Normally we ask for queues in create_vport, but if the number of
 	 * initially requested queues have changed, for example via ethtool
@@ -1383,7 +1383,7 @@ static int idpf_vport_open(struct idpf_vport *vport)
 		goto intr_deinit;
 	}
 
-	err = idpf_send_enable_queues_msg(vport);
+	err = idpf_send_enable_queues_msg(vport, chunks);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to enable queues for vport %u: %d\n",
 			vport->vport_id, err);
@@ -1424,7 +1424,7 @@ static int idpf_vport_open(struct idpf_vport *vport)
 disable_vport:
 	idpf_send_disable_vport_msg(vport);
 disable_queues:
-	idpf_send_disable_queues_msg(vport);
+	idpf_send_disable_queues_msg(vport, chunks);
 unmap_queue_vectors:
 	idpf_send_map_unmap_queue_vector_msg(vport, false);
 intr_deinit:
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 515e22de6add..92c780b1fd46 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -1007,6 +1007,24 @@ static void idpf_init_avail_queues(struct idpf_adapter *adapter)
 	avail_queues->avail_complq = le16_to_cpu(caps->max_tx_complq);
 }
 
+/**
+ * idpf_convert_reg_to_queue_chunks - copy queue chunk information to the right
+ * structure
+ * @dchunks: destination chunks to store data to
+ * @schunks: source chunks to copy data from
+ * @num_chunks: number of chunks to copy
+ */
+static void idpf_convert_reg_to_queue_chunks(struct virtchnl2_queue_chunk *dchunks,
+					     struct idpf_queue_id_reg_chunk *schunks,
+					     u16 num_chunks)
+{
+	for (u16 i = 0; i < num_chunks; i++) {
+		dchunks[i].type = cpu_to_le32(schunks[i].type);
+		dchunks[i].start_queue_id = cpu_to_le32(schunks[i].start_queue_id);
+		dchunks[i].num_queues = cpu_to_le32(schunks[i].num_queues);
+	}
+}
+
 /**
  * idpf_vport_init_queue_reg_chunks - initialize queue register chunks
  * @vport_config: persistent vport structure to store the queue register info
@@ -1734,116 +1752,20 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
  * idpf_send_ena_dis_queues_msg - Send virtchnl enable or disable
  * queues message
  * @vport: virtual port data structure
+ * @chunks: queue register info
  * @ena: if true enable, false disable
  *
  * Send enable or disable queues virtchnl message. Returns 0 on success,
  * negative on failure.
  */
-static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, bool ena)
+static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport,
+					struct idpf_queue_id_reg_info *chunks,
+					bool ena)
 {
 	struct virtchnl2_del_ena_dis_queues *eq __free(kfree) = NULL;
-	struct virtchnl2_queue_chunk *qc __free(kfree) = NULL;
-	u32 num_msgs, num_chunks, num_txq, num_rxq, num_q;
 	struct idpf_vc_xn_params xn_params = {};
-	struct virtchnl2_queue_chunks *qcs;
-	u32 config_sz, chunk_sz, buf_sz;
+	u32 num_chunks, buf_sz;
 	ssize_t reply_sz;
-	int i, j, k = 0;
-
-	num_txq = vport->num_txq + vport->num_complq;
-	num_rxq = vport->num_rxq + vport->num_bufq;
-	num_q = num_txq + num_rxq;
-	buf_sz = sizeof(struct virtchnl2_queue_chunk) * num_q;
-	qc = kzalloc(buf_sz, GFP_KERNEL);
-	if (!qc)
-		return -ENOMEM;
-
-	for (i = 0; i < vport->num_txq_grp; i++) {
-		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
-
-		for (j = 0; j < tx_qgrp->num_txq; j++, k++) {
-			qc[k].type = cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_TX);
-			qc[k].start_queue_id = cpu_to_le32(tx_qgrp->txqs[j]->q_id);
-			qc[k].num_queues = cpu_to_le32(IDPF_NUMQ_PER_CHUNK);
-		}
-	}
-	if (vport->num_txq != k)
-		return -EINVAL;
-
-	if (!idpf_is_queue_model_split(vport->txq_model))
-		goto setup_rx;
-
-	for (i = 0; i < vport->num_txq_grp; i++, k++) {
-		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
-
-		qc[k].type = cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION);
-		qc[k].start_queue_id = cpu_to_le32(tx_qgrp->complq->q_id);
-		qc[k].num_queues = cpu_to_le32(IDPF_NUMQ_PER_CHUNK);
-	}
-	if (vport->num_complq != (k - vport->num_txq))
-		return -EINVAL;
-
-setup_rx:
-	for (i = 0; i < vport->num_rxq_grp; i++) {
-		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
-
-		if (idpf_is_queue_model_split(vport->rxq_model))
-			num_rxq = rx_qgrp->splitq.num_rxq_sets;
-		else
-			num_rxq = rx_qgrp->singleq.num_rxq;
-
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
-
-	for (i = 0; i < vport->num_rxq_grp; i++) {
-		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
-
-		for (j = 0; j < vport->num_bufqs_per_qgrp; j++, k++) {
-			const struct idpf_buf_queue *q;
-
-			q = &rx_qgrp->splitq.bufq_sets[j].bufq;
-			qc[k].type =
-				cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_RX_BUFFER);
-			qc[k].start_queue_id = cpu_to_le32(q->q_id);
-			qc[k].num_queues = cpu_to_le32(IDPF_NUMQ_PER_CHUNK);
-		}
-	}
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
-
-	buf_sz = struct_size(eq, chunks.chunks, num_chunks);
-	eq = kzalloc(buf_sz, GFP_KERNEL);
-	if (!eq)
-		return -ENOMEM;
 
 	if (ena) {
 		xn_params.vc_op = VIRTCHNL2_OP_ENABLE_QUEUES;
@@ -1853,27 +1775,23 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, bool ena)
 		xn_params.timeout_ms = IDPF_VC_XN_MIN_TIMEOUT_MSEC;
 	}
 
-	for (i = 0, k = 0; i < num_msgs; i++) {
-		memset(eq, 0, buf_sz);
-		eq->vport_id = cpu_to_le32(vport->vport_id);
-		eq->chunks.num_chunks = cpu_to_le16(num_chunks);
-		qcs = &eq->chunks;
-		memcpy(qcs->chunks, &qc[k], chunk_sz * num_chunks);
+	num_chunks = chunks->num_chunks;
+	buf_sz = struct_size(eq, chunks.chunks, num_chunks);
+	eq = kzalloc(buf_sz, GFP_KERNEL);
+	if (!eq)
+		return -ENOMEM;
 
-		xn_params.send_buf.iov_base = eq;
-		xn_params.send_buf.iov_len = buf_sz;
-		reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
-		if (reply_sz < 0)
-			return reply_sz;
+	eq->vport_id = cpu_to_le32(vport->vport_id);
+	eq->chunks.num_chunks = cpu_to_le16(num_chunks);
 
-		k += num_chunks;
-		num_q -= num_chunks;
-		num_chunks = min(num_chunks, num_q);
-		/* Recalculate buffer size */
-		buf_sz = struct_size(eq, chunks.chunks, num_chunks);
-	}
+	idpf_convert_reg_to_queue_chunks(eq->chunks.chunks, chunks->queue_chunks,
+					 num_chunks);
 
-	return 0;
+	xn_params.send_buf.iov_base = eq;
+	xn_params.send_buf.iov_len = buf_sz;
+	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
+
+	return reply_sz < 0 ? reply_sz : 0;
 }
 
 /**
@@ -2006,27 +1924,31 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 /**
  * idpf_send_enable_queues_msg - send enable queues virtchnl message
  * @vport: Virtual port private data structure
+ * @chunks: queue ids received over mailbox
  *
  * Will send enable queues virtchnl message.  Returns 0 on success, negative on
  * failure.
  */
-int idpf_send_enable_queues_msg(struct idpf_vport *vport)
+int idpf_send_enable_queues_msg(struct idpf_vport *vport,
+				struct idpf_queue_id_reg_info *chunks)
 {
-	return idpf_send_ena_dis_queues_msg(vport, true);
+	return idpf_send_ena_dis_queues_msg(vport, chunks, true);
 }
 
 /**
  * idpf_send_disable_queues_msg - send disable queues virtchnl message
  * @vport: Virtual port private data structure
+ * @chunks: queue ids received over mailbox
  *
  * Will send disable queues virtchnl message.  Returns 0 on success, negative
  * on failure.
  */
-int idpf_send_disable_queues_msg(struct idpf_vport *vport)
+int idpf_send_disable_queues_msg(struct idpf_vport *vport,
+				 struct idpf_queue_id_reg_info *chunks)
 {
 	int err, i;
 
-	err = idpf_send_ena_dis_queues_msg(vport, false);
+	err = idpf_send_ena_dis_queues_msg(vport, chunks, false);
 	if (err)
 		return err;
 
@@ -2045,26 +1967,6 @@ int idpf_send_disable_queues_msg(struct idpf_vport *vport)
 	return idpf_wait_for_marker_event(vport);
 }
 
-/**
- * idpf_convert_reg_to_queue_chunks - Copy queue chunk information to the right
- * structure
- * @dchunks: Destination chunks to store data to
- * @schunks: Source chunks to copy data from
- * @num_chunks: number of chunks to copy
- */
-static void idpf_convert_reg_to_queue_chunks(struct virtchnl2_queue_chunk *dchunks,
-					     struct idpf_queue_id_reg_chunk *schunks,
-					     u16 num_chunks)
-{
-	u16 i;
-
-	for (i = 0; i < num_chunks; i++) {
-		dchunks[i].type = cpu_to_le32(schunks[i].type);
-		dchunks[i].start_queue_id = cpu_to_le32(schunks[i].start_queue_id);
-		dchunks[i].num_queues = cpu_to_le32(schunks[i].num_queues);
-	}
-}
-
 /**
  * idpf_send_delete_queues_msg - send delete queues virtchnl message
  * @vport: virtual port private data structure
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
index 6823a3814d2b..2251560426df 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -134,8 +134,10 @@ int idpf_send_add_queues_msg(const struct idpf_vport *vport, u16 num_tx_q,
 			     u16 num_complq, u16 num_rx_q, u16 num_rx_bufq);
 int idpf_send_delete_queues_msg(struct idpf_vport *vport,
 				struct idpf_queue_id_reg_info *chunks);
-int idpf_send_enable_queues_msg(struct idpf_vport *vport);
-int idpf_send_disable_queues_msg(struct idpf_vport *vport);
+int idpf_send_enable_queues_msg(struct idpf_vport *vport,
+				struct idpf_queue_id_reg_info *chunks);
+int idpf_send_disable_queues_msg(struct idpf_vport *vport,
+				 struct idpf_queue_id_reg_info *chunks);
 int idpf_send_config_queues_msg(struct idpf_vport *vport);
 
 int idpf_vport_alloc_vec_indexes(struct idpf_vport *vport);
-- 
2.43.0

