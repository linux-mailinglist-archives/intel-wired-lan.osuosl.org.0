Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 233031D5D6D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:54:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BD4F587DFE;
	Sat, 16 May 2020 00:54:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uGMmGAzkQfv2; Sat, 16 May 2020 00:54:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C7B5B890BB;
	Sat, 16 May 2020 00:54:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DF36C1BF9CC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:53:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DAF3F87F7D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:53:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x5YL9Jgstr4Y for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:53:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8FAD487F93
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:53:55 +0000 (UTC)
IronPort-SDR: TV3H7UEteUC+ClEdFBDjfQBPWOJsKNZ7WUMDhuBcSvo7QgqOrfSTGF+P/FeNjImxq5/8y94F1I
 aI+5+oysqyjw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:53:54 -0700
IronPort-SDR: LGShaQI+SJfns+SKAYiIgCCgj1t5KgQ2jRHeKIhqUCPV5pcILbQezAcLKDLKwSr/VlG0Z+sgiV
 1/nG6bH9ebcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="263360545"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga003.jf.intel.com with ESMTP; 15 May 2020 17:53:54 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:51:15 -0700
Message-Id: <20200516005121.4963-9-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
References: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S45 09/15] ice: Refactor VF reset
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

From: Brett Creeley <brett.creeley@intel.com>

Currently VF VSI are being reset twice during a PFR or greater. This is
causing reset, specifically resetting all VFs, to take too long. This is
causing various issues with VF drivers not being able to gracefully
handle the VF reset timeout. Fix this by refactoring how VF reset is
handled for the case mentioned previously and for the VFR/VFLR case.

The refactor was done by doing the following:

1. Removing the call to ice_vsi_rebuild_by_type for
   ICE_VSI_VF VSI, which was causing the initial VSI rebuild.

2. Adding functions for pre/post VSI rebuild functions that can be called
   in both the reset all VFs case and reset individual VF case.

3. Adding VSI rebuild functions that are specific for the reset all VFs
   case and adding functions that are specific for the reset individual
   VF case.

4. Calling the pre-rebuild function, then the specific VSI rebuild
   function based on the reset type, and then calling the post-rebuild
   function to handle VF resets.

This patch series makes some assumptions about how VSI are handling by
FW during reset:

1. During a PFR or greater all VSI in FW will be cleared.
2. During a VFR/VFLR the VSI rebuild responsibility is in the hands of
   the PF software.
3. There is code in the ice_reset_all_vfs() case to amortize operations
   if possible. This was left intact.
4. PF software should not be replaying VSI based filters that were added
   other than host configured, PF software configured, or the VF's
   default/LAA MAC. This is the VF drivers job after it has been reset.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c     |  12 +-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 304 +++++++-----------
 2 files changed, 130 insertions(+), 186 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 14aa02b000cc..4107f6982543 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4959,6 +4959,11 @@ static void ice_update_pf_netdev_link(struct ice_pf *pf)
  * ice_rebuild - rebuild after reset
  * @pf: PF to rebuild
  * @reset_type: type of reset
+ *
+ * Do not rebuild VF VSI in this flow because that is already handled via
+ * ice_reset_all_vfs(). This is because requirements for resetting a VF after a
+ * PFR/CORER/GLOBER/etc. are different than the normal flow. Also, we don't want
+ * to reset/rebuild all the VF VSI twice.
  */
 static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 {
@@ -5064,13 +5069,6 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 		}
 		ice_for_each_peer(pf, vsi, ice_peer_update_vsi);
 	}
-	if (test_bit(ICE_FLAG_SRIOV_ENA, pf->flags)) {
-		err = ice_vsi_rebuild_by_type(pf, ICE_VSI_VF);
-		if (err) {
-			dev_err(dev, "VF VSI rebuild failed: %d\n", err);
-			goto err_vsi_rebuild;
-		}
-	}
 
 	/* If Flow Director is active */
 	if (test_bit(ICE_FLAG_FD_ENA, pf->flags)) {
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 5a04589f76f2..9cd9904815b9 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -413,10 +413,7 @@ static void ice_trigger_vf_reset(struct ice_vf *vf, bool is_vflr, bool is_pfr)
 	clear_bit(ICE_VF_STATE_ACTIVE, vf->vf_states);
 
 	/* Disable VF's configuration API during reset. The flag is re-enabled
-	 * in ice_alloc_vf_res(), when it's safe again to access VF's VSI.
-	 * It's normally disabled in ice_free_vf_res(), but it's safer
-	 * to do it earlier to give some time to finish to any VF config
-	 * functions that may still be running at this point.
+	 * when it's safe again to access VF's VSI.
 	 */
 	clear_bit(ICE_VF_STATE_INIT, vf->vf_states);
 
@@ -616,57 +613,6 @@ static int ice_vf_rebuild_host_mac_cfg(struct ice_vf *vf)
 	return 0;
 }
 
