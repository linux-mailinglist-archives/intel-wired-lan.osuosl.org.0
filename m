Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 075E06D7676
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Apr 2023 10:10:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8BADD610FC;
	Wed,  5 Apr 2023 08:10:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8BADD610FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680682236;
	bh=49Ubx5jy4GGOeAVaAbyCWa/m8zprT1tSyXmnSfGPzXc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sqVBtieET6E7V0DeYo3nU2OSRIipbbNRwN0aTfgx3PNAVP+B9+TyYciUNb2pFj4aj
	 ZhC8o72nK8/BzDOLC+2X4UUPEem41hcmYftZXiPElQsunUhV08H7gVlH4gzW2utiAi
	 8xkldYP3BbAs75iNpqxmmQV7oqQRk1DTyOBSTZqtZu1tx3AA2W47AG276HZUNMQDiB
	 XoUiOoSEHHxjnnuIB38CPYw9M+SfLwrYredbuDBrFSDJMgb1FKdz3omLlcGs6SYWQf
	 1JCrZ5WdtowpUxXP8W3b8ss/sa/NU5NWxuiCytiyuQDZ++q1xmO33LYvAuvBAEvq7M
	 DvLbYEtB9sUDw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cvpv5NQejkOL; Wed,  5 Apr 2023 08:10:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2419C60EE0;
	Wed,  5 Apr 2023 08:10:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2419C60EE0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E3C1C1C2A08
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Apr 2023 08:10:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BD245405B9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Apr 2023 08:10:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BD245405B9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IoYpCYFQ5CDu for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Apr 2023 08:10:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A57A0400DD
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A57A0400DD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Apr 2023 08:10:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="428681532"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="428681532"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2023 01:10:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="775961387"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="775961387"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Apr 2023 01:10:14 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  5 Apr 2023 09:51:13 +0200
Message-Id: <20230405075113.455662-6-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230405075113.455662-1-michal.swiatkowski@linux.intel.com>
References: <20230405075113.455662-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680682216; x=1712218216;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JtUL3cjeLC4nBhcmPyv4S2YCmO4yzWTmHroQOex+k9s=;
 b=bKOtsN+LcPkfte+9ARkbUMAHR8+TtUaNN+ommadQgyXg8i0AI+WjdSmg
 tMCeVnorRrokRrA9dXQ//2PaL/fZvhR6GH5i7sAl+2zYhhtY5vjBN1Ggs
 OHWjG9sJ4mJCi+YCtA1URVuoCTIxlshJ/wrjGIAVQH35927B8SB6Vp0he
 lXxw0T1dE8ZEf+UC6owQDl+iFkn+tvXVYEyLZLJiKCJEjDAy/4TaACDfb
 21GrsoDYHJ+HdnoSjyj4hSF632y+qDb7QxkUZ+HVrRR/IPxB2rdugC/ao
 QumoVvY8lCXIxjcJuK3IgacjHMFJ6Az7hF44p8sEQtu348G1ZpgRVKIgm
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bKOtsN+L
Subject: [Intel-wired-lan] [PATCH net-next v3 5/5] ice: use src VSI instead
 of src MAC in slow-path
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The use of a source MAC to direct packets from the VF to the corresponding
port representor is only ok if there is only one MAC on a VF. To support
this functionality when the number of MACs on a VF is greater, it is
necessary to match a source VSI instead of a source MAC.

Let's use the new switch API that allows matching on metadata.

If MAC isn't used in match criteria there is no need to handle adding
rule after virtchnl command. Instead add new rule while port representor
is being configured.

Remove rule_added field, checking for sp_rule can be used instead.
Remove also checking for switchdev running in deleting rule as it can be
called from unroll context when running flag isn't set. Checking for
sp_rule covers both context (with and without running flag).

