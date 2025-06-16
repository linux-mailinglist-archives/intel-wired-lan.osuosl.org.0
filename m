Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 509BFADB94A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Jun 2025 21:03:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E691E809EB;
	Mon, 16 Jun 2025 19:03:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lTqN8fMuGAOw; Mon, 16 Jun 2025 19:03:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0EB4A80983
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750100585;
	bh=/MSOwAPR+CK6Ot9RLSdkw949AtDTxcitl0N2nXgm+3Q=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hCL4vDTpffwq2lBD54SOdc6rV444OaAAyRPbeuRyvBvbMozLdMlL5eiLEmyqrWbWZ
	 tIpiEGCKpB8ONb4Ld+EljLcCxAzsRt9mbLornjHEqo4qFChQRBUEWnbmggYwYREi64
	 FUvbNNAVuwBt8hsDAp4cccAfi5ZRIn3X1piJsqkPQObfN1CCfZ8cUkhsF65Rg19WfO
	 vgZAz/6j9jfEW2I7XCoKtGLsjG+cO6/XcKGFj/Efur6EJQkMfC76GfZDIuTE8jByNp
	 PRAnqE0IztoMMBzkFSwqu7Aenns69QLn9PQlacCi1/Vi9ExN1q12XS7OpK1Us4qwQF
	 UbPcm9BGDjMFQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0EB4A80983;
	Mon, 16 Jun 2025 19:03:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 26FAD16B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 19:03:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 14FB880890
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 19:02:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nfBa-8g1xBee for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jun 2025 19:02:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4E0EC80892
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E0EC80892
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4E0EC80892
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 19:02:58 +0000 (UTC)
X-CSE-ConnectionGUID: XTeXXxJCRficLX7eGHb+bQ==
X-CSE-MsgGUID: 1m/8203jT3OEWJAmoamXDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="52122669"
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="52122669"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 12:02:56 -0700
X-CSE-ConnectionGUID: rDudKqqqQP2H/mfAL/4D0Q==
X-CSE-MsgGUID: qyidj959Tzem7tOmss/r0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="153513108"
Received: from dmert-mdev.jf.intel.com ([10.166.5.145])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 12:02:56 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Mon, 16 Jun 2025 13:03:19 +0200
Message-ID: <20250616110323.788970-5-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250616110323.788970-1-david.m.ertman@intel.com>
References: <20250616110323.788970-1-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750100578; x=1781636578;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=37l7VPXwq9Hk+ZEPneI/NC8rr6JigtSOHPh44mkVlb0=;
 b=Fv698dEe0bwWOXW3KvIGCggCNPLwyF60fOPJMFqBskZleERAqGojyIbA
 uwIgWY8K9vMtdAGF7A+RTuO42mMme1Y13mtTU2P+HAk+ojk/8bHMicZR8
 0caj2+FkxhqsdQCVS48yzkxRdNUZi+oBCFjjrrbl5JmARut9oTvwPblVL
 HaXBWYbEzIyQH5dNhmyPWqfdH7pkwaNx9ekj6ps8VZIKqnb8K8Bw/JrFe
 yGuynDxA0El3pw8gy5y9Y2qBZtXQa9QLoJ9/gFYjN0LE42aaiRIUdS5+f
 HYRqhIymHBm83CR91Rc/DuuFIB61k6m0kfmn33hXY706Zi0MqsgIrKrUu
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Fv698dEe
Subject: [Intel-wired-lan] [PATCH iwl-next v4 4/8] [PATCH iwl-next v3 4/8]
 ice: move LAG function in code to prepare for
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

Active-Active

In the SRIOV LAG Active-Active, the functions ice_lag_cfg_pf_fltr's
and ice_lag_config_eswitch's content are moved to earlier locations
in the source file.  Also, ice_lag_cfg_pf_fltr is renamed, and its
flow is changed.

