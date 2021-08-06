Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 38AB53E2661
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Aug 2021 10:49:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D70F160A55;
	Fri,  6 Aug 2021 08:49:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id csuK11u7P5-p; Fri,  6 Aug 2021 08:49:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 251A3608B8;
	Fri,  6 Aug 2021 08:49:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1CDF51BF82F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 08:49:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D473260A6D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 08:49:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X2y0PsSlyAlS for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Aug 2021 08:49:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B93E060A55
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 08:49:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="194605849"
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="194605849"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2021 01:49:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="438116355"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga002.jf.intel.com with ESMTP; 06 Aug 2021 01:49:09 -0700
Received: from gklab-229-137.igk.intel.com (gklab-229-137.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 1768n6kV030013
 for <intel-wired-lan@lists.osuosl.org>; Fri, 6 Aug 2021 09:49:08 +0100
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  6 Aug 2021 10:49:03 +0200
Message-Id: <1628239746-17380-7-git-send-email-wojciech.drewek@intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1628239746-17380-1-git-send-email-wojciech.drewek@intel.com>
References: <1628239746-17380-1-git-send-email-wojciech.drewek@intel.com>
Subject: [Intel-wired-lan] [PATCH net-next v6 6/9] ice: cleanup rules info
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

From: Victor Raj <victor.raj@intel.com>

Change ICE_SW_LKUP_LAST to ICE_MAX_NUM_RECIPES as for now there also can
be recipes other than the default.

Free all structures created for advanced recipes in cleanup function.
Write a function to clean allocated structures on advanced rule info.

Signed-off-by: Victor Raj <victor.raj@intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 41 +++++++++++++++++++++++------
 drivers/net/ethernet/intel/ice/ice_switch.c | 28 ++++++++++++++++++--
 2 files changed, 59 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 9d32eb970028..1a3c6b60fdca 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -595,17 +595,42 @@ static void ice_cleanup_fltr_mgmt_struct(struct ice_hw *hw)
 		list_del(&v_pos_map->list_entry);
 		devm_kfree(ice_hw_to_dev(hw), v_pos_map);
 	}
-	recps = hw->switch_info->recp_list;
-	for (i = 0; i < ICE_SW_LKUP_LAST; i++) {
-		struct ice_fltr_mgmt_list_entry *lst_itr, *tmp_entry;
+	recps = sw->recp_list;
+	for (i = 0; i < ICE_MAX_NUM_RECIPES; i++) {
+		struct ice_recp_grp_entry *rg_entry, *tmprg_entry;
 
 		recps[i].root_rid = i;
-		mutex_destroy(&recps[i].filt_rule_lock);
-		list_for_each_entry_safe(lst_itr, tmp_entry,
-					 &recps[i].filt_rules, list_entry) {
-			list_del(&lst_itr->list_entry);
-			devm_kfree(ice_hw_to_dev(hw), lst_itr);
+		list_for_each_entry_safe(rg_entry, tmprg_entry,
+					 &recps[i].rg_list, l_entry) {
+			list_del(&rg_entry->l_entry);
+			devm_kfree(ice_hw_to_dev(hw), rg_entry);
 		}
+
+		if (recps[i].adv_rule) {
+			struct ice_adv_fltr_mgmt_list_entry *tmp_entry;
+			struct ice_adv_fltr_mgmt_list_entry *lst_itr;
+
+			mutex_destroy(&recps[i].filt_rule_lock);
+			list_for_each_entry_safe(lst_itr, tmp_entry,
+						 &recps[i].filt_rules,
+						 list_entry) {
+				list_del(&lst_itr->list_entry);
+				devm_kfree(ice_hw_to_dev(hw), lst_itr->lkups);
+				devm_kfree(ice_hw_to_dev(hw), lst_itr);
+			}
+		} else {
+			struct ice_fltr_mgmt_list_entry *lst_itr, *tmp_entry;
+
+			mutex_destroy(&recps[i].filt_rule_lock);
+			list_for_each_entry_safe(lst_itr, tmp_entry,
+						 &recps[i].filt_rules,
+						 list_entry) {
+				list_del(&lst_itr->list_entry);
+				devm_kfree(ice_hw_to_dev(hw), lst_itr);
+			}
+		}
+		if (recps[i].root_buf)
+			devm_kfree(ice_hw_to_dev(hw), recps[i].root_buf);
 	}
 	ice_rm_all_sw_replay_rule_info(hw);
 	devm_kfree(ice_hw_to_dev(hw), sw->recp_list);
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 316c41cd87e8..ca039a4c3a79 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -2741,6 +2741,27 @@ enum ice_status
 }
 
 /**
+ * ice_rem_adv_rule_info
+ * @hw: pointer to the hardware structure
+ * @rule_head: pointer to the switch list structure that we want to delete
+ */
+static void
+ice_rem_adv_rule_info(struct ice_hw *hw, struct list_head *rule_head)
+{
+	struct ice_adv_fltr_mgmt_list_entry *tmp_entry;
+	struct ice_adv_fltr_mgmt_list_entry *lst_itr;
+
+	if (list_empty(rule_head))
+		return;
+
+	list_for_each_entry_safe(lst_itr, tmp_entry, rule_head, list_entry) {
+		list_del(&lst_itr->list_entry);
+		devm_kfree(ice_hw_to_dev(hw), lst_itr->lkups);
+		devm_kfree(ice_hw_to_dev(hw), lst_itr);
+	}
+}
+
+/**
  * ice_cfg_dflt_vsi - change state of VSI to set/clear default
  * @hw: pointer to the hardware structure
  * @vsi_handle: VSI handle to set as default
@@ -5241,12 +5262,15 @@ void ice_rm_all_sw_replay_rule_info(struct ice_hw *hw)
 	if (!sw)
 		return;
 
-	for (i = 0; i < ICE_SW_LKUP_LAST; i++) {
+	for (i = 0; i < ICE_MAX_NUM_RECIPES; i++) {
 		if (!list_empty(&sw->recp_list[i].filt_replay_rules)) {
 			struct list_head *l_head;
 
 			l_head = &sw->recp_list[i].filt_replay_rules;
-			ice_rem_sw_rule_info(hw, l_head);
+			if (!sw->recp_list[i].adv_rule)
+				ice_rem_sw_rule_info(hw, l_head);
+			else
+				ice_rem_adv_rule_info(hw, l_head);
 		}
 	}
 }
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
