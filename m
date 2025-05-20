Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BD8ABE3DB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 May 2025 21:40:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C49D2610BA;
	Tue, 20 May 2025 19:40:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B6ENu3W4IPAt; Tue, 20 May 2025 19:40:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F1F4E610CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747770002;
	bh=LtaXZKCP9OMPQBHDsw9sNgELGr2wsDdsILaq9yp+Xco=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cdtwV3XB4VJ1nq/oxnGLqSwQnjAdMM3A+qNtnvqtPTZhctNlj0jrjZ1CcT1aTpYf3
	 ZWafngWrQD5+yeuYwK+v0JFJ2rfDtGCa69nYuvmVhe7ItnOg3dSiXIv4aVHui0qq/g
	 8ROsCWkBO5oK8A6c9xc8IbuvU+GEdPno3qkoOZSF+i1xmAypRMDaGiafBkFtGIElnx
	 7thFNPjxt0/QdQhW4NrUJWz+HiO/XaiiRAjiSsRfMkeb7ArlO3na29Q064PSLQ+9ni
	 aMMP5vpWmBVbLLfm0kBMhn2AWXbBUlkces34ZBXtmwdZiSITUYenWJqfonFKgM2rMq
	 DQSHwB/7hRx9g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F1F4E610CB;
	Tue, 20 May 2025 19:40:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id DDFB0D4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 19:39:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AD02481E07
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 19:39:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BYdC0bzmpmzr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 May 2025 19:39:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1567B81DF6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1567B81DF6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1567B81DF6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 19:39:56 +0000 (UTC)
X-CSE-ConnectionGUID: LblGJAuJQmSjLb5Zw0ny7g==
X-CSE-MsgGUID: CFY6fLHMQRymdb9AMgB/yQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11439"; a="75123548"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="75123548"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 12:39:55 -0700
X-CSE-ConnectionGUID: xJ+Ht+PvReCtMXJnFfmrvg==
X-CSE-MsgGUID: 9kOWJICITTesS2oegfhpkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="140198877"
Received: from dmert-vmdev.jf.intel.com ([10.165.17.51])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 12:39:54 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Tue, 20 May 2025 15:39:26 -0400
Message-ID: <20250520193930.3763888-5-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250520193930.3763888-1-david.m.ertman@intel.com>
References: <20250520193930.3763888-1-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747769996; x=1779305996;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GKXVp8y9dJHGEBeNaK26C7jjujcBFKabDqWUnoUBbnM=;
 b=g0hnzIBsdyjr4ITDptPZsMO9dlnmbMu7ANmdhzIZRalq6B2hw1+OdbyG
 SM0QdNod565O4EFhjTKa7Fk+ZZ/f6Jc6UdYCXIYUcOODJEly+Qh31b7Le
 e4OkKed/nP6uEBriuJseS7zUmtYUrCBzMJx/B2H/n48+4UXAJIWH7ByYz
 7KX2tIoJzHcToqhefphkYHwqmn+bi3NLSmYXz+xeqGF1eCpOzbzjVTDDN
 C1K1E4/EEqiUpYlI5rkr5Ovy9pkpdxLJxL8JBZzRqLI01wnb8Rw841VpH
 UZ/o5meQioZuge22C8NIrb6ho117wjSZLuhfT2bxtnp+GBCbz2QjqFPio
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g0hnzIBs
Subject: [Intel-wired-lan] [PATCH iwl-next v2 4/8] [PATCH iwl-next 4/8] ice:
 move LAG function in code to prepare for
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

