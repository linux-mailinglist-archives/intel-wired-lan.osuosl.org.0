Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5B5860220
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Feb 2024 20:05:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5905241975;
	Thu, 22 Feb 2024 19:05:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GkQCGgCeekcB; Thu, 22 Feb 2024 19:05:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0961941985
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708628704;
	bh=gOnOM/yGIaoOQx2RhqugyY6+EOTdFh98GpD6qN2KdZ0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3xq7m0EMwpM9CcktdSVDcQ2Vqw1rK+1ORE2wIoyhktMf0RVvR6iBDzEEaZ85UpEaF
	 ZYZwdx+YoN+w/fEmwT1VXuY+me+P5loW+BcQBs8tvQUWd9+uHZqbun6tq1qtbe1tSW
	 0dEywlxEuDdqHud61YK9gC5TU3FAuAaoJtHfoibMNu8DQ+FUv3mnU7zQpAUuUKldgM
	 ckoa75UBkXEYrSN1npR7W/b4Jo8ftA5kPiao/L9LyK4P400J3gc8bOYctzPpJDIB2z
	 fOXselm04GwxEg8cbMNNiUOm8+6XHvTBEVg4qkQSDh3JsGHFJ9FGqMTgbZvZd4NARB
	 tX0oMwfa63hIw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0961941985;
	Thu, 22 Feb 2024 19:05:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B6CB31BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 19:05:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A4127419C7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 19:05:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qh7iIoouHIVI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Feb 2024 19:04:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=alan.brady@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9976C4196B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9976C4196B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9976C4196B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 19:04:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="13506371"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="13506371"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 11:04:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="10171225"
Received: from dev1-atbrady.jf.intel.com ([10.166.241.35])
 by fmviesa004.fm.intel.com with ESMTP; 22 Feb 2024 11:04:58 -0800
From: Alan Brady <alan.brady@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 22 Feb 2024 11:04:34 -0800
Message-ID: <20240222190441.2610930-5-alan.brady@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240222190441.2610930-1-alan.brady@intel.com>
References: <20240222190441.2610930-1-alan.brady@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708628699; x=1740164699;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zM4EWQYAPdn0H4ZnB5+Smdp1C6Ee3K8/vdfcn2lxXeg=;
 b=IWxMLAGI7Ow8dsTO0bISQvEVxf98X3otEJtzXLKjMG6N0H8YFxnQ1vmH
 /cbhxyoVMmfvLCmVcZlqWlWe0QhWTpG/T25vLoPdRSLALWbKN8CAd4/cG
 BJoq51s594yGuHJHlERwAZDo+kzEV6pmjfdlPJ1OJSlQjGQPfVLM2juwx
 iyc/kkshOpO3JXb38bjrtJpe3CXx883xkeSVHFWuLguaO2AojOJQEETrp
 XGYBFDqA0eC3OJTHXt39Ll5SZMy39poDQdnQ6xJO0ZKaP287ptx/dpVPT
 W5M7R2rKBz9DUmZWXZApRZlmkZG+B6lOzpZcqzw4S9BwpW7ZJQ26R+acY
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IWxMLAGI
Subject: [Intel-wired-lan] [PATCH v6 04/11 iwl-next] idpf: refactor queue
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org,
 Igor Bagnucki <igor.bagnucki@intel.com>, Alan Brady <alan.brady@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>
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

Tested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
Signed-off-by: Alan Brady <alan.brady@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        |   2 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 393 ++++++------------
 2 files changed, 136 insertions(+), 259 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index c3b08d4593b0..ed5474c1565a 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -553,7 +553,7 @@ struct idpf_vector_lifo {
 struct idpf_vport_config {
 	struct idpf_vport_user_config_data user_config;
 	struct idpf_vport_max_q max_q;
-	void *req_qs_chunks;
+	struct virtchnl2_add_queues *req_qs_chunks;
 	spinlock_t mac_filter_list_lock;
 	DECLARE_BITMAP(flags, IDPF_VPORT_CONFIG_FLAGS_NBITS);
 };
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 2dab7122615f..1d1b421c33a3 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -904,47 +904,15 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter, u32 op,
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
@@ -1879,11 +1847,13 @@ int idpf_send_disable_vport_msg(struct idpf_vport *vport)
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
@@ -1944,10 +1914,8 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
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
@@ -1961,12 +1929,11 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
 
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
@@ -1974,17 +1941,11 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
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
+		reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
+		if (reply_sz < 0)
+			return reply_sz;
 
 		k += num_chunks;
 		totqs -= num_chunks;
@@ -1993,13 +1954,7 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
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
@@ -2011,11 +1966,13 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
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
@@ -2096,10 +2053,8 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
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
@@ -2113,12 +2068,11 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 
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
@@ -2126,17 +2080,11 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
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
+		reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
+		if (reply_sz < 0)
+			return reply_sz;
 
 		k += num_chunks;
 		totqs -= num_chunks;
@@ -2145,42 +2093,28 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
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
@@ -2199,10 +2133,8 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
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
@@ -2214,10 +2146,8 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
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
@@ -2243,10 +2173,8 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
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
@@ -2265,10 +2193,8 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
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
@@ -2281,12 +2207,16 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
 
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
@@ -2295,20 +2225,11 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
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
+		reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
+		if (reply_sz < 0)
+			return reply_sz;
 
 		k += num_chunks;
 		num_q -= num_chunks;
@@ -2317,13 +2238,7 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
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
@@ -2337,12 +2252,13 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
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
 
@@ -2372,10 +2288,8 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
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
@@ -2402,15 +2316,11 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
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
@@ -2423,39 +2333,28 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 
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
+		reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
+		if (reply_sz < 0)
+			return reply_sz;
 
 		k += num_chunks;
 		num_q -= num_chunks;
@@ -2464,13 +2363,7 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
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
@@ -2482,7 +2375,7 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
  */
 int idpf_send_enable_queues_msg(struct idpf_vport *vport)
 {
-	return idpf_send_ena_dis_queues_msg(vport, VIRTCHNL2_OP_ENABLE_QUEUES);
+	return idpf_send_ena_dis_queues_msg(vport, true);
 }
 
 /**
@@ -2496,7 +2389,7 @@ int idpf_send_disable_queues_msg(struct idpf_vport *vport)
 {
 	int err, i;
 
-	err = idpf_send_ena_dis_queues_msg(vport, VIRTCHNL2_OP_DISABLE_QUEUES);
+	err = idpf_send_ena_dis_queues_msg(vport, false);
 	if (err)
 		return err;
 
@@ -2542,22 +2435,21 @@ static void idpf_convert_reg_to_queue_chunks(struct virtchnl2_queue_chunk *dchun
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
 
@@ -2574,21 +2466,13 @@ int idpf_send_delete_queues_msg(struct idpf_vport *vport)
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
+	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
 
-	return err;
+	return reply_sz < 0 ? reply_sz : 0;
 }
 
 /**
@@ -2623,14 +2507,21 @@ int idpf_send_config_queues_msg(struct idpf_vport *vport)
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
@@ -2638,47 +2529,33 @@ int idpf_send_add_queues_msg(const struct idpf_vport *vport, u16 num_tx_q,
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
+	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
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
2.43.0

