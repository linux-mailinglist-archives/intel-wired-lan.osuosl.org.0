Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFBDA5048F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Mar 2025 17:22:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E67260B09;
	Wed,  5 Mar 2025 16:22:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m8TSu_DCIN3n; Wed,  5 Mar 2025 16:22:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04D0B60B15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741191776;
	bh=04XJ3aKPjcXY5EQ1I2Sn+ndrSg6TqiPHlTreFD7l0Vg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WuM9qOrACJ7NqP+0eHLQtsWyx3IPPcWIDUiW//v+JOdAg0rY+Z+t0Iyo2t2wGS015
	 YJBjvLDYJFLqM686CXzCD3v+bXcWQT0vLknyjGie6+7toletlbFbWbof2cFzqe7Y6S
	 9Ad7x3lyCPYZxvkCDZNJ4VPCucp4iROPIcwyBEEnPnmSQONUhFT7DK0BXZyM8ZZ50t
	 2E/neb9GiZN2mQ2F35wVYsPM2iBdl8yksqrz9pyIB48FCW0T/gmPcWOG0l4YC8Q0i3
	 GzvAN1CI7k8n54Ur1FOYXGrPzs7M+3h+T+x98jJACc6YfMlNgcOXPrjbDI8SK71QVV
	 X+vACdMQFER6w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 04D0B60B15;
	Wed,  5 Mar 2025 16:22:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0874C95F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 16:22:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E1D5960ACE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 16:22:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Aks5cEbdhdt8 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Mar 2025 16:22:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6B30E608D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6B30E608D1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6B30E608D1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 16:22:53 +0000 (UTC)
X-CSE-ConnectionGUID: W/vbmdXLQza2dVxSZO1N8g==
X-CSE-MsgGUID: EXIaTwTHRHyoExgFgKNa1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42026517"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="42026517"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 08:22:53 -0800
X-CSE-ConnectionGUID: 8kUykrx6RAWBY587jKl6Sg==
X-CSE-MsgGUID: +z+I5N/3SgeprcYB8qy8MQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="123832921"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa004.fm.intel.com with ESMTP; 05 Mar 2025 08:22:49 -0800
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
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Simon Horman <horms@kernel.org>,
 bpf@vger.kernel.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Wed,  5 Mar 2025 17:21:25 +0100
Message-ID: <20250305162132.1106080-10-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
References: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741191774; x=1772727774;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jAtB0tLqg0JPtfCVOOYuPPwRvYKrBGh2CUa45CqPy6I=;
 b=VxWlA9fFlgH0PkczXi4YuRx4yKey3UkP/arkWTgf9KMO5Bx++RwJgSJL
 R9nAo/wwFaCzgy6Lqz2aWs0R5NjSSyeT+2M1pZvWZ9eQ2L9HkkYWr/ZuH
 r0sCpEl+YzPm6qUd1EOC7hSZBKxacGYrEei2/bngYTkxcDmXhYqSaxVTm
 tt65PYbH5TeCYmYCQGCfjIyb0s2HjSxoi9n/G9nviyOKjuHgvsV3dfBhE
 z21bBxn20pgDPT577SwplX9pD3I69oBhKcf4tcO0KGBqyiY12AtyW2mwE
 5U+y61L5vvaoshFaYswEBufnmxQY/sd5OBg5dwDBWeDntN/Y7qTAtMgOs
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VxWlA9fF
Subject: [Intel-wired-lan] [PATCH net-next 09/16] idpf: remove SW marker
 handling from NAPI
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

SW marker descriptors on completion queues are used only when a queue
is about to be destroyed. It's far from hotpath and handling it in the
hotpath NAPI poll makes no sense.
Instead, run a simple poller after a virtchnl message for destroying
the queue is sent and wait for the replies. If replies for all of the
queues are received, this means the synchronization is done correctly
and we can go forth with stopping the link.

Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        |   7 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |   4 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   2 -
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 108 +++++++++++-------
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  34 ++----
 5 files changed, 80 insertions(+), 75 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 66544faab710..6b51a5dcc1e0 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -36,6 +36,7 @@ struct idpf_vport_max_q;
 #define IDPF_NUM_CHUNKS_PER_MSG(struct_sz, chunk_sz)	\
 	((IDPF_CTLQ_MAX_BUF_LEN - (struct_sz)) / (chunk_sz))
 
