Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F1A4B9347
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Feb 2022 22:38:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A153C60E40;
	Wed, 16 Feb 2022 21:38:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mNsnFLR1I-1C; Wed, 16 Feb 2022 21:38:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10B4960B6A;
	Wed, 16 Feb 2022 21:38:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 04CB61BF5A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 21:37:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 148F34046B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 21:37:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9kgmD33O_HsU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Feb 2022 21:37:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 990A940A07
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 21:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645047466; x=1676583466;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TClCVsgMVy7SELHw1GFA4QLIMsFb4cKpl6ImPqbtDx4=;
 b=Sh4qbPa1LCzODBsPTKoJdr9qUbPBa4QwTwv2Mve2Z349B/iwtnNRUnMp
 JWuT3PTHXhJTdxtAOXU8PRNFK014Lt3pEuq7ANu9RyM05mDRFmvGYPk7v
 Q++0YlhNzfcP4TCnZIZTxRro5zxTXeB88Vb/VMxTXlCGhH1G4unUDPerV
 jh97hGCUodIL64e0ioSf62Y/TD4RvUNeNADjs0LGeVPu0s/SSki0A3BQM
 8j9t8fnfMHVm7aSyY+ghyDVumAqATDyqEPFTjY3NTQaQkINRJsgOZ9mBC
 GHK0J4ssPuk/uDZbwuA09urz9qNPQ65wp0BxTwkRNmRaec16Wyr1cK8+z g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="248328468"
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="248328468"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 13:37:45 -0800
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="774249156"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 13:37:45 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 16 Feb 2022 13:37:36 -0800
Message-Id: <20220216213738.3826664-10-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
In-Reply-To: <20220216213738.3826664-1-jacob.e.keller@intel.com>
References: <20220216213738.3826664-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH v2 09/11] ice: factor VF
 variables to separate structure
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

We maintain a number of values for VFs within the ice_pf structure. This
includes the VF table, the number of allocated VFs, the maximum number
of supported SR-IOV VFs, the number of queue pairs per VF, the number of
MSI-X vectors per VF, and a bitmap of the VFs with detected MDD events.

