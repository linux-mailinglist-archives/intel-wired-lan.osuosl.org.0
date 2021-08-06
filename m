Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5373E2667
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Aug 2021 10:49:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5BBB34053D;
	Fri,  6 Aug 2021 08:49:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jk-n7s12Mhz7; Fri,  6 Aug 2021 08:49:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5356A4056C;
	Fri,  6 Aug 2021 08:49:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 301CE1BF82F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 08:49:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2065C81871
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 08:49:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3dMmvsq9H1x5 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Aug 2021 08:49:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8C3CF83B42
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 08:49:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="214318146"
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="214318146"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2021 01:49:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="503932953"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga004.fm.intel.com with ESMTP; 06 Aug 2021 01:49:09 -0700
Received: from gklab-229-137.igk.intel.com (gklab-229-137.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 1768n6kW030013
 for <intel-wired-lan@lists.osuosl.org>; Fri, 6 Aug 2021 09:49:08 +0100
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  6 Aug 2021 10:49:04 +0200
Message-Id: <1628239746-17380-8-git-send-email-wojciech.drewek@intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1628239746-17380-1-git-send-email-wojciech.drewek@intel.com>
References: <1628239746-17380-1-git-send-email-wojciech.drewek@intel.com>
Subject: [Intel-wired-lan] [PATCH net-next v6 7/9] ice: Allow changing
 lan_en and lb_en on all kinds of filters
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Swiatkowski <michal.swiatkowski@intel.com>

There is no way to change default lan_en and lb_en flags while
adding new rule. Add function that allows changing these flags
on rule determined by rule id and recipe id.

Function checks if the rule is presented on regular rules list or
advance rules list and call the appropriate function to update
rule entry.

As rules with ICE_SW_LKUP_DFLT recipe aren't tracked in a list,
implement function which updates flags without searching for rules
based only on rule id.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_fltr.c | 127 ++++++++++++++++++++++++++++++
 1 file changed, 127 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_fltr.c b/drivers/net/ethernet/intel/ice/ice_fltr.c
index e49378893390..f22ca4354f84 100644
--- a/drivers/net/ethernet/intel/ice/ice_fltr.c
+++ b/drivers/net/ethernet/intel/ice/ice_fltr.c
@@ -510,6 +510,133 @@ static u32 ice_fltr_build_action(u16 vsi_id)
 }
 
 /**
+ * ice_fltr_find_adv_entry - find advanced rule
+ * @rules: list of rules
+ * @rule_id: id of wanted rule
+ */
+static struct ice_adv_fltr_mgmt_list_entry *
+ice_fltr_find_adv_entry(struct list_head *rules, u16 rule_id)
+{
+	struct ice_adv_fltr_mgmt_list_entry *entry;
+
+	list_for_each_entry(entry, rules, list_entry) {
+		if (entry->rule_info.fltr_rule_id == rule_id)
+			return entry;
+	}
+
+	return NULL;
+}
+
+/**
+ * ice_fltr_update_adv_rule_flags - update flags on advanced rule
+ * @vsi: pointer to VSI
+ * @recipe_id: id of recipe
+ * @entry: advanced rule entry
+ * @new_flags: flags to update
+ */
+static enum ice_status
+ice_fltr_update_adv_rule_flags(struct ice_vsi *vsi, u16 recipe_id,
+			       struct ice_adv_fltr_mgmt_list_entry *entry,
+			       u32 new_flags)
+{
+	struct ice_adv_rule_info *info = &entry->rule_info;
+	struct ice_sw_act_ctrl *act = &info->sw_act;
+	u32 action;
+
+	if (act->fltr_act != ICE_FWD_TO_VSI)
+		return ICE_ERR_NOT_SUPPORTED;
+
+	action = ice_fltr_build_action(act->fwd_id.hw_vsi_id);
+
+	return ice_fltr_update_rule_flags(&vsi->back->hw, info->fltr_rule_id,
+					  recipe_id, action, info->sw_act.flag,
+					  act->src, new_flags);
+}
+
+/**
+ * ice_fltr_find_regular_entry - find regular rule
+ * @rules: list of rules
+ * @rule_id: id of wanted rule
+ */
+static struct ice_fltr_mgmt_list_entry *
+ice_fltr_find_regular_entry(struct list_head *rules, u16 rule_id)
+{
+	struct ice_fltr_mgmt_list_entry *entry;
+
+	list_for_each_entry(entry, rules, list_entry) {
+		if (entry->fltr_info.fltr_rule_id == rule_id)
+			return entry;
+	}
+
+	return NULL;
+}
+
+/**
+ * ice_fltr_update_regular_rule - update flags on regular rule
+ * @vsi: pointer to VSI
+ * @recipe_id: id of recipe
+ * @entry: regular rule entry
+ * @new_flags: flags to update
+ */
+static enum ice_status
+ice_fltr_update_regular_rule(struct ice_vsi *vsi, u16 recipe_id,
+			     struct ice_fltr_mgmt_list_entry *entry,
+			     u32 new_flags)
+{
+	struct ice_fltr_info *info = &entry->fltr_info;
+	u32 action;
+
+	if (info->fltr_act != ICE_FWD_TO_VSI)
+		return ICE_ERR_NOT_SUPPORTED;
+
+	action = ice_fltr_build_action(info->fwd_id.hw_vsi_id);
+
+	return ice_fltr_update_rule_flags(&vsi->back->hw, info->fltr_rule_id,
+					  recipe_id, action, info->flag,
+					  info->src, new_flags);
+}
+
+/**
+ * ice_fltr_update_flags - update flags on rule
+ * @vsi: pointer to VSI
+ * @rule_id: id of rule
+ * @recipe_id: id of recipe
+ * @new_flags: flags to update
+ *
+ * Function updates flags on regular and advance rule.
+ *
+ * Flags should be a combination of ICE_SINGLE_ACT_LB_ENABLE and
+ * ICE_SINGLE_ACT_LAN_ENABLE.
+ */
+enum ice_status
+ice_fltr_update_flags(struct ice_vsi *vsi, u16 rule_id, u16 recipe_id,
+		      u32 new_flags)
+{
+	struct ice_adv_fltr_mgmt_list_entry *adv_entry;
+	struct ice_fltr_mgmt_list_entry *regular_entry;
+	struct ice_hw *hw = &vsi->back->hw;
+	struct ice_sw_recipe *recp_list;
+	struct list_head *fltr_rules;
+
+	recp_list = &hw->switch_info->recp_list[recipe_id];
+	if (!recp_list)
+		return ICE_ERR_DOES_NOT_EXIST;
+
+	fltr_rules = &recp_list->filt_rules;
+	regular_entry = ice_fltr_find_regular_entry(fltr_rules, rule_id);
+	if (regular_entry)
+		return ice_fltr_update_regular_rule(vsi, recipe_id,
+						    regular_entry, new_flags);
+
+	adv_entry = ice_fltr_find_adv_entry(fltr_rules, rule_id);
+	if (adv_entry)
+		return ice_fltr_update_adv_rule_flags(vsi, recipe_id,
+						      adv_entry, new_flags);
+
+	return ICE_ERR_DOES_NOT_EXIST;
+}
+
+/**
  * ice_fltr_update_flags_dflt_rule - update flags on default rule
  * @vsi: pointer to VSI
  * @rule_id: id of rule
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
