Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E68E8417FD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jan 2024 01:59:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EF55C82F6F;
	Tue, 30 Jan 2024 00:59:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EF55C82F6F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706576398;
	bh=UH3NgiCWsIN56lw1VC3DoRv0l+YybypW3TYBGgakd/I=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=r7/3zg9epd037pKe9/WQ8pRmPS/xk1DM+7qTein+mGGChIyl93IZ03e/RWTBuH2aG
	 BAToOhtzIXTVFJbtUKvcv2DoStHw+XHJTkHbHgwa7M09Lc3wJJeK1FVHM0dEz/Oo/8
	 yq0oDeEKAxYlTFvUeQ/UlOyUGXQQiCGt/+8c+sq/pnm9ipA0J3i4GpEYrBfsn18x0B
	 2zotwf5KcYU3nb1a3/XZLMfIBfDHsKAftMTZ3DUXwTpZ/vfIzgadd+spjiOIM5KK4Q
	 FHXJ6VxrvQ73UXQ0UVx5v0WnjNvWR0Hy7Olbt8dMgkeudwO9mM4ScHNMNNDZQTiF66
	 sy/9fckvCZPPg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yun8L7H-PjS6; Tue, 30 Jan 2024 00:59:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CAE938299E;
	Tue, 30 Jan 2024 00:59:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CAE938299E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 42E281BF287
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 00:59:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1A1DB60E44
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 00:59:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A1DB60E44
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wFQCrXZfVpIS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jan 2024 00:59:45 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B8521605AE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 00:59:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B8521605AE
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="9870866"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; 
   d="scan'208";a="9870866"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 16:59:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="1119078086"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="1119078086"
Received: from dev1-atbrady.jf.intel.com ([10.166.241.35])
 by fmsmga005.fm.intel.com with ESMTP; 29 Jan 2024 16:59:44 -0800
From: Alan Brady <alan.brady@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 29 Jan 2024 16:59:19 -0800
Message-Id: <20240130005923.983026-4-alan.brady@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240130005923.983026-1-alan.brady@intel.com>
References: <20240130005923.983026-1-alan.brady@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706576386; x=1738112386;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SsE3l6PdQBVEF+zZmL9QHDNP9BiW1YE3xq5XWqfzrNk=;
 b=IWqhURirqQihebAlRigU1CBJcP7hWukw4QUi3xCNOOjZmDG8kSEeIOeX
 6rd+UL2sWwxeF2O2oYnx7EsJLYgkT/YVoDVlyxmt8q9KR7/cGqkt6f9ud
 RdBj5zVs9s7AcFU4f7HwAHtyWQ+sL1mrGEw10yKlIdkZalR45X3kkoHwX
 5MIgAc9PNzvWx840H05gV5kbbf5DdFHohhq3S7DwGeWUhKrA7DYyteUt7
 s2/6MitzJwdudyQjTox8GbUsHKymtBHMCsoGKWmLko8oYTZ+tUG1e64hF
 fIOtbuHhF4iRrm6/vuJDLF/8kVymBQws0Fp5LgfMwQxZj3k3AxlUfq3BN
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IWqhURir
Subject: [Intel-wired-lan] [PATCH v3 3/7 iwl-next] idpf: refactor queue
 related virtchnl messages
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: netdev@vger.kernel.org, willemdebruijn.kernel@gmail.com,
 igor.bagnucki@intel.com, Alan Brady <alan.brady@intel.com>,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This reworks queue specific virtchnl messages to use the added
transaction API.  It is fairly mechanical and generally makes the
functions using it more simple. Functions using transaction API no
longer need to take the vc_buf_lock since it's not using it anymore.
After filling out an idpf_vc_xn_params struct, idpf_vc_xn_exec takes
care of the send and recv handling.

