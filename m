Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB9641331A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Sep 2021 14:04:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 054C460613;
	Tue, 21 Sep 2021 12:04:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eXReDBg6HTlE; Tue, 21 Sep 2021 12:04:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BE162600CC;
	Tue, 21 Sep 2021 12:04:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1F5DB1BF4E6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Sep 2021 12:04:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 097E14051B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Sep 2021 12:04:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fZkqzQ3kUDOc for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Sep 2021 12:04:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D48C0403CF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Sep 2021 12:04:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="308892136"
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="308892136"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2021 05:04:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="549458325"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Sep 2021 05:04:30 -0700
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 18LC4Ttu016145
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Sep 2021 13:04:29 +0100
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 21 Sep 2021 14:04:29 +0200
Message-Id: <20210921120429.155263-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2] ice: Manage act flags for
 switchdev offloads
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently it is not possible to set/unset lb_en and lan_en flags
for advanced rules during their creation. Both flags are enabled
by default. In case of switchdev offloads for egress traffic we
need lb_en to be disabled. Because of that, we work around it by
updating the rule immediately after its creation.

This change allows us to set/unset those flags right away and it
gets rid of old workaround as well. Using ice_adv_rule_flags_info
structure we can pass info about flags we want to be set for
a given advanced rule. Flags are stored in flags_info.act.
Values from act would be used only if act_valid was set to true,
otherwise default values would be used.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_fltr.c   | 127 --------------------
 drivers/net/ethernet/intel/ice/ice_fltr.h   |   4 -
 drivers/net/ethernet/intel/ice/ice_switch.c |   9 +-
 drivers/net/ethernet/intel/ice/ice_switch.h |  11 ++
 drivers/net/ethernet/intel/ice/ice_tc_lib.c |   8 +-
 5 files changed, 21 insertions(+), 138 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_fltr.c b/drivers/net/ethernet/intel/ice/ice_fltr.c
index f22ca4354f84..e49378893390 100644
--- a/drivers/net/ethernet/intel/ice/ice_fltr.c
+++ b/drivers/net/ethernet/intel/ice/ice_fltr.c
@@ -509,133 +509,6 @@ static u32 ice_fltr_build_action(u16 vsi_id)
 		ICE_SINGLE_ACT_VSI_FORWARDING | ICE_SINGLE_ACT_VALID_BIT;
 }
 
