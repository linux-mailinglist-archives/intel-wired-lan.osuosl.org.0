Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D85185CD06
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Feb 2024 01:50:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C189E41555;
	Wed, 21 Feb 2024 00:50:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TGObnZHK6PZ1; Wed, 21 Feb 2024 00:50:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 475C740630
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708476656;
	bh=7xHbymNOvZGEG7umemdG7KCJm3dw7sHNz0w48yW3Pk0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zYc3HGxpfo1Jg3tDEqB+5rClNO8+P7bXRb8sc8ns/m7FPzz+p4STLltaA8jptBOh6
	 SKfmhmn23nJEDr/myfMO7x2A7/Y/tnWR0WqRvNur90pA0nus2gBIkCV46cn2uYt/lC
	 XW0FT59IIlLmv5AvZSpVtvZ/vPOXIVH5FRKToXZJNPT0JS3kXSA9vqDWabADplfvWO
	 O662sC/KRRi273x0dp5AtfbJch1JpeSVH1rKfnnfZDtZfnhIUC7SfmKieorZaB8WHt
	 8mbVP45uBqkMW7xyNQXH4/HWjBWS8PMqNxhKTt48CIfDaazGPNltruBsbceY6X4TQd
	 Qn5QXTV8TpG5g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 475C740630;
	Wed, 21 Feb 2024 00:50:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 35BB81BF39D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Feb 2024 00:50:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 23665607E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Feb 2024 00:50:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X4bCcTCEoyxW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Feb 2024 00:50:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=alan.brady@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1396B607A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1396B607A4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1396B607A4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Feb 2024 00:50:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="2500786"
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; 
   d="scan'208";a="2500786"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 16:50:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; 
   d="scan'208";a="9550977"
Received: from dev1-atbrady.jf.intel.com ([10.166.241.35])
 by fmviesa004.fm.intel.com with ESMTP; 20 Feb 2024 16:50:52 -0800
From: Alan Brady <alan.brady@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Feb 2024 16:49:45 -0800
Message-ID: <20240221004949.2561972-7-alan.brady@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240221004949.2561972-1-alan.brady@intel.com>
References: <20240221004949.2561972-1-alan.brady@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708476652; x=1740012652;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=58/Ydr1gMWNd8u+nin6d8FoJZGatIo2eG+vFZRQF5Wg=;
 b=ecQwheoA0B+wLcBzw+N1sHwXugCjuspnox3VCTxCjrTUv544ciDFJbYB
 PeQ3lo3JtHu+3YCO7Y2cEnH+S7G6tzblp4KpZ8L4BS4AmEuvg8liYtKog
 AQTNdDqx9248efUeuT4aB1UyUMG9psIRw61v0ja9Y/nA5lAGCsIPWRZL1
 dFdPi5m/NxVP9BoqqSbExpgxt7i62z+aeUUMyszw8KJ1/9gcj8Uesn7FB
 N/UOaCE0KVFhJI+lazsb0wRIX6M6elMhC8fZPDwFWiD5L4LPnfrQ5ANci
 9ym07ITBWIgKA7kA59x1RtcJ1WP0YjGUH0gNAHevW0S+LzmaU+y4c14EH
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ecQwheoA
Subject: [Intel-wired-lan] [PATCH v5 06/10 iwl-next] idpf: refactor
 idpf_recv_mb_msg
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
Cc: netdev@vger.kernel.org, Alan Brady <alan.brady@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Now that all the messages are using the transaction API, we can rework
idpf_recv_mb_msg quite a lot to simplify it. Due to this, we remove
idpf_find_vport as no longer used and alter idpf_recv_event_msg
slightly.

Tested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Alan Brady <alan.brady@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        |   3 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   2 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 254 +++---------------
 3 files changed, 37 insertions(+), 222 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 393f6e46012f..2d5449b9288a 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -1031,8 +1031,7 @@ int idpf_send_get_stats_msg(struct idpf_vport *vport);
 int idpf_get_vec_ids(struct idpf_adapter *adapter,
 		     u16 *vecids, int num_vecids,
 		     struct virtchnl2_vector_chunks *chunks);
-int idpf_recv_mb_msg(struct idpf_adapter *adapter, u32 op,
-		     void *msg, int msg_size);
+int idpf_recv_mb_msg(struct idpf_adapter *adapter);
 int idpf_send_mb_msg(struct idpf_adapter *adapter, u32 op,
 		     u16 msg_size, u8 *msg, u16 cookie);
 void idpf_set_ethtool_ops(struct net_device *netdev);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 6b4a7408246c..8135a6b4a71e 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1253,7 +1253,7 @@ void idpf_mbx_task(struct work_struct *work)
 		queue_delayed_work(adapter->mbx_wq, &adapter->mbx_task,
 				   msecs_to_jiffies(300));
 
