Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5391C83D40D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jan 2024 06:48:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DE5AA615D0;
	Fri, 26 Jan 2024 05:48:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DE5AA615D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706248131;
	bh=s0m9PweKqnVXWVi7S4a7Q2Sxi3uGTHEU0q8va0Y02Sk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Xiexj+y4Fnn7UlGomA8DdkXeyyOaWX2Qzmz/7TglvJu22MiG/OzRd1/+ZRAwARCHO
	 Myb1EC2zWpg5k49z8eWHRnEFm3dU/t0WMqHemIO+1VNQ71VPvOTIO9Q/lRakGrsEze
	 c7CaJTVODY8peH/innTX/52IDXZVFjPjCFAdL41rw3lA+NvbcxNx7walbfxsuobblH
	 Q/BMbTm2QgO+fUIBvEav/WHHx9i6oTV4MHjZuYba236BZJbNd6ReBY1Z34o1oRb8/F
	 BHnwO3GCaPGXwzrgBS5wj7yeE9KGFuRQyqcQEdLGzyMG7e5AawM1H95Cjv4pyjceTv
	 gOaNilojT1pgg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LPBMzNe53ldo; Fri, 26 Jan 2024 05:48:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B85A617B7;
	Fri, 26 Jan 2024 05:48:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B85A617B7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 45FB21BF292
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jan 2024 05:48:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 17B2860093
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jan 2024 05:48:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 17B2860093
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4FZOapIbpysL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jan 2024 05:48:41 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 00E4161600
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jan 2024 05:48:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 00E4161600
X-IronPort-AV: E=McAfee;i="6600,9927,10964"; a="9779277"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="9779277"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2024 21:48:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="21306181"
Received: from dev1-atbrady.jf.intel.com ([10.166.241.35])
 by fmviesa002.fm.intel.com with ESMTP; 25 Jan 2024 21:48:39 -0800
From: Alan Brady <alan.brady@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jan 2024 21:47:44 -0800
Message-Id: <20240126054747.960172-5-alan.brady@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240126054747.960172-1-alan.brady@intel.com>
References: <20240126054747.960172-1-alan.brady@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706248121; x=1737784121;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Yblr5iC3qfoMsH7Dd1VH7adQgTyYsdE1JjU9NGG7H08=;
 b=CU8JgvO62nK8M/qH3dTB3Jj0yKNT+G7okFWuLNEBarrupTqD1m0F/RkO
 vLeve5O5q8s0aew7O+97rU/o3q+TCqCreO0IngokCzIrwl4Mt3EMAb2MT
 h5GdciyGMenIbbcRbQsrciPL/39+POhtxZTfmM86YCfq31FyXAMnx8s12
 AsiGfEcCyf+Fh0Gu0HyKAaS+soMmYbJbsphmGABmmckxln5r6RU42HYBT
 Xj/wrRVzSczaWz8J6GWoBosWFgi617oau3llcLpecBGNqGLCXGXeuGEgz
 DEyrvhiLHDkAcIddiLMAw4jKj+Ij941nxS82Jx8IVg1COGmwxkgK+UtFt
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CU8JgvO6
Subject: [Intel-wired-lan] [PATCH v2 4/7 iwl-next] idpf: refactor remaining
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
Cc: netdev@vger.kernel.org, willemdebruijn.kernel@gmail.com,
 igor.bagnucki@intel.com, Alan Brady <alan.brady@intel.com>,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This takes care of RSS/SRIOV/MAC and other misc virtchnl messages. This
again is mostly mechanical.

In absence of an async_handler for MAC filters, this will simply
generically report any errors from idpf_vc_xn_forward_async. This
maintains the existing behavior. Follow up patch will add an async
handler for MAC filters to remove bad filters from our list.

There's still a bit more cleanup we can do here to remove stuff that's
not being used anymore now; follow-up patches will take care of loose
ends.

Signed-off-by: Alan Brady <alan.brady@intel.com>
---
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 859 +++++++-----------
 1 file changed, 305 insertions(+), 554 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 231fe7c7819c..e992e4cf09e7 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -3,6 +3,64 @@
 
 #include "idpf.h"
 
