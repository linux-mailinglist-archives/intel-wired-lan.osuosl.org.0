Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A17732484
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Jun 2023 03:16:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB0DD41FEC;
	Fri, 16 Jun 2023 01:16:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB0DD41FEC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686878195;
	bh=RF/3ELfOFKjh+XAbYb/c+rOak7CXzZkjNTwTSCtIan0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XR9ODURavKLHzTojJyrtnj1AXT/E1L6mprbT6EkmeURRi1vDLFDg5s1sNC9zzoT4U
	 INfOPpkuWwWQIoiQ7xw6jkXrSE9l0rf6FfZCbz8eYyaNUoTvv4ik9cYQ1/aVoVgOcs
	 tG9FE0DoPwiHQMtbNzkqvs6qxTbCpH1EQX6gcbp1Ew1HHse611bclizfkUQdTQFZkx
	 2zuta75mNFd6XLAzq0IqTDLSX62jofS3sApwBIUhgpZU/pEXQuJwXmvLRnVHqAIl0g
	 fJyHURUzXmxDIjw/NI7l/XuNN8WGsVH8fJ+DncPab5Nw+rGhiFjpSoOWysCMuAMrNj
	 VZ2A5obmstshQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QyCu0ULfNw-i; Fri, 16 Jun 2023 01:16:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE5B041F96;
	Fri, 16 Jun 2023 01:16:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE5B041F96
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8D7CC1BF36E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 01:16:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 637D283F36
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 01:16:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 637D283F36
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CyLu0gaq1v3R for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jun 2023 01:16:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A48E283D3E
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A48E283D3E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 01:16:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="362501665"
X-IronPort-AV: E=Sophos;i="6.00,246,1681196400"; d="scan'208";a="362501665"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 18:16:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="742455440"
X-IronPort-AV: E=Sophos;i="6.00,246,1681196400"; d="scan'208";a="742455440"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.80.24])
 by orsmga008.jf.intel.com with ESMTP; 15 Jun 2023 18:16:06 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 15 Jun 2023 18:15:31 -0700
Message-Id: <20230616011539.85875-8-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230616011539.85875-1-pavan.kumar.linga@intel.com>
References: <20230616011539.85875-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686878167; x=1718414167;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CZdQQvhZLUSG9yMw8I1fhXZYhe/klISHHTSlXA3t9wQ=;
 b=YViGDJ+thLcbplYf/iwy6h5Dcl89C3fBXLfeiVRC2spigMUBro5OwPFU
 pdz9NJu3NU/mxLGEXkDozSbfDp6h7mxlQ4JN06dcxopRPNd6Mvq0binlI
 dgOrJKCgfOoOUEY2UmQ0199YY4Q3Yfo02Yx1CbTjikzl0NSJvAEdc2x7I
 cmC/2LkEOpsFlXB2KYKUvC4WYUBq72NG4JjvQw+0qBDdaFmDDz1NTJghN
 Cbq2OuSaU7ivTX6oUr1ZPQ7mfWnlv4h029EWIU3iYlafQ8vEKiqMM9srt
 Y0b88ErSZkQZ7yxJ9XODbkPuKLtImAgl7RsxZAckSQDUEnXCPsRz6M5HA
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YViGDJ+t
Subject: [Intel-wired-lan] [PATCH iwl-next v8 07/15] idpf: configure
 resources for TX queues
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
Cc: Willem de Bruijn <willemb@google.com>,
 Phani Burra <phani.r.burra@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alan Brady <alan.brady@intel.com>

IDPF supports two queue models i.e. single queue which is a traditional
queueing model as well as split queue model. In single queue model,
the same descriptor queue is used by SW to post descriptors to the HW,
HW to post completed descriptors to SW. In split queue model, "TX Queues"
are used to pass buffers from SW to HW and "TX Completion Queues"
are used to post descriptor completions from HW to SW. Device supports
asymmetric ratio of TX queues to TX completion queues. Considering
this, queue group mechanism is used i.e. some TX queues are grouped
together which will be serviced by only one TX completion queue
per TX queue group.

Add all the resources required for the TX queues initialization.
To start with, allocate memory for the TX queue groups, TX queues and
TX completion queues. Then, allocate the descriptors for both TX and
TX completion queues, and bookkeeping buffers for TX queues alone.
Also, allocate queue vectors for the vport and initialize the TX queue
related fields for each queue vector.

Initialize the queue parameters such as q_id, q_type and tail register
offset with the info received from the device control plane (CP).
Once all the TX queues are configured, send config TX queue virtchnl
message to the CP with all the TX queue context information.

Signed-off-by: Alan Brady <alan.brady@intel.com>
Co-developed-by: Alice Michael <alice.michael@intel.com>
Signed-off-by: Alice Michael <alice.michael@intel.com>
Co-developed-by: Joshua Hay <joshua.a.hay@intel.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Co-developed-by: Phani Burra <phani.r.burra@intel.com>
Signed-off-by: Phani Burra <phani.r.burra@intel.com>
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Reviewed-by: Willem de Bruijn <willemb@google.com>
Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        |  51 ++
 .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |  25 +
 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 150 +++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 541 ++++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   | 176 ++++++
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 401 +++++++++++++
 6 files changed, 1344 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 57a1c7639a59..9dba922eb346 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -15,9 +15,12 @@ struct idpf_vport_max_q;
 #include <linux/pci.h>
 
 #include "virtchnl2.h"
+#include "idpf_lan_txrx.h"
 #include "idpf_txrx.h"
 #include "idpf_controlq.h"
 
+#define GETMAXVAL(num_bits)		GENMASK((num_bits) - 1, 0)
+
 #define IDPF_NO_FREE_SLOT		0xffff
 
 /* Default Mailbox settings */
@@ -28,6 +31,8 @@ struct idpf_vport_max_q;
 #define IDPF_DFLT_MBX_ID		-1
 /* maximum number of times to try before resetting mailbox */
 #define IDPF_MB_MAX_ERR			20
+#define IDPF_NUM_CHUNKS_PER_MSG(struct_sz, chunk_sz)	\
+	((IDPF_DFLT_MBX_BUF_SIZE - (struct_sz)) / (chunk_sz))
 #define IDPF_WAIT_FOR_EVENT_TIMEO_MIN	2000
 #define IDPF_WAIT_FOR_EVENT_TIMEO	60000
 
