Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 197AD4C0608
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Feb 2022 01:28:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6AF6813DA;
	Wed, 23 Feb 2022 00:28:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zF-fFlSqZ8vv; Wed, 23 Feb 2022 00:28:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 649C481326;
	Wed, 23 Feb 2022 00:28:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 194FC1BF9B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A841160625
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5xva521LOgf4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Feb 2022 00:27:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BEE1760F11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645576041; x=1677112041;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f3WOuoHc4rVL1p1toX+j9nOlrwz2gQMI0elRFac4YMw=;
 b=L6ktA93IVPjjHU5bBEEzsyQA82kKAeYBnM03Ezcx6dken8v/icte0901
 /soA4gjvqL8oQnxsSPMZ0RVey6KhmopIon5u8VcTGuq+4TGaEgvDJXfAy
 bPJ/otGjkYdJ22/W+f+dWy6H4R6jl76sPmLk6k4Hcnp2rh4IN0D/srsgr
 PLOyE6SvPisjB09zc7wp2+0hFcurWHpNShvDTKfuKeVZCk3uNZYWN+BZA
 o00zNagDGxRHyC+nxfsZkcGkadU+I89kGZkVmb/a7eEca/pFelc9m6UOt
 yd/93VazoFEdhsOLgkPWwSfZJGotgXruavb427rg2TukJq5yrpJZKYdXx w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="232468985"
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="232468985"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:19 -0800
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="505728043"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:18 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 22 Feb 2022 16:27:03 -0800
Message-Id: <20220223002712.2771809-17-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
In-Reply-To: <20220223002712.2771809-1-jacob.e.keller@intel.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 16/25] ice: move reset
 functionality into ice_vf_lib.c
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

Now that the reset functions do not rely on Single Root specific
behavior, move the ice_reset_vf, ice_reset_all_vfs, and
ice_vf_rebuild_host_cfg functions and their dependent helper functions
out of ice_sriov.c and into ice_vf_lib.c

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c    | 475 ------------------
 drivers/net/ethernet/intel/ice/ice_sriov.h    |  15 -
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 475 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  12 +
 .../ethernet/intel/ice/ice_vf_lib_private.h   |   1 +
 5 files changed, 488 insertions(+), 490 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index b2376e3b746e..4a8cf8f646c8 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -466,37 +466,6 @@ void ice_free_vfs(struct ice_pf *pf)
 	clear_bit(ICE_FLAG_SRIOV_ENA, pf->flags);
 }
 