+/**
+ * idpf_vid_to_vport - Translate vport id to vport pointer
+ * @adapter: private data struct
+ * @v_id: vport id to translate
+ *
+ * Returns vport matching v_id, NULL if not found.
+ */
+static
+struct idpf_vport *idpf_vid_to_vport(struct idpf_adapter *adapter, u32 v_id)
+{
+	u16 num_max_vports = idpf_get_max_vports(adapter);
+	int i;
+
+	for (i = 0; i < num_max_vports; i++)
+		if (adapter->vport_ids[i] == v_id)
+			return adapter->vports[i];
+
+	return NULL;
+}
+
+/**
+ * idpf_handle_event_link - Handle link event message
+ * @adapter: private data struct
+ * @v2e: virtchnl event message
+ */
+static void idpf_handle_event_link(struct idpf_adapter *adapter,
+				   const struct virtchnl2_event *v2e)
+{
+	struct idpf_netdev_priv *np;
+	struct idpf_vport *vport;
+
+	vport = idpf_vid_to_vport(adapter, le32_to_cpu(v2e->vport_id));
+	if (!vport) {
+		dev_err_ratelimited(&adapter->pdev->dev, "Failed to find vport_id %d for link event\n",
+				    v2e->vport_id);
+		return;
+	}
+	np = netdev_priv(vport->netdev);
+
+	vport->link_speed_mbps = le32_to_cpu(v2e->link_speed);
+
+	if (vport->link_up == v2e->link_status)
+		return;
+
+	vport->link_up = v2e->link_status;
+
+	if (np->state != __IDPF_VPORT_UP)
+		return;
+
+	if (vport->link_up) {
+		netif_tx_start_all_queues(vport->netdev);
+		netif_carrier_on(vport->netdev);
+	} else {
+		netif_tx_stop_all_queues(vport->netdev);
+		netif_carrier_off(vport->netdev);
+	}
+}
+
 /**
  * idpf_recv_event_msg - Receive virtchnl event message
  * @vport: virtual port structure
@@ -13,33 +71,24 @@
 static void idpf_recv_event_msg(struct idpf_vport *vport,
 				struct idpf_ctlq_msg *ctlq_msg)
 {
-	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
+	int payload_size = ctlq_msg->ctx.indirect.payload->size;
 	struct virtchnl2_event *v2e;
-	bool link_status;
 	u32 event;
 
+	if (payload_size < sizeof(*v2e)) {
+		dev_err_ratelimited(&vport->adapter->pdev->dev, "Failed to receive valid payload for event msg (op %d len %d)\n",
+				    ctlq_msg->cookie.mbx.chnl_opcode,
+				    payload_size);
+		return;
+	}
+
 	v2e = (struct virtchnl2_event *)ctlq_msg->ctx.indirect.payload->va;
 	event = le32_to_cpu(v2e->event);
 
 	switch (event) {
 	case VIRTCHNL2_EVENT_LINK_CHANGE:
-		vport->link_speed_mbps = le32_to_cpu(v2e->link_speed);
-		link_status = v2e->link_status;
-
-		if (vport->link_up == link_status)
-			break;
-
-		vport->link_up = link_status;
-		if (np->state == __IDPF_VPORT_UP) {
-			if (vport->link_up) {
-				netif_carrier_on(vport->netdev);
-				netif_tx_start_all_queues(vport->netdev);
-			} else {
-				netif_tx_stop_all_queues(vport->netdev);
-				netif_carrier_off(vport->netdev);
-			}
-		}
-		break;
+		idpf_handle_event_link(vport->adapter, v2e);
+		return;
 	default:
 		dev_err(&vport->adapter->pdev->dev,
 			"Unknown event %d from PF\n", event);
@@ -282,89 +331,6 @@ static int idpf_find_vport(struct idpf_adapter *adapter,
 	return err;
 }
 
-/**
- * idpf_copy_data_to_vc_buf - Copy the virtchnl response data into the buffer.
- * @adapter: driver specific private structure
- * @vport: virtual port structure
- * @ctlq_msg: msg to copy from
- * @err_enum: err bit to set on error
- *
- * Copies the payload from ctlq_msg into virtchnl buffer. Returns 0 on success,
- * negative on failure.
- */
-static int idpf_copy_data_to_vc_buf(struct idpf_adapter *adapter,
-				    struct idpf_vport *vport,
-				    struct idpf_ctlq_msg *ctlq_msg,
-				    enum idpf_vport_vc_state err_enum)
-{
-	if (ctlq_msg->cookie.mbx.chnl_retval) {
-		if (vport)
-			set_bit(err_enum, vport->vc_state);
-		else
-			set_bit(err_enum, adapter->vc_state);
-
-		return -EINVAL;
-	}
-
-	if (vport)
-		memcpy(vport->vc_msg, ctlq_msg->ctx.indirect.payload->va,
-		       min_t(int, ctlq_msg->ctx.indirect.payload->size,
-			     IDPF_CTLQ_MAX_BUF_LEN));
-	else
-		memcpy(adapter->vc_msg, ctlq_msg->ctx.indirect.payload->va,
-		       min_t(int, ctlq_msg->ctx.indirect.payload->size,
-			     IDPF_CTLQ_MAX_BUF_LEN));
-
-	return 0;
-}
-
-/**
- * idpf_recv_vchnl_op - helper function with common logic when handling the
- * reception of VIRTCHNL OPs.
- * @adapter: driver specific private structure
- * @vport: virtual port structure
- * @ctlq_msg: msg to copy from
- * @state: state bit used on timeout check
- * @err_state: err bit to set on error
- */
-static void idpf_recv_vchnl_op(struct idpf_adapter *adapter,
-			       struct idpf_vport *vport,
-			       struct idpf_ctlq_msg *ctlq_msg,
-			       enum idpf_vport_vc_state state,
-			       enum idpf_vport_vc_state err_state)
-{
-	wait_queue_head_t *vchnl_wq;
-	int err;
-
-	if (vport)
-		vchnl_wq = &vport->vchnl_wq;
-	else
-		vchnl_wq = &adapter->vchnl_wq;
-
-	err = idpf_copy_data_to_vc_buf(adapter, vport, ctlq_msg, err_state);
-	if (wq_has_sleeper(vchnl_wq)) {
-		if (vport)
-			set_bit(state, vport->vc_state);
-		else
-			set_bit(state, adapter->vc_state);
-
-		wake_up(vchnl_wq);
-	} else {
-		if (!err) {
-			dev_warn(&adapter->pdev->dev, "opcode %d received without waiting thread\n",
-				 ctlq_msg->cookie.mbx.chnl_opcode);
-		} else {
-			/* Clear the errors since there is no sleeper to pass
-			 * them on
-			 */
-			if (vport)
-				clear_bit(err_state, vport->vc_state);
-			else
-				clear_bit(err_state, adapter->vc_state);
-		}
-	}
-}
-
 /* API for virtchnl "transaction" support ("xn" for short).
  *
  * We are reusing the completion lock to serialize the accesses to the
@@ -753,8 +719,6 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter, u32 op,
 	int err;
 
 	while (1) {
-		struct idpf_vport_config *vport_config;
-
 		/* Try to get one message */
 		num_q_msg = 1;
 		dma_mem = NULL;
@@ -808,112 +772,20 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter, u32 op,
 		case VIRTCHNL2_OP_DEL_QUEUES:
 		case VIRTCHNL2_OP_MAP_QUEUE_VECTOR:
 		case VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR:
-			err = idpf_vc_xn_forward_reply(adapter, &ctlq_msg);
-			break;
 		case VIRTCHNL2_OP_GET_STATS:
-			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
-					   IDPF_VC_GET_STATS,
-					   IDPF_VC_GET_STATS_ERR);
-			break;
 		case VIRTCHNL2_OP_GET_RSS_LUT:
-			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
-					   IDPF_VC_GET_RSS_LUT,
-					   IDPF_VC_GET_RSS_LUT_ERR);
-			break;
 		case VIRTCHNL2_OP_SET_RSS_LUT:
-			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
-					   IDPF_VC_SET_RSS_LUT,
-					   IDPF_VC_SET_RSS_LUT_ERR);
-			break;
 		case VIRTCHNL2_OP_GET_RSS_KEY:
-			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
-					   IDPF_VC_GET_RSS_KEY,
-					   IDPF_VC_GET_RSS_KEY_ERR);
-			break;
 		case VIRTCHNL2_OP_SET_RSS_KEY:
-			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
-					   IDPF_VC_SET_RSS_KEY,
-					   IDPF_VC_SET_RSS_KEY_ERR);
-			break;
 		case VIRTCHNL2_OP_SET_SRIOV_VFS:
-			idpf_recv_vchnl_op(adapter, NULL, &ctlq_msg,
-					   IDPF_VC_SET_SRIOV_VFS,
-					   IDPF_VC_SET_SRIOV_VFS_ERR);
-			break;
 		case VIRTCHNL2_OP_ALLOC_VECTORS:
-			idpf_recv_vchnl_op(adapter, NULL, &ctlq_msg,
-					   IDPF_VC_ALLOC_VECTORS,
-					   IDPF_VC_ALLOC_VECTORS_ERR);
-			break;
 		case VIRTCHNL2_OP_DEALLOC_VECTORS:
-			idpf_recv_vchnl_op(adapter, NULL, &ctlq_msg,
-					   IDPF_VC_DEALLOC_VECTORS,
-					   IDPF_VC_DEALLOC_VECTORS_ERR);
-			break;
 		case VIRTCHNL2_OP_GET_PTYPE_INFO:
