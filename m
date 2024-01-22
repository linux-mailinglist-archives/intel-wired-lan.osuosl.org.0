Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E3B83750A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jan 2024 22:12:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5561941A47;
	Mon, 22 Jan 2024 21:12:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5561941A47
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705957946;
	bh=ygOu2U56QElzy0V3PTAw4H30lCllPZeMfoCuBJ4L4hU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=04KvSP1TEuCwQx78p9u4HYR5aDSFeHnnTVUFYrJIjJP/n91AH6buvYIj6b/aACkrc
	 qCrVW+kdbPfU3I6rZoWY7FnchGxqzLcUG2JpJuqGnG9YU44ZMm5GlzSXh3r+vwyO5n
	 PR0/AEN3GZWrttwABZJl5Z8PPkiQrYqfcmfIPnxfX8ofKXy1Mh/JJ8K/IvBmIcqfBa
	 7+Y4v09fYY7qk58tj8w4fWF+0eZJY8Qs5NqpaFlpWatCBq3voZSH9O9RL1/7FdCZth
	 5+uMv+0anrcdtlgv11O1Bh/41reZLp7tsyzvUWc4Zl/osqUxYoYYQnyi1W+3/M0oXQ
	 Q3oAerS5Fv3uQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UsyEjrrZxIQL; Mon, 22 Jan 2024 21:12:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C25EE40108;
	Mon, 22 Jan 2024 21:12:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C25EE40108
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 128551BF3A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jan 2024 21:11:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DDF5B4098B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jan 2024 21:11:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DDF5B4098B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hd-3DcR6CPds for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jan 2024 21:11:53 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B0003409DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jan 2024 21:11:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B0003409DF
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="19897153"
X-IronPort-AV: E=Sophos;i="6.05,212,1701158400"; d="scan'208";a="19897153"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2024 13:11:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,212,1701158400"; d="scan'208";a="27494345"
Received: from dev1-atbrady.jf.intel.com ([10.166.241.35])
 by orviesa002.jf.intel.com with ESMTP; 22 Jan 2024 13:11:53 -0800
From: Alan Brady <alan.brady@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 22 Jan 2024 13:11:25 -0800
Message-Id: <20240122211125.840833-7-alan.brady@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240122211125.840833-1-alan.brady@intel.com>
References: <20240122211125.840833-1-alan.brady@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705957914; x=1737493914;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GJdAcXFljr6xxxZHJzAWUMhLT//DGujNg3p5pIOEpZI=;
 b=eAeF0cL9hfVzgLfl2N8RSr73lCLSXqS0k3huFIwEKNrhzbPn80jOGFO6
 1UOMtinXVPuTbZFSBd/Jw3ELuxKoOX4EcLjHhJc6h7vRygUas2Vo4T/wM
 EZh7wQouujfG/UJ5Yi1FXloDNr76/n5HEgE/CxOssI/4rByerdGR49s7W
 c55TyBCZxEO1XzSRUnrwr/x/Z41RunFLXuSBtzZfOR9z+mdR7DFo1/Zrt
 Suj/GZJke7qgGXAk5awmKxFvfEoewL5eiBVBq2KZgrIk6HMuCUE669jlF
 Bm8ne3TxUP/ojfmlo0RTeic2xH5UKoPn85psgxSKs5mSEBUltS02TQU2F
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eAeF0cL9
Subject: [Intel-wired-lan] [PATCH 6/6 iwl-next] idpf: cleanup virtchnl cruft
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

We can now remove a bunch of gross code we don't need anymore like the
vc state bits and vc_buf_lock since everything is using transaction API
now.

Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Alan Brady <alan.brady@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        | 86 -------------------
 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 25 +-----
 drivers/net/ethernet/intel/idpf/idpf_main.c   |  2 -
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 13 ---
 4 files changed, 2 insertions(+), 124 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 2d5449b9288a..0793173bb36d 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -37,8 +37,6 @@ struct idpf_vport_max_q;
 #define IDPF_MB_MAX_ERR			20
 #define IDPF_NUM_CHUNKS_PER_MSG(struct_sz, chunk_sz)	\
 	((IDPF_CTLQ_MAX_BUF_LEN - (struct_sz)) / (chunk_sz))
