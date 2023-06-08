Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C9ABF7286CE
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jun 2023 20:05:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 668DF6151B;
	Thu,  8 Jun 2023 18:05:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 668DF6151B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686247517;
	bh=EG0lVtzY/u2bghC8oGDdUSerR4YfqhXeYaeDTu2K0ps=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=b9+d04MYKmaLEirPE8G5fYb2KbpKT0u4IcNWfMQFJHnPO7g6GodfzwLCeSEvbmaD4
	 r2VtO3Q4f7vcyIbv2+RgPfU33xj/v67cvoDC2BFCYY9JM+bZzr+GoohG+uighG6bZo
	 Rxqk5A6KoeUqCpFJN/EckmrUVUoXJnpn0C3pLkfwc0xW/h0k6Y4w2QocEeZ8d4PC+6
	 cZ0AfoC2UHasODytm0nglquSsLn5WytN5mYMPAds9V9xETKWwjJ9s7RhjljFE/pTIV
	 3gvuUFjStqRX12S5WDATPvTqGVTgYNWMXiUIRaxTyJH1ek6Ffx3p8gcDXC/c09Izt0
	 IXwapDO14sCig==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2UJTWohNgOha; Thu,  8 Jun 2023 18:05:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B16061502;
	Thu,  8 Jun 2023 18:05:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B16061502
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3336C1BF3E1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 18:05:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0CD85403EA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 18:05:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0CD85403EA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vny1pa8aTQ1A for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jun 2023 18:05:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 78B5B401CC
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 78B5B401CC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 18:05:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="385738711"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="385738711"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 11:04:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="775187924"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="775187924"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 11:04:37 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Jun 2023 11:06:11 -0700
Message-Id: <20230608180618.574171-4-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230608180618.574171-1-david.m.ertman@intel.com>
References: <20230608180618.574171-1-david.m.ertman@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686247504; x=1717783504;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x9c7Qh8ML2P9yfTTLLR2wTaV2H4lYHzfJ0EK1/R2w2Q=;
 b=MlM9vxOV+su8XGYGUgDTfdNc+gmBYgKazqNt8YUQiFFBgk6VPlxFAPVI
 jV8JmaDDLT5amDIqsyJxJAdA6DbHp6jYdZAGtqpDwvSPmC+ahhG4Hf88V
 MVpkDpsuMRs1Msje7pzfSx7vO86JiDH3yf3jOJLDDc0GCm2zCbIPU/Ykw
 9/0EJjxiWeC0xfYvslkcnsfc21zpDeUn0upv9tNWr0YS9MLtKDhDXCT7i
 c+0p/9RtkUlDHKtcSSPAgQOrVqX0KZb65HkFXrwzHxVxAmRm9EGKqJYSu
 ZArs954+n6Pg0uBZWst0uWcLlV6KDqD56Kav2NUnq2ZriBa+3g7rIGHEo
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MlM9vxOV
Subject: [Intel-wired-lan] [PATCH iwl-next v3 03/10] ice: changes to the
 interface with the HW and FW for SRIOV_VF+LAG
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
Cc: netdev@vger.kernel.org, daniel.machon@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add defines needed for interaction with the FW admin queue interface
in relation to supporting LAG and SRIOV VFs interacting.

Add code, or make non-static previously static functions, to access
the new and changed admin queue calls for LAG.

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 50 +++++++++++-
 drivers/net/ethernet/intel/ice/ice_common.c   | 47 +++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h   |  4 +
 drivers/net/ethernet/intel/ice/ice_sched.c    | 14 ++--
 drivers/net/ethernet/intel/ice/ice_sched.h    | 21 +++++
 drivers/net/ethernet/intel/ice/ice_switch.c   | 78 ++++++++++++++-----
 drivers/net/ethernet/intel/ice/ice_switch.h   | 26 +++++++
 7 files changed, 211 insertions(+), 29 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 1d4227b024d3..c0ad34b42531 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -235,6 +235,8 @@ struct ice_aqc_set_port_params {
 #define ICE_AQC_SET_P_PARAMS_DOUBLE_VLAN_ENA	BIT(2)
 	__le16 bad_frame_vsi;
 	__le16 swid;
+#define ICE_AQC_PORT_SWID_VALID			BIT(15)
+#define ICE_AQC_PORT_SWID_M			0xFF
 	u8 reserved[10];
 };
 
