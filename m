Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F27A837504
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jan 2024 22:12:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 09F6F41A3E;
	Mon, 22 Jan 2024 21:12:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 09F6F41A3E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705957931;
	bh=mvcoc1Tea6nxQZcHx2/a5g3EFArTMBg2kvR/kNMTKxA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=T+xQrvPk978FjHxmY3Hsj7dXrMzKW+Zjxa7K0hGZwYiSJpyLWZ1V+lHSCj3DwgSQ7
	 pWyvZ7OQwTXXd3+8owcO8Pt1AePGG56U7CaOZPuRAC8efhvMAtU9L1FF8FQrl3gzNB
	 pz42CjiHBtShMFg9nTU/rXdLTUiJjYKkZpGrTFzaPM1d5D+1Nwrf5NU4oCN4d4w0Hy
	 X3SF5awP+VU8CaNJ0/d74i3EI2edmE3Q7BItGZ61cg+r7nB9rB7vYrsyfxruKvQ+vV
	 OCl6jKCgwDO8F7+d+1y46LDPmMWjZ+Z9ZWqNyS2xbE2nl89YyV9Vlh7wfHUESPIver
	 uUiFj1Vh2oCcA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x0_VjrLNMC_r; Mon, 22 Jan 2024 21:12:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0CA9241A28;
	Mon, 22 Jan 2024 21:12:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0CA9241A28
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DA1791BF3A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jan 2024 21:11:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B2F18409DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jan 2024 21:11:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2F18409DF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IXRCbQpsvRGo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jan 2024 21:11:49 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 62F004098B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jan 2024 21:11:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 62F004098B
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="19897134"
X-IronPort-AV: E=Sophos;i="6.05,212,1701158400"; d="scan'208";a="19897134"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2024 13:11:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,212,1701158400"; d="scan'208";a="27494330"
Received: from dev1-atbrady.jf.intel.com ([10.166.241.35])
 by orviesa002.jf.intel.com with ESMTP; 22 Jan 2024 13:11:49 -0800
From: Alan Brady <alan.brady@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 22 Jan 2024 13:11:22 -0800
Message-Id: <20240122211125.840833-4-alan.brady@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240122211125.840833-1-alan.brady@intel.com>
References: <20240122211125.840833-1-alan.brady@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705957910; x=1737493910;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dnIVvF0Ua6JRfU0Z9o0aWq5Zn9I/heynuQA/lwAUeyk=;
 b=EbQQn7sq36hpmOa+7VRqS7RI8mF8mbfHe3CXA4dwYssvML7i7rpKyLik
 YEJlO1qfLPaR37/zCEmm/ojK/lz4zxxeZH9SZ/rk5oajj8zClW1EnemHb
 y7ENCgU+YGowxgkTqgD+6O4aORe8XIZrzWo067083MnOAQSVNupY0XsU5
 J2Mu/ZBTIdC4Gm8sVG17vM+OzMqR9FW0LvXXJ+EwU8SpP5QnemNFbUzoV
 PkLo5JXoHffRjEF8aUyNk28H2IoanTYlVZKIBrzpsxEA/GjSJ5BVn7aMt
 snvENcM29IZTE7kFd7yNUh0CRfmWwCW8P8n0aCBtAD/m6QhlNWmuFPySX
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EbQQn7sq
Subject: [Intel-wired-lan] [PATCH 3/6 iwl-next] idpf: refactor queue related
 virtchnl messages
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
 Alan Brady <alan.brady@intel.com>, Igor Bagnucki <igor.bagnucki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This reworks queue specific virtchnl messages to use the added
transaction API.  It is fairly mechanical and generally makes the
functions using it more simple. Functions using transaction API no
longer need to take the vc_buf_lock since it's not using it anymore.
After filling out an idpf_vc_xn_params struct, idpf_vc_xn_exec takes
care of the send and recv handling.

Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Alan Brady <alan.brady@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        |   2 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 252 +++++++-----------
 2 files changed, 98 insertions(+), 156 deletions(-)

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
index 4cd5ffba184c..33786342432a 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -806,47 +806,15 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter, u32 op,
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
@@ -1781,11 +1749,13 @@ int idpf_send_disable_vport_msg(struct idpf_vport *vport)
  */
 static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
 {
+	struct idpf_vc_xn_params xn_params = {};
 	struct virtchnl2_config_tx_queues *ctq;
 	u32 config_sz, chunk_sz, buf_sz;
 	int totqs, num_msgs, num_chunks;
 	struct virtchnl2_txq_info *qi;
 	int err = 0, i, k = 0;
+	ssize_t reply_sz;
 
 	totqs = vport->num_txq + vport->num_complq;
 	qi = kcalloc(totqs, sizeof(struct virtchnl2_txq_info), GFP_KERNEL);
@@ -1868,7 +1838,8 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
 		goto error;
 	}
 
