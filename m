Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 213E046400C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Nov 2021 22:24:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AD71C404C9;
	Tue, 30 Nov 2021 21:24:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A4-CbQ11dwQP; Tue, 30 Nov 2021 21:24:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D893140177;
	Tue, 30 Nov 2021 21:24:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2033B1BF995
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 21:23:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2224E6070A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 21:23:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f4FS4CA6rNGv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Nov 2021 21:23:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E895C60753
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 21:23:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="223550560"
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="223550560"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 13:23:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="499946574"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.133])
 by orsmga007.jf.intel.com with ESMTP; 30 Nov 2021 13:23:30 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 30 Nov 2021 13:21:51 -0800
Message-Id: <20211130212155.27852-10-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211130212155.27852-1-anthony.l.nguyen@intel.com>
References: <20211130212155.27852-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 10/14] ice: Add support for
 VIRTCHNL_VF_OFFLOAD_VLAN_V2
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

Add support for the VF driver to be able to request
VIRTCHNL_VF_OFFLOAD_VLAN_V2, negotiate its VLAN capabilities via
VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS, add/delete VLAN filters, and
enable/disable VLAN offloads.

VFs supporting VIRTCHNL_OFFLOAD_VLAN_V2 will be able to use the
following virtchnl opcodes:

VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS
VIRTCHNL_OP_ADD_VLAN_V2
VIRTCHNL_OP_DEL_VLAN_V2
VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2
VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2
VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2
VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2

Legacy VF drivers may expect the initial VLAN stripping settings to be
configured by the PF, so the PF initializes VLAN stripping based on the
VIRTCHNL_OP_GET_VF_RESOURCES opcode. However, with VLAN support via
VIRTCHNL_VF_OFFLOAD_VLAN_V2, this function is only expected to be used
for VFs that only support VIRTCHNL_VF_OFFLOAD_VLAN, which will only
be supported when a port VLAN is configured. Update the function
based on the new expectations. Also, change the message when the PF
can't enable/disable VLAN stripping to a dev_dbg() as this isn't fatal.

When a VF isn't in a port VLAN and it only supports
VIRTCHNL_VF_OFFLOAD_VLAN when Double VLAN Mode (DVM) is enabled, then
the PF needs to reject the VIRTCHNL_VF_OFFLOAD_VLAN capability and
configure the VF in software only VLAN mode. To do this add the new
function ice_vf_vsi_cfg_legacy_vlan_mode(), which updates the VF's
inner and outer ice_vsi_vlan_ops functions and sets up software only
VLAN mode.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c     |    1 +
 .../ethernet/intel/ice/ice_vf_vsi_vlan_ops.c  |  115 ++
 .../ethernet/intel/ice/ice_vf_vsi_vlan_ops.h  |    3 +
 .../intel/ice/ice_virtchnl_allowlist.c        |   10 +
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 1132 ++++++++++++++++-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |    8 +
 6 files changed, 1226 insertions(+), 43 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 9ca0ae2bb1dc..0dec7c5463eb 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -5,6 +5,7 @@
 #include "ice_base.h"
 #include "ice_lib.h"
 #include "ice_dcb_lib.h"
+#include "ice_virtchnl_pf.h"
 
 /**
  * __ice_vsi_get_qs_contig - Assign a contiguous chunk of queues to VSI
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c b/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
index 741b041606a2..d89577843d68 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
@@ -14,9 +14,20 @@ noop_vlan_arg(struct ice_vsi __always_unused *vsi,
 	return 0;
 }
 
+static int
+noop_vlan(struct ice_vsi __always_unused *vsi)
+{
+	return 0;
+}
+
 /**
  * ice_vf_vsi_init_vlan_ops - Initialize default VSI VLAN ops for VF VSI
  * @vsi: VF's VSI being configured
+ *
+ * If Double VLAN Mode (DVM) is enabled, assume that the VF supports the new
+ * VIRTCHNL_VF_VLAN_OFFLOAD_V2 capability and set up the VLAN ops accordingly.
+ * If SVM is enabled maintain the same level of VLAN support previous to
+ * VIRTCHNL_VF_VLAN_OFFLOAD_V2.
  */
 void ice_vf_vsi_init_vlan_ops(struct ice_vsi *vsi)
 {
@@ -44,6 +55,20 @@ void ice_vf_vsi_init_vlan_ops(struct ice_vsi *vsi)
 			vlan_ops = &vsi->inner_vlan_ops;
 			vlan_ops->add_vlan = noop_vlan_arg;
 			vlan_ops->del_vlan = noop_vlan_arg;
+			vlan_ops->ena_stripping = ice_vsi_ena_inner_stripping;
+			vlan_ops->dis_stripping = ice_vsi_dis_inner_stripping;
+			vlan_ops->ena_insertion = ice_vsi_ena_inner_insertion;
+			vlan_ops->dis_insertion = ice_vsi_dis_inner_insertion;
+		} else {
+			vlan_ops->del_vlan = ice_vsi_del_vlan;
+			vlan_ops->ena_stripping = ice_vsi_ena_outer_stripping;
+			vlan_ops->dis_stripping = ice_vsi_dis_outer_stripping;
+			vlan_ops->ena_insertion = ice_vsi_ena_outer_insertion;
+			vlan_ops->dis_insertion = ice_vsi_dis_outer_insertion;
+
+			/* setup inner VLAN ops */
+			vlan_ops = &vsi->inner_vlan_ops;
+
 			vlan_ops->ena_stripping = ice_vsi_ena_inner_stripping;
 			vlan_ops->dis_stripping = ice_vsi_dis_inner_stripping;
 			vlan_ops->ena_insertion = ice_vsi_ena_inner_insertion;
@@ -70,3 +95,93 @@ void ice_vf_vsi_init_vlan_ops(struct ice_vsi *vsi)
 		}
 	}
 }
