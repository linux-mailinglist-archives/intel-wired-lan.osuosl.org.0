Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B7B43B04D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Oct 2021 12:40:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 037AE60901;
	Tue, 26 Oct 2021 10:40:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Voc0N35jEBsp; Tue, 26 Oct 2021 10:40:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 30446608F3;
	Tue, 26 Oct 2021 10:40:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7E3591BF83C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 10:39:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EBEBA4046B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 10:39:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RN97boQW025T for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Oct 2021 10:39:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A094040467
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 10:39:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10148"; a="253411879"
X-IronPort-AV: E=Sophos;i="5.87,182,1631602800"; d="scan'208";a="253411879"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 03:39:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,182,1631602800"; d="scan'208";a="494160746"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga007.fm.intel.com with ESMTP; 26 Oct 2021 03:39:31 -0700
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 19QAdUhu008742
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 11:39:31 +0100
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Oct 2021 12:38:40 +0200
Message-Id: <20211026103840.11455-3-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211026103840.11455-1-wojciech.drewek@intel.com>
References: <20211026103840.11455-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 2/2] ice: improve switchdev's
 slow-path
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

In current switchdev implementation, every VF PR is assigned to
individual ring on switchdev ctrl VSI. For slow-path traffic, there
is a mapping VF->ring done in software based on src_vsi value (by
calling ice_eswitch_get_target_netdev function).

