Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A11C486E0A0
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Mar 2024 12:50:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4D4DE4196E;
	Fri,  1 Mar 2024 11:50:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nWFtLeRKItwe; Fri,  1 Mar 2024 11:50:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D14054194E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709293802;
	bh=1m2BdCbR5J5byV0Qm16XD7IZ6HsR0hiIiLN9T8A3uLo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dsHpQOJ7QQdakku6K6AkLAVqxj3UmffqwA8yd29vGbUEu359LoWO175xpb+szECbz
	 zf+C/SwndjlnvfwoQEOOUMV5z+t15wNZtEjgcvpwMck6Dy1gQW6vu76EsG1WzNiApW
	 8a13x2aXZ1Zd+ZVB99k0r83O2tqIFGUhIshJ4YxrdqKsTZzQ6yXCJJlP7J//tPy4kc
	 Ft219q7kESHXGq7FNj7hpweYbdwPz8uGDXCsFBh2rfIV+7CiiRfdxmtuaQAZKU119L
	 IaF0a3rCGYls0GRgOF4l5ngBxsPgQJ0M2IzHBu4Q4LAI80LqJYLBAcHcnbaynNJ0kZ
	 sEjuvj06qHl6w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D14054194E;
	Fri,  1 Mar 2024 11:50:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 919AF1BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 11:49:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 74F0341953
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 11:49:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mIzs7paSiUkI for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Mar 2024 11:49:57 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0085140471
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0085140471
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0085140471
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 11:49:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="4000046"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="4000046"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 03:49:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; d="scan'208";a="39195037"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa001.fm.intel.com with ESMTP; 01 Mar 2024 03:49:54 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  1 Mar 2024 12:54:09 +0100
Message-ID: <20240301115414.502097-4-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240301115414.502097-1-michal.swiatkowski@linux.intel.com>
References: <20240301115414.502097-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709293797; x=1740829797;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=b3TBo+2T3bhHQrRaE8PQde+Tpb0ao34ggdfzRQGIPrw=;
 b=K2ztsbJLUGURiKLjdzLdaNigi7GduB24PpBBnUfWSg6/HtxKyIcr9o8z
 GsDMAF1Rd/6rAefVdrF2eswV/JYqZLbKwu65MLNhR2+KuC5SxNMFhBSdk
 Shrjb7tjrvTQ/Wsu7fhznH+dVctUXeV2b3PfJttnFlyrd0F6x05HtDc38
 8/UtHND4rRCLpH1gUEo8Nd6+LpN1hUkzt2cvOfJZZ/FdFwHHb65nz1jvG
 5wxiepG0E8dVXNFvdm+pTRYdfGTcCPKpAp3KsXobh6c/ZOpbCqpepL2sG
 qQuCEv/bZHcnfwq7k7KSAaRNkFI+asdfC0G+ztxW+vo463d7NHmK9ri4p
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=K2ztsbJL
Subject: [Intel-wired-lan] [iwl-next v3 3/8] ice: default Tx rule instead of
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
 sridhar.samudrala@intel.com, horms@kernel.org, netdev@vger.kernel.org,
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
index 53dd64768035..6937b2a3c9fe 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -2532,6 +2532,9 @@ static void ice_fill_sw_info(struct ice_hw *hw, struct ice_fltr_info *fi)
 			fi->lan_en = true;
 		}
 	}
+
+	if (fi->flag & ICE_FLTR_TX_ONLY)
+		fi->lan_en = false;
 }
 
 /**
@@ -3907,6 +3910,7 @@ ice_cfg_dflt_vsi(struct ice_port_info *pi, u16 vsi_handle, bool set,
 	} else if (f_info.flag & ICE_FLTR_TX) {
 		f_info.src_id = ICE_SRC_ID_VSI;
 		f_info.src = hw_vsi_id;
+		f_info.flag |= ICE_FLTR_TX_ONLY;
 	}
 	f_list_entry.fltr_info = f_info;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index 9cf819b20d9c..1e579b866233 100644
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

