Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD1DAD287B
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Jun 2025 23:11:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3672361560;
	Mon,  9 Jun 2025 21:11:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T2wpVB4prCdS; Mon,  9 Jun 2025 21:11:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A7196153C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749503474;
	bh=LtaXZKCP9OMPQBHDsw9sNgELGr2wsDdsILaq9yp+Xco=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=I5yvbQi9b9yn475LJeGSb8umgTOjbxgaSDCNk0Lmr6rzFMdrJYFH3fZaZFVMVmUdx
	 BWXlxPfYQPYpI3NO8196hUuSk9cJ+33ADjjLOGuhTYQuTp6WbWFpwPFTc12RboWKPs
	 jg8KTXCR/wSmCG+D0nBfoYVq6jYwESN7Iy7tR53Yg7EQ4wNigR32emMJSN3+dPsBmo
	 aRsKo4MxjA3zRg89oa/iQ6HLbI+H8UccKFenEa1WTwo+90zaslGQSRWI02UU9rXQvg
	 khSt1CMhyoLDG5in/gCuxwmTUA+Nw6zOnG+0YaH02UtmkwN/eUW8dogX8cmYJVrgsv
	 sBvB0w+Grks0g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A7196153C;
	Mon,  9 Jun 2025 21:11:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 26C741A4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 21:11:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 534FF6152D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 21:11:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XEKegTR-1MFj for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Jun 2025 21:11:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B305F61533
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B305F61533
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B305F61533
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 21:11:10 +0000 (UTC)
X-CSE-ConnectionGUID: DZqBXznGRMyH6LcBTrkMhA==
X-CSE-MsgGUID: a5xUfQV8T5GjfkZNL6Xwjw==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="50703105"
X-IronPort-AV: E=Sophos;i="6.16,223,1744095600"; d="scan'208";a="50703105"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 14:11:08 -0700
X-CSE-ConnectionGUID: uU6rt1q/QXqUF21kuEPpOg==
X-CSE-MsgGUID: vEY1pu+vRjez02+yVrOslQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,223,1744095600"; d="scan'208";a="146540443"
Received: from dmert-mdev.jf.intel.com ([10.166.5.145])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 14:11:08 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Mon,  9 Jun 2025 15:11:36 +0200
Message-ID: <20250609131141.758051-5-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250609131141.758051-1-david.m.ertman@intel.com>
References: <20250609131141.758051-1-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749503471; x=1781039471;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GKXVp8y9dJHGEBeNaK26C7jjujcBFKabDqWUnoUBbnM=;
 b=YNTfge2asrJb/vt4gut7UyDkgEizUn6iEZWkqlhbEgGCyQYSttub2L9k
 2Qp+Efy7YNlSuyVGNd2k+06Rzpx0btUgGWUkjh9Td3VhvBzGGcTGXrRKo
 XlpbRMCQEas+fuRD83EJHLHVrfrTB50JwdZk4KOdYpekWtzJJd1mP8/dU
 FfdE5O50Wwjwdkl1rOskAtIDiRBEyJWl3AGx6qDoX+5BDngpq/cQcL3Et
 dXFN73F6hLLcAb+xdi322kB2OglkAclWOQtTCp5EVURWPC8413gKD2F/s
 U7jZSMfbW74uHSChlcljtg5Ejb05MXht1fdG2AmxiGPRIL6JBDzZbf+c6
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YNTfge2a
Subject: [Intel-wired-lan] [PATCH iwl-next v3 4/8] ice: move LAG function in
 code to prepare for
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

In the SRIOV LAG Active-Active, the function ice_lag_cfg_pf_fltr's
content is moved to an earlier location in the source file.  Along
with this change, the function is renamed, and the flow is changed.

To reduce the delta in the larger patch, move the original function
to its new location so that only functional changes are needed in
the larger patch.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lag.c | 103 ++++++++++++-----------
 1 file changed, 52 insertions(+), 51 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 3d5918a270a4..182b3d6964e6 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -354,6 +354,58 @@ ice_lag_cfg_pf_fltrs(struct ice_lag *lag, void *ptr)
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
@@ -768,57 +820,6 @@ void ice_lag_move_vf_nodes_cfg(struct ice_lag *lag, u8 src_prt, u8 dst_prt)
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
-- 
2.49.0