This also converts those functions where appropriate to use
auto-variables instead of manually calling kfree. This greatly
simplifies the memory alloc paths and makes them less prone memory
leaks.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
Signed-off-by: Alan Brady <alan.brady@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        |   2 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 393 ++++++------------
 2 files changed, 136 insertions(+), 259 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 92103c3cf5a0..393f6e46012f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -648,7 +648,7 @@ struct idpf_vector_lifo {
 struct idpf_vport_config {
 	struct idpf_vport_user_config_data user_config;
 	struct idpf_vport_max_q max_q;
-	void *req_qs_chunks;
+	struct virtchnl2_add_queues *req_qs_chunks;
 	spinlock_t mac_filter_list_lock;
 	DECLARE_BITMAP(flags, IDPF_VPORT_CONFIG_FLAGS_NBITS);
 };
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index e7aa381064ac..3c6116f24286 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -791,47 +791,15 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter, u32 op,
 		case VIRTCHNL2_OP_ENABLE_VPORT:
 		case VIRTCHNL2_OP_DISABLE_VPORT:
 		case VIRTCHNL2_OP_DESTROY_VPORT:
-			err = idpf_vc_xn_forward_reply(adapter, &ctlq_msg);
-			break;
 		case VIRTCHNL2_OP_CONFIG_TX_QUEUES:
-			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
-					   IDPF_VC_CONFIG_TXQ,
-					   IDPF_VC_CONFIG_TXQ_ERR);
-			break;
 		case VIRTCHNL2_OP_CONFIG_RX_QUEUES:
-			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
-					   IDPF_VC_CONFIG_RXQ,
-					   IDPF_VC_CONFIG_RXQ_ERR);
-			break;
 		case VIRTCHNL2_OP_ENABLE_QUEUES:
-			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
-					   IDPF_VC_ENA_QUEUES,
-					   IDPF_VC_ENA_QUEUES_ERR);
-			break;
 		case VIRTCHNL2_OP_DISABLE_QUEUES:
-			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
-					   IDPF_VC_DIS_QUEUES,
-					   IDPF_VC_DIS_QUEUES_ERR);
-			break;
 		case VIRTCHNL2_OP_ADD_QUEUES:
-			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
-					   IDPF_VC_ADD_QUEUES,
-					   IDPF_VC_ADD_QUEUES_ERR);
-			break;
 		case VIRTCHNL2_OP_DEL_QUEUES:
-			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
-					   IDPF_VC_DEL_QUEUES,
-					   IDPF_VC_DEL_QUEUES_ERR);
-			break;
 		case VIRTCHNL2_OP_MAP_QUEUE_VECTOR:
-			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
-					   IDPF_VC_MAP_IRQ,
-					   IDPF_VC_MAP_IRQ_ERR);
-			break;
 		case VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR:
-			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
-					   IDPF_VC_UNMAP_IRQ,
-					   IDPF_VC_UNMAP_IRQ_ERR);
+			err = idpf_vc_xn_forward_reply(adapter, &ctlq_msg);
 			break;
 		case VIRTCHNL2_OP_GET_STATS:
 			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
@@ -1766,11 +1734,13 @@ int idpf_send_disable_vport_msg(struct idpf_vport *vport)
  */
 static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
 {
-	struct virtchnl2_config_tx_queues *ctq;
+	struct virtchnl2_config_tx_queues *ctq __free(kfree) = NULL;
+	struct virtchnl2_txq_info *qi __free(kfree) = NULL;
+	struct idpf_vc_xn_params xn_params = {};
 	u32 config_sz, chunk_sz, buf_sz;
 	int totqs, num_msgs, num_chunks;
-	struct virtchnl2_txq_info *qi;
-	int err = 0, i, k = 0;
+	ssize_t reply_sz;
+	int i, k = 0;
 
 	totqs = vport->num_txq + vport->num_complq;
 	qi = kcalloc(totqs, sizeof(struct virtchnl2_txq_info), GFP_KERNEL);
@@ -1831,10 +1801,8 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
 	}
 
 	/* Make sure accounting agrees */