-/**
- * ice_fltr_find_adv_entry - find advanced rule
- * @rules: list of rules
- * @rule_id: id of wanted rule
- */
-static struct ice_adv_fltr_mgmt_list_entry *
-ice_fltr_find_adv_entry(struct list_head *rules, u16 rule_id)
-{
-	struct ice_adv_fltr_mgmt_list_entry *entry;
-
-	list_for_each_entry(entry, rules, list_entry) {
-		if (entry->rule_info.fltr_rule_id == rule_id)
-			return entry;
-	}
-
-	return NULL;
-}
-
-/**
- * ice_fltr_update_adv_rule_flags - update flags on advanced rule
- * @vsi: pointer to VSI
- * @recipe_id: id of recipe
- * @entry: advanced rule entry
- * @new_flags: flags to update
- */
-static enum ice_status
-ice_fltr_update_adv_rule_flags(struct ice_vsi *vsi, u16 recipe_id,
-			       struct ice_adv_fltr_mgmt_list_entry *entry,
-			       u32 new_flags)
-{
-	struct ice_adv_rule_info *info = &entry->rule_info;
-	struct ice_sw_act_ctrl *act = &info->sw_act;
-	u32 action;
-
-	if (act->fltr_act != ICE_FWD_TO_VSI)
-		return ICE_ERR_NOT_SUPPORTED;
-
-	action = ice_fltr_build_action(act->fwd_id.hw_vsi_id);
-
-	return ice_fltr_update_rule_flags(&vsi->back->hw, info->fltr_rule_id,
-					  recipe_id, action, info->sw_act.flag,
-					  act->src, new_flags);
-}
-
-/**
- * ice_fltr_find_regular_entry - find regular rule
- * @rules: list of rules
- * @rule_id: id of wanted rule
- */
-static struct ice_fltr_mgmt_list_entry *
-ice_fltr_find_regular_entry(struct list_head *rules, u16 rule_id)
-{
-	struct ice_fltr_mgmt_list_entry *entry;
-
-	list_for_each_entry(entry, rules, list_entry) {
-		if (entry->fltr_info.fltr_rule_id == rule_id)
-			return entry;
-	}
-
-	return NULL;
-}
-
-/**
- * ice_fltr_update_regular_rule - update flags on regular rule
- * @vsi: pointer to VSI
- * @recipe_id: id of recipe
- * @entry: regular rule entry
- * @new_flags: flags to update
- */
-static enum ice_status
-ice_fltr_update_regular_rule(struct ice_vsi *vsi, u16 recipe_id,
-			     struct ice_fltr_mgmt_list_entry *entry,
-			     u32 new_flags)
-{
-	struct ice_fltr_info *info = &entry->fltr_info;
-	u32 action;
-
-	if (info->fltr_act != ICE_FWD_TO_VSI)
-		return ICE_ERR_NOT_SUPPORTED;
-
-	action = ice_fltr_build_action(info->fwd_id.hw_vsi_id);
-
-	return ice_fltr_update_rule_flags(&vsi->back->hw, info->fltr_rule_id,
-					  recipe_id, action, info->flag,
-					  info->src, new_flags);
-}
-
-/**
- * ice_fltr_update_flags - update flags on rule
- * @vsi: pointer to VSI
- * @rule_id: id of rule
- * @recipe_id: id of recipe
- * @new_flags: flags to update
- *
- * Function updates flags on regular and advance rule.
- *
- * Flags should be a combination of ICE_SINGLE_ACT_LB_ENABLE and
- * ICE_SINGLE_ACT_LAN_ENABLE.
- */
-enum ice_status
-ice_fltr_update_flags(struct ice_vsi *vsi, u16 rule_id, u16 recipe_id,
-		      u32 new_flags)
-{
-	struct ice_adv_fltr_mgmt_list_entry *adv_entry;
-	struct ice_fltr_mgmt_list_entry *regular_entry;
-	struct ice_hw *hw = &vsi->back->hw;
-	struct ice_sw_recipe *recp_list;
-	struct list_head *fltr_rules;
-
-	recp_list = &hw->switch_info->recp_list[recipe_id];
-	if (!recp_list)
-		return ICE_ERR_DOES_NOT_EXIST;
-
-	fltr_rules = &recp_list->filt_rules;
-	regular_entry = ice_fltr_find_regular_entry(fltr_rules, rule_id);
-	if (regular_entry)
-		return ice_fltr_update_regular_rule(vsi, recipe_id,
-						    regular_entry, new_flags);
-
-	adv_entry = ice_fltr_find_adv_entry(fltr_rules, rule_id);
-	if (adv_entry)
-		return ice_fltr_update_adv_rule_flags(vsi, recipe_id,
-						      adv_entry, new_flags);
-
-	return ICE_ERR_DOES_NOT_EXIST;
-}
-
 /**
  * ice_fltr_update_flags_dflt_rule - update flags on default rule
  * @vsi: pointer to VSI
diff --git a/drivers/net/ethernet/intel/ice/ice_fltr.h b/drivers/net/ethernet/intel/ice/ice_fltr.h
index 339da5fef577..db59cbbeda32 100644
--- a/drivers/net/ethernet/intel/ice/ice_fltr.h
+++ b/drivers/net/ethernet/intel/ice/ice_fltr.h
@@ -46,10 +46,6 @@ enum ice_status
 ice_fltr_remove_eth(struct ice_vsi *vsi, u16 ethertype, u16 flag,
 		    enum ice_sw_fwd_act_type action);
 void ice_fltr_remove_all(struct ice_vsi *vsi);
-
-enum ice_status
-ice_fltr_update_flags(struct ice_vsi *vsi, u16 rule_id, u16 recipe_id,
-		      u32 new_flags);
 enum ice_status
 ice_fltr_update_flags_dflt_rule(struct ice_vsi *vsi, u16 rule_id, u8 direction,
 				u32 new_flags);
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index ca039a4c3a79..1bbb52bf2279 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -4841,7 +4841,14 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	s_rule = kzalloc(rule_buf_sz, GFP_KERNEL);
 	if (!s_rule)
 		return ICE_ERR_NO_MEMORY;
-	act |= ICE_SINGLE_ACT_LB_ENABLE | ICE_SINGLE_ACT_LAN_ENABLE;
+	if (!rinfo->flags_info.act_valid) {
+		act |= ICE_SINGLE_ACT_LAN_ENABLE;
+		act |= ICE_SINGLE_ACT_LB_ENABLE;
+	} else {
+		act |= rinfo->flags_info.act & (ICE_SINGLE_ACT_LAN_ENABLE |
+						ICE_SINGLE_ACT_LB_ENABLE);
+	}
+
 	switch (rinfo->sw_act.fltr_act) {
 	case ICE_FWD_TO_VSI:
 		act |= (rinfo->sw_act.fwd_id.hw_vsi_id <<
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index cd5421a41002..f8e7f0b41631 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -169,11 +169,22 @@ struct ice_rule_query_data {
 	u16 vsi_handle;
 };
 
+/* This structure allows to pass info about lb_en and lan_en
+ * flags to ice_add_adv_rule. Values in act would be used
+ * only if act_valid was set to true, otherwise dflt
+ * values would be used.
+ */
+struct ice_adv_rule_flags_info {
+	u32 act;
+	u8 act_valid;		/* indicate if flags in act are valid */
+};
+
 struct ice_adv_rule_info {
 	struct ice_sw_act_ctrl sw_act;
 	u32 priority;
 	u8 rx; /* true means LOOKUP_RX otherwise LOOKUP_TX */
 	u16 fltr_rule_id;
+	struct ice_adv_rule_flags_info flags_info;
 };
 
 /* A collection of one or more four word recipe */
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index e01b16419923..5e132832044d 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -274,6 +274,8 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 		rule_info.sw_act.flag |= ICE_FLTR_TX;
 		rule_info.sw_act.src = vsi->idx;
 		rule_info.rx = false;
+		rule_info.flags_info.act = ICE_SINGLE_ACT_LAN_ENABLE;
+		rule_info.flags_info.act_valid = true;
 	}
 
 	/* specify the cookie as filter_rule_id */
@@ -296,12 +298,6 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 	fltr->rid = rule_added.rid;
 	fltr->rule_id = rule_added.rule_id;
 
-	if (fltr->direction == ICE_ESWITCH_FLTR_EGRESS) {
-		if (ice_fltr_update_flags(vsi, fltr->rule_id, fltr->rid,
-					  ICE_SINGLE_ACT_LAN_ENABLE))
-			ice_rem_adv_rule_by_id(hw, &rule_added);
-	}
-
 exit:
 	kfree(list);
 	return ret;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