We're about to add a few more variables to this list. Clean this up
first by extracting these members out into a new ice_vfs structure
defined in ice_virtchnl_pf.h

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          | 10 +-
 drivers/net/ethernet/intel/ice/ice_eswitch.c  | 20 +++-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  2 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  8 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |  2 +-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 94 ++++++++++---------
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  | 15 ++-
 7 files changed, 83 insertions(+), 68 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 9041b4428af0..571396eac77c 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -543,15 +543,7 @@ struct ice_pf {
 	struct ice_vsi **vsi;		/* VSIs created by the driver */
 	struct ice_sw *first_sw;	/* first switch created by firmware */
 	u16 eswitch_mode;		/* current mode of eswitch */
-	/* Virtchnl/SR-IOV config info */
-	struct ice_vf *vf;
-	u16 num_alloc_vfs;		/* actual number of VFs allocated */
-	u16 num_vfs_supported;		/* num VFs supported for this PF */
-	u16 num_qps_per_vf;
-	u16 num_msix_per_vf;
-	/* used to ratelimit the MDD event logging */
-	unsigned long last_printed_mdd_jiffies;
-	DECLARE_BITMAP(malvfs, ICE_MAX_VF_COUNT);
+	struct ice_vfs vfs;
 	DECLARE_BITMAP(features, ICE_F_MAX);
 	DECLARE_BITMAP(state, ICE_STATE_NBITS);
 	DECLARE_BITMAP(flags, ICE_PF_FLAGS_NBITS);
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index aa16ea15c5ca..7bcba782f74c 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -176,10 +176,20 @@ static void ice_eswitch_remap_rings_to_vectors(struct ice_pf *pf)
 	int q_id;
 
 	ice_for_each_txq(vsi, q_id) {
-		struct ice_repr *repr = pf->vf[q_id].repr;
-		struct ice_q_vector *q_vector = repr->q_vector;
-		struct ice_tx_ring *tx_ring = vsi->tx_rings[q_id];
-		struct ice_rx_ring *rx_ring = vsi->rx_rings[q_id];
+		struct ice_q_vector *q_vector;
+		struct ice_tx_ring *tx_ring;
+		struct ice_rx_ring *rx_ring;
+		struct ice_repr *repr;
+		struct ice_vf *vf;
+
+		if (WARN_ON(q_id >= pf->vfs.num_alloc))
+			continue;
+
+		vf = &pf->vfs.table[q_id];
+		repr = vf->repr;
+		q_vector = repr->q_vector;
+		tx_ring = vsi->tx_rings[q_id];
+		rx_ring = vsi->rx_rings[q_id];
 
 		q_vector->vsi = vsi;
 		q_vector->reg_idx = vsi->q_vectors[0]->reg_idx;
@@ -525,7 +535,7 @@ ice_eswitch_mode_set(struct devlink *devlink, u16 mode,
 	if (pf->eswitch_mode == mode)
 		return 0;
 
-	if (pf->num_alloc_vfs) {
+	if (pf->vfs.num_alloc) {
 		dev_info(ice_pf_to_dev(pf), "Changing eswitch mode is allowed only if there is no VFs created");
 		NL_SET_ERR_MSG_MOD(extack, "Changing eswitch mode is allowed only if there is no VFs created");
 		return -EOPNOTSUPP;
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index d2f50d41f62d..1181f41ff5fe 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1297,7 +1297,7 @@ static int ice_set_priv_flags(struct net_device *netdev, u32 flags)
 	}
 
 	if (test_bit(ICE_FLAG_VF_VLAN_PRUNING, change_flags) &&
-	    pf->num_alloc_vfs) {
+	    pf->vfs.num_alloc) {
 		dev_err(dev, "vf-vlan-pruning: VLAN pruning cannot be changed while VFs are active.\n");
 		/* toggle bit back to previous state */
 		change_bit(ICE_FLAG_VF_VLAN_PRUNING, pf->flags);
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 5180fd4f6801..7b270b2171b1 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -215,8 +215,8 @@ static void ice_vsi_set_num_qs(struct ice_vsi *vsi, struct ice_vf *vf)
 		/* The number of queues for ctrl VSI is equal to number of VFs.
 		 * Each ring is associated to the corresponding VF_PR netdev.
 		 */
-		vsi->alloc_txq = pf->num_alloc_vfs;
-		vsi->alloc_rxq = pf->num_alloc_vfs;
+		vsi->alloc_txq = pf->vfs.num_alloc;
+		vsi->alloc_rxq = pf->vfs.num_alloc;
 		vsi->num_q_vectors = 1;
 		break;
 	case ICE_VSI_VF:
@@ -224,12 +224,12 @@ static void ice_vsi_set_num_qs(struct ice_vsi *vsi, struct ice_vf *vf)
 			vf->num_vf_qs = vf->num_req_qs;
 		vsi->alloc_txq = vf->num_vf_qs;
 		vsi->alloc_rxq = vf->num_vf_qs;
-		/* pf->num_msix_per_vf includes (VF miscellaneous vector +
+		/* pf->vfs.num_msix_per includes (VF miscellaneous vector +
 		 * data queue interrupts). Since vsi->num_q_vectors is number
 		 * of queues vectors, subtract 1 (ICE_NONQ_VECS_VF) from the
 		 * original vector count
 		 */
-		vsi->num_q_vectors = pf->num_msix_per_vf - ICE_NONQ_VECS_VF;
+		vsi->num_q_vectors = pf->vfs.num_msix_per - ICE_NONQ_VECS_VF;
 		break;
 	case ICE_VSI_CTRL:
 		vsi->alloc_txq = 1;
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 4ba18422063d..418277550633 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3712,7 +3712,7 @@ static void ice_set_pf_caps(struct ice_pf *pf)
 	clear_bit(ICE_FLAG_SRIOV_CAPABLE, pf->flags);
 	if (func_caps->common_cap.sr_iov_1_1) {
 		set_bit(ICE_FLAG_SRIOV_CAPABLE, pf->flags);
-		pf->num_vfs_supported = min_t(int, func_caps->num_allocd_vfs,
+		pf->vfs.num_supported = min_t(int, func_caps->num_allocd_vfs,
 					      ICE_MAX_VF_COUNT);
 	}
 	clear_bit(ICE_FLAG_RSS_ENA, pf->flags);
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 086499a55ba7..ca78b759731a 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -182,7 +182,7 @@ struct ice_vsi *ice_get_vf_vsi(struct ice_vf *vf)
 static int ice_validate_vf_id(struct ice_pf *pf, u16 vf_id)
 {
 	/* vf_id range is only valid for 0-255, and should always be unsigned */
-	if (vf_id >= pf->num_alloc_vfs) {
+	if (vf_id >= pf->vfs.num_alloc) {
 		dev_err(ice_pf_to_dev(pf), "Invalid VF ID: %u\n", vf_id);
 		return -EINVAL;
 	}
@@ -380,7 +380,7 @@ static void ice_free_vf_res(struct ice_vf *vf)
 		vf->num_mac = 0;
 	}
 
-	last_vector_idx = vf->first_vector_idx + pf->num_msix_per_vf - 1;
+	last_vector_idx = vf->first_vector_idx + pf->vfs.num_msix_per - 1;
 
 	/* clear VF MDD event information */
 	memset(&vf->mdd_tx_events, 0, sizeof(vf->mdd_tx_events));
@@ -416,7 +416,7 @@ static void ice_dis_vf_mappings(struct ice_vf *vf)
 	wr32(hw, VPINT_ALLOC_PCI(vf->vf_id), 0);
 
 	first = vf->first_vector_idx;
-	last = first + pf->num_msix_per_vf - 1;
+	last = first + pf->vfs.num_msix_per - 1;
 	for (v = first; v <= last; v++) {
 		u32 reg;
 
@@ -498,11 +498,12 @@ static void ice_dis_vf_qs(struct ice_vf *vf)
 void ice_free_vfs(struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_vfs *vfs = &pf->vfs;
 	struct ice_hw *hw = &pf->hw;
 	struct ice_vf *vf;
 	unsigned int bkt;
 
-	if (!pf->vf)
+	if (!vfs->table)
 		return;
 
 	ice_eswitch_release(pf);
@@ -540,7 +541,7 @@ void ice_free_vfs(struct ice_pf *pf)
 		}
 
 		/* clear malicious info since the VF is getting released */
-		if (ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->malvfs,
+		if (ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->vfs.malvfs,
 					ICE_MAX_VF_COUNT, vf->vf_id))
 			dev_dbg(dev, "failed to clear malicious VF state for VF %u\n",
 				vf->vf_id);
@@ -553,10 +554,10 @@ void ice_free_vfs(struct ice_pf *pf)
 	if (ice_sriov_free_msix_res(pf))
 		dev_err(dev, "Failed to free MSIX resources used by SR-IOV\n");
 
-	pf->num_qps_per_vf = 0;
-	pf->num_alloc_vfs = 0;
-	devm_kfree(dev, pf->vf);
-	pf->vf = NULL;
+	vfs->num_qps_per = 0;
+	vfs->num_alloc = 0;
+	devm_kfree(dev, vfs->table);
+	vfs->table = NULL;
 
 	clear_bit(ICE_VF_DIS, pf->state);
 	clear_bit(ICE_FLAG_SRIOV_ENA, pf->flags);
@@ -702,7 +703,7 @@ struct ice_vsi *ice_vf_ctrl_vsi_setup(struct ice_vf *vf)
  */
 static int ice_calc_vf_first_vector_idx(struct ice_pf *pf, struct ice_vf *vf)
 {
-	return pf->sriov_base_vector + vf->vf_id * pf->num_msix_per_vf;
+	return pf->sriov_base_vector + vf->vf_id * pf->vfs.num_msix_per;
 }
 
 /**
@@ -959,12 +960,12 @@ static void ice_ena_vf_msix_mappings(struct ice_vf *vf)
 
 	hw = &pf->hw;
 	pf_based_first_msix = vf->first_vector_idx;
-	pf_based_last_msix = (pf_based_first_msix + pf->num_msix_per_vf) - 1;
+	pf_based_last_msix = (pf_based_first_msix + pf->vfs.num_msix_per) - 1;
 
 	device_based_first_msix = pf_based_first_msix +
 		pf->hw.func_caps.common_cap.msix_vector_first_id;
 	device_based_last_msix =
-		(device_based_first_msix + pf->num_msix_per_vf) - 1;
+		(device_based_first_msix + pf->vfs.num_msix_per) - 1;
 	device_based_vf_id = vf->vf_id + hw->func_caps.vf_base_id;
 
 	reg = (((device_based_first_msix << VPINT_ALLOC_FIRST_S) &
@@ -1069,7 +1070,7 @@ int ice_calc_vf_reg_idx(struct ice_vf *vf, struct ice_q_vector *q_vector)
 	pf = vf->pf;
 
 	/* always add one to account for the OICR being the first MSIX */
-	return pf->sriov_base_vector + pf->num_msix_per_vf * vf->vf_id +
+	return pf->sriov_base_vector + pf->vfs.num_msix_per * vf->vf_id +
 		q_vector->v_idx + 1;
 }
 
@@ -1210,10 +1211,10 @@ static int ice_set_per_vf_res(struct ice_pf *pf, u16 num_vfs)
 	}
 
 	/* only allow equal Tx/Rx queue count (i.e. queue pairs) */
-	pf->num_qps_per_vf = min_t(int, num_txq, num_rxq);
-	pf->num_msix_per_vf = num_msix_per_vf;
+	pf->vfs.num_qps_per = min_t(int, num_txq, num_rxq);
+	pf->vfs.num_msix_per = num_msix_per_vf;
 	dev_info(dev, "Enabling %d VFs with %d vectors and %d queues per VF\n",
-		 num_vfs, pf->num_msix_per_vf, pf->num_qps_per_vf);
+		 num_vfs, pf->vfs.num_msix_per, pf->vfs.num_qps_per);
 
 	return 0;
 }
@@ -1463,12 +1464,12 @@ bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
 	unsigned int bkt;
 
 	/* If we don't have any VFs, then there is nothing to reset */
-	if (!pf->num_alloc_vfs)
+	if (!pf->vfs.num_alloc)
 		return false;
 
 	/* clear all malicious info if the VFs are getting reset */
 	ice_for_each_vf(pf, bkt, vf)
-		if (ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->malvfs,
+		if (ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->vfs.malvfs,
 					ICE_MAX_VF_COUNT, vf->vf_id))
 			dev_dbg(dev, "failed to clear malicious VF state for VF %u\n",
 				vf->vf_id);
@@ -1678,7 +1679,8 @@ bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 	ice_eswitch_replay_vf_mac_rule(vf);
 
 	/* if the VF has been reset allow it to come up again */
-	if (ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->malvfs, ICE_MAX_VF_COUNT, vf->vf_id))
+	if (ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->vfs.malvfs,
+				ICE_MAX_VF_COUNT, vf->vf_id))
 		dev_dbg(dev, "failed to clear malicious VF state for VF %u\n", i);
 
 	return true;
@@ -1707,7 +1709,7 @@ void ice_vc_notify_reset(struct ice_pf *pf)
 {
 	struct virtchnl_pf_event pfe;
 
-	if (!pf->num_alloc_vfs)
+	if (!pf->vfs.num_alloc)
 		return;
 
 	pfe.event = VIRTCHNL_EVENT_RESET_IMPENDING;
@@ -1870,7 +1872,7 @@ static void ice_set_dflt_settings_vfs(struct ice_pf *pf)
 		/* assign default capabilities */
 		set_bit(ICE_VIRTCHNL_VF_CAP_L2, &vf->vf_caps);
 		vf->spoofchk = true;
-		vf->num_vf_qs = pf->num_qps_per_vf;
+		vf->num_vf_qs = pf->vfs.num_qps_per;
 		ice_vc_set_default_allowlist(vf);
 
 		/* ctrl_vsi_idx will be set to a valid value only when VF
@@ -1899,8 +1901,8 @@ static int ice_alloc_vfs(struct ice_pf *pf, int num_vfs)
 	if (!vfs)
 		return -ENOMEM;
 
-	pf->vf = vfs;
-	pf->num_alloc_vfs = num_vfs;
+	pf->vfs.table = NULL;
+	pf->vfs.num_alloc = num_vfs;
 
 	return 0;
 }
@@ -1924,7 +1926,7 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
 
 	ret = pci_enable_sriov(pf->pdev, num_vfs);
 	if (ret) {
-		pf->num_alloc_vfs = 0;
+		pf->vfs.num_alloc = 0;
 		goto err_unroll_intr;
 	}
 
@@ -1960,9 +1962,9 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
 	return 0;
 
 err_unroll_sriov:
-	devm_kfree(dev, pf->vf);
-	pf->vf = NULL;
-	pf->num_alloc_vfs = 0;
+	devm_kfree(dev, pf->vfs.table);
+	pf->vfs.table = NULL;
+	pf->vfs.num_alloc = 0;
 err_pci_disable_sriov:
 	pci_disable_sriov(pf->pdev);
 err_unroll_intr:
@@ -1990,9 +1992,9 @@ static int ice_pci_sriov_ena(struct ice_pf *pf, int num_vfs)
 	else if (pre_existing_vfs && pre_existing_vfs == num_vfs)
 		return 0;
 
-	if (num_vfs > pf->num_vfs_supported) {
+	if (num_vfs > pf->vfs.num_supported) {
 		dev_err(dev, "Can't enable %d VFs, max VFs supported is %d\n",
-			num_vfs, pf->num_vfs_supported);
+			num_vfs, pf->vfs.num_supported);
 		return -EOPNOTSUPP;
 	}
 
@@ -2095,7 +2097,7 @@ void ice_process_vflr_event(struct ice_pf *pf)
 	u32 reg;
 
 	if (!test_and_clear_bit(ICE_VFLR_EVENT_PENDING, pf->state) ||
-	    !pf->num_alloc_vfs)
+	    !pf->vfs.num_alloc)
 		return;
 
 	ice_for_each_vf(pf, bkt, vf) {
@@ -2399,7 +2401,7 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 	vfres->num_vsis = 1;
 	/* Tx and Rx queue are equal for VF */
 	vfres->num_queue_pairs = vsi->num_txq;
-	vfres->max_vectors = pf->num_msix_per_vf;
+	vfres->max_vectors = pf->vfs.num_msix_per;
 	vfres->rss_key_size = ICE_VSIQF_HKEY_ARRAY_SIZE;
 	vfres->rss_lut_size = ICE_VSIQF_HLUT_ARRAY_SIZE;
 	vfres->max_mtu = ice_vc_get_max_frame_size(vf);
@@ -2967,7 +2969,7 @@ int ice_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool ena)
 	if (ice_validate_vf_id(pf, vf_id))
 		return -EINVAL;
 
-	vf = &pf->vf[vf_id];
+	vf = &pf->vfs.table[vf_id];
 	ret = ice_check_vf_ready_for_cfg(vf);
 	if (ret)
 		return ret;
@@ -3542,7 +3544,7 @@ static int ice_vc_cfg_irq_map_msg(struct ice_vf *vf, u8 *msg)
 	 * there is actually at least a single VF queue vector mapped
 	 */
 	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states) ||
-	    pf->num_msix_per_vf < num_q_vectors_mapped ||
+	    pf->vfs.num_msix_per < num_q_vectors_mapped ||
 	    !num_q_vectors_mapped) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		goto error_param;