@@ -145,6 +150,8 @@ struct idpf_dev_ops {
 	STATE(IDPF_VC_CREATE_VPORT_ERR)		\
 	STATE(IDPF_VC_DESTROY_VPORT)		\
 	STATE(IDPF_VC_DESTROY_VPORT_ERR)	\
+	STATE(IDPF_VC_CONFIG_TXQ)		\
+	STATE(IDPF_VC_CONFIG_TXQ_ERR)		\
 	STATE(IDPF_VC_ALLOC_VECTORS)		\
 	STATE(IDPF_VC_ALLOC_VECTORS_ERR)	\
 	STATE(IDPF_VC_DEALLOC_VECTORS)		\
@@ -197,7 +204,10 @@ struct idpf_vport {
 	u32 txq_desc_count;
 	u32 complq_desc_count;
 	u16 num_txq_grp;
+	struct idpf_txq_group *txq_grps;
 	u32 txq_model;
+	/* Used only in hotpath to get to the right queue very fast */
+	struct idpf_queue **txqs;
 
 	/* RX */
 	u16 num_rxq;
@@ -219,6 +229,8 @@ struct idpf_vport {
 	bool default_vport;
 	bool base_rxd;
 
+	u16 num_q_vectors;
+	struct idpf_q_vector *q_vectors;	/* q vector array */
 	u16 max_mtu;
 	u8 default_mac_addr[ETH_ALEN];
 
@@ -293,6 +305,8 @@ struct idpf_vector_lifo {
 struct idpf_vport_config {
 	struct idpf_vport_user_config_data user_config;
 	struct idpf_vport_max_q max_q;
+	/* Stores the queue chunks received on VIRTCHNL2_OP_ADD_QUEUES */
+	void *req_qs_chunks;
 	DECLARE_BITMAP(flags, IDPF_VPORT_CONFIG_FLAGS_NBITS);
 };
 
@@ -447,6 +461,26 @@ static inline u16 idpf_get_max_vports(struct idpf_adapter *adapter)
 	return le16_to_cpu(adapter->caps.max_vports);
 }
 
+/**
+ * idpf_get_max_tx_bufs - Get max scatter-gather buffers supported by the device
+ * @adapter: private data struct
+ */
+static inline unsigned int idpf_get_max_tx_bufs(struct idpf_adapter *adapter)
+{
+	return adapter->caps.max_sg_bufs_per_tx_pkt;
+}
+
+/**
+ * idpf_get_min_tx_pkt_len - Get min packet length supported by the device
+ * @adapter: private data struct
+ */
+static inline u8 idpf_get_min_tx_pkt_len(struct idpf_adapter *adapter)
+{
+	u8 pkt_len = adapter->caps.min_sso_packet_len;
+
+	return pkt_len ? pkt_len : IDPF_TX_MIN_LEN;
+}
+
 /**
  * idpf_get_reg_addr - Get BAR0 register address
  * @adapter: private data struct
@@ -489,6 +523,20 @@ static inline bool idpf_is_reset_in_prog(struct idpf_adapter *adapter)
 		test_bit(IDPF_HR_DRV_LOAD, adapter->flags));
 }
 
+/**
+ * idpf_netdev_to_vport - get a vport handle from a netdev
+ * @netdev: network interface device structure
+ *
+ * It's possible for the vport to be NULL. Caller must check for a valid
+ * pointer.
+ */
+static inline struct idpf_vport *idpf_netdev_to_vport(struct net_device *netdev)
+{
+	struct idpf_netdev_priv *np = netdev_priv(netdev);
+
+	return np->vport;
+}
+
 void idpf_init_task(struct work_struct *work);
 void idpf_service_task(struct work_struct *work);
 void idpf_vc_event_task(struct work_struct *work);
@@ -519,6 +567,9 @@ void idpf_vport_dealloc_max_qs(struct idpf_adapter *adapter,
 int idpf_add_del_mac_filters(struct idpf_vport *vport, bool add, bool async);
 void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q);
 u32 idpf_get_vport_id(struct idpf_vport *vport);
+int idpf_vport_queue_ids_init(struct idpf_vport *vport);
+int idpf_queue_reg_init(struct idpf_vport *vport);
+int idpf_send_config_tx_queues_msg(struct idpf_vport *vport);
 int idpf_send_create_vport_msg(struct idpf_adapter *adapter,
 			       struct idpf_vport_max_q *max_q);
 int idpf_check_supported_desc_ids(struct idpf_vport *vport);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h
new file mode 100644
index 000000000000..e02b7f7ae5ce
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h
@@ -0,0 +1,25 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2022 Intel Corporation */
+
+#ifndef _IDPF_LAN_TXRX_H_
+#define _IDPF_LAN_TXRX_H_
+
+/* Transmit descriptors  */
+/* splitq tx buf, singleq tx buf and singleq compl desc */
+struct idpf_base_tx_desc {
+	__le64 buf_addr; /* Address of descriptor's data buf */
+	__le64 qw1; /* type_cmd_offset_bsz_l2tag1 */
+}; /* read used with buffer queues */
+
+struct idpf_splitq_tx_compl_desc {
+	/* qid=[10:0] comptype=[13:11] rsvd=[14] gen=[15] */
+	__le16 qid_comptype_gen;
+	union {
+		__le16 q_head; /* Queue head */
+		__le16 compl_tag; /* Completion tag */
+	} q_head_compl_tag;
+	u8 ts[3];
+	u8 rsvd; /* Reserved */
+}; /* writeback used with completion queues */
+
+#endif /* _IDPF_LAN_TXRX_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index c168388b2f15..e43ef450b02a 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -3,6 +3,9 @@
 
 #include "idpf.h"
 
+static const struct net_device_ops idpf_netdev_ops_splitq;
+static const struct net_device_ops idpf_netdev_ops_singleq;
+
 const char * const idpf_vport_vc_state_str[] = {
 	IDPF_FOREACH_VPORT_VC_STATE(IDPF_GEN_STRING)
 };
@@ -490,6 +493,12 @@ static int idpf_cfg_netdev(struct idpf_vport *vport)
 		return err;
 	}
 
+	/* assign netdev_ops */
+	if (idpf_is_queue_model_split(vport->txq_model))
+		netdev->netdev_ops = &idpf_netdev_ops_splitq;
+	else
+		netdev->netdev_ops = &idpf_netdev_ops_singleq;
+
 	/* setup watchdog timeout value to be 5 second */
 	netdev->watchdog_timeo = 5 * HZ;
 
@@ -581,6 +590,48 @@ static int idpf_get_free_slot(struct idpf_adapter *adapter)
 	return IDPF_NO_FREE_SLOT;
 }
 
+/**
+ * idpf_vport_stop - Disable a vport
+ * @vport: vport to disable
+ */
+static void idpf_vport_stop(struct idpf_vport *vport)
+{
+	if (vport->state <= __IDPF_VPORT_DOWN)
+		return;
+
+	mutex_lock(&vport->stop_mutex);
+
+	netif_carrier_off(vport->netdev);
+
+	idpf_vport_intr_rel(vport);
+	idpf_vport_queues_rel(vport);
+	vport->state = __IDPF_VPORT_DOWN;
+
+	mutex_unlock(&vport->stop_mutex);
+}
+
+/**
+ * idpf_stop - Disables a network interface
+ * @netdev: network interface device structure
+ *
+ * The stop entry point is called when an interface is de-activated by the OS,
+ * and the netdevice enters the DOWN state.  The hardware is still under the
+ * driver's control, but the netdev interface is disabled.
+ *
+ * Returns success only - not allowed to fail
+ */
+static int idpf_stop(struct net_device *netdev)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+
+	if (!vport)
+		return 0;
+
+	idpf_vport_stop(vport);
+
+	return 0;
+}
+
 /**
  * idpf_decfg_netdev - Unregister the netdev
  * @vport: vport for which netdev to be unregistered
@@ -623,6 +674,7 @@ static void idpf_vport_rel(struct idpf_vport *vport)
 		set_bit(i, vport->vc_state);
 	wake_up(&vport->vchnl_wq);
 
+	mutex_destroy(&vport->stop_mutex);
 	mutex_destroy(&vport->vc_buf_lock);
 
 	/* Clear all the bits */
@@ -760,6 +812,67 @@ void idpf_service_task(struct work_struct *work)
 				   msecs_to_jiffies(300));
 }
 