-	if (k != totqs) {
-		err = -EINVAL;
-		goto error;
-	}
+	if (k != totqs)
+		return -EINVAL;
 
 	/* Chunk up the queue contexts into multiple messages to avoid
 	 * sending a control queue message buffer that is too large
@@ -1848,12 +1816,11 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
 
 	buf_sz = struct_size(ctq, qinfo, num_chunks);
 	ctq = kzalloc(buf_sz, GFP_KERNEL);
-	if (!ctq) {
-		err = -ENOMEM;
-		goto error;
-	}
+	if (!ctq)
+		return -ENOMEM;
 
-	mutex_lock(&vport->vc_buf_lock);
+	xn_params.vc_op = VIRTCHNL2_OP_CONFIG_TX_QUEUES;
+	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
 
 	for (i = 0, k = 0; i < num_msgs; i++) {
 		memset(ctq, 0, buf_sz);
@@ -1861,17 +1828,11 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
 		ctq->num_qinfo = cpu_to_le16(num_chunks);
 		memcpy(ctq->qinfo, &qi[k], chunk_sz * num_chunks);
 
-		err = idpf_send_mb_msg(vport->adapter,
-				       VIRTCHNL2_OP_CONFIG_TX_QUEUES,
-				       buf_sz, (u8 *)ctq, 0);
-		if (err)
-			goto mbx_error;
-
-		err = idpf_wait_for_event(vport->adapter, vport,
-					  IDPF_VC_CONFIG_TXQ,
-					  IDPF_VC_CONFIG_TXQ_ERR);
-		if (err)
-			goto mbx_error;
+		xn_params.send_buf.iov_base = ctq;
+		xn_params.send_buf.iov_len = buf_sz;
+		reply_sz = idpf_vc_xn_exec(vport->adapter, xn_params);
+		if (reply_sz < 0)
+			return reply_sz;
 
 		k += num_chunks;
 		totqs -= num_chunks;
@@ -1880,13 +1841,7 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
 		buf_sz = struct_size(ctq, qinfo, num_chunks);
 	}
 
-mbx_error:
-	mutex_unlock(&vport->vc_buf_lock);
-	kfree(ctq);
-error:
-	kfree(qi);
-
-	return err;
+	return 0;
 }
 
 /**
@@ -1898,11 +1853,13 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
  */
 static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 {
-	struct virtchnl2_config_rx_queues *crq;
+	struct virtchnl2_config_rx_queues *crq __free(kfree) = NULL;
+	struct virtchnl2_rxq_info *qi __free(kfree) = NULL;
+	struct idpf_vc_xn_params xn_params = {};
 	u32 config_sz, chunk_sz, buf_sz;
 	int totqs, num_msgs, num_chunks;
-	struct virtchnl2_rxq_info *qi;
-	int err = 0, i, k = 0;
+	ssize_t reply_sz;
+	int i, k = 0;
 
 	totqs = vport->num_rxq + vport->num_bufq;
 	qi = kcalloc(totqs, sizeof(struct virtchnl2_rxq_info), GFP_KERNEL);
@@ -1983,10 +1940,8 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 	}
 
 	/* Make sure accounting agrees */
