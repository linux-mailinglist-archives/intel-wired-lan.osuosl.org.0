Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C664A7EC67
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Apr 2025 21:16:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1BD1840C9A;
	Mon,  7 Apr 2025 19:16:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vX4NM-S9q-uC; Mon,  7 Apr 2025 19:16:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B30640CEB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744053363;
	bh=K+/I4Gj68vi9aivNPUDfzJP6MawXrfBQNEknEd/vFKA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CQE/EVhGx6KpKZvK1Wsk/xnxEdCbv0NFHRIR0L8AciOJkssfS10Ikafe+xY5qUMSX
	 w3ikz3kXmtiu3KDrhBJH8rzbB3QzUrjDYF+2KlEIkZBFiG4dJYJyX8sB1fEz0uwPku
	 IWRjcoC0V9/5wzR2VhJcfjA1We1kABrw8vV8CIs15LTcqFQZAtmGCCf2cRZFiNEB11
	 erxAtPPrb8vG2jYelp8pz6vqsurOfZo+YDE+hBQ9QAdA8X/rGvR2Y2n0cgtDkQ0piM
	 UWBX/7NBKz9DSUki/SJ3I4BgffDmqGpZD45jZ3kRM2+TVXemd+Yfa1i8X3Bj7SUVxf
	 5evATY2F94e9g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B30640CEB;
	Mon,  7 Apr 2025 19:16:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9AE311DE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 19:16:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D207C4019E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 19:15:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GUaxG9qwdOzg for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Apr 2025 19:15:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1B8B541203
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B8B541203
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1B8B541203
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 19:15:53 +0000 (UTC)
X-CSE-ConnectionGUID: 5k56ddvSSYKyyXufU+b5Bg==
X-CSE-MsgGUID: KGLt4AKIRN6ZfJKua5wPIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="49307043"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="49307043"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 12:15:51 -0700
X-CSE-ConnectionGUID: 8xJ2aU8ERQSbk1Q8XZLY6w==
X-CSE-MsgGUID: f3NBuq/6RcqDjGf7AMKu7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="128979597"
Received: from dmert-vmdev.jf.intel.com ([10.165.18.186])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 12:15:51 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Marcin Szycik <marcin.szycik@linux.intel.com>
Date: Mon,  7 Apr 2025 15:15:17 -0400
Message-ID: <20250407191517.767433-9-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250407191517.767433-1-david.m.ertman@intel.com>
References: <20250407191517.767433-1-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744053353; x=1775589353;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VFpSnzH3EUrLHnRCsnWzZS+GxoAe3Gm5rmZlSBKwelQ=;
 b=cd1SmgWOJfyz45yaQ0JXMePE1lg9hkY0R3WeANsZP6UBvc3LFZcuMDGw
 xkNo0Kmars0JNqpn/god83qNzVrnJFbCuur0X+vZNIz90xl1BOMh03Ion
 waHe+Pwv3gGLP9fgD4mq/7YLYWArGzg2o7ptxE/jp17phcnMab5epLu7s
 3d+ccgueKTBCfOwmYfsZTlC8LnpQmMu5WSFzGM2fo1rfWnxMC+UW4HU2j
 Wlk9lMq7GzJ4ABwLrBkYuH38cG93C04txdaSYQBF1ZslooLJ0vUEc1C4t
 FWeGgKLFNA817JYLEdZ9eFpNhn26+SI4gBbbUxQJM+Qy679o2AfYMc68A
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cd1SmgWO
Subject: [Intel-wired-lan] [PATCH iwl-next 8/8] ice: Implement support for
 SRIOV VFs across Active/Active bonds
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

This patch implements the software flows to handle SRIOV VF
communication across an Active/Active link aggregate.  The same
restrictions apply as are in place for the support of Active/Backup
bonds.

- the two interfaces must be on the same NIC
- the FW LLDP engine needs to be disabled
- the DDP package that supports VF LAG must be loaded on device
- the two interfaces must have the same QoS config
- only the first interface added to the bond will have VF support
- the interface with VFs must be in switchdev mode

With the additional requirement of
- the version of the FW on the NIC needs to have VF Active/Active support
This requirement is indicated in the capabilities struct associated
with the NVM loaded on the NIC.

The balancing of traffic between the two interfaces is done on a queue
basis.  Taking the queues allocated to all of the VFs as a whole, one
half of them will be distributed to each interface.  When a link goes
down, then the queues allocated to the down interface will migrate to
the active port.  When the down port comes back up, then the same
queues as were originally assigned there will be moved back.

