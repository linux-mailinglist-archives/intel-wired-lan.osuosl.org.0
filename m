Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB1E7880F4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Aug 2023 09:36:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A36360F8C;
	Fri, 25 Aug 2023 07:36:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A36360F8C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692949016;
	bh=JPUVk4Y92V4JB0YqGhGhWk92REKf3FpG7XquoOwUdtU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ESwVmIVDJEiYdOQsa4vD1oTB3Z3IuRLa0V7GmcEYH+ttrXA0mgM0YBj3Xstfzo33R
	 EBlQt83AoHg1z57aGnJhk4dCsFum7oylxTHXF96hNwoKCBoibd/52k7j9vBG+4p2QN
	 55edY8W139hIW/HKN40OXgRmWqLetoJ8fjQ0hwgwr/lzWOM19+eno1RKhCIJkALdYw
	 WFcPYpr+3rkPfGgTiliLOOJEBz299/P4FqJf9FKt/2WhxCuqqjOSm1d03uZ3iVVwLk
	 BWShF7vHXCLlVtbQjfhdr2ZCftmSoVH+Dq3nrQIP0puaFPBA2+kAd7zjJG6hnbuObb
	 H7whBRUbA0K9Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rzSflJsAcqRG; Fri, 25 Aug 2023 07:36:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BB10360F4C;
	Fri, 25 Aug 2023 07:36:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BB10360F4C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 846FA1BF30F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 07:36:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5CBCF4174C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 07:36:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5CBCF4174C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H0WHT3bzkx-K for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Aug 2023 07:36:48 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D2E72403E0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 07:36:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D2E72403E0
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="441000093"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="441000093"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 00:36:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="1068148571"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="1068148571"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga005.fm.intel.com with ESMTP; 25 Aug 2023 00:36:44 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 25 Aug 2023 09:13:19 +0200
Message-ID: <20230825071319.2230108-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692949007; x=1724485007;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FXb+laYzL8EamZJzkwG8+LX5juA7ZWeISM1FZRMkmC0=;
 b=Nd7WdJH+mnwM7LqCm1bRaqKfp4X5IPPFdFEKQwvBeYJ0ZYRz1TffY2aI
 cUB65+dK5Gwc01MqjS2pvUggVUbyM411OhbyLKQCSaGyT9YwTwKZO4goi
 x+do5gX1LPSwXddA//OYyVzU76qi6q91OI9SmBjSzEhDaRQbi/5Yw/aH5
 yqyKRjXC4lxEhHTytefmWiJdiLtmvw8ZSRr27sJfi5yqIG3oAOKd5YgQv
 H+CbjBVnUKwNtf4+AqtWR/s8xIHF83ml6q8Fx+yoh1BneOkDA92kgNVZg
 +AXnG4LAzpnOEt4Rsizem6f+IPJIwZPphCsc4McTsqsFzQ/WJ2V+T0kmc
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Nd7WdJH+
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: add drop rule matching
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
Cc: Marcin Szycik <marcin.szycik@intel.com>, netdev@vger.kernel.org,
 Simon Horman <horms@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Inactive LAG port should not receive any packets, as it can cause adding
invalid FDBs (bridge offload). Add a drop rule matching on inactive lport
in LAG.

Reviewed-by: Simon Horman <horms@kernel.org>
Co-developed-by: Marcin Szycik <marcin.szycik@intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
v1 --> v2 (based on Olek comments):
 * remove zeroes from tabels
 * style changes