+
+/**
+ * ice_vf_vsi_cfg_dvm_legacy_vlan_mode - Config VLAN mode for old VFs in DVM
+ * @vsi: VF's VSI being configured
+ *
+ * This should only be called when Double VLAN Mode (DVM) is enabled, there
+ * is not a port VLAN enabled on this VF, and the VF negotiates
+ * VIRTCHNL_VF_OFFLOAD_VLAN.
+ *
+ * This function sets up the VF VSI's inner and outer ice_vsi_vlan_ops and also
+ * initializes software only VLAN mode (i.e. allow all VLANs). Also, use no-op
+ * implementations for any functions that may be called during the lifetime of
+ * the VF so these methods do nothing and succeed.
+ */
+void ice_vf_vsi_cfg_dvm_legacy_vlan_mode(struct ice_vsi *vsi)
+{
+	struct ice_vf *vf = &vsi->back->vf[vsi->vf_id];
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct ice_vsi_vlan_ops *vlan_ops;
+
+	if (!ice_is_dvm_ena(&vsi->back->hw) || ice_vf_is_port_vlan_ena(vf))
+		return;
+
+	vlan_ops = &vsi->outer_vlan_ops;
+
+	/* Rx VLAN filtering always disabled to allow software offloaded VLANs
+	 * for VFs that only support VIRTCHNL_VF_OFFLOAD_VLAN and don't have a
+	 * port VLAN configured
+	 */
+	vlan_ops->dis_rx_filtering = ice_vsi_dis_rx_vlan_filtering;
+	/* Don't fail when attempting to enable Rx VLAN filtering */
+	vlan_ops->ena_rx_filtering = noop_vlan;
+
+	/* Tx VLAN filtering always disabled to allow software offloaded VLANs
+	 * for VFs that only support VIRTCHNL_VF_OFFLOAD_VLAN and don't have a
+	 * port VLAN configured
+	 */
+	vlan_ops->dis_tx_filtering = ice_vsi_dis_tx_vlan_filtering;
+	/* Don't fail when attempting to enable Tx VLAN filtering */
+	vlan_ops->ena_tx_filtering = noop_vlan;
+
+	if (vlan_ops->dis_rx_filtering(vsi))
+		dev_dbg(dev, "Failed to disable Rx VLAN filtering for old VF without VIRTCHNL_VF_OFFLOAD_VLAN_V2 support\n");
+	if (vlan_ops->dis_tx_filtering(vsi))
+		dev_dbg(dev, "Failed to disable Tx VLAN filtering for old VF without VIRTHCNL_VF_OFFLOAD_VLAN_V2 support\n");
+
+	/* All outer VLAN offloads must be disabled */
+	vlan_ops->dis_stripping = ice_vsi_dis_outer_stripping;
+	vlan_ops->dis_insertion = ice_vsi_dis_outer_insertion;
+
+	if (vlan_ops->dis_stripping(vsi))
+		dev_dbg(dev, "Failed to disable outer VLAN stripping for old VF without VIRTCHNL_VF_OFFLOAD_VLAN_V2 support\n");
+
+	if (vlan_ops->dis_insertion(vsi))
+		dev_dbg(dev, "Failed to disable outer VLAN insertion for old VF without VIRTCHNL_VF_OFFLOAD_VLAN_V2 support\n");
+
+	/* All inner VLAN offloads must be disabled */
+	vlan_ops = &vsi->inner_vlan_ops;
+
+	vlan_ops->dis_stripping = ice_vsi_dis_outer_stripping;
+	vlan_ops->dis_insertion = ice_vsi_dis_outer_insertion;
+
+	if (vlan_ops->dis_stripping(vsi))
+		dev_dbg(dev, "Failed to disable inner VLAN stripping for old VF without VIRTCHNL_VF_OFFLOAD_VLAN_V2 support\n");
+
+	if (vlan_ops->dis_insertion(vsi))
+		dev_dbg(dev, "Failed to disable inner VLAN insertion for old VF without VIRTCHNL_VF_OFFLOAD_VLAN_V2 support\n");
+}
+
+/**
+ * ice_vf_vsi_cfg_svm_legacy_vlan_mode - Config VLAN mode for old VFs in SVM
+ * @vsi: VF's VSI being configured
+ *
+ * This should only be called when Single VLAN Mode (SVM) is enabled, there is
+ * not a port VLAN enabled on this VF, and the VF negotiates
+ * VIRTCHNL_VF_OFFLOAD_VLAN.
+ *
+ * All of the normal SVM VLAN ops are identical for this case. However, by
+ * default Rx VLAN filtering should be turned off by default in this case.
+ */
+void ice_vf_vsi_cfg_svm_legacy_vlan_mode(struct ice_vsi *vsi)
+{
+	struct ice_vf *vf = &vsi->back->vf[vsi->vf_id];
+
+	if (ice_is_dvm_ena(&vsi->back->hw) || ice_vf_is_port_vlan_ena(vf))
+		return;
+
+	if (vsi->inner_vlan_ops.dis_rx_filtering(vsi))
+		dev_dbg(ice_pf_to_dev(vf->pf), "Failed to disable Rx VLAN filtering for old VF with VIRTCHNL_VF_OFFLOAD_VLAN support\n");
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.h b/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.h
index 8ea13628a5e1..875a4e615f39 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.h
@@ -8,6 +8,9 @@
 
 struct ice_vsi;
 
+void ice_vf_vsi_cfg_dvm_legacy_vlan_mode(struct ice_vsi *vsi);
+void ice_vf_vsi_cfg_svm_legacy_vlan_mode(struct ice_vsi *vsi);
+
 #ifdef CONFIG_PCI_IOV
 void ice_vf_vsi_init_vlan_ops(struct ice_vsi *vsi);
 #else
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
index 9feebe5f556c..5a82216e7d03 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
@@ -55,6 +55,15 @@ static const u32 vlan_allowlist_opcodes[] = {
 	VIRTCHNL_OP_ENABLE_VLAN_STRIPPING, VIRTCHNL_OP_DISABLE_VLAN_STRIPPING,
 };
 
+/* VIRTCHNL_VF_OFFLOAD_VLAN_V2 */
+static const u32 vlan_v2_allowlist_opcodes[] = {
+	VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS, VIRTCHNL_OP_ADD_VLAN_V2,
+	VIRTCHNL_OP_DEL_VLAN_V2, VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2,
+	VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2,
+	VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2,
+	VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2,
+};
+
 /* VIRTCHNL_VF_OFFLOAD_RSS_PF */
 static const u32 rss_pf_allowlist_opcodes[] = {
 	VIRTCHNL_OP_CONFIG_RSS_KEY, VIRTCHNL_OP_CONFIG_RSS_LUT,
@@ -89,6 +98,7 @@ static const struct allowlist_opcode_info allowlist_opcodes[] = {
 	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_RSS_PF, rss_pf_allowlist_opcodes),
 	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF, adv_rss_pf_allowlist_opcodes),
 	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_FDIR_PF, fdir_pf_allowlist_opcodes),
+	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_VLAN_V2, vlan_v2_allowlist_opcodes),
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 100c86c8ad9a..de74a2b4f846 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -11,6 +11,7 @@
 #include "ice_virtchnl_allowlist.h"
 #include "ice_flex_pipe.h"
 #include "ice_vf_vsi_vlan_ops.h"
+#include "ice_vlan.h"
 
 #define FIELD_SELECTOR(proto_hdr_field) \
 		BIT((proto_hdr_field) & PROTO_HDR_FIELD_MASK)
@@ -1458,6 +1459,7 @@ static void ice_vf_set_initialized(struct ice_vf *vf)
 	clear_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states);
 	clear_bit(ICE_VF_STATE_DIS, vf->vf_states);
 	set_bit(ICE_VF_STATE_INIT, vf->vf_states);
+	memset(&vf->vlan_v2_caps, 0, sizeof(vf->vlan_v2_caps));
 }
 
 /**
@@ -2347,8 +2349,33 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 		goto err;
 	}
 
-	if (!ice_vf_is_port_vlan_ena(vf))
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_VLAN;
+	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_VLAN_V2) {
+		/* VLAN offloads based on current device configuration */
+		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_VLAN_V2;
+	} else if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_VLAN) {
+		/* allow VF to negotiate VIRTCHNL_VF_OFFLOAD explicitly for
+		 * these two conditions, which amounts to guest VLAN filtering
+		 * and offloads being based on the inner VLAN or the
+		 * inner/single VLAN respectively and don't allow VF to
+		 * negotiate VIRTCHNL_VF_OFFLOAD in any other cases
+		 */
+		if (ice_is_dvm_ena(&pf->hw) && ice_vf_is_port_vlan_ena(vf)) {
+			vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_VLAN;
+		} else if (!ice_is_dvm_ena(&pf->hw) &&
+			   !ice_vf_is_port_vlan_ena(vf)) {
+			vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_VLAN;
+			/* configure backward compatible support for VFs that
+			 * only support VIRTCHNL_VF_OFFLOAD_VLAN, the PF is
+			 * configured in SVM, and no port VLAN is configured
+			 */
+			ice_vf_vsi_cfg_svm_legacy_vlan_mode(vsi);
+		} else if (ice_is_dvm_ena(&pf->hw)) {
+			/* configure software offloaded VLAN support when DVM
+			 * is enabled, but no port VLAN is enabled
+			 */
+			ice_vf_vsi_cfg_dvm_legacy_vlan_mode(vsi);
+		}
+	}
 
 	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RSS_PF) {
 		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_RSS_PF;
@@ -4175,6 +4202,62 @@ static bool ice_vf_vlan_offload_ena(u32 caps)
 	return !!(caps & VIRTCHNL_VF_OFFLOAD_VLAN);
 }
 