As of this patch, all bonding modes are allowed for VF communication.

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |   1 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   5 +
 drivers/net/ethernet/intel/ice/ice_common.c   |  15 +-
 drivers/net/ethernet/intel/ice/ice_common.h   |   2 +-
 drivers/net/ethernet/intel/ice/ice_lag.c      | 754 +++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_lag.h      |  21 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 7 files changed, 693 insertions(+), 106 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index fc127c0f9d66..53a570d3ddc6 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -207,6 +207,7 @@ enum ice_feature {
 	ICE_F_GCS,
 	ICE_F_ROCE_LAG,
 	ICE_F_SRIOV_LAG,
+	ICE_F_SRIOV_AA_LAG,
 	ICE_F_MBX_LIMIT,
 	ICE_F_MAX
 };
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index b3298063f1bd..9501bca4a049 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -135,6 +135,7 @@ struct ice_aqc_list_caps_elem {
 #define ICE_AQC_CAPS_FW_LAG_SUPPORT			0x0092
 #define ICE_AQC_BIT_ROCEV2_LAG				BIT(0)
 #define ICE_AQC_BIT_SRIOV_LAG				BIT(1)
+#define ICE_AQC_BIT_SRIOV_AA_LAG			BIT(2)
 
 	u8 major_ver;
 	u8 minor_ver;
@@ -2167,6 +2168,10 @@ struct ice_aqc_cfg_txqs {
 #define ICE_AQC_Q_CFG_SRC_PRT_M		0x7
 #define ICE_AQC_Q_CFG_DST_PRT_S		3
 #define ICE_AQC_Q_CFG_DST_PRT_M		(0x7 << ICE_AQC_Q_CFG_DST_PRT_S)
+#define ICE_AQC_Q_CFG_MODE_M		GENMASK(7, 6)
+#define ICE_AQC_Q_CFG_MODE_SAME_PF	0x0
+#define ICE_AQC_Q_CFG_MODE_GIVE_OWN	0x1
+#define ICE_AQC_Q_CFG_MODE_KEEP_OWN	0x2
 	u8 time_out;
 #define ICE_AQC_Q_CFG_TIMEOUT_S		2
 #define ICE_AQC_Q_CFG_TIMEOUT_M		(0x1F << ICE_AQC_Q_CFG_TIMEOUT_S)
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 29a02a0348b1..fc3d41198049 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2225,6 +2225,9 @@ ice_parse_common_caps(struct ice_hw *hw, struct ice_hw_common_caps *caps,
 		caps->sriov_lag = number & ICE_AQC_BIT_SRIOV_LAG;
 		ice_debug(hw, ICE_DBG_INIT, "%s: sriov_lag = %u\n",
 			  prefix, caps->sriov_lag);
+		caps->sriov_aa_lag = number & ICE_AQC_BIT_SRIOV_AA_LAG;
+		ice_debug(hw, ICE_DBG_INIT, "%s: sriov_aa_lag = %u\n",
+			  prefix, caps->sriov_aa_lag);
 		break;
 	case ICE_AQC_CAPS_TX_SCHED_TOPO_COMP_MODE:
 		caps->tx_sched_topo_comp_mode_en = (number == 1);
@@ -4519,24 +4522,24 @@ ice_aq_dis_lan_txq(struct ice_hw *hw, u8 num_qgrps,
 }
 
 /**
- * ice_aq_cfg_lan_txq
+ * ice_aq_cfg_lan_txq - send AQ command 0x0C32 to FW
  * @hw: pointer to the hardware structure
  * @buf: buffer for command
  * @buf_size: size of buffer in bytes
  * @num_qs: number of queues being configured
  * @oldport: origination lport
  * @newport: destination lport
+ * @mode: cmd_type for move to use
  * @cd: pointer to command details structure or NULL
  *
  * Move/Configure LAN Tx queue (0x0C32)
  *
- * There is a better AQ command to use for moving nodes, so only coding
- * this one for configuring the node.
+ * Return: Zero on success, associated error code on failure.
  */
 int
 ice_aq_cfg_lan_txq(struct ice_hw *hw, struct ice_aqc_cfg_txqs_buf *buf,
 		   u16 buf_size, u16 num_qs, u8 oldport, u8 newport,
-		   struct ice_sq_cd *cd)
+		   u8 mode, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_cfg_txqs *cmd;
 	struct ice_aq_desc desc;
@@ -4549,10 +4552,12 @@ ice_aq_cfg_lan_txq(struct ice_hw *hw, struct ice_aqc_cfg_txqs_buf *buf,
 	if (!buf)
 		return -EINVAL;
 
-	cmd->cmd_type = ICE_AQC_Q_CFG_TC_CHNG;
+	cmd->cmd_type = mode;
 	cmd->num_qs = num_qs;
 	cmd->port_num_chng = (oldport & ICE_AQC_Q_CFG_SRC_PRT_M);
 	cmd->port_num_chng |= FIELD_PREP(ICE_AQC_Q_CFG_DST_PRT_M, newport);
+	cmd->port_num_chng |= FIELD_PREP(ICE_AQC_Q_CFG_MODE_M,
+					 ICE_AQC_Q_CFG_MODE_KEEP_OWN);
 	cmd->time_out = FIELD_PREP(ICE_AQC_Q_CFG_TIMEOUT_M, 5);
 	cmd->blocked_cgds = 0;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index aefcf719e460..8ef25efa1b81 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -223,7 +223,7 @@ ice_ena_vsi_txq(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u16 q_handle,
 int
 ice_aq_cfg_lan_txq(struct ice_hw *hw, struct ice_aqc_cfg_txqs_buf *buf,
 		   u16 buf_size, u16 num_qs, u8 oldport, u8 newport,
-		   struct ice_sq_cd *cd);
+		   u8 mode, struct ice_sq_cd *cd);
 int ice_replay_vsi(struct ice_hw *hw, u16 vsi_handle);
 void ice_replay_post(struct ice_hw *hw);
 struct ice_q_ctx *
diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index b781a7387a5d..4493b9a046d1 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -14,6 +14,9 @@
 static const u8 lacp_train_pkt[ICE_TRAIN_PKT_LEN] = { 0, 0, 0, 0, 0, 0,
 						      0, 0, 0, 0, 0, 0,
 						      0x88, 0x09, 0, 0 };
+static const u8 act_act_train_pkt[ICE_TRAIN_PKT_LEN] = { 0, 0, 0, 0, 0, 0,
+							 0, 0, 0, 0, 0, 0,
+							 0, 0, 0, 0 };
 
 #define ICE_RECIPE_LEN			64
 #define ICE_LAG_SRIOV_CP_RECIPE		10
@@ -48,10 +51,10 @@ static void ice_lag_set_primary(struct ice_lag *lag)
 }
 
 /**
- * ice_lag_set_backup - set PF LAG state to Backup
+ * ice_lag_set_bkup - set PF LAG state to Backup
  * @lag: LAG info struct
  */
-static void ice_lag_set_backup(struct ice_lag *lag)
+static void ice_lag_set_bkup(struct ice_lag *lag)
 {
 	struct ice_pf *pf = lag->pf;
 
@@ -315,25 +318,15 @@ ice_lag_cfg_drop_fltr(struct ice_lag *lag, bool add)
 }
 
 /**
- * ice_lag_cfg_pf_fltrs - set filters up for new active port
+ * ice_lag_cfg_pf_fltrs_act_bkup - set filters up for new active port
  * @lag: local interfaces lag struct
- * @ptr: opaque data containing notifier event
+ * @bonding_info: netdev event bonding info
  */
 static void
-ice_lag_cfg_pf_fltrs(struct ice_lag *lag, void *ptr)
+ice_lag_cfg_pf_fltrs_act_bkup(struct ice_lag *lag,
+			      struct netdev_bonding_info *bonding_info)
 {
-	struct netdev_notifier_bonding_info *info = ptr;
-	struct netdev_bonding_info *bonding_info;
-	struct net_device *event_netdev;
-	struct device *dev;
-
-	event_netdev = netdev_notifier_info_to_dev(ptr);
-	/* not for this netdev */
-	if (event_netdev != lag->netdev)
-		return;
-
-	bonding_info = &info->bonding_info;
-	dev = ice_pf_to_dev(lag->pf);
+	struct device *dev = ice_pf_to_dev(lag->pf);
 
 	/* interface not active - remove old default VSI rule */
 	if (bonding_info->slave.state && lag->pf_rx_rule_id) {
@@ -354,12 +347,13 @@ ice_lag_cfg_pf_fltrs(struct ice_lag *lag, void *ptr)
 }
 
 /**
- * ice_lag_cfg_cp_fltr - configure filter for control packets
+ * ice_lag_cfg_lp_fltr - configure lport filters
  * @lag: local interface's lag struct
  * @add: add or remove rule
+ * @cp: control packet only or general PF lport rule
  */
 static void
-ice_lag_cfg_cp_fltr(struct ice_lag *lag, bool add)
+ice_lag_cfg_lp_fltr(struct ice_lag *lag, bool add, bool cp)
 {
 	struct ice_sw_rule_lkup_rx_tx *s_rule;
 	struct ice_vsi *vsi = lag->pf->vsi[0];
@@ -373,8 +367,17 @@ ice_lag_cfg_cp_fltr(struct ice_lag *lag, bool add)
 	}
 
 	if (add) {
-		s_rule->hdr.type = cpu_to_le16(ICE_AQC_SW_RULES_T_LKUP_RX);
-		s_rule->recipe_id = cpu_to_le16(ICE_LAG_SRIOV_CP_RECIPE);
+		if (cp) {
+			s_rule->recipe_id =
+				cpu_to_le16(ICE_LAG_SRIOV_CP_RECIPE);
+			memcpy(s_rule->hdr_data, lacp_train_pkt,
+			       ICE_TRAIN_PKT_LEN);
+		} else {
+			s_rule->recipe_id = cpu_to_le16(lag->act_act_recipe);
+			memcpy(s_rule->hdr_data, act_act_train_pkt,
+			       ICE_TRAIN_PKT_LEN);
+		}
+
 		s_rule->src = cpu_to_le16(vsi->port_info->lport);
 		s_rule->act = cpu_to_le32(ICE_FWD_TO_VSI |
 					  ICE_SINGLE_ACT_LAN_ENABLE |
@@ -382,27 +385,66 @@ ice_lag_cfg_cp_fltr(struct ice_lag *lag, bool add)
 					  FIELD_PREP(ICE_SINGLE_ACT_VSI_ID_M,
 						     vsi->vsi_num));
 		s_rule->hdr_len = cpu_to_le16(ICE_TRAIN_PKT_LEN);
-		memcpy(s_rule->hdr_data, lacp_train_pkt, ICE_TRAIN_PKT_LEN);
+		s_rule->hdr.type = cpu_to_le16(ICE_AQC_SW_RULES_T_LKUP_RX);
 		opc = ice_aqc_opc_add_sw_rules;
 	} else {
 		opc = ice_aqc_opc_remove_sw_rules;
-		s_rule->index = cpu_to_le16(lag->cp_rule_idx);
+		if (cp)
+			s_rule->index = cpu_to_le16(lag->cp_rule_idx);
+		else
+			s_rule->index = cpu_to_le16(lag->act_act_rule_idx);
 	}
 	if (ice_aq_sw_rules(&lag->pf->hw, s_rule, buf_len, 1, opc, NULL)) {
-		netdev_warn(lag->netdev, "Error %s CP rule for fail-over\n",
-			    add ? "ADDING" : "REMOVING");
+		netdev_warn(lag->netdev, "Error %s %s rule for aggregate\n",
+			    add ? "ADDING" : "REMOVING",
+			    cp ? "CONTROL PACKET" : "LPORT");
 		goto err_cp_free;
 	}
 
-	if (add)
-		lag->cp_rule_idx = le16_to_cpu(s_rule->index);
-	else
-		lag->cp_rule_idx = 0;
+	if (add) {
+		if (cp)
+			lag->cp_rule_idx = le16_to_cpu(s_rule->index);
+		else
+			lag->act_act_rule_idx = le16_to_cpu(s_rule->index);
+	} else {
+		if (cp)
+			lag->cp_rule_idx = 0;
+		else
+			lag->act_act_rule_idx = 0;
+	}
 
 err_cp_free:
 	kfree(s_rule);
 }
 
+/**
+ * ice_lag_cfg_pf_fltrs - set filters up for PF traffic
+ * @lag: local interfaces lag struct
+ * @ptr: opaque data containing notifier event
+ */
+static void
+ice_lag_cfg_pf_fltrs(struct ice_lag *lag, void *ptr)
+{
+	struct netdev_notifier_bonding_info *info = ptr;
+	struct netdev_bonding_info *bonding_info;
+	struct net_device *event_netdev;
+
+	event_netdev = netdev_notifier_info_to_dev(ptr);
+	if (event_netdev != lag->netdev)
+		return;
+
+	bonding_info = &info->bonding_info;
+
+	if (lag->bond_aa) {
+		if (lag->need_fltr_cfg) {
+			ice_lag_cfg_lp_fltr(lag, true, false);
+			lag->need_fltr_cfg = false;
+		}
+	} else {
+		ice_lag_cfg_pf_fltrs_act_bkup(lag, bonding_info);
+	}
+}
+
 /**
  * ice_display_lag_info - print LAG info
  * @lag: LAG info struct
@@ -626,7 +668,7 @@ ice_lag_move_vf_node_tc(struct ice_lag *lag, u8 oldport, u8 newport,
 	}
 
 	if (ice_aq_cfg_lan_txq(&lag->pf->hw, qbuf, qbuf_size, valq, oldport,
-			       newport, NULL)) {
+			       newport, ICE_AQC_Q_CFG_TC_CHNG, NULL)) {
 		dev_warn(dev, "Failure to configure queues for LAG failover\n");
 		goto qbuf_err;
 	}
@@ -762,10 +804,17 @@ void ice_lag_move_new_vf_nodes(struct ice_vf *vf)
 	if (lag->upper_netdev)
 		ice_lag_build_netdev_list(lag, &ndlist);
 
-	if (ice_is_feature_supported(pf, ICE_F_SRIOV_LAG) &&
-	    lag->bonded && lag->primary && pri_port != act_port &&
-	    !list_empty(lag->netdev_head))
-		ice_lag_move_single_vf_nodes(lag, pri_port, act_port, vsi->idx);
+	if (lag->bonded && lag->primary && !list_empty(lag->netdev_head)) {
+		if (lag->bond_aa &&
+		    ice_is_feature_supported(pf, ICE_F_SRIOV_AA_LAG))
+			ice_lag_aa_failover(lag, ICE_LAGS_IDX, NULL);
+
+		if (!lag->bond_aa &&
+		    ice_is_feature_supported(pf, ICE_F_SRIOV_LAG) &&
+		    pri_port != act_port)
+			ice_lag_move_single_vf_nodes(lag, pri_port, act_port,
+						     vsi->idx);
+	}
 
 	ice_lag_destroy_netdev_list(lag, &ndlist);
 
@@ -829,12 +878,21 @@ u8 ice_lag_prepare_vf_reset(struct ice_lag *lag)
 	u8 pri_prt, act_prt = ICE_LAG_INVALID_PORT;
 
 	if (lag && lag->bonded && lag->primary && lag->upper_netdev) {
-		pri_prt = lag->pf->hw.port_info->lport;
-		act_prt = lag->active_port;
-		if (act_prt != pri_prt && act_prt != ICE_LAG_INVALID_PORT)
-			ice_lag_move_vf_nodes_cfg(lag, act_prt, pri_prt);
-		else
-			act_prt = ICE_LAG_INVALID_PORT;
+		if (!lag->bond_aa) {
+			pri_prt = lag->pf->hw.port_info->lport;
+			act_prt = lag->active_port;
+			if (act_prt != pri_prt &&
+			    act_prt != ICE_LAG_INVALID_PORT)
+				ice_lag_move_vf_nodes_cfg(lag, act_prt, pri_prt);
+			else
+				act_prt = ICE_LAG_INVALID_PORT;
+		} else {
+			if (lag->port_bitmap & ICE_LAGS_M) {
+				lag->port_bitmap &= ~ICE_LAGS_M;
+				ice_lag_aa_failover(lag, ICE_LAGP_IDX, NULL);
+				lag->port_bitmap |= ICE_LAGS_M;
+			}
+		}
 	}
 
 	return act_prt;
@@ -851,10 +909,15 @@ void ice_lag_complete_vf_reset(struct ice_lag *lag, u8 act_prt)
 {
 	u8 pri_prt;
 
-	if (lag && lag->bonded && lag->primary &&
-	    act_prt != ICE_LAG_INVALID_PORT) {
-		pri_prt = lag->pf->hw.port_info->lport;
-		ice_lag_move_vf_nodes_cfg(lag, pri_prt, act_prt);
+	if (lag && lag->bonded && lag->primary) {
+		if (!lag->bond_aa) {
+			pri_prt = lag->pf->hw.port_info->lport;
+			if (act_prt != ICE_LAG_INVALID_PORT)
+				ice_lag_move_vf_nodes_cfg(lag, pri_prt,
+							  act_prt);
+		} else {
+			ice_lag_aa_failover(lag, ICE_LAGS_IDX, NULL);
+		}
 	}
 }
 
@@ -890,7 +953,7 @@ static void ice_lag_info_event(struct ice_lag *lag, void *ptr)
 	}
 
 	if (bonding_info->slave.state)
-		ice_lag_set_backup(lag);
+		ice_lag_set_bkup(lag);
 	else
 		ice_lag_set_primary(lag);
 
@@ -898,6 +961,273 @@ static void ice_lag_info_event(struct ice_lag *lag, void *ptr)
 	ice_display_lag_info(lag);
 }
 
+/**
+ * ice_lag_aa_qbuf_recfg - fill a single queue buffer for recfg cmd
+ * @hw: HW struct that contains the queue context
+ * @qbuf: pointer to single queue buffer
+ * @vsi_num: index of the VF VSI in PF space
+ * @qnum: queue index
+ *
+ * Return: Zero on success, error code on failure.
+ */
+static int
+ice_lag_aa_qbuf_recfg(struct ice_hw *hw, struct ice_aqc_cfg_txqs_buf *qbuf,
+		      u16 vsi_num, int qnum)
+{
+	struct ice_pf *pf = hw->back;
+	struct ice_q_ctx *q_ctx;
+	u16 q_id;
+
+	q_ctx = ice_get_lan_q_ctx(hw, vsi_num, 0, qnum);
+	if (!q_ctx) {
+		dev_dbg(ice_hw_to_dev(hw), "LAG queue %d no Q context\n", qnum);
+		return -ENOENT;
+	}
+
+	if (q_ctx->q_teid == ICE_INVAL_TEID) {
+		dev_dbg(ice_hw_to_dev(hw), "LAG queue %d INVAL TEID\n", qnum);
+		return -EINVAL;
+	}
+
+	if (q_ctx->q_handle == ICE_INVAL_Q_HANDLE) {
+		dev_dbg(ice_hw_to_dev(hw), "LAG queue %d INVAL Q HANDLE\n", qnum);
+		return -EINVAL;
+	}
+
+	q_id = pf->vsi[vsi_num]->txq_map[q_ctx->q_handle];
+	qbuf->queue_info[0].q_handle = cpu_to_le16(q_id);
+	qbuf->queue_info[0].tc = 0;
+	qbuf->queue_info[0].q_teid = cpu_to_le32(q_ctx->q_teid);
+
+	return 0;
+}
+
+/**
+ * ice_lag_aa_move_vf_qs - Move some/all VF queues to destination
+ * @lag: primary interface's lag struct
+ * @dest: index of destination port
+ * @vsi_num: index of VF VSI in PF space
+ * @all: if true move all queues to destination
+ * @odd: VF wide q indicator for odd/even
+ * @e_pf: PF struct for the event interface
+ *
+ * the parameter "all" is to control whether we are splitting the queues
+ * between two interfaces or moving them all to the destination interface
+ */
+static void ice_lag_aa_move_vf_qs(struct ice_lag *lag, u8 dest, u16 vsi_num,
+				  bool all, bool *odd, struct ice_pf *e_pf)
+{
+	DEFINE_RAW_FLEX(struct ice_aqc_cfg_txqs_buf, qbuf, queue_info, 1);
+	struct ice_hw *old_hw, *new_hw, *pri_hw, *sec_hw;
+	struct device *dev = ice_pf_to_dev(lag->pf);
+	struct ice_vsi_ctx *pv_ctx, *sv_ctx;
+	u16 num_q, qbuf_size, sec_vsi_num;
+	u8 pri_lport, sec_lport;
+	u32 pvf_teid, svf_teid;
+	u16 vf_id;
+
+	vf_id = lag->pf->vsi[vsi_num]->vf->vf_id;
+	/* If sec_vf[] not defined, then no second interface to share with */
+	if (lag->sec_vf[vf_id])
+		sec_vsi_num = lag->sec_vf[vf_id]->idx;
+	else
+		return;
+
+	pri_lport = lag->bond_lport_pri;
+	sec_lport = lag->bond_lport_sec;
+
+	if (pri_lport == ICE_LAG_INVALID_PORT ||
+	    sec_lport == ICE_LAG_INVALID_PORT)
+		return;
+
+	pri_hw = &lag->pf->hw;
+	if (lag->pf != e_pf)
+		sec_hw = &e_pf->hw;
+	else
+		sec_hw = ice_lag_find_hw_by_lport(lag, sec_lport);
+
+	if (!pri_hw || !sec_hw)
+		return;
+
+	if (dest == ICE_LAGP_IDX) {
+		old_hw = sec_hw;
+		new_hw = pri_hw;
+	} else {
+		old_hw = pri_hw;
+		new_hw = sec_hw;
+	}
+
+	pv_ctx = ice_get_vsi_ctx(pri_hw, vsi_num);
+	if (!pv_ctx) {
+		dev_warn(dev, "Unable to locate primary VSI %d context for LAG failover\n",
+			 vsi_num);
+		return;
+	}
+
+	sv_ctx = ice_get_vsi_ctx(sec_hw, sec_vsi_num);
+	if (!sv_ctx) {
+		dev_warn(dev, "Unable to locate secondary VSI %d context for LAG failover\n",
+			 vsi_num);
+		return;
+	}
+
+	num_q = pv_ctx->num_lan_q_entries[0];
+	qbuf_size = __struct_size(qbuf);
+
+	/* Suspend traffic for primary VSI VF */
+	pvf_teid = le32_to_cpu(pv_ctx->sched.vsi_node[0]->info.node_teid);
+	ice_sched_suspend_resume_elems(pri_hw, 1, &pvf_teid, true);
+
+	/* Suspend traffic for secondary VSI VF */
+	svf_teid = le32_to_cpu(sv_ctx->sched.vsi_node[0]->info.node_teid);
+	ice_sched_suspend_resume_elems(sec_hw, 1, &svf_teid, true);
+
+	for (int i = 0; i < num_q; i++) {
+		struct ice_sched_node *n_prt, *q_node, *parent;
+		struct ice_port_info *pi, *new_pi;
+		struct ice_vsi_ctx *src_ctx;
+		struct ice_sched_node *p;
+		struct ice_q_ctx *q_ctx;
+		u16 dst_vsi_num;
+
+		pi = old_hw->port_info;
+		new_pi = new_hw->port_info;
+
+		*odd = !(*odd);
+		if ((dest == ICE_LAGP_IDX && *odd && !all) ||
+		    (dest == ICE_LAGS_IDX && !(*odd) && !all) ||
+		    lag->q_home[vf_id][i] == dest)
+			continue;
+
+		if (dest == ICE_LAGP_IDX)
+			dst_vsi_num = vsi_num;
+		else
+			dst_vsi_num = sec_vsi_num;
+
+		n_prt = ice_sched_get_free_qparent(new_hw->port_info,
+						   dst_vsi_num, 0,
+						   ICE_SCHED_NODE_OWNER_LAN);
+		if (!n_prt)
+			continue;
+
+		q_ctx = ice_get_lan_q_ctx(pri_hw, vsi_num, 0, i);
+		if (!q_ctx)
+			continue;
+
+		if (dest == ICE_LAGP_IDX)
+			src_ctx = sv_ctx;
+		else
+			src_ctx = pv_ctx;
+
+		q_node = ice_sched_find_node_by_teid(src_ctx->sched.vsi_node[0],
+						     q_ctx->q_teid);
+		if (!q_node)
+			continue;
+
+		qbuf->src_parent_teid = q_node->info.parent_teid;
+		qbuf->dst_parent_teid = n_prt->info.node_teid;
+
+		/* Move the node in the HW/FW */
+		if (ice_lag_aa_qbuf_recfg(pri_hw, qbuf, vsi_num, i))
+			continue;
+
+		if (dest == ICE_LAGP_IDX)
+			ice_aq_cfg_lan_txq(pri_hw, qbuf, qbuf_size, 1,
+					   sec_lport, pri_lport,
+					   ICE_AQC_Q_CFG_MOVE_TC_CHNG,
+					   NULL);
+		else
+			ice_aq_cfg_lan_txq(pri_hw, qbuf, qbuf_size, 1,
+					   pri_lport, sec_lport,
+					   ICE_AQC_Q_CFG_MOVE_TC_CHNG,
+					   NULL);
+
+		/* Move the node in the SW */
+		parent = q_node->parent;
+		if (!parent)
+			continue;
+
+		for (int n = 0; n < parent->num_children; n++) {
+			int j;
+
+			if (parent->children[n] != q_node)
+				continue;
+
+			for (j = n + 1; j < parent->num_children;
+			     j++) {
+				parent->children[j - 1] =
+					parent->children[j];
+			}
+			parent->children[j] = NULL;
+			parent->num_children--;
+			break;
+		}
+
+		p = pi->sib_head[0][q_node->tx_sched_layer];
+		while (p) {
+			if (p->sibling == q_node) {
+				p->sibling = q_node->sibling;
+				break;
+			}
+			p = p->sibling;
+		}
+
+		if (pi->sib_head[0][q_node->tx_sched_layer] == q_node)
+			pi->sib_head[0][q_node->tx_sched_layer] =
+				q_node->sibling;
+
+		q_node->parent = n_prt;
+		q_node->info.parent_teid = n_prt->info.node_teid;
+		q_node->sibling = NULL;
+		p = new_pi->sib_head[0][q_node->tx_sched_layer];
+		if (p) {
+			while (p) {
+				if (!p->sibling) {
+					p->sibling = q_node;
+					break;
+				}
+				p = p->sibling;
+			}
+		} else {
+			new_pi->sib_head[0][q_node->tx_sched_layer] =
+				q_node;
+		}
+
+		n_prt->children[n_prt->num_children++] = q_node;
+		lag->q_home[vf_id][i] = dest;
+	}
+
+	ice_sched_suspend_resume_elems(pri_hw, 1, &pvf_teid, false);
+	ice_sched_suspend_resume_elems(sec_hw, 1, &svf_teid, false);
+}
+
+/**
+ * ice_lag_aa_failover - move VF queues in A/A mode
+ * @lag: primary lag struct
+ * @dest: index of destination port
+ * @e_pf: PF struct for event port
+ */
+void ice_lag_aa_failover(struct ice_lag *lag, u8 dest, struct ice_pf *e_pf)
+{
+	bool odd = true, all = false;
+	int i;
+
+	/* Primary can be a target if down (cleanup), but secondary can't */
+	if (dest == ICE_LAGS_IDX && !(lag->port_bitmap & ICE_LAGS_M))
+		return;
+
+	/* Move all queues to a destination if only one port is active,
+	 * or no ports are active and dest is primary.
+	 */
+	if ((lag->port_bitmap ^ (ICE_LAGP_M | ICE_LAGS_M)) ||
+	    (!lag->port_bitmap && dest == ICE_LAGP_IDX))
+		all = true;
+
+	ice_for_each_vsi(lag->pf, i)
+		if (lag->pf->vsi[i] && lag->pf->vsi[i]->type == ICE_VSI_VF)
+			ice_lag_aa_move_vf_qs(lag, dest, i, all, &odd, e_pf);
+}
+
 /**
  * ice_lag_reclaim_vf_tc - move scheduling nodes back to primary interface
  * @lag: primary interface lag struct
@@ -960,7 +1290,7 @@ ice_lag_reclaim_vf_tc(struct ice_lag *lag, struct ice_hw *src_hw, u16 vsi_num,
 
 	if (ice_aq_cfg_lan_txq(hw, qbuf, qbuf_size, numq,
 			       src_hw->port_info->lport, hw->port_info->lport,
-			       NULL)) {
+			       ICE_AQC_Q_CFG_TC_CHNG, NULL)) {
 		dev_warn(dev, "Failure to configure queues for LAG failover\n");
 		goto reclaim_qerr;
 	}
@@ -1031,6 +1361,7 @@ static void ice_lag_link(struct ice_lag *lag)
 
 	lag->bonded = true;
 	lag->role = ICE_LAG_UNSET;
+	lag->need_fltr_cfg = true;
 	netdev_info(lag->netdev, "Shared SR-IOV resources in bond are active\n");
 }
 
@@ -1057,10 +1388,10 @@ static void ice_lag_config_eswitch(struct ice_lag *lag,
 }
 
 /**
- * ice_lag_unlink - handle unlink event
+ * ice_lag_act_bkup_unlink - handle unlink event for A/B bond
  * @lag: LAG info struct
  */
-static void ice_lag_unlink(struct ice_lag *lag)
+static void ice_lag_act_bkup_unlink(struct ice_lag *lag)
 {
 	u8 pri_port, act_port, loc_port;
 	struct ice_pf *pf = lag->pf;
@@ -1096,10 +1427,32 @@ static void ice_lag_unlink(struct ice_lag *lag)
 			}
 		}
 	}
+}
 