With this change, HW solution is introduced which is more
efficient. For each VF, src MAC (VF's MAC) filter will be created,
which forwards packets to the coresponding switchdev ctrl VSI queue
based on src MAC address.

This filter has to be removed and then replayed in case of
resetting one VF. Keep information about this rule in repr->mac_rule,
thanks to that we know which rule has to be removed and replayed
for a given VF.

In case of CORE/GLOBAL all rules are removed
automatically. We have to take care of readding them. This is done
by ice_replay_vsi_adv_rule.

When driver leaves switchdev mode, remove all advanced rules
from switchdev ctrl VSI. This is done by ice_rem_adv_rule_for_vsi.

Flag repr->rule_added is needed because in some cases reset
might be triggered before VF sends request to add MAC.

Co-developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c  | 170 ++++++++++--------
 drivers/net/ethernet/intel/ice/ice_eswitch.h  |  24 +--
 drivers/net/ethernet/intel/ice/ice_fltr.c     |  80 ---------
 drivers/net/ethernet/intel/ice/ice_fltr.h     |   3 -
 drivers/net/ethernet/intel/ice/ice_main.c     |  24 +++
 drivers/net/ethernet/intel/ice/ice_repr.c     |  17 ++
 drivers/net/ethernet/intel/ice/ice_repr.h     |   5 +
 drivers/net/ethernet/intel/ice/ice_switch.c   |  54 ++++++
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |   3 +-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  11 ++
 10 files changed, 221 insertions(+), 170 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 6cb50653b18d..1ece5a38afd1 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -9,6 +9,101 @@
 #include "ice_devlink.h"
 #include "ice_tc_lib.h"
 
+/**
+ * ice_eswitch_add_vf_mac_rule - add adv rule with VF's MAC
+ * @pf: pointer to PF struct
+ * @vf: pointer to VF struct
+ * @mac: VF's MAC address
+ *
+ * This function adds advanced rule that forwards packets with
+ * VF's MAC address (src MAC) to the coresponding switchdev ctrl VSI queue.
+ */
+int ice_eswitch_add_vf_mac_rule(struct ice_pf *pf, struct ice_vf *vf,
+				const u8 *mac)
+{
+	struct ice_vsi *ctrl_vsi = pf->switchdev.control_vsi;
+	struct ice_adv_rule_info rule_info = {0};
+	struct ice_adv_lkup_elem *list;
+	struct ice_hw *hw = &pf->hw;
+	const u16 lkups_cnt = 1;
+	int err;
+
+	list = kcalloc(lkups_cnt, sizeof(*list), GFP_ATOMIC);
+	if (!list)
+		return -ENOMEM;
+
+	list[0].type = ICE_MAC_OFOS;
+	ether_addr_copy(list[0].h_u.eth_hdr.src_addr, mac);
+	eth_broadcast_addr(list[0].m_u.eth_hdr.src_addr);
+
+	rule_info.sw_act.flag |= ICE_FLTR_TX;
+	rule_info.sw_act.vsi_handle = ctrl_vsi->idx;
+	rule_info.sw_act.fltr_act = ICE_FWD_TO_Q;
+	rule_info.rx = false;
+	rule_info.sw_act.fwd_id.q_id = hw->func_caps.common_cap.rxq_first_id +
+				       ctrl_vsi->rxq_map[vf->vf_id];
+	rule_info.flags_info.act |= ICE_SINGLE_ACT_LB_ENABLE;
+	rule_info.flags_info.act_valid = true;
+
+	err = ice_add_adv_rule(hw, list, lkups_cnt, &rule_info,
+			       vf->repr->mac_rule);
+	if (err)
+		dev_err(ice_pf_to_dev(pf), "Unable to add VF mac rule in switchdev mode for VF %d",
+			vf->vf_id);
+	else
+		vf->repr->rule_added = true;
+
+	kfree(list);
+	return err;
+}
+
+/**
+ * ice_eswitch_replay_vf_mac_rule - replay adv rule with VF's MAC
+ * @vf: pointer to vF struct
+ *
+ * This function replays VF's MAC rule after reset.
+ */
+void
+ice_eswitch_replay_vf_mac_rule(struct ice_vf *vf)
+{
+	int err;
+
+	if (!ice_is_switchdev_running(vf->pf))
+		return;
+
+	if (is_valid_ether_addr(vf->hw_lan_addr.addr)) {
+		err = ice_eswitch_add_vf_mac_rule(vf->pf, vf,
+						  vf->hw_lan_addr.addr);
+		if (err) {
+			dev_err(ice_pf_to_dev(vf->pf), "Failed to add MAC %pM for VF %d\n, error %d\n",
+				vf->hw_lan_addr.addr, vf->vf_id, err);
+			return;
+		}
+		vf->num_mac++;
+
+		ether_addr_copy(vf->dev_lan_addr.addr, vf->hw_lan_addr.addr);
+	}
+}
+
+/**
+ * ice_eswitch_del_vf_mac_rule - delete adv rule with VF's MAC
+ * @vf: pointer to the VF struct
+ *
+ * Delete the advanced rule that was used to forward packets with the VF's MAC
+ * address (src MAC) to the corresponding switchdev ctrl VSI queue.
+ */
+void ice_eswitch_del_vf_mac_rule(struct ice_vf *vf)
+{
+	if (!ice_is_switchdev_running(vf->pf))
+		return;
+
+	if (!vf->repr->rule_added)
+		return;
+
+	ice_rem_adv_rule_by_id(&vf->pf->hw, vf->repr->mac_rule);
+	vf->repr->rule_added = false;
+}
+
 /**
  * ice_eswitch_setup_env - configure switchdev HW filters
  * @pf: pointer to PF struct
@@ -20,7 +115,6 @@ static int ice_eswitch_setup_env(struct ice_pf *pf)
 {
 	struct ice_vsi *uplink_vsi = pf->switchdev.uplink_vsi;
 	struct ice_vsi *ctrl_vsi = pf->switchdev.control_vsi;
-	struct ice_port_info *pi = pf->hw.port_info;
 	bool rule_added = false;
 
 	ice_vsi_manage_vlan_stripping(ctrl_vsi, false);
@@ -36,29 +130,17 @@ static int ice_eswitch_setup_env(struct ice_pf *pf)
 		rule_added = true;
 	}
 
-	if (ice_cfg_dflt_vsi(pi->hw, ctrl_vsi->idx, true, ICE_FLTR_TX))
-		goto err_def_tx;
-
 	if (ice_vsi_update_security(uplink_vsi, ice_vsi_ctx_set_allow_override))
 		goto err_override_uplink;
 
 	if (ice_vsi_update_security(ctrl_vsi, ice_vsi_ctx_set_allow_override))
 		goto err_override_control;
 
-	if (ice_fltr_update_flags_dflt_rule(ctrl_vsi, pi->dflt_tx_vsi_rule_id,
-					    ICE_FLTR_TX,
-					    ICE_SINGLE_ACT_LB_ENABLE))
-		goto err_update_action;
-
 	return 0;
 
-err_update_action:
-	ice_vsi_update_security(ctrl_vsi, ice_vsi_ctx_clear_allow_override);
 err_override_control:
 	ice_vsi_update_security(uplink_vsi, ice_vsi_ctx_clear_allow_override);
 err_override_uplink:
-	ice_cfg_dflt_vsi(pi->hw, ctrl_vsi->idx, false, ICE_FLTR_TX);
-err_def_tx:
 	if (rule_added)
 		ice_clear_dflt_vsi(uplink_vsi->vsw);
 err_def_rx:
@@ -161,21 +243,11 @@ static int ice_eswitch_setup_reprs(struct ice_pf *pf)
 		netif_keep_dst(vf->repr->netdev);
 	}
 
-	kfree(ctrl_vsi->target_netdevs);
-
-	ctrl_vsi->target_netdevs = kcalloc(max_vsi_num + 1,
-					   sizeof(*ctrl_vsi->target_netdevs),
-					   GFP_KERNEL);
-	if (!ctrl_vsi->target_netdevs)
-		goto err;
-
 	ice_for_each_vf(pf, i) {
 		struct ice_repr *repr = pf->vf[i].repr;
 		struct ice_vsi *vsi = repr->src_vsi;
 		struct metadata_dst *dst;
 
-		ctrl_vsi->target_netdevs[vsi->vsi_num] = repr->netdev;
-
 		dst = repr->dst;
 		dst->u.port_info.port_id = vsi->vsi_num;
 		dst->u.port_info.lower_dev = repr->netdev;
@@ -208,7 +280,6 @@ ice_eswitch_release_reprs(struct ice_pf *pf, struct ice_vsi *ctrl_vsi)
 {
 	int i;
 
-	kfree(ctrl_vsi->target_netdevs);
 	ice_for_each_vf(pf, i) {
 		struct ice_vsi *vsi = pf->vf[i].repr->src_vsi;
 		struct ice_vf *vf = &pf->vf[i];
@@ -314,7 +385,6 @@ static void ice_eswitch_release_env(struct ice_pf *pf)
 
 	ice_vsi_update_security(ctrl_vsi, ice_vsi_ctx_clear_allow_override);
 	ice_vsi_update_security(uplink_vsi, ice_vsi_ctx_clear_allow_override);
-	ice_cfg_dflt_vsi(&pf->hw, ctrl_vsi->idx, false, ICE_FLTR_TX);
 	ice_clear_dflt_vsi(uplink_vsi->vsw);
 	ice_fltr_add_mac_and_broadcast(uplink_vsi,
 				       uplink_vsi->port_info->mac.perm_addr,
@@ -368,24 +438,6 @@ static void ice_eswitch_napi_disable(struct ice_pf *pf)
 		napi_disable(&pf->vf[i].repr->q_vector->napi);
 }
 
-/**
- * ice_eswitch_set_rxdid - configure rxdid on all Rx queues from VSI
- * @vsi: VSI to setup rxdid on
- * @rxdid: flex descriptor id
- */
-static void ice_eswitch_set_rxdid(struct ice_vsi *vsi, u32 rxdid)
-{
-	struct ice_hw *hw = &vsi->back->hw;
-	int i;
-
-	ice_for_each_rxq(vsi, i) {
-		struct ice_rx_ring *ring = vsi->rx_rings[i];
-		u16 pf_q = vsi->rxq_map[ring->q_index];
-
-		ice_write_qrxflxp_cntxt(hw, pf_q, rxdid, 0x3, true);
-	}
-}
-
 /**
  * ice_eswitch_enable_switchdev - configure eswitch in switchdev mode
  * @pf: pointer to PF structure
@@ -419,8 +471,6 @@ static int ice_eswitch_enable_switchdev(struct ice_pf *pf)
 
 	ice_eswitch_napi_enable(pf);
 
-	ice_eswitch_set_rxdid(ctrl_vsi, ICE_RXDID_FLEX_NIC_2);
-
 	return 0;
 
 err_setup_reprs:
@@ -442,6 +492,7 @@ static void ice_eswitch_disable_switchdev(struct ice_pf *pf)
 
 	ice_eswitch_napi_disable(pf);
 	ice_eswitch_release_env(pf);
+	ice_rem_adv_rule_for_vsi(&pf->hw, ctrl_vsi->idx);
 	ice_eswitch_release_reprs(pf, ctrl_vsi);
 	ice_vsi_release(ctrl_vsi);
 	ice_repr_rem_from_all_vfs(pf);
@@ -490,34 +541,6 @@ ice_eswitch_mode_set(struct devlink *devlink, u16 mode,
 	return 0;
 }
 
-/**
- * ice_eswitch_get_target_netdev - return port representor netdev
- * @rx_ring: pointer to Rx ring
- * @rx_desc: pointer to Rx descriptor
- *
- * When working in switchdev mode context (when control VSI is used), this
- * function returns netdev of appropriate port representor. For non-switchdev
- * context, regular netdev associated with Rx ring is returned.
- */
-struct net_device *
-ice_eswitch_get_target_netdev(struct ice_rx_ring *rx_ring,
-			      union ice_32b_rx_flex_desc *rx_desc)
-{
-	struct ice_32b_rx_flex_desc_nic_2 *desc;
-	struct ice_vsi *vsi = rx_ring->vsi;
-	struct ice_vsi *control_vsi;
-	u16 target_vsi_id;
-
-	control_vsi = vsi->back->switchdev.control_vsi;
-	if (vsi != control_vsi)
-		return rx_ring->netdev;
-
-	desc = (struct ice_32b_rx_flex_desc_nic_2 *)rx_desc;
-	target_vsi_id = le16_to_cpu(desc->src_vsi);
-
-	return vsi->target_netdevs[target_vsi_id];
-}
-
 /**
  * ice_eswitch_mode_get - get current eswitch mode
  * @devlink: pointer to devlink structure
@@ -642,7 +665,6 @@ int ice_eswitch_rebuild(struct ice_pf *pf)
 		return status;
 
 	ice_eswitch_napi_enable(pf);
-	ice_eswitch_set_rxdid(ctrl_vsi, ICE_RXDID_FLEX_NIC_2);
 	ice_eswitch_start_all_tx_queues(pf);
 
 	return 0;
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.h b/drivers/net/ethernet/intel/ice/ice_eswitch.h
index 364cd2a79c37..0d0fadaf2ba5 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.h
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.h
@@ -20,10 +20,10 @@ bool ice_is_eswitch_mode_switchdev(struct ice_pf *pf);
 void ice_eswitch_update_repr(struct ice_vsi *vsi);
 
 void ice_eswitch_stop_all_tx_queues(struct ice_pf *pf);
-
-struct net_device *
-ice_eswitch_get_target_netdev(struct ice_rx_ring *rx_ring,
-			      union ice_32b_rx_flex_desc *rx_desc);
+int ice_eswitch_add_vf_mac_rule(struct ice_pf *pf, struct ice_vf *vf,
+				const u8 *mac);
+void ice_eswitch_replay_vf_mac_rule(struct ice_vf *vf);
+void ice_eswitch_del_vf_mac_rule(struct ice_vf *vf);
 
 void ice_eswitch_set_target_vsi(struct sk_buff *skb,
 				struct ice_tx_offload_params *off);
@@ -33,6 +33,15 @@ ice_eswitch_port_start_xmit(struct sk_buff *skb, struct net_device *netdev);
 static inline void ice_eswitch_release(struct ice_pf *pf) { }
 
 static inline void ice_eswitch_stop_all_tx_queues(struct ice_pf *pf) { }
+static inline void ice_eswitch_replay_vf_mac_rule(struct ice_vf *vf) { }
+static inline void ice_eswitch_del_vf_mac_rule(struct ice_vf *vf) { }
+
+static inline int
+ice_eswitch_add_vf_mac_rule(struct ice_pf *pf, struct ice_vf *vf,
+			    const u8 *mac)
+{
+	return -EOPNOTSUPP;
+}
 
 static inline void
 ice_eswitch_set_target_vsi(struct sk_buff *skb,
@@ -67,13 +76,6 @@ static inline bool ice_is_eswitch_mode_switchdev(struct ice_pf *pf)
 	return false;
 }
 
-static inline struct net_device *
-ice_eswitch_get_target_netdev(struct ice_rx_ring *rx_ring,
-			      union ice_32b_rx_flex_desc *rx_desc)
-{
-	return rx_ring->netdev;
-}
-
 static inline netdev_tx_t
 ice_eswitch_port_start_xmit(struct sk_buff *skb, struct net_device *netdev)
 {
diff --git a/drivers/net/ethernet/intel/ice/ice_fltr.c b/drivers/net/ethernet/intel/ice/ice_fltr.c
index 93fc4c635913..cf07eef39e9d 100644
--- a/drivers/net/ethernet/intel/ice/ice_fltr.c
+++ b/drivers/net/ethernet/intel/ice/ice_fltr.c
@@ -448,83 +448,3 @@ int ice_fltr_remove_eth(struct ice_vsi *vsi, u16 ethertype, u16 flag,
 	return ice_fltr_prepare_eth(vsi, ethertype, flag, action,
 				    ice_fltr_remove_eth_list);
 }
-
-/**
- * ice_fltr_update_rule_flags - update lan_en/lb_en flags
- * @hw: pointer to hw
- * @rule_id: id of rule being updated
- * @recipe_id: recipe id of rule
- * @act: current action field
- * @type: Rx or Tx
- * @src: source VSI
- * @new_flags: combinations of lb_en and lan_en
- */
-static int
-ice_fltr_update_rule_flags(struct ice_hw *hw, u16 rule_id, u16 recipe_id,
-			   u32 act, u16 type, u16 src, u32 new_flags)
-{
-	struct ice_aqc_sw_rules_elem *s_rule;
-	u32 flags_mask;
-	int err;
-
-	s_rule = kzalloc(ICE_SW_RULE_RX_TX_NO_HDR_SIZE, GFP_KERNEL);
-	if (!s_rule)
-		return -ENOMEM;
-
-	flags_mask = ICE_SINGLE_ACT_LB_ENABLE | ICE_SINGLE_ACT_LAN_ENABLE;
-	act &= ~flags_mask;
-	act |= (flags_mask & new_flags);
-
-	s_rule->pdata.lkup_tx_rx.recipe_id = cpu_to_le16(recipe_id);
-	s_rule->pdata.lkup_tx_rx.index = cpu_to_le16(rule_id);
-	s_rule->pdata.lkup_tx_rx.act = cpu_to_le32(act);
-
-	if (type & ICE_FLTR_RX) {
-		s_rule->pdata.lkup_tx_rx.src =
-			cpu_to_le16(hw->port_info->lport);
-		s_rule->type = cpu_to_le16(ICE_AQC_SW_RULES_T_LKUP_RX);
-
-	} else {
-		s_rule->pdata.lkup_tx_rx.src = cpu_to_le16(src);
-		s_rule->type = cpu_to_le16(ICE_AQC_SW_RULES_T_LKUP_TX);
-	}
-
-	err = ice_aq_sw_rules(hw, s_rule, ICE_SW_RULE_RX_TX_NO_HDR_SIZE, 1,
-			      ice_aqc_opc_update_sw_rules, NULL);
-
-	kfree(s_rule);
-	return err;
-}
-
-/**
- * ice_fltr_build_action - build action for rule
- * @vsi_id: id of VSI which is use to build action
- */
-static u32 ice_fltr_build_action(u16 vsi_id)
-{
-	return ((vsi_id << ICE_SINGLE_ACT_VSI_ID_S) & ICE_SINGLE_ACT_VSI_ID_M) |
-		ICE_SINGLE_ACT_VSI_FORWARDING | ICE_SINGLE_ACT_VALID_BIT;
-}
-
-/**
- * ice_fltr_update_flags_dflt_rule - update flags on default rule
- * @vsi: pointer to VSI
- * @rule_id: id of rule
- * @direction: Tx or Rx
- * @new_flags: flags to update
- *
- * Function updates flags on default rule with ICE_SW_LKUP_DFLT.
- *
- * Flags should be a combination of ICE_SINGLE_ACT_LB_ENABLE and
- * ICE_SINGLE_ACT_LAN_ENABLE.
- */
-int
-ice_fltr_update_flags_dflt_rule(struct ice_vsi *vsi, u16 rule_id, u8 direction,
-				u32 new_flags)
-{
-	u32 action = ice_fltr_build_action(vsi->vsi_num);
-	struct ice_hw *hw = &vsi->back->hw;
-
-	return ice_fltr_update_rule_flags(hw, rule_id, ICE_SW_LKUP_DFLT, action,
-					  direction, vsi->vsi_num, new_flags);
-}
diff --git a/drivers/net/ethernet/intel/ice/ice_fltr.h b/drivers/net/ethernet/intel/ice/ice_fltr.h
index 59dc7010a2e9..d271f61e0d34 100644
--- a/drivers/net/ethernet/intel/ice/ice_fltr.h
+++ b/drivers/net/ethernet/intel/ice/ice_fltr.h
@@ -50,7 +50,4 @@ void ice_fltr_remove_all(struct ice_vsi *vsi);
 int
 ice_fltr_update_flags(struct ice_vsi *vsi, u16 rule_id, u16 recipe_id,
 		      u32 new_flags);
-int
-ice_fltr_update_flags_dflt_rule(struct ice_vsi *vsi, u16 rule_id, u8 direction,
-				u32 new_flags);
 #endif
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 89ed6e19a0a4..9c518c24ee6c 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -476,6 +476,25 @@ static void ice_pf_dis_all_vsi(struct ice_pf *pf, bool locked)
 		pf->vf_agg_node[node].num_vsis = 0;
 }
 