-	if (k != totqs) {
-		err = -EINVAL;
-		goto error;
-	}
+	if (k != totqs)
+		return -EINVAL;
 
 	/* Chunk up the queue contexts into multiple messages to avoid
 	 * sending a control queue message buffer that is too large
@@ -2000,12 +1955,11 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 
 	buf_sz = struct_size(crq, qinfo, num_chunks);
 	crq = kzalloc(buf_sz, GFP_KERNEL);
-	if (!crq) {
-		err = -ENOMEM;
-		goto error;
-	}
+	if (!crq)
+		return -ENOMEM;
 
-	mutex_lock(&vport->vc_buf_lock);
+	xn_params.vc_op = VIRTCHNL2_OP_CONFIG_RX_QUEUES;
+	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
 
 	for (i = 0, k = 0; i < num_msgs; i++) {
 		memset(crq, 0, buf_sz);
@@ -2013,17 +1967,11 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 		crq->num_qinfo = cpu_to_le16(num_chunks);
 		memcpy(crq->qinfo, &qi[k], chunk_sz * num_chunks);
 
-		err = idpf_send_mb_msg(vport->adapter,
-				       VIRTCHNL2_OP_CONFIG_RX_QUEUES,
-				       buf_sz, (u8 *)crq, 0);
-		if (err)
-			goto mbx_error;
-
-		err = idpf_wait_for_event(vport->adapter, vport,
-					  IDPF_VC_CONFIG_RXQ,
-					  IDPF_VC_CONFIG_RXQ_ERR);
-		if (err)
-			goto mbx_error;
+		xn_params.send_buf.iov_base = crq;
+		xn_params.send_buf.iov_len = buf_sz;
+		reply_sz = idpf_vc_xn_exec(vport->adapter, xn_params);
+		if (reply_sz < 0)
+			return reply_sz;
 
 		k += num_chunks;
 		totqs -= num_chunks;
@@ -2032,42 +1980,28 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 		buf_sz = struct_size(crq, qinfo, num_chunks);
 	}
 
-mbx_error:
-	mutex_unlock(&vport->vc_buf_lock);
-	kfree(crq);
-error:
-	kfree(qi);
-
-	return err;
+	return 0;
 }
 
 /**
  * idpf_send_ena_dis_queues_msg - Send virtchnl enable or disable
  * queues message
  * @vport: virtual port data structure
- * @vc_op: virtchnl op code to send
+ * @ena: if true enable, false disable
  *
  * Send enable or disable queues virtchnl message. Returns 0 on success,
  * negative on failure.
  */
-static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
+static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, bool ena)
 {
+	struct virtchnl2_del_ena_dis_queues *eq __free(kfree) = NULL;
+	struct virtchnl2_queue_chunk *qc __free(kfree) = NULL;
 	u32 num_msgs, num_chunks, num_txq, num_rxq, num_q;
-	struct idpf_adapter *adapter = vport->adapter;
-	struct virtchnl2_del_ena_dis_queues *eq;
+	struct idpf_vc_xn_params xn_params = {};
 	struct virtchnl2_queue_chunks *qcs;
-	struct virtchnl2_queue_chunk *qc;
 	u32 config_sz, chunk_sz, buf_sz;
-	int i, j, k = 0, err = 0;
-
-	/* validate virtchnl op */
-	switch (vc_op) {
-	case VIRTCHNL2_OP_ENABLE_QUEUES:
-	case VIRTCHNL2_OP_DISABLE_QUEUES:
-		break;
-	default:
-		return -EINVAL;
-	}
+	ssize_t reply_sz;
+	int i, j, k = 0;
 
 	num_txq = vport->num_txq + vport->num_complq;
 	num_rxq = vport->num_rxq + vport->num_bufq;
@@ -2086,10 +2020,8 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
 			qc[k].num_queues = cpu_to_le32(IDPF_NUMQ_PER_CHUNK);
 		}
 	}
-	if (vport->num_txq != k) {
-		err = -EINVAL;
-		goto error;
-	}
+	if (vport->num_txq != k)
+		return -EINVAL;
 
 	if (!idpf_is_queue_model_split(vport->txq_model))
 		goto setup_rx;
@@ -2101,10 +2033,8 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
 		qc[k].start_queue_id = cpu_to_le32(tx_qgrp->complq->q_id);
 		qc[k].num_queues = cpu_to_le32(IDPF_NUMQ_PER_CHUNK);
 	}
-	if (vport->num_complq != (k - vport->num_txq)) {
-		err = -EINVAL;
-		goto error;
-	}
+	if (vport->num_complq != (k - vport->num_txq))
+		return -EINVAL;
 
 setup_rx:
 	for (i = 0; i < vport->num_rxq_grp; i++) {
@@ -2130,10 +2060,8 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
 			qc[k].num_queues = cpu_to_le32(IDPF_NUMQ_PER_CHUNK);
 		}
 	}
