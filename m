Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A003B30F15
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Aug 2025 08:40:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A3D860907;
	Fri, 22 Aug 2025 06:39:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2Jy_-6XeDu1Y; Fri, 22 Aug 2025 06:39:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57199608DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755844775;
	bh=iTyjdlGEJgjfdvaWBLZdGYQEgTx9AV/b7tP/8MbUbWQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=omfhahBPECej0O6fkhyB0E4hBWPVyL5tprb3Y5hVEzRqSutaJGJEF5U2/1UrTxF6/
	 OqmNRtUt8Nr4WkwZ5r+RMJVmpozNmXzcRMqw4TWXp9N0CokfhGr9RkNB23aZvIib/n
	 L82ae7reE0+6xKD9m6GB8jEU1Fm4e61BBhdOV7YOaGqw3jJKzD7gKEODGZ1wcQHs/G
	 099XtC9tZdURW568EuI4quzzplpaZQGzmRT4w3iSB+qaKO+elmqj70zWuh8DkHKYy9
	 K4bQoNwCTD1C/YNJgx1BQRR4IOKjD66tUDS1cYQ8QJTkE4+WzSva6dZUIWBUosYJK/
	 aUbBBHyo/LvVA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 57199608DC;
	Fri, 22 Aug 2025 06:39:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3820125B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 06:39:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2539D80B06
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 06:39:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FWJMiILUrufs for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Aug 2025 06:39:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 21DA280B11
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 21DA280B11
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 21DA280B11
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 06:39:31 +0000 (UTC)
X-CSE-ConnectionGUID: P8gSRiaxRKuEUbGV0vwVnA==
X-CSE-MsgGUID: 0lq7hRH8SaaOI2qX0sHsnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11529"; a="75729043"
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="75729043"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2025 23:32:23 -0700
X-CSE-ConnectionGUID: cp90PU6ZTFuwwqNfYYmICg==
X-CSE-MsgGUID: ky5Uu+PBRp+qn6l14D3lJw==
X-ExtLoop1: 1
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.55])
 by fmviesa003.fm.intel.com with ESMTP; 21 Aug 2025 23:32:23 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: madhu.chittim@intel.com, Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Anton Nadezhdin <anton.nadezhdin@intel.com>
Date: Thu, 21 Aug 2025 23:32:08 -0700
Message-ID: <20250822063215.3911-3-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250822063215.3911-1-pavan.kumar.linga@intel.com>
References: <20250822063215.3911-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755844771; x=1787380771;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EX5bPtb2FNevVtwGtR13aL1bAoWyWtMiumTQML5TlpU=;
 b=Uiles8ToDIrmiI/fxje3kCpKkLIPAHFdl3qCLfautOFVjKG0uqMcmMox
 SFh5pARGM5F+pleHXD+Jegw/+H6ULVdcyxrYty2IbmH+FW8QcOBTBeaIl
 7XXwdE81ICvAC5gvm6plhHRH6kX4aQIH4vgpZ3gZBMJGR+XfVaRdfMmlw
 DpTnFSJUWmkwrJSIhFDW53UW76LOZgBdkWeBXXIxM1Uqiwll0JKcE+WbS
 1SrChhxrzLSZWI4Uep2q7GIEuvMwHdsmscxM7bg4Iq8V6RkryR22Zu6hE
 NZrADOZTGePwit1HjNUSIfve3fwDKnDJLLSBhoC57n3MXj4LxFQu++gaF
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Uiles8To
Subject: [Intel-wired-lan] [PATCH net-next v7 2/9] idpf: use existing queue
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

Queue chunk info received from the device control plane is stored in the
persistent data section. Necessary info from these chunks is parsed and
stored in the queue structure. While sending the enable/disable queues
virtchnl message, queue chunk info is prepared using the stored queue
info. Instead of that, use the stored queue chunks directly which has
info about all the queues that needs to be enabled/disabled.

Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   6 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 186 +++++-------------
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   6 +-
 3 files changed, 51 insertions(+), 147 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index c2e76b67fd1a..aca3ed4cc23b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -905,7 +905,7 @@ static void idpf_vport_stop(struct idpf_vport *vport, bool rtnl)
 	chunks = &vport->adapter->vport_config[vport->idx]->qid_reg_info;
 
 	idpf_send_disable_vport_msg(vport);