+/**
+ * ice_is_vlan_promisc_allowed - check if VLAN promiscuous config is allowed
+ * @vf: VF used to determine if VLAN promiscuous config is allowed
+ */
+static bool ice_is_vlan_promisc_allowed(struct ice_vf *vf)
+{
+	if ((test_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states) ||
+	     test_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states)) &&
+	    test_bit(ICE_FLAG_VF_TRUE_PROMISC_ENA, vf->pf->flags))
+		return true;
+
+	return false;
+}
+
+/**
+ * ice_vf_ena_vlan_promisc - Enable Tx/Rx VLAN promiscuous for the VLAN
+ * @vsi: VF's VSI used to enable VLAN promiscuous mode
+ * @vlan: VLAN used to enable VLAN promiscuous
+ *
+ * This function should only be called if VLAN promiscuous mode is allowed,
+ * which can be determined via ice_is_vlan_promisc_allowed().
+ */
+static int ice_vf_ena_vlan_promisc(struct ice_vsi *vsi, struct ice_vlan *vlan)
+{
+	u8 promisc_m = ICE_PROMISC_VLAN_TX | ICE_PROMISC_VLAN_RX;
+	int status;
+
+	status = ice_fltr_set_vsi_promisc(&vsi->back->hw, vsi->idx, promisc_m,
+					  vlan->vid);
+	if (status && status != -EEXIST)
+		return status;
+
+	return 0;
+}
+
+/**
+ * ice_vf_dis_vlan_promisc - Disable Tx/Rx VLAN promiscuous for the VLAN
+ * @vsi: VF's VSI used to disable VLAN promiscuous mode for
+ * @vlan: VLAN used to disable VLAN promiscuous
+ *
+ * This function should only be called if VLAN promiscuous mode is allowed,
+ * which can be determined via ice_is_vlan_promisc_allowed().
+ */
+static int ice_vf_dis_vlan_promisc(struct ice_vsi *vsi, struct ice_vlan *vlan)
+{
+	u8 promisc_m = ICE_PROMISC_VLAN_TX | ICE_PROMISC_VLAN_RX;
+	int status;
+
+	status = ice_fltr_clear_vsi_promisc(&vsi->back->hw, vsi->idx, promisc_m,
+					    vlan->vid);
+	if (status && status != -ENOENT)
+		return status;
+
+	return 0;
+}
+
 /**
  * ice_vf_has_max_vlans - check if VF already has the max allowed VLAN filters
  * @vf: VF to check against
@@ -4209,14 +4292,11 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
 	struct virtchnl_vlan_filter_list *vfl =
 	    (struct virtchnl_vlan_filter_list *)msg;
-	struct ice_vsi_vlan_ops *vlan_ops;
 	struct ice_pf *pf = vf->pf;
 	bool vlan_promisc = false;
 	struct ice_vsi *vsi;
 	struct device *dev;
-	struct ice_hw *hw;
 	int status = 0;
-	u8 promisc_m;
 	int i;
 
 	dev = ice_pf_to_dev(pf);
@@ -4244,7 +4324,6 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 		}
 	}
 
-	hw = &pf->hw;
 	vsi = ice_get_vf_vsi(vf);
 	if (!vsi) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
@@ -4260,17 +4339,22 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 		goto error_param;
 	}
 
-	if (ice_vf_is_port_vlan_ena(vf)) {
+	/* in DVM a VF can add/delete inner VLAN filters when
+	 * VIRTCHNL_VF_OFFLOAD_VLAN is negotiated, so only reject in SVM
+	 */
+	if (ice_vf_is_port_vlan_ena(vf) && !ice_is_dvm_ena(&pf->hw)) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		goto error_param;
 	}
 
-	if ((test_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states) ||
-	     test_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states)) &&
-	    test_bit(ICE_FLAG_VF_TRUE_PROMISC_ENA, pf->flags))
-		vlan_promisc = true;
+	/* in DVM VLAN promiscuous is based on the outer VLAN, which would be
+	 * the port VLAN if VIRTCHNL_VF_OFFLOAD_VLAN was negotiated, so only
+	 * allow vlan_promisc = true in SVM and if no port VLAN is configured
+	 */
+	vlan_promisc = ice_is_vlan_promisc_allowed(vf) &&
+		!ice_is_dvm_ena(&pf->hw) &&
+		!ice_vf_is_port_vlan_ena(vf);
 