-			idpf_recv_vchnl_op(adapter, NULL, &ctlq_msg,
-					   IDPF_VC_GET_PTYPE_INFO,
-					   IDPF_VC_GET_PTYPE_INFO_ERR);
-			break;
 		case VIRTCHNL2_OP_LOOPBACK:
-			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
-					   IDPF_VC_LOOPBACK_STATE,
-					   IDPF_VC_LOOPBACK_STATE_ERR);
-			break;
 		case VIRTCHNL2_OP_CONFIG_PROMISCUOUS_MODE:
-			/* This message can only be sent asynchronously. As
-			 * such we'll have lost the context in which it was
-			 * called and thus can only really report if it looks
-			 * like an error occurred. Don't bother setting ERR bit
-			 * or waking chnl_wq since no work queue will be waiting
-			 * to read the message.
-			 */
-			if (ctlq_msg.cookie.mbx.chnl_retval) {
-				dev_err(&adapter->pdev->dev, "Failed to set promiscuous mode: %d\n",
-					ctlq_msg.cookie.mbx.chnl_retval);
-			}
-			break;
 		case VIRTCHNL2_OP_ADD_MAC_ADDR:
-			vport_config = adapter->vport_config[vport->idx];
-			if (test_and_clear_bit(IDPF_VPORT_ADD_MAC_REQ,
-					       vport_config->flags)) {
-				/* Message was sent asynchronously. We don't
-				 * normally print errors here, instead
-				 * prefer to handle errors in the function
-				 * calling wait_for_event. However, if
-				 * asynchronous, the context in which the
-				 * message was sent is lost. We can't really do
-				 * anything about at it this point, but we
-				 * should at a minimum indicate that it looks
-				 * like something went wrong. Also don't bother
-				 * setting ERR bit or waking vchnl_wq since no
-				 * one will be waiting to read the async
-				 * message.
-				 */
-				if (ctlq_msg.cookie.mbx.chnl_retval)
-					dev_err(&adapter->pdev->dev, "Failed to add MAC address: %d\n",
-						ctlq_msg.cookie.mbx.chnl_retval);
-				break;
-			}
-			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
-					   IDPF_VC_ADD_MAC_ADDR,
-					   IDPF_VC_ADD_MAC_ADDR_ERR);
-			break;
 		case VIRTCHNL2_OP_DEL_MAC_ADDR:
-			vport_config = adapter->vport_config[vport->idx];
-			if (test_and_clear_bit(IDPF_VPORT_DEL_MAC_REQ,
-					       vport_config->flags)) {
-				/* Message was sent asynchronously like the
-				 * VIRTCHNL2_OP_ADD_MAC_ADDR
-				 */
-				if (ctlq_msg.cookie.mbx.chnl_retval)
-					dev_err(&adapter->pdev->dev, "Failed to delete MAC address: %d\n",
-						ctlq_msg.cookie.mbx.chnl_retval);
-				break;
-			}
-			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
-					   IDPF_VC_DEL_MAC_ADDR,
-					   IDPF_VC_DEL_MAC_ADDR_ERR);
+			err = idpf_vc_xn_forward_reply(adapter, &ctlq_msg);
 			break;
 		case VIRTCHNL2_OP_EVENT:
 			idpf_recv_event_msg(vport, &ctlq_msg);
@@ -946,116 +818,6 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter, u32 op,
 	return err;
 }
 
