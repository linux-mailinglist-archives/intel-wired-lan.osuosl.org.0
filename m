Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B16E785CD02
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Feb 2024 01:50:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6520B41557;
	Wed, 21 Feb 2024 00:50:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PBebBgvVLz70; Wed, 21 Feb 2024 00:50:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D49C41545
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708476647;
	bh=bc6RlbwMFMUq+clzYyDh9N/FdBFxZikN1t22mwAv0Ro=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sE3acyyy5s+RZF4tm5+qMXgvHrRVoBpCa6rw7feZq+j8A4f4DJjTxYDOk7KIy1BiH
	 5sPQYkrMIGtMBpluRxDepuF5n5KGejzmj1Bn4u+A1DqQ7LTLtLxDrtZGUIIASCg70Q
	 UJt13+A42+SdrIMOKRW5931pue/2KrV/pWBZVVpaYiljVpeQsli3dBNEa3MsaWpFra
	 MdW8Ts5Kg8qTlS3RkbmPQRk2jNSVUThCj2t712Y/iQhhSfFTF+Eb69iKKCQniO3dYJ
	 0W1TXO75jEPqG8iQsDM2jIesJfoUQRtK15wKxcp3J57AF4lGQHz+DkwefPLNviDTu4
	 lJY6xvc69wRpg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D49C41545;
	Wed, 21 Feb 2024 00:50:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7CFDC1BF39D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Feb 2024 00:50:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 77835607A4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Feb 2024 00:50:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xaq40m4MhIhf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Feb 2024 00:50:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=alan.brady@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0E97E606C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E97E606C9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0E97E606C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Feb 2024 00:50:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="2500766"
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; 
   d="scan'208";a="2500766"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 16:50:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; 
   d="scan'208";a="9550929"
Received: from dev1-atbrady.jf.intel.com ([10.166.241.35])
 by fmviesa004.fm.intel.com with ESMTP; 20 Feb 2024 16:50:42 -0800
From: Alan Brady <alan.brady@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Feb 2024 16:49:42 -0800
Message-ID: <20240221004949.2561972-4-alan.brady@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240221004949.2561972-1-alan.brady@intel.com>
References: <20240221004949.2561972-1-alan.brady@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708476642; x=1740012642;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YW9QjsJo/uCuImc57FAvZ004IiEoe9vG7XrJQuLA+cA=;
 b=QpEIl5ElaP7Gd+CyAeorl3/iIaE17W0eqwZt0K8B4r9NAbE3kwef382K
 UBr2Irc8K53Smp4jUnoJg2/+RzrfbPo8nr/k+2iecSwt4w427MVCQcc7D
 OId3anbUPun3/fRQQQNtEfNiJmKRqu4CyWP5OCYbEJFqPEnMm6Rvlu1gN
 74kv/ayNSS4FHIxWSmjH+RV3knDMCKnLrcktBMawVOuxgvAFBZSIJuik7
 ITXJkR2sib6Q4vy3+F2sYe3kwW2HMoX5+/10vGIbZ+o1Yte30AApTyDxN
 2rjMJqOzntcBofPOHYcCIvf5DNlOEK3s0RdbTLGU+Y17d3wdOX/Rnka2P
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QpEIl5El
Subject: [Intel-wired-lan] [PATCH v5 03/10 iwl-next] idpf: refactor queue
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
index 3060f8ca5a48..c1464a1fa3b8 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -807,47 +807,15 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter, u32 op,
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
@@ -1782,11 +1750,13 @@ int idpf_send_disable_vport_msg(struct idpf_vport *vport)
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
@@ -1847,10 +1817,8 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
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
@@ -1864,12 +1832,11 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
 
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
@@ -1877,17 +1844,11 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
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
@@ -1896,13 +1857,7 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
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
@@ -1914,11 +1869,13 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
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
@@ -1999,10 +1956,8 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
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
@@ -2016,12 +1971,11 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 
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
@@ -2029,17 +1983,11 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
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
@@ -2048,42 +1996,28 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
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
@@ -2102,10 +2036,8 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
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
@@ -2117,10 +2049,8 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
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
@@ -2146,10 +2076,8 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
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
@@ -2168,10 +2096,8 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
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
@@ -2184,12 +2110,16 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
 
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
@@ -2198,20 +2128,11 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
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
@@ -2220,13 +2141,7 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
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
@@ -2240,12 +2155,13 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
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
 
@@ -2275,10 +2191,8 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
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
@@ -2305,15 +2219,11 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
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
@@ -2326,39 +2236,28 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 
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
@@ -2367,13 +2266,7 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
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
@@ -2385,7 +2278,7 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
  */
 int idpf_send_enable_queues_msg(struct idpf_vport *vport)
 {
-	return idpf_send_ena_dis_queues_msg(vport, VIRTCHNL2_OP_ENABLE_QUEUES);
+	return idpf_send_ena_dis_queues_msg(vport, true);
 }
 
 /**
@@ -2399,7 +2292,7 @@ int idpf_send_disable_queues_msg(struct idpf_vport *vport)
 {
 	int err, i;
 
-	err = idpf_send_ena_dis_queues_msg(vport, VIRTCHNL2_OP_DISABLE_QUEUES);
+	err = idpf_send_ena_dis_queues_msg(vport, false);
 	if (err)
 		return err;
 
@@ -2445,22 +2338,21 @@ static void idpf_convert_reg_to_queue_chunks(struct virtchnl2_queue_chunk *dchun
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
 
@@ -2477,21 +2369,13 @@ int idpf_send_delete_queues_msg(struct idpf_vport *vport)
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
@@ -2526,14 +2410,21 @@ int idpf_send_config_queues_msg(struct idpf_vport *vport)
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
@@ -2541,47 +2432,33 @@ int idpf_send_add_queues_msg(const struct idpf_vport *vport, u16 num_tx_q,
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

