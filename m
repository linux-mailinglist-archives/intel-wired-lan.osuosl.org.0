Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B7186E0A3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Mar 2024 12:50:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EBF1041987;
	Fri,  1 Mar 2024 11:50:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fn0GdpuGU98H; Fri,  1 Mar 2024 11:50:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1D81F41950
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709293808;
	bh=HwPL0BVpQNaTS85VqCJsyLRbuY3viZkEunBslx2oGOQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6VkvstvJ7UXf7IKZbf/bSJMtMX+cIi/wcRbMxECSNWgszCuRpOA0Z0v1oYTDGd3hC
	 +PmkRlA5p48rv9rVuXIo2C7F9XkPa7tC7Frs90BVL3i0glIX1qRyCMxDG96C9UvckQ
	 8v+0z7JImeOap1QQNA1fP23Q4IefiHzWWznyScoLBa9WO3dHtyRVRgXOI1cHi8Bm+1
	 odxGpWLeieO7i2M3zfCNfuuMa2Mxp6Ihv9WsXG8XrKhAHZSZu3nn1M+9lvnsdcMaPK
	 6ukaoAH0/a8Ro6fu/ZE3oH3zRGAJMZ/0AIak09/gLMUaig0EyhfBiSeMZ3FsCDmHBc
	 /h/qt5Ovvkh9Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1D81F41950;
	Fri,  1 Mar 2024 11:50:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5115B1BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 11:50:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 46C044193C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 11:50:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xPLrxSkcfDLN for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Mar 2024 11:50:03 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9119B4194C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9119B4194C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9119B4194C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 11:50:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="4000063"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="4000063"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 03:50:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; d="scan'208";a="39195055"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa001.fm.intel.com with ESMTP; 01 Mar 2024 03:49:59 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  1 Mar 2024 12:54:11 +0100
Message-ID: <20240301115414.502097-6-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240301115414.502097-1-michal.swiatkowski@linux.intel.com>
References: <20240301115414.502097-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709293802; x=1740829802;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SBpExY9mAbZHTtlx1KK60ChV/mDWJQnzuJ5oojn8TCk=;
 b=HxsQ/Wawyb9SWIwss/eL1D8IaKVzwyhXIdcSegQgaf1WiEWQFc1ZhlW5
 oAY781iRrazkaJk4ykZavoqKRdlMfMvmjQd0+CKMFIUBnhdz7Nbly+B93
 p0YPKfgn9t5Duhy3nWwfnHDJXtl+lZ+tkJYY+MTaB/LcPWsbr+oTwKRf+
 Ty/h3l6hxHaiCJwDIoCvoRefcxWDHN8g3igsV/0KS7oTjT3r+eO51okmy
 kLUWPz9mVM+WygeZYwEo6KQMFu5GAV4BkSTzIuuotdNpHzxVEvCouT91V
 10WzDZPbGnFr2UFCQsxuPRIUomMEHTQUnRnrRAftRezB+7mdAjKW+a3dm
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HxsQ/Waw
Subject: [Intel-wired-lan] [iwl-next v3 5/8] ice: remove switchdev control
 plane VSI
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

For slow-path Rx and Tx PF VSI is used. There is no need to have control
plane VSI. Remove all code related to it.