-/**
- * __idpf_wait_for_event - wrapper function for wait on virtchannel response
- * @adapter: Driver private data structure
- * @vport: virtual port structure
- * @state: check on state upon timeout
- * @err_check: check if this specific error bit is set
- * @timeout: Max time to wait
- *
- * Checks if state is set upon expiry of timeout.  Returns 0 on success,
- * negative on failure.
- */
-static int __idpf_wait_for_event(struct idpf_adapter *adapter,
-				 struct idpf_vport *vport,
-				 enum idpf_vport_vc_state state,
-				 enum idpf_vport_vc_state err_check,
-				 int timeout)
-{
-	int time_to_wait, num_waits;
-	wait_queue_head_t *vchnl_wq;
-	unsigned long *vc_state;
-
-	time_to_wait = ((timeout <= IDPF_MAX_WAIT) ? timeout : IDPF_MAX_WAIT);
-	num_waits = ((timeout <= IDPF_MAX_WAIT) ? 1 : timeout / IDPF_MAX_WAIT);
-
-	if (vport) {
-		vchnl_wq = &vport->vchnl_wq;
-		vc_state = vport->vc_state;
-	} else {
-		vchnl_wq = &adapter->vchnl_wq;
-		vc_state = adapter->vc_state;
-	}
-
-	while (num_waits) {
-		int event;
-
-		/* If we are here and a reset is detected do not wait but
-		 * return. Reset timing is out of drivers control. So
-		 * while we are cleaning resources as part of reset if the
-		 * underlying HW mailbox is gone, wait on mailbox messages
-		 * is not meaningful
-		 */
-		if (idpf_is_reset_detected(adapter))
-			return 0;
-
-		event = wait_event_timeout(*vchnl_wq,
-					   test_and_clear_bit(state, vc_state),
-					   msecs_to_jiffies(time_to_wait));
-		if (event) {
-			if (test_and_clear_bit(err_check, vc_state)) {
-				dev_err(&adapter->pdev->dev, "VC response error %s\n",
-					idpf_vport_vc_state_str[err_check]);
-
-				return -EINVAL;
-			}
-
-			return 0;
-		}
-		num_waits--;
-	}
-
-	/* Timeout occurred */
-	dev_err(&adapter->pdev->dev, "VC timeout, state = %s\n",
-		idpf_vport_vc_state_str[state]);
-
-	return -ETIMEDOUT;
-}
-
-/**
- * idpf_min_wait_for_event - wait for virtchannel response
- * @adapter: Driver private data structure
- * @vport: virtual port structure
- * @state: check on state upon timeout
- * @err_check: check if this specific error bit is set
- *
- * Returns 0 on success, negative on failure.
- */
-static int idpf_min_wait_for_event(struct idpf_adapter *adapter,
-				   struct idpf_vport *vport,
-				   enum idpf_vport_vc_state state,
-				   enum idpf_vport_vc_state err_check)
-{
-	return __idpf_wait_for_event(adapter, vport, state, err_check,
-				     IDPF_WAIT_FOR_EVENT_TIMEO_MIN);
-}
-
-/**
- * idpf_wait_for_event - wait for virtchannel response
- * @adapter: Driver private data structure
- * @vport: virtual port structure
- * @state: check on state upon timeout after 500ms
- * @err_check: check if this specific error bit is set
- *
- * Returns 0 on success, negative on failure.
- */
-static int idpf_wait_for_event(struct idpf_adapter *adapter,
-			       struct idpf_vport *vport,
-			       enum idpf_vport_vc_state state,
-			       enum idpf_vport_vc_state err_check)
-{
-	/* Increasing the timeout in __IDPF_INIT_SW flow to consider large
-	 * number of VF's mailbox message responses. When a message is received
-	 * on mailbox, this thread is woken up by the idpf_recv_mb_msg before
-	 * the timeout expires. Only in the error case i.e. if no message is
-	 * received on mailbox, we wait for the complete timeout which is
-	 * less likely to happen.
-	 */
-	return __idpf_wait_for_event(adapter, vport, state, err_check,
-				     IDPF_WAIT_FOR_EVENT_TIMEO);
-}
-
 /**
  * idpf_wait_for_marker_event - wait for software marker response
  * @vport: virtual port data structure
@@ -2529,39 +2291,46 @@ int idpf_send_add_queues_msg(const struct idpf_vport *vport, u16 num_tx_q,
 int idpf_send_alloc_vectors_msg(struct idpf_adapter *adapter, u16 num_vectors)
 {
 	struct virtchnl2_alloc_vectors *alloc_vec, *rcvd_vec;
-	struct virtchnl2_alloc_vectors ac = { };
+	struct idpf_vc_xn_params xn_params = {};
+	struct virtchnl2_alloc_vectors ac = {};
+	int size, err = 0;
+	ssize_t reply_sz;
 	u16 num_vchunks;
-	int size, err;
 
 	ac.num_vectors = cpu_to_le16(num_vectors);
 
-	mutex_lock(&adapter->vc_buf_lock);
-
-	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_ALLOC_VECTORS,
-			       sizeof(ac), (u8 *)&ac, 0);
-	if (err)
-		goto rel_lock;
-
-	err = idpf_wait_for_event(adapter, NULL, IDPF_VC_ALLOC_VECTORS,
-				  IDPF_VC_ALLOC_VECTORS_ERR);
-	if (err)
-		goto rel_lock;
+	rcvd_vec = kzalloc(IDPF_CTLQ_MAX_BUF_LEN, GFP_KERNEL);
+	if (!rcvd_vec)
+		return -ENOMEM;
 
-	rcvd_vec = (struct virtchnl2_alloc_vectors *)adapter->vc_msg;
+	xn_params.vc_op = VIRTCHNL2_OP_ALLOC_VECTORS;
+	xn_params.send_buf.iov_base = &ac;
+	xn_params.send_buf.iov_len = sizeof(ac);
+	xn_params.recv_buf.iov_base = rcvd_vec;
+	xn_params.recv_buf.iov_len = IDPF_CTLQ_MAX_BUF_LEN;
+	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
+	reply_sz = idpf_vc_xn_exec(adapter, xn_params);
+	if (reply_sz < 0) {
+		err = reply_sz;
+		goto alloc_vectors_fail;
+	}
 	num_vchunks = le16_to_cpu(rcvd_vec->vchunks.num_vchunks);
-
 	size = struct_size(rcvd_vec, vchunks.vchunks, num_vchunks);
-	if (size > sizeof(adapter->vc_msg)) {
+	if (reply_sz < size) {
+		err = -EIO;
+		goto alloc_vectors_fail;
+	}
+
+	if (size > IDPF_CTLQ_MAX_BUF_LEN) {
 		err = -EINVAL;
-		goto rel_lock;
+		goto alloc_vectors_fail;
 	}
 
 	kfree(adapter->req_vec_chunks);
-	adapter->req_vec_chunks = NULL;
-	adapter->req_vec_chunks = kmemdup(adapter->vc_msg, size, GFP_KERNEL);
+	adapter->req_vec_chunks = kmemdup(rcvd_vec, size, GFP_KERNEL);
 	if (!adapter->req_vec_chunks) {
 		err = -ENOMEM;
-		goto rel_lock;
+		goto alloc_vectors_fail;
 	}
 
 	alloc_vec = adapter->req_vec_chunks;
@@ -2571,9 +2340,8 @@ int idpf_send_alloc_vectors_msg(struct idpf_adapter *adapter, u16 num_vectors)
 		err = -EINVAL;
 	}
 
-rel_lock:
-	mutex_unlock(&adapter->vc_buf_lock);
-
+alloc_vectors_fail:
+	kfree(rcvd_vec);
 	return err;
 }
 
@@ -2587,29 +2355,24 @@ int idpf_send_dealloc_vectors_msg(struct idpf_adapter *adapter)
 {
 	struct virtchnl2_alloc_vectors *ac = adapter->req_vec_chunks;
 	struct virtchnl2_vector_chunks *vcs = &ac->vchunks;
-	int buf_size, err;
+	struct idpf_vc_xn_params xn_params = {};
+	ssize_t reply_sz;
+	int buf_size;
 
 	buf_size = struct_size(vcs, vchunks, le16_to_cpu(vcs->num_vchunks));
 
-	mutex_lock(&adapter->vc_buf_lock);
-
-	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_DEALLOC_VECTORS, buf_size,
-			       (u8 *)vcs, 0);
-	if (err)
-		goto rel_lock;
-
-	err = idpf_min_wait_for_event(adapter, NULL, IDPF_VC_DEALLOC_VECTORS,
-				      IDPF_VC_DEALLOC_VECTORS_ERR);
-	if (err)
-		goto rel_lock;
+	xn_params.vc_op = VIRTCHNL2_OP_DEALLOC_VECTORS;
+	xn_params.send_buf.iov_base = vcs;
+	xn_params.send_buf.iov_len = buf_size;
+	xn_params.timeout_ms = IDPF_VC_XN_MIN_TIMEOUT_MSEC;
+	reply_sz = idpf_vc_xn_exec(adapter, xn_params);
+	if (reply_sz < 0)
+		return reply_sz;
 
 	kfree(adapter->req_vec_chunks);
 	adapter->req_vec_chunks = NULL;
 
-rel_lock:
-	mutex_unlock(&adapter->vc_buf_lock);
-
-	return err;
+	return 0;
 }
 
 /**
@@ -2632,25 +2395,18 @@ static int idpf_get_max_vfs(struct idpf_adapter *adapter)
  */
 int idpf_send_set_sriov_vfs_msg(struct idpf_adapter *adapter, u16 num_vfs)
 {
-	struct virtchnl2_sriov_vfs_info svi = { };
-	int err;
+	struct virtchnl2_sriov_vfs_info svi = {};
+	struct idpf_vc_xn_params xn_params = {};
+	ssize_t reply_sz;
 
 	svi.num_vfs = cpu_to_le16(num_vfs);
+	xn_params.vc_op = VIRTCHNL2_OP_SET_SRIOV_VFS;
+	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
+	xn_params.send_buf.iov_base = &svi;
+	xn_params.send_buf.iov_len = sizeof(svi);
+	reply_sz = idpf_vc_xn_exec(adapter, xn_params);
 
-	mutex_lock(&adapter->vc_buf_lock);
-
-	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_SET_SRIOV_VFS,
-			       sizeof(svi), (u8 *)&svi, 0);
-	if (err)
-		goto rel_lock;
-
-	err = idpf_wait_for_event(adapter, NULL, IDPF_VC_SET_SRIOV_VFS,
-				  IDPF_VC_SET_SRIOV_VFS_ERR);
-
-rel_lock:
-	mutex_unlock(&adapter->vc_buf_lock);
-
-	return err;
+	return reply_sz < 0 ? reply_sz : 0;
 }
 
 /**
@@ -2663,10 +2419,10 @@ int idpf_send_get_stats_msg(struct idpf_vport *vport)
 {
 	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
 	struct rtnl_link_stats64 *netstats = &np->netstats;
-	struct idpf_adapter *adapter = vport->adapter;
-	struct virtchnl2_vport_stats stats_msg = { };
-	struct virtchnl2_vport_stats *stats;
-	int err;
+	struct virtchnl2_vport_stats stats_msg = {};
+	struct idpf_vc_xn_params xn_params = {};
+	ssize_t reply_sz;
+
 
 	/* Don't send get_stats message if the link is down */
 	if (np->state <= __IDPF_VPORT_DOWN)