-	mutex_lock(&vport->vc_buf_lock);
+	xn_params.vc_op = VIRTCHNL2_OP_CONFIG_TX_QUEUES;
+	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
 
 	for (i = 0, k = 0; i < num_msgs; i++) {
 		memset(ctq, 0, buf_sz);
@@ -1876,17 +1847,13 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
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
+		xn_params.send_buf.iov_base = ctq;
+		xn_params.send_buf.iov_len = buf_sz;
+		reply_sz = idpf_vc_xn_exec(vport->adapter, xn_params);
+		if (reply_sz < 0) {
+			err = reply_sz;
 			goto mbx_error;
+		}
 
 		k += num_chunks;
 		totqs -= num_chunks;
@@ -1896,7 +1863,6 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
 	}
 
 mbx_error:
-	mutex_unlock(&vport->vc_buf_lock);
 	kfree(ctq);
 error:
 	kfree(qi);
@@ -1913,11 +1879,13 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
  */
 static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 {
+	struct idpf_vc_xn_params xn_params = {};
 	struct virtchnl2_config_rx_queues *crq;
 	u32 config_sz, chunk_sz, buf_sz;
 	int totqs, num_msgs, num_chunks;
 	struct virtchnl2_rxq_info *qi;
 	int err = 0, i, k = 0;
+	ssize_t reply_sz;
 
 	totqs = vport->num_rxq + vport->num_bufq;
 	qi = kcalloc(totqs, sizeof(struct virtchnl2_rxq_info), GFP_KERNEL);
@@ -2020,7 +1988,8 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 		goto error;
 	}
 
-	mutex_lock(&vport->vc_buf_lock);
+	xn_params.vc_op = VIRTCHNL2_OP_CONFIG_RX_QUEUES;
+	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
 
 	for (i = 0, k = 0; i < num_msgs; i++) {
 		memset(crq, 0, buf_sz);
@@ -2028,17 +1997,13 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
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
+		xn_params.send_buf.iov_base = crq;
+		xn_params.send_buf.iov_len = buf_sz;
+		reply_sz = idpf_vc_xn_exec(vport->adapter, xn_params);
+		if (reply_sz < 0) {
+			err = reply_sz;
 			goto mbx_error;
+		}
 
 		k += num_chunks;
 		totqs -= num_chunks;
@@ -2048,7 +2013,6 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 	}
 
 mbx_error:
-	mutex_unlock(&vport->vc_buf_lock);
 	kfree(crq);
 error:
 	kfree(qi);
@@ -2060,29 +2024,21 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
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
 	u32 num_msgs, num_chunks, num_txq, num_rxq, num_q;
-	struct idpf_adapter *adapter = vport->adapter;
+	struct idpf_vc_xn_params xn_params = {};
 	struct virtchnl2_del_ena_dis_queues *eq;
 	struct virtchnl2_queue_chunks *qcs;
 	struct virtchnl2_queue_chunk *qc;
 	u32 config_sz, chunk_sz, buf_sz;
 	int i, j, k = 0, err = 0;
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
 
 	num_txq = vport->num_txq + vport->num_complq;
 	num_rxq = vport->num_rxq + vport->num_bufq;
@@ -2188,7 +2144,13 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
 		goto error;
 	}
 
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
@@ -2197,20 +2159,13 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
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
+		xn_params.send_buf.iov_base = eq;
+		xn_params.send_buf.iov_len = buf_sz;
+		reply_sz = idpf_vc_xn_exec(vport->adapter, xn_params);
+		if (reply_sz < 0) {
+			err = reply_sz;
 			goto mbx_error;
+		}
 
 		k += num_chunks;
 		num_q -= num_chunks;
@@ -2220,7 +2175,6 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
 	}
 
 mbx_error:
-	mutex_unlock(&vport->vc_buf_lock);
 	kfree(eq);
 error:
 	kfree(qc);
@@ -2239,12 +2193,13 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
  */
 int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 {
-	struct idpf_adapter *adapter = vport->adapter;
 	struct virtchnl2_queue_vector_maps *vqvm;
+	struct idpf_vc_xn_params xn_params = {};
 	struct virtchnl2_queue_vector *vqv;
 	u32 config_sz, chunk_sz, buf_sz;
 	u32 num_msgs, num_chunks, num_q;
 	int i, j, k = 0, err = 0;
+	ssize_t reply_sz;
 
 	num_q = vport->num_txq + vport->num_rxq;
 
@@ -2330,34 +2285,27 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 		goto error;
 	}
 
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
+		reply_sz = idpf_vc_xn_exec(vport->adapter, xn_params);
+		if (reply_sz < buf_sz) {
+			err = reply_sz < 0 ? reply_sz : -EIO;
 			goto mbx_error;
+		}
 
 		k += num_chunks;
 		num_q -= num_chunks;
@@ -2367,7 +2315,6 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 	}
 
 mbx_error:
