Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C637D4EE9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 13:35:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C26342087;
	Tue, 24 Oct 2023 11:35:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C26342087
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698147316;
	bh=15yWVAntEBKSZ540pK0uTRH/JfQfJo54G6I8/EOlvhs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=g+zQF630pQFrDyS3FyFmJjRzSJD15NXMio3JWEhgXsF9DrYXSCDUrdZ19P8/UAMCs
	 J8amHU1iGnVph+Pcr1dp+B6i9vwiSRhCU2NJA8Dw2duHyfC/8iSGfl6eydzl9AGj2Z
	 pYLix2vGFFvPx/kmU8cvQCK11clNY+TvCsbhiuRSTwvG5ssxYdDpMUMMT7mRD8n5V7
	 /Pd32csGGO5/TAywi6M7GiNbYxGU/WoIbmJs+DLZffmJJJyF5ZPXiY3GxBODxCdY8O
	 Je/s+dccD8KPuenfF/wE1f4B2R3d7IgKNgxpJSHGScUXxGEs4LdHdKeb8AFQYQo2T+
	 xYF4yZnaMMoFw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DiEHLNFzX8-C; Tue, 24 Oct 2023 11:35:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D698401C9;
	Tue, 24 Oct 2023 11:35:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D698401C9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EF3F41BF311
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:34:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C63F543122
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:34:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C63F543122
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fk0QBu875rRL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 11:34:54 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3254E42ECD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:34:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3254E42ECD
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="5660545"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="5660545"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 04:34:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="6146065"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orviesa001.jf.intel.com with ESMTP; 24 Oct 2023 04:33:34 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Oct 2023 13:09:20 +0200
Message-ID: <20231024110929.19423-7-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
References: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698147294; x=1729683294;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pLazSz8ytqNlUTioQJrSz6Xd1zBasX3ytkydNEXXFt0=;
 b=H+dnWgSWNFK6NP5QwjEIjczXngh5gOEWags0OvdhCzbGOs6d+X6f8ppj
 jPtnEUWMahqe2WFLllE528gP0dI+S+9gIooxqVq55FtkUrexlQQhrk9HB
 16GngAyvugoAGMXVhzlOoZ9JYfCgYRnUQGodYzEtQYztqC0/1ijFjGSYe
 /CUr+UST0XAL/2AEmnq7C/lNW+P/ZKPzLMu9qBd+I9FI8R3bkw8YG3wDX
 A1IiSC81DlEObh6aX2qWyWhsETXHKkdR+ptmaR2Nn4KdSQq8JqMC14UIk
 xUzNT8WO/lXQ8hT/A4ITpEVj0IjMB0MEQWNAFODS/VFbBoARN1O4QLBC3
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H+dnWgSW
Subject: [Intel-wired-lan] [PATCH iwl-next v1 06/15] ice: track port
 representors in xarray
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 piotr.raczynski@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Instead of assuming that each VF has pointer to port representor save it
in xarray. It will allow adding port representor for other device types.

Drop reference to VF where it is use only to get port representor. Get
it from xarray instead.

The functions will no longer by specific for VF, rename them.

Track id assigned by xarray in port representor structure. The id can't
be used as ::q_id, because it is fixed during port representor lifetime.
::q_id can change after adding / removing other port representors.

Side effect of removing VF pointer is that we are losing VF MAC
information used in unrolling. Store it in port representor as parent
MAC.