@@ -244,10 +246,12 @@ struct ice_aqc_set_port_params {
  * Allocate Resources command (indirect 0x0208)
  * Free Resources command (indirect 0x0209)
  * Get Allocated Resource Descriptors Command (indirect 0x020A)
+ * Share Resource command (indirect 0x020B)
  */
 #define ICE_AQC_RES_TYPE_VSI_LIST_REP			0x03
 #define ICE_AQC_RES_TYPE_VSI_LIST_PRUNE			0x04
 #define ICE_AQC_RES_TYPE_RECIPE				0x05
+#define ICE_AQC_RES_TYPE_SWID				0x07
 #define ICE_AQC_RES_TYPE_FDIR_COUNTER_BLOCK		0x21
 #define ICE_AQC_RES_TYPE_FDIR_GUARANTEED_ENTRIES	0x22
 #define ICE_AQC_RES_TYPE_FDIR_SHARED_ENTRIES		0x23
@@ -267,6 +271,7 @@ struct ice_aqc_set_port_params {
 
 /* Allocate Resources command (indirect 0x0208)
  * Free Resources command (indirect 0x0209)
+ * Share Resource command (indirect 0x020B)
  */
 struct ice_aqc_alloc_free_res_cmd {
 	__le16 num_entries; /* Number of Resource entries */
@@ -821,7 +826,11 @@ struct ice_aqc_txsched_move_grp_info_hdr {
 	__le32 src_parent_teid;
 	__le32 dest_parent_teid;
 	__le16 num_elems;
-	__le16 reserved;
+	u8 mode;
+#define ICE_AQC_MOVE_ELEM_MODE_SAME_PF		0x0
+#define ICE_AQC_MOVE_ELEM_MODE_GIVE_OWN		0x1
+#define ICE_AQC_MOVE_ELEM_MODE_KEEP_OWN		0x2
+	u8 reserved;
 };
 
 struct ice_aqc_move_elem {
@@ -1926,6 +1935,42 @@ struct ice_aqc_dis_txq_item {
 	__le16 q_id[];
 } __packed;
 
+/* Move/Reconfigure Tx queue (indirect 0x0C32) */
+struct ice_aqc_cfg_txqs {
+	u8 cmd_type;
+#define ICE_AQC_Q_CFG_MOVE_NODE		0x1
+#define ICE_AQC_Q_CFG_TC_CHNG		0x2
+#define ICE_AQC_Q_CFG_MOVE_TC_CHNG	0x3
+#define ICE_AQC_Q_CFG_SUBSEQ_CALL	BIT(2)
+#define ICE_AQC_Q_CFG_FLUSH		BIT(3)
+	u8 num_qs;
+	u8 port_num_chng;
+#define ICE_AQC_Q_CFG_SRC_PRT_M		0x7
+#define ICE_AQC_Q_CFG_DST_PRT_S		3
+#define ICE_AQC_Q_CFG_DST_PRT_M		(0x7 << ICE_AQC_Q_CFG_DST_PRT_S)
+	u8 time_out;
+#define ICE_AQC_Q_CFG_TIMEOUT_S		2
+#define ICE_AQC_Q_CFG_TIMEOUT_M		(0x1F << ICE_AQC_Q_CFG_TIMEOUT_S)
+	__le32 blocked_cgds;
+	__le32 addr_high;
+	__le32 addr_low;
+};
+
+/* Per Q struct for Move/Reconfigure Tx LAN Queues (indirect 0x0C32) */
+struct ice_aqc_cfg_txq_perq {
+	__le16 q_handle;
+	u8 tc;
+	u8 rsvd;
+	__le32 q_teid;
+};
+
+/* The buffer for Move/Reconfigure Tx LAN Queues (indirect 0x0C32) */
+struct ice_aqc_cfg_txqs_buf {
+	__le32 src_parent_teid;
+	__le32 dst_parent_teid;
+	struct ice_aqc_cfg_txq_perq queue_info[];
+};
+
 /* Add Tx RDMA Queue Set (indirect 0x0C33) */
 struct ice_aqc_add_rdma_qset {
 	u8 num_qset_grps;
@@ -2184,6 +2229,7 @@ struct ice_aq_desc {
 		struct ice_aqc_neigh_dev_req neigh_dev;
 		struct ice_aqc_add_txqs add_txqs;
 		struct ice_aqc_dis_txqs dis_txqs;
+		struct ice_aqc_cfg_txqs cfg_txqs;
 		struct ice_aqc_add_rdma_qset add_rdma_qset;
 		struct ice_aqc_add_get_update_free_vsi vsi_cmd;
 		struct ice_aqc_add_update_free_vsi_resp add_update_free_vsi_res;
@@ -2266,6 +2312,7 @@ enum ice_adminq_opc {
 	/* Alloc/Free/Get Resources */
 	ice_aqc_opc_alloc_res				= 0x0208,
 	ice_aqc_opc_free_res				= 0x0209,
+	ice_aqc_opc_share_res				= 0x020B,
 	ice_aqc_opc_set_vlan_mode_parameters		= 0x020C,
 	ice_aqc_opc_get_vlan_mode_parameters		= 0x020D,
 
@@ -2359,6 +2406,7 @@ enum ice_adminq_opc {
 	/* Tx queue handling commands/events */
 	ice_aqc_opc_add_txqs				= 0x0C30,
 	ice_aqc_opc_dis_txqs				= 0x0C31,
+	ice_aqc_opc_cfg_txqs				= 0x0C32,
 	ice_aqc_opc_add_rdma_qset			= 0x0C33,
 
 	/* package commands */
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 9704e7fa2953..9a3f62f897fb 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -4229,6 +4229,53 @@ ice_aq_dis_lan_txq(struct ice_hw *hw, u8 num_qgrps,
 	return status;
 }
 
+/**
+ * ice_aq_cfg_lan_txq
+ * @hw: pointer to the hardware structure
+ * @buf: buffer for command
+ * @buf_size: size of buffer in bytes
+ * @num_qs: number of queues being configured
+ * @oldport: origination lport
+ * @newport: destination lport
+ * @cd: pointer to command details structure or NULL
+ *
+ * Move/Configure LAN Tx queue (0x0C32)
+ *
+ * There is a better AQ command to use for moving nodes, so only coding
+ * this one for configuring the node.
+ */
+int
+ice_aq_cfg_lan_txq(struct ice_hw *hw, struct ice_aqc_cfg_txqs_buf *buf,
+		   u16 buf_size, u16 num_qs, u8 oldport, u8 newport,
+		   struct ice_sq_cd *cd)
+{
+	struct ice_aqc_cfg_txqs *cmd;
+	struct ice_aq_desc desc;
+	int status;
+
+	cmd = &desc.params.cfg_txqs;
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_cfg_txqs);
+	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+
+	if (!buf)
+		return -EINVAL;
+
+	cmd->cmd_type = ICE_AQC_Q_CFG_TC_CHNG;
+	cmd->num_qs = num_qs;
+	cmd->port_num_chng = (oldport & ICE_AQC_Q_CFG_SRC_PRT_M);
+	cmd->port_num_chng |= (newport << ICE_AQC_Q_CFG_DST_PRT_S) &
+			      ICE_AQC_Q_CFG_DST_PRT_M;
+	cmd->time_out = (5 << ICE_AQC_Q_CFG_TIMEOUT_S) &
+			ICE_AQC_Q_CFG_TIMEOUT_M;
+	cmd->blocked_cgds = 0;
+
+	status = ice_aq_send_cmd(hw, &desc, buf, buf_size, cd);
+	if (status)
+		ice_debug(hw, ICE_DBG_SCHED, "Failed to reconfigure nodes %d\n",
+			  hw->adminq.sq_last_status);
+	return status;
+}
+
 /**
  * ice_aq_add_rdma_qsets
  * @hw: pointer to the hardware structure
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 81961a7d6598..df12a9d8d28c 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -186,6 +186,10 @@ int
 ice_ena_vsi_txq(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u16 q_handle,
 		u8 num_qgrps, struct ice_aqc_add_tx_qgrp *buf, u16 buf_size,
 		struct ice_sq_cd *cd);
+int
+ice_aq_cfg_lan_txq(struct ice_hw *hw, struct ice_aqc_cfg_txqs_buf *buf,
+		   u16 buf_size, u16 num_qs, u8 oldport, u8 newport,
+		   struct ice_sq_cd *cd);
 int ice_replay_vsi(struct ice_hw *hw, u16 vsi_handle);
 void ice_replay_post(struct ice_hw *hw);
 void ice_output_fw_log(struct ice_hw *hw, struct ice_aq_desc *desc, void *buf);
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index 79a8972873f1..f4677704b95e 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -447,7 +447,7 @@ ice_aq_cfg_sched_elems(struct ice_hw *hw, u16 elems_req,
  *
  * Move scheduling elements (0x0408)
  */
-static int
+int
 ice_aq_move_sched_elems(struct ice_hw *hw, u16 grps_req,
 			struct ice_aqc_move_elem *buf, u16 buf_size,
 			u16 *grps_movd, struct ice_sq_cd *cd)
@@ -526,7 +526,7 @@ ice_aq_query_sched_res(struct ice_hw *hw, u16 buf_size,
  *
  * This function suspends or resumes HW nodes
  */
-static int
+int
 ice_sched_suspend_resume_elems(struct ice_hw *hw, u8 num_nodes, u32 *node_teids,
 			       bool suspend)
 {
@@ -1057,7 +1057,7 @@ ice_sched_add_nodes_to_hw_layer(struct ice_port_info *pi,
  *
  * This function add nodes to a given layer.
  */
-static int
+int
 ice_sched_add_nodes_to_layer(struct ice_port_info *pi,
 			     struct ice_sched_node *tc_node,
 			     struct ice_sched_node *parent, u8 layer,
@@ -1132,7 +1132,7 @@ static u8 ice_sched_get_qgrp_layer(struct ice_hw *hw)
  *
  * This function returns the current VSI layer number
  */
-static u8 ice_sched_get_vsi_layer(struct ice_hw *hw)
+u8 ice_sched_get_vsi_layer(struct ice_hw *hw)
 {
 	/* Num Layers       VSI layer
 	 *     9               6
@@ -1155,7 +1155,7 @@ static u8 ice_sched_get_vsi_layer(struct ice_hw *hw)
  *
  * This function returns the current aggregator layer number
  */
-static u8 ice_sched_get_agg_layer(struct ice_hw *hw)
+u8 ice_sched_get_agg_layer(struct ice_hw *hw)
 {
 	/* Num Layers       aggregator layer
 	 *     9               4
@@ -1590,7 +1590,7 @@ ice_sched_get_vsi_node(struct ice_port_info *pi, struct ice_sched_node *tc_node,
  * This function retrieves an aggregator node for a given aggregator ID from
  * a given TC branch
  */
-static struct ice_sched_node *
+struct ice_sched_node *
 ice_sched_get_agg_node(struct ice_port_info *pi, struct ice_sched_node *tc_node,
 		       u32 agg_id)
 {
@@ -2152,7 +2152,7 @@ ice_get_agg_info(struct ice_hw *hw, u32 agg_id)
  * This function walks through the aggregator subtree to find a free parent
  * node
  */
-static struct ice_sched_node *
+struct ice_sched_node *
 ice_sched_get_free_vsi_parent(struct ice_hw *hw, struct ice_sched_node *node,
 			      u16 *num_nodes)
 {
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.h b/drivers/net/ethernet/intel/ice/ice_sched.h
index 9c100747445a..8bd26353d76a 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.h
+++ b/drivers/net/ethernet/intel/ice/ice_sched.h
@@ -146,8 +146,29 @@ ice_sched_set_node_bw_lmt_per_tc(struct ice_port_info *pi, u32 id,
 				 enum ice_agg_type agg_type, u8 tc,
 				 enum ice_rl_type rl_type, u32 bw);
 int ice_cfg_rl_burst_size(struct ice_hw *hw, u32 bytes);
+int
+ice_sched_suspend_resume_elems(struct ice_hw *hw, u8 num_nodes, u32 *node_teids,
+			       bool suspend);
+struct ice_sched_node *
+ice_sched_get_agg_node(struct ice_port_info *pi, struct ice_sched_node *tc_node,
+		       u32 agg_id);
+u8 ice_sched_get_agg_layer(struct ice_hw *hw);
+u8 ice_sched_get_vsi_layer(struct ice_hw *hw);
+struct ice_sched_node *
+ice_sched_get_free_vsi_parent(struct ice_hw *hw, struct ice_sched_node *node,
+			      u16 *num_nodes);
+int
+ice_sched_add_nodes_to_layer(struct ice_port_info *pi,
+			     struct ice_sched_node *tc_node,
+			     struct ice_sched_node *parent, u8 layer,
+			     u16 num_nodes, u32 *first_node_teid,
+			     u16 *num_nodes_added);
 void ice_sched_replay_agg_vsi_preinit(struct ice_hw *hw);
 void ice_sched_replay_agg(struct ice_hw *hw);
+int
+ice_aq_move_sched_elems(struct ice_hw *hw, u16 grps_req,
+			struct ice_aqc_move_elem *buf, u16 buf_size,
+			u16 *grps_movd, struct ice_sq_cd *cd);
 int ice_replay_vsi_agg(struct ice_hw *hw, u16 vsi_handle);
 int ice_sched_replay_q_bw(struct ice_port_info *pi, struct ice_q_ctx *q_ctx);
 #endif /* _ICE_SCHED_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 49be0d2532eb..e8d4f07d7914 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -20,10 +20,10 @@
  * byte 0 = 0x2: to identify it as locally administered DA MAC
  * byte 6 = 0x2: to identify it as locally administered SA MAC
  * byte 12 = 0x81 & byte 13 = 0x00:
- *	In case of VLAN filter first two bytes defines ether type (0x8100)
- *	and remaining two bytes are placeholder for programming a given VLAN ID
- *	In case of Ether type filter it is treated as header without VLAN tag
- *	and byte 12 and 13 is used to program a given Ether type instead
+ *      In case of VLAN filter first two bytes defines ether type (0x8100)
+ *      and remaining two bytes are placeholder for programming a given VLAN ID
+ *      In case of Ether type filter it is treated as header without VLAN tag
+ *      and byte 12 and 13 is used to program a given Ether type instead
  */
 #define DUMMY_ETH_HDR_LEN		16
 static const u8 dummy_eth_header[DUMMY_ETH_HDR_LEN] = { 0x2, 0, 0, 0, 0, 0,
@@ -1369,14 +1369,6 @@ static const struct ice_dummy_pkt_profile ice_dummy_pkt_profiles[] = {
 	ICE_PKT_PROFILE(tcp, 0),
 };
 
-#define ICE_SW_RULE_RX_TX_HDR_SIZE(s, l)	struct_size((s), hdr_data, (l))
-#define ICE_SW_RULE_RX_TX_ETH_HDR_SIZE(s)	\
-	ICE_SW_RULE_RX_TX_HDR_SIZE((s), DUMMY_ETH_HDR_LEN)
-#define ICE_SW_RULE_RX_TX_NO_HDR_SIZE(s)	\
-	ICE_SW_RULE_RX_TX_HDR_SIZE((s), 0)
-#define ICE_SW_RULE_LG_ACT_SIZE(s, n)		struct_size((s), act, (n))
-#define ICE_SW_RULE_VSI_LIST_SIZE(s, n)		struct_size((s), vsi, (n))
-
 /* this is a recipe to profile association bitmap */
 static DECLARE_BITMAP(recipe_to_profile[ICE_MAX_NUM_RECIPES],
 			  ICE_MAX_NUM_PROFILES);
@@ -1841,8 +1833,13 @@ ice_aq_alloc_free_vsi_list(struct ice_hw *hw, u16 *vsi_list_id,
 	    lkup_type == ICE_SW_LKUP_DFLT) {
 		sw_buf->res_type = cpu_to_le16(ICE_AQC_RES_TYPE_VSI_LIST_REP);
 	} else if (lkup_type == ICE_SW_LKUP_VLAN) {
-		sw_buf->res_type =
-			cpu_to_le16(ICE_AQC_RES_TYPE_VSI_LIST_PRUNE);
+		if (opc == ice_aqc_opc_alloc_res)
+			sw_buf->res_type =
+				cpu_to_le16(ICE_AQC_RES_TYPE_VSI_LIST_PRUNE |
+					    ICE_AQC_RES_TYPE_FLAG_SHARED);
+		else
+			sw_buf->res_type =
+				cpu_to_le16(ICE_AQC_RES_TYPE_VSI_LIST_PRUNE);
 	} else {
 		status = -EINVAL;
 		goto ice_aq_alloc_free_vsi_list_exit;
@@ -1910,7 +1907,7 @@ ice_aq_sw_rules(struct ice_hw *hw, void *rule_list, u16 rule_list_sz,
  *
  * Add(0x0290)
  */
-static int
+int
 ice_aq_add_recipe(struct ice_hw *hw,
 		  struct ice_aqc_recipe_data_elem *s_recipe_list,
 		  u16 num_recipes, struct ice_sq_cd *cd)
@@ -1947,7 +1944,7 @@ ice_aq_add_recipe(struct ice_hw *hw,
  * The caller must supply enough space in s_recipe_list to hold all possible
  * recipes and *num_recipes must equal ICE_MAX_NUM_RECIPES.
  */
-static int
+int
 ice_aq_get_recipe(struct ice_hw *hw,
 		  struct ice_aqc_recipe_data_elem *s_recipe_list,
 		  u16 *num_recipes, u16 recipe_root, struct ice_sq_cd *cd)
@@ -2040,7 +2037,7 @@ ice_update_recipe_lkup_idx(struct ice_hw *hw,
  * @cd: pointer to command details structure or NULL
  * Recipe to profile association (0x0291)
  */
-static int
+int
 ice_aq_map_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u8 *r_bitmap,
 			     struct ice_sq_cd *cd)
 {
@@ -2066,7 +2063,7 @@ ice_aq_map_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u8 *r_bitmap,
  * @cd: pointer to command details structure or NULL
  * Associate profile ID with given recipe (0x0293)
  */
-static int
+int
 ice_aq_get_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u8 *r_bitmap,
 			     struct ice_sq_cd *cd)
 {
@@ -2090,7 +2087,7 @@ ice_aq_get_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u8 *r_bitmap,
  * @hw: pointer to the hardware structure
  * @rid: recipe ID returned as response to AQ call
  */
-static int ice_alloc_recipe(struct ice_hw *hw, u16 *rid)
+int ice_alloc_recipe(struct ice_hw *hw, u16 *rid)
 {
 	struct ice_aqc_alloc_free_res_elem *sw_buf;
 	u16 buf_len;
@@ -3122,7 +3119,7 @@ ice_find_rule_entry(struct ice_hw *hw, u8 recp_id, struct ice_fltr_info *f_info)
  * handle element. This can be extended further to search VSI list with more
  * than 1 vsi_count. Returns pointer to VSI list entry if found.
  */
-static struct ice_vsi_list_map_info *
+struct ice_vsi_list_map_info *
 ice_find_vsi_list_entry(struct ice_hw *hw, u8 recp_id, u16 vsi_handle,
 			u16 *vsi_list_id)
 {
@@ -3133,7 +3130,7 @@ ice_find_vsi_list_entry(struct ice_hw *hw, u8 recp_id, u16 vsi_handle,
 
 	list_head = &sw->recp_list[recp_id].filt_rules;
 	list_for_each_entry(list_itr, list_head, list_entry) {
-		if (list_itr->vsi_count == 1 && list_itr->vsi_list_info) {
+		if (list_itr->vsi_list_info) {
 			map_info = list_itr->vsi_list_info;
 			if (test_bit(vsi_handle, map_info->vsi_map)) {
 				*vsi_list_id = map_info->vsi_list_id;
@@ -4544,6 +4541,45 @@ ice_free_res_cntr(struct ice_hw *hw, u8 type, u8 alloc_shared, u16 num_items,
 	.offs		= {__VA_ARGS__},	\
 }
 
+/**
+ * ice_share_res - set a resource as shared or dedicated
+ * @hw: hw struct of original owner of resource
+ * @type: resource type
+ * @shared: is the resource being set to shared
+ * @res_id: resource id (descriptor)
+ */
+int ice_share_res(struct ice_hw *hw, u16 type, u8 shared, u16 res_id)
+{
+	struct ice_aqc_alloc_free_res_elem *buf;
+	u16 buf_len;
+	int status;
+
+	buf_len = struct_size(buf, elem, 1);
+	buf = kzalloc(buf_len, GFP_KERNEL);
+	if (!buf)
+		return -ENOMEM;
+
+	buf->num_elems = cpu_to_le16(1);
+	if (shared)
+		buf->res_type = cpu_to_le16(((type << ICE_AQC_RES_TYPE_S) &
+					     ICE_AQC_RES_TYPE_M) |
+					    ICE_AQC_RES_TYPE_FLAG_SHARED);
+	else
+		buf->res_type = cpu_to_le16(((type << ICE_AQC_RES_TYPE_S) &
+					     ICE_AQC_RES_TYPE_M) &
+					    ~ICE_AQC_RES_TYPE_FLAG_SHARED);
+
+	buf->elem[0].e.sw_resp = cpu_to_le16(res_id);
+	status = ice_aq_alloc_free_res(hw, 1, buf, buf_len,
+				       ice_aqc_opc_share_res, NULL);
+	if (status)
+		ice_debug(hw, ICE_DBG_SW, "Could not set resource type %u id %u to %s\n",
+			  type, res_id, shared ? "SHARED" : "DEDICATED");
+
+	kfree(buf);
+	return status;
+}
+
 /* This is mapping table entry that maps every word within a given protocol
  * structure to the real byte offset as per the specification of that
  * protocol header.
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index 838a2823b3dc..1f1888932d54 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -22,6 +22,14 @@
 #define ICE_PROFID_IPV6_GTPU_TEID			46
 #define ICE_PROFID_IPV6_GTPU_IPV6_TCP_INNER		70
 
+#define ICE_SW_RULE_VSI_LIST_SIZE(s, n)		struct_size((s), vsi, (n))
+#define ICE_SW_RULE_RX_TX_HDR_SIZE(s, l)	struct_size((s), hdr_data, (l))
+#define ICE_SW_RULE_RX_TX_ETH_HDR_SIZE(s)	\
+	ICE_SW_RULE_RX_TX_HDR_SIZE((s), DUMMY_ETH_HDR_LEN)
+#define ICE_SW_RULE_RX_TX_NO_HDR_SIZE(s)	\
+	ICE_SW_RULE_RX_TX_HDR_SIZE((s), 0)
+#define ICE_SW_RULE_LG_ACT_SIZE(s, n)		struct_size((s), act, (n))
+
 /* VSI context structure for add/get/update/free operations */
 struct ice_vsi_ctx {
 	u16 vsi_num;
@@ -345,6 +353,7 @@ ice_alloc_res_cntr(struct ice_hw *hw, u8 type, u8 alloc_shared, u16 num_items,
 int
 ice_free_res_cntr(struct ice_hw *hw, u8 type, u8 alloc_shared, u16 num_items,
 		  u16 counter_id);
+int ice_share_res(struct ice_hw *hw, u16 type, u8 shared, u16 res_id);
 
 /* Switch/bridge related commands */
 void ice_rule_add_tunnel_metadata(struct ice_adv_lkup_elem *lkup);
@@ -402,4 +411,21 @@ int
 ice_update_recipe_lkup_idx(struct ice_hw *hw,
 			   struct ice_update_recipe_lkup_idx_params *params);
 void ice_change_proto_id_to_dvm(void);
+struct ice_vsi_list_map_info *
+ice_find_vsi_list_entry(struct ice_hw *hw, u8 recp_id, u16 vsi_handle,
+			u16 *vsi_list_id);
+int ice_alloc_recipe(struct ice_hw *hw, u16 *rid);
+int ice_aq_get_recipe(struct ice_hw *hw,
+		      struct ice_aqc_recipe_data_elem *s_recipe_list,
+		      u16 *num_recipes, u16 recipe_root, struct ice_sq_cd *cd);
+int ice_aq_add_recipe(struct ice_hw *hw,
+		      struct ice_aqc_recipe_data_elem *s_recipe_list,
+		      u16 num_recipes, struct ice_sq_cd *cd);
+int
+ice_aq_get_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u8 *r_bitmap,
+			     struct ice_sq_cd *cd);
+int
+ice_aq_map_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u8 *r_bitmap,
+			     struct ice_sq_cd *cd);
+
 #endif /* _ICE_SWITCH_H_ */
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
