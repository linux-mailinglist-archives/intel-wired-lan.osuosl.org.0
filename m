Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D2130371E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Jan 2021 08:08:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8DE4386FF7;
	Tue, 26 Jan 2021 07:08:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L7qACVs1Ev8n; Tue, 26 Jan 2021 07:08:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 24CB286FF6;
	Tue, 26 Jan 2021 07:08:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CD6DE1BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 07:08:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C089E20341
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 07:08:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jSfiat7M3jFA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jan 2021 07:08:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 205EE203B1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 07:08:37 +0000 (UTC)
IronPort-SDR: wMJIfehnbt7ZwLti3l6bKgJgPvhDVHnGtRandI9TEAMEDZjWMGsn6Ve3EEvPPmuqYq5EcbGm8O
 riVPa+s1OUYw==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="176348255"
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="176348255"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 23:08:36 -0800
IronPort-SDR: OOOG1dy7RLQNDuP/HGqr/5zQJCtEgiXrAqjHzbekU9nVUl/FF42Ba1KlDNp2Qh4YGW5G2jm2SY
 fvhD7E8Fl4fA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="472639151"
Received: from npg-dpdk-haiyue-3.sh.intel.com ([10.67.118.189])
 by fmsmga001.fm.intel.com with ESMTP; 25 Jan 2021 23:08:34 -0800
From: Haiyue Wang <haiyue.wang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Jan 2021 14:51:54 +0800
Message-Id: <20210126065206.137422-9-haiyue.wang@intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210126065206.137422-1-haiyue.wang@intel.com>
References: <20210126065206.137422-1-haiyue.wang@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [Patch v2 08/20] ice: Add support for per VF ctrl
 VSI enabling
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
Cc: cunming.liang@intel.com, Xiaoyun Li <xiaoyun.li@intel.com>,
 Yahui Cao <yahui.cao@intel.com>, qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Qi Zhang <qi.z.zhang@intel.com>

We are going to enable FDIR configure for AVF through virtual channel.
The first step is to add helper functions to support control VSI setup.
A control VSI will be allocated for a VF when AVF creates its
first FDIR rule through ice_vf_ctrl_vsi_setup().
The patch will also allocate FDIR rule space for VF's control VSI.
If a VF asks for flow director rules, then those should come entirely
from the best effort pool and not from the guaranteed pool. The patch
allow a VF VSI to have only space in the best effort rules.

Signed-off-by: Xiaoyun Li <xiaoyun.li@intel.com>
Signed-off-by: Yahui Cao <yahui.cao@intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |  4 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      | 64 ++++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_main.c     |  9 ++-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 62 ++++++++++++++++++
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  2 +
 5 files changed, 130 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 46ea8f90faca..ad9cf1eb70e9 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -70,7 +70,7 @@
 #define ICE_INT_NAME_STR_LEN	(IFNAMSIZ + 16)
 #define ICE_AQ_LEN		64
 #define ICE_MBXSQ_LEN		64
-#define ICE_FDIR_MSIX		1
+#define ICE_FDIR_MSIX		2
 #define ICE_MIN_LAN_MSIX	1
 #define ICE_OICR_MSIX		1
 #define ICE_MIN_MSIX		(ICE_MIN_LAN_MSIX + ICE_OICR_MSIX)
@@ -84,6 +84,8 @@
 #define ICE_MAX_LG_RSS_QS	256
 #define ICE_RES_VALID_BIT	0x8000
 #define ICE_RES_MISC_VEC_ID	(ICE_RES_VALID_BIT - 1)
+/* All VF control VSIs share the same IRQ, so assign a unique ID for them */
+#define ICE_RES_VF_CTRL_VEC_ID	(ICE_RES_MISC_VEC_ID - 1)
 #define ICE_INVAL_Q_INDEX	0xffff
 #define ICE_INVAL_VFID		256
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 6f967064b744..88afb67ce174 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -344,6 +344,9 @@ static int ice_vsi_clear(struct ice_vsi *vsi)
 	pf->vsi[vsi->idx] = NULL;
 	if (vsi->idx < pf->next_vsi && vsi->type != ICE_VSI_CTRL)
 		pf->next_vsi = vsi->idx;