Reviewed-by: Piotr Raczynski <piotr.raczynski@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |   1 +
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 182 +++++++++----------
 drivers/net/ethernet/intel/ice/ice_main.c    |   2 +
 drivers/net/ethernet/intel/ice/ice_repr.c    |   8 +
 drivers/net/ethernet/intel/ice/ice_repr.h    |   2 +
 5 files changed, 94 insertions(+), 101 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 6c59ca86d959..597bdb6945c6 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -526,6 +526,7 @@ struct ice_eswitch {
 	struct ice_vsi *control_vsi;
 	struct ice_vsi *uplink_vsi;
 	struct ice_esw_br_offloads *br_offloads;
+	struct xarray reprs;
 	bool is_running;
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 119185564450..a6b528bc2023 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -11,15 +11,15 @@
 #include "ice_tc_lib.h"
 
 /**
- * ice_eswitch_add_vf_sp_rule - add adv rule with VF's VSI index
+ * ice_eswitch_add_sp_rule - add adv rule with device's VSI index
  * @pf: pointer to PF struct
- * @vf: pointer to VF struct
+ * @repr: pointer to the repr struct
  *
  * This function adds advanced rule that forwards packets with
- * VF's VSI index to the corresponding eswitch ctrl VSI queue.
+ * device's VSI index to the corresponding eswitch ctrl VSI queue.
  */
 static int
-ice_eswitch_add_vf_sp_rule(struct ice_pf *pf, struct ice_vf *vf)
+ice_eswitch_add_sp_rule(struct ice_pf *pf, struct ice_repr *repr)
 {
 	struct ice_vsi *ctrl_vsi = pf->eswitch.control_vsi;
 	struct ice_adv_rule_info rule_info = { 0 };
@@ -38,35 +38,32 @@ ice_eswitch_add_vf_sp_rule(struct ice_pf *pf, struct ice_vf *vf)
 	rule_info.sw_act.vsi_handle = ctrl_vsi->idx;
 	rule_info.sw_act.fltr_act = ICE_FWD_TO_Q;
 	rule_info.sw_act.fwd_id.q_id = hw->func_caps.common_cap.rxq_first_id +
-				       ctrl_vsi->rxq_map[vf->repr->q_id];
+				       ctrl_vsi->rxq_map[repr->q_id];
 	rule_info.flags_info.act |= ICE_SINGLE_ACT_LB_ENABLE;
 	rule_info.flags_info.act_valid = true;
 	rule_info.tun_type = ICE_SW_TUN_AND_NON_TUN;
-	rule_info.src_vsi = vf->lan_vsi_idx;
+	rule_info.src_vsi = repr->src_vsi->idx;
 
 	err = ice_add_adv_rule(hw, list, lkups_cnt, &rule_info,
-			       &vf->repr->sp_rule);
+			       &repr->sp_rule);
 	if (err)
-		dev_err(ice_pf_to_dev(pf), "Unable to add VF slow-path rule in switchdev mode for VF %d",
-			vf->vf_id);
+		dev_err(ice_pf_to_dev(pf), "Unable to add slow-path rule in switchdev mode");
 
 	kfree(list);
 	return err;
 }
 
 /**
- * ice_eswitch_del_vf_sp_rule - delete adv rule with VF's VSI index
- * @vf: pointer to the VF struct
+ * ice_eswitch_del_sp_rule - delete adv rule with device's VSI index
+ * @pf: pointer to the PF struct
+ * @repr: pointer to the repr struct
  *
- * Delete the advanced rule that was used to forward packets with the VF's VSI
- * index to the corresponding eswitch ctrl VSI queue.
+ * Delete the advanced rule that was used to forward packets with the device's
+ * VSI index to the corresponding eswitch ctrl VSI queue.
  */
-static void ice_eswitch_del_vf_sp_rule(struct ice_vf *vf)
+static void ice_eswitch_del_sp_rule(struct ice_pf *pf, struct ice_repr *repr)
 {
-	if (!vf->repr)
-		return;
-
-	ice_rem_adv_rule_by_id(&vf->pf->hw, &vf->repr->sp_rule);
+	ice_rem_adv_rule_by_id(&pf->hw, &repr->sp_rule);
 }
 
 /**
@@ -193,26 +190,24 @@ static void ice_eswitch_remap_rings_to_vectors(struct ice_pf *pf)
 static void
 ice_eswitch_release_reprs(struct ice_pf *pf)
 {
-	struct ice_vf *vf;
-	unsigned int bkt;
-
-	lockdep_assert_held(&pf->vfs.table_lock);
+	struct ice_repr *repr;
+	unsigned long id;
 
-	ice_for_each_vf(pf, bkt, vf) {
-		struct ice_vsi *vsi = vf->repr->src_vsi;
+	xa_for_each(&pf->eswitch.reprs, id, repr) {
+		struct ice_vsi *vsi = repr->src_vsi;
 
-		/* Skip VFs that aren't configured */
-		if (!vf->repr->dst)
+		/* Skip representors that aren't configured */
+		if (!repr->dst)
 			continue;
 
 		ice_vsi_update_security(vsi, ice_vsi_ctx_set_antispoof);
-		metadata_dst_free(vf->repr->dst);
-		vf->repr->dst = NULL;
-		ice_eswitch_del_vf_sp_rule(vf);
-		ice_fltr_add_mac_and_broadcast(vsi, vf->hw_lan_addr,
+		metadata_dst_free(repr->dst);
+		repr->dst = NULL;
+		ice_eswitch_del_sp_rule(pf, repr);
+		ice_fltr_add_mac_and_broadcast(vsi, repr->parent_mac,
 					       ICE_FWD_TO_VSI);
 
-		netif_napi_del(&vf->repr->q_vector->napi);
+		netif_napi_del(&repr->q_vector->napi);
 	}
 }
 
