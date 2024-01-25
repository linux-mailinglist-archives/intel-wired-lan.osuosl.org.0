Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 702A583C2C7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jan 2024 13:49:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 034A983276;
	Thu, 25 Jan 2024 12:49:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 034A983276
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706186973;
	bh=iUBbVchoygl0nxMRxDgWvB76IrkUkMCHt0GlQoWbbYo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IBtoh11CJ7VWd3LxAYMxv5+BvamkkwAOLTTLJo+AD+AZBZIDglpKadjw9gLLcjjRi
	 TGGkX3ERiDWvCxEa5fsCw8tHzumXh8vgz2279GXhmdJlQkL+DPU3PykUQtim/QZd8+
	 KXsJ8FgfAB+yF0Lr6f5zIBZe22ctpnxgf2KX++Yr2OZu4ZnaoxzP0sGgcKs4ADcAkO
	 hr8zqgUiw3QxMrTdCFqb0sy/BlL2pzXAj7Q9Ku62IKSb1mEvD7OrUnk1HsFEkK1xyD
	 nwWJmhC1FUV5er+4R0iojjvtyy+kmbCPTYcj7U0pinPSmOnR4tcYvATy18A1cL53X7
	 y07jjHbYVYMPg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CAKNLkG8CTs7; Thu, 25 Jan 2024 12:49:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 61C9283211;
	Thu, 25 Jan 2024 12:49:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 61C9283211
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0B4CB1BF387
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 12:49:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D6D37400D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 12:49:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D6D37400D1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RIL_OOeiT27l for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jan 2024 12:49:16 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B1529400BA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 12:49:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B1529400BA
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="399313532"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="399313532"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2024 04:49:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="905956666"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="905956666"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmsmga002.fm.intel.com with ESMTP; 25 Jan 2024 04:49:14 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jan 2024 13:53:09 +0100
Message-ID: <20240125125314.852914-4-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240125125314.852914-1-michal.swiatkowski@linux.intel.com>
References: <20240125125314.852914-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706186956; x=1737722956;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S0EC2RG9zT2OWQ+ZyOC6yvnHIEaudkx5OZPlW9x8uh8=;
 b=S4AtFA2S+p6H/g8cOiR1406yJOuIfVU9q36Z7xLW2FCYkXkCVX/bZGtl
 ByBv+LcdsypvKXSeDHy03VOvW+PBoj76nam/YRH8bnuY0VKl/wCFApuRo
 g0bIFnAE2zmVEOPCxQopKYpNDjsvEF88DPp4LUdnaUkgM9JFlRY4Mghev
 zipcF8bHzzZ8rzG21R8SrCfx12JCdlkV4QARWfyt7zm7apoWNIH5wIcX7
 zcv4UwnwuMMaEf5wwM5Cn1uHA5L83FQk6RELXVr3JfohZ5H+7jS31QFlA
 xddWM9lBVS5VNOi5+exPtaLdqCNC3Q318hBy7hBDWiC+hitjEpgv5T7m4
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S4AtFA2S
Subject: [Intel-wired-lan] [iwl-next v1 3/8] ice: default Tx rule instead of
 to queue
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>, przemyslaw.kitszel@intel.com,
 sridhar.samudrala@intel.com, netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Steer all packets that miss other rules to PF VSI. Previously in
switchdev mode, PF VSI received missed packets, but only ones marked
as Rx. Now it is receiving all missed packets.

To queue rule per PR isn't needed, because we use PF VSI instead of
control VSI now, and it's already correctly configured.

Add flag to correctly set LAN_EN bit in default Tx rule. It shouldn't
allow packet to go outside when there is a match.

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 107 +++----------------
 drivers/net/ethernet/intel/ice/ice_repr.h    |   4 -
 drivers/net/ethernet/intel/ice/ice_switch.c  |   4 +
 drivers/net/ethernet/intel/ice/ice_switch.h  |   5 +-
 4 files changed, 23 insertions(+), 97 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 8ad271534d80..50b3de700837 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -10,85 +10,6 @@
 #include "ice_devlink.h"
 #include "ice_tc_lib.h"
 