+	if (vsi->idx < pf->next_vsi && vsi->type == ICE_VSI_CTRL &&
+	    vsi->vf_id != ICE_INVAL_VFID)
+		pf->next_vsi = vsi->idx;
 
 	ice_vsi_free_arrays(vsi);
 	mutex_unlock(&pf->sw_mutex);
@@ -455,8 +458,8 @@ ice_vsi_alloc(struct ice_pf *pf, enum ice_vsi_type vsi_type, u16 vf_id)
 		goto unlock_pf;
 	}
 
-	if (vsi->type == ICE_VSI_CTRL) {
-		/* Use the last VSI slot as the index for the control VSI */
+	if (vsi->type == ICE_VSI_CTRL && vf_id == ICE_INVAL_VFID) {
+		/* Use the last VSI slot as the index for PF control VSI */
 		vsi->idx = pf->num_alloc_vsi - 1;
 		pf->ctrl_vsi_idx = vsi->idx;
 		pf->vsi[vsi->idx] = vsi;
@@ -469,6 +472,9 @@ ice_vsi_alloc(struct ice_pf *pf, enum ice_vsi_type vsi_type, u16 vf_id)
 		pf->next_vsi = ice_get_free_slot(pf->vsi, pf->num_alloc_vsi,
 						 pf->next_vsi);
 	}
+
+	if (vsi->type == ICE_VSI_CTRL && vf_id != ICE_INVAL_VFID)
+		pf->vf[vf_id].ctrl_vsi_idx = vsi->idx;
 	goto unlock_pf;
 
 err_rings:
@@ -507,7 +513,7 @@ static int ice_alloc_fd_res(struct ice_vsi *vsi)
 	if (!b_val)
 		return -EPERM;
 
-	if (vsi->type != ICE_VSI_PF)
+	if (!(vsi->type == ICE_VSI_PF || vsi->type == ICE_VSI_VF))
 		return -EPERM;
 
 	if (!test_bit(ICE_FLAG_FD_ENA, pf->flags))
@@ -518,6 +524,13 @@ static int ice_alloc_fd_res(struct ice_vsi *vsi)
 	/* each VSI gets same "best_effort" quota */
 	vsi->num_bfltr = b_val;
 
+	if (vsi->type == ICE_VSI_VF) {
+		vsi->num_gfltr = 0;
+
+		/* each VSI gets same "best_effort" quota */
+		vsi->num_bfltr = b_val;
+	}
+
 	return 0;
 }
 
@@ -857,7 +870,8 @@ static void ice_set_fd_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
 	u8 dflt_q_group, dflt_q_prio;
 	u16 dflt_q, report_q, val;
 
-	if (vsi->type != ICE_VSI_PF && vsi->type != ICE_VSI_CTRL)
+	if (vsi->type != ICE_VSI_PF && vsi->type != ICE_VSI_CTRL &&
+	    vsi->type != ICE_VSI_VF)
 		return;
 
 	val = ICE_AQ_VSI_PROP_FLOW_DIR_VALID;
@@ -1180,7 +1194,24 @@ static int ice_vsi_setup_vector_base(struct ice_vsi *vsi)
 
 	num_q_vectors = vsi->num_q_vectors;
 	/* reserve slots from OS requested IRQs */