Rules are added in eswitch configuration flow, so there is no need to
have replay function.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Piotr Raczynski <piotr.raczynski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c  | 83 ++++++-------------
 drivers/net/ethernet/intel/ice/ice_eswitch.h  | 14 ----
 .../ethernet/intel/ice/ice_protocol_type.h    |  5 +-
 drivers/net/ethernet/intel/ice/ice_repr.c     | 17 ----
 drivers/net/ethernet/intel/ice/ice_repr.h     |  5 +-
 drivers/net/ethernet/intel/ice/ice_switch.c   |  6 ++
 drivers/net/ethernet/intel/ice/ice_switch.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  3 -
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  8 --
 9 files changed, 40 insertions(+), 102 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 2c80d57331d0..ad0a007b7398 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -10,16 +10,15 @@
 #include "ice_tc_lib.h"
 
 /**
- * ice_eswitch_add_vf_mac_rule - add adv rule with VF's MAC
+ * ice_eswitch_add_vf_sp_rule - add adv rule with VF's VSI index
  * @pf: pointer to PF struct
  * @vf: pointer to VF struct
- * @mac: VF's MAC address
  *
  * This function adds advanced rule that forwards packets with
- * VF's MAC address (src MAC) to the corresponding switchdev ctrl VSI queue.
+ * VF's VSI index to the corresponding switchdev ctrl VSI queue.
  */
-int
-ice_eswitch_add_vf_mac_rule(struct ice_pf *pf, struct ice_vf *vf, const u8 *mac)
+static int
+ice_eswitch_add_vf_sp_rule(struct ice_pf *pf, struct ice_vf *vf)
 {
 	struct ice_vsi *ctrl_vsi = pf->switchdev.control_vsi;
 	struct ice_adv_rule_info rule_info = { 0 };
@@ -32,11 +31,9 @@ ice_eswitch_add_vf_mac_rule(struct ice_pf *pf, struct ice_vf *vf, const u8 *mac)
 	if (!list)
 		return -ENOMEM;
 
-	list[0].type = ICE_MAC_OFOS;
-	ether_addr_copy(list[0].h_u.eth_hdr.src_addr, mac);
-	eth_broadcast_addr(list[0].m_u.eth_hdr.src_addr);
+	ice_rule_add_src_vsi_metadata(list);
 
-	rule_info.sw_act.flag |= ICE_FLTR_TX;
+	rule_info.sw_act.flag = ICE_FLTR_TX;
 	rule_info.sw_act.vsi_handle = ctrl_vsi->idx;
 	rule_info.sw_act.fltr_act = ICE_FWD_TO_Q;
 	rule_info.sw_act.fwd_id.q_id = hw->func_caps.common_cap.rxq_first_id +
@@ -44,63 +41,31 @@ ice_eswitch_add_vf_mac_rule(struct ice_pf *pf, struct ice_vf *vf, const u8 *mac)
 	rule_info.flags_info.act |= ICE_SINGLE_ACT_LB_ENABLE;
 	rule_info.flags_info.act_valid = true;
 	rule_info.tun_type = ICE_SW_TUN_AND_NON_TUN;
+	rule_info.src_vsi = vf->lan_vsi_idx;
 
 	err = ice_add_adv_rule(hw, list, lkups_cnt, &rule_info,
-			       vf->repr->mac_rule);
+			       &vf->repr->sp_rule);
 	if (err)
