Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFB46DB136
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Apr 2023 19:11:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0CD1F40298;
	Fri,  7 Apr 2023 17:11:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0CD1F40298
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680887476;
	bh=TAf4GzeyS51+CLa0tG32Fi5L/HT7/HDnXp2VegUPtkU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2d6Y9NEMcuC3joqQHSjnmrJ/OO7Fj/CYqpn5MQU0tmNrmXo75voLYjmaAVbux7oYg
	 weM3Fw7qB6X1HQjmNPB79BMohAnX61R+K9DSypsXHEvxVSYoqZTuukg1UQL8L0LBbC
	 eQfoTNylcRslTOiuno8S0kLNr/rQyu/ZhzTg97zRswAU0NIhKeE9HFMevOSMqEr1Ng
	 9hKBm0rec0Vp/uND7N5jHuvPf4eSM4Hr3xeSfCW9N7/9B4gBQ4xSUthpUIdjucmAbu
	 WEXh4KvSqLaBc+z1dp7DcYExTckO0XrWAu28R+bi/tozRaQmZ3Pbjbl3wE2PmXjbx2
	 oTHy2uTbBmiqw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZD2nAq3Sf_t4; Fri,  7 Apr 2023 17:11:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C81E44053C;
	Fri,  7 Apr 2023 17:11:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C81E44053C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 12F181C2E79
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Apr 2023 17:11:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EE03D613E1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Apr 2023 17:11:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE03D613E1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MZZGAp7D2Exc for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Apr 2023 17:11:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 11507613E0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 11507613E0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Apr 2023 17:11:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10673"; a="344805714"
X-IronPort-AV: E=Sophos;i="5.98,327,1673942400"; d="scan'208";a="344805714"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2023 10:11:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10673"; a="687569932"
X-IronPort-AV: E=Sophos;i="5.98,327,1673942400"; d="scan'208";a="687569932"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga002.jf.intel.com with ESMTP; 07 Apr 2023 10:11:01 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  7 Apr 2023 18:52:16 +0200
Message-Id: <20230407165219.2737504-3-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230407165219.2737504-1-michal.swiatkowski@linux.intel.com>
References: <20230407165219.2737504-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680887464; x=1712423464;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wRQVmX2RWl0sclf8t54iErOfsm3Sg2JBV4bZu7nwAjY=;
 b=lwZS1uu1ELnGUllAZukIgP8CoBgqSF7xfwlC0Tjz/KUWXb0ppxuTRJK1
 I+vgXSEj/dJEEtOrLpdmnc+rmpfb1i64GbN8C/dDQLXM9Su0MmQVR1f9a
 9ZlzEC7Jj9dvaOG2zFr9rJ3f1LJPcDs4g1/vAOshJIqJX0fbv0BPfmeUA
 tIwmfXl9kx8DCxfsEJyzdy10ZjvJPXQHWbfOj9L4xoNLlZGtqSEYX+92t
 gmFS7yly8tyT65Xfa197Dat3ZIxpeVKPkbLpdShWI8JCfENEip49LrmoA
 Ne5gRq0b4+jlltLNGIOsQMROMnzNrpXy830vLeE76MezJ8p+xYauWHX71
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lwZS1uu1
Subject: [Intel-wired-lan] [PATCH net-next v4 2/5] ice: remove redundant Rx
 field from rule info
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org,
 Simon Horman <simon.horman@corigine.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Information about the direction is currently stored in sw_act.flag.
There is no need to duplicate it in another field.

Setting direction flag doesn't mean that there is a match criteria for
direction in rule. It is only a information for HW from where switch id
should be collected (VSI or port). In current implementation of advance
rule handling, without matching for direction meta data, we can always
set one the same flag and everything will work the same.

Ability to match on direction meta data will be added in follow up
patches.

Recipe 0, 3 and 9 loaded from package has direction match
criteria, but they are handled in other function.

Move ice_adv_rule_info fields to avoid holes.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Piotr Raczynski <piotr.raczynski@intel.com>
Reviewed-by: Simon Horman <simon.horman@corigine.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c |  1 -
 drivers/net/ethernet/intel/ice/ice_switch.c  | 22 ++++++++++----------
 drivers/net/ethernet/intel/ice/ice_switch.h  |  8 +++----
 drivers/net/ethernet/intel/ice/ice_tc_lib.c  |  5 -----
 4 files changed, 14 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index f6dd3f8fd936..2c80d57331d0 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -39,7 +39,6 @@ ice_eswitch_add_vf_mac_rule(struct ice_pf *pf, struct ice_vf *vf, const u8 *mac)
 	rule_info.sw_act.flag |= ICE_FLTR_TX;
 	rule_info.sw_act.vsi_handle = ctrl_vsi->idx;
 	rule_info.sw_act.fltr_act = ICE_FWD_TO_Q;
-	rule_info.rx = false;
 	rule_info.sw_act.fwd_id.q_id = hw->func_caps.common_cap.rxq_first_id +
 				       ctrl_vsi->rxq_map[vf->vf_id];
 	rule_info.flags_info.act |= ICE_SINGLE_ACT_LB_ENABLE;
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 5c3f266fa80f..e806dfe69b90 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -6121,8 +6121,7 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	if (rinfo->sw_act.fltr_act == ICE_FWD_TO_VSI)
 		rinfo->sw_act.fwd_id.hw_vsi_id =
 			ice_get_hw_vsi_num(hw, vsi_handle);