-	if (vport->num_rxq != k - (vport->num_txq + vport->num_complq)) {
-		err = -EINVAL;
-		goto error;
-	}
+	if (vport->num_rxq != k - (vport->num_txq + vport->num_complq))
+		return -EINVAL;
 
 	if (!idpf_is_queue_model_split(vport->rxq_model))
 		goto send_msg;
@@ -2152,10 +2080,8 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
 	}
 	if (vport->num_bufq != k - (vport->num_txq +
 				    vport->num_complq +
-				    vport->num_rxq)) {
-		err = -EINVAL;
-		goto error;
-	}
+				    vport->num_rxq))
+		return -EINVAL;
 
 send_msg:
 	/* Chunk up the queue info into multiple messages */
@@ -2168,12 +2094,16 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
 
 	buf_sz = struct_size(eq, chunks.chunks, num_chunks);
 	eq = kzalloc(buf_sz, GFP_KERNEL);
-	if (!eq) {
-		err = -ENOMEM;
-		goto error;
-	}
+	if (!eq)
+		return -ENOMEM;
 
-	mutex_lock(&vport->vc_buf_lock);
+	if (ena) {
+		xn_params.vc_op = VIRTCHNL2_OP_ENABLE_QUEUES;
+		xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
+	} else {
+		xn_params.vc_op = VIRTCHNL2_OP_DISABLE_QUEUES;
+		xn_params.timeout_ms = IDPF_VC_XN_MIN_TIMEOUT_MSEC;
+	}
 
 	for (i = 0, k = 0; i < num_msgs; i++) {
 		memset(eq, 0, buf_sz);
@@ -2182,20 +2112,11 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
 		qcs = &eq->chunks;
 		memcpy(qcs->chunks, &qc[k], chunk_sz * num_chunks);
 
-		err = idpf_send_mb_msg(adapter, vc_op, buf_sz, (u8 *)eq, 0);
-		if (err)
-			goto mbx_error;
-
-		if (vc_op == VIRTCHNL2_OP_ENABLE_QUEUES)
-			err = idpf_wait_for_event(adapter, vport,
-						  IDPF_VC_ENA_QUEUES,
-						  IDPF_VC_ENA_QUEUES_ERR);
-		else
-			err = idpf_min_wait_for_event(adapter, vport,
-						      IDPF_VC_DIS_QUEUES,
-						      IDPF_VC_DIS_QUEUES_ERR);
-		if (err)
-			goto mbx_error;
+		xn_params.send_buf.iov_base = eq;
+		xn_params.send_buf.iov_len = buf_sz;
+		reply_sz = idpf_vc_xn_exec(vport->adapter, xn_params);
+		if (reply_sz < 0)
+			return reply_sz;
 
 		k += num_chunks;
 		num_q -= num_chunks;
@@ -2204,13 +2125,7 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
 		buf_sz = struct_size(eq, chunks.chunks, num_chunks);
 	}
 
-mbx_error:
-	mutex_unlock(&vport->vc_buf_lock);
-	kfree(eq);
-error:
-	kfree(qc);
-
-	return err;
+	return 0;
 }
 
 /**
@@ -2224,12 +2139,13 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
  */
 int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 {
-	struct idpf_adapter *adapter = vport->adapter;
-	struct virtchnl2_queue_vector_maps *vqvm;
-	struct virtchnl2_queue_vector *vqv;
+	struct virtchnl2_queue_vector_maps *vqvm __free(kfree) = NULL;
+	struct virtchnl2_queue_vector *vqv __free(kfree) = NULL;
+	struct idpf_vc_xn_params xn_params = {};
 	u32 config_sz, chunk_sz, buf_sz;
 	u32 num_msgs, num_chunks, num_q;
-	int i, j, k = 0, err = 0;
+	ssize_t reply_sz;
+	int i, j, k = 0;
 
 	num_q = vport->num_txq + vport->num_rxq;
 
@@ -2259,10 +2175,8 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 		}
 	}
 
