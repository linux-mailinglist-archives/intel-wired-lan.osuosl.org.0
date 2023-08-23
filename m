Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A6068784F92
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Aug 2023 06:21:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 057DE8203E;
	Wed, 23 Aug 2023 04:21:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 057DE8203E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692764490;
	bh=+xV2j0a1HDiqqrSlofzO5M2znox3363EPuuspuUms5E=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=rfS1zIPpoWdosSUYPJqCYgrOlCDGSP2oduIfDfLOdo+Vd9COXlzskmgF8lemtR7qu
	 0kUKOthSIZLrKE2DSAv+o5Yk80pL82wjQG+DB/8e2m6I0x3gqUknCcIncB4s+LMgp7
	 snQVbCPwnBudvXfxm5we8gnMvfN3eAJkM9rwsmk9dGFbUKZbKZl7F6Nwfc+8TQjaZe
	 To8Y9OzeYPKAFwiWgw9TlVOKDuRSImrTK7etE8xBmwWFHRgoU1eHnNWIWbC2FJ8bvO
	 8rYQ4JwCrJhPRkbu7Pvl1iC6r9hoeVsB7L4fOppolKNak/eo2rg6rxJ085bgKDIDbQ
	 tFRlxE8rXkR/Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hzOzZQGkjn_I; Wed, 23 Aug 2023 04:21:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 836E381F4F;
	Wed, 23 Aug 2023 04:21:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 836E381F4F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1F8D11BF29C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 04:21:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EB7BA60BD9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 04:21:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB7BA60BD9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SD4he0ZOBl_m for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Aug 2023 04:21:22 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B6EBB60A70
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 04:21:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B6EBB60A70
X-IronPort-AV: E=McAfee;i="6600,9927,10810"; a="353617430"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="353617430"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 21:21:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="880255261"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga001.fm.intel.com with ESMTP; 22 Aug 2023 21:21:23 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 23 Aug 2023 05:57:55 +0200
Message-ID: <20230823035755.777005-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692764481; x=1724300481;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UimtL1bsgMUD+OJe33kMYLkeU3b0h0jCETwwZoNznhM=;
 b=ILCukseaVWq9rp9ODJjwIWP4siDlnVSd/poS9U8ZCp8toOVqKNFMWI+d
 UnV7qscOfcfW0rM+QIfW6H/mWa4M7DU43EdSCirdei9vrQuFNHQWFO1k+
 HouQXHKqHE8H3jsCSFqJK4xdwvTHKHerIoQpvt6m0GjiK69Rhv9MWCIi0
 MEAQPy7JRmsnTOIeH5oFhMeLp0Ql1oOH32MLMqCev07nrt/37ZLZegdG4
 Jk83ra8EEkKL3lIrccg8dhSIUnh+g9sjiJ/cv41SEJfS3EojJo9grX3p9
 CYrXvG7VfHDRbs+9hPjmL1QBw1oJYHoFC3Mj7SsxOs0+DYGE9dGPoJ/o6
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ILCuksea
Subject: [Intel-wired-lan] [PATCH iwl-next v1] ice: add drop rule matching
 on not active lport
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
Cc: netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Inactive LAG port should not receive any packets, as it can cause adding
invalid FDBs (bridge offload). Add a drop rule matching on inactive lport
in LAG.

Co-developed-by: Marcin Szycik <marcin.szycik@intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 .../net/ethernet/intel/ice/ice_eswitch_br.c   |  6 +-
 drivers/net/ethernet/intel/ice/ice_lag.c      | 80 ++++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_lag.h      |  2 +
 3 files changed, 72 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
index 67bfd1f61cdd..6ae0269bdf73 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
@@ -73,7 +73,7 @@ ice_eswitch_br_ingress_rule_setup(struct ice_adv_rule_info *rule_info,
 	rule_info->sw_act.vsi_handle = vf_vsi_idx;
 	rule_info->sw_act.flag |= ICE_FLTR_RX;
 	rule_info->sw_act.src = pf_id;
-	rule_info->priority = 5;
+	rule_info->priority = 2;
 }
 
 static void
@@ -84,7 +84,7 @@ ice_eswitch_br_egress_rule_setup(struct ice_adv_rule_info *rule_info,
 	rule_info->sw_act.flag |= ICE_FLTR_TX;
 	rule_info->flags_info.act = ICE_SINGLE_ACT_LAN_ENABLE;
 	rule_info->flags_info.act_valid = true;
-	rule_info->priority = 5;
+	rule_info->priority = 2;
 }
 
 static int
