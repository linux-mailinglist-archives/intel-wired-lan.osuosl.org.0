Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EB73F23FF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Aug 2021 02:06:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 54CE780FF3;
	Fri, 20 Aug 2021 00:06:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BuisgBDEZsV0; Fri, 20 Aug 2021 00:06:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C51580FA3;
	Fri, 20 Aug 2021 00:06:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3194F1C115D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 00:05:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1634160B53
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 00:05:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HE_eSou7-lfU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Aug 2021 00:05:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 532A060B4D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 00:05:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10081"; a="280413581"
X-IronPort-AV: E=Sophos;i="5.84,336,1620716400"; d="scan'208";a="280413581"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 17:05:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,336,1620716400"; d="scan'208";a="512317476"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
 by fmsmga004.fm.intel.com with ESMTP; 19 Aug 2021 17:05:30 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 19 Aug 2021 17:08:53 -0700
Message-Id: <20210820000859.680522-7-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210820000859.680522-1-anthony.l.nguyen@intel.com>
References: <20210820000859.680522-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue v4 06/12] ice: allow changing lan_en
 and lb_en on dflt rules
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

From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

There is no way to change default lan_en and lb_en flags while
adding new rule. Add function that allows changing these flags
on ICE_SW_LKUP_DFLT recipe and any rule id.

lan_en allows packet to go outside if rule is matched. Clearing
this bit will block packet from sending it outside.

lb_en allows packet to be forwarded to other VSI. Clearing
this bit will block packet from forwarding it to other VSI.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_fltr.c   | 80 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fltr.h   |  7 ++
 drivers/net/ethernet/intel/ice/ice_switch.c |  2 +-
 drivers/net/ethernet/intel/ice/ice_switch.h |  6 ++
 4 files changed, 94 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_fltr.c b/drivers/net/ethernet/intel/ice/ice_fltr.c
index 2b3a86167991..e49378893390 100644
--- a/drivers/net/ethernet/intel/ice/ice_fltr.c
+++ b/drivers/net/ethernet/intel/ice/ice_fltr.c
@@ -451,3 +451,83 @@ enum ice_status ice_fltr_remove_eth(struct ice_vsi *vsi, u16 ethertype,
 	return ice_fltr_prepare_eth(vsi, ethertype, flag, action,
 				    ice_fltr_remove_eth_list);
 }