+/**
+ * idpf_vport_open - Bring up a vport
+ * @vport: vport to bring up
+ * @alloc_res: allocate queue resources
+ */
+static int idpf_vport_open(struct idpf_vport *vport, bool alloc_res)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	int err;
+
+	if (vport->state != __IDPF_VPORT_DOWN)
+		return -EBUSY;
+
+	/* we do not allow interface up just yet */
+	netif_carrier_off(vport->netdev);
+
+	if (alloc_res) {
+		err = idpf_vport_queues_alloc(vport);
+		if (err)
+			return err;
+	}
+
+	err = idpf_vport_intr_alloc(vport);
+	if (err) {
+		dev_err(&adapter->pdev->dev, "Failed to allocate interrupts for vport %u: %d\n",
+			vport->vport_id, err);
+		goto queues_rel;
+	}
+
+	err = idpf_vport_queue_ids_init(vport);
+	if (err) {
+		dev_err(&adapter->pdev->dev, "Failed to initialize queue ids for vport %u: %d\n",
+			vport->vport_id, err);
+		goto intr_rel;
+	}
+
+	err = idpf_queue_reg_init(vport);
+	if (err) {
+		dev_err(&adapter->pdev->dev, "Failed to initialize queue registers for vport %u: %d\n",
+			vport->vport_id, err);
+		goto intr_rel;
+	}
+
+	err = idpf_send_config_tx_queues_msg(vport);
+	if (err) {
+		dev_err(&adapter->pdev->dev, "Failed to configure queues for vport %u, %d\n",
+			vport->vport_id, err);
+		goto intr_rel;
+	}
+
+	return 0;
+
+intr_rel:
+	idpf_vport_intr_rel(vport);
+queues_rel:
+	if (alloc_res)
+		idpf_vport_queues_rel(vport);
+
+	return err;
+}
+
 /**
  * idpf_init_task - Delayed initialization task
  * @work: work_struct handle to our data
@@ -839,6 +952,11 @@ void idpf_init_task(struct work_struct *work)
 	if (err)
 		goto handle_err;
 
+	/* Once state is put into DOWN, driver is ready for dev_open */
+	vport->state = __IDPF_VPORT_DOWN;
+	if (test_and_clear_bit(IDPF_VPORT_UP_REQUESTED, vport_config->flags))
+		idpf_vport_open(vport, true);
+
 	mutex_lock(&adapter->sw_mutex);
 
 	/* Spawn and return 'idpf_init_task' work queue until all the
@@ -1052,6 +1170,28 @@ void idpf_vc_event_task(struct work_struct *work)
 	}
 }
 
+/**
+ * idpf_open - Called when a network interface becomes active
+ * @netdev: network interface device structure
+ *
+ * The open entry point is called when a network interface is made
+ * active by the system (IFF_UP).  At this point all resources needed
+ * for transmit and receive operations are allocated, the interrupt
+ * handler is registered with the OS, the netdev watchdog is enabled,
+ * and the stack is notified that the interface is ready.
+ *
+ * Returns 0 on success, negative value on failure
+ */
+static int idpf_open(struct net_device *netdev)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+
+	if (!vport)
+		return -EINVAL;
+
+	return idpf_vport_open(vport, true);
+}
+
 /**
  * idpf_alloc_dma_mem - Allocate dma memory
  * @hw: pointer to hw struct
@@ -1085,3 +1225,13 @@ void idpf_free_dma_mem(struct idpf_hw *hw, struct idpf_dma_mem *mem)
 	mem->va = NULL;
 	mem->pa = 0;
 }
+
+static const struct net_device_ops idpf_netdev_ops_splitq = {
+	.ndo_open = idpf_open,
+	.ndo_stop = idpf_stop,
+};
+
+static const struct net_device_ops idpf_netdev_ops_singleq = {
+	.ndo_open = idpf_open,
+	.ndo_stop = idpf_stop,
+};
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index d2bbbf16288d..da4faeefc661 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3,6 +3,333 @@
 
 #include "idpf.h"
 
+/**
+ * idpf_tx_buf_rel - Release a Tx buffer
+ * @tx_q: the queue that owns the buffer
+ * @tx_buf: the buffer to free
+ */
+static void idpf_tx_buf_rel(struct idpf_queue *tx_q, struct idpf_tx_buf *tx_buf)
+{
+	tx_buf->compl_tag = IDPF_SPLITQ_TX_INVAL_COMPL_TAG;
+}
+
+/**
+ * idpf_tx_buf_rel_all - Free any empty Tx buffers
+ * @txq: queue to be cleaned
+ */
+static void idpf_tx_buf_rel_all(struct idpf_queue *txq)
+{
+	u16 i;
+
+	/* Buffers already cleared, nothing to do */
+	if (!txq->tx_buf)
+		return;
+
+	/* Free all the Tx buffer sk_buffs */
+	for (i = 0; i < txq->desc_count; i++)
+		idpf_tx_buf_rel(txq, &txq->tx_buf[i]);
+
+	kfree(txq->tx_buf);
+	txq->tx_buf = NULL;
+
+	if (!txq->buf_stack.bufs)
+		return;
+
+	for (i = 0; i < txq->buf_stack.size; i++)
+		kfree(txq->buf_stack.bufs[i]);
+
+	kfree(txq->buf_stack.bufs);
+	txq->buf_stack.bufs = NULL;
+}
+
+/**
+ * idpf_tx_desc_rel - Free Tx resources per queue
+ * @txq: Tx descriptor ring for a specific queue
+ * @bufq: buffer q or completion q
+ *
+ * Free all transmit software resources
+ */
+static void idpf_tx_desc_rel(struct idpf_queue *txq, bool bufq)
+{
+	if (bufq)
+		idpf_tx_buf_rel_all(txq);
+
+	if (!txq->desc_ring)
+		return;
+
+	dmam_free_coherent(txq->dev, txq->size, txq->desc_ring, txq->dma);
+	txq->desc_ring = NULL;
+	txq->next_to_alloc = 0;
+	txq->next_to_use = 0;
+	txq->next_to_clean = 0;
+}
+
+/**
+ * idpf_tx_desc_rel_all - Free Tx Resources for All Queues
+ * @vport: virtual port structure
+ *
+ * Free all transmit software resources
+ */
+static void idpf_tx_desc_rel_all(struct idpf_vport *vport)
+{
+	int i, j;
+
+	if (!vport->txq_grps)
+		return;
+
+	for (i = 0; i < vport->num_txq_grp; i++) {
+		struct idpf_txq_group *txq_grp = &vport->txq_grps[i];
+
+		for (j = 0; j < txq_grp->num_txq; j++)
+			idpf_tx_desc_rel(txq_grp->txqs[j], true);
+
+		if (idpf_is_queue_model_split(vport->txq_model))
+			idpf_tx_desc_rel(txq_grp->complq, false);
+	}
+}
+
+/**
+ * idpf_tx_buf_alloc_all - Allocate memory for all buffer resources
+ * @tx_q: queue for which the buffers are allocated
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int idpf_tx_buf_alloc_all(struct idpf_queue *tx_q)
+{
+	int buf_size;
+	int i = 0;
+
+	/* Allocate book keeping buffers only. Buffers to be supplied to HW
+	 * are allocated by kernel network stack and received as part of skb
+	 */
+	buf_size = sizeof(struct idpf_tx_buf) * tx_q->desc_count;
+	tx_q->tx_buf = kzalloc(buf_size, GFP_KERNEL);
+	if (!tx_q->tx_buf)
+		return -ENOMEM;
+
+	/* Initialize tx_bufs with invalid completion tags */
+	for (i = 0; i < tx_q->desc_count; i++)
+		tx_q->tx_buf[i].compl_tag = IDPF_SPLITQ_TX_INVAL_COMPL_TAG;
+
+	/* Initialize tx buf stack for out-of-order completions if
+	 * flow scheduling offload is enabled
+	 */
+	tx_q->buf_stack.bufs =
+		kcalloc(tx_q->desc_count, sizeof(struct idpf_tx_stash *),
+			GFP_KERNEL);
+	if (!tx_q->buf_stack.bufs)
+		return -ENOMEM;
+
+	tx_q->buf_stack.size = tx_q->desc_count;
+	tx_q->buf_stack.top = tx_q->desc_count;
+
+	for (i = 0; i < tx_q->desc_count; i++) {
+		tx_q->buf_stack.bufs[i] = kzalloc(sizeof(*tx_q->buf_stack.bufs[i]),
+						  GFP_KERNEL);
+		if (!tx_q->buf_stack.bufs[i])
+			return -ENOMEM;
+	}
+
+	return 0;
+}
+
+/**
+ * idpf_tx_desc_alloc - Allocate the Tx descriptors
+ * @tx_q: the tx ring to set up
+ * @bufq: buffer or completion queue
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int idpf_tx_desc_alloc(struct idpf_queue *tx_q, bool bufq)
+{
+	struct device *dev = tx_q->dev;
+	u32 desc_sz;
+	int err;
+
+	if (bufq) {
+		err = idpf_tx_buf_alloc_all(tx_q);
+		if (err)
+			goto err_alloc;
+
+		desc_sz = sizeof(struct idpf_base_tx_desc);
+	} else {
+		desc_sz = sizeof(struct idpf_splitq_tx_compl_desc);
+	}
+
+	tx_q->size = tx_q->desc_count * desc_sz;
+
+	/* Allocate descriptors also round up to nearest 4K */
+	tx_q->size = ALIGN(tx_q->size, 4096);
+	tx_q->desc_ring = dmam_alloc_coherent(dev, tx_q->size, &tx_q->dma,
+					      GFP_KERNEL);
+	if (!tx_q->desc_ring) {
+		dev_err(dev, "Unable to allocate memory for the Tx descriptor ring, size=%d\n",
+			tx_q->size);
+		err = -ENOMEM;
+		goto err_alloc;
+	}
+
+	tx_q->next_to_alloc = 0;
+	tx_q->next_to_use = 0;
+	tx_q->next_to_clean = 0;
+	set_bit(__IDPF_Q_GEN_CHK, tx_q->flags);
+
+	return 0;
+
+err_alloc:
+	idpf_tx_desc_rel(tx_q, bufq);
+
+	return err;
+}
+
+/**
+ * idpf_tx_desc_alloc_all - allocate all queues Tx resources
+ * @vport: virtual port private structure
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int idpf_tx_desc_alloc_all(struct idpf_vport *vport)
+{
+	struct device *dev = &vport->adapter->pdev->dev;
+	int err = 0;
+	int i, j;
+
+	/* Setup buffer queues. In single queue model buffer queues and
+	 * completion queues will be same
+	 */
+	for (i = 0; i < vport->num_txq_grp; i++) {
+		for (j = 0; j < vport->txq_grps[i].num_txq; j++) {
+			struct idpf_queue *txq = vport->txq_grps[i].txqs[j];
+			u8 gen_bits = 0;
+			u16 bufidx_mask;
+
+			err = idpf_tx_desc_alloc(txq, true);
+			if (err) {
+				dev_err(dev, "Allocation for Tx Queue %u failed\n",
+					i);
+				goto err_out;
+			}
+
+			if (!idpf_is_queue_model_split(vport->txq_model))
+				continue;
+
+			txq->compl_tag_cur_gen = 0;
+
+			/* Determine the number of bits in the bufid
+			 * mask and add one to get the start of the
+			 * generation bits
+			 */
+			bufidx_mask = txq->desc_count - 1;
+			while (bufidx_mask >> 1) {
+				txq->compl_tag_gen_s++;
+				bufidx_mask = bufidx_mask >> 1;
+			}
+			txq->compl_tag_gen_s++;
+
+			gen_bits = IDPF_TX_SPLITQ_COMPL_TAG_WIDTH -
+							txq->compl_tag_gen_s;
+			txq->compl_tag_gen_max = GETMAXVAL(gen_bits);
+
+			/* Set bufid mask based on location of first
+			 * gen bit; it cannot simply be the descriptor
+			 * ring size-1 since we can have size values
+			 * where not all of those bits are set.
+			 */
+			txq->compl_tag_bufid_m =
+				GETMAXVAL(txq->compl_tag_gen_s);
+		}
+
+		if (!idpf_is_queue_model_split(vport->txq_model))
+			continue;
+
+		/* Setup completion queues */
+		err = idpf_tx_desc_alloc(vport->txq_grps[i].complq, false);
+		if (err) {
+			dev_err(dev, "Allocation for Tx Completion Queue %u failed\n",
+				i);
+			goto err_out;
+		}
+	}
+
+err_out:
+	if (err)
+		idpf_tx_desc_rel_all(vport);
+
+	return err;
+}
+
+/**
+ * idpf_txq_group_rel - Release all resources for txq groups
+ * @vport: vport to release txq groups on
+ */
+static void idpf_txq_group_rel(struct idpf_vport *vport)
+{
+	int i, j;
+
+	if (!vport->txq_grps)
+		return;
+
+	for (i = 0; i < vport->num_txq_grp; i++) {
+		struct idpf_txq_group *txq_grp = &vport->txq_grps[i];
+
+		for (j = 0; j < txq_grp->num_txq; j++) {
+			kfree(txq_grp->txqs[j]);
+			txq_grp->txqs[j] = NULL;
+		}
+		kfree(txq_grp->complq);
+		txq_grp->complq = NULL;
+	}
+	kfree(vport->txq_grps);
+	vport->txq_grps = NULL;
+}
+
+/**
+ * idpf_vport_queues_rel - Free memory for all queues
+ * @vport: virtual port
+ *
+ * Free the memory allocated for queues associated to a vport
+ */
+void idpf_vport_queues_rel(struct idpf_vport *vport)
+{
+	idpf_tx_desc_rel_all(vport);
+	idpf_txq_group_rel(vport);
+
+	kfree(vport->txqs);
+	vport->txqs = NULL;
+}
+
+/**
+ * idpf_vport_init_fast_path_txqs - Initialize fast path txq array
+ * @vport: vport to init txqs on
+ *
+ * We get a queue index from skb->queue_mapping and we need a fast way to
+ * dereference the queue from queue groups.  This allows us to quickly pull a
+ * txq based on a queue index.
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int idpf_vport_init_fast_path_txqs(struct idpf_vport *vport)
+{
+	int i, j, k = 0;
+
+	vport->txqs = kcalloc(vport->num_txq, sizeof(struct idpf_queue *),
+			      GFP_KERNEL);
+
+	if (!vport->txqs)
+		return -ENOMEM;
+
+	for (i = 0; i < vport->num_txq_grp; i++) {
+		struct idpf_txq_group *tx_grp = &vport->txq_grps[i];
+
+		for (j = 0; j < tx_grp->num_txq; j++, k++) {
+			vport->txqs[k] = tx_grp->txqs[j];
+			vport->txqs[k]->idx = k;
+		}
+	}
+
+	return 0;
+}
+
 /**
  * idpf_vport_init_num_qs - Initialize number of queues
  * @vport: vport to initialize queues
@@ -180,3 +507,217 @@ void idpf_vport_calc_num_q_groups(struct idpf_vport *vport)
 	else
 		vport->num_rxq_grp = IDPF_DFLT_SINGLEQ_RX_Q_GROUPS;
 }
+
+/**
+ * idpf_vport_calc_numq_per_grp - Calculate number of queues per group
+ * @vport: vport to calculate queues for
+ * @num_txq: return parameter for number of TX queues
+ * @num_rxq: return parameter for number of RX queues
+ */
+static void idpf_vport_calc_numq_per_grp(struct idpf_vport *vport,
+					 u16 *num_txq, u16 *num_rxq)
+{
+	if (idpf_is_queue_model_split(vport->txq_model))
+		*num_txq = IDPF_DFLT_SPLITQ_TXQ_PER_GROUP;
+	else
+		*num_txq = vport->num_txq;
+}
+
+/**
+ * idpf_txq_group_alloc - Allocate all txq group resources
+ * @vport: vport to allocate txq groups for
+ * @num_txq: number of txqs to allocate for each group
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
+{
+	int err = 0, i;
+
+	vport->txq_grps = kcalloc(vport->num_txq_grp,
+				  sizeof(*vport->txq_grps), GFP_KERNEL);
+	if (!vport->txq_grps)
+		return -ENOMEM;
+
+	for (i = 0; i < vport->num_txq_grp; i++) {
+		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
+		struct idpf_adapter *adapter = vport->adapter;
+		int j;
+
+		tx_qgrp->vport = vport;
+		tx_qgrp->num_txq = num_txq;
+
+		for (j = 0; j < tx_qgrp->num_txq; j++) {
+			tx_qgrp->txqs[j] = kzalloc(sizeof(*tx_qgrp->txqs[j]),
+						   GFP_KERNEL);
+			if (!tx_qgrp->txqs[j]) {
+				err = -ENOMEM;
+				goto err_alloc;
+			}
+		}
+
+		for (j = 0; j < tx_qgrp->num_txq; j++) {
+			struct idpf_queue *q = tx_qgrp->txqs[j];
+
+			q->dev = &adapter->pdev->dev;
+			q->desc_count = vport->txq_desc_count;
+			q->tx_max_bufs = idpf_get_max_tx_bufs(adapter);
+			q->tx_min_pkt_len = idpf_get_min_tx_pkt_len(adapter);
+			q->vport = vport;
+			q->txq_grp = tx_qgrp;
+			hash_init(q->sched_buf_hash);
+
+			if (!idpf_is_cap_ena(adapter, IDPF_OTHER_CAPS,
+					     VIRTCHNL2_CAP_SPLITQ_QSCHED))
+				set_bit(__IDPF_Q_FLOW_SCH_EN, q->flags);
+		}
+
+		if (!idpf_is_queue_model_split(vport->txq_model))
+			continue;
+
+		tx_qgrp->complq = kcalloc(IDPF_COMPLQ_PER_GROUP,
+					  sizeof(*tx_qgrp->complq),
+					  GFP_KERNEL);
+		if (!tx_qgrp->complq) {
+			err = -ENOMEM;
+			goto err_alloc;
+		}
+
+		tx_qgrp->complq->dev = &adapter->pdev->dev;
+		tx_qgrp->complq->desc_count = vport->complq_desc_count;
+		tx_qgrp->complq->vport = vport;
+		tx_qgrp->complq->txq_grp = tx_qgrp;
+	}
+
+	return 0;
+
+err_alloc:
+	idpf_txq_group_rel(vport);
+
+	return err;
+}
+
+/**
+ * idpf_vport_queue_grp_alloc_all - Allocate all queue groups/resources
+ * @vport: vport with qgrps to allocate
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int idpf_vport_queue_grp_alloc_all(struct idpf_vport *vport)
+{
+	u16 num_txq, num_rxq;
+	int err;
+
+	idpf_vport_calc_numq_per_grp(vport, &num_txq, &num_rxq);
+
+	err = idpf_txq_group_alloc(vport, num_txq);
+	if (err)
+		goto err_out;
+
+	return 0;
+
+err_out:
+	idpf_txq_group_rel(vport);
+
+	return err;
+}
+
+/**
+ * idpf_vport_queues_alloc - Allocate memory for all queues
+ * @vport: virtual port
+ *
+ * Allocate memory for queues associated with a vport.  Returns 0 on success,
+ * negative on failure.
+ */
+int idpf_vport_queues_alloc(struct idpf_vport *vport)
+{
+	int err;
+
+	err = idpf_vport_queue_grp_alloc_all(vport);
+	if (err)
+		goto err_out;
+
+	err = idpf_tx_desc_alloc_all(vport);
+	if (err)
+		goto err_out;
+
+	err = idpf_vport_init_fast_path_txqs(vport);
+	if (err)
+		goto err_out;
+
+	return 0;
+
+err_out:
+	idpf_vport_queues_rel(vport);
+
+	return err;
+}
+
+/**
+ * idpf_vport_intr_rel - Free memory allocated for interrupt vectors
+ * @vport: virtual port
+ *
+ * Free the memory allocated for interrupt vectors  associated to a vport
+ */
+void idpf_vport_intr_rel(struct idpf_vport *vport)
+{
+	int v_idx;
+
+	if (!vport->netdev)
+		return;
+
+	for (v_idx = 0; v_idx < vport->num_q_vectors; v_idx++) {
+		struct idpf_q_vector *q_vector = &vport->q_vectors[v_idx];
+
+		kfree(q_vector->tx);
+		q_vector->tx = NULL;
+	}
+
+	kfree(vport->q_vectors);
+	vport->q_vectors = NULL;
+}
+
+/**
+ * idpf_vport_intr_alloc - Allocate memory for interrupt vectors
+ * @vport: virtual port
+ *
+ * We allocate one q_vector per queue interrupt. If allocation fails we
+ * return -ENOMEM.
+ */
+int idpf_vport_intr_alloc(struct idpf_vport *vport)
+{
+	struct idpf_q_vector *q_vector;
+	u16 txqs_per_vector;
+	int v_idx, err;
+
+	vport->q_vectors = kcalloc(vport->num_q_vectors,
+				   sizeof(struct idpf_q_vector), GFP_KERNEL);
+	if (!vport->q_vectors)
+		return -ENOMEM;
+
+	txqs_per_vector = DIV_ROUND_UP(vport->num_txq, vport->num_q_vectors);
+
+	for (v_idx = 0; v_idx < vport->num_q_vectors; v_idx++) {
+		q_vector = &vport->q_vectors[v_idx];
+		q_vector->vport = vport;
+
+		q_vector->tx_itr_value = IDPF_ITR_TX_DEF;
+		q_vector->tx_intr_mode = IDPF_ITR_DYNAMIC;
+		q_vector->tx_itr_idx = VIRTCHNL2_ITR_IDX_1;
+
+		q_vector->tx = kcalloc(txqs_per_vector,
+				       sizeof(struct idpf_queue *),
+				       GFP_KERNEL);
+		if (!q_vector->tx) {
+			err = -ENOMEM;
+			goto error;
+		}
+	}
+
+	return 0;
+
+error:
+	idpf_vport_intr_rel(vport);
+
+	return err;
+}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index bfceb765aa41..b158cbb1bfe6 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -4,10 +4,12 @@
 #ifndef _IDPF_TXRX_H_
 #define _IDPF_TXRX_H_
 