-/**
- * ice_alloc_vsi_res - Setup VF VSI and its resources
- * @vf: pointer to the VF structure
- *
- * Returns 0 on success, negative value on failure
- */
-static int ice_alloc_vsi_res(struct ice_vf *vf)
-{
-	struct ice_pf *pf = vf->pf;
-	struct ice_vsi *vsi;
-	struct device *dev;
-	int ret;
-
-	dev = ice_pf_to_dev(pf);
-	/* first vector index is the VFs OICR index */
-	vf->first_vector_idx = ice_calc_vf_first_vector_idx(pf, vf);
-
-	vsi = ice_vf_vsi_setup(pf, pf->hw.port_info, vf->vf_id);
-	if (!vsi) {
-		dev_err(dev, "Failed to create VF VSI\n");
-		return -ENOMEM;
-	}
-
-	vf->lan_vsi_idx = vsi->idx;
-	vf->lan_vsi_num = vsi->vsi_num;
-
-	ret = ice_vf_rebuild_host_vlan_cfg(vf);
-	if (ret) {
-		dev_err(dev, "failed to rebuild default MAC configuration for VF %d, error %d\n",
-			vf->vf_id, ret);
-		goto ice_alloc_vsi_res_exit;
-	}
-
-
-	ret = ice_vf_rebuild_host_mac_cfg(vf);
-	if (ret) {
-		dev_err(dev, "failed to rebuild default MAC configuration for VF %d, error %d\n",
-			vf->vf_id, ret);
-		goto ice_alloc_vsi_res_exit;
-	}
-
-	/* Clear this bit after VF initialization since we shouldn't reclaim
-	 * and reassign interrupts for synchronous or asynchronous VFR events.
-	 * We don't want to reconfigure interrupts since AVF driver doesn't
-	 * expect vector assignment to be changed unless there is a request for
-	 * more vectors.
-	 */
-ice_alloc_vsi_res_exit:
-	return ret;
-}
-
 /**
  * ice_vf_set_host_trust_cfg - set trust setting based on pre-reset value
  * @vf: VF to configure trust setting for
@@ -679,43 +625,6 @@ static void ice_vf_set_host_trust_cfg(struct ice_vf *vf)
 		clear_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
 }
 
-/**
- * ice_alloc_vf_res - Allocate VF resources
- * @vf: pointer to the VF structure
- */
-static int ice_alloc_vf_res(struct ice_vf *vf)
-{
-	struct ice_pf *pf = vf->pf;
-	int tx_rx_queue_left;
-	int status;
-
-	/* Update number of VF queues, in case VF had requested for queue
-	 * changes
-	 */
-	tx_rx_queue_left = min_t(int, ice_get_avail_txq_count(pf),
-				 ice_get_avail_rxq_count(pf));
-	tx_rx_queue_left += pf->num_qps_per_vf;
-	if (vf->num_req_qs && vf->num_req_qs <= tx_rx_queue_left &&
-	    vf->num_req_qs != vf->num_vf_qs)
-		vf->num_vf_qs = vf->num_req_qs;
-
-	/* setup VF VSI and necessary resources */
-	status = ice_alloc_vsi_res(vf);
-	if (status)
-		goto ice_alloc_vf_res_exit;
-
-	ice_vf_set_host_trust_cfg(vf);
-
-	/* VF is now completely initialized */
-	set_bit(ICE_VF_STATE_INIT, vf->vf_states);
-
-	return status;
-
-ice_alloc_vf_res_exit:
-	ice_free_vf_res(vf);
-	return status;
-}
-
 /**
  * ice_ena_vf_msix_mappings - enable VF MSIX mappings in hardware
  * @vf: VF to enable MSIX mappings for
@@ -1042,48 +951,6 @@ static void ice_clear_vf_reset_trigger(struct ice_vf *vf)
 	ice_flush(hw);
 }
 
-/**
- * ice_cleanup_and_realloc_vf - Clean up VF and reallocate resources after reset
- * @vf: pointer to the VF structure
- *
- * Cleanup a VF after the hardware reset is finished. Expects the caller to
- * have verified whether the reset is finished properly, and ensure the
- * minimum amount of wait time has passed. Reallocate VF resources back to make
- * VF state active
- */
-static void ice_cleanup_and_realloc_vf(struct ice_vf *vf)
-{
-	struct ice_pf *pf = vf->pf;
-	struct ice_hw *hw;
-
-	hw = &pf->hw;
-
-	/* Allow HW to access VF memory after calling
-	 * ice_clear_vf_reset_trigger(). If we did it any sooner, HW could
-	 * access memory while it was being freed in ice_free_vf_res(), causing
-	 * an IOMMU fault.
-	 *
-	 * On the other hand, this needs to be done ASAP, because the VF driver
-	 * is waiting for this to happen and may report a timeout. It's
-	 * harmless, but it gets logged into Guest OS kernel log, so best avoid
-	 * it.
-	 */
-	ice_clear_vf_reset_trigger(vf);
-
-	/* reallocate VF resources to finish resetting the VSI state */
-	if (!ice_alloc_vf_res(vf)) {
-		ice_ena_vf_mappings(vf);
-		set_bit(ICE_VF_STATE_ACTIVE, vf->vf_states);
-		clear_bit(ICE_VF_STATE_DIS, vf->vf_states);
-	}
-
-	/* Tell the VF driver the reset is done. This needs to be done only
-	 * after VF has been fully initialized, because the VF driver may
-	 * request resources immediately after setting this flag.
-	 */
-	wr32(hw, VFGEN_RSTAT(vf->vf_id), VIRTCHNL_VFR_VFACTIVE);
-}
-
 /**
  * ice_vf_set_vsi_promisc - set given VF VSI to given promiscuous mode(s)
  * @vf: pointer to the VF info
@@ -1125,44 +992,134 @@ ice_vf_set_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m,
 	return status;
 }
 
+static void ice_vf_clear_counters(struct ice_vf *vf)
+{
+	struct ice_vsi *vsi = vf->pf->vsi[vf->lan_vsi_idx];
+
+	vf->num_mac = 0;
+	vsi->num_vlan = 0;
+	memset(&vf->mdd_tx_events, 0, sizeof(vf->mdd_tx_events));
+	memset(&vf->mdd_rx_events, 0, sizeof(vf->mdd_rx_events));
+}
+
 /**
- * ice_config_res_vfs - Finalize allocation of VFs resources in one go
- * @pf: pointer to the PF structure
+ * ice_vf_pre_vsi_rebuild - tasks to be done prior to VSI rebuild
+ * @vf: VF to perfrom pre VSI rebuild tasks
  *
- * This function is being called as last part of resetting all VFs, or when
- * configuring VFs for the first time, where there is no resource to be freed
- * Returns true if resources were properly allocated for all VFs, and false
- * otherwise.
+ * These tasks are items that don't need to be amortized since they are most
+ * likely called in a for loop with all VF(s) in the reset_all_vfs() case.
  */
