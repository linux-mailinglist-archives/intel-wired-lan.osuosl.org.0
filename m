Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5780743B045
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Oct 2021 12:39:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 645CA403EF;
	Tue, 26 Oct 2021 10:39:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2TLo1N_FJTkv; Tue, 26 Oct 2021 10:39:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1C64D403D2;
	Tue, 26 Oct 2021 10:39:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1D0101BF83C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 10:39:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 18CCB40182
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 10:39:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V60sZNKKNw_D for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Oct 2021 10:39:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 514B8400E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 10:39:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10148"; a="230151024"
X-IronPort-AV: E=Sophos;i="5.87,182,1631602800"; d="scan'208";a="230151024"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 03:39:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,182,1631602800"; d="scan'208";a="664494223"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga005.jf.intel.com with ESMTP; 26 Oct 2021 03:39:31 -0700
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 19QAdUht008742
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 11:39:30 +0100
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Oct 2021 12:38:39 +0200
Message-Id: <20211026103840.11455-2-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211026103840.11455-1-wojciech.drewek@intel.com>
References: <20211026103840.11455-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 1/2] ice: replay advanced rules
 after reset
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

From: Victor Raj <victor.raj@intel.com>

ice_replay_vsi_adv_rule will replay advanced rules for a given VSI.
Exit this function when list of rules for given recipe is empty.
Do not add rule when given vsi_handle does not match vsi_handle
from the rule info.

Use ICE_MAX_NUM_RECIPES instead of ICE_SW_LKUP_LAST in order to find
advanced rules as well.

Signed-off-by: Victor Raj <victor.raj@intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c |  2 +-
 drivers/net/ethernet/intel/ice/ice_switch.c | 41 +++++++++++++++++++--
 2 files changed, 39 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 26f0774136ae..ef45cd1506a2 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -4604,7 +4604,7 @@ static int ice_replay_pre_init(struct ice_hw *hw)
 	 * will allow adding rules entries back to filt_rules list,
 	 * which is operational list.
 	 */
-	for (i = 0; i < ICE_SW_LKUP_LAST; i++)
+	for (i = 0; i < ICE_MAX_NUM_RECIPES; i++)
 		list_replace_init(&sw->recp_list[i].filt_rules,
 				  &sw->recp_list[i].filt_replay_rules);
 	ice_sched_replay_agg_vsi_preinit(hw);
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index de08ec08158d..ac54ec34bd8f 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -5659,6 +5659,38 @@ ice_rem_adv_rule_by_id(struct ice_hw *hw,
 	return -ENOENT;
 }
 
+/**
+ * ice_replay_vsi_adv_rule - Replay advanced rule for requested VSI
+ * @hw: pointer to the hardware structure
+ * @vsi_handle: driver VSI handle
+ * @list_head: list for which filters need to be replayed
+ *
+ * Replay the advanced rule for the given VSI.
+ */
+static int
+ice_replay_vsi_adv_rule(struct ice_hw *hw, u16 vsi_handle,
+			struct list_head *list_head)
+{
+	struct ice_rule_query_data added_entry = { 0 };
+	struct ice_adv_fltr_mgmt_list_entry *adv_fltr;
+	int status = 0;
+
+	if (list_empty(list_head))
+		return status;
+	list_for_each_entry(adv_fltr, list_head, list_entry) {
+		struct ice_adv_rule_info *rinfo = &adv_fltr->rule_info;
+		u16 lk_cnt = adv_fltr->lkups_cnt;
+
+		if (vsi_handle != rinfo->sw_act.vsi_handle)
+			continue;
+		status = ice_add_adv_rule(hw, adv_fltr->lkups, lk_cnt, rinfo,
+					  &added_entry);
+		if (status)
+			break;
+	}
+	return status;
+}
+
 /**
  * ice_replay_vsi_all_fltr - replay all filters stored in bookkeeping lists
  * @hw: pointer to the hardware structure
@@ -5669,14 +5701,17 @@ ice_rem_adv_rule_by_id(struct ice_hw *hw,
 int ice_replay_vsi_all_fltr(struct ice_hw *hw, u16 vsi_handle)
 {
 	struct ice_switch_info *sw = hw->switch_info;
-	int status = 0;
+	int status;
 	u8 i;
 
-	for (i = 0; i < ICE_SW_LKUP_LAST; i++) {
+	for (i = 0; i < ICE_MAX_NUM_RECIPES; i++) {
 		struct list_head *head;
 
 		head = &sw->recp_list[i].filt_replay_rules;
-		status = ice_replay_vsi_fltr(hw, vsi_handle, i, head);
+		if (!sw->recp_list[i].adv_rule)
+			status = ice_replay_vsi_fltr(hw, vsi_handle, i, head);
+		else
+			status = ice_replay_vsi_adv_rule(hw, vsi_handle, head);
 		if (status)
 			return status;
 	}
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