-	mutex_unlock(&vport->vc_buf_lock);
 	kfree(vqvm);
 error:
 	kfree(vqv);
@@ -2384,7 +2331,7 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
  */
 int idpf_send_enable_queues_msg(struct idpf_vport *vport)
 {
-	return idpf_send_ena_dis_queues_msg(vport, VIRTCHNL2_OP_ENABLE_QUEUES);
+	return idpf_send_ena_dis_queues_msg(vport, true);
 }
 
 /**
@@ -2398,7 +2345,7 @@ int idpf_send_disable_queues_msg(struct idpf_vport *vport)
 {
 	int err, i;
 
-	err = idpf_send_ena_dis_queues_msg(vport, VIRTCHNL2_OP_DISABLE_QUEUES);
+	err = idpf_send_ena_dis_queues_msg(vport, false);
 	if (err)
 		return err;
 
@@ -2444,22 +2391,21 @@ static void idpf_convert_reg_to_queue_chunks(struct virtchnl2_queue_chunk *dchun
  */
 int idpf_send_delete_queues_msg(struct idpf_vport *vport)
 {
-	struct idpf_adapter *adapter = vport->adapter;
 	struct virtchnl2_create_vport *vport_params;
 	struct virtchnl2_queue_reg_chunks *chunks;
+	struct idpf_vc_xn_params xn_params = {};
 	struct virtchnl2_del_ena_dis_queues *eq;
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
 
@@ -2476,21 +2422,14 @@ int idpf_send_delete_queues_msg(struct idpf_vport *vport)
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
+	xn_params.vc_op = VIRTCHNL2_OP_DEL_QUEUES;
+	xn_params.timeout_ms = IDPF_VC_XN_MIN_TIMEOUT_MSEC;
+	xn_params.send_buf.iov_base = eq;
+	xn_params.send_buf.iov_len = buf_size;
+	reply_sz = idpf_vc_xn_exec(vport->adapter, xn_params);
 	kfree(eq);
 
-	return err;
+	return reply_sz < 0 ? reply_sz : 0;
 }
 
 /**
@@ -2525,14 +2464,21 @@ int idpf_send_config_queues_msg(struct idpf_vport *vport)
 int idpf_send_add_queues_msg(const struct idpf_vport *vport, u16 num_tx_q,
 			     u16 num_complq, u16 num_rx_q, u16 num_rx_bufq)
 {
-	struct idpf_adapter *adapter = vport->adapter;
+	struct idpf_vc_xn_params xn_params = {};
 	struct idpf_vport_config *vport_config;
-	struct virtchnl2_add_queues aq = { };
+	struct virtchnl2_add_queues aq = {};
 	struct virtchnl2_add_queues *vc_msg;
 	u16 vport_idx = vport->idx;
-	int size, err;
+	int size, err = 0;
+	ssize_t reply_sz;
+
+	vc_msg = kzalloc(IDPF_CTLQ_MAX_BUF_LEN, GFP_KERNEL);
+	if (!vc_msg)
+		return -ENOMEM;
 
-	vport_config = adapter->vport_config[vport_idx];
+	vport_config = vport->adapter->vport_config[vport_idx];
+	kfree(vport_config->req_qs_chunks);
+	vport_config->req_qs_chunks = NULL;
 
 	aq.vport_id = cpu_to_le32(vport->vport_id);
 	aq.num_tx_q = cpu_to_le16(num_tx_q);
@@ -2540,45 +2486,41 @@ int idpf_send_add_queues_msg(const struct idpf_vport *vport, u16 num_tx_q,
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
+	if (reply_sz < 0) {
+		err = reply_sz;
+		goto error;
+	}
 
-	vc_msg = (struct virtchnl2_add_queues *)vport->vc_msg;
 	/* compare vc_msg num queues with vport num queues */
 	if (le16_to_cpu(vc_msg->num_tx_q) != num_tx_q ||
 	    le16_to_cpu(vc_msg->num_rx_q) != num_rx_q ||
 	    le16_to_cpu(vc_msg->num_tx_complq) != num_complq ||
 	    le16_to_cpu(vc_msg->num_rx_bufq) != num_rx_bufq) {
 		err = -EINVAL;
-		goto rel_lock;
+		goto error;
 	}
 
 	size = struct_size(vc_msg, chunks.chunks,
 			   le16_to_cpu(vc_msg->chunks.num_chunks));
+	if (reply_sz < size) {
+		err = -EIO;
+		goto error;
+	}
 	vport_config->req_qs_chunks = kmemdup(vc_msg, size, GFP_KERNEL);
 	if (!vport_config->req_qs_chunks) {
 		err = -ENOMEM;
-		goto rel_lock;
+		goto error;
 	}
 
-rel_lock:
-	mutex_unlock(&((struct idpf_vport *)vport)->vc_buf_lock);
+error:
+	kfree(vc_msg);
 
 	return err;
 }
-- 
2.40.1