+/**
+ * ice_clear_sw_switch_recipes - clear switch recipes
+ * @pf: board private structure
+ *
+ * Mark switch recipes as not created in sw structures. There are cases where
+ * rules (especially advanced rules) need to be restored, either re-read from
+ * hardware or added again. For example after the reset. 'recp_created' flag
+ * prevents from doing that and need to be cleared upfront.
+ */
+static void ice_clear_sw_switch_recipes(struct ice_pf *pf)
+{
+	struct ice_sw_recipe *recp;
+	u8 i;
+
+	recp = pf->hw.switch_info->recp_list;
+	for (i = 0; i < ICE_MAX_NUM_RECIPES; i++)
+		recp[i].recp_created = false;
+}
+
 /**
  * ice_prepare_for_reset - prep for reset
  * @pf: board private structure
@@ -506,6 +525,11 @@ ice_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 	ice_for_each_vf(pf, i)
 		ice_set_vf_state_qs_dis(&pf->vf[i]);
 
+	if (ice_is_eswitch_mode_switchdev(pf)) {
+		if (reset_type != ICE_RESET_PFR)
+			ice_clear_sw_switch_recipes(pf);
+	}
+
 	/* release ADQ specific HW and SW resources */
 	vsi = ice_get_main_vsi(pf);
 	if (!vsi)
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index af8e6ef5f571..dcc310e29300 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -244,6 +244,14 @@ static int ice_repr_add(struct ice_vf *vf)
 	if (!repr)
 		return -ENOMEM;
 