@@ -2674,46 +2430,38 @@ int idpf_send_get_stats_msg(struct idpf_vport *vport)
 
 	stats_msg.vport_id = cpu_to_le32(vport->vport_id);
 
-	mutex_lock(&vport->vc_buf_lock);
-
-	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_GET_STATS,
-			       sizeof(struct virtchnl2_vport_stats),
-			       (u8 *)&stats_msg, 0);
-	if (err)
-		goto rel_lock;
-
-	err = idpf_wait_for_event(adapter, vport, IDPF_VC_GET_STATS,
-				  IDPF_VC_GET_STATS_ERR);
-	if (err)
-		goto rel_lock;
+	xn_params.vc_op = VIRTCHNL2_OP_GET_STATS;
+	xn_params.send_buf.iov_base = &stats_msg;
+	xn_params.send_buf.iov_len = sizeof(stats_msg);
+	xn_params.recv_buf = xn_params.send_buf;
+	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
 
-	stats = (struct virtchnl2_vport_stats *)vport->vc_msg;
+	reply_sz = idpf_vc_xn_exec(vport->adapter, xn_params);
+	if (reply_sz < 0)
+		return reply_sz;
+	if (reply_sz < sizeof(stats_msg))
+		return -EIO;
 
 	spin_lock_bh(&np->stats_lock);
 
-	netstats->rx_packets = le64_to_cpu(stats->rx_unicast) +
-			       le64_to_cpu(stats->rx_multicast) +
-			       le64_to_cpu(stats->rx_broadcast);
-	netstats->rx_bytes = le64_to_cpu(stats->rx_bytes);
-	netstats->rx_dropped = le64_to_cpu(stats->rx_discards);
-	netstats->rx_over_errors = le64_to_cpu(stats->rx_overflow_drop);
-	netstats->rx_length_errors = le64_to_cpu(stats->rx_invalid_frame_length);
-
-	netstats->tx_packets = le64_to_cpu(stats->tx_unicast) +
-			       le64_to_cpu(stats->tx_multicast) +
-			       le64_to_cpu(stats->tx_broadcast);
-	netstats->tx_bytes = le64_to_cpu(stats->tx_bytes);
-	netstats->tx_errors = le64_to_cpu(stats->tx_errors);
-	netstats->tx_dropped = le64_to_cpu(stats->tx_discards);
-
-	vport->port_stats.vport_stats = *stats;
+	netstats->rx_packets = le64_to_cpu(stats_msg.rx_unicast) +
+			       le64_to_cpu(stats_msg.rx_multicast) +
+			       le64_to_cpu(stats_msg.rx_broadcast);
+	netstats->tx_packets = le64_to_cpu(stats_msg.tx_unicast) +
+			       le64_to_cpu(stats_msg.tx_multicast) +
+			       le64_to_cpu(stats_msg.tx_broadcast);
+	netstats->rx_bytes = le64_to_cpu(stats_msg.rx_bytes);
+	netstats->tx_bytes = le64_to_cpu(stats_msg.tx_bytes);
+	netstats->rx_errors = le64_to_cpu(stats_msg.rx_errors);
+	netstats->tx_errors = le64_to_cpu(stats_msg.tx_errors);
+	netstats->rx_dropped = le64_to_cpu(stats_msg.rx_discards);
+	netstats->tx_dropped = le64_to_cpu(stats_msg.tx_discards);
+
+	vport->port_stats.vport_stats = stats_msg;
 
 	spin_unlock_bh(&np->stats_lock);
 
-rel_lock:
-	mutex_unlock(&vport->vc_buf_lock);
-
-	return err;
+	return 0;
 }
 
 /**
@@ -2725,70 +2473,75 @@ int idpf_send_get_stats_msg(struct idpf_vport *vport)
  */
 int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport, bool get)
 {
-	struct idpf_adapter *adapter = vport->adapter;
+	struct idpf_vc_xn_params xn_params = {};
 	struct virtchnl2_rss_lut *recv_rl;
 	struct idpf_rss_data *rss_data;
 	struct virtchnl2_rss_lut *rl;
 	int buf_size, lut_buf_size;
-	int i, err;
+	ssize_t reply_sz;
+	int i;
 
-	rss_data = &adapter->vport_config[vport->idx]->user_config.rss_data;
+	rss_data =
+		&vport->adapter->vport_config[vport->idx]->user_config.rss_data;
 	buf_size = struct_size(rl, lut, rss_data->rss_lut_size);
 	rl = kzalloc(buf_size, GFP_KERNEL);
 	if (!rl)
 		return -ENOMEM;
 
 	rl->vport_id = cpu_to_le32(vport->vport_id);
-	mutex_lock(&vport->vc_buf_lock);
 
-	if (!get) {
+	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
+	xn_params.send_buf.iov_base = rl;
+	xn_params.send_buf.iov_len = buf_size;
+
+	if (get) {
+		recv_rl = kzalloc(IDPF_CTLQ_MAX_BUF_LEN, GFP_KERNEL);
+		if (!recv_rl) {
+			kfree(rl);
+			return -ENOMEM;
+		}
+		xn_params.vc_op = VIRTCHNL2_OP_GET_RSS_LUT;
+		xn_params.recv_buf.iov_base = recv_rl;
+		xn_params.recv_buf.iov_len = IDPF_CTLQ_MAX_BUF_LEN;
+	} else {
 		rl->lut_entries = cpu_to_le16(rss_data->rss_lut_size);
 		for (i = 0; i < rss_data->rss_lut_size; i++)
 			rl->lut[i] = cpu_to_le32(rss_data->rss_lut[i]);
 
-		err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_SET_RSS_LUT,
-				       buf_size, (u8 *)rl, 0);
-		if (err)
-			goto free_mem;
-
-		err = idpf_wait_for_event(adapter, vport, IDPF_VC_SET_RSS_LUT,
-					  IDPF_VC_SET_RSS_LUT_ERR);
-
-		goto free_mem;
+		xn_params.vc_op = VIRTCHNL2_OP_SET_RSS_LUT;
 	}
+	reply_sz = idpf_vc_xn_exec(vport->adapter, xn_params);
+	kfree(rl);
+	if (reply_sz < 0)
+		return reply_sz;
+	if (!get)
+		return 0;
+	if (reply_sz < sizeof(struct virtchnl2_rss_lut))
+		return -EIO;
 
-	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_GET_RSS_LUT,
-			       buf_size, (u8 *)rl, 0);
-	if (err)
-		goto free_mem;
-
-	err = idpf_wait_for_event(adapter, vport, IDPF_VC_GET_RSS_LUT,
-				  IDPF_VC_GET_RSS_LUT_ERR);
-	if (err)
-		goto free_mem;
+	lut_buf_size = le16_to_cpu(recv_rl->lut_entries) * sizeof(u32);
+	if (reply_sz < lut_buf_size)
+		return -EIO;
 