---
 .../net/ethernet/intel/ice/ice_eswitch_br.c   |  6 +-
 drivers/net/ethernet/intel/ice/ice_lag.c      | 87 +++++++++++++++----
 drivers/net/ethernet/intel/ice/ice_lag.h      |  2 +
 3 files changed, 75 insertions(+), 20 deletions(-)

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
index 4f39863b5537..0c8cbcd16b6d 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -19,8 +19,11 @@ static const u8 lacp_train_pkt[LACP_TRAIN_PKT_LEN] = { 0, 0, 0, 0, 0, 0,
 static const u8 ice_dflt_vsi_rcp[ICE_RECIPE_LEN] = {
 	0x05, 0, 0, 0, 0x20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 	0x85, 0, 0x01, 0, 0, 0, 0xff, 0xff, 0x08, 0, 0, 0, 0, 0, 0, 0,
-	0, 0, 0, 0, 0, 0, 0x30, 0, 0, 0, 0, 0, 0, 0, 0, 0,
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
+	0, 0, 0, 0, 0, 0, 0x30 };
+static const u8 ice_lport_rcp[ICE_RECIPE_LEN] = {
+	0x05, 0, 0, 0, 0x20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
+	0x85, 0, 0x16, 0, 0, 0, 0xff, 0xff, 0x07, 0, 0, 0, 0, 0, 0, 0,
+	0, 0, 0, 0, 0, 0, 0x30 };
 
 /**
  * ice_lag_set_primary - set PF LAG state as Primary
@@ -173,18 +176,22 @@ static struct ice_lag *ice_lag_find_primary(struct ice_lag *lag)
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
@@ -193,7 +200,7 @@ ice_lag_cfg_dflt_fltr(struct ice_lag *lag, bool add)
 	s_rule_sz = ICE_SW_RULE_RX_TX_ETH_HDR_SIZE(s_rule);
 	s_rule = kzalloc(s_rule_sz, GFP_KERNEL);
 	if (!s_rule) {
-		dev_err(ice_pf_to_dev(lag->pf), "error allocating rule for LAG default VSI\n");
+		dev_err(ice_pf_to_dev(lag->pf), "error allocating rule for LAG\n");
 		return -ENOMEM;
 	}
 
@@ -201,19 +208,17 @@ ice_lag_cfg_dflt_fltr(struct ice_lag *lag, bool add)
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
 
@@ -222,15 +227,46 @@ ice_lag_cfg_dflt_fltr(struct ice_lag *lag, bool add)
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
+		  ICE_SINGLE_ACT_VALID_BIT |
+		  ICE_SINGLE_ACT_DROP;
+
+	return ice_lag_cfg_fltr(lag, act, lag->lport_recipe,
+				&lag->lport_rule_idx, add);
+}
+
 /**
  * ice_lag_cfg_pf_fltrs - set filters up for new active port
  * @lag: local interfaces lag struct
@@ -257,13 +293,18 @@ ice_lag_cfg_pf_fltrs(struct ice_lag *lag, void *ptr)
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
@@ -1195,6 +1236,7 @@ static void ice_lag_changeupper_event(struct ice_lag *lag, void *ptr)
 			swid = primary_lag->pf->hw.port_info->sw_id;
 			ice_lag_set_swid(swid, lag, true);
 			ice_lag_add_prune_list(primary_lag, lag->pf);
+			ice_lag_cfg_drop_fltr(lag, true);
 		}
 		/* add filter for primary control packets */
 		ice_lag_cfg_cp_fltr(lag, true);
@@ -1953,11 +1995,16 @@ int ice_init_lag(struct ice_pf *pf)
 		goto lag_error;
 	}
 
-	err = ice_create_lag_recipe(&pf->hw, &lag->pf_recipe, ice_dflt_vsi_rcp,
-				    1);
+	err = ice_create_lag_recipe(&pf->hw, &lag->pf_recipe,
+				    ice_dflt_vsi_rcp, 1);
 	if (err)
 		goto lag_error;
 
+	err = ice_create_lag_recipe(&pf->hw, &lag->lport_recipe,
+				    ice_lport_rcp, 3);
+	if (err)
+		goto free_rcp_res;
+
 	/* associate recipes to profiles */
 	for (n = 0; n < ICE_PROFID_IPV6_GTPU_IPV6_TCP_INNER; n++) {
 		err = ice_aq_get_recipe_to_profile(&pf->hw, n,
@@ -1966,7 +2013,8 @@ int ice_init_lag(struct ice_pf *pf)
 			continue;
 
 		if (recipe_bits & BIT(ICE_SW_LKUP_DFLT)) {
-			recipe_bits |= BIT(lag->pf_recipe);
+			recipe_bits |= BIT(lag->pf_recipe) |
+				       BIT(lag->lport_recipe);
 			ice_aq_map_recipe_to_profile(&pf->hw, n,
 						     (u8 *)&recipe_bits, NULL);
 		}
@@ -1977,6 +2025,9 @@ int ice_init_lag(struct ice_pf *pf)
 	dev_dbg(dev, "INIT LAG complete\n");
 	return 0;
 
+free_rcp_res:
+	ice_free_hw_res(&pf->hw, ICE_AQC_RES_TYPE_RECIPE, 1,
+			&pf->lag->pf_recipe);
 lag_error:
 	kfree(lag);
 	pf->lag = NULL;
@@ -2006,6 +2057,8 @@ void ice_deinit_lag(struct ice_pf *pf)
 
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