To reduce the delta in the larger patch, move the original functions
to their new location so that only functional changes are needed in
the larger patch.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lag.c | 147 ++++++++++++-----------
 1 file changed, 74 insertions(+), 73 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 3d5918a270a4..0c6dbf712897 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -100,6 +100,28 @@ static bool netif_is_same_ice(struct ice_pf *pf, struct net_device *netdev)
 	return true;
 }
 
+/**
+ * ice_lag_config_eswitch - configure eswitch to work with LAG
+ * @lag: lag info struct
+ * @netdev: active network interface device struct
+ *
+ * Updates all port representors in eswitch to use @netdev for Tx.
+ *
+ * Configures the netdev to keep dst metadata (also used in representor Tx).
+ * This is required for an uplink without switchdev mode configured.
+ */
+static void ice_lag_config_eswitch(struct ice_lag *lag,
+				   struct net_device *netdev)
+{
+	struct ice_repr *repr;
+	unsigned long id;
+
+	xa_for_each(&lag->pf->eswitch.reprs, id, repr)
+		repr->dst->u.port_info.lower_dev = netdev;
+
+	netif_keep_dst(netdev);
+}
+
 /**
  * ice_netdev_to_lag - return pointer to associated lag struct from netdev
  * @netdev: pointer to net_device struct to query
@@ -354,6 +376,58 @@ ice_lag_cfg_pf_fltrs(struct ice_lag *lag, void *ptr)
 	}
 }
 
+/**
+ * ice_lag_cfg_cp_fltr - configure filter for control packets
+ * @lag: local interface's lag struct
+ * @add: add or remove rule
+ */
+static void
+ice_lag_cfg_cp_fltr(struct ice_lag *lag, bool add)
+{
+	struct ice_sw_rule_lkup_rx_tx *s_rule = NULL;
+	struct ice_vsi *vsi;
+	u16 buf_len, opc;
+
+	vsi = lag->pf->vsi[0];
+
+	buf_len = ICE_SW_RULE_RX_TX_HDR_SIZE(s_rule, ICE_TRAIN_PKT_LEN);
+	s_rule = kzalloc(buf_len, GFP_KERNEL);
+	if (!s_rule) {
+		netdev_warn(lag->netdev, "-ENOMEM error configuring CP filter\n");
+		return;
+	}
+
+	if (add) {
+		s_rule->hdr.type = cpu_to_le16(ICE_AQC_SW_RULES_T_LKUP_RX);
+		s_rule->recipe_id = cpu_to_le16(ICE_LAG_SRIOV_CP_RECIPE);
+		s_rule->src = cpu_to_le16(vsi->port_info->lport);
+		s_rule->act = cpu_to_le32(ICE_FWD_TO_VSI |
+					  ICE_SINGLE_ACT_LAN_ENABLE |
+					  ICE_SINGLE_ACT_VALID_BIT |
+					  FIELD_PREP(ICE_SINGLE_ACT_VSI_ID_M,
+						     vsi->vsi_num));
+		s_rule->hdr_len = cpu_to_le16(ICE_TRAIN_PKT_LEN);
+		memcpy(s_rule->hdr_data, lacp_train_pkt, ICE_TRAIN_PKT_LEN);
+		opc = ice_aqc_opc_add_sw_rules;
+	} else {
+		opc = ice_aqc_opc_remove_sw_rules;
+		s_rule->index = cpu_to_le16(lag->cp_rule_idx);
+	}
+	if (ice_aq_sw_rules(&lag->pf->hw, s_rule, buf_len, 1, opc, NULL)) {
+		netdev_warn(lag->netdev, "Error %s CP rule for fail-over\n",
+			    add ? "ADDING" : "REMOVING");
+		goto err_cp_free;
+	}
+
+	if (add)
+		lag->cp_rule_idx = le16_to_cpu(s_rule->index);
+	else
+		lag->cp_rule_idx = 0;
+
+err_cp_free:
+	kfree(s_rule);
+}
+
 /**
  * ice_display_lag_info - print LAG info
  * @lag: LAG info struct
@@ -768,57 +842,6 @@ void ice_lag_move_vf_nodes_cfg(struct ice_lag *lag, u8 src_prt, u8 dst_prt)
 	ice_lag_destroy_netdev_list(lag, &ndlist);
 }
 
-/**
- * ice_lag_cfg_cp_fltr - configure filter for control packets
- * @lag: local interface's lag struct
- * @add: add or remove rule
- */
-static void
-ice_lag_cfg_cp_fltr(struct ice_lag *lag, bool add)
-{
-	struct ice_sw_rule_lkup_rx_tx *s_rule = NULL;
-	struct ice_vsi *vsi;
-	u16 buf_len, opc;
-
-	vsi = lag->pf->vsi[0];
-
-	buf_len = ICE_SW_RULE_RX_TX_HDR_SIZE(s_rule, ICE_TRAIN_PKT_LEN);
-	s_rule = kzalloc(buf_len, GFP_KERNEL);
-	if (!s_rule) {
-		netdev_warn(lag->netdev, "-ENOMEM error configuring CP filter\n");
-		return;
-	}
-
-	if (add) {
-		s_rule->hdr.type = cpu_to_le16(ICE_AQC_SW_RULES_T_LKUP_RX);
-		s_rule->recipe_id = cpu_to_le16(ICE_LAG_SRIOV_CP_RECIPE);
-		s_rule->src = cpu_to_le16(vsi->port_info->lport);
-		s_rule->act = cpu_to_le32(ICE_FWD_TO_VSI |
-					  ICE_SINGLE_ACT_LAN_ENABLE |
-					  ICE_SINGLE_ACT_VALID_BIT |
-					  FIELD_PREP(ICE_SINGLE_ACT_VSI_ID_M, vsi->vsi_num));
-		s_rule->hdr_len = cpu_to_le16(ICE_TRAIN_PKT_LEN);
-		memcpy(s_rule->hdr_data, lacp_train_pkt, ICE_TRAIN_PKT_LEN);
-		opc = ice_aqc_opc_add_sw_rules;
-	} else {
-		opc = ice_aqc_opc_remove_sw_rules;
-		s_rule->index = cpu_to_le16(lag->cp_rule_idx);
-	}
-	if (ice_aq_sw_rules(&lag->pf->hw, s_rule, buf_len, 1, opc, NULL)) {
-		netdev_warn(lag->netdev, "Error %s CP rule for fail-over\n",
-			    add ? "ADDING" : "REMOVING");
-		goto cp_free;
-	}
-
-	if (add)
-		lag->cp_rule_idx = le16_to_cpu(s_rule->index);
-	else
-		lag->cp_rule_idx = 0;
-
-cp_free:
-	kfree(s_rule);
-}
-
 /**
  * ice_lag_info_event - handle NETDEV_BONDING_INFO event
  * @lag: LAG info struct
@@ -996,28 +1019,6 @@ static void ice_lag_link(struct ice_lag *lag)
 	netdev_info(lag->netdev, "Shared SR-IOV resources in bond are active\n");
 }
 
-/**
- * ice_lag_config_eswitch - configure eswitch to work with LAG
- * @lag: lag info struct
- * @netdev: active network interface device struct
- *
- * Updates all port representors in eswitch to use @netdev for Tx.
- *
- * Configures the netdev to keep dst metadata (also used in representor Tx).
- * This is required for an uplink without switchdev mode configured.
- */
-static void ice_lag_config_eswitch(struct ice_lag *lag,
-				   struct net_device *netdev)
-{
-	struct ice_repr *repr;
-	unsigned long id;
-
-	xa_for_each(&lag->pf->eswitch.reprs, id, repr)
-		repr->dst->u.port_info.lower_dev = netdev;
-
-	netif_keep_dst(netdev);
-}
-
 /**
  * ice_lag_unlink - handle unlink event
  * @lag: LAG info struct
-- 
2.49.0

