Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7FB83D40B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jan 2024 06:48:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 990F460093;
	Fri, 26 Jan 2024 05:48:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 990F460093
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706248123;
	bh=5HYPZN3YHak+cKEMoG8+aimUY+g+swy8gTU4G+n5xVw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BDWoFeje5Rw1Cu9ZjCJWS5+2UuxWyCnV5a2oavwCi/WGNMRYpPoj8cHkDxAZFL8QQ
	 7XHgNfOkcbIKe+L4HBa92kToc4uw42Q/Ua4LktrWQons2Xc97qaT1p8Uc0GqZ0c6o2
	 SDqSf3yQCj6fkDYYgyusTzqOnhNewOK+uLekeewSYQjHo3Fa5GoPPS7UXdb2QZrR8a
	 mMvIEBOAfE2iI6tshFYVk7DMAMnnOfiEpciRM4G59+cTVTbKQDufmAemoW1eqE/7pR
	 ASFQZnmIQ6ETHV1/xIEyztOpkfXz6FPLlkknXfWELkzkwJ2WDNnqDif/P70ZeEoc3T
	 24MR5dU5RUGrg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 68YxyQ8BbgdF; Fri, 26 Jan 2024 05:48:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D9C7617B7;
	Fri, 26 Jan 2024 05:48:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D9C7617B7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 73C8C1BF98E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jan 2024 05:48:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4CBBD844DF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jan 2024 05:48:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4CBBD844DF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6gg_jFp4IBnf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jan 2024 05:48:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1651D844CA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jan 2024 05:48:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1651D844CA
X-IronPort-AV: E=McAfee;i="6600,9927,10964"; a="9779270"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="9779270"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2024 21:48:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="21306121"
Received: from dev1-atbrady.jf.intel.com ([10.166.241.35])
 by fmviesa002.fm.intel.com with ESMTP; 25 Jan 2024 21:48:34 -0800
From: Alan Brady <alan.brady@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jan 2024 21:47:43 -0800
Message-Id: <20240126054747.960172-4-alan.brady@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240126054747.960172-1-alan.brady@intel.com>
References: <20240126054747.960172-1-alan.brady@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706248115; x=1737784115;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UeslwSPB0GfGrBT85FefvBHpdJaqT1R/AQZQK4pMEg4=;
 b=ZebdOVRNSn+Sp6pllXw+rvT6rSCDvm/I8huTrwaI/63Q9bq9O8VFt2on
 UWmQUj8PrwUkOn+2GbJnkfAlpZbxlPDAl2Z9PpBn8NdAIpnrs+GimDdu/
 dlG3uvBZspKazSbh8kCZZ8QVBmGdlfZz7LETg6AdXdEwGz8tDyNzrg8x5
 oiztGUKL5dUVmhzDs3lVRCErRfDEo92teyXI/Sfa/FkwDyT2s4qwEctXd
 kmvew/8LetGgJ02TMmBX9A5c0Wu0unHqsF3E7QcYfxXMVfnupmb+Njk+w
 pdTyrL6zUyIa9B0QWqBrY1dRJXIdn/oJQbSYjDwpnym/hOt5YjNxfxhVD
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZebdOVRN
Subject: [Intel-wired-lan] [PATCH v2 3/7 iwl-next] idpf: refactor queue
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

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
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
index 1cf7293bd532..231fe7c7819c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -800,47 +800,15 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter, u32 op,
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
@@ -1775,11 +1743,13 @@ int idpf_send_disable_vport_msg(struct idpf_vport *vport)
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
@@ -1862,7 +1832,8 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
 		goto error;
 	}
 
-	mutex_lock(&vport->vc_buf_lock);
+	xn_params.vc_op = VIRTCHNL2_OP_CONFIG_TX_QUEUES;
+	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
 
 	for (i = 0, k = 0; i < num_msgs; i++) {
 		memset(ctq, 0, buf_sz);
@@ -1870,17 +1841,13 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
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
@@ -1890,7 +1857,6 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
 	}
 
 mbx_error:
-	mutex_unlock(&vport->vc_buf_lock);
 	kfree(ctq);
 error:
 	kfree(qi);
@@ -1907,11 +1873,13 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
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
@@ -2014,7 +1982,8 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 		goto error;
 	}
 
-	mutex_lock(&vport->vc_buf_lock);
+	xn_params.vc_op = VIRTCHNL2_OP_CONFIG_RX_QUEUES;
+	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
 
 	for (i = 0, k = 0; i < num_msgs; i++) {
 		memset(crq, 0, buf_sz);
@@ -2022,17 +1991,13 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
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
@@ -2042,7 +2007,6 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 	}
 
 mbx_error:
-	mutex_unlock(&vport->vc_buf_lock);
 	kfree(crq);
 error:
 	kfree(qi);
@@ -2054,29 +2018,21 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
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
@@ -2182,7 +2138,13 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
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
@@ -2191,20 +2153,13 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
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
@@ -2214,7 +2169,6 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
 	}
 
 mbx_error:
-	mutex_unlock(&vport->vc_buf_lock);
 	kfree(eq);
 error:
 	kfree(qc);
@@ -2233,12 +2187,13 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
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
 
@@ -2324,34 +2279,27 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
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
@@ -2361,7 +2309,6 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 	}
 
 mbx_error:
-	mutex_unlock(&vport->vc_buf_lock);
 	kfree(vqvm);
 error:
 	kfree(vqv);
@@ -2378,7 +2325,7 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
  */
 int idpf_send_enable_queues_msg(struct idpf_vport *vport)
 {
-	return idpf_send_ena_dis_queues_msg(vport, VIRTCHNL2_OP_ENABLE_QUEUES);
+	return idpf_send_ena_dis_queues_msg(vport, true);
 }
 
 /**
@@ -2392,7 +2339,7 @@ int idpf_send_disable_queues_msg(struct idpf_vport *vport)
 {
 	int err, i;
 
-	err = idpf_send_ena_dis_queues_msg(vport, VIRTCHNL2_OP_DISABLE_QUEUES);
+	err = idpf_send_ena_dis_queues_msg(vport, false);
 	if (err)
 		return err;
 
@@ -2438,22 +2385,21 @@ static void idpf_convert_reg_to_queue_chunks(struct virtchnl2_queue_chunk *dchun
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
 
@@ -2470,21 +2416,14 @@ int idpf_send_delete_queues_msg(struct idpf_vport *vport)
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
@@ -2519,14 +2458,21 @@ int idpf_send_config_queues_msg(struct idpf_vport *vport)
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
@@ -2534,45 +2480,41 @@ int idpf_send_add_queues_msg(const struct idpf_vport *vport, u16 num_tx_q,
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

