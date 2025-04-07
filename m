Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4B5A7EC61
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Apr 2025 21:16:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 11C6461090;
	Mon,  7 Apr 2025 19:15:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M6Vv1eIg805Q; Mon,  7 Apr 2025 19:15:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 75EEF6108A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744053358;
	bh=pho6C/8bUgeiLm8F/Ev1CrYV6VAZP8RJTYLApXT3zHk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rXZQdVrfyRrzPEN7AisA/sq82iHr43RdDDiORreglTsj2jJFxjN3O3NMjQ2DQJ+/O
	 KQSUUf9YAZB7Hg6TLaXZVWxz3h3NQstuBK2M2+rHjEYSbhTMU+GEcIbOTzKzWlpC1q
	 endjlucuhNN+uONf/+s7CH68brDJpVEhhy6k+H/lpJQ11nw1XRnPZZ4GzQQzrDS10d
	 a8oT7MbOkcTGxFpv6tkkf55s3jpLRXvQKYlm6Va7bkm6bz5Mp527SmOQy47uO17KVG
	 WHpZcBpMfqwIKMDwAqRNt7/7CMpCapI2hmiZE+iymN0eqDswUv0r6rkTFtzly2lYic
	 quc78rE+gLmFQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 75EEF6108A;
	Mon,  7 Apr 2025 19:15:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 57BDE1DE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 19:15:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4BDEE41400
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 19:15:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aT9UQnP2LQ3M for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Apr 2025 19:15:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8FF5C41052
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8FF5C41052
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8FF5C41052
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 19:15:52 +0000 (UTC)
X-CSE-ConnectionGUID: wwow3cbzTW+amotV5MvdVA==
X-CSE-MsgGUID: S8sMaDbTQ1WjIyQ9nVAofg==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="49307037"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="49307037"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 12:15:51 -0700
X-CSE-ConnectionGUID: wgxrTeemTEubEdbsTZqoLA==
X-CSE-MsgGUID: tsjQxBVuRgidZbDB3eCxFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="128979590"
Received: from dmert-vmdev.jf.intel.com ([10.165.18.186])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 12:15:51 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Mon,  7 Apr 2025 15:15:13 -0400
Message-ID: <20250407191517.767433-5-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250407191517.767433-1-david.m.ertman@intel.com>
References: <20250407191517.767433-1-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744053352; x=1775589352;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I1UZY1tJ1oUPFMJ1FRm4pq7R5noP+BAqIfNNdRKzyjI=;
 b=FtsFFGIWInIWu9iBixKJ7NVbb9el8Sh2Pn31+c6gNT+KoB1h/NH1Rxfb
 Vku8S12KVkzQbm//8NYdhdhbGW1TPB5d9TPqT8R+Y4UIYa46p+lfBRTkX
 odxvbXIXYHIq3ubr4SoqEeACcOXVOCia8yw9glyYHTO90y+onuStFhT0h
 ku0lbag0xAyPfAJCpAkS8vUyYAReXgHhSDYak1ZtkwknWziuiyByQgZOa
 aH/rqziQXsg2YT1gfVkJ6UvGI4XLviXP0xJ8RSE0acfIZ/pzjtGqaHUSU
 iZNR9uwu9/020HmxLLnVB4hQ6Y993UH07It0B0gZXkJTPzddMQeOHFkDe
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FtsFFGIW
Subject: [Intel-wired-lan] [PATCH iwl-next 4/8] ice: move LAG function in
 code to prepare for Active-Active
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
index 536328dd00ef..6d52265634e1 100644
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