-	if (vport->num_txq != k) {
-		err = -EINVAL;
-		goto error;
-	}
+	if (vport->num_txq != k)
+		return -EINVAL;
 
 	for (i = 0; i < vport->num_rxq_grp; i++) {
 		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
@@ -2289,15 +2203,11 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 	}
 
 	if (idpf_is_queue_model_split(vport->txq_model)) {
-		if (vport->num_rxq != k - vport->num_complq) {
-			err = -EINVAL;
-			goto error;
-		}
+		if (vport->num_rxq != k - vport->num_complq)
+			return -EINVAL;
 	} else {
-		if (vport->num_rxq != k - vport->num_txq) {
-			err = -EINVAL;
-			goto error;
-		}
+		if (vport->num_rxq != k - vport->num_txq)
+			return -EINVAL;
 	}
 
 	/* Chunk up the vector info into multiple messages */
@@ -2310,39 +2220,28 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 
 	buf_sz = struct_size(vqvm, qv_maps, num_chunks);
 	vqvm = kzalloc(buf_sz, GFP_KERNEL);
-	if (!vqvm) {
-		err = -ENOMEM;
-		goto error;
-	}
+	if (!vqvm)
+		return -ENOMEM;
 
-	mutex_lock(&vport->vc_buf_lock);
+	if (map) {
+		xn_params.vc_op = VIRTCHNL2_OP_MAP_QUEUE_VECTOR;
+		xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
+	} else {
+		xn_params.vc_op = VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR;
+		xn_params.timeout_ms = IDPF_VC_XN_MIN_TIMEOUT_MSEC;
+	}
 
 	for (i = 0, k = 0; i < num_msgs; i++) {
 		memset(vqvm, 0, buf_sz);
+		xn_params.send_buf.iov_base = vqvm;
+		xn_params.send_buf.iov_len = buf_sz;
 		vqvm->vport_id = cpu_to_le32(vport->vport_id);
 		vqvm->num_qv_maps = cpu_to_le16(num_chunks);
 		memcpy(vqvm->qv_maps, &vqv[k], chunk_sz * num_chunks);
 
-		if (map) {
-			err = idpf_send_mb_msg(adapter,
-					       VIRTCHNL2_OP_MAP_QUEUE_VECTOR,
-					       buf_sz, (u8 *)vqvm, 0);
-			if (!err)
-				err = idpf_wait_for_event(adapter, vport,
-							  IDPF_VC_MAP_IRQ,
-							  IDPF_VC_MAP_IRQ_ERR);
-		} else {
-			err = idpf_send_mb_msg(adapter,
-					       VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR,
-					       buf_sz, (u8 *)vqvm, 0);
-			if (!err)
-				err =
-				idpf_min_wait_for_event(adapter, vport,
-							IDPF_VC_UNMAP_IRQ,
-							IDPF_VC_UNMAP_IRQ_ERR);
-		}
-		if (err)
-			goto mbx_error;
+		reply_sz = idpf_vc_xn_exec(vport->adapter, xn_params);
+		if (reply_sz < 0)
+			return reply_sz;
 
 		k += num_chunks;
 		num_q -= num_chunks;
@@ -2351,13 +2250,7 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 		buf_sz = struct_size(vqvm, qv_maps, num_chunks);
 	}
 