-	if (rinfo->sw_act.flag & ICE_FLTR_TX)
-		rinfo->sw_act.src = ice_get_hw_vsi_num(hw, vsi_handle);
+	rinfo->sw_act.src = ice_get_hw_vsi_num(hw, vsi_handle);
 
 	status = ice_add_adv_recipe(hw, lkups, lkups_cnt, rinfo, &rid);
 	if (status)
@@ -6190,19 +6189,20 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 		goto err_ice_add_adv_rule;
 	}
 
-	/* set the rule LOOKUP type based on caller specified 'Rx'
-	 * instead of hardcoding it to be either LOOKUP_TX/RX
+	/* If there is no matching criteria for direction there
+	 * is only one difference between Rx and Tx:
+	 * - get switch id base on VSI number from source field (Tx)
+	 * - get switch id base on port number (Rx)
 	 *
-	 * for 'Rx' set the source to be the port number
-	 * for 'Tx' set the source to be the source HW VSI number (determined
-	 * by caller)
+	 * If matching on direction metadata is chose rule direction is
+	 * extracted from type value set here.
 	 */
-	if (rinfo->rx) {
-		s_rule->hdr.type = cpu_to_le16(ICE_AQC_SW_RULES_T_LKUP_RX);
-		s_rule->src = cpu_to_le16(hw->port_info->lport);
-	} else {
+	if (rinfo->sw_act.flag & ICE_FLTR_TX) {
 		s_rule->hdr.type = cpu_to_le16(ICE_AQC_SW_RULES_T_LKUP_TX);
 		s_rule->src = cpu_to_le16(rinfo->sw_act.src);
+	} else {
+		s_rule->hdr.type = cpu_to_le16(ICE_AQC_SW_RULES_T_LKUP_RX);
+		s_rule->src = cpu_to_le16(hw->port_info->lport);
 	}
 
 	s_rule->recipe_id = cpu_to_le16(rid);
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index 68d8e8a6a189..8e77868d6dca 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -10,7 +10,6 @@
 #define ICE_DFLT_VSI_INVAL 0xff
 #define ICE_FLTR_RX BIT(0)
 #define ICE_FLTR_TX BIT(1)
-#define ICE_FLTR_TX_RX (ICE_FLTR_RX | ICE_FLTR_TX)
 #define ICE_VSI_INVAL_ID 0xffff
 #define ICE_INVAL_Q_HANDLE 0xFFFF
 
@@ -188,11 +187,10 @@ struct ice_adv_rule_flags_info {
 
 struct ice_adv_rule_info {
 	enum ice_sw_tunnel_type tun_type;
-	struct ice_sw_act_ctrl sw_act;
-	u32 priority;
-	u8 rx; /* true means LOOKUP_RX otherwise LOOKUP_TX */
-	u16 fltr_rule_id;
 	u16 vlan_type;
+	u16 fltr_rule_id;
+	u32 priority;
+	struct ice_sw_act_ctrl sw_act;
 	struct ice_adv_rule_flags_info flags_info;
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 76f29a5bf8d7..b5af6cd5592b 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -697,11 +697,9 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 	if (fltr->direction == ICE_ESWITCH_FLTR_INGRESS) {
 		rule_info.sw_act.flag |= ICE_FLTR_RX;
 		rule_info.sw_act.src = hw->pf_id;
-		rule_info.rx = true;
 	} else {
 		rule_info.sw_act.flag |= ICE_FLTR_TX;
 		rule_info.sw_act.src = vsi->idx;
-		rule_info.rx = false;
 		rule_info.flags_info.act = ICE_SINGLE_ACT_LAN_ENABLE;
 		rule_info.flags_info.act_valid = true;
 	}
@@ -909,7 +907,6 @@ ice_add_tc_flower_adv_fltr(struct ice_vsi *vsi,
 		rule_info.sw_act.vsi_handle = dest_vsi->idx;
 		rule_info.priority = ICE_SWITCH_FLTR_PRIO_VSI;
 		rule_info.sw_act.src = hw->pf_id;
-		rule_info.rx = true;
 		dev_dbg(dev, "add switch rule for TC:%u vsi_idx:%u, lkups_cnt:%u\n",
 			tc_fltr->action.fwd.tc.tc_class,
 			rule_info.sw_act.vsi_handle, lkups_cnt);
@@ -920,7 +917,6 @@ ice_add_tc_flower_adv_fltr(struct ice_vsi *vsi,
 		rule_info.sw_act.vsi_handle = dest_vsi->idx;
 		rule_info.priority = ICE_SWITCH_FLTR_PRIO_QUEUE;
 		rule_info.sw_act.src = hw->pf_id;
-		rule_info.rx = true;
 		dev_dbg(dev, "add switch rule action to forward to queue:%u (HW queue %u), lkups_cnt:%u\n",
 			tc_fltr->action.fwd.q.queue,
 			tc_fltr->action.fwd.q.hw_queue, lkups_cnt);
@@ -928,7 +924,6 @@ ice_add_tc_flower_adv_fltr(struct ice_vsi *vsi,
 	case ICE_DROP_PACKET:
 		rule_info.sw_act.flag |= ICE_FLTR_RX;
 		rule_info.sw_act.src = hw->pf_id;
-		rule_info.rx = true;
 		rule_info.priority = ICE_SWITCH_FLTR_PRIO_VSI;
 		break;
 	default:
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
