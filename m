Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A2A31F9C5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Feb 2021 14:19:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A0B8D606FE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Feb 2021 13:19:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vNobX6EHhgTY for <lists+intel-wired-lan@lfdr.de>;
	Fri, 19 Feb 2021 13:19:05 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 1A67B60703; Fri, 19 Feb 2021 13:19:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DA7FA606FE;
	Fri, 19 Feb 2021 13:18:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 233F11BF393
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Feb 2021 13:18:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1AC7887129
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Feb 2021 13:18:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R37ez+CIIcu7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Feb 2021 13:18:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 585368713D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Feb 2021 13:17:18 +0000 (UTC)
IronPort-SDR: 4MroeuOrDvMg/qKSchSIGjclDlGLsDT9CPYDawerZuqGX7jzBx4+1GgZrfP3/U8T4AKvblkwDb
 9FiWtHjRS3eQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9899"; a="171507243"
X-IronPort-AV: E=Sophos;i="5.81,189,1610438400"; d="scan'208";a="171507243"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2021 05:17:18 -0800
IronPort-SDR: eJ0CNph6VW+qNIpQykrciQMcwEjJ9eFRELWAb10+oft9nSu6zAIG7GfpiGms/Xiz8bxFrqyG7h
 YROVXxwqcWHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,189,1610438400"; d="scan'208";a="401025235"
Received: from npg-dpdk-haiyue-1.sh.intel.com ([10.67.118.220])
 by orsmga008.jf.intel.com with ESMTP; 19 Feb 2021 05:17:15 -0800
From: Haiyue Wang <haiyue.wang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 19 Feb 2021 20:59:49 +0800
Message-Id: <20210219130001.49600-7-haiyue.wang@intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210219130001.49600-1-haiyue.wang@intel.com>
References: <20210219130001.49600-1-haiyue.wang@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [Patch v4 06/18] ice: Add support for per VF ctrl
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
index 357706444dd5..7b45f2ab4036 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -73,7 +73,7 @@
 #define ICE_MIN_LAN_TXRX_MSIX	1
 #define ICE_MIN_LAN_OICR_MSIX	1
 #define ICE_MIN_MSIX		(ICE_MIN_LAN_TXRX_MSIX + ICE_MIN_LAN_OICR_MSIX)
-#define ICE_FDIR_MSIX		1
+#define ICE_FDIR_MSIX		2
 #define ICE_NO_VSI		0xffff
 #define ICE_VSI_MAP_CONTIG	0
 #define ICE_VSI_MAP_SCATTER	1
@@ -84,6 +84,8 @@
 #define ICE_MAX_LG_RSS_QS	256
 #define ICE_RES_VALID_BIT	0x8000
 #define ICE_RES_MISC_VEC_ID	(ICE_RES_VALID_BIT - 1)
+/* All VF control VSIs share the same IRQ, so assign a unique ID for them */
+#define ICE_RES_VF_CTRL_VEC_ID	(ICE_RES_MISC_VEC_ID - 1)
 #define ICE_INVAL_Q_INDEX	0xffff
 #define ICE_INVAL_VFID		256
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 9857cc933877..d67cf205ebca 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -343,6 +343,9 @@ static int ice_vsi_clear(struct ice_vsi *vsi)
 	pf->vsi[vsi->idx] = NULL;
 	if (vsi->idx < pf->next_vsi && vsi->type != ICE_VSI_CTRL)
 		pf->next_vsi = vsi->idx;
+	if (vsi->idx < pf->next_vsi && vsi->type == ICE_VSI_CTRL &&
+	    vsi->vf_id != ICE_INVAL_VFID)
+		pf->next_vsi = vsi->idx;
 
 	ice_vsi_free_arrays(vsi);
 	mutex_unlock(&pf->sw_mutex);
@@ -454,8 +457,8 @@ ice_vsi_alloc(struct ice_pf *pf, enum ice_vsi_type vsi_type, u16 vf_id)
 		goto unlock_pf;
 	}
 