-	idpf_send_disable_queues_msg(vport);
+	idpf_send_disable_queues_msg(vport, chunks);
 	idpf_send_map_unmap_queue_vector_msg(vport, false);
 	/* Normally we ask for queues in create_vport, but if the number of
 	 * initially requested queues have changed, for example via ethtool
@@ -1474,7 +1474,7 @@ static int idpf_vport_open(struct idpf_vport *vport, bool rtnl)
 		goto rxq_deinit;
 	}
 
-	err = idpf_send_enable_queues_msg(vport);
+	err = idpf_send_enable_queues_msg(vport, chunks);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to enable queues for vport %u: %d\n",
 			vport->vport_id, err);
@@ -1518,7 +1518,7 @@ static int idpf_vport_open(struct idpf_vport *vport, bool rtnl)
 disable_vport:
 	idpf_send_disable_vport_msg(vport);
 disable_queues:
-	idpf_send_disable_queues_msg(vport);
+	idpf_send_disable_queues_msg(vport, chunks);
 unmap_queue_vectors:
 	idpf_send_map_unmap_queue_vector_msg(vport, false);
 rxq_deinit:
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 97344d04ca8d..20721bc65bd0 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -1142,6 +1142,24 @@ static void idpf_init_avail_queues(struct idpf_adapter *adapter)
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
@@ -1874,145 +1892,45 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
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
 	struct idpf_vc_xn_params xn_params = {
 		.timeout_ms	= IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
 	};
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
+	if (ena)
+		xn_params.vc_op = VIRTCHNL2_OP_ENABLE_QUEUES;
+	else
+		xn_params.vc_op = VIRTCHNL2_OP_DISABLE_QUEUES;
 
+	num_chunks = chunks->num_chunks;
 	buf_sz = struct_size(eq, chunks.chunks, num_chunks);
 	eq = kzalloc(buf_sz, GFP_KERNEL);
 	if (!eq)
 		return -ENOMEM;
 
-	if (ena)
-		xn_params.vc_op = VIRTCHNL2_OP_ENABLE_QUEUES;
-	else
-		xn_params.vc_op = VIRTCHNL2_OP_DISABLE_QUEUES;
-
-	for (i = 0, k = 0; i < num_msgs; i++) {
-		memset(eq, 0, buf_sz);
-		eq->vport_id = cpu_to_le32(vport->vport_id);
-		eq->chunks.num_chunks = cpu_to_le16(num_chunks);
-		qcs = &eq->chunks;
-		memcpy(qcs->chunks, &qc[k], chunk_sz * num_chunks);
+	eq->vport_id = cpu_to_le32(vport->vport_id);
+	eq->chunks.num_chunks = cpu_to_le16(num_chunks);
 
-		xn_params.send_buf.iov_base = eq;
-		xn_params.send_buf.iov_len = buf_sz;
-		reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
-		if (reply_sz < 0)
-			return reply_sz;
+	idpf_convert_reg_to_queue_chunks(eq->chunks.chunks, chunks->queue_chunks,
+					 num_chunks);
 
-		k += num_chunks;
-		num_q -= num_chunks;
-		num_chunks = min(num_chunks, num_q);
-		/* Recalculate buffer size */
-		buf_sz = struct_size(eq, chunks.chunks, num_chunks);
-	}
+	xn_params.send_buf.iov_base = eq;
+	xn_params.send_buf.iov_len = buf_sz;
+	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
 
-	return 0;
+	return reply_sz < 0 ? reply_sz : 0;
 }
 
 /**
@@ -2158,53 +2076,37 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
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
 	int err;
 
-	err = idpf_send_ena_dis_queues_msg(vport, false);
+	err = idpf_send_ena_dis_queues_msg(vport, chunks, false);
 	if (err)
 		return err;
 
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
index b169a8a045ba..9f183857a097 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -133,8 +133,10 @@ int idpf_send_add_queues_msg(const struct idpf_vport *vport, u16 num_tx_q,
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