-/**
- * ice_eswitch_del_sp_rules - delete adv rules added on PRs
- * @pf: pointer to the PF struct
- *
- * Delete all advanced rules that were used to forward packets with the
- * device's VSI index to the corresponding eswitch ctrl VSI queue.
- */
-static void ice_eswitch_del_sp_rules(struct ice_pf *pf)
-{
-	struct ice_repr *repr;
-	unsigned long id;
-
-	xa_for_each(&pf->eswitch.reprs, id, repr) {
-		if (repr->sp_rule.rid)
-			ice_rem_adv_rule_by_id(&pf->hw, &repr->sp_rule);
-	}
-}
-
-/**
- * ice_eswitch_add_sp_rule - add adv rule with device's VSI index
- * @pf: pointer to PF struct
- * @repr: pointer to the repr struct
- *
- * This function adds advanced rule that forwards packets with
- * device's VSI index to the corresponding eswitch ctrl VSI queue.
- */
-static int ice_eswitch_add_sp_rule(struct ice_pf *pf, struct ice_repr *repr)
-{
-	struct ice_vsi *ctrl_vsi = pf->eswitch.control_vsi;
-	struct ice_adv_rule_info rule_info = { 0 };
-	struct ice_adv_lkup_elem *list;
-	struct ice_hw *hw = &pf->hw;
-	const u16 lkups_cnt = 1;
-	int err;
-
-	list = kcalloc(lkups_cnt, sizeof(*list), GFP_ATOMIC);
-	if (!list)
-		return -ENOMEM;
-
-	ice_rule_add_src_vsi_metadata(list);
-
-	rule_info.sw_act.flag = ICE_FLTR_TX;
-	rule_info.sw_act.vsi_handle = ctrl_vsi->idx;
-	rule_info.sw_act.fltr_act = ICE_FWD_TO_Q;
-	rule_info.sw_act.fwd_id.q_id = hw->func_caps.common_cap.rxq_first_id +
-				       ctrl_vsi->rxq_map[repr->q_id];
-	rule_info.flags_info.act |= ICE_SINGLE_ACT_LB_ENABLE;
-	rule_info.flags_info.act_valid = true;
-	rule_info.tun_type = ICE_SW_TUN_AND_NON_TUN;
-	rule_info.src_vsi = repr->src_vsi->idx;
-
-	err = ice_add_adv_rule(hw, list, lkups_cnt, &rule_info,
-			       &repr->sp_rule);
-	if (err)
-		dev_err(ice_pf_to_dev(pf), "Unable to add slow-path rule for eswitch for PR %d",
-			repr->id);
-
-	kfree(list);
-	return err;
-}
-
-static int
-ice_eswitch_add_sp_rules(struct ice_pf *pf)
-{
-	struct ice_repr *repr;
-	unsigned long id;
-	int err;
-
-	xa_for_each(&pf->eswitch.reprs, id, repr) {
-		err = ice_eswitch_add_sp_rule(pf, repr);
-		if (err) {
-			ice_eswitch_del_sp_rules(pf);
-			return err;
-		}
-	}
-
-	return 0;
-}
-
 /**
  * ice_eswitch_setup_env - configure eswitch HW filters
  * @pf: pointer to PF struct
@@ -102,7 +23,6 @@ static int ice_eswitch_setup_env(struct ice_pf *pf)
 	struct ice_vsi *ctrl_vsi = pf->eswitch.control_vsi;
 	struct net_device *netdev = uplink_vsi->netdev;
 	struct ice_vsi_vlan_ops *vlan_ops;
-	bool rule_added = false;
 
 	ice_remove_vsi_fltr(&pf->hw, uplink_vsi->idx);
 
@@ -112,17 +32,19 @@ static int ice_eswitch_setup_env(struct ice_pf *pf)
 	netif_addr_unlock_bh(netdev);
 
 	if (ice_vsi_add_vlan_zero(uplink_vsi))
+		goto err_vlan_zero;
+
+	if (ice_cfg_dflt_vsi(uplink_vsi->port_info, uplink_vsi->idx, true,
+			     ICE_FLTR_RX))
 		goto err_def_rx;
 
-	if (!ice_is_dflt_vsi_in_use(uplink_vsi->port_info)) {
-		if (ice_set_dflt_vsi(uplink_vsi))
-			goto err_def_rx;
-		rule_added = true;
-	}
+	if (ice_cfg_dflt_vsi(uplink_vsi->port_info, uplink_vsi->idx, true,
+			     ICE_FLTR_TX))
+		goto err_def_tx;
 
 	vlan_ops = ice_get_compat_vsi_vlan_ops(uplink_vsi);
 	if (vlan_ops->dis_rx_filtering(uplink_vsi))
-		goto err_dis_rx;
+		goto err_vlan_filtering;
 
 	if (ice_vsi_update_security(uplink_vsi, ice_vsi_ctx_set_allow_override))
 		goto err_override_uplink;
@@ -141,10 +63,15 @@ static int ice_eswitch_setup_env(struct ice_pf *pf)
 	ice_vsi_update_security(uplink_vsi, ice_vsi_ctx_clear_allow_override);
 err_override_uplink:
 	vlan_ops->ena_rx_filtering(uplink_vsi);
-err_dis_rx:
-	if (rule_added)
-		ice_clear_dflt_vsi(uplink_vsi);
+err_vlan_filtering:
+	ice_cfg_dflt_vsi(uplink_vsi->port_info, uplink_vsi->idx, false,
+			 ICE_FLTR_TX);
+err_def_tx:
+	ice_cfg_dflt_vsi(uplink_vsi->port_info, uplink_vsi->idx, false,
+			 ICE_FLTR_RX);
 err_def_rx:
+	ice_vsi_del_vlan_zero(uplink_vsi);
+err_vlan_zero:
 	ice_fltr_add_mac_and_broadcast(uplink_vsi,
 				       uplink_vsi->port_info->mac.perm_addr,
 				       ICE_FWD_TO_VSI);
@@ -585,7 +512,6 @@ void ice_eswitch_stop_all_tx_queues(struct ice_pf *pf)
 
 static void ice_eswitch_stop_reprs(struct ice_pf *pf)
 {
-	ice_eswitch_del_sp_rules(pf);
 	ice_eswitch_stop_all_tx_queues(pf);
 	ice_eswitch_napi_disable(&pf->eswitch.reprs);
 }
@@ -594,7 +520,6 @@ static void ice_eswitch_start_reprs(struct ice_pf *pf)
 {
 	ice_eswitch_napi_enable(&pf->eswitch.reprs);
 	ice_eswitch_start_all_tx_queues(pf);
-	ice_eswitch_add_sp_rules(pf);
 }
 
 static void
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.h b/drivers/net/ethernet/intel/ice/ice_repr.h
index b107e058d538..34823f58cd23 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.h
+++ b/drivers/net/ethernet/intel/ice/ice_repr.h
@@ -16,10 +16,6 @@ struct ice_repr {
 	int q_id;
 	u32 id;
 	u8 parent_mac[ETH_ALEN];
-#ifdef CONFIG_ICE_SWITCHDEV
-	/* info about slow path rule */
-	struct ice_rule_query_data sp_rule;
-#endif
 };
 
 struct ice_repr *ice_repr_add_vf(struct ice_vf *vf);
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index f84bab80ca42..ce0b344dda99 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -2444,6 +2444,9 @@ static void ice_fill_sw_info(struct ice_hw *hw, struct ice_fltr_info *fi)
 			fi->lan_en = true;
 		}
 	}
+
+	if (fi->flag & ICE_FLTR_TX_ONLY)
+		fi->lan_en = false;
 }
 
 /**
@@ -3819,6 +3822,7 @@ ice_cfg_dflt_vsi(struct ice_port_info *pi, u16 vsi_handle, bool set,
 	} else if (f_info.flag & ICE_FLTR_TX) {
 		f_info.src_id = ICE_SRC_ID_VSI;
 		f_info.src = hw_vsi_id;
+		f_info.flag |= ICE_FLTR_TX_ONLY;
 	}
 	f_list_entry.fltr_info = f_info;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index db7e501b7e0a..6f2cf9d6d01b 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -8,8 +8,9 @@
 
 #define ICE_SW_CFG_MAX_BUF_LEN 2048
 #define ICE_DFLT_VSI_INVAL 0xff
-#define ICE_FLTR_RX BIT(0)
-#define ICE_FLTR_TX BIT(1)
+#define ICE_FLTR_RX		BIT(0)
+#define ICE_FLTR_TX		BIT(1)
+#define ICE_FLTR_TX_ONLY	BIT(2)
 #define ICE_VSI_INVAL_ID 0xffff
 #define ICE_INVAL_Q_HANDLE 0xFFFF
 
-- 
2.42.0