-		dev_err(ice_pf_to_dev(pf), "Unable to add VF mac rule in switchdev mode for VF %d",
+		dev_err(ice_pf_to_dev(pf), "Unable to add VF slow-path rule in switchdev mode for VF %d",
 			vf->vf_id);
-	else
-		vf->repr->rule_added = true;
 
 	kfree(list);
 	return err;
 }
 
 /**
- * ice_eswitch_replay_vf_mac_rule - replay adv rule with VF's MAC
- * @vf: pointer to vF struct
- *
- * This function replays VF's MAC rule after reset.
- */
-void ice_eswitch_replay_vf_mac_rule(struct ice_vf *vf)
-{
-	int err;
-
-	if (!ice_is_switchdev_running(vf->pf))
-		return;
-
-	if (is_valid_ether_addr(vf->hw_lan_addr)) {
-		err = ice_eswitch_add_vf_mac_rule(vf->pf, vf,
-						  vf->hw_lan_addr);
-		if (err) {
-			dev_err(ice_pf_to_dev(vf->pf), "Failed to add MAC %pM for VF %d\n, error %d\n",
-				vf->hw_lan_addr, vf->vf_id, err);
-			return;
-		}
-		vf->num_mac++;
-
-		ether_addr_copy(vf->dev_lan_addr, vf->hw_lan_addr);
-	}
-}
-
-/**
- * ice_eswitch_del_vf_mac_rule - delete adv rule with VF's MAC
+ * ice_eswitch_del_vf_sp_rule - delete adv rule with VF's VSI index
  * @vf: pointer to the VF struct
  *
- * Delete the advanced rule that was used to forward packets with the VF's MAC
- * address (src MAC) to the corresponding switchdev ctrl VSI queue.
+ * Delete the advanced rule that was used to forward packets with the VF's VSI
+ * index to the corresponding switchdev ctrl VSI queue.
  */