-	recv_rl = (struct virtchnl2_rss_lut *)vport->vc_msg;
+	/* size didn't change, we can reuse existing lut buf */
 	if (rss_data->rss_lut_size == le16_to_cpu(recv_rl->lut_entries))
 		goto do_memcpy;
 
 	rss_data->rss_lut_size = le16_to_cpu(recv_rl->lut_entries);
 	kfree(rss_data->rss_lut);
 
-	lut_buf_size = rss_data->rss_lut_size * sizeof(u32);
 	rss_data->rss_lut = kzalloc(lut_buf_size, GFP_KERNEL);
 	if (!rss_data->rss_lut) {
 		rss_data->rss_lut_size = 0;
-		err = -ENOMEM;
-		goto free_mem;
+		kfree(recv_rl);
+		return -ENOMEM;
 	}
 
 do_memcpy:
-	memcpy(rss_data->rss_lut, vport->vc_msg, rss_data->rss_lut_size);
-free_mem:
-	mutex_unlock(&vport->vc_buf_lock);
-	kfree(rl);
+	memcpy(rss_data->rss_lut, recv_rl->lut, rss_data->rss_lut_size);
+	kfree(recv_rl);
 
-	return err;
+	return 0;
 }
 
 /**
@@ -2800,68 +2553,77 @@ int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport, bool get)
  */
 int idpf_send_get_set_rss_key_msg(struct idpf_vport *vport, bool get)
 {
-	struct idpf_adapter *adapter = vport->adapter;
+	struct idpf_vc_xn_params xn_params = {};
 	struct virtchnl2_rss_key *recv_rk;
 	struct idpf_rss_data *rss_data;
 	struct virtchnl2_rss_key *rk;
-	int i, buf_size, err;
+	ssize_t reply_sz;
+	int i, buf_size;
+	u16 key_size;
 
-	rss_data = &adapter->vport_config[vport->idx]->user_config.rss_data;
+	rss_data =
+		&vport->adapter->vport_config[vport->idx]->user_config.rss_data;
 	buf_size = struct_size(rk, key_flex, rss_data->rss_key_size);
 	rk = kzalloc(buf_size, GFP_KERNEL);
 	if (!rk)
 		return -ENOMEM;
 
 	rk->vport_id = cpu_to_le32(vport->vport_id);
-	mutex_lock(&vport->vc_buf_lock);
-
+	xn_params.send_buf.iov_base = rk;
+	xn_params.send_buf.iov_len = buf_size;
+	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
 	if (get) {
-		err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_GET_RSS_KEY,
-				       buf_size, (u8 *)rk, 0);
-		if (err)
-			goto error;
-
-		err = idpf_wait_for_event(adapter, vport, IDPF_VC_GET_RSS_KEY,
-					  IDPF_VC_GET_RSS_KEY_ERR);
-		if (err)
-			goto error;
-
-		recv_rk = (struct virtchnl2_rss_key *)vport->vc_msg;
-		if (rss_data->rss_key_size !=
-		    le16_to_cpu(recv_rk->key_len)) {
-			rss_data->rss_key_size =
-				min_t(u16, NETDEV_RSS_KEY_LEN,
-				      le16_to_cpu(recv_rk->key_len));
-			kfree(rss_data->rss_key);
-			rss_data->rss_key = kzalloc(rss_data->rss_key_size,
-						    GFP_KERNEL);
-			if (!rss_data->rss_key) {
-				rss_data->rss_key_size = 0;
-				err = -ENOMEM;
-				goto error;
-			}
+		recv_rk = kzalloc(IDPF_CTLQ_MAX_BUF_LEN, GFP_KERNEL);
+		if (!recv_rk) {
+			kfree(rk);
+			return -ENOMEM;
 		}
-		memcpy(rss_data->rss_key, recv_rk->key_flex,
-		       rss_data->rss_key_size);
+
+		xn_params.vc_op = VIRTCHNL2_OP_GET_RSS_KEY;
+		xn_params.recv_buf.iov_base = recv_rk;
+		xn_params.recv_buf.iov_len = IDPF_CTLQ_MAX_BUF_LEN;
 	} else {
 		rk->key_len = cpu_to_le16(rss_data->rss_key_size);
 		for (i = 0; i < rss_data->rss_key_size; i++)
 			rk->key_flex[i] = rss_data->rss_key[i];
 
-		err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_SET_RSS_KEY,
-				       buf_size, (u8 *)rk, 0);
-		if (err)
-			goto error;
-
-		err = idpf_wait_for_event(adapter, vport, IDPF_VC_SET_RSS_KEY,
-					  IDPF_VC_SET_RSS_KEY_ERR);
+		xn_params.vc_op = VIRTCHNL2_OP_SET_RSS_KEY;
 	}
 
-error:
-	mutex_unlock(&vport->vc_buf_lock);
+	reply_sz = idpf_vc_xn_exec(vport->adapter, xn_params);
 	kfree(rk);
+	if (reply_sz < 0) {
+		kfree(recv_rk);
+		return reply_sz;
+	}
+	if (!get)
+		return 0;
+	if (reply_sz < sizeof(struct virtchnl2_rss_key))
+		return -EIO;
 