@@ -3564,7 +3566,7 @@ static int ice_vc_cfg_irq_map_msg(struct ice_vf *vf, u8 *msg)
 		/* vector_id is always 0-based for each VF, and can never be
 		 * larger than or equal to the max allowed interrupts per VF
 		 */
-		if (!(vector_id < pf->num_msix_per_vf) ||
+		if (!(vector_id < pf->vfs.num_msix_per) ||
 		    !ice_vc_isvalid_vsi_id(vf, vsi_id) ||
 		    (!vector_id && (map->rxq_map || map->txq_map))) {
 			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
@@ -4170,7 +4172,7 @@ ice_set_vf_port_vlan(struct net_device *netdev, int vf_id, u16 vlan_id, u8 qos,
 		return -EPROTONOSUPPORT;
 	}
 
-	vf = &pf->vf[vf_id];
+	vf = &pf->vfs.table[vf_id];
 	ret = ice_check_vf_ready_for_cfg(vf);
 	if (ret)
 		return ret;
@@ -5724,7 +5726,7 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
 		return;
 	}
 
-	vf = &pf->vf[vf_id];
+	vf = &pf->vfs.table[vf_id];
 
 	/* Check if VF is disabled. */
 	if (test_bit(ICE_VF_STATE_DIS, vf->vf_states)) {
@@ -5898,7 +5900,7 @@ ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_info *ivi)
 	if (ice_validate_vf_id(pf, vf_id))
 		return -EINVAL;
 
-	vf = &pf->vf[vf_id];
+	vf = &pf->vfs.table[vf_id];
 
 	if (ice_check_vf_init(pf, vf))
 		return -EBUSY;
@@ -5980,7 +5982,7 @@ int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
 		return -EINVAL;
 	}
 