@@ -223,56 +218,53 @@ ice_eswitch_release_reprs(struct ice_pf *pf)
 static int ice_eswitch_setup_reprs(struct ice_pf *pf)
 {
 	struct ice_vsi *ctrl_vsi = pf->eswitch.control_vsi;
-	struct ice_vf *vf;
-	unsigned int bkt;
-
-	lockdep_assert_held(&pf->vfs.table_lock);
+	struct ice_repr *repr;
+	unsigned long id;
 
-	ice_for_each_vf(pf, bkt, vf) {
-		struct ice_vsi *vsi = vf->repr->src_vsi;
+	xa_for_each(&pf->eswitch.reprs, id, repr) {
+		struct ice_vsi *vsi = repr->src_vsi;
 
 		ice_remove_vsi_fltr(&pf->hw, vsi->idx);
-		vf->repr->dst = metadata_dst_alloc(0, METADATA_HW_PORT_MUX,
-						   GFP_KERNEL);
-		if (!vf->repr->dst) {
-			ice_fltr_add_mac_and_broadcast(vsi, vf->hw_lan_addr,
+		repr->dst = metadata_dst_alloc(0, METADATA_HW_PORT_MUX,
+					       GFP_KERNEL);
+		if (!repr->dst) {
+			ice_fltr_add_mac_and_broadcast(vsi, repr->parent_mac,
 						       ICE_FWD_TO_VSI);
 			goto err;
 		}
 
-		if (ice_eswitch_add_vf_sp_rule(pf, vf)) {
-			ice_fltr_add_mac_and_broadcast(vsi, vf->hw_lan_addr,
+		if (ice_eswitch_add_sp_rule(pf, repr)) {
+			ice_fltr_add_mac_and_broadcast(vsi, repr->parent_mac,
 						       ICE_FWD_TO_VSI);
 			goto err;
 		}
 
 		if (ice_vsi_update_security(vsi, ice_vsi_ctx_clear_antispoof)) {
-			ice_fltr_add_mac_and_broadcast(vsi, vf->hw_lan_addr,
+			ice_fltr_add_mac_and_broadcast(vsi, repr->parent_mac,
 						       ICE_FWD_TO_VSI);
-			ice_eswitch_del_vf_sp_rule(vf);
-			metadata_dst_free(vf->repr->dst);
-			vf->repr->dst = NULL;
+			ice_eswitch_del_sp_rule(pf, repr);
+			metadata_dst_free(repr->dst);
+			repr->dst = NULL;
 			goto err;
 		}
 
 		if (ice_vsi_add_vlan_zero(vsi)) {
-			ice_fltr_add_mac_and_broadcast(vsi, vf->hw_lan_addr,
+			ice_fltr_add_mac_and_broadcast(vsi, repr->parent_mac,
 						       ICE_FWD_TO_VSI);
-			ice_eswitch_del_vf_sp_rule(vf);
-			metadata_dst_free(vf->repr->dst);
-			vf->repr->dst = NULL;
+			ice_eswitch_del_sp_rule(pf, repr);
+			metadata_dst_free(repr->dst);
+			repr->dst = NULL;
 			ice_vsi_update_security(vsi, ice_vsi_ctx_set_antispoof);
 			goto err;
 		}
 
-		netif_napi_add(vf->repr->netdev, &vf->repr->q_vector->napi,
+		netif_napi_add(repr->netdev, &repr->q_vector->napi,
 			       ice_napi_poll);
 
-		netif_keep_dst(vf->repr->netdev);
+		netif_keep_dst(repr->netdev);
 	}
 
-	ice_for_each_vf(pf, bkt, vf) {
-		struct ice_repr *repr = vf->repr;
+	xa_for_each(&pf->eswitch.reprs, id, repr) {
 		struct ice_vsi *vsi = repr->src_vsi;
 		struct metadata_dst *dst;
 
@@ -291,7 +283,7 @@ static int ice_eswitch_setup_reprs(struct ice_pf *pf)
 }
 
 /**
- * ice_eswitch_update_repr - reconfigure VF port representor
+ * ice_eswitch_update_repr - reconfigure port representor
  * @vsi: VF VSI for which port representor is configured
  */
 void ice_eswitch_update_repr(struct ice_vsi *vsi)
@@ -420,47 +412,41 @@ ice_eswitch_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
 
 /**
  * ice_eswitch_napi_del - remove NAPI handle for all port representors
- * @pf: pointer to PF structure
+ * @reprs: xarray of reprs
  */
-static void ice_eswitch_napi_del(struct ice_pf *pf)
+static void ice_eswitch_napi_del(struct xarray *reprs)
 {
-	struct ice_vf *vf;
-	unsigned int bkt;
-
-	lockdep_assert_held(&pf->vfs.table_lock);
+	struct ice_repr *repr;
+	unsigned long id;
 
-	ice_for_each_vf(pf, bkt, vf)
-		netif_napi_del(&vf->repr->q_vector->napi);
+	xa_for_each(reprs, id, repr)
+		netif_napi_del(&repr->q_vector->napi);
 }
 
 /**
  * ice_eswitch_napi_enable - enable NAPI for all port representors
- * @pf: pointer to PF structure
+ * @reprs: xarray of reprs
  */
-static void ice_eswitch_napi_enable(struct ice_pf *pf)
+static void ice_eswitch_napi_enable(struct xarray *reprs)
 {
-	struct ice_vf *vf;
-	unsigned int bkt;
-
-	lockdep_assert_held(&pf->vfs.table_lock);
+	struct ice_repr *repr;
+	unsigned long id;
 
-	ice_for_each_vf(pf, bkt, vf)
-		napi_enable(&vf->repr->q_vector->napi);
+	xa_for_each(reprs, id, repr)
+		napi_enable(&repr->q_vector->napi);
 }
 
 /**
  * ice_eswitch_napi_disable - disable NAPI for all port representors
- * @pf: pointer to PF structure
+ * @reprs: xarray of reprs
  */
-static void ice_eswitch_napi_disable(struct ice_pf *pf)
+static void ice_eswitch_napi_disable(struct xarray *reprs)
 {
-	struct ice_vf *vf;
-	unsigned int bkt;
-
-	lockdep_assert_held(&pf->vfs.table_lock);
+	struct ice_repr *repr;
+	unsigned long id;
 
-	ice_for_each_vf(pf, bkt, vf)
-		napi_disable(&vf->repr->q_vector->napi);
+	xa_for_each(reprs, id, repr)
+		napi_disable(&repr->q_vector->napi);
 }
 
 /**
@@ -505,7 +491,7 @@ static int ice_eswitch_enable_switchdev(struct ice_pf *pf)
 	if (ice_eswitch_br_offloads_init(pf))
 		goto err_br_offloads;
 
-	ice_eswitch_napi_enable(pf);
+	ice_eswitch_napi_enable(&pf->eswitch.reprs);
 
 	return 0;
 
@@ -528,7 +514,7 @@ static void ice_eswitch_disable_switchdev(struct ice_pf *pf)
 {
 	struct ice_vsi *ctrl_vsi = pf->eswitch.control_vsi;
 
-	ice_eswitch_napi_disable(pf);
+	ice_eswitch_napi_disable(&pf->eswitch.reprs);
 	ice_eswitch_br_offloads_deinit(pf);
 	ice_eswitch_release_env(pf);
 	ice_eswitch_release_reprs(pf);
@@ -561,6 +547,7 @@ ice_eswitch_mode_set(struct devlink *devlink, u16 mode,
 	case DEVLINK_ESWITCH_MODE_LEGACY:
 		dev_info(ice_pf_to_dev(pf), "PF %d changed eswitch mode to legacy",
 			 pf->hw.pf_id);
+		xa_destroy(&pf->eswitch.reprs);
 		NL_SET_ERR_MSG_MOD(extack, "Changed eswitch mode to legacy");
 		break;
 	case DEVLINK_ESWITCH_MODE_SWITCHDEV:
@@ -573,6 +560,7 @@ ice_eswitch_mode_set(struct devlink *devlink, u16 mode,
 
 		dev_info(ice_pf_to_dev(pf), "PF %d changed eswitch mode to switchdev",
 			 pf->hw.pf_id);
+		xa_init_flags(&pf->eswitch.reprs, XA_FLAGS_ALLOC);
 		NL_SET_ERR_MSG_MOD(extack, "Changed eswitch mode to switchdev");
 		break;
 	}
@@ -649,18 +637,14 @@ int ice_eswitch_configure(struct ice_pf *pf)
  */
 static void ice_eswitch_start_all_tx_queues(struct ice_pf *pf)
 {
-	struct ice_vf *vf;
-	unsigned int bkt;
-
-	lockdep_assert_held(&pf->vfs.table_lock);
+	struct ice_repr *repr;
+	unsigned long id;
 
 	if (test_bit(ICE_DOWN, pf->state))
 		return;
 
-	ice_for_each_vf(pf, bkt, vf) {
-		if (vf->repr)
-			ice_repr_start_tx_queues(vf->repr);
-	}
+	xa_for_each(&pf->eswitch.reprs, id, repr)
+		ice_repr_start_tx_queues(repr);
 }
 
 /**
@@ -669,18 +653,14 @@ static void ice_eswitch_start_all_tx_queues(struct ice_pf *pf)
  */
 void ice_eswitch_stop_all_tx_queues(struct ice_pf *pf)
 {
-	struct ice_vf *vf;
-	unsigned int bkt;
-
-	lockdep_assert_held(&pf->vfs.table_lock);
+	struct ice_repr *repr;
+	unsigned long id;
 
 	if (test_bit(ICE_DOWN, pf->state))
 		return;
 
-	ice_for_each_vf(pf, bkt, vf) {
-		if (vf->repr)
-			ice_repr_stop_tx_queues(vf->repr);
-	}
+	xa_for_each(&pf->eswitch.reprs, id, repr)
+		ice_repr_stop_tx_queues(repr);
 }
 
 /**
@@ -692,8 +672,8 @@ int ice_eswitch_rebuild(struct ice_pf *pf)
 	struct ice_vsi *ctrl_vsi = pf->eswitch.control_vsi;
 	int status;
 
-	ice_eswitch_napi_disable(pf);
-	ice_eswitch_napi_del(pf);
+	ice_eswitch_napi_disable(&pf->eswitch.reprs);
+	ice_eswitch_napi_del(&pf->eswitch.reprs);
 
 	status = ice_eswitch_setup_env(pf);
 	if (status)
@@ -711,7 +691,7 @@ int ice_eswitch_rebuild(struct ice_pf *pf)
 	if (status)
 		return status;
 
-	ice_eswitch_napi_enable(pf);
+	ice_eswitch_napi_enable(&pf->eswitch.reprs);
 	ice_eswitch_start_all_tx_queues(pf);
 
 	return 0;
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 66095e9b094e..cb0ff015647f 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4702,6 +4702,8 @@ static void ice_deinit_features(struct ice_pf *pf)
 		ice_ptp_release(pf);
 	if (test_bit(ICE_FLAG_DPLL, pf->flags))
 		ice_dpll_deinit(pf);
+	if (pf->eswitch_mode == DEVLINK_ESWITCH_MODE_SWITCHDEV)
+		xa_destroy(&pf->eswitch.reprs);
 }
 
 static void ice_init_wakeup(struct ice_pf *pf)
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index 903a3385eacb..e56c59a304ef 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -318,6 +318,11 @@ static int ice_repr_add(struct ice_vf *vf)
 	}
 	repr->q_vector = q_vector;
 
+	err = xa_alloc(&vf->pf->eswitch.reprs, &repr->id, repr,
+		       xa_limit_32b, GFP_KERNEL);
+	if (err)
+		goto err_xa_alloc;
+
 	err = ice_devlink_create_vf_port(vf);
 	if (err)
 		goto err_devlink;
@@ -338,6 +343,8 @@ static int ice_repr_add(struct ice_vf *vf)
 err_netdev:
 	ice_devlink_destroy_vf_port(vf);
 err_devlink:
+	xa_erase(&vf->pf->eswitch.reprs, repr->id);
+err_xa_alloc:
 	kfree(repr->q_vector);
 	vf->repr->q_vector = NULL;
 err_alloc_q_vector:
@@ -363,6 +370,7 @@ static void ice_repr_rem(struct ice_vf *vf)
 	kfree(repr->q_vector);
 	unregister_netdev(repr->netdev);
 	ice_devlink_destroy_vf_port(vf);
+	xa_erase(&vf->pf->eswitch.reprs, repr->id);
 	free_netdev(repr->netdev);
 	kfree(repr);
 	vf->repr = NULL;
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.h b/drivers/net/ethernet/intel/ice/ice_repr.h
index f350273b8874..735cb556c620 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.h
+++ b/drivers/net/ethernet/intel/ice/ice_repr.h
@@ -14,6 +14,8 @@ struct ice_repr {
 	struct metadata_dst *dst;
 	struct ice_esw_br_port *br_port;
 	int q_id;
+	u32 id;
+	u8 parent_mac[ETH_ALEN];
 #ifdef CONFIG_ICE_SWITCHDEV
 	/* info about slow path rule */
 	struct ice_rule_query_data sp_rule;
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