-	idpf_recv_mb_msg(adapter, VIRTCHNL2_OP_UNKNOWN, NULL, 0);
+	idpf_recv_mb_msg(adapter);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index fa12b08e7965..257928428b8b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -63,12 +63,12 @@ static void idpf_handle_event_link(struct idpf_adapter *adapter,
 
 /**
  * idpf_recv_event_msg - Receive virtchnl event message
- * @vport: virtual port structure
+ * @adapter: Driver specific private structure
  * @ctlq_msg: message to copy from
  *
  * Receive virtchnl event message
  */
-static void idpf_recv_event_msg(struct idpf_vport *vport,
+static void idpf_recv_event_msg(struct idpf_adapter *adapter,
 				struct idpf_ctlq_msg *ctlq_msg)
 {
 	int payload_size = ctlq_msg->ctx.indirect.payload->size;
@@ -76,7 +76,7 @@ static void idpf_recv_event_msg(struct idpf_vport *vport,
 	u32 event;
 
 	if (payload_size < sizeof(*v2e)) {
-		dev_err_ratelimited(&vport->adapter->pdev->dev, "Failed to receive valid payload for event msg (op %d len %d)\n",
+		dev_err_ratelimited(&adapter->pdev->dev, "Failed to receive valid payload for event msg (op %d len %d)\n",
 				    ctlq_msg->cookie.mbx.chnl_opcode,
 				    payload_size);
 		return;
@@ -87,10 +87,10 @@ static void idpf_recv_event_msg(struct idpf_vport *vport,
 
 	switch (event) {
 	case VIRTCHNL2_EVENT_LINK_CHANGE:
-		idpf_handle_event_link(vport->adapter, v2e);
+		idpf_handle_event_link(adapter, v2e);
 		return;
 	default:
-		dev_err(&vport->adapter->pdev->dev,
+		dev_err(&adapter->pdev->dev,
 			"Unknown event %d from PF\n", event);
 		break;
 	}
@@ -213,125 +213,6 @@ int idpf_send_mb_msg(struct idpf_adapter *adapter, u32 op,
 	return err;
 }
 
-/**
- * idpf_find_vport - Find vport pointer from control queue message
- * @adapter: driver specific private structure
- * @vport: address of vport pointer to copy the vport from adapters vport list
- * @ctlq_msg: control queue message
- *
- * Return 0 on success, error value on failure. Also this function does check
- * for the opcodes which expect to receive payload and return error value if
- * it is not the case.
- */
-static int idpf_find_vport(struct idpf_adapter *adapter,
-			   struct idpf_vport **vport,
-			   struct idpf_ctlq_msg *ctlq_msg)
-{
-	bool no_op = false, vid_found = false;
-	int i, err = 0;
-	char *vc_msg;
-	u32 v_id;
-
-	vc_msg = kcalloc(IDPF_CTLQ_MAX_BUF_LEN, sizeof(char), GFP_KERNEL);
-	if (!vc_msg)
-		return -ENOMEM;
-
-	if (ctlq_msg->data_len) {
-		size_t payload_size = ctlq_msg->ctx.indirect.payload->size;
-
-		if (!payload_size) {
-			dev_err(&adapter->pdev->dev, "Failed to receive payload buffer\n");
-			kfree(vc_msg);
-
-			return -EINVAL;
-		}
-
-		memcpy(vc_msg, ctlq_msg->ctx.indirect.payload->va,
-		       min_t(size_t, payload_size, IDPF_CTLQ_MAX_BUF_LEN));
-	}
-
-	switch (ctlq_msg->cookie.mbx.chnl_opcode) {
-	case VIRTCHNL2_OP_VERSION:
-	case VIRTCHNL2_OP_GET_CAPS:
-	case VIRTCHNL2_OP_CREATE_VPORT:
-	case VIRTCHNL2_OP_SET_SRIOV_VFS:
-	case VIRTCHNL2_OP_ALLOC_VECTORS:
-	case VIRTCHNL2_OP_DEALLOC_VECTORS:
-	case VIRTCHNL2_OP_GET_PTYPE_INFO:
-		goto free_vc_msg;
-	case VIRTCHNL2_OP_ENABLE_VPORT:
-	case VIRTCHNL2_OP_DISABLE_VPORT:
-	case VIRTCHNL2_OP_DESTROY_VPORT:
-		v_id = le32_to_cpu(((struct virtchnl2_vport *)vc_msg)->vport_id);
-		break;
-	case VIRTCHNL2_OP_CONFIG_TX_QUEUES:
-		v_id = le32_to_cpu(((struct virtchnl2_config_tx_queues *)vc_msg)->vport_id);
-		break;
-	case VIRTCHNL2_OP_CONFIG_RX_QUEUES:
-		v_id = le32_to_cpu(((struct virtchnl2_config_rx_queues *)vc_msg)->vport_id);
-		break;
-	case VIRTCHNL2_OP_ENABLE_QUEUES:
-	case VIRTCHNL2_OP_DISABLE_QUEUES:
-	case VIRTCHNL2_OP_DEL_QUEUES:
-		v_id = le32_to_cpu(((struct virtchnl2_del_ena_dis_queues *)vc_msg)->vport_id);
-		break;
-	case VIRTCHNL2_OP_ADD_QUEUES:
-		v_id = le32_to_cpu(((struct virtchnl2_add_queues *)vc_msg)->vport_id);
-		break;
-	case VIRTCHNL2_OP_MAP_QUEUE_VECTOR:
-	case VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR:
-		v_id = le32_to_cpu(((struct virtchnl2_queue_vector_maps *)vc_msg)->vport_id);
-		break;
-	case VIRTCHNL2_OP_GET_STATS:
-		v_id = le32_to_cpu(((struct virtchnl2_vport_stats *)vc_msg)->vport_id);
-		break;
-	case VIRTCHNL2_OP_GET_RSS_LUT:
-	case VIRTCHNL2_OP_SET_RSS_LUT:
-		v_id = le32_to_cpu(((struct virtchnl2_rss_lut *)vc_msg)->vport_id);
-		break;
-	case VIRTCHNL2_OP_GET_RSS_KEY:
-	case VIRTCHNL2_OP_SET_RSS_KEY:
-		v_id = le32_to_cpu(((struct virtchnl2_rss_key *)vc_msg)->vport_id);
-		break;
-	case VIRTCHNL2_OP_EVENT:
-		v_id = le32_to_cpu(((struct virtchnl2_event *)vc_msg)->vport_id);
-		break;
-	case VIRTCHNL2_OP_LOOPBACK:
-		v_id = le32_to_cpu(((struct virtchnl2_loopback *)vc_msg)->vport_id);
-		break;
-	case VIRTCHNL2_OP_CONFIG_PROMISCUOUS_MODE:
-		v_id = le32_to_cpu(((struct virtchnl2_promisc_info *)vc_msg)->vport_id);
-		break;
-	case VIRTCHNL2_OP_ADD_MAC_ADDR:
-	case VIRTCHNL2_OP_DEL_MAC_ADDR:
-		v_id = le32_to_cpu(((struct virtchnl2_mac_addr_list *)vc_msg)->vport_id);
-		break;
-	default:
-		no_op = true;
-		break;
-	}
-
-	if (no_op)
-		goto free_vc_msg;
-
-	for (i = 0; i < idpf_get_max_vports(adapter); i++) {
-		if (adapter->vport_ids[i] == v_id) {
-			vid_found = true;
-			break;
-		}
-	}
-
-	if (vid_found)
-		*vport = adapter->vports[i];
-	else
-		err = -EINVAL;
-
-free_vc_msg:
-	kfree(vc_msg);
-
-	return err;
-}
-
 /* API for virtchnl "transaction" support ("xn" for short).
  *
  * We are reusing the completion lock to serialize the accesses to the
@@ -707,118 +588,53 @@ idpf_vc_xn_forward_reply(struct idpf_adapter *adapter,
 /**
  * idpf_recv_mb_msg - Receive message over mailbox
  * @adapter: Driver specific private structure
- * @op: virtchannel operation code
- * @msg: Received message holding buffer
- * @msg_size: message size
  *
  * Will receive control queue message and posts the receive buffer. Returns 0
  * on success and negative on failure.
  */
-int idpf_recv_mb_msg(struct idpf_adapter *adapter, u32 op,
-		     void *msg, int msg_size)
+int idpf_recv_mb_msg(struct idpf_adapter *adapter)
 {
-	struct idpf_vport *vport = NULL;
 	struct idpf_ctlq_msg ctlq_msg;
 	struct idpf_dma_mem *dma_mem;
-	bool work_done = false;
-	int num_retry = 2000;
-	u16 num_q_msg;
-	int err;
+	int post_err, err;
+	u16 num_recv;
 
 	while (1) {
-		/* Try to get one message */
-		num_q_msg = 1;
-		dma_mem = NULL;
-		err = idpf_ctlq_recv(adapter->hw.arq, &num_q_msg, &ctlq_msg);
-		/* If no message then decide if we have to retry based on
-		 * opcode
-		 */
-		if (err || !num_q_msg) {
-			/* Increasing num_retry to consider the delayed
-			 * responses because of large number of VF's mailbox
-			 * messages. If the mailbox message is received from
-			 * the other side, we come out of the sleep cycle
-			 * immediately else we wait for more time.
-			 */
-			if (!op || !num_retry--)
-				break;
-			if (test_bit(IDPF_REMOVE_IN_PROG, adapter->flags)) {
-				err = -EIO;
-				break;
-			}
-			msleep(20);
-			continue;
-		}
-
-		/* If we are here a message is received. Check if we are looking
-		 * for a specific message based on opcode. If it is different
-		 * ignore and post buffers
+		/* This will get <= num_recv messages and output how many
+		 * actually received on num_recv.
 		 */
-		if (op && ctlq_msg.cookie.mbx.chnl_opcode != op)
-			goto post_buffs;
-
-		err = idpf_find_vport(adapter, &vport, &ctlq_msg);
-		if (err)
-			goto post_buffs;
-
-		/* All conditions are met. Either a message requested is
-		 * received or we received a message to be processed
-		 */
-		switch (ctlq_msg.cookie.mbx.chnl_opcode) {
-		case VIRTCHNL2_OP_VERSION:
-		case VIRTCHNL2_OP_GET_CAPS:
-		case VIRTCHNL2_OP_CREATE_VPORT:
-		case VIRTCHNL2_OP_ENABLE_VPORT:
-		case VIRTCHNL2_OP_DISABLE_VPORT:
-		case VIRTCHNL2_OP_DESTROY_VPORT:
-		case VIRTCHNL2_OP_CONFIG_TX_QUEUES:
-		case VIRTCHNL2_OP_CONFIG_RX_QUEUES:
-		case VIRTCHNL2_OP_ENABLE_QUEUES:
-		case VIRTCHNL2_OP_DISABLE_QUEUES:
-		case VIRTCHNL2_OP_ADD_QUEUES:
-		case VIRTCHNL2_OP_DEL_QUEUES:
-		case VIRTCHNL2_OP_MAP_QUEUE_VECTOR:
-		case VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR:
-		case VIRTCHNL2_OP_GET_STATS:
-		case VIRTCHNL2_OP_GET_RSS_LUT:
-		case VIRTCHNL2_OP_SET_RSS_LUT:
-		case VIRTCHNL2_OP_GET_RSS_KEY:
-		case VIRTCHNL2_OP_SET_RSS_KEY:
-		case VIRTCHNL2_OP_SET_SRIOV_VFS:
-		case VIRTCHNL2_OP_ALLOC_VECTORS:
-		case VIRTCHNL2_OP_DEALLOC_VECTORS:
-		case VIRTCHNL2_OP_GET_PTYPE_INFO:
-		case VIRTCHNL2_OP_LOOPBACK:
-		case VIRTCHNL2_OP_CONFIG_PROMISCUOUS_MODE:
-		case VIRTCHNL2_OP_ADD_MAC_ADDR:
-		case VIRTCHNL2_OP_DEL_MAC_ADDR:
-			err = idpf_vc_xn_forward_reply(adapter, &ctlq_msg);
-			break;
-		case VIRTCHNL2_OP_EVENT:
-			idpf_recv_event_msg(vport, &ctlq_msg);
+		num_recv = 1;
+		err = idpf_ctlq_recv(adapter->hw.arq, &num_recv, &ctlq_msg);
+		if (err || !num_recv)
 			break;
-		default:
-			dev_warn(&adapter->pdev->dev,
-				 "Unhandled virtchnl response %d\n",
-				 ctlq_msg.cookie.mbx.chnl_opcode);
-			break;
-		}
 
-post_buffs:
-		if (ctlq_msg.data_len)
+		if (ctlq_msg.data_len) {
 			dma_mem = ctlq_msg.ctx.indirect.payload;
+		} else {
+			dma_mem = NULL;
+			num_recv = 0;
+		}
+
+		if (ctlq_msg.cookie.mbx.chnl_opcode == VIRTCHNL2_OP_EVENT)
+			idpf_recv_event_msg(adapter, &ctlq_msg);
 		else
-			num_q_msg = 0;
+			err = idpf_vc_xn_forward_reply(adapter, &ctlq_msg);
+
+		post_err = idpf_ctlq_post_rx_buffs(&adapter->hw,
+						   adapter->hw.arq,
+						   &num_recv, &dma_mem);
 
-		err = idpf_ctlq_post_rx_buffs(&adapter->hw, adapter->hw.arq,
-					      &num_q_msg, &dma_mem);
 		/* If post failed clear the only buffer we supplied */
-		if (err && dma_mem)
-			dma_free_coherent(&adapter->pdev->dev, dma_mem->size,
-					  dma_mem->va, dma_mem->pa);
+		if (post_err) {
+			if (dma_mem)
+				dmam_free_coherent(&adapter->pdev->dev,
+						   dma_mem->size, dma_mem->va,
+						   dma_mem->pa);
+			break;
+		}
 
-		/* Applies only if we are looking for a specific opcode */
-		if (work_done)
+		/* virtchnl trying to shutdown, stop cleaning */
+		if (err == -ENXIO)
 			break;
 	}
 
-- 
2.43.0

