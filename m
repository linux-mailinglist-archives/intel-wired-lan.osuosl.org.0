Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD0E6D59EF
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Apr 2023 09:47:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF9DF415E5;
	Tue,  4 Apr 2023 07:47:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF9DF415E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680594455;
	bh=GQEzW8Q/05DlGOCWvTr6zoAdoIr6XQVUJEN4lknxSh8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=W8W00aqm+QiVrL8AEdk9AfCDTXnk6TcQQvS/+GWrfvUb3q26uwwAYhYa4mHSy36dp
	 kuVL4HquB2Ve1q3GebmmgPpZ/Kf2wbcl/qwCd8BWcxHMwumPuO/EPlDPKPlVZw/U2S
	 iwJNhcUa01fjyfpDNPTon8LdCyNob0jGbuOgQ6DosIFw2F12M27bxQQ12hv26QG5fb
	 nkZqiKounCRz/DpeYVBDN4aSfSnxP5ndPA42V2akPdWbCM9KHWFVem7vsNulgbVp9Q
	 HDcxD+kDHCnKDbijiPRXBKKYSP0ewpy0/BF7GbCfyJhfgl3SDe8rXpD+0DXlbUlaMA
	 ssEE23aSUYesw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SDC-zM0etXHC; Tue,  4 Apr 2023 07:47:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7375F40256;
	Tue,  4 Apr 2023 07:47:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7375F40256
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DC1AD1C2786
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 07:47:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B4AED40546
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 07:47:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B4AED40546
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Xi5wfdjU0bB for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Apr 2023 07:47:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A4D1405CE
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7A4D1405CE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 07:47:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="404877618"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="404877618"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 00:47:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="797421817"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="797421817"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga002.fm.intel.com with ESMTP; 04 Apr 2023 00:47:19 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  4 Apr 2023 09:28:31 +0200
Message-Id: <20230404072833.3676891-3-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230404072833.3676891-1-michal.swiatkowski@linux.intel.com>
References: <20230404072833.3676891-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680594441; x=1712130441;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a7JtkBAIbk/ifj/6aO8sdRnjBuOHXj4fkXLTRUNg3Yg=;
 b=l2YA6tAX3lGJWNLzSve7BSrW+qRaZceUgK7dzl6rmRuZb0d3fZ+n6Khz
 MXCc0ekN2HbI9uNqN71eeaYtkB0VwgO2q+qRtr1jfg7PzUNUCl73qU9y3
 vj395+htg3O8Ck9FkQiC1QuG5DiTv7xhnQAsZtKRUZaPg5t5+kZJTZ70p
 sbIby6LURR7yVghCpUdD983xV4QxiGnJgTfM8/Ez7DkbR0OFbJ+A7ws+L
 khegXoHjmObb5Yn+cG1S/37q2nzAYuVmTGP5a5TCHs/0MF6wp+mQULA3c
 mkAi40igbVbswfPqqcdwi7IXlAH73YQnW40XwEPWXAFLu2edCB5q0Omg2
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l2YA6tAX
Subject: [Intel-wired-lan] [PATCH net-next v2 2/4] ice: remove redundant Rx
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
Cc: netdev@vger.kernel.org, Simon Horman <simon.horman@corigine.com>
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

Ability to match on direction matadata will be added in follow up
patches.

Recipe 0, 3 and 9 loaded from package has direction match
criteria, but they are handled in other function.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Piotr Raczynski <piotr.raczynski@intel.com>
Reviewed-by: Simon Horman <simon.horman@corigine.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c |  1 -
 drivers/net/ethernet/intel/ice/ice_switch.c  | 22 ++++++++++----------
 drivers/net/ethernet/intel/ice/ice_switch.h  |  2 --
 drivers/net/ethernet/intel/ice/ice_tc_lib.c  |  5 -----
 4 files changed, 11 insertions(+), 19 deletions(-)

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
index 5c3f266fa80f..4d3a92e0c61f 100644
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
index 68d8e8a6a189..44aa37b80111 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -10,7 +10,6 @@
 #define ICE_DFLT_VSI_INVAL 0xff
 #define ICE_FLTR_RX BIT(0)
 #define ICE_FLTR_TX BIT(1)
-#define ICE_FLTR_TX_RX (ICE_FLTR_RX | ICE_FLTR_TX)
 #define ICE_VSI_INVAL_ID 0xffff
 #define ICE_INVAL_Q_HANDLE 0xFFFF
 
@@ -190,7 +189,6 @@ struct ice_adv_rule_info {
 	enum ice_sw_tunnel_type tun_type;
 	struct ice_sw_act_ctrl sw_act;
 	u32 priority;
-	u8 rx; /* true means LOOKUP_RX otherwise LOOKUP_TX */
 	u16 fltr_rule_id;
 	u16 vlan_type;
 	struct ice_adv_rule_flags_info flags_info;
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