+#define IDPF_LARGE_MAX_Q			256
 #define IDPF_MAX_Q				16
 #define IDPF_MIN_Q				2
 
 #define IDPF_MIN_TXQ_COMPLQ_DESC		256
+#define IDPF_MAX_QIDS				256
 
 #define MIN_SUPPORT_TXDID (\
 	VIRTCHNL2_TXDID_FLEX_FLOW_SCHED |\
@@ -55,6 +57,44 @@
 #define IDPF_PACKET_HDR_PAD	\
 	(ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN * 2)
 
+#define IDPF_TX_SPLITQ_COMPL_TAG_WIDTH	16
+
+#define IDPF_TX_MIN_LEN			17
+
+struct idpf_tx_buf {
+	union {
+		/* Splitq only: Unique identifier for a buffer; used to compare
+		 * with completion tag returned in buffer completion event.
+		 * Because the completion tag is expected to be the same in all
+		 * data descriptors for a given packet, and a single packet can
+		 * span multiple buffers, we need this field to track all
+		 * buffers associated with this completion tag independently of
+		 * the buf_id. The tag consists of a N bit buf_id and M upper
+		 * order "generation bits". See compl_tag_bufid_m and
+		 * compl_tag_gen_s in struct idpf_queue. We'll use a value of -1
+		 * to indicate the tag is not valid.
+		 */
+		int compl_tag;
+#define IDPF_SPLITQ_TX_INVAL_COMPL_TAG	-1
+
+		/* Singleq only: used to indicate the corresponding entry
+		 * in the descriptor ring was used for a context descriptor and
+		 * this buffer entry should be skipped.
+		 */
+		bool ctx_entry;
+	};
+};
+
+struct idpf_tx_stash {
+	/* stub */
+};
+
+struct idpf_buf_lifo {
+	u16 top;
+	u16 size;
+	struct idpf_tx_stash **bufs;
+};
+
 #define IDPF_RX_MAX_PTYPE_PROTO_IDS    32
 #define IDPF_RX_MAX_PTYPE_SZ	(sizeof(struct virtchnl2_ptype) + \
 				 (sizeof(u16) * IDPF_RX_MAX_PTYPE_PROTO_IDS))