+
+/**
+ * ice_fltr_update_rule_flags - update lan_en/lb_en flags
+ * @hw: pointer to hw
+ * @rule_id: id of rule being updated
+ * @recipe_id: recipe id of rule
+ * @act: current action field
+ * @type: Rx or Tx
+ * @src: source VSI
+ * @new_flags: combinations of lb_en and lan_en
+ */
+static enum ice_status
+ice_fltr_update_rule_flags(struct ice_hw *hw, u16 rule_id, u16 recipe_id,
+			   u32 act, u16 type, u16 src, u32 new_flags)
+{
+	struct ice_aqc_sw_rules_elem *s_rule;
+	enum ice_status err;
+	u32 flags_mask;
+
+	s_rule = kzalloc(ICE_SW_RULE_RX_TX_NO_HDR_SIZE, GFP_KERNEL);
+	if (!s_rule)
+		return ICE_ERR_NO_MEMORY;
+
+	flags_mask = ICE_SINGLE_ACT_LB_ENABLE | ICE_SINGLE_ACT_LAN_ENABLE;
+	act &= ~flags_mask;
+	act |= (flags_mask & new_flags);
+
+	s_rule->pdata.lkup_tx_rx.recipe_id = cpu_to_le16(recipe_id);
+	s_rule->pdata.lkup_tx_rx.index = cpu_to_le16(rule_id);
+	s_rule->pdata.lkup_tx_rx.act = cpu_to_le32(act);
+
+	if (type & ICE_FLTR_RX) {
+		s_rule->pdata.lkup_tx_rx.src =
+			cpu_to_le16(hw->port_info->lport);
+		s_rule->type = cpu_to_le16(ICE_AQC_SW_RULES_T_LKUP_RX);
+
+	} else {
+		s_rule->pdata.lkup_tx_rx.src = cpu_to_le16(src);
+		s_rule->type = cpu_to_le16(ICE_AQC_SW_RULES_T_LKUP_TX);
+	}
+
+	err = ice_aq_sw_rules(hw, s_rule, ICE_SW_RULE_RX_TX_NO_HDR_SIZE, 1,
+			      ice_aqc_opc_update_sw_rules, NULL);
+
+	kfree(s_rule);
+	return err;
+}
+
+/**
+ * ice_fltr_build_action - build action for rule
+ * @vsi_id: id of VSI which is use to build action
+ */
+static u32 ice_fltr_build_action(u16 vsi_id)
+{
+	return ((vsi_id << ICE_SINGLE_ACT_VSI_ID_S) & ICE_SINGLE_ACT_VSI_ID_M) |
+		ICE_SINGLE_ACT_VSI_FORWARDING | ICE_SINGLE_ACT_VALID_BIT;
+}
+
+/**
+ * ice_fltr_update_flags_dflt_rule - update flags on default rule
+ * @vsi: pointer to VSI
+ * @rule_id: id of rule
+ * @direction: Tx or Rx
+ * @new_flags: flags to update
+ *
+ * Function updates flags on default rule with ICE_SW_LKUP_DFLT.
+ *
+ * Flags should be a combination of ICE_SINGLE_ACT_LB_ENABLE and
+ * ICE_SINGLE_ACT_LAN_ENABLE.
+ */
+enum ice_status
+ice_fltr_update_flags_dflt_rule(struct ice_vsi *vsi, u16 rule_id, u8 direction,
+				u32 new_flags)
+{
+	u32 action = ice_fltr_build_action(vsi->vsi_num);
+	struct ice_hw *hw = &vsi->back->hw;
+
+	return ice_fltr_update_rule_flags(hw, rule_id, ICE_SW_LKUP_DFLT, action,
+					  direction, vsi->vsi_num, new_flags);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_fltr.h b/drivers/net/ethernet/intel/ice/ice_fltr.h
index c79e5179a04d..339da5fef577 100644
--- a/drivers/net/ethernet/intel/ice/ice_fltr.h
+++ b/drivers/net/ethernet/intel/ice/ice_fltr.h
@@ -46,4 +46,11 @@ enum ice_status
 ice_fltr_remove_eth(struct ice_vsi *vsi, u16 ethertype, u16 flag,
 		    enum ice_sw_fwd_act_type action);
 void ice_fltr_remove_all(struct ice_vsi *vsi);
+
+enum ice_status
+ice_fltr_update_flags(struct ice_vsi *vsi, u16 rule_id, u16 recipe_id,
+		      u32 new_flags);
+enum ice_status
+ice_fltr_update_flags_dflt_rule(struct ice_vsi *vsi, u16 rule_id, u8 direction,
+				u32 new_flags);
 #endif
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 3b6c1420aa7b..1e86a6dba454 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -518,7 +518,7 @@ ice_aq_alloc_free_vsi_list(struct ice_hw *hw, u16 *vsi_list_id,
  *
  * Add(0x02a0)/Update(0x02a1)/Remove(0x02a2) switch rules commands to firmware
  */
-static enum ice_status
+enum ice_status
 ice_aq_sw_rules(struct ice_hw *hw, void *rule_list, u16 rule_list_sz,
 		u8 num_rules, enum ice_adminq_opc opc, struct ice_sq_cd *cd)
 {
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index c5db8d56133f..e6eeffb3dde9 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -14,6 +14,9 @@
 #define ICE_VSI_INVAL_ID 0xffff
 #define ICE_INVAL_Q_HANDLE 0xFFFF
 
+#define ICE_SW_RULE_RX_TX_NO_HDR_SIZE \
+	(offsetof(struct ice_aqc_sw_rules_elem, pdata.lkup_tx_rx.hdr))
+
 /* VSI context structure for add/get/update/free operations */
 struct ice_vsi_ctx {
 	u16 vsi_num;
@@ -251,4 +254,7 @@ u16 ice_get_hw_vsi_num(struct ice_hw *hw, u16 vsi_handle);
 enum ice_status ice_replay_vsi_all_fltr(struct ice_hw *hw, u16 vsi_handle);
 void ice_rm_all_sw_replay_rule_info(struct ice_hw *hw);
 
+enum ice_status
+ice_aq_sw_rules(struct ice_hw *hw, void *rule_list, u16 rule_list_sz,
+		u8 num_rules, enum ice_adminq_opc opc, struct ice_sq_cd *cd);
 #endif /* _ICE_SWITCH_H_ */
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