-void ice_eswitch_del_vf_mac_rule(struct ice_vf *vf)
+static void ice_eswitch_del_vf_sp_rule(struct ice_vf *vf)
 {
-	if (!ice_is_switchdev_running(vf->pf))
-		return;
-
-	if (!vf->repr->rule_added)
+	if (!vf->repr)
 		return;
 
-	ice_rem_adv_rule_by_id(&vf->pf->hw, vf->repr->mac_rule);
-	vf->repr->rule_added = false;
+	ice_rem_adv_rule_by_id(&vf->pf->hw, &vf->repr->sp_rule);
 }
 
 /**
@@ -236,6 +201,7 @@ ice_eswitch_release_reprs(struct ice_pf *pf, struct ice_vsi *ctrl_vsi)
 		ice_vsi_update_security(vsi, ice_vsi_ctx_set_antispoof);
 		metadata_dst_free(vf->repr->dst);
 		vf->repr->dst = NULL;
+		ice_eswitch_del_vf_sp_rule(vf);
 		ice_fltr_add_mac_and_broadcast(vsi, vf->hw_lan_addr,
 					       ICE_FWD_TO_VSI);
 
@@ -263,25 +229,30 @@ static int ice_eswitch_setup_reprs(struct ice_pf *pf)
 		vf->repr->dst = metadata_dst_alloc(0, METADATA_HW_PORT_MUX,
 						   GFP_KERNEL);
 		if (!vf->repr->dst) {
-			ice_fltr_add_mac_and_broadcast(vsi,
-						       vf->hw_lan_addr,
+			ice_fltr_add_mac_and_broadcast(vsi, vf->hw_lan_addr,
+						       ICE_FWD_TO_VSI);
+			goto err;
+		}
+
+		if (ice_eswitch_add_vf_sp_rule(pf, vf)) {
+			ice_fltr_add_mac_and_broadcast(vsi, vf->hw_lan_addr,
 						       ICE_FWD_TO_VSI);
 			goto err;
 		}
 
 		if (ice_vsi_update_security(vsi, ice_vsi_ctx_clear_antispoof)) {
-			ice_fltr_add_mac_and_broadcast(vsi,
-						       vf->hw_lan_addr,
+			ice_fltr_add_mac_and_broadcast(vsi, vf->hw_lan_addr,
 						       ICE_FWD_TO_VSI);
+			ice_eswitch_del_vf_sp_rule(vf);
 			metadata_dst_free(vf->repr->dst);
 			vf->repr->dst = NULL;
 			goto err;
 		}
 
 		if (ice_vsi_add_vlan_zero(vsi)) {
-			ice_fltr_add_mac_and_broadcast(vsi,
-						       vf->hw_lan_addr,
+			ice_fltr_add_mac_and_broadcast(vsi, vf->hw_lan_addr,
 						       ICE_FWD_TO_VSI);
+			ice_eswitch_del_vf_sp_rule(vf);
 			metadata_dst_free(vf->repr->dst);
 			vf->repr->dst = NULL;
 			ice_vsi_update_security(vsi, ice_vsi_ctx_set_antispoof);
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.h b/drivers/net/ethernet/intel/ice/ice_eswitch.h
index 6a413331572b..b18bf83a2f5b 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.h
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.h
@@ -20,11 +20,6 @@ bool ice_is_eswitch_mode_switchdev(struct ice_pf *pf);
 void ice_eswitch_update_repr(struct ice_vsi *vsi);
 
 void ice_eswitch_stop_all_tx_queues(struct ice_pf *pf);
-int
-ice_eswitch_add_vf_mac_rule(struct ice_pf *pf, struct ice_vf *vf,
-			    const u8 *mac);
-void ice_eswitch_replay_vf_mac_rule(struct ice_vf *vf);
-void ice_eswitch_del_vf_mac_rule(struct ice_vf *vf);
 
 void ice_eswitch_set_target_vsi(struct sk_buff *skb,
 				struct ice_tx_offload_params *off);
@@ -34,15 +29,6 @@ ice_eswitch_port_start_xmit(struct sk_buff *skb, struct net_device *netdev);
 static inline void ice_eswitch_release(struct ice_pf *pf) { }
 
 static inline void ice_eswitch_stop_all_tx_queues(struct ice_pf *pf) { }
-static inline void ice_eswitch_replay_vf_mac_rule(struct ice_vf *vf) { }
-static inline void ice_eswitch_del_vf_mac_rule(struct ice_vf *vf) { }
-
-static inline int
-ice_eswitch_add_vf_mac_rule(struct ice_pf *pf, struct ice_vf *vf,
-			    const u8 *mac)
-{
-	return -EOPNOTSUPP;
-}
 
 static inline void
 ice_eswitch_set_target_vsi(struct sk_buff *skb,
diff --git a/drivers/net/ethernet/intel/ice/ice_protocol_type.h b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
index ed0ab8177c61..6a9364761165 100644
--- a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
@@ -256,7 +256,10 @@ struct ice_nvgre_hdr {
  * +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
  *
  * Source VSI = Source VSI of packet loopbacked in switch (for egress) (10b).
- *
+ */
+#define ICE_MDID_SOURCE_VSI_MASK GENMASK(9, 0)
+
+/*
  * MDID 20
  * +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
  * |A|B|C|D|E|F|R|R|G|H|I|J|K|L|M|N|
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index fd1f8b0ad0ab..e30e12321abd 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -298,14 +298,6 @@ static int ice_repr_add(struct ice_vf *vf)
 	if (!repr)
 		return -ENOMEM;
 
-#ifdef CONFIG_ICE_SWITCHDEV
-	repr->mac_rule = kzalloc(sizeof(*repr->mac_rule), GFP_KERNEL);
-	if (!repr->mac_rule) {
-		err = -ENOMEM;
-		goto err_alloc_rule;
-	}
-#endif
-
 	repr->netdev = alloc_etherdev(sizeof(struct ice_netdev_priv));
 	if (!repr->netdev) {
 		err =  -ENOMEM;
@@ -351,11 +343,6 @@ static int ice_repr_add(struct ice_vf *vf)
 	free_netdev(repr->netdev);
 	repr->netdev = NULL;
 err_alloc:
-#ifdef CONFIG_ICE_SWITCHDEV
-	kfree(repr->mac_rule);
-	repr->mac_rule = NULL;
-err_alloc_rule:
-#endif
 	kfree(repr);
 	vf->repr = NULL;
 	return err;
@@ -376,10 +363,6 @@ static void ice_repr_rem(struct ice_vf *vf)
 	ice_devlink_destroy_vf_port(vf);
 	free_netdev(vf->repr->netdev);
 	vf->repr->netdev = NULL;
-#ifdef CONFIG_ICE_SWITCHDEV
-	kfree(vf->repr->mac_rule);
-	vf->repr->mac_rule = NULL;
-#endif
 	kfree(vf->repr);
 	vf->repr = NULL;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.h b/drivers/net/ethernet/intel/ice/ice_repr.h
index 378a45bfa256..9c2a6f496b3b 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.h
+++ b/drivers/net/ethernet/intel/ice/ice_repr.h
@@ -13,9 +13,8 @@ struct ice_repr {
 	struct net_device *netdev;
 	struct metadata_dst *dst;
 #ifdef CONFIG_ICE_SWITCHDEV
-	/* info about slow path MAC rule  */
-	struct ice_rule_query_data *mac_rule;
-	u8 rule_added;
+	/* info about slow path rule */
+	struct ice_rule_query_data sp_rule;
 #endif
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 8872e26d1368..e955df92bf61 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -6011,6 +6011,12 @@ void ice_rule_add_vlan_metadata(struct ice_adv_lkup_elem *lkup)
 		cpu_to_be16(ICE_PKT_VLAN_MASK);
 }
 