-	base = ice_get_res(pf, pf->irq_tracker, num_q_vectors, vsi->idx);
+	if (vsi->type == ICE_VSI_CTRL && vsi->vf_id != ICE_INVAL_VFID) {
+		struct ice_vf *vf;
+		int i;
+
+		ice_for_each_vf(pf, i) {
+			vf = &pf->vf[i];
+			if (i != vsi->vf_id && vf->ctrl_vsi_idx != ICE_NO_VSI) {
+				base = pf->vsi[vf->ctrl_vsi_idx]->base_vector;
+				break;
+			}
+		}
+		if (i == pf->num_alloc_vfs)
+			base = ice_get_res(pf, pf->irq_tracker, num_q_vectors,
+					   ICE_RES_VF_CTRL_VEC_ID);
+	} else {
+		base = ice_get_res(pf, pf->irq_tracker, num_q_vectors,
+				   vsi->idx);
+	}
 
 	if (base < 0) {
 		dev_err(dev, "%d MSI-X interrupts available. %s %d failed to get %d MSI-X vectors\n",
@@ -2303,7 +2334,7 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 	struct ice_vsi *vsi;
 	int ret, i;
 
-	if (vsi_type == ICE_VSI_VF)
+	if (vsi_type == ICE_VSI_VF || vsi_type == ICE_VSI_CTRL)
 		vsi = ice_vsi_alloc(pf, vsi_type, vf_id);
 	else
 		vsi = ice_vsi_alloc(pf, vsi_type, ICE_INVAL_VFID);
@@ -2318,7 +2349,7 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 	if (vsi->type == ICE_VSI_PF)
 		vsi->ethtype = ETH_P_PAUSE;
 
-	if (vsi->type == ICE_VSI_VF)
+	if (vsi->type == ICE_VSI_VF || vsi->type == ICE_VSI_CTRL)
 		vsi->vf_id = vf_id;
 
 	ice_alloc_fd_res(vsi);
@@ -2765,7 +2796,24 @@ int ice_vsi_release(struct ice_vsi *vsi)
 	 * many interrupts each VF needs. SR-IOV MSIX resources are also
 	 * cleared in the same manner.
 	 */
-	if (vsi->type != ICE_VSI_VF) {
+	if (vsi->type == ICE_VSI_CTRL && vsi->vf_id != ICE_INVAL_VFID) {
+		struct ice_vf *vf;
+		int i;
+
+		ice_for_each_vf(pf, i) {
+			vf = &pf->vf[i];
+			if (i != vsi->vf_id && vf->ctrl_vsi_idx != ICE_NO_VSI)
+				break;
+		}
+		if (i == pf->num_alloc_vfs) {
+			/* No other VFs left that have control VSI, reclaim SW
+			 * interrupts back to the common pool
+			 */
+			ice_free_res(pf->irq_tracker, vsi->base_vector,
+				     ICE_RES_VF_CTRL_VEC_ID);
+			pf->num_avail_sw_msix += vsi->num_q_vectors;
+		}
+	} else if (vsi->type != ICE_VSI_VF) {
 		/* reclaim SW interrupts back to the common pool */
 		ice_free_res(pf->irq_tracker, vsi->base_vector, vsi->idx);
 		pf->num_avail_sw_msix += vsi->num_q_vectors;
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index fcb0e158e323..61cd3b887345 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2220,8 +2220,13 @@ static int ice_vsi_req_irq_msix(struct ice_vsi *vsi, char *basename)
 			/* skip this unused q_vector */
 			continue;
 		}
-		err = devm_request_irq(dev, irq_num, vsi->irq_handler, 0,
-				       q_vector->name, q_vector);
+		if (vsi->type == ICE_VSI_CTRL && vsi->vf_id != ICE_INVAL_VFID)
+			err = devm_request_irq(dev, irq_num, vsi->irq_handler,
+					       IRQF_SHARED, q_vector->name,
+					       q_vector);
+		else
+			err = devm_request_irq(dev, irq_num, vsi->irq_handler,
+					       0, q_vector->name, q_vector);
 		if (err) {
 			netdev_err(vsi->netdev, "MSIX request_irq failed, error: %d\n",
 				   err);
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 157dc414bce5..98448448d1c1 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -441,6 +441,25 @@ static void ice_vf_vsi_release(struct ice_vf *vf)
 	ice_vf_invalidate_vsi(vf);
 }
 
+/**
+ * ice_vf_ctrl_invalidate_vsi - invalidate ctrl_vsi_idx to remove VSI access
+ * @vf: VF that control VSI is being invalidated on
+ */
+static void ice_vf_ctrl_invalidate_vsi(struct ice_vf *vf)
+{
+	vf->ctrl_vsi_idx = ICE_NO_VSI;
+}
+
+/**
+ * ice_vf_ctrl_vsi_release - invalidate the VF's control VSI after freeing it
+ * @vf: VF that control VSI is being released on
+ */
+static void ice_vf_ctrl_vsi_release(struct ice_vf *vf)
+{
+	ice_vsi_release(vf->pf->vsi[vf->ctrl_vsi_idx]);
+	ice_vf_ctrl_invalidate_vsi(vf);
+}
+
 /**
  * ice_free_vf_res - Free a VF's resources
  * @vf: pointer to the VF info
@@ -454,6 +473,9 @@ static void ice_free_vf_res(struct ice_vf *vf)
 	 * accessing the VF's VSI after it's freed or invalidated.
 	 */
 	clear_bit(ICE_VF_STATE_INIT, vf->vf_states);
+	/* free VF control VSI */
+	if (vf->ctrl_vsi_idx != ICE_NO_VSI)
+		ice_vf_ctrl_vsi_release(vf);
 
 	/* free VSI and disconnect it from the parent uplink */
 	if (vf->lan_vsi_idx != ICE_NO_VSI) {
@@ -799,6 +821,29 @@ static struct ice_vsi *ice_vf_vsi_setup(struct ice_vf *vf)
 	return vsi;
 }
 
+/**
+ * ice_vf_ctrl_vsi_setup - Set up a VF control VSI
+ * @vf: VF to setup control VSI for
+ *
+ * Returns pointer to the successfully allocated VSI struct on success,
+ * otherwise returns NULL on failure.
+ */
+struct ice_vsi *ice_vf_ctrl_vsi_setup(struct ice_vf *vf)
+{
+	struct ice_port_info *pi = ice_vf_get_port_info(vf);
+	struct ice_pf *pf = vf->pf;
+	struct ice_vsi *vsi;
+
+	vsi = ice_vsi_setup(pf, pi, ICE_VSI_CTRL, vf->vf_id);
+
+	if (!vsi) {
+		dev_err(ice_pf_to_dev(pf), "Failed to create VF control VSI\n");
+		ice_vf_ctrl_invalidate_vsi(vf);
+	}
+
+	return vsi;
+}
+
 /**
  * ice_calc_vf_first_vector_idx - Calculate MSIX vector index in the PF space
  * @pf: pointer to PF structure
@@ -1498,6 +1543,12 @@ bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
 	ice_for_each_vf(pf, v) {
 		vf = &pf->vf[v];
 
+		/* clean VF control VSI when resetting VFs since it should be
+		 * setup only when iAVF creates its first FDIR rule.
+		 */
+		if (vf->ctrl_vsi_idx != ICE_NO_VSI)
+			ice_vf_ctrl_invalidate_vsi(vf);
+
 		ice_vf_pre_vsi_rebuild(vf);
 		ice_vf_rebuild_vsi(vf);
 		ice_vf_post_vsi_rebuild(vf);
@@ -1616,6 +1667,12 @@ bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 			dev_err(dev, "disabling promiscuous mode failed\n");
 	}
 
+	/* clean VF control VSI when resetting VF since it should be setup
+	 * only when iAVF creates its first FDIR rule.
+	 */
+	if (vf->ctrl_vsi_idx != ICE_NO_VSI)
+		ice_vf_ctrl_vsi_release(vf);
+
 	ice_vf_pre_vsi_rebuild(vf);
 	ice_vf_rebuild_vsi_with_release(vf);
 	ice_vf_post_vsi_rebuild(vf);
@@ -1791,6 +1848,11 @@ static void ice_set_dflt_settings_vfs(struct ice_pf *pf)
 		set_bit(ICE_VIRTCHNL_VF_CAP_L2, &vf->vf_caps);
 		vf->spoofchk = true;
 		vf->num_vf_qs = pf->num_qps_per_vf;
+
+		/* ctrl_vsi_idx will be set to a valid value only when iAVF
+		 * creates its first fdir rule.
+		 */
+		ice_vf_ctrl_invalidate_vsi(vf);
 	}
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index f379d13acc97..ece63268eb25 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -75,6 +75,7 @@ struct ice_vf {
 
 	u16 vf_id;			/* VF ID in the PF space */
 	u16 lan_vsi_idx;		/* index into PF struct */
+	u16 ctrl_vsi_idx;
 	/* first vector index of this VF in the PF space */
 	int first_vector_idx;
 	struct ice_sw *vf_sw_id;	/* switch ID the VF VSIs connect to */
@@ -145,6 +146,7 @@ void
 ice_vf_lan_overflow_event(struct ice_pf *pf, struct ice_rq_event_info *event);
 void ice_print_vfs_mdd_events(struct ice_pf *pf);
 void ice_print_vf_rx_mdd_event(struct ice_vf *vf);
+struct ice_vsi *ice_vf_ctrl_vsi_setup(struct ice_vf *vf);
 #else /* CONFIG_PCI_IOV */
 #define ice_process_vflr_event(pf) do {} while (0)
 #define ice_free_vfs(pf) do {} while (0)
-- 
2.30.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
