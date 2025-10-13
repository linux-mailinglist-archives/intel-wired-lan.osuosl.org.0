Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 66ECEBD6B56
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Oct 2025 01:10:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C80680E7C;
	Mon, 13 Oct 2025 23:10:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WumY6BvbMxgQ; Mon, 13 Oct 2025 23:10:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9232381287
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760397012;
	bh=ONvoQnneLFFYixNz49DVrz/CkjTDzq51OobHOFZFiv0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=StcV8DmlhzGTngxUflCiKYtZtTyTv14z/09GRDbgzaiZMj8Qb5iaBeQohO/hKKy8c
	 ePbdqJYs+/xR5iFLBZyljaYOjGz5tKJ6T5hU5ybwcQCWUHYoH93mZoXQHP+cS7C1h7
	 A0aPaGIQMgh/UG0lGG0gJscvqifn5Dhd3/dDkQU1Rou+qJ7Ba4WRzpvI7yn/dBDzDa
	 k22apMsT+dMn02SVJ8vjrHofgafqa128zLdWPd9I+usCEFUFluru2VDOKskQ/sYReD
	 yRMacfXniEDR7Q+iieaIHcNowoDRLWSHrm3Wt+Wf4K4hdi9WQyqs7DDNOdxxeAewaK
	 ZzJG2N6vwr77g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9232381287;
	Mon, 13 Oct 2025 23:10:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2822DBC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Oct 2025 23:10:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B4B1C80DE0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Oct 2025 23:10:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sxMQzx6mUPv6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Oct 2025 23:10:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4A5F980DC9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A5F980DC9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4A5F980DC9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Oct 2025 23:10:06 +0000 (UTC)
X-CSE-ConnectionGUID: E55g0sx4R9qdnH+k9yiS+g==
X-CSE-MsgGUID: /s/HHUumRnaf2cg1sGuBsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="79989123"
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="79989123"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 16:02:59 -0700
X-CSE-ConnectionGUID: neYrN0i0SwC4/eQAf1Jjcg==
X-CSE-MsgGUID: 3Dmu/lsMRhe5xNYaXCanLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="181404275"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.14])
 by fmviesa007.fm.intel.com with ESMTP; 13 Oct 2025 16:02:58 -0700
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Date: Mon, 13 Oct 2025 16:13:38 -0700
Message-Id: <20251013231341.1139603-7-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20251013231341.1139603-1-joshua.a.hay@intel.com>
References: <20251013231341.1139603-1-joshua.a.hay@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760397007; x=1791933007;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fkPxQmH4ZOQrD+HvGpUGk2NRqi1Pca4N2Eh5dkvyKNo=;
 b=HP3jT76k9KMc30U4bODcNfr0eihyadJWQDC8y2FaGvN6krLqhuBgKWKm
 KfOgqNki4US3WtxQuqDBojWszo98GjdbXszSbId2FCqOIorRDQQw9slxc
 vfD/ijRmYRxTIF/sACVgYd622PC5DTfuxDyssbi6JnfsgWc5COj7KvZa1
 QFJGrhP/R1d1Ax0bU2PneR/wiA5oc5LbR+Gu6FSeHtYt+PXl25nGhKiql
 0A8hzEJauxqHo2fSmtly4jaQxJCAVEM2pNyeTqGAhfjftv3BHlXZFNJ5U
 at6/kGBBXZ/lMCvLKYIGXdfrYha0i4LS4aPOLx+LUWsdWEjJHkDETO4Td
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HP3jT76k
Subject: [Intel-wired-lan] [PATCH iwl-next v8 6/9] idpf: remove vport
 pointer from queue sets
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

