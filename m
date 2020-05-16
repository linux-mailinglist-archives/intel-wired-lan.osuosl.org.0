Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9F51D5D6A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:54:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8B25B22622;
	Sat, 16 May 2020 00:54:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NIy0HIlj2877; Sat, 16 May 2020 00:54:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5CEA422795;
	Sat, 16 May 2020 00:54:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7893B1BF9C6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:53:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 70AD222622
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:53:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mFwy84r070Ll for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:53:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id 88405204BE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:53:56 +0000 (UTC)
IronPort-SDR: 8CHlcOYIwJiWjo6EWtTLQJrhnPZCw7GX96pqHHwuzkCrt70Pjle0F4tXaFhA3eFb+IOv4rnISR
 i87yNdE3kb9A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:53:54 -0700
IronPort-SDR: FCXmfdWucHMFYRIvtiiAl9peArbrnCRNrbsbMr3JM4Qn0YnPULIWhAAVhtJ+elPLZ2zWUILcxp
 ulQ3N9tUR37w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="263360540"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga003.jf.intel.com with ESMTP; 15 May 2020 17:53:54 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:51:10 -0700
Message-Id: <20200516005121.4963-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
References: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S45 04/15] ice: Separate VF VSI
 initialization/creation from reset flow
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

Currently the same flow is used for VF VSI initialization/creation and VF
VSI reset. This makes the initialization/creation flow unnecessarily
complicated. Fix this by separating the initialization/creation of the
VF VSI from the reset flow.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 110 +++++++++++++++++-
 1 file changed, 106 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 18fe4cfe4443..5b9f01f1f65b 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -1375,6 +1375,99 @@ static void ice_vc_notify_vf_reset(struct ice_vf *vf)
 			      NULL);
 }
 
+/**
+ * ice_init_vf_vsi_res - initialize/setup VF VSI resources
+ * @vf: VF to initialize/setup the VSI for
+ *
+ * This function creates a VSI for the VF, adds a VLAN 0 filter, and sets up the
+ * VF VSI's broadcast filter and is only used during initial VF creation.
+ */
+static int ice_init_vf_vsi_res(struct ice_vf *vf)
+{
+	struct ice_pf *pf = vf->pf;
+	u8 broadcast[ETH_ALEN];
+	enum ice_status status;
+	struct ice_vsi *vsi;
+	struct device *dev;
+	int err;
+
+	vf->first_vector_idx = ice_calc_vf_first_vector_idx(pf, vf);
+
+	dev = ice_pf_to_dev(pf);
+	vsi = ice_vf_vsi_setup(pf, pf->hw.port_info, vf->vf_id);
+	if (!vsi) {
+		dev_err(dev, "Failed to create VF VSI\n");
+		return -ENOMEM;
+	}
+
+	vf->lan_vsi_idx = vsi->idx;
+	vf->lan_vsi_num = vsi->vsi_num;
+
+	err = ice_vsi_add_vlan(vsi, 0, ICE_FWD_TO_VSI);
+	if (err) {
+		dev_warn(dev, "Failed to add VLAN 0 filter for VF %d\n",
+			 vf->vf_id);
+		goto release_vsi;
+	}
+
+	eth_broadcast_addr(broadcast);
+	status = ice_fltr_add_mac(vsi, broadcast, ICE_FWD_TO_VSI);
+	if (status) {
+		dev_err(dev, "Failed to add broadcast MAC filter for VF %d, status %s\n",
+			vf->vf_id, ice_stat_str(status));
+		err = ice_status_to_errno(status);
+		goto release_vsi;
+	}
+
+	vf->num_mac = 1;
+
+	return 0;
+
+release_vsi:
+	ice_vsi_release(vsi);
+	return err;
+}
+
+/**
+ * ice_start_vfs - start VFs so they are ready to be used by SR-IOV
+ * @pf: PF the VFs are associated with
+ */
+static int ice_start_vfs(struct ice_pf *pf)
+{
+	struct ice_hw *hw = &pf->hw;
+	int retval, i;
+
+	ice_for_each_vf(pf, i) {
+		struct ice_vf *vf = &pf->vf[i];
+
+		ice_clear_vf_reset_trigger(vf);
+
+		retval = ice_init_vf_vsi_res(vf);
+		if (retval) {
+			dev_err(ice_pf_to_dev(pf), "Failed to initialize VSI resources for VF %d, error %d\n",
+				vf->vf_id, retval);
+			goto teardown;
+		}
+
+		set_bit(ICE_VF_STATE_INIT, vf->vf_states);
+		ice_ena_vf_mappings(vf);
+		wr32(hw, VFGEN_RSTAT(vf->vf_id), VIRTCHNL_VFR_VFACTIVE);
+	}
+
+	ice_flush(hw);
+	return 0;
+
+teardown:
+	for (i = i - 1; i >= 0; i--) {
+		struct ice_vf *vf = &pf->vf[i];
+
+		ice_dis_vf_mappings(vf);
+		ice_vsi_release(pf->vsi[vf->lan_vsi_idx]);
+	}
+
+	return retval;
+}
+
 /**
  * ice_alloc_vfs - Allocate and set up VFs resources
  * @pf: pointer to the PF structure
@@ -1407,6 +1500,13 @@ static int ice_alloc_vfs(struct ice_pf *pf, u16 num_alloc_vfs)
 	pf->vf = vfs;
 	pf->num_alloc_vfs = num_alloc_vfs;
 
+	if (ice_set_per_vf_res(pf)) {
+		dev_err(dev, "Not enough resources for %d VFs, try with fewer number of VFs\n",
+			num_alloc_vfs);
+		ret = -ENOSPC;
+		goto err_unroll_sriov;
+	}
+
 	/* apply default profile */
 	ice_for_each_vf(pf, i) {
 		vfs[i].pf = pf;
@@ -1416,15 +1516,17 @@ static int ice_alloc_vfs(struct ice_pf *pf, u16 num_alloc_vfs)
 		/* assign default capabilities */
 		set_bit(ICE_VIRTCHNL_VF_CAP_L2, &vfs[i].vf_caps);
 		vfs[i].spoofchk = true;
+		vfs[i].num_vf_qs = pf->num_qps_per_vf;
 	}
 
-	/* VF resources get allocated with initialization */
-	if (!ice_config_res_vfs(pf)) {
-		ret = -EIO;
+	if (ice_start_vfs(pf)) {
+		dev_err(dev, "Failed to start VF(s)\n");
+		ret = -EAGAIN;
 		goto err_unroll_sriov;
 	}
 
-	return ret;
+	clear_bit(__ICE_VF_DIS, pf->state);
+	return 0;
 
 err_unroll_sriov:
 	pf->vf = NULL;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