@@ -165,6 +205,23 @@ struct idpf_rx_ptype_decoded {
 	u32 payload_layer:3;
 };
 
+enum idpf_queue_flags_t {
+	/* Queues operating in splitq mode use a generation bit to identify new
+	 * descriptor writebacks on the ring. HW sets the gen bit to 1 on the
+	 * first writeback of any given descriptor. After the ring wraps, HW
+	 * sets the gen bit of those descriptors to 0, and continues flipping
+	 * 0->1 or 1->0 on each ring wrap. SW maintains its own gen bit to know
+	 * what value will indicate writebacks on the next pass around the
+	 * ring. E.g. it is initialized to 1 and knows that reading a gen bit
+	 * of 1 in any descriptor on the initial pass of the ring indicates a
+	 * writeback. It also flips on every ring wrap.
+	 */
+	__IDPF_Q_GEN_CHK,
+	__IDPF_Q_FLOW_SCH_EN,
+
+	__IDPF_Q_FLAGS_NBITS,
+};
+
 struct idpf_intr_reg {
 	void __iomem *dyn_ctl;
 	u32 dyn_ctl_intena_m;
@@ -174,11 +231,126 @@ struct idpf_intr_reg {
 };
 
 struct idpf_q_vector {
+	struct idpf_vport *vport;
 	u16 v_idx;		/* index in the vport->q_vector array */
 	struct idpf_intr_reg intr_reg;
+
+	struct idpf_queue **tx;
+	u16 tx_itr_value;
+	bool tx_intr_mode;
+	u32 tx_itr_idx;
+
 	char name[IDPF_INT_NAME_STR_LEN];
 };
 
+#define IDPF_ITR_DYNAMIC	1
+#define IDPF_ITR_20K		0x0032
+#define IDPF_ITR_TX_DEF		IDPF_ITR_20K
+
+/* queue associated with a vport */
+struct idpf_queue {
+	struct device *dev;		/* Used for DMA mapping */
+	struct idpf_vport *vport;	/* Backreference to associated vport */
+	struct idpf_txq_group *txq_grp;
+	/* bufq: Used as group id, either 0 or 1, on clean bufq uses this
+	 *       index to determine which group of refill queues to clean.
+	 *       Bufqs are use in splitq only.
+	 * txq: Index to map between txq group and hot path Tx ptrs stored in
+	 *      vport. Used in both singleq/splitq
+	 */
+	u16 idx;
+	/* Used for both queue models single and split. In splitq model relevant
+	 * only to txq
+	 */
+	void __iomem *tail;
+	/* Used in both singleq and splitq */
+	struct idpf_tx_buf *tx_buf;
+	u16 q_type;
+	/* Queue id(Tx/Tx compl/Rx/Bufq) */
+	u32 q_id;
+	u16 desc_count;		/* Number of descriptors */
+
+	/* Relevant in both split & single txq & bufq */
+	u16 next_to_use;
+	/* In split q model only relevant for tx complq and rxq */
+	u16 next_to_clean;	/* used in interrupt processing */
+	/* Used only for Rx. In splitq model only relevant to rxq */
+	u16 next_to_alloc;
+	/* Generation bit check stored, as HW flips the bit at Queue end */
+	DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
+
+	/* Used for both queue models single and split. In splitq model relevant
+	 * only to Tx compl Q and Rx compl Q
+	 */
+	struct idpf_q_vector *q_vector;	/* Backreference to associated vector */
+	unsigned int size;		/* Length of descriptor ring in bytes */
+	dma_addr_t dma;			/* physical address of ring */
+	void *desc_ring;		/* Descriptor ring memory */
+
+	u16 tx_max_bufs;		/* Max buffers that can be transmitted
+					 * with scatter-gather
+					 */
+	u8 tx_min_pkt_len;		/* Min supported packet length */
+
+	/* Flow based scheduling related fields only */
+	struct idpf_buf_lifo buf_stack;	/* Stack of empty buffers to store
+					 * buffer info for out of order
+					 * buffer completions
+					 */
+
+	/* The format of the completion tag will change based on the TXQ
+	 * descriptor ring size so that we can maintain roughly the same level
+	 * of "uniqueness" across all descriptor sizes. For example, if the
+	 * TXQ descriptor ring size is 64 (the minimum size supported), the
+	 * completion tag will be formatted as below:
+	 * 15                 6 5         0
+	 * --------------------------------
+	 * |    GEN=0-1023     |IDX = 0-63|
+	 * --------------------------------
+	 *
+	 * This gives us 64*1024 = 65536 possible unique values. Similarly, if
+	 * the TXQ descriptor ring size is 8160 (the maximum size supported),
+	 * the completion tag will be formatted as below:
+	 * 15 13 12                       0
+	 * --------------------------------
+	 * |GEN |       IDX = 0-8159      |
+	 * --------------------------------
+	 *
+	 * This gives us 8*8160 = 65280 possible unique values.
+	 */
+	u16 compl_tag_bufid_m;
+	u16 compl_tag_gen_s;
+
+	/* compl_tag_cur_gen keeps track of the current completion tag generation,
+	 * whereas compl_tag_gen_max determines when compl_tag_cur_gen should be
+	 * reset.
+	 */
+	u16 compl_tag_cur_gen;
+	u16 compl_tag_gen_max;
+
+	DECLARE_HASHTABLE(sched_buf_hash, 12);
+} ____cacheline_internodealigned_in_smp;
+
+/* Between singleq and splitq, a txq_group is largely the same except for the
+ * complq. In splitq a single complq is responsible for handling completions
+ * for some number of txqs associated in this txq_group.
+ */
+struct idpf_txq_group {
+	struct idpf_vport *vport; /* back pointer */
+
+	u16 num_txq;
+	/* store queue pointers */
+	struct idpf_queue *txqs[IDPF_LARGE_MAX_Q];
+
+	/* splitq only */
+	struct idpf_queue *complq;
+
+	/* Total number of completions pending for the completion queue,
+	 * acculumated for all txqs associated with that completion queue
+	 */
+	u64 num_completions_pending;
+};
+
 void idpf_vport_init_num_qs(struct idpf_vport *vport,
 			    struct virtchnl2_create_vport *vport_msg);
 void idpf_vport_calc_num_q_desc(struct idpf_vport *vport);
@@ -186,5 +358,9 @@ int idpf_vport_calc_total_qs(struct idpf_adapter *adapter, u16 vport_index,
 			     struct virtchnl2_create_vport *vport_msg,
 			     struct idpf_vport_max_q *max_q);
 void idpf_vport_calc_num_q_groups(struct idpf_vport *vport);
+int idpf_vport_queues_alloc(struct idpf_vport *vport);
+void idpf_vport_queues_rel(struct idpf_vport *vport);
+void idpf_vport_intr_rel(struct idpf_vport *vport);
+int idpf_vport_intr_alloc(struct idpf_vport *vport);
 
 #endif /* !_IDPF_TXRX_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 76c9a77a6513..621cda89e276 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -166,6 +166,9 @@ static int idpf_find_vport(struct idpf_adapter *adapter,
 	case VIRTCHNL2_OP_DESTROY_VPORT:
 		v_id = le32_to_cpu(((struct virtchnl2_vport *)vc_msg)->vport_id);
 		break;
+	case VIRTCHNL2_OP_CONFIG_TX_QUEUES:
+		v_id = le32_to_cpu(((struct virtchnl2_config_tx_queues *)vc_msg)->vport_id);
+		break;
 	case VIRTCHNL2_OP_ADD_MAC_ADDR:
 	case VIRTCHNL2_OP_DEL_MAC_ADDR:
 		v_id = le32_to_cpu(((struct virtchnl2_mac_addr_list *)vc_msg)->vport_id);
@@ -366,6 +369,11 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter, u32 op,
 					   IDPF_VC_DESTROY_VPORT,
 					   IDPF_VC_DESTROY_VPORT_ERR);
 			break;