-	lag->bonded = false;
-	lag->role = ICE_LAG_NONE;
-	lag->upper_netdev = NULL;
+/**
+ * ice_lag_aa_unlink - handle unlink event for Active-Active bond
+ * @lag: LAG info struct
+ */
+static void ice_lag_aa_unlink(struct ice_lag *lag)
+{
+	struct ice_lag *pri_lag;
+
+	if (lag->primary) {
+		pri_lag = lag;
+		lag->port_bitmap &= ~ICE_LAGP_M;
+	} else {
+		pri_lag = ice_lag_find_primary(lag);
+		if (pri_lag)
+			pri_lag->port_bitmap &= ICE_LAGS_M;
+	}
+
+	if (pri_lag) {
+		ice_lag_aa_failover(pri_lag, ICE_LAGP_IDX, lag->pf);
+		if (lag->primary)
+			pri_lag->bond_lport_pri = ICE_LAG_INVALID_PORT;
+		else
+			pri_lag->bond_lport_sec = ICE_LAG_INVALID_PORT;
+	}
 }
 
 /**
@@ -1115,10 +1468,20 @@ static void ice_lag_link_unlink(struct ice_lag *lag, void *ptr)
 	if (netdev != lag->netdev)
 		return;
 
-	if (info->linking)
+	if (info->linking) {
 		ice_lag_link(lag);
-	else
-		ice_lag_unlink(lag);
+	} else {
+		if (lag->bond_aa)
+			ice_lag_aa_unlink(lag);
+		else
+			ice_lag_act_bkup_unlink(lag);
+
+		lag->bonded = false;
+		lag->role = ICE_LAG_NONE;
+		lag->upper_netdev = NULL;
+		lag->bond_aa = false;
+		lag->need_fltr_cfg = false;
+	}
 }
 
 /**
@@ -1320,6 +1683,11 @@ static void ice_lag_init_feature_support_flag(struct ice_pf *pf)
 		ice_set_feature_support(pf, ICE_F_SRIOV_LAG);
 	else
 		ice_clear_feature_support(pf, ICE_F_SRIOV_LAG);
+
+	if (caps->sriov_aa_lag && ice_pkg_has_lport_extract(&pf->hw))
+		ice_set_feature_support(pf, ICE_F_SRIOV_AA_LAG);
+	else
+		ice_clear_feature_support(pf, ICE_F_SRIOV_AA_LAG);
 }
 
 /**
@@ -1350,22 +1718,38 @@ static void ice_lag_changeupper_event(struct ice_lag *lag, void *ptr)
 			/* Configure primary's SWID to be shared */
 			ice_lag_primary_swid(lag, true);
 			primary_lag = lag;