-	vlan_ops = ice_get_compat_vsi_vlan_ops(vsi);
 	if (add_v) {
 		for (i = 0; i < vfl->num_elements; i++) {
 			u16 vid = vfl->vlan_id[i];
@@ -4300,23 +4384,16 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 				goto error_param;
 			}
 
-			/* Enable VLAN pruning when non-zero VLAN is added */
-			if (!vlan_promisc && vid &&
-			    !ice_vsi_is_vlan_pruning_ena(vsi)) {
-				status = vlan_ops->ena_rx_filtering(vsi);
-				if (status) {
+			/* Enable VLAN filtering on first non-zero VLAN */
+			if (!vlan_promisc && vid && !ice_is_dvm_ena(&pf->hw)) {
+				if (vsi->inner_vlan_ops.ena_rx_filtering(vsi)) {
 					v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 					dev_err(dev, "Enable VLAN pruning on VLAN ID: %d failed error-%d\n",
 						vid, status);
 					goto error_param;
 				}
 			} else if (vlan_promisc) {
-				/* Enable Ucast/Mcast VLAN promiscuous mode */
-				promisc_m = ICE_PROMISC_VLAN_TX |
-					    ICE_PROMISC_VLAN_RX;
-
-				status = ice_set_vsi_promisc(hw, vsi->idx,
-							     promisc_m, vid);
+				status = ice_vf_ena_vlan_promisc(vsi, &vlan);
 				if (status) {
 					v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 					dev_err(dev, "Enable Unicast/multicast promiscuous mode on VLAN ID:%d failed error-%d\n",
@@ -4353,19 +4430,12 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 				goto error_param;
 			}
 
-			/* Disable VLAN pruning when only VLAN 0 is left */
-			if (!ice_vsi_has_non_zero_vlans(vsi) &&
-			    ice_vsi_is_vlan_pruning_ena(vsi))
-				status = vlan_ops->dis_rx_filtering(vsi);
-
-			/* Disable Unicast/Multicast VLAN promiscuous mode */
-			if (vlan_promisc) {
-				promisc_m = ICE_PROMISC_VLAN_TX |
-					    ICE_PROMISC_VLAN_RX;
+			/* Disable VLAN filtering when only VLAN 0 is left */
+			if (!ice_vsi_has_non_zero_vlans(vsi))
+				vsi->inner_vlan_ops.dis_rx_filtering(vsi);
 
-				ice_clear_vsi_promisc(hw, vsi->idx,
-						      promisc_m, vid);
-			}
+			if (vlan_promisc)
+				ice_vf_dis_vlan_promisc(vsi, &vlan);
 		}
 	}
 
@@ -4472,11 +4542,8 @@ static int ice_vc_dis_vlan_stripping(struct ice_vf *vf)
  * ice_vf_init_vlan_stripping - enable/disable VLAN stripping on initialization
  * @vf: VF to enable/disable VLAN stripping for on initialization
  *
- * If the VIRTCHNL_VF_OFFLOAD_VLAN flag is set enable VLAN stripping, else if
- * the flag is cleared then we want to disable stripping. For example, the flag
- * will be cleared when port VLANs are configured by the administrator before
- * passing the VF to the guest or if the AVF driver doesn't support VLAN
- * offloads.
+ * Set the default for VLAN stripping based on whether a port VLAN is configured
+ * and the current VLAN mode of the device.
  */
 static int ice_vf_init_vlan_stripping(struct ice_vf *vf)
 {
@@ -4485,8 +4552,10 @@ static int ice_vf_init_vlan_stripping(struct ice_vf *vf)
 	if (!vsi)
 		return -EINVAL;
 
-	/* don't modify stripping if port VLAN is configured */
-	if (ice_vf_is_port_vlan_ena(vf))
+	/* don't modify stripping if port VLAN is configured in SVM since the
+	 * port VLAN is based on the inner/single VLAN in SVM
+	 */
+	if (ice_vf_is_port_vlan_ena(vf) && !ice_is_dvm_ena(&vsi->back->hw))
 		return 0;
 
 	if (ice_vf_vlan_offload_ena(vf->driver_caps))
@@ -4495,6 +4564,955 @@ static int ice_vf_init_vlan_stripping(struct ice_vf *vf)
 		return vsi->inner_vlan_ops.dis_stripping(vsi);
 }
 
+static u16 ice_vc_get_max_vlan_fltrs(struct ice_vf *vf)
+{
+	if (vf->trusted)
+		return VLAN_N_VID;
+	else
+		return ICE_MAX_VLAN_PER_VF;
+}
+
+/**
+ * ice_vf_outer_vlan_not_allowed - check outer VLAN can be used when the device is in DVM
+ * @vf: VF that being checked for
+ */
+static bool ice_vf_outer_vlan_not_allowed(struct ice_vf *vf)
+{
+	if (ice_vf_is_port_vlan_ena(vf))
+		return true;
+
+	return false;
+}
+
+/**
+ * ice_vc_set_dvm_caps - set VLAN capabilities when the device is in DVM
+ * @vf: VF that capabilities are being set for
+ * @caps: VLAN capabilities to populate
+ *
+ * Determine VLAN capabilities support based on whether a port VLAN is
+ * configured. If a port VLAN is configured then the VF should use the inner
+ * filtering/offload capabilities since the port VLAN is using the outer VLAN
+ * capabilies.
+ */
+static void
+ice_vc_set_dvm_caps(struct ice_vf *vf, struct virtchnl_vlan_caps *caps)
+{
+	struct virtchnl_vlan_supported_caps *supported_caps;
+
+	if (ice_vf_outer_vlan_not_allowed(vf)) {
+		/* until support for inner VLAN filtering is added when a port
+		 * VLAN is configured, only support software offloaded inner
+		 * VLANs when a port VLAN is confgured in DVM
+		 */
+		supported_caps = &caps->filtering.filtering_support;
+		supported_caps->inner = VIRTCHNL_VLAN_UNSUPPORTED;
+
+		supported_caps = &caps->offloads.stripping_support;
+		supported_caps->inner = VIRTCHNL_VLAN_ETHERTYPE_8100 |
+					VIRTCHNL_VLAN_TOGGLE |
+					VIRTCHNL_VLAN_TAG_LOCATION_L2TAG1;
+		supported_caps->outer = VIRTCHNL_VLAN_UNSUPPORTED;
+
+		supported_caps = &caps->offloads.insertion_support;
+		supported_caps->inner = VIRTCHNL_VLAN_ETHERTYPE_8100 |
+					VIRTCHNL_VLAN_TOGGLE |
+					VIRTCHNL_VLAN_TAG_LOCATION_L2TAG1;
+		supported_caps->outer = VIRTCHNL_VLAN_UNSUPPORTED;
+
+		caps->offloads.ethertype_init = VIRTCHNL_VLAN_ETHERTYPE_8100;
+		caps->offloads.ethertype_match =
+			VIRTCHNL_ETHERTYPE_STRIPPING_MATCHES_INSERTION;
+	} else {
+		supported_caps = &caps->filtering.filtering_support;
+		supported_caps->inner = VIRTCHNL_VLAN_UNSUPPORTED;
+		supported_caps->outer = VIRTCHNL_VLAN_ETHERTYPE_8100 |
+					VIRTCHNL_VLAN_ETHERTYPE_88A8 |
+					VIRTCHNL_VLAN_ETHERTYPE_9100 |
+					VIRTCHNL_VLAN_ETHERTYPE_AND;
+		caps->filtering.ethertype_init = VIRTCHNL_VLAN_ETHERTYPE_8100 |
+						 VIRTCHNL_VLAN_ETHERTYPE_88A8 |
+						 VIRTCHNL_VLAN_ETHERTYPE_9100;
+
+		supported_caps = &caps->offloads.stripping_support;
+		supported_caps->inner = VIRTCHNL_VLAN_TOGGLE |
+					VIRTCHNL_VLAN_ETHERTYPE_8100 |
+					VIRTCHNL_VLAN_TAG_LOCATION_L2TAG1;
+		supported_caps->outer = VIRTCHNL_VLAN_TOGGLE |
+					VIRTCHNL_VLAN_ETHERTYPE_8100 |
+					VIRTCHNL_VLAN_ETHERTYPE_88A8 |
+					VIRTCHNL_VLAN_ETHERTYPE_9100 |
+					VIRTCHNL_VLAN_ETHERTYPE_XOR |
+					VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2_2;
+
+		supported_caps = &caps->offloads.insertion_support;
+		supported_caps->inner = VIRTCHNL_VLAN_TOGGLE |
+					VIRTCHNL_VLAN_ETHERTYPE_8100 |
+					VIRTCHNL_VLAN_TAG_LOCATION_L2TAG1;
+		supported_caps->outer = VIRTCHNL_VLAN_TOGGLE |
+					VIRTCHNL_VLAN_ETHERTYPE_8100 |
+					VIRTCHNL_VLAN_ETHERTYPE_88A8 |
+					VIRTCHNL_VLAN_ETHERTYPE_9100 |
+					VIRTCHNL_VLAN_ETHERTYPE_XOR |
+					VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2;
+
+		caps->offloads.ethertype_init = VIRTCHNL_VLAN_ETHERTYPE_8100;
+
+		caps->offloads.ethertype_match =
+			VIRTCHNL_ETHERTYPE_STRIPPING_MATCHES_INSERTION;
+	}
+
+	caps->filtering.max_filters = ice_vc_get_max_vlan_fltrs(vf);
+}
+
+/**
+ * ice_vc_set_svm_caps - set VLAN capabilities when the device is in SVM
+ * @vf: VF that capabilities are being set for
+ * @caps: VLAN capabilities to populate
+ *
+ * Determine VLAN capabilities support based on whether a port VLAN is
+ * configured. If a port VLAN is configured then the VF does not have any VLAN
+ * filtering or offload capabilities since the port VLAN is using the inner VLAN
+ * capabilities in single VLAN mode (SVM). Otherwise allow the VF to use inner
+ * VLAN fitlering and offload capabilities.
+ */
+static void
+ice_vc_set_svm_caps(struct ice_vf *vf, struct virtchnl_vlan_caps *caps)
+{
+	struct virtchnl_vlan_supported_caps *supported_caps;
+
+	if (ice_vf_is_port_vlan_ena(vf)) {
+		supported_caps = &caps->filtering.filtering_support;
+		supported_caps->inner = VIRTCHNL_VLAN_UNSUPPORTED;
+		supported_caps->outer = VIRTCHNL_VLAN_UNSUPPORTED;
+
+		supported_caps = &caps->offloads.stripping_support;
+		supported_caps->inner = VIRTCHNL_VLAN_UNSUPPORTED;
+		supported_caps->outer = VIRTCHNL_VLAN_UNSUPPORTED;
+
+		supported_caps = &caps->offloads.insertion_support;
+		supported_caps->inner = VIRTCHNL_VLAN_UNSUPPORTED;
+		supported_caps->outer = VIRTCHNL_VLAN_UNSUPPORTED;
+
+		caps->offloads.ethertype_init = VIRTCHNL_VLAN_UNSUPPORTED;
+		caps->offloads.ethertype_match = VIRTCHNL_VLAN_UNSUPPORTED;
+		caps->filtering.max_filters = 0;
+	} else {
+		supported_caps = &caps->filtering.filtering_support;
+		supported_caps->inner = VIRTCHNL_VLAN_ETHERTYPE_8100;
+		supported_caps->outer = VIRTCHNL_VLAN_UNSUPPORTED;
+		caps->filtering.ethertype_init = VIRTCHNL_VLAN_ETHERTYPE_8100;
+
+		supported_caps = &caps->offloads.stripping_support;
+		supported_caps->inner = VIRTCHNL_VLAN_ETHERTYPE_8100 |
+					VIRTCHNL_VLAN_TOGGLE |
+					VIRTCHNL_VLAN_TAG_LOCATION_L2TAG1;
+		supported_caps->outer = VIRTCHNL_VLAN_UNSUPPORTED;
+
+		supported_caps = &caps->offloads.insertion_support;
+		supported_caps->inner = VIRTCHNL_VLAN_ETHERTYPE_8100 |
+					VIRTCHNL_VLAN_TOGGLE |
+					VIRTCHNL_VLAN_TAG_LOCATION_L2TAG1;
+		supported_caps->outer = VIRTCHNL_VLAN_UNSUPPORTED;
+
+		caps->offloads.ethertype_init = VIRTCHNL_VLAN_ETHERTYPE_8100;
+		caps->offloads.ethertype_match =
+			VIRTCHNL_ETHERTYPE_STRIPPING_MATCHES_INSERTION;
+		caps->filtering.max_filters = ice_vc_get_max_vlan_fltrs(vf);
+	}
+}
+
+/**
+ * ice_vc_get_offload_vlan_v2_caps - determine VF's VLAN capabilities
+ * @vf: VF to determine VLAN capabilities for
+ *
+ * This will only be called if the VF and PF successfully negotiated
+ * VIRTCHNL_VF_OFFLOAD_VLAN_V2.
+ *
+ * Set VLAN capabilities based on the current VLAN mode and whether a port VLAN
+ * is configured or not.
+ */
+static int ice_vc_get_offload_vlan_v2_caps(struct ice_vf *vf)
+{
+	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
+	struct virtchnl_vlan_caps *caps = NULL;
+	int err, len = 0;
+
+	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto out;
+	}
+
+	caps = kzalloc(sizeof(*caps), GFP_KERNEL);
+	if (!caps) {
+		v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;
+		goto out;
+	}
+	len = sizeof(*caps);
+
+	if (ice_is_dvm_ena(&vf->pf->hw))
+		ice_vc_set_dvm_caps(vf, caps);
+	else
+		ice_vc_set_svm_caps(vf, caps);
+
+	/* store negotiated caps to prevent invalid VF messages */
+	memcpy(&vf->vlan_v2_caps, caps, sizeof(*caps));
+
+out:
+	err = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS,
+				    v_ret, (u8 *)caps, len);
+	kfree(caps);
+	return err;
+}
+
+/**
+ * ice_vc_validate_vlan_tpid - validate VLAN TPID
+ * @filtering_caps: negotiated/supported VLAN filtering capabilities
+ * @tpid: VLAN TPID used for validation
+ *
+ * Convert the VLAN TPID to a VIRTCHNL_VLAN_ETHERTYPE_* and then compare against
+ * the negotiated/supported filtering caps to see if the VLAN TPID is valid.
+ */
+static bool ice_vc_validate_vlan_tpid(u16 filtering_caps, u16 tpid)
+{
+	enum virtchnl_vlan_support vlan_ethertype = VIRTCHNL_VLAN_UNSUPPORTED;
+
+	switch (tpid) {
+	case ETH_P_8021Q:
+		vlan_ethertype = VIRTCHNL_VLAN_ETHERTYPE_8100;
+		break;
+	case ETH_P_8021AD:
+		vlan_ethertype = VIRTCHNL_VLAN_ETHERTYPE_88A8;
+		break;
+	case ETH_P_QINQ1:
+		vlan_ethertype = VIRTCHNL_VLAN_ETHERTYPE_9100;
+		break;
+	}
+
+	if (!(filtering_caps & vlan_ethertype))
+		return false;
+
+	return true;
+}
+
+/**
+ * ice_vc_is_valid_vlan - validate the virtchnl_vlan
+ * @vc_vlan: virtchnl_vlan to validate
+ *
+ * If the VLAN TCI and VLAN TPID are 0, then this filter is invalid, so return
+ * false. Otherwise return true.
+ */
+static bool ice_vc_is_valid_vlan(struct virtchnl_vlan *vc_vlan)
+{
+	if (!vc_vlan->tci || !vc_vlan->tpid)
+		return false;
+
+	return true;
+}
+
+/**
+ * ice_vc_validate_vlan_filter_list - validate the filter list from the VF
+ * @vfc: negotiated/supported VLAN filtering capabilities
+ * @vfl: VLAN filter list from VF to validate
+ *
+ * Validate all of the filters in the VLAN filter list from the VF. If any of
+ * the checks fail then return false. Otherwise return true.
+ */
+static bool
+ice_vc_validate_vlan_filter_list(struct virtchnl_vlan_filtering_caps *vfc,
+				 struct virtchnl_vlan_filter_list_v2 *vfl)
+{
+	u16 i;
+
+	if (!vfl->num_elements)
+		return false;
+
+	for (i = 0; i < vfl->num_elements; i++) {
+		struct virtchnl_vlan_supported_caps *filtering_support =
+			&vfc->filtering_support;
+		struct virtchnl_vlan_filter *vlan_fltr = &vfl->filters[i];
+		struct virtchnl_vlan *outer = &vlan_fltr->outer;
+		struct virtchnl_vlan *inner = &vlan_fltr->inner;
+
+		if ((ice_vc_is_valid_vlan(outer) &&
+		     filtering_support->outer == VIRTCHNL_VLAN_UNSUPPORTED) ||
+		    (ice_vc_is_valid_vlan(inner) &&
+		     filtering_support->inner == VIRTCHNL_VLAN_UNSUPPORTED))
+			return false;
+
+		if ((outer->tci_mask &&
+		     !(filtering_support->outer & VIRTCHNL_VLAN_FILTER_MASK)) ||
+		    (inner->tci_mask &&
+		     !(filtering_support->inner & VIRTCHNL_VLAN_FILTER_MASK)))
+			return false;
+
+		if (((outer->tci & VLAN_PRIO_MASK) &&
+		     !(filtering_support->outer & VIRTCHNL_VLAN_PRIO)) ||
+		    ((inner->tci & VLAN_PRIO_MASK) &&
+		     !(filtering_support->inner & VIRTCHNL_VLAN_PRIO)))
+			return false;
+
+		if ((ice_vc_is_valid_vlan(outer) &&
+		     !ice_vc_validate_vlan_tpid(filtering_support->outer, outer->tpid)) ||
+		    (ice_vc_is_valid_vlan(inner) &&
+		     !ice_vc_validate_vlan_tpid(filtering_support->inner, inner->tpid)))
+			return false;
+	}
+
+	return true;
+}
+
+/**
+ * ice_vc_to_vlan - transform from struct virtchnl_vlan to struct ice_vlan
+ * @vc_vlan: struct virtchnl_vlan to transform
+ */
+static struct ice_vlan ice_vc_to_vlan(struct virtchnl_vlan *vc_vlan)
+{
+	struct ice_vlan vlan = { 0 };
+
+	vlan.prio = (vc_vlan->tci & VLAN_PRIO_MASK) >> VLAN_PRIO_SHIFT;
+	vlan.vid = vc_vlan->tci & VLAN_VID_MASK;
+	vlan.tpid = vc_vlan->tpid;
+
+	return vlan;
+}
+
+/**
+ * ice_vc_vlan_action - action to perform on the virthcnl_vlan
+ * @vsi: VF's VSI used to perform the action
+ * @vlan_action: function to perform the action with (i.e. add/del)
+ * @vlan: VLAN filter to perform the action with
+ */
+static int
+ice_vc_vlan_action(struct ice_vsi *vsi,
+		   int (*vlan_action)(struct ice_vsi *, struct ice_vlan *),
+		   struct ice_vlan *vlan)
+{
+	int err;
+
+	err = vlan_action(vsi, vlan);
+	if (err)
+		return err;
+
+	return 0;
+}
+
+/**
+ * ice_vc_del_vlans - delete VLAN(s) from the virtchnl filter list
+ * @vf: VF used to delete the VLAN(s)
+ * @vsi: VF's VSI used to delete the VLAN(s)
+ * @vfl: virthchnl filter list used to delete the filters
+ */
+static int
+ice_vc_del_vlans(struct ice_vf *vf, struct ice_vsi *vsi,
+		 struct virtchnl_vlan_filter_list_v2 *vfl)
+{
+	bool vlan_promisc = ice_is_vlan_promisc_allowed(vf);
+	int err;
+	u16 i;
+
+	for (i = 0; i < vfl->num_elements; i++) {
+		struct virtchnl_vlan_filter *vlan_fltr = &vfl->filters[i];
+		struct virtchnl_vlan *vc_vlan;
+
+		vc_vlan = &vlan_fltr->outer;
+		if (ice_vc_is_valid_vlan(vc_vlan)) {
+			struct ice_vlan vlan = ice_vc_to_vlan(vc_vlan);
+
+			err = ice_vc_vlan_action(vsi,
+						 vsi->outer_vlan_ops.del_vlan,
+						 &vlan);
+			if (err)
+				return err;
+
+			if (vlan_promisc)
+				ice_vf_dis_vlan_promisc(vsi, &vlan);
+		}
+
+		vc_vlan = &vlan_fltr->inner;
+		if (ice_vc_is_valid_vlan(vc_vlan)) {
+			struct ice_vlan vlan = ice_vc_to_vlan(vc_vlan);
+
+			err = ice_vc_vlan_action(vsi,
+						 vsi->inner_vlan_ops.del_vlan,
+						 &vlan);
+			if (err)
+				return err;
+
+			/* no support for VLAN promiscuous on inner VLAN unless
+			 * we are in Single VLAN Mode (SVM)
+			 */
+			if (!ice_is_dvm_ena(&vsi->back->hw) && vlan_promisc)
+				ice_vf_dis_vlan_promisc(vsi, &vlan);
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * ice_vc_remove_vlan_v2_msg - virtchnl handler for VIRTCHNL_OP_DEL_VLAN_V2
+ * @vf: VF the message was received from
+ * @msg: message received from the VF
+ */
+static int ice_vc_remove_vlan_v2_msg(struct ice_vf *vf, u8 *msg)
+{
+	struct virtchnl_vlan_filter_list_v2 *vfl =
+		(struct virtchnl_vlan_filter_list_v2 *)msg;
+	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
+	struct ice_vsi *vsi;
+
+	if (!ice_vc_validate_vlan_filter_list(&vf->vlan_v2_caps.filtering,
+					      vfl)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto out;
+	}
+
+	if (!ice_vc_isvalid_vsi_id(vf, vfl->vport_id)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto out;
+	}
+
+	vsi = ice_get_vf_vsi(vf);
+	if (!vsi) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto out;
+	}
+
+	if (ice_vc_del_vlans(vf, vsi, vfl))
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+
+out:
+	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DEL_VLAN_V2, v_ret, NULL,
+				     0);
+}
+
+/**
+ * ice_vc_add_vlans - add VLAN(s) from the virtchnl filter list
+ * @vf: VF used to add the VLAN(s)
+ * @vsi: VF's VSI used to add the VLAN(s)
+ * @vfl: virthchnl filter list used to add the filters
+ */
+static int
+ice_vc_add_vlans(struct ice_vf *vf, struct ice_vsi *vsi,
+		 struct virtchnl_vlan_filter_list_v2 *vfl)
+{
+	bool vlan_promisc = ice_is_vlan_promisc_allowed(vf);
+	int err;
+	u16 i;
+
+	for (i = 0; i < vfl->num_elements; i++) {
+		struct virtchnl_vlan_filter *vlan_fltr = &vfl->filters[i];
+		struct virtchnl_vlan *vc_vlan;
+
+		vc_vlan = &vlan_fltr->outer;
+		if (ice_vc_is_valid_vlan(vc_vlan)) {
+			struct ice_vlan vlan = ice_vc_to_vlan(vc_vlan);
+
+			err = ice_vc_vlan_action(vsi,
+						 vsi->outer_vlan_ops.add_vlan,
+						 &vlan);
+			if (err)
+				return err;
+
+			if (vlan_promisc) {
+				err = ice_vf_ena_vlan_promisc(vsi, &vlan);
+				if (err)
+					return err;
+			}
+		}
+
+		vc_vlan = &vlan_fltr->inner;
+		if (ice_vc_is_valid_vlan(vc_vlan)) {
+			struct ice_vlan vlan = ice_vc_to_vlan(vc_vlan);
+
+			err = ice_vc_vlan_action(vsi,
+						 vsi->inner_vlan_ops.add_vlan,
+						 &vlan);
+			if (err)
+				return err;
+
+			/* no support for VLAN promiscuous on inner VLAN unless
+			 * we are in Single VLAN Mode (SVM)
+			 */
+			if (!ice_is_dvm_ena(&vsi->back->hw) && vlan_promisc) {
+				err = ice_vf_ena_vlan_promisc(vsi, &vlan);
+				if (err)
+					return err;
+			}
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * ice_vc_validate_add_vlan_filter_list - validate add filter list from the VF
+ * @vsi: VF VSI used to get number of existing VLAN filters
+ * @vfc: negotiated/supported VLAN filtering capabilities
+ * @vfl: VLAN filter list from VF to validate
+ *
+ * Validate all of the filters in the VLAN filter list from the VF during the
+ * VIRTCHNL_OP_ADD_VLAN_V2 opcode. If any of the checks fail then return false.
+ * Otherwise return true.
+ */
+static bool
+ice_vc_validate_add_vlan_filter_list(struct ice_vsi *vsi,
+				     struct virtchnl_vlan_filtering_caps *vfc,
+				     struct virtchnl_vlan_filter_list_v2 *vfl)
+{
+	u16 num_requested_filters = vsi->num_vlan + vfl->num_elements;
+
+	if (num_requested_filters > vfc->max_filters)
+		return false;
+
+	return ice_vc_validate_vlan_filter_list(vfc, vfl);
+}
+
+/**
+ * ice_vc_add_vlan_v2_msg - virtchnl handler for VIRTCHNL_OP_ADD_VLAN_V2
+ * @vf: VF the message was received from
+ * @msg: message received from the VF
+ */
+static int ice_vc_add_vlan_v2_msg(struct ice_vf *vf, u8 *msg)
+{
+	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
+	struct virtchnl_vlan_filter_list_v2 *vfl =
+		(struct virtchnl_vlan_filter_list_v2 *)msg;
+	struct ice_vsi *vsi;
+
+	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto out;
+	}
+
+	if (!ice_vc_isvalid_vsi_id(vf, vfl->vport_id)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto out;
+	}
+
+	vsi = ice_get_vf_vsi(vf);
+	if (!vsi) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto out;
+	}
+
+	if (!ice_vc_validate_add_vlan_filter_list(vsi,
+						  &vf->vlan_v2_caps.filtering,
+						  vfl)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto out;
+	}
+
+	if (ice_vc_add_vlans(vf, vsi, vfl))
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+
+out:
+	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ADD_VLAN_V2, v_ret, NULL,
+				     0);
+}
+
+/**
+ * ice_vc_valid_vlan_setting - validate VLAN setting
+ * @negotiated_settings: negotiated VLAN settings during VF init
+ * @ethertype_setting: ethertype(s) requested for the VLAN setting
+ */
+static bool
+ice_vc_valid_vlan_setting(u32 negotiated_settings, u32 ethertype_setting)
+{
+	if (ethertype_setting && !(negotiated_settings & ethertype_setting))
+		return false;
+
+	/* only allow a single VIRTCHNL_VLAN_ETHERTYPE if
+	 * VIRTHCNL_VLAN_ETHERTYPE_AND is not negotiated/supported
+	 */
+	if (!(negotiated_settings & VIRTCHNL_VLAN_ETHERTYPE_AND) &&
+	    hweight32(ethertype_setting) > 1)
+		return false;
+
+	/* ability to modify the VLAN setting was not negotiated */
+	if (!(negotiated_settings & VIRTCHNL_VLAN_TOGGLE))
+		return false;
+
+	return true;
+}
+
+/**
+ * ice_vc_valid_vlan_setting_msg - validate the VLAN setting message
+ * @caps: negotiated VLAN settings during VF init
+ * @msg: message to validate
+ *
+ * Used to validate any VLAN virtchnl message sent as a
+ * virtchnl_vlan_setting structure. Validates the message against the
+ * negotiated/supported caps during VF driver init.
+ */
+static bool
+ice_vc_valid_vlan_setting_msg(struct virtchnl_vlan_supported_caps *caps,
+			      struct virtchnl_vlan_setting *msg)
+{
+	if ((!msg->outer_ethertype_setting &&
+	     !msg->inner_ethertype_setting) ||
+	    (!caps->outer && !caps->inner))
+		return false;
+
+	if (msg->outer_ethertype_setting &&
+	    !ice_vc_valid_vlan_setting(caps->outer,
+				       msg->outer_ethertype_setting))
+		return false;
+
+	if (msg->inner_ethertype_setting &&
+	    !ice_vc_valid_vlan_setting(caps->inner,
+				       msg->inner_ethertype_setting))
+		return false;
+
+	return true;
+}
+
+/**
+ * ice_vc_get_tpid - transform from VIRTCHNL_VLAN_ETHERTYPE_* to VLAN TPID
+ * @ethertype_setting: VIRTCHNL_VLAN_ETHERTYPE_* used to get VLAN TPID
+ * @tpid: VLAN TPID to populate
+ */
+static int ice_vc_get_tpid(u32 ethertype_setting, u16 *tpid)
+{
+	switch (ethertype_setting) {
+	case VIRTCHNL_VLAN_ETHERTYPE_8100:
+		*tpid = ETH_P_8021Q;
+		break;
+	case VIRTCHNL_VLAN_ETHERTYPE_88A8:
+		*tpid = ETH_P_8021AD;
+		break;
+	case VIRTCHNL_VLAN_ETHERTYPE_9100:
+		*tpid = ETH_P_QINQ1;
+		break;
+	default:
+		*tpid = 0;
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_vc_ena_vlan_offload - enable VLAN offload based on the ethertype_setting
+ * @vsi: VF's VSI used to enable the VLAN offload
+ * @ena_offload: function used to enable the VLAN offload
+ * @ethertype_setting: VIRTCHNL_VLAN_ETHERTYPE_* to enable offloads for
+ */
+static int
+ice_vc_ena_vlan_offload(struct ice_vsi *vsi,
+			int (*ena_offload)(struct ice_vsi *vsi, u16 tpid),
+			u32 ethertype_setting)
+{
+	u16 tpid;
+	int err;
+
+	err = ice_vc_get_tpid(ethertype_setting, &tpid);
+	if (err)
+		return err;
+
+	err = ena_offload(vsi, tpid);
+	if (err)
+		return err;
+
+	return 0;
+}
+
+#define ICE_L2TSEL_QRX_CONTEXT_REG_IDX	3
+#define ICE_L2TSEL_BIT_OFFSET		23
+enum ice_l2tsel {
+	ICE_L2TSEL_EXTRACT_FIRST_TAG_L2TAG2_2ND,
+	ICE_L2TSEL_EXTRACT_FIRST_TAG_L2TAG1,
+};
+
+/**
+ * ice_vsi_update_l2tsel - update l2tsel field for all Rx rings on this VSI
+ * @vsi: VSI used to update l2tsel on
+ * @l2tsel: l2tsel setting requested
+ *
+ * Use the l2tsel setting to update all of the Rx queue context bits for l2tsel.
+ * This will modify which descriptor field the first offloaded VLAN will be
+ * stripped into.
+ */
+static void ice_vsi_update_l2tsel(struct ice_vsi *vsi, enum ice_l2tsel l2tsel)
+{
+	struct ice_hw *hw = &vsi->back->hw;
+	u32 l2tsel_bit;
+	int i;
+
+	if (l2tsel == ICE_L2TSEL_EXTRACT_FIRST_TAG_L2TAG2_2ND)
+		l2tsel_bit = 0;
+	else
+		l2tsel_bit = BIT(ICE_L2TSEL_BIT_OFFSET);
+
+	for (i = 0; i < vsi->alloc_rxq; i++) {
+		u16 pfq = vsi->rxq_map[i];
+		u32 qrx_context_offset;
+		u32 regval;
+
+		qrx_context_offset =
+			QRX_CONTEXT(ICE_L2TSEL_QRX_CONTEXT_REG_IDX, pfq);
+
+		regval = rd32(hw, qrx_context_offset);
+		regval &= ~BIT(ICE_L2TSEL_BIT_OFFSET);
+		regval |= l2tsel_bit;
+		wr32(hw, qrx_context_offset, regval);
+	}
+}
+
+/**
+ * ice_vc_ena_vlan_stripping_v2_msg
+ * @vf: VF the message was received from
+ * @msg: message received from the VF
+ *
+ * virthcnl handler for VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2
+ */
+static int ice_vc_ena_vlan_stripping_v2_msg(struct ice_vf *vf, u8 *msg)
+{
+	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
+	struct virtchnl_vlan_supported_caps *stripping_support;
+	struct virtchnl_vlan_setting *strip_msg =
+		(struct virtchnl_vlan_setting *)msg;
+	u32 ethertype_setting;
+	struct ice_vsi *vsi;
+
+	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto out;
+	}
+
+	if (!ice_vc_isvalid_vsi_id(vf, strip_msg->vport_id)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto out;
+	}
+
+	vsi = ice_get_vf_vsi(vf);
+	if (!vsi) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto out;
+	}
+
+	stripping_support = &vf->vlan_v2_caps.offloads.stripping_support;
+	if (!ice_vc_valid_vlan_setting_msg(stripping_support, strip_msg)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto out;
+	}
+
+	ethertype_setting = strip_msg->outer_ethertype_setting;
+	if (ethertype_setting) {
+		if (ice_vc_ena_vlan_offload(vsi,
+					    vsi->outer_vlan_ops.ena_stripping,
+					    ethertype_setting)) {
+			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+			goto out;
+		} else {
+			enum ice_l2tsel l2tsel =
+				ICE_L2TSEL_EXTRACT_FIRST_TAG_L2TAG2_2ND;
+
+			/* PF tells the VF that the outer VLAN tag is always
+			 * extracted to VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2_2 and
+			 * inner is always extracted to
+			 * VIRTCHNL_VLAN_TAG_LOCATION_L2TAG1. This is needed to
+			 * support outer stripping so the first tag always ends
+			 * up in L2TAG2_2ND and the second/inner tag, if
+			 * enabled, is extracted in L2TAG1.
+			 */
+			ice_vsi_update_l2tsel(vsi, l2tsel);
+		}
+	}
+
+	ethertype_setting = strip_msg->inner_ethertype_setting;
+	if (ethertype_setting &&
+	    ice_vc_ena_vlan_offload(vsi, vsi->inner_vlan_ops.ena_stripping,
+				    ethertype_setting)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto out;
+	}
+
+out:
+	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2, v_ret, NULL, 0);
+}
+
+/**
+ * ice_vc_dis_vlan_stripping_v2_msg
+ * @vf: VF the message was received from
+ * @msg: message received from the VF
+ *
+ * virthcnl handler for VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2
+ */
+static int ice_vc_dis_vlan_stripping_v2_msg(struct ice_vf *vf, u8 *msg)
+{
+	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
+	struct virtchnl_vlan_supported_caps *stripping_support;
+	struct virtchnl_vlan_setting *strip_msg =
+		(struct virtchnl_vlan_setting *)msg;
+	u32 ethertype_setting;
+	struct ice_vsi *vsi;
+
+	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto out;
+	}
+
+	if (!ice_vc_isvalid_vsi_id(vf, strip_msg->vport_id)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto out;
+	}
+
+	vsi = ice_get_vf_vsi(vf);
+	if (!vsi) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto out;
+	}
+
+	stripping_support = &vf->vlan_v2_caps.offloads.stripping_support;
+	if (!ice_vc_valid_vlan_setting_msg(stripping_support, strip_msg)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto out;
+	}
+
+	ethertype_setting = strip_msg->outer_ethertype_setting;
+	if (ethertype_setting) {
+		if (vsi->outer_vlan_ops.dis_stripping(vsi)) {
+			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+			goto out;
+		} else {
+			enum ice_l2tsel l2tsel =
+				ICE_L2TSEL_EXTRACT_FIRST_TAG_L2TAG1;
+
+			/* PF tells the VF that the outer VLAN tag is always
+			 * extracted to VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2_2 and
+			 * inner is always extracted to
+			 * VIRTCHNL_VLAN_TAG_LOCATION_L2TAG1. This is needed to
+			 * support inner stripping while outer stripping is
+			 * disabled so that the first and only tag is extracted
+			 * in L2TAG1.
+			 */
+			ice_vsi_update_l2tsel(vsi, l2tsel);
+		}
+	}
+
+	ethertype_setting = strip_msg->inner_ethertype_setting;
+	if (ethertype_setting && vsi->inner_vlan_ops.dis_stripping(vsi)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto out;
+	}
+
+out:
+	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2, v_ret, NULL, 0);
+}
+
+/**
+ * ice_vc_ena_vlan_insertion_v2_msg
+ * @vf: VF the message was received from
+ * @msg: message received from the VF
+ *
+ * virthcnl handler for VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2
+ */
+static int ice_vc_ena_vlan_insertion_v2_msg(struct ice_vf *vf, u8 *msg)
+{
+	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
+	struct virtchnl_vlan_supported_caps *insertion_support;
+	struct virtchnl_vlan_setting *insertion_msg =
+		(struct virtchnl_vlan_setting *)msg;
+	u32 ethertype_setting;
+	struct ice_vsi *vsi;
+
+	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto out;
+	}
+
+	if (!ice_vc_isvalid_vsi_id(vf, insertion_msg->vport_id)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto out;
+	}
+
+	vsi = ice_get_vf_vsi(vf);
+	if (!vsi) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto out;
+	}
+
+	insertion_support = &vf->vlan_v2_caps.offloads.insertion_support;
+	if (!ice_vc_valid_vlan_setting_msg(insertion_support, insertion_msg)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto out;
+	}
+
+	ethertype_setting = insertion_msg->outer_ethertype_setting;
+	if (ethertype_setting &&
+	    ice_vc_ena_vlan_offload(vsi, vsi->outer_vlan_ops.ena_insertion,
+				    ethertype_setting)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto out;
+	}
+
+	ethertype_setting = insertion_msg->inner_ethertype_setting;
+	if (ethertype_setting &&
+	    ice_vc_ena_vlan_offload(vsi, vsi->inner_vlan_ops.ena_insertion,
+				    ethertype_setting)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto out;
+	}
+
+out:
+	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2, v_ret, NULL, 0);
+}
+
+/**
+ * ice_vc_dis_vlan_insertion_v2_msg
+ * @vf: VF the message was received from
+ * @msg: message received from the VF
+ *
+ * virthcnl handler for VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2
+ */
+static int ice_vc_dis_vlan_insertion_v2_msg(struct ice_vf *vf, u8 *msg)
+{
+	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
+	struct virtchnl_vlan_supported_caps *insertion_support;
+	struct virtchnl_vlan_setting *insertion_msg =
+		(struct virtchnl_vlan_setting *)msg;
+	u32 ethertype_setting;
+	struct ice_vsi *vsi;
+
+	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto out;
+	}
+
+	if (!ice_vc_isvalid_vsi_id(vf, insertion_msg->vport_id)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto out;
+	}
+
+	vsi = ice_get_vf_vsi(vf);
+	if (!vsi) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto out;
+	}
+
+	insertion_support = &vf->vlan_v2_caps.offloads.insertion_support;
+	if (!ice_vc_valid_vlan_setting_msg(insertion_support, insertion_msg)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto out;
+	}
+
+	ethertype_setting = insertion_msg->outer_ethertype_setting;
+	if (ethertype_setting && vsi->outer_vlan_ops.dis_insertion(vsi)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto out;
+	}
+
+	ethertype_setting = insertion_msg->inner_ethertype_setting;
+	if (ethertype_setting && vsi->inner_vlan_ops.dis_insertion(vsi)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto out;
+	}
+
+out:
+	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2, v_ret, NULL, 0);
+}
+
 static struct ice_vc_vf_ops ice_vc_vf_dflt_ops = {
 	.get_ver_msg = ice_vc_get_ver_msg,
 	.get_vf_res_msg = ice_vc_get_vf_res_msg,
@@ -4517,6 +5535,13 @@ static struct ice_vc_vf_ops ice_vc_vf_dflt_ops = {
 	.handle_rss_cfg_msg = ice_vc_handle_rss_cfg,
 	.add_fdir_fltr_msg = ice_vc_add_fdir_fltr,
 	.del_fdir_fltr_msg = ice_vc_del_fdir_fltr,
+	.get_offload_vlan_v2_caps = ice_vc_get_offload_vlan_v2_caps,
+	.add_vlan_v2_msg = ice_vc_add_vlan_v2_msg,
+	.remove_vlan_v2_msg = ice_vc_remove_vlan_v2_msg,
+	.ena_vlan_stripping_v2_msg = ice_vc_ena_vlan_stripping_v2_msg,
+	.dis_vlan_stripping_v2_msg = ice_vc_dis_vlan_stripping_v2_msg,
+	.ena_vlan_insertion_v2_msg = ice_vc_ena_vlan_insertion_v2_msg,
+	.dis_vlan_insertion_v2_msg = ice_vc_dis_vlan_insertion_v2_msg,
 };
 
 void ice_vc_set_dflt_vf_ops(struct ice_vc_vf_ops *ops)
@@ -4745,7 +5770,7 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
 	case VIRTCHNL_OP_GET_VF_RESOURCES:
 		err = ops->get_vf_res_msg(vf, msg);
 		if (ice_vf_init_vlan_stripping(vf))
-			dev_err(dev, "Failed to initialize VLAN stripping for VF %d\n",
+			dev_dbg(dev, "Failed to initialize VLAN stripping for VF %d\n",
 				vf->vf_id);
 		ice_vc_notify_vf_link_state(vf);
 		break;
@@ -4810,6 +5835,27 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
 	case VIRTCHNL_OP_DEL_RSS_CFG:
 		err = ops->handle_rss_cfg_msg(vf, msg, false);
 		break;
+	case VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS:
+		err = ops->get_offload_vlan_v2_caps(vf);
+		break;
+	case VIRTCHNL_OP_ADD_VLAN_V2:
+		err = ops->add_vlan_v2_msg(vf, msg);
+		break;
+	case VIRTCHNL_OP_DEL_VLAN_V2:
+		err = ops->remove_vlan_v2_msg(vf, msg);
+		break;
+	case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2:
+		err = ops->ena_vlan_stripping_v2_msg(vf, msg);
+		break;
+	case VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2:
+		err = ops->dis_vlan_stripping_v2_msg(vf, msg);
+		break;
+	case VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2:
+		err = ops->ena_vlan_insertion_v2_msg(vf, msg);
+		break;
+	case VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2:
+		err = ops->dis_vlan_insertion_v2_msg(vf, msg);
+		break;
 	case VIRTCHNL_OP_UNKNOWN:
 	default:
 		dev_err(dev, "Unsupported opcode %d from VF %d\n", v_opcode,
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index 4110847e0699..4f4961043638 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -95,6 +95,13 @@ struct ice_vc_vf_ops {
 	int (*handle_rss_cfg_msg)(struct ice_vf *vf, u8 *msg, bool add);
 	int (*add_fdir_fltr_msg)(struct ice_vf *vf, u8 *msg);
 	int (*del_fdir_fltr_msg)(struct ice_vf *vf, u8 *msg);
+	int (*get_offload_vlan_v2_caps)(struct ice_vf *vf);
+	int (*add_vlan_v2_msg)(struct ice_vf *vf, u8 *msg);
+	int (*remove_vlan_v2_msg)(struct ice_vf *vf, u8 *msg);
+	int (*ena_vlan_stripping_v2_msg)(struct ice_vf *vf, u8 *msg);
+	int (*dis_vlan_stripping_v2_msg)(struct ice_vf *vf, u8 *msg);
+	int (*ena_vlan_insertion_v2_msg)(struct ice_vf *vf, u8 *msg);
+	int (*dis_vlan_insertion_v2_msg)(struct ice_vf *vf, u8 *msg);
 };
 
 /* VF information structure */
@@ -121,6 +128,7 @@ struct ice_vf {
 	DECLARE_BITMAP(txq_ena, ICE_MAX_RSS_QS_PER_VF);
 	DECLARE_BITMAP(rxq_ena, ICE_MAX_RSS_QS_PER_VF);
 	struct ice_vlan port_vlan_info;	/* Port VLAN ID, QoS, and TPID */
+	struct virtchnl_vlan_caps vlan_v2_caps;
 	u8 pf_set_mac:1;		/* VF MAC address set by VMM admin */
 	u8 trusted:1;
 	u8 spoofchk:1;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