-mbx_error:
-	mutex_unlock(&vport->vc_buf_lock);
-	kfree(vqvm);
-error:
-	kfree(vqv);
-
-	return err;
+	return 0;
 }
 
 /**
@@ -2369,7 +2262,7 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
  */
 int idpf_send_enable_queues_msg(struct idpf_vport *vport)
 {
-	return idpf_send_ena_dis_queues_msg(vport, VIRTCHNL2_OP_ENABLE_QUEUES);
+	return idpf_send_ena_dis_queues_msg(vport, true);
 }
 
 /**
@@ -2383,7 +2276,7 @@ int idpf_send_disable_queues_msg(struct idpf_vport *vport)
 {
 	int err, i;
 
-	err = idpf_send_ena_dis_queues_msg(vport, VIRTCHNL2_OP_DISABLE_QUEUES);
+	err = idpf_send_ena_dis_queues_msg(vport, false);
 	if (err)
 		return err;
 
@@ -2429,22 +2322,21 @@ static void idpf_convert_reg_to_queue_chunks(struct virtchnl2_queue_chunk *dchun
  */
 int idpf_send_delete_queues_msg(struct idpf_vport *vport)
 {
-	struct idpf_adapter *adapter = vport->adapter;
+	struct virtchnl2_del_ena_dis_queues *eq __free(kfree) = NULL;
 	struct virtchnl2_create_vport *vport_params;
 	struct virtchnl2_queue_reg_chunks *chunks;
-	struct virtchnl2_del_ena_dis_queues *eq;
+	struct idpf_vc_xn_params xn_params = {};
 	struct idpf_vport_config *vport_config;
 	u16 vport_idx = vport->idx;
-	int buf_size, err;
+	ssize_t reply_sz;
 	u16 num_chunks;
+	int buf_size;
 
-	vport_config = adapter->vport_config[vport_idx];
+	vport_config = vport->adapter->vport_config[vport_idx];
 	if (vport_config->req_qs_chunks) {
-		struct virtchnl2_add_queues *vc_aq =
-			(struct virtchnl2_add_queues *)vport_config->req_qs_chunks;
-		chunks = &vc_aq->chunks;
+		chunks = &vport_config->req_qs_chunks->chunks;
 	} else {
-		vport_params = adapter->vport_params_recvd[vport_idx];
+		vport_params = vport->adapter->vport_params_recvd[vport_idx];
 		chunks = &vport_params->chunks;
 	}
 
@@ -2461,21 +2353,13 @@ int idpf_send_delete_queues_msg(struct idpf_vport *vport)
 	idpf_convert_reg_to_queue_chunks(eq->chunks.chunks, chunks->chunks,
 					 num_chunks);
 
-	mutex_lock(&vport->vc_buf_lock);
-
-	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_DEL_QUEUES,
-			       buf_size, (u8 *)eq, 0);
-	if (err)
-		goto rel_lock;
-
-	err = idpf_min_wait_for_event(adapter, vport, IDPF_VC_DEL_QUEUES,
-				      IDPF_VC_DEL_QUEUES_ERR);
-
-rel_lock:
-	mutex_unlock(&vport->vc_buf_lock);
-	kfree(eq);
+	xn_params.vc_op = VIRTCHNL2_OP_DEL_QUEUES;
+	xn_params.timeout_ms = IDPF_VC_XN_MIN_TIMEOUT_MSEC;
+	xn_params.send_buf.iov_base = eq;
+	xn_params.send_buf.iov_len = buf_size;
+	reply_sz = idpf_vc_xn_exec(vport->adapter, xn_params);
 