-	return err;
+	key_size = min_t(u16, NETDEV_RSS_KEY_LEN,
+			 le16_to_cpu(recv_rk->key_len));
+	if (reply_sz < key_size)
+		return -EIO;
+
+	/* key len didn't change, reuse existing buf */
+	if (rss_data->rss_key_size == key_size)
+		goto do_memcpy;
+
+	rss_data->rss_key_size = key_size;
+	kfree(rss_data->rss_key);
+	rss_data->rss_key = kzalloc(key_size, GFP_KERNEL);
+	if (!rss_data->rss_key) {
+		rss_data->rss_key_size = 0;
+		kfree(recv_rk);
+		return -ENOMEM;
+	}
+
+do_memcpy:
+	memcpy(rss_data->rss_key, recv_rk->key_flex, rss_data->rss_key_size);
+	kfree(recv_rk);
+
+	return 0;
 }
 
 /**
@@ -2914,12 +2676,13 @@ static void idpf_fill_ptype_lookup(struct idpf_rx_ptype_decoded *ptype,
 int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
 {
 	struct idpf_rx_ptype_decoded *ptype_lkup = vport->rx_ptype_lkup;
-	struct virtchnl2_get_ptype_info get_ptype_info;
+	struct virtchnl2_get_ptype_info *get_ptype_info, *ptype_info;
 	int max_ptype, ptypes_recvd = 0, ptype_offset;
 	struct idpf_adapter *adapter = vport->adapter;
-	struct virtchnl2_get_ptype_info *ptype_info;
+	struct idpf_vc_xn_params xn_params = {};
 	u16 next_ptype_id = 0;
 	int err = 0, i, j, k;
+	ssize_t reply_sz;
 
 	if (idpf_is_queue_model_split(vport->rxq_model))
 		max_ptype = IDPF_RX_MAX_PTYPE;
@@ -2928,43 +2691,51 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
 
 	memset(vport->rx_ptype_lkup, 0, sizeof(vport->rx_ptype_lkup));
 
-	ptype_info = kzalloc(IDPF_CTLQ_MAX_BUF_LEN, GFP_KERNEL);
-	if (!ptype_info)
+	get_ptype_info = kzalloc(sizeof(*get_ptype_info), GFP_KERNEL);
+	if (!get_ptype_info)
 		return -ENOMEM;
 
-	mutex_lock(&adapter->vc_buf_lock);
+	ptype_info = kzalloc(IDPF_CTLQ_MAX_BUF_LEN, GFP_KERNEL);
+	if (!ptype_info) {
+		err = -ENOMEM;
+		goto ptype_rel;
+	}
+
+	xn_params.vc_op = VIRTCHNL2_OP_GET_PTYPE_INFO;
+	xn_params.send_buf.iov_base = get_ptype_info;
+	xn_params.send_buf.iov_len = sizeof(*get_ptype_info);
+	xn_params.recv_buf.iov_base = ptype_info;
+	xn_params.recv_buf.iov_len = IDPF_CTLQ_MAX_BUF_LEN;
+	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
 
 	while (next_ptype_id < max_ptype) {
-		get_ptype_info.start_ptype_id = cpu_to_le16(next_ptype_id);
+		get_ptype_info->start_ptype_id = cpu_to_le16(next_ptype_id);
 
 		if ((next_ptype_id + IDPF_RX_MAX_PTYPES_PER_BUF) > max_ptype)
-			get_ptype_info.num_ptypes =
+			get_ptype_info->num_ptypes =
 				cpu_to_le16(max_ptype - next_ptype_id);
 		else
-			get_ptype_info.num_ptypes =
+			get_ptype_info->num_ptypes =
 				cpu_to_le16(IDPF_RX_MAX_PTYPES_PER_BUF);
 
-		err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_GET_PTYPE_INFO,
-				       sizeof(struct virtchnl2_get_ptype_info),
-				       (u8 *)&get_ptype_info, 0);
-		if (err)
-			goto vc_buf_unlock;
-
-		err = idpf_wait_for_event(adapter, NULL, IDPF_VC_GET_PTYPE_INFO,
-					  IDPF_VC_GET_PTYPE_INFO_ERR);
-		if (err)
-			goto vc_buf_unlock;
-
-		memcpy(ptype_info, adapter->vc_msg, IDPF_CTLQ_MAX_BUF_LEN);
+		reply_sz = idpf_vc_xn_exec(adapter, xn_params);
+		if (reply_sz < 0) {
+			err = -EINVAL;
+			goto ptype_rel;
+		}
+		if (reply_sz < IDPF_CTLQ_MAX_BUF_LEN) {
+			err = -EIO;
+			goto ptype_rel;
+		}
 
 		ptypes_recvd += le16_to_cpu(ptype_info->num_ptypes);
 		if (ptypes_recvd > max_ptype) {
 			err = -EINVAL;
-			goto vc_buf_unlock;
+			goto ptype_rel;
 		}
 
-		next_ptype_id = le16_to_cpu(get_ptype_info.start_ptype_id) +
-				le16_to_cpu(get_ptype_info.num_ptypes);
+		next_ptype_id = le16_to_cpu(get_ptype_info->start_ptype_id) +
+				le16_to_cpu(get_ptype_info->num_ptypes);
 
 		ptype_offset = IDPF_RX_PTYPE_HDR_SZ;
 
@@ -2979,14 +2750,14 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
 			ptype_offset += IDPF_GET_PTYPE_SIZE(ptype);
 			if (ptype_offset > IDPF_CTLQ_MAX_BUF_LEN) {
 				err = -EINVAL;
-				goto vc_buf_unlock;
+				goto ptype_rel;
 			}
 
 			/* 0xFFFF indicates end of ptypes */
 			if (le16_to_cpu(ptype->ptype_id_10) ==
 							IDPF_INVALID_PTYPE_ID) {
 				err = 0;
-				goto vc_buf_unlock;
+				goto ptype_rel;
 			}
 
 			if (idpf_is_queue_model_split(vport->rxq_model))
@@ -3115,9 +2886,9 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
 		}
 	}
 
-vc_buf_unlock:
-	mutex_unlock(&adapter->vc_buf_lock);
+ptype_rel:
 	kfree(ptype_info);
+	kfree(get_ptype_info);
 
 	return err;
 }
