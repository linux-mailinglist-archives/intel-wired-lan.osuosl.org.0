Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A8E83D412
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jan 2024 06:49:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E846A6FA2A;
	Fri, 26 Jan 2024 05:49:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E846A6FA2A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706248145;
	bh=bFPbbOQkSs6/2VzYwL5fjYLhWaCK4BOg07L2uUZaCns=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a6uy1q1opExKn7PInPPuqq3dpgh2K0AzlSYGmFJlRjCgpsw/AbsJzrEBFxteDoNxM
	 DtvXSeGUuHx2VcbdDJ5GgZCBABNTvXoMPPIhUfPNNs4tpZx4aPRlNLusP7RLPZaMOF
	 OUM+MsoUjJ4NkqN+u5qVhwPfkrMYuaI6gqgCUrLI38CPWknK0CEgbUbqiAAUYE9hDD
	 jEqRhTsK/7lQ0VkWEZ8bdfOyylYs64+14Ck/Jt8R0WqqkUTKSmnGNdkDrGufFs+N96
	 hEDVJ/JARLDSe9fAGsrYW6sN40jW/tHqdwvrthqpUd3p7dg66Ja1i6oeH2eAtZYyiu
	 9AHvE3FbD39SA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A75bXPXQI9ch; Fri, 26 Jan 2024 05:49:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A033F60093;
	Fri, 26 Jan 2024 05:49:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A033F60093
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 336171BF292
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jan 2024 05:48:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0C5D9846D7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jan 2024 05:48:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C5D9846D7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uOkxweDnpvMq for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jan 2024 05:48:53 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 244B8846D4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jan 2024 05:48:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 244B8846D4
X-IronPort-AV: E=McAfee;i="6600,9927,10964"; a="9779315"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="9779315"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2024 21:48:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="21306246"
Received: from dev1-atbrady.jf.intel.com ([10.166.241.35])
 by fmviesa002.fm.intel.com with ESMTP; 25 Jan 2024 21:48:52 -0800
From: Alan Brady <alan.brady@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jan 2024 21:47:47 -0800
Message-Id: <20240126054747.960172-8-alan.brady@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240126054747.960172-1-alan.brady@intel.com>
References: <20240126054747.960172-1-alan.brady@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706248133; x=1737784133;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U3gh3zk9UOjVwA6ia9Kfemdq6xn2FCC2rKv8XDUXGpk=;
 b=nNEkDQNalgx2uxIF9/wrRp4rUhiQlhSPCLclmjln5A7+E18W9m4Ay6eF
 ufOGAF85PJ3MSGAZCsWC4FPFRbLKg4e86R5yi6Ke5hhsvjga0lLQTpUGN
 cqL31LoOKoapvbrU22ZBHn9CPVBiG8D/48Hsxeujn2O1UZqAPNmPCAVhj
 vlO+so9GvJvvs+hsO63ODSl91UsBueUuRIIFWsZHVSf2rmvZ3p7jyMkbe
 +Q4VgwXUAjA2+rF/1WpUWuxv8v1vpAfSMbCiL6EW7hN2sSL9svQW15Ed1
 vagfcg+Ytf27/zFMqR3nAs2cF85Sqovwj3MEP3syx+9fSEdJE1xZ1q/dY
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nNEkDQNa
Subject: [Intel-wired-lan] [PATCH v2 7/7 iwl-next] idpf: cleanup virtchnl
 cruft
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

We can now remove a bunch of gross code we don't need anymore like the
vc state bits and vc_buf_lock since everything is using transaction API
now.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
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
index 53ba5ff1ab57..a7dad0a0b44c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -3019,28 +3019,15 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
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