+#define IDPF_WAIT_FOR_MARKER_TIMEO	500
 #define IDPF_MAX_WAIT			500
 
 /* available message levels */
@@ -224,13 +225,10 @@ enum idpf_vport_reset_cause {
 /**
  * enum idpf_vport_flags - Vport flags
  * @IDPF_VPORT_DEL_QUEUES: To send delete queues message
- * @IDPF_VPORT_SW_MARKER: Indicate TX pipe drain software marker packets
- *			  processing is done
  * @IDPF_VPORT_FLAGS_NBITS: Must be last
  */
 enum idpf_vport_flags {
 	IDPF_VPORT_DEL_QUEUES,
-	IDPF_VPORT_SW_MARKER,
 	IDPF_VPORT_FLAGS_NBITS,
 };
 
@@ -289,7 +287,6 @@ struct idpf_port_stats {
  * @tx_itr_profile: TX profiles for Dynamic Interrupt Moderation
  * @port_stats: per port csum, header split, and other offload stats
  * @link_up: True if link is up
- * @sw_marker_wq: workqueue for marker packets
  */
 struct idpf_vport {
 	u16 num_txq;
@@ -332,8 +329,6 @@ struct idpf_vport {
 	struct idpf_port_stats port_stats;
 
 	bool link_up;
-
-	wait_queue_head_t sw_marker_wq;
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 9f938301b2c5..dd6cc3b5cdab 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -286,7 +286,6 @@ struct idpf_ptype_state {
  *			  bit and Q_RFL_GEN is the SW bit.
  * @__IDPF_Q_FLOW_SCH_EN: Enable flow scheduling
  * @__IDPF_Q_SW_MARKER: Used to indicate TX queue marker completions
- * @__IDPF_Q_POLL_MODE: Enable poll mode
  * @__IDPF_Q_CRC_EN: enable CRC offload in singleq mode
  * @__IDPF_Q_HSPLIT_EN: enable header split on Rx (splitq)
  * @__IDPF_Q_FLAGS_NBITS: Must be last
@@ -296,7 +295,6 @@ enum idpf_queue_flags_t {
 	__IDPF_Q_RFL_GEN_CHK,
 	__IDPF_Q_FLOW_SCH_EN,
 	__IDPF_Q_SW_MARKER,
-	__IDPF_Q_POLL_MODE,
 	__IDPF_Q_CRC_EN,
 	__IDPF_Q_HSPLIT_EN,
 
@@ -1044,6 +1042,8 @@ bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_rx_queue *rxq,
 				      u16 cleaned_count);
 int idpf_tso(struct sk_buff *skb, struct idpf_tx_offload_params *off);
 
+void idpf_wait_for_sw_marker_completion(struct idpf_tx_queue *txq);
+
 static inline bool idpf_tx_maybe_stop_common(struct idpf_tx_queue *tx_q,
 					     u32 needed)
 {
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index f3aea7bcdaa3..e17582d15e27 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1501,8 +1501,6 @@ void idpf_init_task(struct work_struct *work)
 	index = vport->idx;
 	vport_config = adapter->vport_config[index];
 
-	init_waitqueue_head(&vport->sw_marker_wq);
-
 	spin_lock_init(&vport_config->mac_filter_list_lock);
 
 	INIT_LIST_HEAD(&vport_config->user_config.mac_filter_list);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index a240ed115e3e..4e3de6031422 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -1626,32 +1626,6 @@ int idpf_vport_queues_alloc(struct idpf_vport *vport)
 	return err;
 }
 
-/**
- * idpf_tx_handle_sw_marker - Handle queue marker packet
- * @tx_q: tx queue to handle software marker
- */
-static void idpf_tx_handle_sw_marker(struct idpf_tx_queue *tx_q)
-{
-	struct idpf_netdev_priv *priv = netdev_priv(tx_q->netdev);
-	struct idpf_vport *vport = priv->vport;
-	int i;
-
-	idpf_queue_clear(SW_MARKER, tx_q);
-	/* Hardware must write marker packets to all queues associated with
-	 * completion queues. So check if all queues received marker packets
-	 */
-	for (i = 0; i < vport->num_txq; i++)
-		/* If we're still waiting on any other TXQ marker completions,
-		 * just return now since we cannot wake up the marker_wq yet.
-		 */
-		if (idpf_queue_has(SW_MARKER, vport->txqs[i]))
-			return;
-
-	/* Drain complete */
-	set_bit(IDPF_VPORT_SW_MARKER, vport->flags);
-	wake_up(&vport->sw_marker_wq);
-}
-
 /**
  * idpf_tx_clean_stashed_bufs - clean bufs that were stored for
  * out of order completions
@@ -2008,6 +1982,19 @@ idpf_tx_handle_rs_cmpl_fb(struct idpf_tx_queue *txq,
 		idpf_tx_clean_stashed_bufs(txq, compl_tag, cleaned, budget);
 }
 
+/**
+ * idpf_tx_update_complq_indexes - update completion queue indexes
+ * @complq: completion queue being updated
+ * @ntc: current "next to clean" index value
+ * @gen_flag: current "generation" flag value
+ */
+static void idpf_tx_update_complq_indexes(struct idpf_compl_queue *complq,
+					  int ntc, bool gen_flag)
+{
+	complq->next_to_clean = ntc + complq->desc_count;
+	idpf_queue_assign(GEN_CHK, complq, gen_flag);
+}
+
 /**
  * idpf_tx_finalize_complq - Finalize completion queue cleaning
  * @complq: completion queue to finalize
@@ -2059,8 +2046,7 @@ static void idpf_tx_finalize_complq(struct idpf_compl_queue *complq, int ntc,
 		tx_q->cleaned_pkts = 0;
 	}
 
-	complq->next_to_clean = ntc + complq->desc_count;
-	idpf_queue_assign(GEN_CHK, complq, gen_flag);
+	idpf_tx_update_complq_indexes(complq, ntc, gen_flag);
 }
 
 /**
@@ -2115,9 +2101,6 @@ static bool idpf_tx_clean_complq(struct idpf_compl_queue *complq, int budget,
 							  &cleaned_stats,
 							  budget);
 			break;
-		case IDPF_TXD_COMPLT_SW_MARKER:
-			idpf_tx_handle_sw_marker(tx_q);
-			break;
 		case -ENODATA:
 			goto exit_clean_complq;
 		case -EINVAL:
@@ -2159,6 +2142,59 @@ static bool idpf_tx_clean_complq(struct idpf_compl_queue *complq, int budget,
 	return !!complq_budget;
 }
 
+/**
+ * idpf_wait_for_sw_marker_completion - wait for SW marker of disabled Tx queue
+ * @txq: disabled Tx queue
+ */
+void idpf_wait_for_sw_marker_completion(struct idpf_tx_queue *txq)
+{
+	struct idpf_compl_queue *complq = txq->txq_grp->complq;
+	struct idpf_splitq_4b_tx_compl_desc *tx_desc;
+	s16 ntc = complq->next_to_clean;
+	unsigned long timeout;
+	bool flow, gen_flag;
+	u32 pos = ntc;
+
+	if (!idpf_queue_has(SW_MARKER, txq))
+		return;
+
+	flow = idpf_queue_has(FLOW_SCH_EN, complq);
+	gen_flag = idpf_queue_has(GEN_CHK, complq);
+
+	timeout = jiffies + msecs_to_jiffies(IDPF_WAIT_FOR_MARKER_TIMEO);
+	tx_desc = flow ? &complq->comp[pos].common : &complq->comp_4b[pos];
+	ntc -= complq->desc_count;
+
+	do {
+		struct idpf_tx_queue *tx_q;
+		int ctype;
+
+		ctype = idpf_parse_compl_desc(tx_desc, complq, &tx_q,
+					      gen_flag);
+		if (ctype == IDPF_TXD_COMPLT_SW_MARKER) {
+			idpf_queue_clear(SW_MARKER, tx_q);
+			if (txq == tx_q)
+				break;
+		} else if (ctype == -ENODATA) {
+			usleep_range(500, 1000);
+			continue;
+		}
+
+		pos++;
+		ntc++;
+		if (unlikely(!ntc)) {
+			ntc -= complq->desc_count;
+			pos = 0;
+			gen_flag = !gen_flag;
+		}
+
+		tx_desc = flow ? &complq->comp[pos].common :
+			  &complq->comp_4b[pos];
+		prefetch(tx_desc);
+	} while (time_before(jiffies, timeout));
+
+	idpf_tx_update_complq_indexes(complq, ntc, gen_flag);
+}
 /**
  * idpf_tx_splitq_build_ctb - populate command tag and size for queue
  * based scheduling descriptors
@@ -4130,15 +4166,7 @@ static int idpf_vport_splitq_napi_poll(struct napi_struct *napi, int budget)
 	else
 		idpf_vport_intr_set_wb_on_itr(q_vector);
 
-	/* Switch to poll mode in the tear-down path after sending disable
-	 * queues virtchnl message, as the interrupts will be disabled after
-	 * that
-	 */
-	if (unlikely(q_vector->num_txq && idpf_queue_has(POLL_MODE,
-							 q_vector->tx[0])))
-		return budget;
-	else
-		return work_done;
+	return work_done;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 135af3cc243f..24495e4d6c78 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -752,21 +752,17 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter)
  **/
 static int idpf_wait_for_marker_event(struct idpf_vport *vport)
 {
-	int event;
-	int i;
-
-	for (i = 0; i < vport->num_txq; i++)
-		idpf_queue_set(SW_MARKER, vport->txqs[i]);
+	bool markers_rcvd = true;
 
-	event = wait_event_timeout(vport->sw_marker_wq,
-				   test_and_clear_bit(IDPF_VPORT_SW_MARKER,
-						      vport->flags),
-				   msecs_to_jiffies(500));
+	for (u32 i = 0; i < vport->num_txq; i++) {
+		struct idpf_tx_queue *txq = vport->txqs[i];
 
-	for (i = 0; i < vport->num_txq; i++)
-		idpf_queue_clear(POLL_MODE, vport->txqs[i]);
+		idpf_queue_set(SW_MARKER, txq);
+		idpf_wait_for_sw_marker_completion(txq);
+		markers_rcvd &= !idpf_queue_has(SW_MARKER, txq);
+	}
 
-	if (event)
+	if (markers_rcvd)
 		return 0;
 
 	dev_warn(&vport->adapter->pdev->dev, "Failed to receive marker packets\n");
@@ -1993,24 +1989,12 @@ int idpf_send_enable_queues_msg(struct idpf_vport *vport)
  */
 int idpf_send_disable_queues_msg(struct idpf_vport *vport)
 {
-	int err, i;
+	int err;
 
 	err = idpf_send_ena_dis_queues_msg(vport, false);
 	if (err)
 		return err;
 
-	/* switch to poll mode as interrupts will be disabled after disable
-	 * queues virtchnl message is sent
-	 */
-	for (i = 0; i < vport->num_txq; i++)
-		idpf_queue_set(POLL_MODE, vport->txqs[i]);
-
-	/* schedule the napi to receive all the marker packets */
-	local_bh_disable();
-	for (i = 0; i < vport->num_q_vectors; i++)
-		napi_schedule(&vport->q_vectors[i].napi);
-	local_bh_enable();
-
 	return idpf_wait_for_marker_event(vport);
 }
 
-- 
2.48.1