+			lag->bond_lport_pri = lag->pf->hw.port_info->lport;
+			lag->bond_lport_sec = ICE_LAG_INVALID_PORT;
+			lag->port_bitmap = 0;
 		} else {
 			u16 swid;
 
 			swid = primary_lag->pf->hw.port_info->sw_id;
 			ice_lag_set_swid(swid, lag, true);
 			ice_lag_add_prune_list(primary_lag, lag->pf);
-			ice_lag_cfg_drop_fltr(lag, true);
+			primary_lag->bond_lport_sec =
+				lag->pf->hw.port_info->lport;
 		}
-		/* add filter for primary control packets */
-		ice_lag_cfg_cp_fltr(lag, true);
+		/* Mdd filter for primary control packets */
+		ice_lag_cfg_lp_fltr(lag, true, true);
 	} else {
 		if (!primary_lag && lag->primary)
 			primary_lag = lag;
 
+		if (primary_lag) {
+			for (int i = 0; i < ICE_MAX_SRIOV_VFS; i++) {
+				if (primary_lag->sec_vf[i]) {
+					ice_vsi_release(primary_lag->sec_vf[i]);
+					primary_lag->sec_vf[i] = NULL;
+				}
+			}
+		}
+
 		if (!lag->primary) {
 			ice_lag_set_swid(0, lag, false);
+			if (primary_lag)
+				primary_lag->bond_lport_sec =
+					ICE_LAG_INVALID_PORT;
 		} else {
 			if (primary_lag && lag->primary) {
 				ice_lag_primary_swid(lag, false);
@@ -1373,7 +1757,7 @@ static void ice_lag_changeupper_event(struct ice_lag *lag, void *ptr)
 			}
 		}
 		/* remove filter for control packets */
-		ice_lag_cfg_cp_fltr(lag, false);
+		ice_lag_cfg_lp_fltr(lag, false, !lag->bond_aa);
 	}
 }
 