+#ifdef CONFIG_ICE_SWITCHDEV
+	repr->mac_rule = kzalloc(sizeof(*repr->mac_rule), GFP_KERNEL);
+	if (!repr->mac_rule) {
+		err = -ENOMEM;
+		goto err_alloc_rule;
+	}
+#endif
+
 	repr->netdev = alloc_etherdev(sizeof(struct ice_netdev_priv));
 	if (!repr->netdev) {
 		err =  -ENOMEM;
@@ -287,6 +295,11 @@ static int ice_repr_add(struct ice_vf *vf)
 	free_netdev(repr->netdev);
 	repr->netdev = NULL;
 err_alloc:
+#ifdef CONFIG_ICE_SWITCHDEV
+	kfree(repr->mac_rule);
+	repr->mac_rule = NULL;
+err_alloc_rule:
+#endif
 	kfree(repr);
 	vf->repr = NULL;
 	return err;
@@ -304,6 +317,10 @@ static void ice_repr_rem(struct ice_vf *vf)
 	unregister_netdev(vf->repr->netdev);
 	free_netdev(vf->repr->netdev);
 	vf->repr->netdev = NULL;
+#ifdef CONFIG_ICE_SWITCHDEV
+	kfree(vf->repr->mac_rule);
+	vf->repr->mac_rule = NULL;
+#endif
 	kfree(vf->repr);
 	vf->repr = NULL;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.h b/drivers/net/ethernet/intel/ice/ice_repr.h
index 806de22933c6..0c77ff050d15 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.h
+++ b/drivers/net/ethernet/intel/ice/ice_repr.h
@@ -13,6 +13,11 @@ struct ice_repr {
 	struct ice_q_vector *q_vector;
 	struct net_device *netdev;
 	struct metadata_dst *dst;
+#ifdef CONFIG_ICE_SWITCHDEV
+	/* info about slow path MAC rule  */
+	struct ice_rule_query_data *mac_rule;
+	u8 rule_added;
+#endif
 };
 
 int ice_repr_add_for_all_vfs(struct ice_pf *pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index ac54ec34bd8f..a91f382ec7ee 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -5659,6 +5659,60 @@ ice_rem_adv_rule_by_id(struct ice_hw *hw,
 	return -ENOENT;
 }
 
+/**
+ * ice_rem_adv_rule_for_vsi - removes existing advanced switch rules for a
+ *                       given VSI handle
+ * @hw: pointer to the hardware structure
+ * @vsi_handle: VSI handle for which we are supposed to remove all the rules.
+ *
+ * This function is used to remove all the rules for a given VSI and as soon
+ * as removing a rule fails, it will return immediately with the error code,
+ * else it will return ICE_SUCCESS
+ */
+int ice_rem_adv_rule_for_vsi(struct ice_hw *hw, u16 vsi_handle)
+{
+	struct ice_adv_fltr_mgmt_list_entry *list_itr, *tmp_entry;
+	struct ice_vsi_list_map_info *map_info;
+	struct list_head *list_head;
+	struct ice_adv_rule_info rinfo;
+	struct ice_switch_info *sw;
+	int status;
+	u8 rid;
+
+	sw = hw->switch_info;
+	for (rid = 0; rid < ICE_MAX_NUM_RECIPES; rid++) {
+		if (!sw->recp_list[rid].recp_created)
+			continue;
+		if (!sw->recp_list[rid].adv_rule)
+			continue;
+
+		list_head = &sw->recp_list[rid].filt_rules;
+		list_for_each_entry_safe(list_itr, tmp_entry, list_head,
+					 list_entry) {
+			rinfo = list_itr->rule_info;
+
+			if (rinfo.sw_act.fltr_act == ICE_FWD_TO_VSI_LIST) {
+				map_info = list_itr->vsi_list_info;
+				if (!map_info)
+					continue;
+
+				if (!test_bit(vsi_handle, map_info->vsi_map))
+					continue;
+			} else if (rinfo.sw_act.vsi_handle != vsi_handle) {
+				continue;
+			}
+
+			rinfo.sw_act.vsi_handle = vsi_handle;
+			status = ice_rem_adv_rule(hw, list_itr->lkups,
+						  list_itr->lkups_cnt, &rinfo);
+
+			if (status)
+				return status;
+		}
+	}
+	return 0;
+}
+
 /**
  * ice_replay_vsi_adv_rule - Replay advanced rule for requested VSI
  * @hw: pointer to the hardware structure
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index 1dd7e84f41f8..84a6a3f9d624 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -187,8 +187,7 @@ ice_process_skb_fields(struct ice_rx_ring *rx_ring,
 	ice_rx_hash(rx_ring, rx_desc, skb, ptype);
 
 	/* modifies the skb - consumes the enet header */
-	skb->protocol = eth_type_trans(skb, ice_eswitch_get_target_netdev
-				       (rx_ring, rx_desc));
+	skb->protocol = eth_type_trans(skb, rx_ring->netdev);
 
 	ice_rx_csum(rx_ring, skb, rx_desc, ptype);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index c091d57e6bea..8f2045b7c29f 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -1630,6 +1630,8 @@ bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 			dev_err(dev, "disabling promiscuous mode failed\n");
 	}
 
+	ice_eswitch_del_vf_mac_rule(vf);
+
 	ice_vf_fdir_exit(vf);
 	ice_vf_fdir_init(vf);
 	/* clean VF control VSI when resetting VF since it should be setup
@@ -1648,6 +1650,7 @@ bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 	ice_vf_post_vsi_rebuild(vf);
 	vsi = ice_get_vf_vsi(vf);
 	ice_eswitch_update_repr(vsi);
+	ice_eswitch_replay_vf_mac_rule(vf);
 
 	/* if the VF has been reset allow it to come up again */
 	if (ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->malvfs, ICE_MAX_VF_COUNT, vf->vf_id))
@@ -4495,6 +4498,7 @@ static int ice_vc_repr_add_mac(struct ice_vf *vf, u8 *msg)
 
 	for (i = 0; i < al->num_elements; i++) {
 		u8 *mac_addr = al->list[i].addr;
+		int result;
 
 		if (!is_unicast_ether_addr(mac_addr) ||
 		    ether_addr_equal(mac_addr, vf->hw_lan_addr.addr))
@@ -4506,6 +4510,13 @@ static int ice_vc_repr_add_mac(struct ice_vf *vf, u8 *msg)
 			goto handle_mac_exit;
 		}
 
+		result = ice_eswitch_add_vf_mac_rule(pf, vf, mac_addr);
+		if (result) {
+			dev_err(ice_pf_to_dev(pf), "Failed to add MAC %pM for VF %d\n, error %d\n",
+				mac_addr, vf->vf_id, result);
+			goto handle_mac_exit;
+		}
+
 		ice_vfhw_mac_add(vf, &al->list[i]);
 		vf->num_mac++;
 		break;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