-static bool ice_config_res_vfs(struct ice_pf *pf)
+static void ice_vf_pre_vsi_rebuild(struct ice_vf *vf)
 {
-	struct device *dev = ice_pf_to_dev(pf);
-	struct ice_hw *hw = &pf->hw;
-	int v;
+	ice_vf_clear_counters(vf);
+	ice_clear_vf_reset_trigger(vf);
+}
 
-	if (ice_set_per_vf_res(pf)) {
-		dev_err(dev, "Cannot allocate VF resources, try with fewer number of VFs\n");
-		return false;
+/**
+ * ice_vf_rebuild_host_cfg - host admin configuration is persistent across reset
+ * @vf: VF to rebuild host configuration on
+ */
+static void ice_vf_rebuild_host_cfg(struct ice_vf *vf)
+{
+	struct device *dev = ice_pf_to_dev(vf->pf);
+
+	ice_vf_set_host_trust_cfg(vf);
+
+	if (ice_vf_rebuild_host_mac_cfg(vf))
+		dev_err(dev, "failed to rebuild default MAC configuration for VF %d\n",
+			vf->vf_id);
+
+	if (ice_vf_rebuild_host_vlan_cfg(vf))
+		dev_err(dev, "failed to rebuild VLAN configuration for VF %u\n",
+			vf->vf_id);
+}
+
+/**
+ * ice_vf_rebuild_vsi_with_release - release and setup the VF's VSI
+ * @vf: VF to release and setup the VSI for
+ *
+ * This is only called when a single VF is being reset (i.e. VFR, VFLR, host VF
+ * configuration change, etc.).
+ */
+static int ice_vf_rebuild_vsi_with_release(struct ice_vf *vf)
+{
+	struct ice_pf *pf = vf->pf;
+	struct ice_vsi *vsi;
+
+	vsi = pf->vsi[vf->lan_vsi_idx];
+	ice_vsi_release(vsi);
+	vsi = ice_vf_vsi_setup(pf, pf->hw.port_info, vf->vf_id);
+	if (!vsi) {
+		dev_err(ice_pf_to_dev(pf), "Failed to create VF VSI\n");
+		return -ENOMEM;
 	}
 
-	/* rearm global interrupts */
-	if (test_and_clear_bit(__ICE_OICR_INTR_DIS, pf->state))
-		ice_irq_dynamic_ena(hw, NULL, NULL);
+	vf->lan_vsi_idx = vsi->idx;
+	vf->lan_vsi_num = vsi->vsi_num;
 
-	/* Finish resetting each VF and allocate resources */
-	ice_for_each_vf(pf, v) {
-		struct ice_vf *vf = &pf->vf[v];
+	return 0;
+}
 
-		vf->num_vf_qs = pf->num_qps_per_vf;
-		dev_dbg(dev, "VF-id %d has %d queues configured\n", vf->vf_id,
-			vf->num_vf_qs);
-		ice_cleanup_and_realloc_vf(vf);
+/**
+ * ice_vf_rebuild_vsi - rebuild the VF's VSI
+ * @vf: VF to rebuild the VSI for
+ *
+ * This is only called when all VF(s) are being reset (i.e. PCIe Reset on the
+ * host, PFR, CORER, etc.).
+ */
+static int ice_vf_rebuild_vsi(struct ice_vf *vf)
+{
+	struct ice_pf *pf = vf->pf;
+	struct ice_vsi *vsi;
+
+	vsi = pf->vsi[vf->lan_vsi_idx];
+
+	if (ice_vsi_rebuild(vsi, true)) {
+		dev_err(ice_pf_to_dev(pf), "failed to rebuild VF %d VSI\n",
+			vf->vf_id);
+		return -EIO;
 	}
+	/* vsi->idx will remain the same in this case so don't update
+	 * vf->lan_vsi_idx
+	 */
+	vsi->vsi_num = ice_get_hw_vsi_num(&pf->hw, vsi->idx);
+	vf->lan_vsi_num = vsi->vsi_num;
 
-	ice_flush(hw);
-	clear_bit(__ICE_VF_DIS, pf->state);
+	return 0;
+}
 
-	return true;
+/**
+ * ice_vf_set_initialized - VF is ready for VIRTCHNL communication
+ * @vf: VF to set in initialized state
+ *
+ * After this function the VF will be ready to receive/handle the
+ * VIRTCHNL_OP_GET_VF_RESOURCES message
+ */
+static void ice_vf_set_initialized(struct ice_vf *vf)
+{
+	ice_set_vf_state_qs_dis(vf);
+	clear_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states);
+	clear_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states);
+	clear_bit(ICE_VF_STATE_DIS, vf->vf_states);
+	set_bit(ICE_VF_STATE_INIT, vf->vf_states);
+}
+
+/**
+ * ice_vf_post_vsi_rebuild - tasks to do after the VF's VSI have been rebuilt
+ * @vf: VF to perform tasks on
+ */
+static void ice_vf_post_vsi_rebuild(struct ice_vf *vf)
+{
+	struct ice_pf *pf = vf->pf;
+	struct ice_hw *hw;
+
+	hw = &pf->hw;
+
+	ice_vf_rebuild_host_cfg(vf);
+
+	ice_vf_set_initialized(vf);
+	ice_ena_vf_mappings(vf);
+	wr32(hw, VFGEN_RSTAT(vf->vf_id), VIRTCHNL_VFR_VFACTIVE);
 }
 
 /**
@@ -1232,21 +1189,13 @@ bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
 	ice_for_each_vf(pf, v) {
 		vf = &pf->vf[v];
 
-		ice_free_vf_res(vf);
-
-		/* Free VF queues as well, and reallocate later.
-		 * If a given VF has different number of queues
-		 * configured, the request for update will come
-		 * via mailbox communication.
-		 */
-		vf->num_vf_qs = 0;
+		ice_vf_pre_vsi_rebuild(vf);
+		ice_vf_rebuild_vsi(vf);
+		ice_vf_post_vsi_rebuild(vf);
 	}
 
-	if (ice_sriov_free_msix_res(pf))
-		dev_err(dev, "Failed to free MSIX resources used by SR-IOV\n");
-
-	if (!ice_config_res_vfs(pf))
-		return false;
+	ice_flush(hw);
+	clear_bit(__ICE_VF_DIS, pf->state);
 
 	return true;
 }
@@ -1358,12 +1307,9 @@ bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 			dev_err(dev, "disabling promiscuous mode failed\n");
 	}
 
-	/* free VF resources to begin resetting the VSI state */
-	ice_free_vf_res(vf);
-
-	ice_cleanup_and_realloc_vf(vf);
-
-	ice_flush(hw);
+	ice_vf_pre_vsi_rebuild(vf);
+	ice_vf_rebuild_vsi_with_release(vf);
+	ice_vf_post_vsi_rebuild(vf);
 
 	return true;
 }
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