Eswitch rebuild can't fail without rebuilding control plane VSI. Return
void from ice_eswitch_rebuild().

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |   1 -
 drivers/net/ethernet/intel/ice/ice_base.c     |  36 +---
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   4 +-
 drivers/net/ethernet/intel/ice/ice_eswitch.c  | 163 +-----------------
 drivers/net/ethernet/intel/ice/ice_eswitch.h  |   2 +-
 drivers/net/ethernet/intel/ice/ice_lag.c      |   9 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  49 +-----
 drivers/net/ethernet/intel/ice/ice_main.c     |  10 +-
 drivers/net/ethernet/intel/ice/ice_repr.c     |  12 --
 drivers/net/ethernet/intel/ice/ice_repr.h     |   2 -
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 -
 .../net/ethernet/intel/ice/ice_vsi_vlan_ops.c |   1 -
 12 files changed, 13 insertions(+), 277 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 9bb435b4338f..c4127d5f2be3 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -522,7 +522,6 @@ enum ice_misc_thread_tasks {
 };
 
 struct ice_eswitch {
-	struct ice_vsi *control_vsi;
 	struct ice_vsi *uplink_vsi;
 	struct ice_esw_br_offloads *br_offloads;
 	struct xarray reprs;
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index d2fd315556a3..8ffae7fe894f 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -263,30 +263,6 @@ static u16 ice_calc_txq_handle(struct ice_vsi *vsi, struct ice_tx_ring *ring, u8
 	return ring->q_index - vsi->tc_cfg.tc_info[tc].qoffset;
 }
 
-/**
- * ice_eswitch_calc_txq_handle
- * @ring: pointer to ring which unique index is needed
- *
- * To correctly work with many netdevs ring->q_index of Tx rings on switchdev
- * VSI can repeat. Hardware ring setup requires unique q_index. Calculate it
- * here by finding index in vsi->tx_rings of this ring.
- *
- * Return ICE_INVAL_Q_INDEX when index wasn't found. Should never happen,
- * because VSI is get from ring->vsi, so it has to be present in this VSI.
- */
-static u16 ice_eswitch_calc_txq_handle(struct ice_tx_ring *ring)
-{
-	const struct ice_vsi *vsi = ring->vsi;
-	int i;
-
-	ice_for_each_txq(vsi, i) {
-		if (vsi->tx_rings[i] == ring)
-			return i;
-	}
-
-	return ICE_INVAL_Q_INDEX;
-}
-
 /**
  * ice_cfg_xps_tx_ring - Configure XPS for a Tx ring
  * @ring: The Tx ring to configure
@@ -353,9 +329,6 @@ ice_setup_tx_ctx(struct ice_tx_ring *ring, struct ice_tlan_ctx *tlan_ctx, u16 pf
 		tlan_ctx->vmvf_num = hw->func_caps.vf_base_id + vsi->vf->vf_id;
 		tlan_ctx->vmvf_type = ICE_TLAN_CTX_VMVF_TYPE_VF;
 		break;
-	case ICE_VSI_SWITCHDEV_CTRL:
-		tlan_ctx->vmvf_type = ICE_TLAN_CTX_VMVF_TYPE_VMQ;
-		break;
 	default:
 		return;
 	}
@@ -919,14 +892,7 @@ ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_tx_ring *ring,
 	/* Add unique software queue handle of the Tx queue per
 	 * TC into the VSI Tx ring
 	 */
-	if (vsi->type == ICE_VSI_SWITCHDEV_CTRL) {
-		ring->q_handle = ice_eswitch_calc_txq_handle(ring);
-
-		if (ring->q_handle == ICE_INVAL_Q_INDEX)
-			return -ENODEV;
-	} else {
-		ring->q_handle = ice_calc_txq_handle(vsi, ring, tc);
-	}
+	ring->q_handle = ice_calc_txq_handle(vsi, ring, tc);
 
 	if (ch)
 		status = ice_ena_vsi_txq(vsi->port_info, ch->ch_vsi->idx, 0,
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 6e20ee610022..ceb17c004d79 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -291,7 +291,6 @@ static void ice_dcb_ena_dis_vsi(struct ice_pf *pf, bool ena, bool locked)
 
 		switch (vsi->type) {
 		case ICE_VSI_CHNL:
-		case ICE_VSI_SWITCHDEV_CTRL:
 		case ICE_VSI_PF:
 			if (ena)
 				ice_ena_vsi(vsi, locked);
@@ -776,8 +775,7 @@ void ice_pf_dcb_recfg(struct ice_pf *pf, bool locked)
 		/* no need to proceed with remaining cfg if it is CHNL
 		 * or switchdev VSI
 		 */
-		if (vsi->type == ICE_VSI_CHNL ||
-		    vsi->type == ICE_VSI_SWITCHDEV_CTRL)
+		if (vsi->type == ICE_VSI_CHNL)
 			continue;
 
 		ice_vsi_map_rings_to_vectors(vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 50b3de700837..76fa114f22c9 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -20,7 +20,6 @@
 static int ice_eswitch_setup_env(struct ice_pf *pf)
 {
 	struct ice_vsi *uplink_vsi = pf->eswitch.uplink_vsi;
-	struct ice_vsi *ctrl_vsi = pf->eswitch.control_vsi;
 	struct net_device *netdev = uplink_vsi->netdev;
 	struct ice_vsi_vlan_ops *vlan_ops;
 
@@ -49,17 +48,12 @@ static int ice_eswitch_setup_env(struct ice_pf *pf)
 	if (ice_vsi_update_security(uplink_vsi, ice_vsi_ctx_set_allow_override))
 		goto err_override_uplink;
 
-	if (ice_vsi_update_security(ctrl_vsi, ice_vsi_ctx_set_allow_override))
-		goto err_override_control;
-
 	if (ice_vsi_update_local_lb(uplink_vsi, true))
 		goto err_override_local_lb;
 
 	return 0;
 
 err_override_local_lb:
-	ice_vsi_update_security(ctrl_vsi, ice_vsi_ctx_clear_allow_override);
-err_override_control:
 	ice_vsi_update_security(uplink_vsi, ice_vsi_ctx_clear_allow_override);
 err_override_uplink:
 	vlan_ops->ena_rx_filtering(uplink_vsi);
@@ -78,61 +72,6 @@ static int ice_eswitch_setup_env(struct ice_pf *pf)
 	return -ENODEV;
 }
 
-/**
- * ice_eswitch_remap_rings_to_vectors - reconfigure rings of eswitch ctrl VSI
- * @eswitch: pointer to eswitch struct
- *
- * In eswitch number of allocated Tx/Rx rings is equal.
- *
- * This function fills q_vectors structures associated with representor and
- * move each ring pairs to port representor netdevs. Each port representor
- * will have dedicated 1 Tx/Rx ring pair, so number of rings pair is equal to
- * number of VFs.
- */
-static void ice_eswitch_remap_rings_to_vectors(struct ice_eswitch *eswitch)
-{
-	struct ice_vsi *vsi = eswitch->control_vsi;
-	unsigned long repr_id = 0;
-	int q_id;
-
-	ice_for_each_txq(vsi, q_id) {
-		struct ice_q_vector *q_vector;
-		struct ice_tx_ring *tx_ring;
-		struct ice_rx_ring *rx_ring;
-		struct ice_repr *repr;
-
-		repr = xa_find(&eswitch->reprs, &repr_id, U32_MAX,
-			       XA_PRESENT);
-		if (!repr)
-			break;
-
-		repr_id += 1;
-		repr->q_id = q_id;
-		q_vector = repr->q_vector;
-		tx_ring = vsi->tx_rings[q_id];
-		rx_ring = vsi->rx_rings[q_id];
-
-		q_vector->vsi = vsi;
-		q_vector->reg_idx = vsi->q_vectors[0]->reg_idx;
-
-		q_vector->num_ring_tx = 1;
-		q_vector->tx.tx_ring = tx_ring;
-		tx_ring->q_vector = q_vector;
-		tx_ring->next = NULL;
-		tx_ring->netdev = repr->netdev;
-		/* In switchdev mode, from OS stack perspective, there is only
-		 * one queue for given netdev, so it needs to be indexed as 0.
-		 */
-		tx_ring->q_index = 0;
-
-		q_vector->num_ring_rx = 1;
-		q_vector->rx.rx_ring = rx_ring;
-		rx_ring->q_vector = q_vector;
-		rx_ring->next = NULL;
-		rx_ring->netdev = repr->netdev;
-	}
-}
-
 /**
  * ice_eswitch_release_repr - clear PR VSI configuration
  * @pf: poiner to PF struct
@@ -152,8 +91,6 @@ ice_eswitch_release_repr(struct ice_pf *pf, struct ice_repr *repr)
 	repr->dst = NULL;
 	ice_fltr_add_mac_and_broadcast(vsi, repr->parent_mac,
 				       ICE_FWD_TO_VSI);
-
-	netif_napi_del(&repr->q_vector->napi);
 }
 
 /**
@@ -179,9 +116,6 @@ static int ice_eswitch_setup_repr(struct ice_pf *pf, struct ice_repr *repr)
 	if (ice_vsi_add_vlan_zero(vsi))
 		goto err_update_security;
 
-	netif_napi_add(repr->netdev, &repr->q_vector->napi,
-		       ice_napi_poll);
-
 	netif_keep_dst(uplink_vsi->netdev);
 
 	dst = repr->dst;
@@ -287,13 +221,11 @@ ice_eswitch_set_target_vsi(struct sk_buff *skb,
 static void ice_eswitch_release_env(struct ice_pf *pf)
 {
 	struct ice_vsi *uplink_vsi = pf->eswitch.uplink_vsi;
-	struct ice_vsi *ctrl_vsi = pf->eswitch.control_vsi;
 	struct ice_vsi_vlan_ops *vlan_ops;
 
 	vlan_ops = ice_get_compat_vsi_vlan_ops(uplink_vsi);
 
 	ice_vsi_update_local_lb(uplink_vsi, false);
-	ice_vsi_update_security(ctrl_vsi, ice_vsi_ctx_clear_allow_override);
 	ice_vsi_update_security(uplink_vsi, ice_vsi_ctx_clear_allow_override);
 	vlan_ops->ena_rx_filtering(uplink_vsi);
 	ice_clear_dflt_vsi(uplink_vsi);
@@ -302,56 +234,13 @@ static void ice_eswitch_release_env(struct ice_pf *pf)
 				       ICE_FWD_TO_VSI);
 }
 
-/**
- * ice_eswitch_vsi_setup - configure eswitch control VSI
- * @pf: pointer to PF structure
- * @pi: pointer to port_info structure
- */
-static struct ice_vsi *
-ice_eswitch_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
-{
-	struct ice_vsi_cfg_params params = {};
-
-	params.type = ICE_VSI_SWITCHDEV_CTRL;
-	params.pi = pi;
-	params.flags = ICE_VSI_FLAG_INIT;
-
-	return ice_vsi_setup(pf, &params);
-}
-
-/**
- * ice_eswitch_napi_enable - enable NAPI for all port representors
- * @reprs: xarray of reprs
- */
-static void ice_eswitch_napi_enable(struct xarray *reprs)
-{
-	struct ice_repr *repr;
-	unsigned long id;
-
-	xa_for_each(reprs, id, repr)
-		napi_enable(&repr->q_vector->napi);
-}
-
-/**
- * ice_eswitch_napi_disable - disable NAPI for all port representors
- * @reprs: xarray of reprs
- */
-static void ice_eswitch_napi_disable(struct xarray *reprs)
-{
-	struct ice_repr *repr;
-	unsigned long id;
-
-	xa_for_each(reprs, id, repr)
-		napi_disable(&repr->q_vector->napi);
-}
-
 /**
  * ice_eswitch_enable_switchdev - configure eswitch in switchdev mode
  * @pf: pointer to PF structure
  */
 static int ice_eswitch_enable_switchdev(struct ice_pf *pf)
 {
-	struct ice_vsi *ctrl_vsi, *uplink_vsi;
+	struct ice_vsi *uplink_vsi;
 
 	uplink_vsi = ice_get_main_vsi(pf);
 	if (!uplink_vsi)
@@ -363,15 +252,10 @@ static int ice_eswitch_enable_switchdev(struct ice_pf *pf)
 		return -EINVAL;
 	}
 
-	pf->eswitch.control_vsi = ice_eswitch_vsi_setup(pf, pf->hw.port_info);
-	if (!pf->eswitch.control_vsi)
-		return -ENODEV;
-
-	ctrl_vsi = pf->eswitch.control_vsi;
 	pf->eswitch.uplink_vsi = uplink_vsi;
 
 	if (ice_eswitch_setup_env(pf))
-		goto err_vsi;
+		return -ENODEV;
 
 	if (ice_eswitch_br_offloads_init(pf))
 		goto err_br_offloads;
@@ -382,8 +266,6 @@ static int ice_eswitch_enable_switchdev(struct ice_pf *pf)
 
 err_br_offloads:
 	ice_eswitch_release_env(pf);
-err_vsi:
-	ice_vsi_release(ctrl_vsi);
 	return -ENODEV;
 }
 
@@ -393,11 +275,8 @@ static int ice_eswitch_enable_switchdev(struct ice_pf *pf)
  */
 static void ice_eswitch_disable_switchdev(struct ice_pf *pf)
 {
-	struct ice_vsi *ctrl_vsi = pf->eswitch.control_vsi;
-
 	ice_eswitch_br_offloads_deinit(pf);
 	ice_eswitch_release_env(pf);
-	ice_vsi_release(ctrl_vsi);
 
 	pf->eswitch.is_running = false;
 }
@@ -513,40 +392,17 @@ void ice_eswitch_stop_all_tx_queues(struct ice_pf *pf)
 static void ice_eswitch_stop_reprs(struct ice_pf *pf)
 {
 	ice_eswitch_stop_all_tx_queues(pf);
-	ice_eswitch_napi_disable(&pf->eswitch.reprs);
 }
 
 static void ice_eswitch_start_reprs(struct ice_pf *pf)
 {
-	ice_eswitch_napi_enable(&pf->eswitch.reprs);
 	ice_eswitch_start_all_tx_queues(pf);
 }
 
-static void
-ice_eswitch_cp_change_queues(struct ice_eswitch *eswitch, int change)
-{
-	struct ice_vsi *cp = eswitch->control_vsi;
-	int queues = 0;
-
-	if (queues) {
-		cp->req_txq = queues;
-		cp->req_rxq = queues;
-		ice_vsi_close(cp);
-		ice_vsi_rebuild(cp, ICE_VSI_FLAG_NO_INIT);
-		ice_vsi_open(cp);
-	} else if (!change) {
-		/* change == 0 means that VSI wasn't open, open it here */
-		ice_vsi_open(cp);
-	}
-
-	ice_eswitch_remap_rings_to_vectors(eswitch);
-}
-
 int
 ice_eswitch_attach(struct ice_pf *pf, struct ice_vf *vf)
 {
 	struct ice_repr *repr;
-	int change = 1;
 	int err;
 
 	if (pf->eswitch_mode == DEVLINK_ESWITCH_MODE_LEGACY)
@@ -556,7 +412,6 @@ ice_eswitch_attach(struct ice_pf *pf, struct ice_vf *vf)
 		err = ice_eswitch_enable_switchdev(pf);
 		if (err)
 			return err;
-		change = 0;
 	}
 
 	ice_eswitch_stop_reprs(pf);
@@ -578,7 +433,6 @@ ice_eswitch_attach(struct ice_pf *pf, struct ice_vf *vf)
 
 	vf->repr_id = repr->id;
 
-	ice_eswitch_cp_change_queues(&pf->eswitch, change);
 	ice_eswitch_start_reprs(pf);
 
 	return 0;
@@ -608,8 +462,6 @@ void ice_eswitch_detach(struct ice_pf *pf, struct ice_vf *vf)
 
 	if (xa_empty(&pf->eswitch.reprs))
 		ice_eswitch_disable_switchdev(pf);
-	else
-		ice_eswitch_cp_change_queues(&pf->eswitch, -1);
 
 	ice_eswitch_release_repr(pf, repr);
 	ice_repr_rem_vf(repr);
@@ -631,21 +483,14 @@ void ice_eswitch_detach(struct ice_pf *pf, struct ice_vf *vf)
  * ice_eswitch_rebuild - rebuild eswitch
  * @pf: pointer to PF structure
  */
-int ice_eswitch_rebuild(struct ice_pf *pf)
+void ice_eswitch_rebuild(struct ice_pf *pf)
 {
 	struct ice_repr *repr;
 	unsigned long id;
-	int err;
 
 	if (!ice_is_switchdev_running(pf))
-		return 0;
-
-	err = ice_vsi_rebuild(pf->eswitch.control_vsi, ICE_VSI_FLAG_INIT);
-	if (err)
-		return err;
+		return;
 
 	xa_for_each(&pf->eswitch.reprs, id, repr)
 		ice_eswitch_detach(pf, repr->vf);
-
-	return 0;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.h b/drivers/net/ethernet/intel/ice/ice_eswitch.h
index 59d51c0d14e5..baad68507471 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.h
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.h
@@ -10,7 +10,7 @@
 void ice_eswitch_detach(struct ice_pf *pf, struct ice_vf *vf);
 int
 ice_eswitch_attach(struct ice_pf *pf, struct ice_vf *vf);
-int ice_eswitch_rebuild(struct ice_pf *pf);
+void ice_eswitch_rebuild(struct ice_pf *pf);
 
 int ice_eswitch_mode_get(struct devlink *devlink, u16 *mode);
 int
diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 0cb4a5e5c00c..c97e92fd672c 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -740,8 +740,7 @@ static void ice_lag_move_vf_nodes(struct ice_lag *lag, u8 oldport, u8 newport)
 
 	pf = lag->pf;
 	ice_for_each_vsi(pf, i)
-		if (pf->vsi[i] && (pf->vsi[i]->type == ICE_VSI_VF ||
-				   pf->vsi[i]->type == ICE_VSI_SWITCHDEV_CTRL))
+		if (pf->vsi[i] && pf->vsi[i]->type == ICE_VSI_VF)
 			ice_lag_move_single_vf_nodes(lag, oldport, newport, i);
 }
 
@@ -979,8 +978,7 @@ ice_lag_reclaim_vf_nodes(struct ice_lag *lag, struct ice_hw *src_hw)
 
 	pf = lag->pf;
 	ice_for_each_vsi(pf, i)
-		if (pf->vsi[i] && (pf->vsi[i]->type == ICE_VSI_VF ||
-				   pf->vsi[i]->type == ICE_VSI_SWITCHDEV_CTRL))
+		if (pf->vsi[i] && pf->vsi[i]->type == ICE_VSI_VF)
 			ice_for_each_traffic_class(tc)
 				ice_lag_reclaim_vf_tc(lag, src_hw, i, tc);
 }
@@ -2002,8 +2000,7 @@ ice_lag_move_vf_nodes_sync(struct ice_lag *lag, struct ice_hw *dest_hw)
 
 	pf = lag->pf;
 	ice_for_each_vsi(pf, i)
-		if (pf->vsi[i] && (pf->vsi[i]->type == ICE_VSI_VF ||
-				   pf->vsi[i]->type == ICE_VSI_SWITCHDEV_CTRL))
+		if (pf->vsi[i] && pf->vsi[i]->type == ICE_VSI_VF)
 			ice_for_each_traffic_class(tc)
 				ice_lag_move_vf_nodes_tc_sync(lag, dest_hw, i,
 							      tc);
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index be32ace96da9..3c8688dcc677 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -27,8 +27,6 @@ const char *ice_vsi_type_str(enum ice_vsi_type vsi_type)
 		return "ICE_VSI_CHNL";
 	case ICE_VSI_LB:
 		return "ICE_VSI_LB";
-	case ICE_VSI_SWITCHDEV_CTRL:
-		return "ICE_VSI_SWITCHDEV_CTRL";
 	default:
 		return "unknown";
 	}
@@ -144,7 +142,6 @@ static void ice_vsi_set_num_desc(struct ice_vsi *vsi)
 {
 	switch (vsi->type) {
 	case ICE_VSI_PF:
-	case ICE_VSI_SWITCHDEV_CTRL:
 	case ICE_VSI_CTRL:
 	case ICE_VSI_LB:
 		/* a user could change the values of num_[tr]x_desc using
@@ -211,21 +208,6 @@ static void ice_vsi_set_num_qs(struct ice_vsi *vsi)
 					   max_t(int, vsi->alloc_rxq,
 						 vsi->alloc_txq));
 		break;
-	case ICE_VSI_SWITCHDEV_CTRL:
-		/* The number of queues for ctrl VSI is equal to number of PRs
-		 * Each ring is associated to the corresponding VF_PR netdev.
-		 * Tx and Rx rings are always equal
-		 */
-		if (vsi->req_txq && vsi->req_rxq) {
-			vsi->alloc_txq = vsi->req_txq;
-			vsi->alloc_rxq = vsi->req_rxq;
-		} else {
-			vsi->alloc_txq = 1;
-			vsi->alloc_rxq = 1;
-		}
-
-		vsi->num_q_vectors = 1;
-		break;
 	case ICE_VSI_VF:
 		if (vf->num_req_qs)
 			vf->num_vf_qs = vf->num_req_qs;
@@ -522,22 +504,6 @@ static irqreturn_t ice_msix_clean_rings(int __always_unused irq, void *data)
 	return IRQ_HANDLED;
 }
 
-static irqreturn_t ice_eswitch_msix_clean_rings(int __always_unused irq, void *data)
-{
-	struct ice_q_vector *q_vector = (struct ice_q_vector *)data;
-	struct ice_pf *pf = q_vector->vsi->back;
-	struct ice_repr *repr;
-	unsigned long id;
-
-	if (!q_vector->tx.tx_ring && !q_vector->rx.rx_ring)
-		return IRQ_HANDLED;
-
-	xa_for_each(&pf->eswitch.reprs, id, repr)
-		napi_schedule(&repr->q_vector->napi);
-
-	return IRQ_HANDLED;
-}
-
 /**
  * ice_vsi_alloc_stat_arrays - Allocate statistics arrays
  * @vsi: VSI pointer
@@ -600,10 +566,6 @@ ice_vsi_alloc_def(struct ice_vsi *vsi, struct ice_channel *ch)
 	}
 
 	switch (vsi->type) {
-	case ICE_VSI_SWITCHDEV_CTRL:
-		/* Setup eswitch MSIX irq handler for VSI */
-		vsi->irq_handler = ice_eswitch_msix_clean_rings;
-		break;
 	case ICE_VSI_PF:
 		/* Setup default MSIX irq handler for VSI */
 		vsi->irq_handler = ice_msix_clean_rings;
@@ -933,11 +895,6 @@ static void ice_vsi_set_rss_params(struct ice_vsi *vsi)
 					      max_rss_size);
 		vsi->rss_lut_type = ICE_LUT_PF;
 		break;
-	case ICE_VSI_SWITCHDEV_CTRL:
-		vsi->rss_table_size = ICE_LUT_VSI_SIZE;
-		vsi->rss_size = min_t(u16, num_online_cpus(), max_rss_size);
-		vsi->rss_lut_type = ICE_LUT_VSI;
-		break;
 	case ICE_VSI_VF:
 		/* VF VSI will get a small RSS table.
 		 * For VSI_LUT, LUT size should be set to 64 bytes.
@@ -1263,7 +1220,6 @@ static int ice_vsi_init(struct ice_vsi *vsi, u32 vsi_flags)
 	case ICE_VSI_PF:
 		ctxt->flags = ICE_AQ_VSI_TYPE_PF;
 		break;
-	case ICE_VSI_SWITCHDEV_CTRL:
 	case ICE_VSI_CHNL:
 		ctxt->flags = ICE_AQ_VSI_TYPE_VMDQ2;
 		break;
@@ -2145,7 +2101,6 @@ static void ice_set_agg_vsi(struct ice_vsi *vsi)
 	case ICE_VSI_CHNL:
 	case ICE_VSI_LB:
 	case ICE_VSI_PF:
-	case ICE_VSI_SWITCHDEV_CTRL:
 		max_agg_nodes = ICE_MAX_PF_AGG_NODES;
 		agg_node_id_start = ICE_PF_AGG_NODE_ID_START;
 		agg_node_iter = &pf->pf_agg_node[0];
@@ -2317,7 +2272,6 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vsi_cfg_params *params)
 
 	switch (vsi->type) {
 	case ICE_VSI_CTRL:
-	case ICE_VSI_SWITCHDEV_CTRL:
 	case ICE_VSI_PF:
 		ret = ice_vsi_alloc_q_vectors(vsi);
 		if (ret)
@@ -2750,8 +2704,7 @@ void ice_dis_vsi(struct ice_vsi *vsi, bool locked)
 		} else {
 			ice_vsi_close(vsi);
 		}
-	} else if (vsi->type == ICE_VSI_CTRL ||
-		   vsi->type == ICE_VSI_SWITCHDEV_CTRL) {
+	} else if (vsi->type == ICE_VSI_CTRL) {
 		ice_vsi_close(vsi);
 	}
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index cc1957c592b2..c3a203ef95fb 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -7055,13 +7055,11 @@ int ice_down(struct ice_vsi *vsi)
 
 	WARN_ON(!test_bit(ICE_VSI_DOWN, vsi->state));
 
-	if (vsi->netdev && vsi->type == ICE_VSI_PF) {
+	if (vsi->netdev) {
 		vlan_err = ice_vsi_del_vlan_zero(vsi);
 		ice_ptp_link_change(vsi->back, vsi->back->hw.pf_id, false);
 		netif_carrier_off(vsi->netdev);
 		netif_tx_disable(vsi->netdev);
-	} else if (vsi->type == ICE_VSI_SWITCHDEV_CTRL) {
-		ice_eswitch_stop_all_tx_queues(vsi->back);
 	}
 
 	ice_vsi_dis_irq(vsi);
@@ -7544,11 +7542,7 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 		goto err_vsi_rebuild;
 	}
 
-	err = ice_eswitch_rebuild(pf);
-	if (err) {
-		dev_err(dev, "Switchdev rebuild failed: %d\n", err);
-		goto err_vsi_rebuild;
-	}
+	ice_eswitch_rebuild(pf);
 
 	if (reset_type == ICE_RESET_PFR) {
 		err = ice_rebuild_channels(pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index 6191bee6c536..a5c24da31b88 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -291,7 +291,6 @@ static void ice_repr_remove_node(struct devlink_port *devlink_port)
  */
 static void ice_repr_rem(struct ice_repr *repr)
 {
-	kfree(repr->q_vector);
 	free_netdev(repr->netdev);
 	kfree(repr);
 }
@@ -331,7 +330,6 @@ static void ice_repr_set_tx_topology(struct ice_pf *pf)
 static struct ice_repr *
 ice_repr_add(struct ice_pf *pf, struct ice_vsi *src_vsi, const u8 *parent_mac)
 {
-	struct ice_q_vector *q_vector;
 	struct ice_netdev_priv *np;
 	struct ice_repr *repr;
 	int err;
@@ -350,20 +348,10 @@ ice_repr_add(struct ice_pf *pf, struct ice_vsi *src_vsi, const u8 *parent_mac)
 	np = netdev_priv(repr->netdev);
 	np->repr = repr;
 
-	q_vector = kzalloc(sizeof(*q_vector), GFP_KERNEL);
-	if (!q_vector) {
-		err = -ENOMEM;
-		goto err_alloc_q_vector;
-	}
-	repr->q_vector = q_vector;
-	repr->q_id = repr->id;
-
 	ether_addr_copy(repr->parent_mac, parent_mac);
 
 	return repr;
 
-err_alloc_q_vector:
-	free_netdev(repr->netdev);
 err_alloc:
 	kfree(repr);
 	return ERR_PTR(err);
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.h b/drivers/net/ethernet/intel/ice/ice_repr.h
index 34823f58cd23..eb8dec1f7de4 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.h
+++ b/drivers/net/ethernet/intel/ice/ice_repr.h
@@ -9,11 +9,9 @@
 struct ice_repr {
 	struct ice_vsi *src_vsi;
 	struct ice_vf *vf;
-	struct ice_q_vector *q_vector;
 	struct net_device *netdev;
 	struct metadata_dst *dst;
 	struct ice_esw_br_port *br_port;
-	int q_id;
 	u32 id;
 	u8 parent_mac[ETH_ALEN];
 };
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 370e9bf5df2f..08ec5efdafe6 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -150,7 +150,6 @@ enum ice_vsi_type {
 	ICE_VSI_CTRL = 3,	/* equates to ICE_VSI_PF with 1 queue pair */
 	ICE_VSI_CHNL = 4,
 	ICE_VSI_LB = 6,
-	ICE_VSI_SWITCHDEV_CTRL = 7,
 };
 
 struct ice_link_status {
diff --git a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.c b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.c
index 4a6c850d83ac..7aae7fdcfcdb 100644
--- a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.c
+++ b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.c
@@ -72,7 +72,6 @@ void ice_vsi_init_vlan_ops(struct ice_vsi *vsi)
 
 	switch (vsi->type) {
 	case ICE_VSI_PF:
-	case ICE_VSI_SWITCHDEV_CTRL:
 		ice_pf_vsi_init_vlan_ops(vsi);
 		break;
 	case ICE_VSI_VF:
-- 
2.42.0