+		case VIRTCHNL2_OP_CONFIG_TX_QUEUES:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_CONFIG_TXQ,
+					   IDPF_VC_CONFIG_TXQ_ERR);
+			break;
 		case VIRTCHNL2_OP_ALLOC_VECTORS:
 			idpf_recv_vchnl_op(adapter, NULL, &ctlq_msg,
 					   IDPF_VC_ALLOC_VECTORS,
@@ -791,6 +799,126 @@ static void idpf_init_avail_queues(struct idpf_adapter *adapter)
 	avail_queues->avail_complq = le16_to_cpu(caps->max_tx_complq);
 }
 
+/**
+ * idpf_vport_get_q_reg - Get the queue registers for the vport
+ * @reg_vals: register values needing to be set
+ * @num_regs: amount we expect to fill
+ * @q_type: queue model
+ * @chunks: queue regs received over mailbox
+ *
+ * This function parses the queue register offsets from the queue register
+ * chunk information, with a specific queue type and stores it into the array
+ * passed as an argument. It returns the actual number of queue registers that
+ * are filled.
+ */
+static int idpf_vport_get_q_reg(u32 *reg_vals, int num_regs, u32 q_type,
+				struct virtchnl2_queue_reg_chunks *chunks)
+{
+	u16 num_chunks = le16_to_cpu(chunks->num_chunks);
+	int reg_filled = 0, i;
+	u32 reg_val;
+
+	while (num_chunks--) {
+		struct virtchnl2_queue_reg_chunk *chunk;
+		u16 num_q;
+
+		chunk = &chunks->chunks[num_chunks];
+		if (le32_to_cpu(chunk->type) != q_type)
+			continue;
+
+		num_q = le32_to_cpu(chunk->num_queues);
+		reg_val = le64_to_cpu(chunk->qtail_reg_start);
+		for (i = 0; i < num_q && reg_filled < num_regs ; i++) {
+			reg_vals[reg_filled++] = reg_val;
+			reg_val += le32_to_cpu(chunk->qtail_reg_spacing);
+		}
+	}
+
+	return reg_filled;
+}
+
+/**
+ * __idpf_queue_reg_init - initialize queue registers
+ * @vport: virtual port structure
+ * @reg_vals: registers we are initializing
+ * @num_regs: how many registers there are in total
+ * @q_type: queue model
+ *
+ * Return number of queues that are initialized
+ */
+static int __idpf_queue_reg_init(struct idpf_vport *vport, u32 *reg_vals,
+				 int num_regs, u32 q_type)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	int i, j, k = 0;
+
+	switch (q_type) {
+	case VIRTCHNL2_QUEUE_TYPE_TX:
+		for (i = 0; i < vport->num_txq_grp; i++) {
+			struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
+
+			for (j = 0; j < tx_qgrp->num_txq && k < num_regs; j++, k++)
+				tx_qgrp->txqs[j]->tail =
+					idpf_get_reg_addr(adapter, reg_vals[k]);
+		}
+		break;
+	default:
+		break;
+	}
+
+	return k;
+}
+
+/**
+ * idpf_queue_reg_init - initialize queue registers
+ * @vport: virtual port structure
+ *
+ * Return 0 on success, negative on failure
+ */
+int idpf_queue_reg_init(struct idpf_vport *vport)
+{
+	struct virtchnl2_create_vport *vport_params;
+	struct virtchnl2_queue_reg_chunks *chunks;
+	struct idpf_vport_config *vport_config;
+	u16 vport_idx = vport->idx;
+	int num_regs, ret = 0;
+	u32 *reg_vals;
+
+	/* We may never deal with more than 256 same type of queues */
+	reg_vals = kzalloc(sizeof(void *) * IDPF_LARGE_MAX_Q, GFP_KERNEL);
+	if (!reg_vals)
+		return -ENOMEM;
+
+	vport_config = vport->adapter->vport_config[vport_idx];
+	if (vport_config->req_qs_chunks) {
+		struct virtchnl2_add_queues *vc_aq =
+		  (struct virtchnl2_add_queues *)vport_config->req_qs_chunks;
+		chunks = &vc_aq->chunks;
+	} else {
+		vport_params = vport->adapter->vport_params_recvd[vport_idx];
+		chunks = &vport_params->chunks;
+	}
+
+	/* Initialize Tx queue tail register address */
+	num_regs = idpf_vport_get_q_reg(reg_vals, IDPF_LARGE_MAX_Q,
+					VIRTCHNL2_QUEUE_TYPE_TX,
+					chunks);
+	if (num_regs < vport->num_txq) {
+		ret = -EINVAL;
+		goto free_reg_vals;
+	}
+
+	num_regs = __idpf_queue_reg_init(vport, reg_vals, num_regs,
+					 VIRTCHNL2_QUEUE_TYPE_TX);
+	if (num_regs < vport->num_txq)
+		ret = -EINVAL;
+
+free_reg_vals:
+	kfree(reg_vals);
+
+	return ret;
+}
+
 /**
  * idpf_send_create_vport_msg - Send virtchnl create vport message
  * @adapter: Driver specific private structure
@@ -940,6 +1068,131 @@ int idpf_send_destroy_vport_msg(struct idpf_vport *vport)
 	return err;
 }
 
+/**
+ * idpf_send_config_tx_queues_msg - Send virtchnl config tx queues message
+ * @vport: virtual port data structure
+ *
+ * Send config tx queues virtchnl message. Returns 0 on success, negative on
+ * failure.
+ */
+int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
+{
+	struct virtchnl2_config_tx_queues *ctq = NULL;
+	u32 config_sz, chunk_sz, buf_sz = 0;
+	int totqs, num_msgs, num_chunks;
+	struct virtchnl2_txq_info *qi;
+	int err = 0, i, k = 0;
+
+	totqs = vport->num_txq + vport->num_complq;
+	qi = kcalloc(totqs, sizeof(struct virtchnl2_txq_info), GFP_KERNEL);
+	if (!qi)
+		return -ENOMEM;
+
+	/* Populate the queue info buffer with all queue context info */
+	for (i = 0; i < vport->num_txq_grp; i++) {
+		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
+		int j;
+
+		for (j = 0; j < tx_qgrp->num_txq; j++, k++) {
+			qi[k].queue_id =
+				cpu_to_le32(tx_qgrp->txqs[j]->q_id);
+			qi[k].model =
+				cpu_to_le16(vport->txq_model);
+			qi[k].type =
+				cpu_to_le32(tx_qgrp->txqs[j]->q_type);
+			qi[k].ring_len =
+				cpu_to_le16(tx_qgrp->txqs[j]->desc_count);
+			qi[k].dma_ring_addr =
+				cpu_to_le64(tx_qgrp->txqs[j]->dma);
+			if (idpf_is_queue_model_split(vport->txq_model)) {
+				struct idpf_queue *q = tx_qgrp->txqs[j];
+
+				qi[k].tx_compl_queue_id =
+					cpu_to_le16(tx_qgrp->complq->q_id);
+				qi[k].relative_queue_id = cpu_to_le16(j);
+
+				if (test_bit(__IDPF_Q_FLOW_SCH_EN, q->flags))
+					qi[k].sched_mode =
+					cpu_to_le16(VIRTCHNL2_TXQ_SCHED_MODE_FLOW);
+				else
+					qi[k].sched_mode =
+					cpu_to_le16(VIRTCHNL2_TXQ_SCHED_MODE_QUEUE);
+			} else {
+				qi[k].sched_mode =
+					cpu_to_le16(VIRTCHNL2_TXQ_SCHED_MODE_QUEUE);
+			}
+		}
+
+		if (!idpf_is_queue_model_split(vport->txq_model))
+			continue;
+
+		qi[k].queue_id = cpu_to_le32(tx_qgrp->complq->q_id);
+		qi[k].model = cpu_to_le16(vport->txq_model);
+		qi[k].type = cpu_to_le32(tx_qgrp->complq->q_type);
+		qi[k].ring_len = cpu_to_le16(tx_qgrp->complq->desc_count);
+		qi[k].dma_ring_addr = cpu_to_le64(tx_qgrp->complq->dma);
+
+		k++;
+	}
+
+	/* Make sure accounting agrees */
+	if (k != totqs) {
+		err = -EINVAL;
+		goto error;
+	}
+
+	/* Chunk up the queue contexts into multiple messages to avoid
+	 * sending a control queue message buffer that is too large
+	 */
+	config_sz = sizeof(struct virtchnl2_config_tx_queues);
+	chunk_sz = sizeof(struct virtchnl2_txq_info);
+
+	num_chunks = min_t(u32, IDPF_NUM_CHUNKS_PER_MSG(config_sz, chunk_sz),
+			   totqs);
+	num_msgs = DIV_ROUND_UP(totqs, num_chunks);
+
+	buf_sz = struct_size(ctq, qinfo, num_chunks);
+	ctq = kzalloc(buf_sz, GFP_KERNEL);
+	if (!ctq) {
+		err = -ENOMEM;
+		goto error;
+	}
+
+	mutex_lock(&vport->vc_buf_lock);
+
+	for (i = 0, k = 0; i < num_msgs; i++) {
+		memset(ctq, 0, buf_sz);
+		ctq->vport_id = cpu_to_le32(vport->vport_id);
+		ctq->num_qinfo = cpu_to_le16(num_chunks);
+		memcpy(ctq->qinfo, &qi[k], chunk_sz * num_chunks);
+
+		err = idpf_send_mb_msg(vport->adapter,
+				       VIRTCHNL2_OP_CONFIG_TX_QUEUES,
+				       buf_sz, (u8 *)ctq);
+		if (err)
+			goto mbx_error;
+
+		err = idpf_wait_for_event(vport->adapter, vport, IDPF_VC_CONFIG_TXQ,
+					  IDPF_VC_CONFIG_TXQ_ERR);
+		if (err)
+			goto mbx_error;
+
+		k += num_chunks;
+		totqs -= num_chunks;
+		num_chunks = min(num_chunks, totqs);
+		/* Recalculate buffer size */
+		buf_sz = struct_size(ctq, qinfo, num_chunks);
+	}
+
+mbx_error:
+	mutex_unlock(&vport->vc_buf_lock);
+	kfree(ctq);
+error:
+	kfree(qi);
+
+	return err;
+}
+
 /**
  * idpf_send_alloc_vectors_msg - Send virtchnl alloc vectors message
  * @adapter: Driver specific private structure
@@ -1689,6 +1942,154 @@ int idpf_get_vec_ids(struct idpf_adapter *adapter,
 	return num_vecid_filled;
 }
 
+/**
+ * idpf_vport_get_queue_ids - Initialize queue id from Mailbox parameters
+ * @qids: Array of queue ids
+ * @num_qids: number of queue ids
+ * @q_type: queue model
+ * @chunks: queue ids received over mailbox
+ *
+ * Will initialize all queue ids with ids received as mailbox parameters
+ * Returns number of ids filled
+ */
+static int idpf_vport_get_queue_ids(u32 *qids, int num_qids, u16 q_type,
+				    struct virtchnl2_queue_reg_chunks *chunks)
+{
+	u16 num_chunks = le16_to_cpu(chunks->num_chunks);
+	u32 num_q_id_filled = 0, i;
+	u32 start_q_id, num_q;
+
+	while (num_chunks--) {
+		struct virtchnl2_queue_reg_chunk *chunk;
+
+		chunk = &chunks->chunks[num_chunks];
+		if (le32_to_cpu(chunk->type) != q_type)
+			continue;
+
+		num_q = le32_to_cpu(chunk->num_queues);
+		start_q_id = le32_to_cpu(chunk->start_queue_id);
+
+		for (i = 0; i < num_q; i++) {
+			if ((num_q_id_filled + i) < num_qids) {
+				qids[num_q_id_filled + i] = start_q_id;
+				start_q_id++;
+			} else {
+				break;
+			}
+		}
+		num_q_id_filled = num_q_id_filled + i;
+	}
+
+	return num_q_id_filled;
+}
+
+/**
+ * __idpf_vport_queue_ids_init - Initialize queue ids from Mailbox parameters
+ * @vport: virtual port for which the queues ids are initialized
+ * @qids: queue ids
+ * @num_qids: number of queue ids
+ * @q_type: type of queue
+ *
+ * Will initialize all queue ids with ids received as mailbox
+ * parameters. Returns number of queue ids initialized.
+ */
+static int __idpf_vport_queue_ids_init(struct idpf_vport *vport, const u32 *qids,
+				       int num_qids, u32 q_type)
+{
+	int i, j, k = 0;
+
+	switch (q_type) {
+	case VIRTCHNL2_QUEUE_TYPE_TX:
+		for (i = 0; i < vport->num_txq_grp; i++) {
+			struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
+
+			for (j = 0; j < tx_qgrp->num_txq && k < num_qids; j++, k++) {
+				tx_qgrp->txqs[j]->q_id = qids[k];
+				tx_qgrp->txqs[j]->q_type =
+					VIRTCHNL2_QUEUE_TYPE_TX;
+			}
+		}
+		break;
+	case VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION:
+		for (i = 0; i < vport->num_txq_grp && k < num_qids; i++, k++) {
+			struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
+
+			tx_qgrp->complq->q_id = qids[k];
+			tx_qgrp->complq->q_type =
+				VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION;
+		}
+		break;
+	default:
+		break;
+	}
+
+	return k;
+}
+
+/**
+ * idpf_vport_queue_ids_init - Initialize queue ids from Mailbox parameters
+ * @vport: virtual port for which the queues ids are initialized
+ *
+ * Will initialize all queue ids with ids received as mailbox parameters.
+ * Returns 0 on success, negative if all the queues are not initialized.
+ */
+int idpf_vport_queue_ids_init(struct idpf_vport *vport)
+{
+	struct virtchnl2_create_vport *vport_params;
+	struct virtchnl2_queue_reg_chunks *chunks;
+	struct idpf_vport_config *vport_config;
+	u16 vport_idx = vport->idx;
+	int num_ids, err = 0;
+	u16 q_type;
+	u32 *qids;
+
+	vport_config = vport->adapter->vport_config[vport_idx];
+	if (vport_config->req_qs_chunks) {
+		struct virtchnl2_add_queues *vc_aq =
+			(struct virtchnl2_add_queues *)vport_config->req_qs_chunks;
+		chunks = &vc_aq->chunks;
+	} else {
+		vport_params = vport->adapter->vport_params_recvd[vport_idx];
+		chunks = &vport_params->chunks;
+	}
+
+	qids = kcalloc(IDPF_MAX_QIDS, sizeof(u32), GFP_KERNEL);
+	if (!qids)
+		return -ENOMEM;
+
+	num_ids = idpf_vport_get_queue_ids(qids, IDPF_MAX_QIDS,
+					   VIRTCHNL2_QUEUE_TYPE_TX,
+					   chunks);
+	if (num_ids < vport->num_txq) {
+		err = -EINVAL;
+		goto mem_rel;
+	}
+	num_ids = __idpf_vport_queue_ids_init(vport, qids, num_ids,
+					      VIRTCHNL2_QUEUE_TYPE_TX);
+	if (num_ids < vport->num_txq) {
+		err = -EINVAL;
+		goto mem_rel;
+	}
+
+	if (!idpf_is_queue_model_split(vport->txq_model))
+		goto mem_rel;
+
+	q_type = VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION;
+	num_ids = idpf_vport_get_queue_ids(qids, IDPF_MAX_QIDS, q_type, chunks);
+	if (num_ids < vport->num_complq) {
+		err = -EINVAL;
+		goto mem_rel;
+	}
+	num_ids = __idpf_vport_queue_ids_init(vport, qids, num_ids, q_type);
+	if (num_ids < vport->num_complq)
+		err = -EINVAL;
+
+mem_rel:
+	kfree(qids);
+
+	return err;
+}
+
 /**
  * idpf_is_capability_ena - Default implementation of capability checking
  * @adapter: Private data struct
-- 
2.37.3


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