-	if (vsi->type == ICE_VSI_CTRL) {
-		/* Use the last VSI slot as the index for the control VSI */
+	if (vsi->type == ICE_VSI_CTRL && vf_id == ICE_INVAL_VFID) {
+		/* Use the last VSI slot as the index for PF control VSI */
 		vsi->idx = pf->num_alloc_vsi - 1;
 		pf->ctrl_vsi_idx = vsi->idx;
 		pf->vsi[vsi->idx] = vsi;
@@ -468,6 +471,9 @@ ice_vsi_alloc(struct ice_pf *pf, enum ice_vsi_type vsi_type, u16 vf_id)
 		pf->next_vsi = ice_get_free_slot(pf->vsi, pf->num_alloc_vsi,
 						 pf->next_vsi);
 	}
+
+	if (vsi->type == ICE_VSI_CTRL && vf_id != ICE_INVAL_VFID)
+		pf->vf[vf_id].ctrl_vsi_idx = vsi->idx;
 	goto unlock_pf;
 
 err_rings:
@@ -506,7 +512,7 @@ static int ice_alloc_fd_res(struct ice_vsi *vsi)
 	if (!b_val)
 		return -EPERM;
 
-	if (vsi->type != ICE_VSI_PF)
+	if (!(vsi->type == ICE_VSI_PF || vsi->type == ICE_VSI_VF))
 		return -EPERM;
 
 	if (!test_bit(ICE_FLAG_FD_ENA, pf->flags))
@@ -517,6 +523,13 @@ static int ice_alloc_fd_res(struct ice_vsi *vsi)
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
 
@@ -856,7 +869,8 @@ static void ice_set_fd_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
 	u8 dflt_q_group, dflt_q_prio;
 	u16 dflt_q, report_q, val;
 
-	if (vsi->type != ICE_VSI_PF && vsi->type != ICE_VSI_CTRL)
+	if (vsi->type != ICE_VSI_PF && vsi->type != ICE_VSI_CTRL &&
+	    vsi->type != ICE_VSI_VF)
 		return;
 
 	val = ICE_AQ_VSI_PROP_FLOW_DIR_VALID;
@@ -1179,7 +1193,24 @@ static int ice_vsi_setup_vector_base(struct ice_vsi *vsi)
 
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
@@ -2302,7 +2333,7 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 	struct ice_vsi *vsi;
 	int ret, i;
 
-	if (vsi_type == ICE_VSI_VF)
+	if (vsi_type == ICE_VSI_VF || vsi_type == ICE_VSI_CTRL)
 		vsi = ice_vsi_alloc(pf, vsi_type, vf_id);
 	else
 		vsi = ice_vsi_alloc(pf, vsi_type, ICE_INVAL_VFID);
@@ -2317,7 +2348,7 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 	if (vsi->type == ICE_VSI_PF)
 		vsi->ethtype = ETH_P_PAUSE;
 
-	if (vsi->type == ICE_VSI_VF)
+	if (vsi->type == ICE_VSI_VF || vsi->type == ICE_VSI_CTRL)
 		vsi->vf_id = vf_id;
 
 	ice_alloc_fd_res(vsi);
@@ -2764,7 +2795,24 @@ int ice_vsi_release(struct ice_vsi *vsi)
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
index 43c69219cacb..0ac509eaaad8 100644
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
index 2d5d6c766035..08e09206a282 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -201,6 +201,25 @@ static void ice_vf_vsi_release(struct ice_vf *vf)
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
@@ -214,6 +233,9 @@ static void ice_free_vf_res(struct ice_vf *vf)
 	 * accessing the VF's VSI after it's freed or invalidated.
 	 */
 	clear_bit(ICE_VF_STATE_INIT, vf->vf_states);
+	/* free VF control VSI */
+	if (vf->ctrl_vsi_idx != ICE_NO_VSI)
+		ice_vf_ctrl_vsi_release(vf);
 
 	/* free VSI and disconnect it from the parent uplink */
 	if (vf->lan_vsi_idx != ICE_NO_VSI) {
@@ -559,6 +581,29 @@ static struct ice_vsi *ice_vf_vsi_setup(struct ice_vf *vf)
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
@@ -1258,6 +1303,12 @@ bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
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
@@ -1376,6 +1427,12 @@ bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
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
@@ -1551,6 +1608,11 @@ static void ice_set_dflt_settings_vfs(struct ice_pf *pf)
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