-	return err;
+	return reply_sz < 0 ? reply_sz : 0;
 }
 
 /**
@@ -2510,14 +2394,21 @@ int idpf_send_config_queues_msg(struct idpf_vport *vport)
 int idpf_send_add_queues_msg(const struct idpf_vport *vport, u16 num_tx_q,
 			     u16 num_complq, u16 num_rx_q, u16 num_rx_bufq)
 {
-	struct idpf_adapter *adapter = vport->adapter;
+	struct virtchnl2_add_queues *vc_msg __free(kfree) = NULL;
+	struct idpf_vc_xn_params xn_params = {};
 	struct idpf_vport_config *vport_config;
-	struct virtchnl2_add_queues aq = { };
-	struct virtchnl2_add_queues *vc_msg;
+	struct virtchnl2_add_queues aq = {};
 	u16 vport_idx = vport->idx;
-	int size, err;
+	ssize_t reply_sz;
+	int size;
 
-	vport_config = adapter->vport_config[vport_idx];
+	vc_msg = kzalloc(IDPF_CTLQ_MAX_BUF_LEN, GFP_KERNEL);
+	if (!vc_msg)
+		return -ENOMEM;
+
+	vport_config = vport->adapter->vport_config[vport_idx];
+	kfree(vport_config->req_qs_chunks);
+	vport_config->req_qs_chunks = NULL;
 
 	aq.vport_id = cpu_to_le32(vport->vport_id);
 	aq.num_tx_q = cpu_to_le16(num_tx_q);
@@ -2525,47 +2416,33 @@ int idpf_send_add_queues_msg(const struct idpf_vport *vport, u16 num_tx_q,
 	aq.num_rx_q = cpu_to_le16(num_rx_q);
 	aq.num_rx_bufq = cpu_to_le16(num_rx_bufq);
 
-	mutex_lock(&((struct idpf_vport *)vport)->vc_buf_lock);
-
-	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_ADD_QUEUES,
-			       sizeof(struct virtchnl2_add_queues), (u8 *)&aq, 0);
-	if (err)
-		goto rel_lock;
-
-	/* We want vport to be const to prevent incidental code changes making
-	 * changes to the vport config. We're making a special exception here
-	 * to discard const to use the virtchnl.
-	 */
-	err = idpf_wait_for_event(adapter, (struct idpf_vport *)vport,
-				  IDPF_VC_ADD_QUEUES, IDPF_VC_ADD_QUEUES_ERR);
-	if (err)
-		goto rel_lock;
-
-	kfree(vport_config->req_qs_chunks);
-	vport_config->req_qs_chunks = NULL;
+	xn_params.vc_op = VIRTCHNL2_OP_ADD_QUEUES;
+	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
+	xn_params.send_buf.iov_base = &aq;
+	xn_params.send_buf.iov_len = sizeof(aq);
+	xn_params.recv_buf.iov_base = vc_msg;
+	xn_params.recv_buf.iov_len = IDPF_CTLQ_MAX_BUF_LEN;
+	reply_sz = idpf_vc_xn_exec(vport->adapter, xn_params);
+	if (reply_sz < 0)
+		return reply_sz;
 
-	vc_msg = (struct virtchnl2_add_queues *)vport->vc_msg;
 	/* compare vc_msg num queues with vport num queues */
 	if (le16_to_cpu(vc_msg->num_tx_q) != num_tx_q ||
 	    le16_to_cpu(vc_msg->num_rx_q) != num_rx_q ||
 	    le16_to_cpu(vc_msg->num_tx_complq) != num_complq ||
-	    le16_to_cpu(vc_msg->num_rx_bufq) != num_rx_bufq) {
-		err = -EINVAL;
-		goto rel_lock;
-	}
+	    le16_to_cpu(vc_msg->num_rx_bufq) != num_rx_bufq)
+		return -EINVAL;
 
 	size = struct_size(vc_msg, chunks.chunks,
 			   le16_to_cpu(vc_msg->chunks.num_chunks));
-	vport_config->req_qs_chunks = kmemdup(vc_msg, size, GFP_KERNEL);
-	if (!vport_config->req_qs_chunks) {
-		err = -ENOMEM;
-		goto rel_lock;
-	}
+	if (reply_sz < size)
+		return -EIO;
 
-rel_lock:
-	mutex_unlock(&((struct idpf_vport *)vport)->vc_buf_lock);
+	vport_config->req_qs_chunks = kmemdup(vc_msg, size, GFP_KERNEL);
+	if (!vport_config->req_qs_chunks)
+		return -ENOMEM;
 
-	return err;
+	return 0;
 }
 
 /**
-- 
2.40.1