+void ice_rule_add_src_vsi_metadata(struct ice_adv_lkup_elem *lkup)
+{
+	lkup->type = ICE_HW_METADATA;
+	lkup->m_u.metadata.source_vsi = cpu_to_be16(ICE_MDID_SOURCE_VSI_MASK);
+}
+
 /**
  * ice_add_adv_rule - helper function to create an advanced switch rule
  * @hw: pointer to the hardware structure
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index e9f7deefee3e..682f0d5c8d85 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -344,6 +344,7 @@ ice_free_res_cntr(struct ice_hw *hw, u8 type, u8 alloc_shared, u16 num_items,
 /* Switch/bridge related commands */
 void ice_rule_add_tunnel_metadata(struct ice_adv_lkup_elem *lkup);
 void ice_rule_add_vlan_metadata(struct ice_adv_lkup_elem *lkup);
+void ice_rule_add_src_vsi_metadata(struct ice_adv_lkup_elem *lkup);
 int
 ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 		 u16 lkups_cnt, struct ice_adv_rule_info *rinfo,
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 68142facc85d..294e91c3453c 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -670,8 +670,6 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 	 */
 	ice_vf_clear_all_promisc_modes(vf, vsi);
 
-	ice_eswitch_del_vf_mac_rule(vf);
-
 	ice_vf_fdir_exit(vf);
 	ice_vf_fdir_init(vf);
 	/* clean VF control VSI when resetting VF since it should be setup
@@ -697,7 +695,6 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 	}
 
 	ice_eswitch_update_repr(vsi);
-	ice_eswitch_replay_vf_mac_rule(vf);
 
 	/* if the VF has been reset allow it to come up again */
 	ice_mbx_clear_malvf(&vf->mbx_info);
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 97243c616d5d..dcf628b1fccd 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -3730,7 +3730,6 @@ static int ice_vc_repr_add_mac(struct ice_vf *vf, u8 *msg)
 
 	for (i = 0; i < al->num_elements; i++) {
 		u8 *mac_addr = al->list[i].addr;
-		int result;
 
 		if (!is_unicast_ether_addr(mac_addr) ||
 		    ether_addr_equal(mac_addr, vf->hw_lan_addr))
@@ -3742,13 +3741,6 @@ static int ice_vc_repr_add_mac(struct ice_vf *vf, u8 *msg)
 			goto handle_mac_exit;
 		}
 
-		result = ice_eswitch_add_vf_mac_rule(pf, vf, mac_addr);
-		if (result) {
-			dev_err(ice_pf_to_dev(pf), "Failed to add MAC %pM for VF %d\n, error %d\n",
-				mac_addr, vf->vf_id, result);
-			goto handle_mac_exit;
-		}
-
 		ice_vfhw_mac_add(vf, &al->list[i]);
 		vf->num_mac++;
 		break;
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