-/**
- * ice_trigger_vf_reset - Reset a VF on HW
- * @vf: pointer to the VF structure
- * @is_vflr: true if VFLR was issued, false if not
- * @is_pfr: true if the reset was triggered due to a previous PFR
- *
- * Trigger hardware to start a reset for a particular VF. Expects the caller
- * to wait the proper amount of time to allow hardware to reset the VF before
- * it cleans up and restores VF functionality.
- */
-static void ice_trigger_vf_reset(struct ice_vf *vf, bool is_vflr, bool is_pfr)
-{
-	/* Inform VF that it is no longer active, as a warning */
-	clear_bit(ICE_VF_STATE_ACTIVE, vf->vf_states);
-
-	/* Disable VF's configuration API during reset. The flag is re-enabled
-	 * when it's safe again to access VF's VSI.
-	 */
-	clear_bit(ICE_VF_STATE_INIT, vf->vf_states);
-
-	/* VF_MBX_ARQLEN and VF_MBX_ATQLEN are cleared by PFR, so the driver
-	 * needs to clear them in the case of VFR/VFLR. If this is done for
-	 * PFR, it can mess up VF resets because the VF driver may already
-	 * have started cleanup by the time we get here.
-	 */
-	if (!is_pfr)
-		vf->vf_ops->clear_mbx_register(vf);
-
-	vf->vf_ops->trigger_reset_register(vf, is_vflr);
-}
-
 /**
  * ice_vf_vsi_setup - Set up a VF VSI
  * @vf: VF to setup VSI for
@@ -541,138 +510,6 @@ static int ice_calc_vf_first_vector_idx(struct ice_pf *pf, struct ice_vf *vf)
 	return pf->sriov_base_vector + vf->vf_id * pf->vfs.num_msix_per;
 }
 
-/**
- * ice_vf_rebuild_host_tx_rate_cfg - re-apply the Tx rate limiting configuration
- * @vf: VF to re-apply the configuration for
- *
- * Called after a VF VSI has been re-added/rebuild during reset. The PF driver
- * needs to re-apply the host configured Tx rate limiting configuration.
- */
-static int ice_vf_rebuild_host_tx_rate_cfg(struct ice_vf *vf)
-{
-	struct device *dev = ice_pf_to_dev(vf->pf);
-	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
-	int err;
-
-	if (vf->min_tx_rate) {
-		err = ice_set_min_bw_limit(vsi, (u64)vf->min_tx_rate * 1000);
-		if (err) {
-			dev_err(dev, "failed to set min Tx rate to %d Mbps for VF %u, error %d\n",
-				vf->min_tx_rate, vf->vf_id, err);
-			return err;
-		}
-	}
-
-	if (vf->max_tx_rate) {
-		err = ice_set_max_bw_limit(vsi, (u64)vf->max_tx_rate * 1000);
-		if (err) {
-			dev_err(dev, "failed to set max Tx rate to %d Mbps for VF %u, error %d\n",
-				vf->max_tx_rate, vf->vf_id, err);
-			return err;
-		}
-	}
-
-	return 0;
-}
-
-/**
- * ice_vf_rebuild_host_vlan_cfg - add VLAN 0 filter or rebuild the Port VLAN
- * @vf: VF to add MAC filters for
- * @vsi: Pointer to VSI
- *
- * Called after a VF VSI has been re-added/rebuilt during reset. The PF driver
- * always re-adds either a VLAN 0 or port VLAN based filter after reset.
- */
-static int ice_vf_rebuild_host_vlan_cfg(struct ice_vf *vf, struct ice_vsi *vsi)
-{
-	struct ice_vsi_vlan_ops *vlan_ops = ice_get_compat_vsi_vlan_ops(vsi);
-	struct device *dev = ice_pf_to_dev(vf->pf);
-	int err;
-
-	if (ice_vf_is_port_vlan_ena(vf)) {
-		err = vlan_ops->set_port_vlan(vsi, &vf->port_vlan_info);
-		if (err) {
-			dev_err(dev, "failed to configure port VLAN via VSI parameters for VF %u, error %d\n",
-				vf->vf_id, err);
-			return err;
-		}
-
-		err = vlan_ops->add_vlan(vsi, &vf->port_vlan_info);
-	} else {
-		err = ice_vsi_add_vlan_zero(vsi);
-	}
-
-	if (err) {
-		dev_err(dev, "failed to add VLAN %u filter for VF %u during VF rebuild, error %d\n",
-			ice_vf_is_port_vlan_ena(vf) ?
-			ice_vf_get_port_vlan_id(vf) : 0, vf->vf_id, err);
-		return err;
-	}
-
-	err = vlan_ops->ena_rx_filtering(vsi);
-	if (err)
-		dev_warn(dev, "failed to enable Rx VLAN filtering for VF %d VSI %d during VF rebuild, error %d\n",
-			 vf->vf_id, vsi->idx, err);
-
-	return 0;
-}
-
-/**
- * ice_vf_rebuild_host_mac_cfg - add broadcast and the VF's perm_addr/LAA
- * @vf: VF to add MAC filters for
- *
- * Called after a VF VSI has been re-added/rebuilt during reset. The PF driver
- * always re-adds a broadcast filter and the VF's perm_addr/LAA after reset.
- */
-static int ice_vf_rebuild_host_mac_cfg(struct ice_vf *vf)
-{
-	struct device *dev = ice_pf_to_dev(vf->pf);
-	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
-	u8 broadcast[ETH_ALEN];
-	int status;
-
-	if (ice_is_eswitch_mode_switchdev(vf->pf))
-		return 0;
-
-	eth_broadcast_addr(broadcast);
-	status = ice_fltr_add_mac(vsi, broadcast, ICE_FWD_TO_VSI);
-	if (status) {
-		dev_err(dev, "failed to add broadcast MAC filter for VF %u, error %d\n",
-			vf->vf_id, status);
-		return status;
-	}
-
-	vf->num_mac++;
-
-	if (is_valid_ether_addr(vf->hw_lan_addr.addr)) {
-		status = ice_fltr_add_mac(vsi, vf->hw_lan_addr.addr,
-					  ICE_FWD_TO_VSI);
-		if (status) {
-			dev_err(dev, "failed to add default unicast MAC filter %pM for VF %u, error %d\n",
-				&vf->hw_lan_addr.addr[0], vf->vf_id,
-				status);
-			return status;
-		}
-		vf->num_mac++;
-
-		ether_addr_copy(vf->dev_lan_addr.addr, vf->hw_lan_addr.addr);
-	}
-
-	return 0;
-}
-
-/**
- * ice_vf_set_host_trust_cfg - set trust setting based on pre-reset value
- * @vf: VF to configure trust setting for
- */
-static void ice_vf_set_host_trust_cfg(struct ice_vf *vf)
-{
-	if (vf->trusted)
-		set_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
-	else
-		clear_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
-}
-
 /**
  * ice_ena_vf_msix_mappings - enable VF MSIX mappings in hardware
  * @vf: VF to enable MSIX mappings for
@@ -958,318 +795,6 @@ static int ice_set_per_vf_res(struct ice_pf *pf, u16 num_vfs)
 	return 0;
 }
 
-static void ice_vf_clear_counters(struct ice_vf *vf)
-{
-	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
-
-	vf->num_mac = 0;
-	vsi->num_vlan = 0;
-	memset(&vf->mdd_tx_events, 0, sizeof(vf->mdd_tx_events));
-	memset(&vf->mdd_rx_events, 0, sizeof(vf->mdd_rx_events));
-}
-
-/**
- * ice_vf_pre_vsi_rebuild - tasks to be done prior to VSI rebuild
- * @vf: VF to perform pre VSI rebuild tasks
- *
- * These tasks are items that don't need to be amortized since they are most
- * likely called in a for loop with all VF(s) in the reset_all_vfs() case.
- */
-static void ice_vf_pre_vsi_rebuild(struct ice_vf *vf)
-{
-	ice_vf_clear_counters(vf);
-	vf->vf_ops->clear_reset_trigger(vf);
-}
-
-/**
- * ice_vf_rebuild_aggregator_node_cfg - rebuild aggregator node config
- * @vsi: Pointer to VSI
- *
- * This function moves VSI into corresponding scheduler aggregator node
- * based on cached value of "aggregator node info" per VSI
- */
-static void ice_vf_rebuild_aggregator_node_cfg(struct ice_vsi *vsi)
-{
-	struct ice_pf *pf = vsi->back;
-	struct device *dev;
-	int status;
-
-	if (!vsi->agg_node)
-		return;
-
-	dev = ice_pf_to_dev(pf);
-	if (vsi->agg_node->num_vsis == ICE_MAX_VSIS_IN_AGG_NODE) {
-		dev_dbg(dev,
-			"agg_id %u already has reached max_num_vsis %u\n",
-			vsi->agg_node->agg_id, vsi->agg_node->num_vsis);
-		return;
-	}
-
-	status = ice_move_vsi_to_agg(pf->hw.port_info, vsi->agg_node->agg_id,
-				     vsi->idx, vsi->tc_cfg.ena_tc);
-	if (status)
-		dev_dbg(dev, "unable to move VSI idx %u into aggregator %u node",
-			vsi->idx, vsi->agg_node->agg_id);
-	else
-		vsi->agg_node->num_vsis++;
-}
-
-/**
- * ice_vf_rebuild_host_cfg - host admin configuration is persistent across reset
- * @vf: VF to rebuild host configuration on
- */
-static void ice_vf_rebuild_host_cfg(struct ice_vf *vf)
-{
-	struct device *dev = ice_pf_to_dev(vf->pf);
-	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
-
-	ice_vf_set_host_trust_cfg(vf);
-
-	if (ice_vf_rebuild_host_mac_cfg(vf))
-		dev_err(dev, "failed to rebuild default MAC configuration for VF %d\n",
-			vf->vf_id);
-
-	if (ice_vf_rebuild_host_vlan_cfg(vf, vsi))
-		dev_err(dev, "failed to rebuild VLAN configuration for VF %u\n",
-			vf->vf_id);
-
-	if (ice_vf_rebuild_host_tx_rate_cfg(vf))
-		dev_err(dev, "failed to rebuild Tx rate limiting configuration for VF %u\n",
-			vf->vf_id);
-
-	if (ice_vsi_apply_spoofchk(vsi, vf->spoofchk))
-		dev_err(dev, "failed to rebuild spoofchk configuration for VF %d\n",
-			vf->vf_id);
-
-	/* rebuild aggregator node config for main VF VSI */
-	ice_vf_rebuild_aggregator_node_cfg(vsi);
-}
-
-/**
- * ice_vf_rebuild_vsi - rebuild the VF's VSI
- * @vf: VF to rebuild the VSI for
- *
- * This is only called when all VF(s) are being reset (i.e. PCIe Reset on the
- * host, PFR, CORER, etc.).
- */
-static int ice_vf_rebuild_vsi(struct ice_vf *vf)
-{
-	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
-	struct ice_pf *pf = vf->pf;
-
-	if (ice_vsi_rebuild(vsi, true)) {
-		dev_err(ice_pf_to_dev(pf), "failed to rebuild VF %d VSI\n",
-			vf->vf_id);
-		return -EIO;
-	}
-	/* vsi->idx will remain the same in this case so don't update
-	 * vf->lan_vsi_idx
-	 */
-	vsi->vsi_num = ice_get_hw_vsi_num(&pf->hw, vsi->idx);
-	vf->lan_vsi_num = vsi->vsi_num;
-
-	return 0;
-}
-
-/**
- * ice_reset_all_vfs - reset all allocated VFs in one go
- * @pf: pointer to the PF structure
- * @is_vflr: true if VFLR was issued, false if not
- *
- * First, tell the hardware to reset each VF, then do all the waiting in one
- * chunk, and finally finish restoring each VF after the wait. This is useful
- * during PF routines which need to reset all VFs, as otherwise it must perform
- * these resets in a serialized fashion.
- *
- * Returns true if any VFs were reset, and false otherwise.
- */
-bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
-{
-	struct device *dev = ice_pf_to_dev(pf);
-	struct ice_hw *hw = &pf->hw;
-	struct ice_vf *vf;
-	unsigned int bkt;
-
-	/* If we don't have any VFs, then there is nothing to reset */
-	if (!ice_has_vfs(pf))
-		return false;
-
-	mutex_lock(&pf->vfs.table_lock);
-
-	/* clear all malicious info if the VFs are getting reset */
-	ice_for_each_vf(pf, bkt, vf)
-		if (ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->vfs.malvfs,
-					ICE_MAX_SRIOV_VFS, vf->vf_id))
-			dev_dbg(dev, "failed to clear malicious VF state for VF %u\n",
-				vf->vf_id);
-
-	/* If VFs have been disabled, there is no need to reset */
-	if (test_and_set_bit(ICE_VF_DIS, pf->state)) {
-		mutex_unlock(&pf->vfs.table_lock);
-		return false;
-	}
-
-	/* Begin reset on all VFs at once */
-	ice_for_each_vf(pf, bkt, vf)
-		ice_trigger_vf_reset(vf, is_vflr, true);
-
-	/* HW requires some time to make sure it can flush the FIFO for a VF
-	 * when it resets it. Now that we've triggered all of the VFs, iterate
-	 * the table again and wait for each VF to complete.
-	 */
-	ice_for_each_vf(pf, bkt, vf) {
-		if (!vf->vf_ops->poll_reset_status(vf)) {
-			/* Display a warning if at least one VF didn't manage
-			 * to reset in time, but continue on with the
-			 * operation.
-			 */
-			dev_warn(dev, "VF %u reset check timeout\n", vf->vf_id);
-			break;
-		}
-	}
-
-	/* free VF resources to begin resetting the VSI state */
-	ice_for_each_vf(pf, bkt, vf) {
-		mutex_lock(&vf->cfg_lock);
-
-		vf->driver_caps = 0;
-		ice_vc_set_default_allowlist(vf);
-
-		ice_vf_fdir_exit(vf);
-		ice_vf_fdir_init(vf);
-		/* clean VF control VSI when resetting VFs since it should be
-		 * setup only when VF creates its first FDIR rule.
-		 */
-		if (vf->ctrl_vsi_idx != ICE_NO_VSI)
-			ice_vf_ctrl_invalidate_vsi(vf);
-
-		ice_vf_pre_vsi_rebuild(vf);
-		ice_vf_rebuild_vsi(vf);
-		vf->vf_ops->post_vsi_rebuild(vf);
-
-		mutex_unlock(&vf->cfg_lock);
-	}
-
-	if (ice_is_eswitch_mode_switchdev(pf))
-		if (ice_eswitch_rebuild(pf))
-			dev_warn(dev, "eswitch rebuild failed\n");
-
-	ice_flush(hw);
-	clear_bit(ICE_VF_DIS, pf->state);
-
-	mutex_unlock(&pf->vfs.table_lock);
-
-	return true;
-}
-
-/**
- * ice_reset_vf - Reset a particular VF
- * @vf: pointer to the VF structure
- * @is_vflr: true if VFLR was issued, false if not
- *
- * Returns true if the VF is currently in reset, resets successfully, or resets
- * are disabled and false otherwise.
- */
-bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
-{
-	struct ice_pf *pf = vf->pf;
-	struct ice_vsi *vsi;
-	struct device *dev;
-	struct ice_hw *hw;
-	u8 promisc_m;
-	bool rsd;
-
-	lockdep_assert_held(&vf->cfg_lock);
-
-	dev = ice_pf_to_dev(pf);
-	hw = &pf->hw;
-
-	if (test_bit(ICE_VF_RESETS_DISABLED, pf->state)) {
-		dev_dbg(dev, "Trying to reset VF %d, but all VF resets are disabled\n",
-			vf->vf_id);
-		return true;
-	}
-
-	if (ice_is_vf_disabled(vf)) {
-		dev_dbg(dev, "VF is already disabled, there is no need for resetting it, telling VM, all is fine %d\n",
-			vf->vf_id);
-		return true;
-	}
-
-	/* Set VF disable bit state here, before triggering reset */
-	set_bit(ICE_VF_STATE_DIS, vf->vf_states);
-	ice_trigger_vf_reset(vf, is_vflr, false);
-
-	vsi = ice_get_vf_vsi(vf);
-
-	ice_dis_vf_qs(vf);
-
-	/* Call Disable LAN Tx queue AQ whether or not queues are
-	 * enabled. This is needed for successful completion of VFR.
-	 */
-	ice_dis_vsi_txq(vsi->port_info, vsi->idx, 0, 0, NULL, NULL,
-			NULL, vf->vf_ops->reset_type, vf->vf_id, NULL);
-
-	/* poll VPGEN_VFRSTAT reg to make sure
-	 * that reset is complete
-	 */
-	rsd = vf->vf_ops->poll_reset_status(vf);
-
-	/* Display a warning if VF didn't manage to reset in time, but need to
-	 * continue on with the operation.
-	 */
-	if (!rsd)
-		dev_warn(dev, "VF reset check timeout on VF %d\n", vf->vf_id);
-
-	vf->driver_caps = 0;
-	ice_vc_set_default_allowlist(vf);
-
-	/* disable promiscuous modes in case they were enabled
-	 * ignore any error if disabling process failed
-	 */
-	if (test_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states) ||
-	    test_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states)) {
-		if (ice_vf_is_port_vlan_ena(vf) || vsi->num_vlan)
-			promisc_m = ICE_UCAST_VLAN_PROMISC_BITS;
-		else
-			promisc_m = ICE_UCAST_PROMISC_BITS;
-
-		if (ice_vf_clear_vsi_promisc(vf, vsi, promisc_m))
-			dev_err(dev, "disabling promiscuous mode failed\n");
-	}
-
-	ice_eswitch_del_vf_mac_rule(vf);
-
-	ice_vf_fdir_exit(vf);
-	ice_vf_fdir_init(vf);
-	/* clean VF control VSI when resetting VF since it should be setup
-	 * only when VF creates its first FDIR rule.
-	 */
-	if (vf->ctrl_vsi_idx != ICE_NO_VSI)
-		ice_vf_ctrl_vsi_release(vf);
-
-	ice_vf_pre_vsi_rebuild(vf);
-
-	if (vf->vf_ops->vsi_rebuild(vf)) {
-		dev_err(dev, "Failed to release and setup the VF%u's VSI\n",
-			vf->vf_id);
-		return false;
-	}
-
-	vf->vf_ops->post_vsi_rebuild(vf);
-	vsi = ice_get_vf_vsi(vf);
-	ice_eswitch_update_repr(vsi);
-	ice_eswitch_replay_vf_mac_rule(vf);
-
-	/* if the VF has been reset allow it to come up again */
-	if (ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->vfs.malvfs,
-				ICE_MAX_SRIOV_VFS, vf->vf_id))
-		dev_dbg(dev, "failed to clear malicious VF state for VF %u\n",
-			vf->vf_id);
-
-	return true;
-}
-
 /**
  * ice_vc_notify_link_state - Inform all VFs on a PF of link status
  * @pf: pointer to the PF structure
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.h b/drivers/net/ethernet/intel/ice/ice_sriov.h
index d3456eeccf58..8f0b3789ba4b 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.h
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.h
@@ -78,8 +78,6 @@ void ice_vc_notify_reset(struct ice_pf *pf);
 void ice_vc_notify_vf_link_state(struct ice_vf *vf);
 void ice_virtchnl_set_repr_ops(struct ice_vf *vf);
 void ice_virtchnl_set_dflt_ops(struct ice_vf *vf);
-bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr);
-bool ice_reset_vf(struct ice_vf *vf, bool is_vflr);
 void ice_restore_all_vfs_msi_state(struct pci_dev *pdev);
 bool
 ice_is_malicious_vf(struct ice_pf *pf, struct ice_rq_event_info *event,
@@ -139,19 +137,6 @@ ice_is_malicious_vf(struct ice_pf __always_unused *pf,
 	return false;
 }
 
-static inline bool
-ice_reset_all_vfs(struct ice_pf __always_unused *pf,
-		  bool __always_unused is_vflr)
-{
-	return true;
-}
-
-static inline bool
-ice_reset_vf(struct ice_vf __always_unused *vf, bool __always_unused is_vflr)
-{
-	return true;
-}
-
 static inline int
 ice_sriov_configure(struct pci_dev __always_unused *pdev,
 		    int __always_unused num_vfs)
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 6fee0a12c996..282be49dbfed 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -188,6 +188,86 @@ int ice_check_vf_ready_for_cfg(struct ice_vf *vf)
 	return 0;
 }
 
+/**
+ * ice_trigger_vf_reset - Reset a VF on HW
+ * @vf: pointer to the VF structure
+ * @is_vflr: true if VFLR was issued, false if not
+ * @is_pfr: true if the reset was triggered due to a previous PFR
+ *
+ * Trigger hardware to start a reset for a particular VF. Expects the caller
+ * to wait the proper amount of time to allow hardware to reset the VF before
+ * it cleans up and restores VF functionality.
+ */
+static void ice_trigger_vf_reset(struct ice_vf *vf, bool is_vflr, bool is_pfr)
+{
+	/* Inform VF that it is no longer active, as a warning */
+	clear_bit(ICE_VF_STATE_ACTIVE, vf->vf_states);
+
+	/* Disable VF's configuration API during reset. The flag is re-enabled
+	 * when it's safe again to access VF's VSI.
+	 */
+	clear_bit(ICE_VF_STATE_INIT, vf->vf_states);
+
+	/* VF_MBX_ARQLEN and VF_MBX_ATQLEN are cleared by PFR, so the driver
+	 * needs to clear them in the case of VFR/VFLR. If this is done for
+	 * PFR, it can mess up VF resets because the VF driver may already
+	 * have started cleanup by the time we get here.
+	 */
+	if (!is_pfr)
+		vf->vf_ops->clear_mbx_register(vf);
+
+	vf->vf_ops->trigger_reset_register(vf, is_vflr);
+}
+
+static void ice_vf_clear_counters(struct ice_vf *vf)
+{
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
+
+	vf->num_mac = 0;
+	vsi->num_vlan = 0;
+	memset(&vf->mdd_tx_events, 0, sizeof(vf->mdd_tx_events));
+	memset(&vf->mdd_rx_events, 0, sizeof(vf->mdd_rx_events));
+}
+
+/**
+ * ice_vf_pre_vsi_rebuild - tasks to be done prior to VSI rebuild
+ * @vf: VF to perform pre VSI rebuild tasks
+ *
+ * These tasks are items that don't need to be amortized since they are most
+ * likely called in a for loop with all VF(s) in the reset_all_vfs() case.
+ */
+static void ice_vf_pre_vsi_rebuild(struct ice_vf *vf)
+{
+	ice_vf_clear_counters(vf);
+	vf->vf_ops->clear_reset_trigger(vf);
+}
+
+/**
+ * ice_vf_rebuild_vsi - rebuild the VF's VSI
+ * @vf: VF to rebuild the VSI for
+ *
+ * This is only called when all VF(s) are being reset (i.e. PCIe Reset on the
+ * host, PFR, CORER, etc.).
+ */
+static int ice_vf_rebuild_vsi(struct ice_vf *vf)
+{
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
+	struct ice_pf *pf = vf->pf;
+
+	if (ice_vsi_rebuild(vsi, true)) {
+		dev_err(ice_pf_to_dev(pf), "failed to rebuild VF %d VSI\n",
+			vf->vf_id);
+		return -EIO;
+	}
+	/* vsi->idx will remain the same in this case so don't update
+	 * vf->lan_vsi_idx
+	 */
+	vsi->vsi_num = ice_get_hw_vsi_num(&pf->hw, vsi->idx);
+	vf->lan_vsi_num = vsi->vsi_num;
+
+	return 0;
+}
+
 /**
  * ice_is_any_vf_in_promisc - check if any VF(s) are in promiscuous mode
  * @pf: PF structure for accessing VF(s)
@@ -273,6 +353,205 @@ ice_vf_clear_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m)
 	return 0;
 }
 
+/**
+ * ice_reset_all_vfs - reset all allocated VFs in one go
+ * @pf: pointer to the PF structure
+ * @is_vflr: true if VFLR was issued, false if not
+ *
+ * First, tell the hardware to reset each VF, then do all the waiting in one
+ * chunk, and finally finish restoring each VF after the wait. This is useful
+ * during PF routines which need to reset all VFs, as otherwise it must perform
+ * these resets in a serialized fashion.
+ *
+ * Returns true if any VFs were reset, and false otherwise.
+ */
+bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_hw *hw = &pf->hw;
+	struct ice_vf *vf;
+	unsigned int bkt;
+
+	/* If we don't have any VFs, then there is nothing to reset */
+	if (!ice_has_vfs(pf))
+		return false;
+
+	mutex_lock(&pf->vfs.table_lock);
+
+	/* clear all malicious info if the VFs are getting reset */
+	ice_for_each_vf(pf, bkt, vf)
+		if (ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->vfs.malvfs,
+					ICE_MAX_SRIOV_VFS, vf->vf_id))
+			dev_dbg(dev, "failed to clear malicious VF state for VF %u\n",
+				vf->vf_id);
+
+	/* If VFs have been disabled, there is no need to reset */
+	if (test_and_set_bit(ICE_VF_DIS, pf->state)) {
+		mutex_unlock(&pf->vfs.table_lock);
+		return false;
+	}
+
+	/* Begin reset on all VFs at once */
+	ice_for_each_vf(pf, bkt, vf)
+		ice_trigger_vf_reset(vf, is_vflr, true);
+
+	/* HW requires some time to make sure it can flush the FIFO for a VF
+	 * when it resets it. Now that we've triggered all of the VFs, iterate
+	 * the table again and wait for each VF to complete.
+	 */
+	ice_for_each_vf(pf, bkt, vf) {
+		if (!vf->vf_ops->poll_reset_status(vf)) {
+			/* Display a warning if at least one VF didn't manage
+			 * to reset in time, but continue on with the
+			 * operation.
+			 */
+			dev_warn(dev, "VF %u reset check timeout\n", vf->vf_id);
+			break;
+		}
+	}
+
+	/* free VF resources to begin resetting the VSI state */
+	ice_for_each_vf(pf, bkt, vf) {
+		mutex_lock(&vf->cfg_lock);
+
+		vf->driver_caps = 0;
+		ice_vc_set_default_allowlist(vf);
+
+		ice_vf_fdir_exit(vf);
+		ice_vf_fdir_init(vf);
+		/* clean VF control VSI when resetting VFs since it should be
+		 * setup only when VF creates its first FDIR rule.
+		 */
+		if (vf->ctrl_vsi_idx != ICE_NO_VSI)
+			ice_vf_ctrl_invalidate_vsi(vf);
+
+		ice_vf_pre_vsi_rebuild(vf);
+		ice_vf_rebuild_vsi(vf);
+		vf->vf_ops->post_vsi_rebuild(vf);
+
+		mutex_unlock(&vf->cfg_lock);
+	}
+
+	if (ice_is_eswitch_mode_switchdev(pf))
+		if (ice_eswitch_rebuild(pf))
+			dev_warn(dev, "eswitch rebuild failed\n");
+
+	ice_flush(hw);
+	clear_bit(ICE_VF_DIS, pf->state);
+
+	mutex_unlock(&pf->vfs.table_lock);
+
+	return true;
+}
+
+/**
+ * ice_reset_vf - Reset a particular VF
+ * @vf: pointer to the VF structure
+ * @is_vflr: true if VFLR was issued, false if not
+ *
+ * Returns true if the VF is currently in reset, resets successfully, or resets
+ * are disabled and false otherwise.
+ */
+bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
+{
+	struct ice_pf *pf = vf->pf;
+	struct ice_vsi *vsi;
+	struct device *dev;
+	struct ice_hw *hw;
+	u8 promisc_m;
+	bool rsd;
+
+	lockdep_assert_held(&vf->cfg_lock);
+
+	dev = ice_pf_to_dev(pf);
+	hw = &pf->hw;
+
+	if (test_bit(ICE_VF_RESETS_DISABLED, pf->state)) {
+		dev_dbg(dev, "Trying to reset VF %d, but all VF resets are disabled\n",
+			vf->vf_id);
+		return true;
+	}
+
+	if (ice_is_vf_disabled(vf)) {
+		dev_dbg(dev, "VF is already disabled, there is no need for resetting it, telling VM, all is fine %d\n",
+			vf->vf_id);
+		return true;
+	}
+
+	/* Set VF disable bit state here, before triggering reset */
+	set_bit(ICE_VF_STATE_DIS, vf->vf_states);
+	ice_trigger_vf_reset(vf, is_vflr, false);
+
+	vsi = ice_get_vf_vsi(vf);
+
+	ice_dis_vf_qs(vf);
+
+	/* Call Disable LAN Tx queue AQ whether or not queues are
+	 * enabled. This is needed for successful completion of VFR.
+	 */
+	ice_dis_vsi_txq(vsi->port_info, vsi->idx, 0, 0, NULL, NULL,
+			NULL, vf->vf_ops->reset_type, vf->vf_id, NULL);
+
+	/* poll VPGEN_VFRSTAT reg to make sure
+	 * that reset is complete
+	 */
+	rsd = vf->vf_ops->poll_reset_status(vf);
+
+	/* Display a warning if VF didn't manage to reset in time, but need to
+	 * continue on with the operation.
+	 */
+	if (!rsd)
+		dev_warn(dev, "VF reset check timeout on VF %d\n", vf->vf_id);
+
+	vf->driver_caps = 0;
+	ice_vc_set_default_allowlist(vf);
+
+	/* disable promiscuous modes in case they were enabled
+	 * ignore any error if disabling process failed
+	 */
+	if (test_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states) ||
+	    test_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states)) {
+		if (ice_vf_is_port_vlan_ena(vf) || vsi->num_vlan)
+			promisc_m = ICE_UCAST_VLAN_PROMISC_BITS;
+		else
+			promisc_m = ICE_UCAST_PROMISC_BITS;
+
+		if (ice_vf_clear_vsi_promisc(vf, vsi, promisc_m))
+			dev_err(dev, "disabling promiscuous mode failed\n");
+	}
+
+	ice_eswitch_del_vf_mac_rule(vf);
+
+	ice_vf_fdir_exit(vf);
+	ice_vf_fdir_init(vf);
+	/* clean VF control VSI when resetting VF since it should be setup
+	 * only when VF creates its first FDIR rule.
+	 */
+	if (vf->ctrl_vsi_idx != ICE_NO_VSI)
+		ice_vf_ctrl_vsi_release(vf);
+
+	ice_vf_pre_vsi_rebuild(vf);
+
+	if (vf->vf_ops->vsi_rebuild(vf)) {
+		dev_err(dev, "Failed to release and setup the VF%u's VSI\n",
+			vf->vf_id);
+		return false;
+	}
+
+	vf->vf_ops->post_vsi_rebuild(vf);
+	vsi = ice_get_vf_vsi(vf);
+	ice_eswitch_update_repr(vsi);
+	ice_eswitch_replay_vf_mac_rule(vf);
+
+	/* if the VF has been reset allow it to come up again */
+	if (ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->vfs.malvfs,
+				ICE_MAX_SRIOV_VFS, vf->vf_id))
+		dev_dbg(dev, "failed to clear malicious VF state for VF %u\n",
+			vf->vf_id);
+
+	return true;
+}
+
 /**
  * ice_set_vf_state_qs_dis - Set VF queues state to disabled
  * @vf: pointer to the VF structure
@@ -448,6 +727,202 @@ bool ice_is_vf_link_up(struct ice_vf *vf)
 			ICE_AQ_LINK_UP;
 }
 
+/**
+ * ice_vf_set_host_trust_cfg - set trust setting based on pre-reset value
+ * @vf: VF to configure trust setting for
+ */
+static void ice_vf_set_host_trust_cfg(struct ice_vf *vf)
+{
+	if (vf->trusted)
+		set_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
+	else
+		clear_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
+}
+
+/**
+ * ice_vf_rebuild_host_mac_cfg - add broadcast and the VF's perm_addr/LAA
+ * @vf: VF to add MAC filters for
+ *
+ * Called after a VF VSI has been re-added/rebuilt during reset. The PF driver
+ * always re-adds a broadcast filter and the VF's perm_addr/LAA after reset.
+ */
+static int ice_vf_rebuild_host_mac_cfg(struct ice_vf *vf)
+{
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
+	u8 broadcast[ETH_ALEN];
+	int status;
+
+	if (ice_is_eswitch_mode_switchdev(vf->pf))
+		return 0;
+
+	eth_broadcast_addr(broadcast);
+	status = ice_fltr_add_mac(vsi, broadcast, ICE_FWD_TO_VSI);
+	if (status) {
+		dev_err(dev, "failed to add broadcast MAC filter for VF %u, error %d\n",
+			vf->vf_id, status);
+		return status;
+	}
+
+	vf->num_mac++;
+
+	if (is_valid_ether_addr(vf->hw_lan_addr.addr)) {
+		status = ice_fltr_add_mac(vsi, vf->hw_lan_addr.addr,
+					  ICE_FWD_TO_VSI);
+		if (status) {
+			dev_err(dev, "failed to add default unicast MAC filter %pM for VF %u, error %d\n",
+				&vf->hw_lan_addr.addr[0], vf->vf_id,
+				status);
+			return status;
+		}
+		vf->num_mac++;
+
+		ether_addr_copy(vf->dev_lan_addr.addr, vf->hw_lan_addr.addr);
+	}
+
+	return 0;
+}
+
+/**
+ * ice_vf_rebuild_host_vlan_cfg - add VLAN 0 filter or rebuild the Port VLAN
+ * @vf: VF to add MAC filters for
+ * @vsi: Pointer to VSI
+ *
+ * Called after a VF VSI has been re-added/rebuilt during reset. The PF driver
+ * always re-adds either a VLAN 0 or port VLAN based filter after reset.
+ */
+static int ice_vf_rebuild_host_vlan_cfg(struct ice_vf *vf, struct ice_vsi *vsi)
+{
+	struct ice_vsi_vlan_ops *vlan_ops = ice_get_compat_vsi_vlan_ops(vsi);
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	int err;
+
+	if (ice_vf_is_port_vlan_ena(vf)) {
+		err = vlan_ops->set_port_vlan(vsi, &vf->port_vlan_info);
+		if (err) {
+			dev_err(dev, "failed to configure port VLAN via VSI parameters for VF %u, error %d\n",
+				vf->vf_id, err);
+			return err;
+		}
+
+		err = vlan_ops->add_vlan(vsi, &vf->port_vlan_info);
+	} else {
+		err = ice_vsi_add_vlan_zero(vsi);
+	}
+
+	if (err) {
+		dev_err(dev, "failed to add VLAN %u filter for VF %u during VF rebuild, error %d\n",
+			ice_vf_is_port_vlan_ena(vf) ?
+			ice_vf_get_port_vlan_id(vf) : 0, vf->vf_id, err);
+		return err;
+	}
+
+	err = vlan_ops->ena_rx_filtering(vsi);
+	if (err)
+		dev_warn(dev, "failed to enable Rx VLAN filtering for VF %d VSI %d during VF rebuild, error %d\n",
+			 vf->vf_id, vsi->idx, err);
+
+	return 0;
+}
+
+/**
+ * ice_vf_rebuild_host_tx_rate_cfg - re-apply the Tx rate limiting configuration
+ * @vf: VF to re-apply the configuration for
+ *
+ * Called after a VF VSI has been re-added/rebuild during reset. The PF driver
+ * needs to re-apply the host configured Tx rate limiting configuration.
+ */
+static int ice_vf_rebuild_host_tx_rate_cfg(struct ice_vf *vf)
+{
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
+	int err;
+
+	if (vf->min_tx_rate) {
+		err = ice_set_min_bw_limit(vsi, (u64)vf->min_tx_rate * 1000);
+		if (err) {
+			dev_err(dev, "failed to set min Tx rate to %d Mbps for VF %u, error %d\n",
+				vf->min_tx_rate, vf->vf_id, err);
+			return err;
+		}
+	}
+
+	if (vf->max_tx_rate) {
+		err = ice_set_max_bw_limit(vsi, (u64)vf->max_tx_rate * 1000);
+		if (err) {
+			dev_err(dev, "failed to set max Tx rate to %d Mbps for VF %u, error %d\n",
+				vf->max_tx_rate, vf->vf_id, err);
+			return err;
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * ice_vf_rebuild_aggregator_node_cfg - rebuild aggregator node config
+ * @vsi: Pointer to VSI
+ *
+ * This function moves VSI into corresponding scheduler aggregator node
+ * based on cached value of "aggregator node info" per VSI
+ */
+static void ice_vf_rebuild_aggregator_node_cfg(struct ice_vsi *vsi)
+{
+	struct ice_pf *pf = vsi->back;
+	struct device *dev;
+	int status;
+
+	if (!vsi->agg_node)
+		return;
+
+	dev = ice_pf_to_dev(pf);
+	if (vsi->agg_node->num_vsis == ICE_MAX_VSIS_IN_AGG_NODE) {
+		dev_dbg(dev,
+			"agg_id %u already has reached max_num_vsis %u\n",
+			vsi->agg_node->agg_id, vsi->agg_node->num_vsis);
+		return;
+	}
+
+	status = ice_move_vsi_to_agg(pf->hw.port_info, vsi->agg_node->agg_id,
+				     vsi->idx, vsi->tc_cfg.ena_tc);
+	if (status)
+		dev_dbg(dev, "unable to move VSI idx %u into aggregator %u node",
+			vsi->idx, vsi->agg_node->agg_id);
+	else
+		vsi->agg_node->num_vsis++;
+}
+
+/**
+ * ice_vf_rebuild_host_cfg - host admin configuration is persistent across reset
+ * @vf: VF to rebuild host configuration on
+ */
+void ice_vf_rebuild_host_cfg(struct ice_vf *vf)
+{
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
+
+	ice_vf_set_host_trust_cfg(vf);
+
+	if (ice_vf_rebuild_host_mac_cfg(vf))
+		dev_err(dev, "failed to rebuild default MAC configuration for VF %d\n",
+			vf->vf_id);
+
+	if (ice_vf_rebuild_host_vlan_cfg(vf, vsi))
+		dev_err(dev, "failed to rebuild VLAN configuration for VF %u\n",
+			vf->vf_id);
+
+	if (ice_vf_rebuild_host_tx_rate_cfg(vf))
+		dev_err(dev, "failed to rebuild Tx rate limiting configuration for VF %u\n",
+			vf->vf_id);
+
+	if (ice_vsi_apply_spoofchk(vsi, vf->spoofchk))
+		dev_err(dev, "failed to rebuild spoofchk configuration for VF %d\n",
+			vf->vf_id);
+
+	/* rebuild aggregator node config for main VF VSI */
+	ice_vf_rebuild_aggregator_node_cfg(vsi);
+}
+
 /**
  * ice_vf_ctrl_invalidate_vsi - invalidate ctrl_vsi_idx to remove VSI access
  * @vf: VF that control VSI is being invalidated on
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 871ddf293709..2a971e48b1cc 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -212,6 +212,8 @@ int
 ice_vf_set_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m);
 int
 ice_vf_clear_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m);
+bool ice_reset_vf(struct ice_vf *vf, bool is_vflr);
+bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr);
 #else /* CONFIG_PCI_IOV */
 static inline struct ice_vf *ice_get_vf_by_id(struct ice_pf *pf, u16 vf_id)
 {
@@ -267,6 +269,16 @@ ice_vf_clear_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m)
 {
 	return -EOPNOTSUPP;
 }
+
+static inline bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
+{
+	return true;
+}
+
+static inline bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
+{
+	return true;
+}
 #endif /* !CONFIG_PCI_IOV */
 
 #endif /* _ICE_VF_LIB_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h b/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
index 93daf74c928c..e9374693496e 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
@@ -30,6 +30,7 @@ int ice_vsi_apply_spoofchk(struct ice_vsi *vsi, bool enable);
 bool ice_is_vf_trusted(struct ice_vf *vf);
 bool ice_vf_has_no_qs_ena(struct ice_vf *vf);
 bool ice_is_vf_link_up(struct ice_vf *vf);
+void ice_vf_rebuild_host_cfg(struct ice_vf *vf);
 void ice_vf_ctrl_invalidate_vsi(struct ice_vf *vf);
 void ice_vf_ctrl_vsi_release(struct ice_vf *vf);
 struct ice_vsi *ice_vf_ctrl_vsi_setup(struct ice_vf *vf);
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