@@ -1399,18 +1783,34 @@ static void ice_lag_monitor_link(struct ice_lag *lag, void *ptr)
 	if (!netif_is_same_ice(lag->pf, event_netdev))
 		return;
 
+	if (info->upper_dev != lag->upper_netdev)
+		return;
+
+	if (info->linking)
+		return;
+
 	pf = lag->pf;
 	prim_hw = &pf->hw;
 	prim_port = prim_hw->port_info->lport;
 
-	if (info->upper_dev != lag->upper_netdev)
-		return;
-
-	if (!info->linking) {
-		/* Since there are only two interfaces allowed in SRIOV+LAG, if
-		 * one port is leaving, then nodes need to be on primary
-		 * interface.
-		 */
+	/* Since there are only two interfaces allowed in SRIOV+LAG, if
+	 * one port is leaving, then nodes need to be on primary
+	 * interface.
+	 */
+	if (lag->bond_aa) {
+		struct ice_netdev_priv *e_ndp;
+		struct ice_pf *e_pf;
+
+		e_ndp = netdev_priv(event_netdev);
+		e_pf = e_ndp->vsi->back;
+
+		if (lag->bond_lport_pri != ICE_LAG_INVALID_PORT &&
+		    lag->port_bitmap & ICE_LAGS_M) {
+			lag->port_bitmap &= ~ICE_LAGS_M;
+			ice_lag_aa_failover(lag, ICE_LAGP_IDX, e_pf);
+			lag->bond_lport_sec = ICE_LAG_INVALID_PORT;
+		}
+	} else {
 		if (prim_port != lag->active_port &&
 		    lag->active_port != ICE_LAG_INVALID_PORT) {
 			active_hw = ice_lag_find_hw_by_lport(lag,
@@ -1422,44 +1822,32 @@ static void ice_lag_monitor_link(struct ice_lag *lag, void *ptr)
 }
 
 /**
- * ice_lag_monitor_active - main PF keep track of which port is active
+ * ice_lag_monitor_act_bkup - keep track of which port is active in A/B LAG
  * @lag: lag info struct
- * @ptr: opaque data containing notifier event
+ * @b_info: bonding info
+ * @event_netdev: net_device got target netdev
  *
  * This function is for the primary PF to monitor changes in which port is
  * active and handle changes for SRIOV VF functionality
  */
-static void ice_lag_monitor_active(struct ice_lag *lag, void *ptr)
+static void ice_lag_monitor_act_bkup(struct ice_lag *lag,
+				     struct netdev_bonding_info *b_info,
+				     struct net_device *event_netdev)
 {
-	struct netdev_notifier_bonding_info *info = ptr;
-	struct net_device *event_netdev, *event_upper;
-	struct netdev_bonding_info *bonding_info;
 	struct ice_netdev_priv *event_np;
 	struct ice_pf *pf, *event_pf;
 	u8 prim_port, event_port;
 
-	if (!lag->primary)
-		return;
-
 	pf = lag->pf;
 	if (!pf)
 		return;
 
-	event_netdev = netdev_notifier_info_to_dev(ptr);
-	rcu_read_lock();
-	event_upper = netdev_master_upper_dev_get_rcu(event_netdev);
-	rcu_read_unlock();
-	if (!netif_is_ice(event_netdev) || event_upper != lag->upper_netdev)
-		return;
-
 	event_np = netdev_priv(event_netdev);
 	event_pf = event_np->vsi->back;
 	event_port = event_pf->hw.port_info->lport;
 	prim_port = pf->hw.port_info->lport;
 
-	bonding_info = &info->bonding_info;
-
-	if (!bonding_info->slave.state) {
+	if (!b_info->slave.state) {
 		/* if no port is currently active, then nodes and filters exist
 		 * on primary port, check if we need to move them
 		 */
@@ -1495,6 +1883,128 @@ static void ice_lag_monitor_active(struct ice_lag *lag, void *ptr)
 	}
 }
 
+/**
+ * ice_lag_aa_clear_spoof - adjust the placeholder VSI spoofing for A/A LAG
+ * @vsi: placeholder VSI to adjust
+ */
+static void ice_lag_aa_clear_spoof(struct ice_vsi *vsi)
+{
+	ice_vsi_update_security(vsi, ice_vsi_ctx_clear_antispoof);
+}
+
+/**
+ * ice_lag_monitor_act_act - Keep track of active ports in A/A LAG
+ * @lag: lag struct for primary interface
+ * @b_info: bonding_info for event
+ * @event_netdev: net_device for target netdev
+ */
+static void ice_lag_monitor_act_act(struct ice_lag *lag,
+				    struct netdev_bonding_info *b_info,
+				    struct net_device *event_netdev)
+{
+	struct ice_netdev_priv *event_np;
+	u8 prim_port, event_port;
+	struct ice_pf *event_pf;
+
+	event_np = netdev_priv(event_netdev);
+	event_pf = event_np->vsi->back;
+	event_port = event_pf->hw.port_info->lport;
+	prim_port = lag->pf->hw.port_info->lport;
+
+	if (b_info->slave.link == BOND_LINK_UP) {
+		/* Port is coming up */
+		if (prim_port == event_port) {
+			/* Processing event for primary interface */
+			if (lag->bond_lport_pri == ICE_LAG_INVALID_PORT)
+				return;
+
+			if (!(lag->port_bitmap & ICE_LAGP_M)) {
+				/* Primary port was not marked up before, move
+				 * some|all VF queues to it and mark as up
+				 */
+				lag->port_bitmap |= ICE_LAGP_M;
+				ice_lag_aa_failover(lag, ICE_LAGP_IDX, event_pf);
+			}
+		} else {
+			if (lag->bond_lport_sec == ICE_LAG_INVALID_PORT)
+				return;
+
+			/* Create placeholder VSIs on secondary PF.
+			 * The placeholder is necessary so that we have
+			 * an element that represents the VF on the secondary
+			 * interface's scheduling tree.  This will be a tree
+			 * root for scheduling nodes when they are moved to
+			 * the secondary interface.
+			 */
+			if (!lag->sec_vf[0]) {
+				struct ice_vsi_cfg_params params = {};
+				struct ice_vsi *nvsi;
+				struct ice_vf *vf;
+				unsigned int bkt;
+
+				params.type = ICE_VSI_VF;
+				params.port_info = event_pf->hw.port_info;
+				params.flags = ICE_VSI_FLAG_INIT;
+
+				ice_for_each_vf(lag->pf, bkt, vf) {
+					params.vf = vf;
+					nvsi = ice_vsi_setup(event_pf,
+							     &params);
+					ice_lag_aa_clear_spoof(nvsi);
+					lag->sec_vf[vf->vf_id] = nvsi;
+				}
+			}
+
+			if (!(lag->port_bitmap & ICE_LAGS_M)) {
+				/* Secondary port was not marked up before,
+				 * move some|all VF queues to it and mark as up
+				 */
+				lag->port_bitmap |= ICE_LAGS_M;
+				ice_lag_aa_failover(lag, ICE_LAGS_IDX, event_pf);
+			}
+		}
+	} else {
+		/* Port is going down */
+		if (prim_port == event_port) {
+			lag->port_bitmap &= ~ICE_LAGP_M;
+			ice_lag_aa_failover(lag, ICE_LAGS_IDX, event_pf);
+		} else {
+			lag->port_bitmap &= ~ICE_LAGS_M;
+			ice_lag_aa_failover(lag, ICE_LAGP_IDX, event_pf);
+		}
+	}
+}
+
+/**
+ * ice_lag_monitor_info - Calls relevant A/A or A/B monitoring function
+ * @lag: lag info struct
+ * @ptr: opaque data containing notifier event
+ *
+ * This function is for the primary PF to monitor changes in which port is
+ * active and handle changes for SRIOV VF functionality
+ */
+static void ice_lag_monitor_info(struct ice_lag *lag, void *ptr)
+{
+	struct netdev_notifier_bonding_info *info = ptr;
+	struct net_device *event_netdev, *event_upper;
+	struct netdev_bonding_info *bonding_info;
+
+	if (!lag->primary)
+		return;
+
+	event_netdev = netdev_notifier_info_to_dev(ptr);
+	bonding_info = &info->bonding_info;
+	rcu_read_lock();
+	event_upper = netdev_master_upper_dev_get_rcu(event_netdev);
+	rcu_read_unlock();
+	if (!netif_is_ice(event_netdev) || event_upper != lag->upper_netdev)
+		return;
+
+	if (lag->bond_aa)
+		ice_lag_monitor_act_act(lag, bonding_info, event_netdev);
+	else
+		ice_lag_monitor_act_bkup(lag, bonding_info, event_netdev);
+}
 /**
  * ice_lag_chk_comp - evaluate bonded interface for feature support
  * @lag: lag info struct
@@ -1510,6 +2020,14 @@ ice_lag_chk_comp(struct ice_lag *lag, void *ptr)
 	struct device *dev;
 	int count = 0;
 
+	/* All members need to know if bond A/A or A/B */
+	bonding_info = &info->bonding_info;
+	lag->bond_mode = bonding_info->master.bond_mode;
+	if (lag->bond_mode != BOND_MODE_ACTIVEBACKUP)
+		lag->bond_aa = true;
+	else
+		lag->bond_aa = false;
+
 	if (!lag->primary)
 		return true;
 
@@ -1530,12 +2048,9 @@ ice_lag_chk_comp(struct ice_lag *lag, void *ptr)
 		return false;
 	}
 
-	bonding_info = &info->bonding_info;
-	lag->bond_mode = bonding_info->master.bond_mode;
-	if (lag->bond_mode != BOND_MODE_ACTIVEBACKUP) {
-		dev_info(dev, "Bond Mode not ACTIVE-BACKUP - VF LAG disabled\n");
+	if (lag->bond_aa && !ice_is_feature_supported(lag->pf,
+						      ICE_F_SRIOV_AA_LAG))
 		return false;
-	}
 
 	list_for_each(tmp, lag->netdev_head) {
 		struct ice_dcbx_cfg *dcb_cfg, *peer_dcb_cfg;
@@ -1693,6 +2208,26 @@ static void ice_lag_disable_sriov_bond(struct ice_lag *lag)
 	struct ice_pf *pf = np->vsi->back;
 
 	ice_clear_feature_support(pf, ICE_F_SRIOV_LAG);
+	ice_clear_feature_support(pf, ICE_F_SRIOV_AA_LAG);
+}
+
+/**
+ * ice_lag_preset_drop_fltr - preset drop filter for A/B bonds
+ * @lag: local lag struct
+ * @ptr: opaque data containing event
+ *
+ * Sets the initial drop filter for secondary interface in an
+ * active-backup bond
+ */
+static void ice_lag_preset_drop_fltr(struct ice_lag *lag, void *ptr)
+{
+	struct net_device *netdev = netdev_notifier_info_to_dev(ptr);
+
+	if (netdev != lag->netdev || lag->primary || !lag->need_fltr_cfg)
+		return;
+
+	ice_lag_cfg_drop_fltr(lag, true);
+	lag->need_fltr_cfg = false;
 }
 
 /**
@@ -1733,8 +2268,10 @@ static void ice_lag_process_event(struct work_struct *work)
 				ice_lag_unregister(lag_work->lag, netdev);
 				goto lag_cleanup;
 			}
-			ice_lag_monitor_active(lag_work->lag,
-					       &lag_work->info.bonding_info);
+			ice_lag_preset_drop_fltr(lag_work->lag,
+						 &lag_work->info.bonding_info);
+			ice_lag_monitor_info(lag_work->lag,
+					     &lag_work->info.bonding_info);
 			ice_lag_cfg_pf_fltrs(lag_work->lag,
 					     &lag_work->info.bonding_info);
 		}
@@ -1987,7 +2524,8 @@ ice_lag_move_vf_nodes_tc_sync(struct ice_lag *lag, struct ice_hw *dest_hw,
 	}
 
 	if (ice_aq_cfg_lan_txq(hw, qbuf, qbuf_size, numq, hw->port_info->lport,
-			       dest_hw->port_info->lport, NULL)) {
+			       dest_hw->port_info->lport,
+			       ICE_AQC_Q_CFG_TC_CHNG, NULL)) {
 		dev_warn(dev, "Failure to configure queues for LAG reset rebuild\n");
 		goto sync_qerr;
 	}
@@ -2083,9 +2621,13 @@ int ice_init_lag(struct ice_pf *pf)
 	lag->netdev = vsi->netdev;
 	lag->role = ICE_LAG_NONE;
 	lag->active_port = ICE_LAG_INVALID_PORT;
+	lag->port_bitmap = 0x0;
 	lag->bonded = false;
+	lag->bond_aa = false;
+	lag->need_fltr_cfg = false;
 	lag->upper_netdev = NULL;
 	lag->notif_block.notifier_call = NULL;
+	memset(lag->sec_vf, 0, sizeof(lag->sec_vf));
 
 	err = ice_register_lag_handler(lag);
 	if (err) {
@@ -2103,6 +2645,11 @@ int ice_init_lag(struct ice_pf *pf)
 	if (err)
 		goto free_rcp_res;
 
+	err = ice_create_lag_recipe(&pf->hw, &lag->act_act_recipe,
+				    ice_lport_rcp, 1);
+	if (err)
+		goto  free_lport_res;
+
 	/* associate recipes to profiles */
 	for (n = 0; n < ICE_PROFID_IPV6_GTPU_IPV6_TCP_INNER; n++) {
 		err = ice_aq_get_recipe_to_profile(&pf->hw, n,
@@ -2112,7 +2659,8 @@ int ice_init_lag(struct ice_pf *pf)
 
 		if (recipe_bits & BIT(ICE_SW_LKUP_DFLT)) {
 			recipe_bits |= BIT(lag->pf_recipe) |
-				       BIT(lag->lport_recipe);
+				       BIT(lag->lport_recipe) |
+				       BIT(lag->act_act_recipe);
 			ice_aq_map_recipe_to_profile(&pf->hw, n,
 						     recipe_bits, NULL);
 		}
@@ -2123,9 +2671,13 @@ int ice_init_lag(struct ice_pf *pf)
 	dev_dbg(dev, "INIT LAG complete\n");
 	return 0;
 
+free_lport_res:
+	ice_free_hw_res(&pf->hw, ICE_AQC_RES_TYPE_RECIPE, 1,
+			&lag->lport_recipe);
+
 free_rcp_res:
 	ice_free_hw_res(&pf->hw, ICE_AQC_RES_TYPE_RECIPE, 1,
-			&pf->lag->pf_recipe);
+			&lag->pf_recipe);
 lag_error:
 	kfree(lag);
 	pf->lag = NULL;
@@ -2210,11 +2762,15 @@ void ice_lag_rebuild(struct ice_pf *pf)
 			ice_lag_move_vf_nodes_sync(prim_lag, &pf->hw);
 	}
 
-	ice_lag_cfg_cp_fltr(lag, true);
+	if (!lag->bond_aa) {
+		ice_lag_cfg_lp_fltr(lag, true, true);
+		if (lag->pf_rx_rule_id)
+			if (ice_lag_cfg_dflt_fltr(lag, true))
+				dev_err(ice_pf_to_dev(pf), "Error adding default VSI rule in rebuild\n");
+	} else {
+		ice_lag_cfg_lp_fltr(lag, true, false);
+	}
 
-	if (lag->pf_rx_rule_id)
-		if (ice_lag_cfg_dflt_fltr(lag, true))
-			dev_err(ice_pf_to_dev(pf), "Error adding default VSI rule in rebuild\n");
 
 	ice_clear_rdma_cap(pf);
 lag_rebuild_out:
diff --git a/drivers/net/ethernet/intel/ice/ice_lag.h b/drivers/net/ethernet/intel/ice/ice_lag.h
index 69347d9f986b..e2a0a782bdd7 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.h
+++ b/drivers/net/ethernet/intel/ice/ice_lag.h
@@ -14,7 +14,11 @@ enum ice_lag_role {
 	ICE_LAG_UNSET
 };
 
-#define ICE_LAG_INVALID_PORT 0xFF
+#define ICE_LAG_INVALID_PORT		0xFF
+#define ICE_LAGP_IDX			0
+#define ICE_LAGS_IDX			1
+#define ICE_LAGP_M			0x1
+#define ICE_LAGS_M			0x2
 
 #define ICE_LAG_RESET_RETRIES		5
 #define ICE_SW_DEFAULT_PROFILE		0
@@ -41,12 +45,26 @@ struct ice_lag {
 	u8 active_port; /* lport value for the current active port */
 	u8 bonded:1; /* currently bonded */
 	u8 primary:1; /* this is primary */
+	u8 bond_aa:1; /* is this bond active-active */
+	u8 need_fltr_cfg:1; /* fltrs for A/A bond still need to be make */
+	u8 port_bitmap:2; /* bitmap of active ports */
+	u8 bond_lport_pri; /* lport values for primary PF */
+	u8 bond_lport_sec; /* lport values for secondary PF */
+
+	/* q_home keeps track of which interface the q is currently on */
+	u8 q_home[ICE_MAX_SRIOV_VFS][ICE_MAX_RSS_QS_PER_VF];
+
+	/* placeholder VSI for hanging VF queues from on secondary interface */
+	struct ice_vsi *sec_vf[ICE_MAX_SRIOV_VFS];
+
 	u16 pf_recipe;
 	u16 lport_recipe;
+	u16 act_act_recipe;
 	u16 pf_rx_rule_id;
 	u16 pf_tx_rule_id;
 	u16 cp_rule_idx;
 	u16 lport_rule_idx;
+	u16 act_act_rule_idx;
 	u8 role;
 };
 
@@ -65,6 +83,7 @@ struct ice_lag_work {
 };
 
 void ice_lag_move_new_vf_nodes(struct ice_vf *vf);
+void ice_lag_aa_failover(struct ice_lag *lag, u8 dest, struct ice_pf *e_pf);
 int ice_init_lag(struct ice_pf *pf);
 void ice_deinit_lag(struct ice_pf *pf);
 void ice_lag_rebuild(struct ice_pf *pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index a7fc748d9db6..c09629c381e2 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -295,6 +295,7 @@ struct ice_hw_common_caps {
 
 	bool roce_lag;
 	bool sriov_lag;
+	bool sriov_aa_lag;
 
 	bool nvm_update_pending_nvm;
 	bool nvm_update_pending_orom;
-- 
2.49.0