@@ -207,7 +207,7 @@ ice_eswitch_br_guard_rule_create(struct ice_hw *hw, u16 vsi_idx,
 	rule_info.allow_pass_l2 = true;
 	rule_info.sw_act.vsi_handle = vsi_idx;
 	rule_info.sw_act.fltr_act = ICE_NOP;
-	rule_info.priority = 5;
+	rule_info.priority = 2;
 
 	err = ice_add_adv_rule(hw, list, lkups_cnt, &rule_info, rule);
 	if (err)
diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 4f39863b5537..c64281b368ae 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -21,6 +21,11 @@ static const u8 ice_dflt_vsi_rcp[ICE_RECIPE_LEN] = {
 	0x85, 0, 0x01, 0, 0, 0, 0xff, 0xff, 0x08, 0, 0, 0, 0, 0, 0, 0,
 	0, 0, 0, 0, 0, 0, 0x30, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
+static const u8 ice_lport_rcp[ICE_RECIPE_LEN] = {
+	0x05, 0, 0, 0, 0x20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
+	0x85, 0, 0x16, 0, 0, 0, 0xff, 0xff, 0x07, 0, 0, 0, 0, 0, 0, 0,
+	0, 0, 0, 0, 0, 0, 0x30, 0, 0, 0, 0, 0, 0, 0, 0, 0,
+	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
 
 /**
  * ice_lag_set_primary - set PF LAG state as Primary
@@ -173,18 +178,22 @@ static struct ice_lag *ice_lag_find_primary(struct ice_lag *lag)
 }
 
 /**
- * ice_lag_cfg_dflt_fltr - Add/Remove default VSI rule for LAG
+ * ice_lag_cfg_fltr - Add/Remove rule for LAG
  * @lag: lag struct for local interface
+ * @act: rule action
+ * @recipe_id: recipe id for the new rule
+ * @rule_idx: pointer to rule index
  * @add: boolean on whether we are adding filters
  */
 static int
-ice_lag_cfg_dflt_fltr(struct ice_lag *lag, bool add)
+ice_lag_cfg_fltr(struct ice_lag *lag, u32 act, u16 recipe_id, u16 *rule_idx,
+		 bool add)
 {
 	struct ice_sw_rule_lkup_rx_tx *s_rule;
 	u16 s_rule_sz, vsi_num;
 	struct ice_hw *hw;
-	u32 act, opc;
 	u8 *eth_hdr;
+	u32 opc;
 	int err;
 
 	hw = &lag->pf->hw;
@@ -193,7 +202,7 @@ ice_lag_cfg_dflt_fltr(struct ice_lag *lag, bool add)
 	s_rule_sz = ICE_SW_RULE_RX_TX_ETH_HDR_SIZE(s_rule);
 	s_rule = kzalloc(s_rule_sz, GFP_KERNEL);
 	if (!s_rule) {
-		dev_err(ice_pf_to_dev(lag->pf), "error allocating rule for LAG default VSI\n");
+		dev_err(ice_pf_to_dev(lag->pf), "error allocating rule for LAG\n");
 		return -ENOMEM;
 	}
 
@@ -201,19 +210,17 @@ ice_lag_cfg_dflt_fltr(struct ice_lag *lag, bool add)
 		eth_hdr = s_rule->hdr_data;
 		ice_fill_eth_hdr(eth_hdr);
 
-		act = (vsi_num << ICE_SINGLE_ACT_VSI_ID_S) &
+		act |= (vsi_num << ICE_SINGLE_ACT_VSI_ID_S) &
 			ICE_SINGLE_ACT_VSI_ID_M;
-		act |= ICE_SINGLE_ACT_VSI_FORWARDING |
-			ICE_SINGLE_ACT_VALID_BIT | ICE_SINGLE_ACT_LAN_ENABLE;
 
 		s_rule->hdr.type = cpu_to_le16(ICE_AQC_SW_RULES_T_LKUP_RX);
-		s_rule->recipe_id = cpu_to_le16(lag->pf_recipe);
+		s_rule->recipe_id = cpu_to_le16(recipe_id);
 		s_rule->src = cpu_to_le16(hw->port_info->lport);
 		s_rule->act = cpu_to_le32(act);
 		s_rule->hdr_len = cpu_to_le16(DUMMY_ETH_HDR_LEN);
 		opc = ice_aqc_opc_add_sw_rules;
 	} else {
-		s_rule->index = cpu_to_le16(lag->pf_rule_id);
+		s_rule->index = cpu_to_le16(*rule_idx);
 		opc = ice_aqc_opc_remove_sw_rules;
 	}
 
@@ -222,15 +229,45 @@ ice_lag_cfg_dflt_fltr(struct ice_lag *lag, bool add)
 		goto dflt_fltr_free;
 
 	if (add)
-		lag->pf_rule_id = le16_to_cpu(s_rule->index);
+		*rule_idx = le16_to_cpu(s_rule->index);
 	else
-		lag->pf_rule_id = 0;
+		*rule_idx = 0;
 
 dflt_fltr_free:
 	kfree(s_rule);
 	return err;
 }
 
+/**
+ * ice_lag_cfg_dflt_fltr - Add/Remove default VSI rule for LAG
+ * @lag: lag struct for local interface
+ * @add: boolean on whether to add filter
+ */
+static int
+ice_lag_cfg_dflt_fltr(struct ice_lag *lag, bool add)
+{
+	u32 act = ICE_SINGLE_ACT_VSI_FORWARDING |
+		ICE_SINGLE_ACT_VALID_BIT | ICE_SINGLE_ACT_LAN_ENABLE;
+
+	return ice_lag_cfg_fltr(lag, act, lag->pf_recipe,
+				&lag->pf_rule_id, add);
+}
+
+/**
+ * ice_lag_cfg_drop_fltr - Add/Remove lport drop rule
+ * @lag: lag struct for local interface
+ * @add: boolean on whether to add filter
+ */
+static int
+ice_lag_cfg_drop_fltr(struct ice_lag *lag, bool add)
+{
+	u32 act = ICE_SINGLE_ACT_VSI_FORWARDING |
+		ICE_SINGLE_ACT_VALID_BIT | ICE_SINGLE_ACT_DROP;
+
+	return ice_lag_cfg_fltr(lag, act, lag->lport_recipe,
+				&lag->lport_rule_idx, add);
+}
+
 /**
  * ice_lag_cfg_pf_fltrs - set filters up for new active port
  * @lag: local interfaces lag struct
@@ -257,13 +294,18 @@ ice_lag_cfg_pf_fltrs(struct ice_lag *lag, void *ptr)
 	if (bonding_info->slave.state && lag->pf_rule_id) {
 		if (ice_lag_cfg_dflt_fltr(lag, false))
 			dev_err(dev, "Error removing old default VSI filter\n");
+		if (ice_lag_cfg_drop_fltr(lag, true))
+			dev_err(dev, "Error adding new drop filter\n");
 		return;
 	}
 
 	/* interface becoming active - add new default VSI rule */
-	if (!bonding_info->slave.state && !lag->pf_rule_id)
+	if (!bonding_info->slave.state && !lag->pf_rule_id) {
 		if (ice_lag_cfg_dflt_fltr(lag, true))
 			dev_err(dev, "Error adding new default VSI filter\n");
+		if (lag->lport_rule_idx && ice_lag_cfg_drop_fltr(lag, false))
+			dev_err(dev, "Error removing old drop filter\n");
+	}
 }
 
 /**
@@ -1195,6 +1237,7 @@ static void ice_lag_changeupper_event(struct ice_lag *lag, void *ptr)
 			swid = primary_lag->pf->hw.port_info->sw_id;
 			ice_lag_set_swid(swid, lag, true);
 			ice_lag_add_prune_list(primary_lag, lag->pf);
+			ice_lag_cfg_drop_fltr(lag, true);
 		}
 		/* add filter for primary control packets */
 		ice_lag_cfg_cp_fltr(lag, true);
@@ -1958,6 +2001,11 @@ int ice_init_lag(struct ice_pf *pf)
 	if (err)
 		goto lag_error;
 
+	err = ice_create_lag_recipe(&pf->hw, &lag->lport_recipe, ice_lport_rcp,
+				    3);
+	if (err)
+		goto free_rcp_res;
+
 	/* associate recipes to profiles */
 	for (n = 0; n < ICE_PROFID_IPV6_GTPU_IPV6_TCP_INNER; n++) {
 		err = ice_aq_get_recipe_to_profile(&pf->hw, n,
@@ -1966,7 +2014,8 @@ int ice_init_lag(struct ice_pf *pf)
 			continue;
 
 		if (recipe_bits & BIT(ICE_SW_LKUP_DFLT)) {
-			recipe_bits |= BIT(lag->pf_recipe);
+			recipe_bits |= BIT(lag->pf_recipe) |
+				       BIT(lag->lport_recipe);
 			ice_aq_map_recipe_to_profile(&pf->hw, n,
 						     (u8 *)&recipe_bits, NULL);
 		}
@@ -1977,6 +2026,9 @@ int ice_init_lag(struct ice_pf *pf)
 	dev_dbg(dev, "INIT LAG complete\n");
 	return 0;
 
+free_rcp_res:
+	ice_free_hw_res(&pf->hw, ICE_AQC_RES_TYPE_RECIPE, 1,
+			&pf->lag->pf_recipe);
 lag_error:
 	kfree(lag);
 	pf->lag = NULL;
@@ -2006,6 +2058,8 @@ void ice_deinit_lag(struct ice_pf *pf)
 
 	ice_free_hw_res(&pf->hw, ICE_AQC_RES_TYPE_RECIPE, 1,
 			&pf->lag->pf_recipe);
+	ice_free_hw_res(&pf->hw, ICE_AQC_RES_TYPE_RECIPE, 1,
+			&pf->lag->lport_recipe);
 
 	kfree(lag);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lag.h b/drivers/net/ethernet/intel/ice/ice_lag.h
index 18075b82485a..c29a27f16b81 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.h
+++ b/drivers/net/ethernet/intel/ice/ice_lag.h
@@ -39,8 +39,10 @@ struct ice_lag {
 	u8 bonded:1; /* currently bonded */
 	u8 primary:1; /* this is primary */
 	u16 pf_recipe;
+	u16 lport_recipe;
 	u16 pf_rule_id;
 	u16 cp_rule_idx;
+	u16 lport_rule_idx;
 	u8 role;
 };
 
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