Replace vport pointer in queue sets struct with adapter backpointer and
vport_id as those are the primary fields necessary for virtchnl
communication. Otherwise, pass the vport pointer as a separate parameter
where available. Also move xdp_txq_offset to queue vector resource
struct since we no longer have the vport pointer.

Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        |  4 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 41 +++++-----
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 78 ++++++++++---------
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |  7 +-
 drivers/net/ethernet/intel/idpf/xdp.c         | 11 ++-
 drivers/net/ethernet/intel/idpf/xsk.c         |  5 +-
 6 files changed, 80 insertions(+), 66 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index a86791b0ca2c..9fafe294f5f5 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -305,6 +305,7 @@ struct idpf_fsteer_fltr {
  * @num_txq: number of allocated TX queues
  * @num_complq: number of allocated completion queues
  * @num_txq_grp: number of TX queue groups
+ * @xdp_txq_offset: index of the first XDPSQ (== number of regular SQs)
  * @num_rxq_grp: number of RX queues in a group
  * @rxq_model: splitq queue or single queue queuing model
  * @rxq_grps: total number of RX groups. Number of groups * number of RX per
@@ -333,6 +334,7 @@ struct idpf_q_vec_rsrc {
 	u16			num_txq;
 	u16			num_complq;
 	u16			num_txq_grp;
+	u16			xdp_txq_offset;
 
 	u16			num_rxq_grp;
 	u32			rxq_model;
@@ -351,7 +353,6 @@ struct idpf_q_vec_rsrc {
  * @txqs: Used only in hotpath to get to the right queue very fast
  * @num_txq: Number of allocated TX queues
  * @num_xdp_txq: number of XDPSQs
- * @xdp_txq_offset: index of the first XDPSQ (== number of regular SQs)
  * @xdpsq_share: whether XDPSQ sharing is enabled
  * @xdp_prog: installed XDP program
  * @vdev_info: IDC vport device info pointer
@@ -382,7 +383,6 @@ struct idpf_vport {
 	struct idpf_tx_queue **txqs;
 	u16 num_txq;
 	u16 num_xdp_txq;
-	u16 xdp_txq_offset;
 	bool xdpsq_share;
 	struct bpf_prog *xdp_prog;
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index ce21c47cbe9d..4aca03e8f408 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -960,9 +960,9 @@ static int idpf_rx_desc_alloc_all(struct idpf_vport *vport,
 	return err;
 }
 
-static int idpf_init_queue_set(const struct idpf_queue_set *qs)
+static int idpf_init_queue_set(const struct idpf_vport *vport,
+			       const struct idpf_queue_set *qs)
 {
-	const struct idpf_vport *vport = qs->vport;
 	bool splitq;
 	int err;
 
@@ -1114,7 +1114,8 @@ static void idpf_qvec_ena_irq(struct idpf_q_vector *qv)
 static struct idpf_queue_set *
 idpf_vector_to_queue_set(struct idpf_q_vector *qv)
 {
-	bool xdp = qv->vport->xdp_txq_offset && !qv->num_xsksq;
+	u32 xdp_txq_offset = qv->vport->dflt_qv_rsrc.xdp_txq_offset;
+	bool xdp = xdp_txq_offset && !qv->num_xsksq;
 	struct idpf_vport *vport = qv->vport;
 	struct idpf_queue_set *qs;
 	u32 num;
@@ -1124,7 +1125,8 @@ idpf_vector_to_queue_set(struct idpf_q_vector *qv)
 	if (!num)
 		return NULL;
 
-	qs = idpf_alloc_queue_set(vport, &vport->dflt_qv_rsrc, num);
+	qs = idpf_alloc_queue_set(vport->adapter, &vport->dflt_qv_rsrc,
+				  vport->vport_id, num);
 	if (!qs)
 		return NULL;
 
@@ -1150,12 +1152,12 @@ idpf_vector_to_queue_set(struct idpf_q_vector *qv)
 		qs->qs[num++].complq = qv->complq[i];
 	}
 
-	if (!vport->xdp_txq_offset)
+	if (!xdp_txq_offset)
 		goto finalize;
 
 	if (xdp) {
 		for (u32 i = 0; i < qv->num_rxq; i++) {
-			u32 idx = vport->xdp_txq_offset + qv->rx[i]->idx;
+			u32 idx = xdp_txq_offset + qv->rx[i]->idx;
 
 			qs->qs[num].type = VIRTCHNL2_QUEUE_TYPE_TX;
 			qs->qs[num++].txq = vport->txqs[idx];
@@ -1182,23 +1184,23 @@ idpf_vector_to_queue_set(struct idpf_q_vector *qv)
 	return qs;
 }
 
-static int idpf_qp_enable(const struct idpf_queue_set *qs, u32 qid)
+static int idpf_qp_enable(const struct idpf_vport *vport,
+			  const struct idpf_queue_set *qs, u32 qid)
 {
-	struct idpf_q_vec_rsrc *rsrc = qs->qv_rsrc;
-	struct idpf_vport *vport = qs->vport;
+	const struct idpf_q_vec_rsrc *rsrc = &vport->dflt_qv_rsrc;
 	struct idpf_q_vector *q_vector;
 	int err;
 
 	q_vector = idpf_find_rxq_vec(vport, qid);
 
-	err = idpf_init_queue_set(qs);
+	err = idpf_init_queue_set(vport, qs);
 	if (err) {
 		netdev_err(vport->netdev, "Could not initialize queues in pair %u: %pe\n",
 			   qid, ERR_PTR(err));
 		return err;
 	}
 
-	if (!vport->xdp_txq_offset)
+	if (!rsrc->xdp_txq_offset)
 		goto config;
 
 	q_vector->xsksq = kcalloc(DIV_ROUND_UP(rsrc->num_rxq_grp,
@@ -1245,9 +1247,9 @@ static int idpf_qp_enable(const struct idpf_queue_set *qs, u32 qid)
 	return 0;
 }
 
-static int idpf_qp_disable(const struct idpf_queue_set *qs, u32 qid)
+static int idpf_qp_disable(const struct idpf_vport *vport,
+			   const struct idpf_queue_set *qs, u32 qid)
 {
-	struct idpf_vport *vport = qs->vport;
 	struct idpf_q_vector *q_vector;
 	int err;
 
@@ -1292,7 +1294,8 @@ int idpf_qp_switch(struct idpf_vport *vport, u32 qid, bool en)
 	if (!qs)
 		return -ENOMEM;
 
-	return en ? idpf_qp_enable(qs, qid) : idpf_qp_disable(qs, qid);
+	return en ? idpf_qp_enable(vport, qs, qid) :
+		    idpf_qp_disable(vport, qs, qid);
 }
 
 /**
@@ -1490,12 +1493,12 @@ void idpf_vport_init_num_qs(struct idpf_vport *vport,
 
 	vport->xdp_prog = config_data->xdp_prog;
 	if (idpf_xdp_enabled(vport)) {
-		vport->xdp_txq_offset = config_data->num_req_tx_qs;
+		rsrc->xdp_txq_offset = config_data->num_req_tx_qs;
 		vport->num_xdp_txq = le16_to_cpu(vport_msg->num_tx_q) -
-				     vport->xdp_txq_offset;
+				     rsrc->xdp_txq_offset;
 		vport->xdpsq_share = libeth_xdpsq_shared(vport->num_xdp_txq);
 	} else {
-		vport->xdp_txq_offset = 0;
+		rsrc->xdp_txq_offset = 0;
 		vport->num_xdp_txq = 0;
 		vport->xdpsq_share = false;
 	}
@@ -4432,7 +4435,7 @@ static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport,
 		struct idpf_tx_queue *xdpsq;
 		struct idpf_q_vector *qv;
 
-		xdpsq = vport->txqs[vport->xdp_txq_offset + i];
+		xdpsq = vport->txqs[rsrc->xdp_txq_offset + i];
 		if (!idpf_queue_has(XSK, xdpsq))
 			continue;
 
@@ -4588,7 +4591,7 @@ int idpf_vport_intr_alloc(struct idpf_vport *vport,
 		if (!q_vector->complq)
 			goto error;
 
-		if (!vport->xdp_txq_offset)
+		if (!rsrc->xdp_txq_offset)
 			continue;
 
 		q_vector->xsksq = kcalloc(rxqs_per_vector,
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 7971bbfbc07c..e8b9ee49ad89 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -717,9 +717,8 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter)
 }
 
 struct idpf_chunked_msg_params {
-	u32			(*prepare_msg)(const struct idpf_vport *vport,
-					       void *buf, const void *pos,
-					       u32 num);
+	u32			(*prepare_msg)(u32 vport_id, void *buf,
+					       const void *pos, u32 num);
 
 	const void		*chunks;
 	u32			num_chunks;
@@ -728,11 +727,12 @@ struct idpf_chunked_msg_params {
 	u32			config_sz;
 
 	u32			vc_op;
+	u32			vport_id;
 };
 
-struct idpf_queue_set *idpf_alloc_queue_set(struct idpf_vport *vport,
+struct idpf_queue_set *idpf_alloc_queue_set(struct idpf_adapter *adapter,
 					    struct idpf_q_vec_rsrc *qv_rsrc,
-					    u32 num)
+					    u32 vport_id, u32 num)
 {
 	struct idpf_queue_set *qp;
 
@@ -740,8 +740,9 @@ struct idpf_queue_set *idpf_alloc_queue_set(struct idpf_vport *vport,
 	if (!qp)
 		return NULL;
 
-	qp->vport = vport;
+	qp->adapter = adapter;
 	qp->qv_rsrc = qv_rsrc;
+	qp->vport_id = vport_id;
 	qp->num = num;
 
 	return qp;
@@ -749,7 +750,7 @@ struct idpf_queue_set *idpf_alloc_queue_set(struct idpf_vport *vport,
 
 /**
  * idpf_send_chunked_msg - send VC message consisting of chunks
- * @vport: virtual port data structure
+ * @adapter: Driver specific private structure
  * @params: message params
  *
  * Helper function for preparing a message describing queues to be enabled
@@ -757,7 +758,7 @@ struct idpf_queue_set *idpf_alloc_queue_set(struct idpf_vport *vport,
  *
  * Return: the total size of the prepared message.
  */
-static int idpf_send_chunked_msg(struct idpf_vport *vport,
+static int idpf_send_chunked_msg(struct idpf_adapter *adapter,
 				 const struct idpf_chunked_msg_params *params)
 {
 	struct idpf_vc_xn_params xn_params = {
@@ -768,6 +769,7 @@ static int idpf_send_chunked_msg(struct idpf_vport *vport,
 	u32 num_chunks, num_msgs, buf_sz;
 	void *buf __free(kfree) = NULL;
 	u32 totqs = params->num_chunks;
+	u32 vid = params->vport_id;
 
 	num_chunks = min(IDPF_NUM_CHUNKS_PER_MSG(params->config_sz,
 						 params->chunk_sz), totqs);
@@ -786,10 +788,10 @@ static int idpf_send_chunked_msg(struct idpf_vport *vport,
 		memset(buf, 0, buf_sz);
 		xn_params.send_buf.iov_len = buf_sz;
 
-		if (params->prepare_msg(vport, buf, pos, num_chunks) != buf_sz)
+		if (params->prepare_msg(vid, buf, pos, num_chunks) != buf_sz)
 			return -EINVAL;
 
-		reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
+		reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
 		if (reply_sz < 0)
 			return reply_sz;
 
@@ -812,6 +814,7 @@ static int idpf_send_chunked_msg(struct idpf_vport *vport,
  */
 static int idpf_wait_for_marker_event_set(const struct idpf_queue_set *qs)
 {
+	struct net_device *netdev;
 	struct idpf_tx_queue *txq;
 	bool markers_rcvd = true;
 
@@ -820,6 +823,8 @@ static int idpf_wait_for_marker_event_set(const struct idpf_queue_set *qs)
 		case VIRTCHNL2_QUEUE_TYPE_TX:
 			txq = qs->qs[i].txq;
 
+			netdev = txq->netdev;
+
 			idpf_queue_set(SW_MARKER, txq);
 			idpf_wait_for_sw_marker_completion(txq);
 			markers_rcvd &= !idpf_queue_has(SW_MARKER, txq);
@@ -830,7 +835,7 @@ static int idpf_wait_for_marker_event_set(const struct idpf_queue_set *qs)
 	}
 
 	if (!markers_rcvd) {
-		netdev_warn(qs->vport->netdev,
+		netdev_warn(netdev,
 			    "Failed to receive marker packets\n");
 		return -ETIMEDOUT;
 	}
@@ -848,7 +853,8 @@ static int idpf_wait_for_marker_event(struct idpf_vport *vport)
 {
 	struct idpf_queue_set *qs __free(kfree) = NULL;
 
-	qs = idpf_alloc_queue_set(vport, &vport->dflt_qv_rsrc, vport->num_txq);
+	qs = idpf_alloc_queue_set(vport->adapter, &vport->dflt_qv_rsrc,
+				  vport->vport_id, vport->num_txq);
 	if (!qs)
 		return -ENOMEM;
 
@@ -1784,7 +1790,7 @@ static void idpf_fill_complq_config_chunk(const struct idpf_q_vec_rsrc *rsrc,
 
 /**
  * idpf_prepare_cfg_txqs_msg - prepare message to configure selected Tx queues
- * @vport: virtual port data structure
+ * @vport_id: ID of virtual port queues are associatd with
  * @buf: buffer containing the message
  * @pos: pointer to the first chunk describing the tx queue
  * @num_chunks: number of chunks in the message
@@ -1794,13 +1800,12 @@ static void idpf_fill_complq_config_chunk(const struct idpf_q_vec_rsrc *rsrc,
  *
  * Return: the total size of the prepared message.
  */
-static u32 idpf_prepare_cfg_txqs_msg(const struct idpf_vport *vport,
-				     void *buf, const void *pos,
+static u32 idpf_prepare_cfg_txqs_msg(u32 vport_id, void *buf, const void *pos,
 				     u32 num_chunks)
 {
 	struct virtchnl2_config_tx_queues *ctq = buf;
 
-	ctq->vport_id = cpu_to_le32(vport->vport_id);
+	ctq->vport_id = cpu_to_le32(vport_id);
 	ctq->num_qinfo = cpu_to_le16(num_chunks);
 	memcpy(ctq->qinfo, pos, num_chunks * sizeof(*ctq->qinfo));
 
@@ -1821,6 +1826,7 @@ static int idpf_send_config_tx_queue_set_msg(const struct idpf_queue_set *qs)
 {
 	struct virtchnl2_txq_info *qi __free(kfree) = NULL;
 	struct idpf_chunked_msg_params params = {
+		.vport_id	= qs->vport_id,
 		.vc_op		= VIRTCHNL2_OP_CONFIG_TX_QUEUES,
 		.prepare_msg	= idpf_prepare_cfg_txqs_msg,
 		.config_sz	= sizeof(struct virtchnl2_config_tx_queues),
@@ -1843,7 +1849,7 @@ static int idpf_send_config_tx_queue_set_msg(const struct idpf_queue_set *qs)
 						      &qi[params.num_chunks++]);
 	}
 
-	return idpf_send_chunked_msg(qs->vport, &params);
+	return idpf_send_chunked_msg(qs->adapter, &params);
 }
 
 /**
@@ -1860,7 +1866,7 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport,
 	u32 totqs = rsrc->num_txq + rsrc->num_complq;
 	u32 k = 0;
 
-	qs = idpf_alloc_queue_set(vport, rsrc, totqs);
+	qs = idpf_alloc_queue_set(vport->adapter, rsrc, vport->vport_id, totqs);
 	if (!qs)
 		return -ENOMEM;
 
@@ -1971,7 +1977,7 @@ static void idpf_fill_bufq_config_chunk(const struct idpf_q_vec_rsrc *rsrc,
 
 /**
  * idpf_prepare_cfg_rxqs_msg - prepare message to configure selected Rx queues
- * @vport: virtual port data structure
+ * @vport_id: ID of virtual port queues are associatd with
  * @buf: buffer containing the message
  * @pos: pointer to the first chunk describing the rx queue
  * @num_chunks: number of chunks in the message
@@ -1981,13 +1987,12 @@ static void idpf_fill_bufq_config_chunk(const struct idpf_q_vec_rsrc *rsrc,
  *
  * Return: the total size of the prepared message.
  */
-static u32 idpf_prepare_cfg_rxqs_msg(const struct idpf_vport *vport,
-				     void *buf, const void *pos,
+static u32 idpf_prepare_cfg_rxqs_msg(u32 vport_id, void *buf, const void *pos,
 				     u32 num_chunks)
 {
 	struct virtchnl2_config_rx_queues *crq = buf;
 
-	crq->vport_id = cpu_to_le32(vport->vport_id);
+	crq->vport_id = cpu_to_le32(vport_id);
 	crq->num_qinfo = cpu_to_le16(num_chunks);
 	memcpy(crq->qinfo, pos, num_chunks * sizeof(*crq->qinfo));
 
@@ -2008,6 +2013,7 @@ static int idpf_send_config_rx_queue_set_msg(const struct idpf_queue_set *qs)
 {
 	struct virtchnl2_rxq_info *qi __free(kfree) = NULL;
 	struct idpf_chunked_msg_params params = {
+		.vport_id	= qs->vport_id,
 		.vc_op		= VIRTCHNL2_OP_CONFIG_RX_QUEUES,
 		.prepare_msg	= idpf_prepare_cfg_rxqs_msg,
 		.config_sz	= sizeof(struct virtchnl2_config_rx_queues),
@@ -2029,7 +2035,7 @@ static int idpf_send_config_rx_queue_set_msg(const struct idpf_queue_set *qs)
 						    &qi[params.num_chunks++]);
 	}
 
-	return idpf_send_chunked_msg(qs->vport, &params);
+	return idpf_send_chunked_msg(qs->adapter, &params);
 }
 
 /**
@@ -2047,7 +2053,7 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport,
 	u32 totqs = rsrc->num_rxq + rsrc->num_bufq;
 	u32 k = 0;
 
-	qs = idpf_alloc_queue_set(vport, rsrc, totqs);
+	qs = idpf_alloc_queue_set(vport->adapter, rsrc, vport->vport_id, totqs);
 	if (!qs)
 		return -ENOMEM;
 
@@ -2090,7 +2096,7 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport,
 /**
  * idpf_prepare_ena_dis_qs_msg - prepare message to enable/disable selected
  *				 queues
- * @vport: virtual port data structure
+ * @vport_id: ID of virtual port queues are associatd with
  * @buf: buffer containing the message
  * @pos: pointer to the first chunk describing the queue
  * @num_chunks: number of chunks in the message
@@ -2100,13 +2106,12 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport,
  *
  * Return: the total size of the prepared message.
  */
-static u32 idpf_prepare_ena_dis_qs_msg(const struct idpf_vport *vport,
-				       void *buf, const void *pos,
+static u32 idpf_prepare_ena_dis_qs_msg(u32 vport_id, void *buf, const void *pos,
 				       u32 num_chunks)
 {
 	struct virtchnl2_del_ena_dis_queues *eq = buf;
 
-	eq->vport_id = cpu_to_le32(vport->vport_id);
+	eq->vport_id = cpu_to_le32(vport_id);
 	eq->chunks.num_chunks = cpu_to_le16(num_chunks);
 	memcpy(eq->chunks.chunks, pos,
 	       num_chunks * sizeof(*eq->chunks.chunks));
@@ -2131,6 +2136,7 @@ static int idpf_send_ena_dis_queue_set_msg(const struct idpf_queue_set *qs,
 {
 	struct virtchnl2_queue_chunk *qc __free(kfree) = NULL;
 	struct idpf_chunked_msg_params params = {
+		.vport_id	= qs->vport_id,
 		.vc_op		= en ? VIRTCHNL2_OP_ENABLE_QUEUES :
 				       VIRTCHNL2_OP_DISABLE_QUEUES,
 		.prepare_msg	= idpf_prepare_ena_dis_qs_msg,
@@ -2172,7 +2178,7 @@ static int idpf_send_ena_dis_queue_set_msg(const struct idpf_queue_set *qs,
 		qc[i].start_queue_id = cpu_to_le32(qid);
 	}
 
-	return idpf_send_chunked_msg(qs->vport, &params);
+	return idpf_send_chunked_msg(qs->adapter, &params);
 }
 
 /**
@@ -2193,7 +2199,7 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, bool en)
 	num_txq = rsrc->num_txq + rsrc->num_complq;
 	num_q = num_txq + rsrc->num_rxq + rsrc->num_bufq;
 
-	qs = idpf_alloc_queue_set(vport, rsrc, num_q);
+	qs = idpf_alloc_queue_set(vport->adapter, rsrc, vport->vport_id, num_q);
 	if (!qs)
 		return -ENOMEM;
 
@@ -2256,7 +2262,7 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, bool en)
 /**
  * idpf_prep_map_unmap_queue_set_vector_msg - prepare message to map or unmap
  *					      queue set to the interrupt vector
- * @vport: virtual port data structure
+ * @vport_id: ID of virtual port queues are associatd with
  * @buf: buffer containing the message
  * @pos: pointer to the first chunk describing the vector mapping
  * @num_chunks: number of chunks in the message
@@ -2267,13 +2273,12 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, bool en)
  * Return: the total size of the prepared message.
  */
 static u32
-idpf_prep_map_unmap_queue_set_vector_msg(const struct idpf_vport *vport,
-					 void *buf, const void *pos,
+idpf_prep_map_unmap_queue_set_vector_msg(u32 vport_id, void *buf, const void *pos,
 					 u32 num_chunks)
 {
 	struct virtchnl2_queue_vector_maps *vqvm = buf;
 
-	vqvm->vport_id = cpu_to_le32(vport->vport_id);
+	vqvm->vport_id = cpu_to_le32(vport_id);
 	vqvm->num_qv_maps = cpu_to_le16(num_chunks);
 	memcpy(vqvm->qv_maps, pos, num_chunks * sizeof(*vqvm->qv_maps));
 
@@ -2294,6 +2299,7 @@ idpf_send_map_unmap_queue_set_vector_msg(const struct idpf_queue_set *qs,
 {
 	struct virtchnl2_queue_vector *vqv __free(kfree) = NULL;
 	struct idpf_chunked_msg_params params = {
+		.vport_id	= qs->vport_id,
 		.vc_op		= map ? VIRTCHNL2_OP_MAP_QUEUE_VECTOR :
 					VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR,
 		.prepare_msg	= idpf_prep_map_unmap_queue_set_vector_msg,
@@ -2364,7 +2370,7 @@ idpf_send_map_unmap_queue_set_vector_msg(const struct idpf_queue_set *qs,
 		vqv[i].itr_idx = cpu_to_le32(itr_idx);
 	}
 
-	return idpf_send_chunked_msg(qs->vport, &params);
+	return idpf_send_chunked_msg(qs->adapter, &params);
 }
 
 /**
@@ -2384,7 +2390,7 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport,
 	u32 num_q = rsrc->num_txq + rsrc->num_rxq;
 	u32 k = 0;
 
-	qs = idpf_alloc_queue_set(vport, rsrc, num_q);
+	qs = idpf_alloc_queue_set(vport->adapter, rsrc, vport->vport_id, num_q);
 	if (!qs)
 		return -ENOMEM;
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
index a07f80ac8a2c..950b3e51665f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -131,16 +131,17 @@ struct idpf_queue_ptr {
 };
 
 struct idpf_queue_set {
-	struct idpf_vport		*vport;
+	struct idpf_adapter		*adapter;
 	struct idpf_q_vec_rsrc		*qv_rsrc;
+	u32				vport_id;
 
 	u32				num;
 	struct idpf_queue_ptr		qs[] __counted_by(num);
 };
 
-struct idpf_queue_set *idpf_alloc_queue_set(struct idpf_vport *vport,
+struct idpf_queue_set *idpf_alloc_queue_set(struct idpf_adapter *adapter,
 					    struct idpf_q_vec_rsrc *rsrc,
-					    u32 num);
+					    u32 vport_id, u32 num);
 
 int idpf_send_enable_queue_set_msg(const struct idpf_queue_set *qs);
 int idpf_send_disable_queue_set_msg(const struct idpf_queue_set *qs);
diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethernet/intel/idpf/xdp.c
index 2b411bf5184f..0fe435fdbb6c 100644
--- a/drivers/net/ethernet/intel/idpf/xdp.c
+++ b/drivers/net/ethernet/intel/idpf/xdp.c
@@ -74,7 +74,7 @@ static int __idpf_xdp_rxq_info_init(struct idpf_rx_queue *rxq, void *arg)
 	if (!split)
 		return 0;
 
-	rxq->xdpsqs = &vport->txqs[vport->xdp_txq_offset];
+	rxq->xdpsqs = &vport->txqs[rsrc->xdp_txq_offset];
 	rxq->num_xdp_txq = vport->num_xdp_txq;
 
 	return 0;
@@ -169,7 +169,7 @@ int idpf_xdpsqs_get(const struct idpf_vport *vport)
 	}
 
 	dev = vport->netdev;
-	sqs = vport->xdp_txq_offset;
+	sqs = vport->dflt_qv_rsrc.xdp_txq_offset;
 
 	for (u32 i = sqs; i < vport->num_txq; i++) {
 		struct idpf_tx_queue *xdpsq = vport->txqs[i];
@@ -206,7 +206,7 @@ void idpf_xdpsqs_put(const struct idpf_vport *vport)
 		return;
 
 	dev = vport->netdev;
-	sqs = vport->xdp_txq_offset;
+	sqs = vport->dflt_qv_rsrc.xdp_txq_offset;
 
 	for (u32 i = sqs; i < vport->num_txq; i++) {
 		struct idpf_tx_queue *xdpsq = vport->txqs[i];
@@ -362,12 +362,15 @@ int idpf_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
 {
 	const struct idpf_netdev_priv *np = netdev_priv(dev);
 	const struct idpf_vport *vport = np->vport;
+	u32 xdp_txq_offset;
 
 	if (unlikely(!netif_carrier_ok(dev) || !vport->link_up))
 		return -ENETDOWN;
 
+	xdp_txq_offset = vport->dflt_qv_rsrc.xdp_txq_offset;
+
 	return libeth_xdp_xmit_do_bulk(dev, n, frames, flags,
-				       &vport->txqs[vport->xdp_txq_offset],
+				       &vport->txqs[xdp_txq_offset],
 				       vport->num_xdp_txq,
 				       idpf_xdp_xmit_flush_bulk,
 				       idpf_xdp_tx_finalize);
diff --git a/drivers/net/ethernet/intel/idpf/xsk.c b/drivers/net/ethernet/intel/idpf/xsk.c
index e4768ec07336..676cbd80774d 100644
--- a/drivers/net/ethernet/intel/idpf/xsk.c
+++ b/drivers/net/ethernet/intel/idpf/xsk.c
@@ -62,7 +62,7 @@ static void idpf_xsk_setup_txq(const struct idpf_vport *vport,
 	if (!idpf_queue_has(XDP, txq))
 		return;
 
-	qid = txq->idx - vport->xdp_txq_offset;
+	qid = txq->idx - vport->dflt_qv_rsrc.xdp_txq_offset;
 
 	pool = xsk_get_pool_from_qid(vport->netdev, qid);
 	if (!pool || !pool->dev)
@@ -87,7 +87,8 @@ static void idpf_xsk_setup_complq(const struct idpf_vport *vport,
 	if (!idpf_queue_has(XDP, complq))
 		return;
 
-	qid = complq->txq_grp->txqs[0]->idx - vport->xdp_txq_offset;
+	qid = complq->txq_grp->txqs[0]->idx -
+		vport->dflt_qv_rsrc.xdp_txq_offset;
 
 	pool = xsk_get_pool_from_qid(vport->netdev, qid);
 	if (!pool || !pool->dev)
-- 
2.39.2