-#define IDPF_WAIT_FOR_EVENT_TIMEO_MIN	2000
-#define IDPF_WAIT_FOR_EVENT_TIMEO	60000
 #define IDPF_VC_XN_MIN_TIMEOUT_MSEC	2000
 #define IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC	(60 * 1000)
 #define IDPF_VC_XN_IDX_M		GENMASK(7, 0)
@@ -212,71 +210,6 @@ struct idpf_dev_ops {
 	struct idpf_reg_ops reg_ops;
 };
 
-/* These macros allow us to generate an enum and a matching char * array of
- * stringified enums that are always in sync. Checkpatch issues a bogus warning
- * about this being a complex macro; but it's wrong, these are never used as a
- * statement and instead only used to define the enum and array.
- */
-#define IDPF_FOREACH_VPORT_VC_STATE(STATE)	\
-	STATE(IDPF_VC_CREATE_VPORT)		\
-	STATE(IDPF_VC_CREATE_VPORT_ERR)		\
-	STATE(IDPF_VC_ENA_VPORT)		\
-	STATE(IDPF_VC_ENA_VPORT_ERR)		\
-	STATE(IDPF_VC_DIS_VPORT)		\
-	STATE(IDPF_VC_DIS_VPORT_ERR)		\
-	STATE(IDPF_VC_DESTROY_VPORT)		\
-	STATE(IDPF_VC_DESTROY_VPORT_ERR)	\
-	STATE(IDPF_VC_CONFIG_TXQ)		\
-	STATE(IDPF_VC_CONFIG_TXQ_ERR)		\
-	STATE(IDPF_VC_CONFIG_RXQ)		\
-	STATE(IDPF_VC_CONFIG_RXQ_ERR)		\
-	STATE(IDPF_VC_ENA_QUEUES)		\
-	STATE(IDPF_VC_ENA_QUEUES_ERR)		\
-	STATE(IDPF_VC_DIS_QUEUES)		\
-	STATE(IDPF_VC_DIS_QUEUES_ERR)		\
-	STATE(IDPF_VC_MAP_IRQ)			\
-	STATE(IDPF_VC_MAP_IRQ_ERR)		\
-	STATE(IDPF_VC_UNMAP_IRQ)		\
-	STATE(IDPF_VC_UNMAP_IRQ_ERR)		\
-	STATE(IDPF_VC_ADD_QUEUES)		\
-	STATE(IDPF_VC_ADD_QUEUES_ERR)		\
-	STATE(IDPF_VC_DEL_QUEUES)		\
-	STATE(IDPF_VC_DEL_QUEUES_ERR)		\
-	STATE(IDPF_VC_ALLOC_VECTORS)		\
-	STATE(IDPF_VC_ALLOC_VECTORS_ERR)	\
-	STATE(IDPF_VC_DEALLOC_VECTORS)		\
-	STATE(IDPF_VC_DEALLOC_VECTORS_ERR)	\
-	STATE(IDPF_VC_SET_SRIOV_VFS)		\
-	STATE(IDPF_VC_SET_SRIOV_VFS_ERR)	\
-	STATE(IDPF_VC_GET_RSS_LUT)		\
-	STATE(IDPF_VC_GET_RSS_LUT_ERR)		\
-	STATE(IDPF_VC_SET_RSS_LUT)		\
-	STATE(IDPF_VC_SET_RSS_LUT_ERR)		\
-	STATE(IDPF_VC_GET_RSS_KEY)		\
-	STATE(IDPF_VC_GET_RSS_KEY_ERR)		\
-	STATE(IDPF_VC_SET_RSS_KEY)		\
-	STATE(IDPF_VC_SET_RSS_KEY_ERR)		\
-	STATE(IDPF_VC_GET_STATS)		\
-	STATE(IDPF_VC_GET_STATS_ERR)		\
-	STATE(IDPF_VC_ADD_MAC_ADDR)		\
-	STATE(IDPF_VC_ADD_MAC_ADDR_ERR)		\
-	STATE(IDPF_VC_DEL_MAC_ADDR)		\
-	STATE(IDPF_VC_DEL_MAC_ADDR_ERR)		\
-	STATE(IDPF_VC_GET_PTYPE_INFO)		\
-	STATE(IDPF_VC_GET_PTYPE_INFO_ERR)	\
-	STATE(IDPF_VC_LOOPBACK_STATE)		\
-	STATE(IDPF_VC_LOOPBACK_STATE_ERR)	\
-	STATE(IDPF_VC_NBITS)
-
-#define IDPF_GEN_ENUM(ENUM) ENUM,
-#define IDPF_GEN_STRING(STRING) #STRING,
-
-enum idpf_vport_vc_state {
-	IDPF_FOREACH_VPORT_VC_STATE(IDPF_GEN_ENUM)
-};
-
-extern const char * const idpf_vport_vc_state_str[];
-
 /**
  * enum idpf_vport_reset_cause - Vport soft reset causes
  * @IDPF_SR_Q_CHANGE: Soft reset queue change
@@ -451,11 +384,7 @@ struct idpf_vc_xn_manager {
  * @port_stats: per port csum, header split, and other offload stats
  * @link_up: True if link is up
  * @link_speed_mbps: Link speed in mbps
- * @vc_msg: Virtchnl message buffer
- * @vc_state: Virtchnl message state
- * @vchnl_wq: Wait queue for virtchnl messages
  * @sw_marker_wq: workqueue for marker packets
- * @vc_buf_lock: Lock to protect virtchnl buffer
  */
 struct idpf_vport {
 	u16 num_txq;
@@ -501,12 +430,7 @@ struct idpf_vport {
 	bool link_up;
 	u32 link_speed_mbps;
 
-	char vc_msg[IDPF_CTLQ_MAX_BUF_LEN];
-	DECLARE_BITMAP(vc_state, IDPF_VC_NBITS);
-
-	wait_queue_head_t vchnl_wq;
 	wait_queue_head_t sw_marker_wq;
-	struct mutex vc_buf_lock;
 };
 
 /**
@@ -569,15 +493,11 @@ struct idpf_vport_user_config_data {
  * enum idpf_vport_config_flags - Vport config flags
  * @IDPF_VPORT_REG_NETDEV: Register netdev
  * @IDPF_VPORT_UP_REQUESTED: Set if interface up is requested on core reset
- * @IDPF_VPORT_ADD_MAC_REQ: Asynchronous add ether address in flight
- * @IDPF_VPORT_DEL_MAC_REQ: Asynchronous delete ether address in flight
  * @IDPF_VPORT_CONFIG_FLAGS_NBITS: Must be last
  */
 enum idpf_vport_config_flags {
 	IDPF_VPORT_REG_NETDEV,
 	IDPF_VPORT_UP_REQUESTED,
-	IDPF_VPORT_ADD_MAC_REQ,
-	IDPF_VPORT_DEL_MAC_REQ,
 	IDPF_VPORT_CONFIG_FLAGS_NBITS,
 };
 
@@ -694,9 +614,6 @@ struct idpf_vport_config {
  * @stats_task: Periodic statistics retrieval task
  * @stats_wq: Workqueue for statistics task
  * @caps: Negotiated capabilities with device
- * @vchnl_wq: Wait queue for virtchnl messages
- * @vc_state: Virtchnl message state
- * @vc_msg: Virtchnl message buffer
  * @vcxn_mngr: Virtchnl transaction manager
  * @dev_ops: See idpf_dev_ops
  * @num_vfs: Number of allocated VFs through sysfs. PF does not directly talk
@@ -754,9 +671,6 @@ struct idpf_adapter {
 	struct workqueue_struct *stats_wq;
 	struct virtchnl2_get_capabilities caps;
 
-	wait_queue_head_t vchnl_wq;
-	DECLARE_BITMAP(vc_state, IDPF_VC_NBITS);
-	char vc_msg[IDPF_CTLQ_MAX_BUF_LEN];
 	struct idpf_vc_xn_manager vcxn_mngr;
 	struct idpf_dev_ops dev_ops;
 	int num_vfs;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index edb47730b697..383c10a63d9b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -6,10 +6,6 @@
 static const struct net_device_ops idpf_netdev_ops_splitq;
 static const struct net_device_ops idpf_netdev_ops_singleq;
 
-const char * const idpf_vport_vc_state_str[] = {
-	IDPF_FOREACH_VPORT_VC_STATE(IDPF_GEN_STRING)
-};
-
 /**
  * idpf_init_vector_stack - Fill the MSIX vector stack with vector index
  * @adapter: private data struct
@@ -973,7 +969,6 @@ static void idpf_vport_rel(struct idpf_vport *vport)
 	struct idpf_rss_data *rss_data;
 	struct idpf_vport_max_q max_q;
 	u16 idx = vport->idx;
-	int i;
 
 	vport_config = adapter->vport_config[vport->idx];
 	idpf_deinit_rss(vport);
@@ -983,20 +978,6 @@ static void idpf_vport_rel(struct idpf_vport *vport)
 
 	idpf_send_destroy_vport_msg(vport);
 
-	/* Set all bits as we dont know on which vc_state the vport vhnl_wq
-	 * is waiting on and wakeup the virtchnl workqueue even if it is
-	 * waiting for the response as we are going down
-	 */
-	for (i = 0; i < IDPF_VC_NBITS; i++)
-		set_bit(i, vport->vc_state);
-	wake_up(&vport->vchnl_wq);
-
-	mutex_destroy(&vport->vc_buf_lock);
-
-	/* Clear all the bits */
-	for (i = 0; i < IDPF_VC_NBITS; i++)
-		clear_bit(i, vport->vc_state);
-
 	/* Release all max queues allocated to the adapter's pool */
 	max_q.max_rxq = vport_config->max_q.max_rxq;
 	max_q.max_txq = vport_config->max_q.max_txq;
@@ -1541,9 +1522,7 @@ void idpf_init_task(struct work_struct *work)
 	vport_config = adapter->vport_config[index];
 
 	init_waitqueue_head(&vport->sw_marker_wq);
-	init_waitqueue_head(&vport->vchnl_wq);
 
-	mutex_init(&vport->vc_buf_lock);
 	spin_lock_init(&vport_config->mac_filter_list_lock);
 
 	INIT_LIST_HEAD(&vport_config->user_config.mac_filter_list);
@@ -1902,7 +1881,7 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 	 * mess with. Nothing below should use those variables from new_vport
 	 * and should instead always refer to them in vport if they need to.
 	 */
-	memcpy(new_vport, vport, offsetof(struct idpf_vport, vc_state));
+	memcpy(new_vport, vport, offsetof(struct idpf_vport, link_speed_mbps));
 
 	/* Adjust resource parameters prior to reallocating resources */
 	switch (reset_cause) {
@@ -1951,7 +1930,7 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 	/* Same comment as above regarding avoiding copying the wait_queues and
 	 * mutexes applies here. We do not want to mess with those if possible.
 	 */
-	memcpy(vport, new_vport, offsetof(struct idpf_vport, vc_state));
+	memcpy(vport, new_vport, offsetof(struct idpf_vport, link_speed_mbps));
 
 	/* Since idpf_vport_queues_alloc was called with new_port, the queue
 	 * back pointers are currently pointing to the local new_vport. Reset
diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index c82233b112bd..c6d7bec95d69 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -230,8 +230,6 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	mutex_init(&adapter->queue_lock);
 	mutex_init(&adapter->vc_buf_lock);
 
-	init_waitqueue_head(&adapter->vchnl_wq);
-
 	INIT_DELAYED_WORK(&adapter->init_task, idpf_init_task);
 	INIT_DELAYED_WORK(&adapter->serv_task, idpf_service_task);
 	INIT_DELAYED_WORK(&adapter->mbx_task, idpf_mbx_task);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 0f3788610b43..56e826ed3029 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -3021,28 +3021,15 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
  */
 void idpf_vc_core_deinit(struct idpf_adapter *adapter)
 {
-	int i;
-
 	idpf_vc_xn_shutdown(&adapter->vcxn_mngr);
 	idpf_deinit_task(adapter);
 	idpf_intr_rel(adapter);
-	/* Set all bits as we dont know on which vc_state the vhnl_wq is
-	 * waiting on and wakeup the virtchnl workqueue even if it is waiting
-	 * for the response as we are going down
-	 */
-	for (i = 0; i < IDPF_VC_NBITS; i++)
-		set_bit(i, adapter->vc_state);
-	wake_up(&adapter->vchnl_wq);
 
 	cancel_delayed_work_sync(&adapter->serv_task);
 	cancel_delayed_work_sync(&adapter->mbx_task);
 
 	idpf_vport_params_buf_rel(adapter);
 
-	/* Clear all the bits */
-	for (i = 0; i < IDPF_VC_NBITS; i++)
-		clear_bit(i, adapter->vc_state);
-
 	kfree(adapter->vports);
 	adapter->vports = NULL;
 }
-- 
2.40.1