@@ -3131,27 +2902,20 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
  */
 int idpf_send_ena_dis_loopback_msg(struct idpf_vport *vport)
 {
+	struct idpf_vc_xn_params xn_params = {};
 	struct virtchnl2_loopback loopback;
-	int err;
+	ssize_t reply_sz;
 
 	loopback.vport_id = cpu_to_le32(vport->vport_id);
 	loopback.enable = idpf_is_feature_ena(vport, NETIF_F_LOOPBACK);
 
-	mutex_lock(&vport->vc_buf_lock);
-
-	err = idpf_send_mb_msg(vport->adapter, VIRTCHNL2_OP_LOOPBACK,
-			       sizeof(loopback), (u8 *)&loopback, 0);
-	if (err)
-		goto rel_lock;
-
-	err = idpf_wait_for_event(vport->adapter, vport,
-				  IDPF_VC_LOOPBACK_STATE,
-				  IDPF_VC_LOOPBACK_STATE_ERR);
-
-rel_lock:
-	mutex_unlock(&vport->vc_buf_lock);
+	xn_params.vc_op = VIRTCHNL2_OP_LOOPBACK;
+	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
+	xn_params.send_buf.iov_base = &loopback;
+	xn_params.send_buf.iov_len = sizeof(loopback);
+	reply_sz = idpf_vc_xn_exec(vport->adapter, xn_params);
 
-	return err;
+	return reply_sz < 0 ? reply_sz : 0;
 }
 
 /**
@@ -3896,15 +3660,18 @@ int idpf_add_del_mac_filters(struct idpf_vport *vport,
 {
 	struct virtchnl2_mac_addr_list *ma_list = NULL;
 	struct idpf_adapter *adapter = np->adapter;
+	struct idpf_vc_xn_params xn_params = {};
 	struct idpf_vport_config *vport_config;
-	enum idpf_vport_config_flags mac_flag;
-	struct pci_dev *pdev = adapter->pdev;
-	enum idpf_vport_vc_state vc, vc_err;
 	struct virtchnl2_mac_addr *mac_addr;
-	struct idpf_mac_filter *f, *tmp;
 	u32 num_msgs, total_filters = 0;
+	struct idpf_mac_filter *f;
 	int i = 0, k, err = 0;
-	u32 vop;
+	ssize_t reply_sz;
+
+	xn_params.vc_op = add ? VIRTCHNL2_OP_ADD_MAC_ADDR :
+				VIRTCHNL2_OP_DEL_MAC_ADDR;
+	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
+	xn_params.async = async;
 
 	vport_config = adapter->vport_config[np->vport_idx];
 	spin_lock_bh(&vport_config->mac_filter_list_lock);
@@ -3933,8 +3700,8 @@ int idpf_add_del_mac_filters(struct idpf_vport *vport,
 		goto error;
 	}
 
-	list_for_each_entry_safe(f, tmp, &vport_config->user_config.mac_filter_list,
-				 list) {
+	list_for_each_entry(f, &vport_config->user_config.mac_filter_list,
+			    list) {
 		if (add && f->add) {
 			ether_addr_copy(mac_addr[i].addr, f->macaddr);
 			i++;
@@ -3953,26 +3720,11 @@ int idpf_add_del_mac_filters(struct idpf_vport *vport,
 
 	spin_unlock_bh(&vport_config->mac_filter_list_lock);
 
-	if (add) {
-		vop = VIRTCHNL2_OP_ADD_MAC_ADDR;
-		vc = IDPF_VC_ADD_MAC_ADDR;
-		vc_err = IDPF_VC_ADD_MAC_ADDR_ERR;
-		mac_flag = IDPF_VPORT_ADD_MAC_REQ;
-	} else {
-		vop = VIRTCHNL2_OP_DEL_MAC_ADDR;
-		vc = IDPF_VC_DEL_MAC_ADDR;
-		vc_err = IDPF_VC_DEL_MAC_ADDR_ERR;
-		mac_flag = IDPF_VPORT_DEL_MAC_REQ;
-	}
-
 	/* Chunk up the filters into multiple messages to avoid
 	 * sending a control queue message buffer that is too large
 	 */
 	num_msgs = DIV_ROUND_UP(total_filters, IDPF_NUM_FILTERS_PER_MSG);
 
-	if (!async)
-		mutex_lock(&vport->vc_buf_lock);
-
 	for (i = 0, k = 0; i < num_msgs; i++) {
 		u32 entries_size, buf_size, num_entries;
 
@@ -3996,17 +3748,12 @@ int idpf_add_del_mac_filters(struct idpf_vport *vport,
 		ma_list->num_mac_addr = cpu_to_le16(num_entries);
 		memcpy(ma_list->mac_addr_list, &mac_addr[k], entries_size);
 
-		if (async)
-			set_bit(mac_flag, vport_config->flags);
-
-		err = idpf_send_mb_msg(adapter, vop, buf_size, (u8 *)ma_list, 0);
-		if (err)
+		xn_params.send_buf.iov_base = ma_list;
+		xn_params.send_buf.iov_len = buf_size;
+		reply_sz = idpf_vc_xn_exec(adapter, xn_params);
+		if (reply_sz < 0) {
+			err = reply_sz;
 			goto mbx_error;
-
-		if (!async) {
-			err = idpf_wait_for_event(adapter, vport, vc, vc_err);
-			if (err)
-				goto mbx_error;
 		}
 
 		k += num_entries;
@@ -4014,14 +3761,13 @@ int idpf_add_del_mac_filters(struct idpf_vport *vport,
 	}
 
 mbx_error:
-	if (!async)
-		mutex_unlock(&vport->vc_buf_lock);
 	kfree(ma_list);
 list_prep_error:
 	kfree(mac_addr);
 error:
 	if (err)
-		dev_err(&pdev->dev, "Failed to add or del mac filters %d", err);
+		dev_err(&adapter->pdev->dev, "Failed to add or del mac filters %d",
+			err);
 
 	return err;
 }
@@ -4040,9 +3786,10 @@ int idpf_set_promiscuous(struct idpf_adapter *adapter,
 			 struct idpf_vport_user_config_data *config_data,
 			 u32 vport_id)
 {
+	struct idpf_vc_xn_params xn_params = {};
 	struct virtchnl2_promisc_info vpi;
+	ssize_t reply_sz;
 	u16 flags = 0;
-	int err;
 
 	if (test_bit(__IDPF_PROMISC_UC, config_data->user_flags))
 		flags |= VIRTCHNL2_UNICAST_PROMISC;
@@ -4052,9 +3799,13 @@ int idpf_set_promiscuous(struct idpf_adapter *adapter,
 	vpi.vport_id = cpu_to_le32(vport_id);
 	vpi.flags = cpu_to_le16(flags);
 
-	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_CONFIG_PROMISCUOUS_MODE,
-			       sizeof(struct virtchnl2_promisc_info),
-			       (u8 *)&vpi, 0);
+	xn_params.vc_op = VIRTCHNL2_OP_CONFIG_PROMISCUOUS_MODE;
+	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
+	xn_params.send_buf.iov_base = &vpi;
+	xn_params.send_buf.iov_len = sizeof(vpi);
+	/* setting promiscuous is only ever done asynchronously */
+	xn_params.async = true;
+	reply_sz = idpf_vc_xn_exec(adapter, xn_params);
 
-	return err;
+	return reply_sz < 0 ? reply_sz : 0;
 }
-- 
2.40.1