-	vf = &pf->vf[vf_id];
+	vf = &pf->vfs.table[vf_id];
 	/* nothing left to do, unicast MAC already set */
 	if (ether_addr_equal(vf->dev_lan_addr.addr, mac) &&
 	    ether_addr_equal(vf->hw_lan_addr.addr, mac))
@@ -6042,7 +6044,7 @@ int ice_set_vf_trust(struct net_device *netdev, int vf_id, bool trusted)
 	if (ice_validate_vf_id(pf, vf_id))
 		return -EINVAL;
 
-	vf = &pf->vf[vf_id];
+	vf = &pf->vfs.table[vf_id];
 	ret = ice_check_vf_ready_for_cfg(vf);
 	if (ret)
 		return ret;
@@ -6080,7 +6082,7 @@ int ice_set_vf_link_state(struct net_device *netdev, int vf_id, int link_state)
 	if (ice_validate_vf_id(pf, vf_id))
 		return -EINVAL;
 
-	vf = &pf->vf[vf_id];
+	vf = &pf->vfs.table[vf_id];
 	ret = ice_check_vf_ready_for_cfg(vf);
 	if (ret)
 		return ret;
@@ -6175,7 +6177,7 @@ ice_set_vf_bw(struct net_device *netdev, int vf_id, int min_tx_rate,
 	if (ice_validate_vf_id(pf, vf_id))
 		return -EINVAL;
 
-	vf = &pf->vf[vf_id];
+	vf = &pf->vfs.table[vf_id];
 	ret = ice_check_vf_ready_for_cfg(vf);
 	if (ret)
 		return ret;
@@ -6242,7 +6244,7 @@ int ice_get_vf_stats(struct net_device *netdev, int vf_id,
 	if (ice_validate_vf_id(pf, vf_id))
 		return -EINVAL;
 
-	vf = &pf->vf[vf_id];
+	vf = &pf->vfs.table[vf_id];
 	ret = ice_check_vf_ready_for_cfg(vf);
 	if (ret)
 		return ret;
@@ -6306,10 +6308,10 @@ void ice_print_vfs_mdd_events(struct ice_pf *pf)
 		return;
 
 	/* VF MDD event logs are rate limited to one second intervals */
-	if (time_is_after_jiffies(pf->last_printed_mdd_jiffies + HZ * 1))
+	if (time_is_after_jiffies(pf->vfs.last_printed_mdd_jiffies + HZ * 1))
 		return;
 
-	pf->last_printed_mdd_jiffies = jiffies;
+	pf->vfs.last_printed_mdd_jiffies = jiffies;
 
 	ice_for_each_vf(pf, bkt, vf) {
 		/* only print Rx MDD event message if there are new events */
@@ -6383,7 +6385,7 @@ ice_is_malicious_vf(struct ice_pf *pf, struct ice_rq_event_info *event,
 	if (ice_validate_vf_id(pf, vf_id))
 		return false;
 
-	vf = &pf->vf[vf_id];
+	vf = &pf->vfs.table[vf_id];
 	/* Check if VF is disabled. */
 	if (test_bit(ICE_VF_STATE_DIS, vf->vf_states))
 		return false;
@@ -6405,7 +6407,7 @@ ice_is_malicious_vf(struct ice_pf *pf, struct ice_rq_event_info *event,
 		/* if the VF is malicious and we haven't let the user
 		 * know about it, then let them know now
 		 */
-		status = ice_mbx_report_malvf(&pf->hw, pf->malvfs,
+		status = ice_mbx_report_malvf(&pf->hw, pf->vfs.malvfs,
 					      ICE_MAX_VF_COUNT, vf_id,
 					      &report_vf);
 		if (status)
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index 9cccb5afb92d..f3d6e2d8a2a1 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -50,8 +50,8 @@
  * Use vf->vf_id to get the id number if needed.
  */
 #define ice_for_each_vf(pf, bkt, entry)					\
-	for ((bkt) = 0, (entry) = &(pf)->vf[0];				\
-	     (bkt) < (pf)->num_alloc_vfs;				\
+	for ((bkt) = 0, (entry) = &(pf)->vfs.table[0];			\
+	     (bkt) < (pf)->vfs.num_alloc;				\
 	     (bkt)++, (entry)++)
 
 /* Specific VF states */
@@ -116,6 +116,17 @@ struct ice_vc_vf_ops {
 	int (*dis_vlan_insertion_v2_msg)(struct ice_vf *vf, u8 *msg);
 };
 
+/* Virtchnl/SR-IOV config info */
+struct ice_vfs {
+	struct ice_vf *table;		/* table of VF entries */
+	u16 num_alloc;			/* number of allocated VFs */
+	u16 num_supported;		/* max supported VFs on this PF */
+	u16 num_qps_per;		/* number of queue pairs per VF */
+	u16 num_msix_per;		/* number of MSi-X vectors per VF */
+	unsigned long last_printed_mdd_jiffies;	/* MDD message rate limit */
+	DECLARE_BITMAP(malvfs, ICE_MAX_VF_COUNT); /* malicious VF indicator */
+};
+
 /* VF information structure */
 struct ice_vf {
 	struct ice_pf *pf;
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
