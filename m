Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F7611D762
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Dec 2019 20:45:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F106020111;
	Thu, 12 Dec 2019 19:44:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2CnWAbzxMnTF; Thu, 12 Dec 2019 19:44:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D547624E91;
	Thu, 12 Dec 2019 19:44:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9433D1BF340
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 80D01888D9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Pxrs29wMMTG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2019 19:44:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3394A888C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 11:44:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,306,1571727600"; d="scan'208";a="296698849"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga001.jf.intel.com with ESMTP; 12 Dec 2019 11:44:34 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 12 Dec 2019 03:12:54 -0800
Message-Id: <20191212111307.33566-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191212111307.33566-1-anthony.l.nguyen@intel.com>
References: <20191212111307.33566-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S35 02/15] ice: Fix VF spoofchk
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

There are many things wrong with the function
ice_set_vf_spoofchk().

1. The VSI being modified is the PF VSI, not the VF VSI.
2. We are enabling Rx VLAN pruning instead of Tx VLAN anti-spoof.
3. The spoofchk setting for each VF is not initialized correctly
   or re-initialized correctly on reset.

To fix [1] we need to make sure we are modifying the VF VSI.
This is done by using the vf->lan_vsi_idx to index into the PF's
VSI array.

To fix [2] replace setting Rx VLAN pruning in ice_set_vf_spoofchk()
with setting Tx VLAN anti-spoof.

To Fix [3] we need to make sure the initial VSI settings match what
is done in ice_set_vf_spoofchk() for spoofchk=on. Also make sure
this also works for VF reset. This was done by modifying ice_vsi_init()
to account for the current spoofchk state of the VF VSI.

Because of these changes, Tx VLAN anti-spoof needs to be removed
from ice_cfg_vlan_pruning(). This is okay for the VF because this
is now controlled from the admin enabling/disabling spoofchk. For the
PF, Tx VLAN anti-spoof should not be set. This change requires us to
call ice_set_vf_spoofchk() when configuring promiscuous mode for
the VF which requires ice_set_vf_spoofchk() to move in order to prevent
a forward declaration prototype.

Also, add VLAN 0 by default when allocating a VF since the PF is unaware
if the guest OS is running the 8021q module. Without this, MDD events will
trigger on untagged traffic because spoofcheck is enabled by default. Due
to this change, ignore add/delete messages for VLAN 0 from VIRTCHNL since
this is added/deleted during VF initialization/teardown respectively and
should not be modified.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |   1 +
 drivers/net/ethernet/intel/ice/ice_lib.c      |  34 +--
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 207 +++++++++++-------
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |   1 -
 4 files changed, 146 insertions(+), 97 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index dc341ab1bd71..5746c07814b7 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -278,6 +278,7 @@ struct ice_vsi {
 	u8 current_isup:1;		 /* Sync 'link up' logging */
 	u8 stat_offsets_loaded:1;
 	u8 vlan_ena:1;
+	u16 num_vlan;
 
 	/* queue information */
 	u8 tx_mapping_mode;		 /* ICE_MAP_MODE_[CONTIG|SCATTER] */
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index f4b4a1dcd643..a05d30f86619 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -828,12 +828,23 @@ static int ice_vsi_init(struct ice_vsi *vsi, bool init_vsi)
 		ctxt->info.valid_sections |=
 			cpu_to_le16(ICE_AQ_VSI_PROP_RXQ_MAP_VALID);
 
-	/* Enable MAC Antispoof with new VSI being initialized or updated */
-	if (vsi->type == ICE_VSI_VF && pf->vf[vsi->vf_id].spoofchk) {
+	/* enable/disable MAC and VLAN anti-spoof when spoofchk is on/off
+	 * respectively
+	 */
+	if (vsi->type == ICE_VSI_VF) {
 		ctxt->info.valid_sections |=
 			cpu_to_le16(ICE_AQ_VSI_PROP_SECURITY_VALID);
-		ctxt->info.sec_flags |=
-			ICE_AQ_VSI_SEC_FLAG_ENA_MAC_ANTI_SPOOF;
+		if (pf->vf[vsi->vf_id].spoofchk) {
+			ctxt->info.sec_flags |=
+				ICE_AQ_VSI_SEC_FLAG_ENA_MAC_ANTI_SPOOF |
+				(ICE_AQ_VSI_SEC_TX_VLAN_PRUNE_ENA <<
+				 ICE_AQ_VSI_SEC_TX_PRUNE_ENA_S);
+		} else {
+			ctxt->info.sec_flags &=
+				~(ICE_AQ_VSI_SEC_FLAG_ENA_MAC_ANTI_SPOOF |
+				  (ICE_AQ_VSI_SEC_TX_VLAN_PRUNE_ENA <<
+				   ICE_AQ_VSI_SEC_TX_PRUNE_ENA_S));
+		}
 	}
 
 	/* Allow control frames out of main VSI */
@@ -1671,22 +1682,14 @@ int ice_cfg_vlan_pruning(struct ice_vsi *vsi, bool ena, bool vlan_promisc)
 
 	ctxt->info = vsi->info;
 
-	if (ena) {
-		ctxt->info.sec_flags |=
-			ICE_AQ_VSI_SEC_TX_VLAN_PRUNE_ENA <<
-			ICE_AQ_VSI_SEC_TX_PRUNE_ENA_S;
+	if (ena)
 		ctxt->info.sw_flags2 |= ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA;
-	} else {
-		ctxt->info.sec_flags &=
-			~(ICE_AQ_VSI_SEC_TX_VLAN_PRUNE_ENA <<
-			  ICE_AQ_VSI_SEC_TX_PRUNE_ENA_S);
+	else
 		ctxt->info.sw_flags2 &= ~ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA;
-	}
 
 	if (!vlan_promisc)
 		ctxt->info.valid_sections =
-			cpu_to_le16(ICE_AQ_VSI_PROP_SECURITY_VALID |
-				    ICE_AQ_VSI_PROP_SW_VALID);
+			cpu_to_le16(ICE_AQ_VSI_PROP_SW_VALID);
 
 	status = ice_update_vsi(&pf->hw, vsi->idx, ctxt, NULL);
 	if (status) {
@@ -1696,7 +1699,6 @@ int ice_cfg_vlan_pruning(struct ice_vsi *vsi, bool ena, bool vlan_promisc)
 		goto err_out;
 	}
 
-	vsi->info.sec_flags = ctxt->info.sec_flags;
 	vsi->info.sw_flags2 = ctxt->info.sw_flags2;
 
 	kfree(ctxt);
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 0004117bc192..cc663fea8627 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -991,10 +991,17 @@ static void ice_cleanup_and_realloc_vf(struct ice_vf *vf)
 
 	/* reallocate VF resources to finish resetting the VSI state */
 	if (!ice_alloc_vf_res(vf)) {
+		struct ice_vsi *vsi;
+
 		ice_ena_vf_mappings(vf);
 		set_bit(ICE_VF_STATE_ACTIVE, vf->vf_states);
 		clear_bit(ICE_VF_STATE_DIS, vf->vf_states);
-		vf->num_vlan = 0;
+
+		vsi = pf->vsi[vf->lan_vsi_idx];
+		if (ice_vsi_add_vlan(vsi, 0))
+			dev_warn(ice_pf_to_dev(pf),
+				 "Failed to add VLAN 0 filter for VF %d, MDD events will trigger. Reset the VF, disable spoofchk, or enable 8021q module on the guest",
+				 vf->vf_id);
 	}
 
 	/* Tell the VF driver the reset is done. This needs to be done only
@@ -1023,7 +1030,7 @@ ice_vf_set_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m,
 	struct ice_hw *hw;
 
 	hw = &pf->hw;
-	if (vf->num_vlan) {
+	if (vsi->num_vlan) {
 		status = ice_set_vlan_vsi_promisc(hw, vsi->idx, promisc_m,
 						  rm_promisc);
 	} else if (vf->port_vlan_id) {
@@ -1273,7 +1280,7 @@ static bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 	 */
 	if (test_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states) ||
 	    test_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states)) {
-		if (vf->port_vlan_id ||  vf->num_vlan)
+		if (vf->port_vlan_id || vsi->num_vlan)
 			promisc_m = ICE_UCAST_VLAN_PROMISC_BITS;
 		else
 			promisc_m = ICE_UCAST_PROMISC_BITS;
@@ -1892,6 +1899,89 @@ static int ice_vc_config_rss_lut(struct ice_vf *vf, u8 *msg)
 				     NULL, 0);
 }
 
+/**
+ * ice_set_vf_spoofchk
+ * @netdev: network interface device structure
+ * @vf_id: VF identifier
+ * @ena: flag to enable or disable feature
+ *
+ * Enable or disable VF spoof checking
+ */
+int ice_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool ena)
+{
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_pf *pf = np->vsi->back;
+	struct ice_vsi_ctx *ctx;
+	struct ice_vsi *vf_vsi;
+	enum ice_status status;
+	struct device *dev;
+	struct ice_vf *vf;
+	int ret = 0;
+
+	dev = ice_pf_to_dev(pf);
+	if (ice_validate_vf_id(pf, vf_id))
+		return -EINVAL;
+
+	vf = &pf->vf[vf_id];
+
+	if (ice_check_vf_init(pf, vf))
+		return -EBUSY;
+
+	vf_vsi = pf->vsi[vf->lan_vsi_idx];
+	if (!vf_vsi) {
+		netdev_err(netdev, "VSI %d for VF %d is null\n",
+			   vf->lan_vsi_idx, vf->vf_id);
+		return -EINVAL;
+	}
+
+	if (vf_vsi->type != ICE_VSI_VF) {
+		netdev_err(netdev,
+			   "Type %d of VSI %d for VF %d is no ICE_VSI_VF\n",
+			   vf_vsi->type, vf_vsi->vsi_num, vf->vf_id);
+		return -ENODEV;
+	}
+
+	if (ena == vf->spoofchk) {
+		dev_dbg(dev, "VF spoofchk already %s\n", ena ? "ON" : "OFF");
+		return 0;
+	}
+
+	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return -ENOMEM;
+
+	ctx->info.sec_flags = vf_vsi->info.sec_flags;
+	ctx->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_SECURITY_VALID);
+	if (ena) {
+		ctx->info.sec_flags |=
+			ICE_AQ_VSI_SEC_FLAG_ENA_MAC_ANTI_SPOOF |
+			(ICE_AQ_VSI_SEC_TX_VLAN_PRUNE_ENA <<
+			 ICE_AQ_VSI_SEC_TX_PRUNE_ENA_S);
+	} else {
+		ctx->info.sec_flags &=
+			~(ICE_AQ_VSI_SEC_FLAG_ENA_MAC_ANTI_SPOOF |
+			  (ICE_AQ_VSI_SEC_TX_VLAN_PRUNE_ENA <<
+			   ICE_AQ_VSI_SEC_TX_PRUNE_ENA_S));
+	}
+
+	status = ice_update_vsi(&pf->hw, vf_vsi->idx, ctx, NULL);
+	if (status) {
+		dev_err(dev,
+			"Failed to %sable spoofchk on VF %d VSI %d\n error %d",
+			ena ? "en" : "dis", vf->vf_id, vf_vsi->vsi_num, status);
+		ret = -EIO;
+		goto out;
+	}
+
+	/* only update spoofchk state and VSI context on success */
+	vf_vsi->info.sec_flags = ctx->info.sec_flags;
+	vf->spoofchk = ena;
+
+out:
+	kfree(ctx);
+	return ret;
+}
+
 /**
  * ice_vc_get_stats_msg
  * @vf: pointer to the VF info
@@ -2719,17 +2809,6 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 		goto error_param;
 	}
 
-	if (add_v && !ice_is_vf_trusted(vf) &&
-	    vf->num_vlan >= ICE_MAX_VLAN_PER_VF) {
-		dev_info(dev,
-			 "VF-%d is not trusted, switch the VF to trusted mode, in order to add more VLAN addresses\n",
-			 vf->vf_id);
-		/* There is no need to let VF know about being not trusted,
-		 * so we can just return success message here
-		 */
-		goto error_param;
-	}
-
 	for (i = 0; i < vfl->num_elements; i++) {
 		if (vfl->vlan_id[i] > ICE_MAX_VLANID) {
 			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
@@ -2746,6 +2825,17 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 		goto error_param;
 	}
 
+	if (add_v && !ice_is_vf_trusted(vf) &&
+	    vsi->num_vlan >= ICE_MAX_VLAN_PER_VF) {
+		dev_info(dev,
+			 "VF-%d is not trusted, switch the VF to trusted mode, in order to add more VLAN addresses\n",
+			 vf->vf_id);
+		/* There is no need to let VF know about being not trusted,
+		 * so we can just return success message here
+		 */
+		goto error_param;
+	}
+
 	if (vsi->info.pvid) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		goto error_param;
@@ -2760,7 +2850,7 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 			u16 vid = vfl->vlan_id[i];
 
 			if (!ice_is_vf_trusted(vf) &&
-			    vf->num_vlan >= ICE_MAX_VLAN_PER_VF) {
+			    vsi->num_vlan >= ICE_MAX_VLAN_PER_VF) {
 				dev_info(dev,
 					 "VF-%d is not trusted, switch the VF to trusted mode, in order to add more VLAN addresses\n",
 					 vf->vf_id);
@@ -2771,12 +2861,20 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 				goto error_param;
 			}
 
-			if (ice_vsi_add_vlan(vsi, vid)) {
+			/* we add VLAN 0 by default for each VF so we can enable
+			 * Tx VLAN anti-spoof without triggering MDD events so
+			 * we don't need to add it again here
+			 */
+			if (!vid)
+				continue;
+
+			status = ice_vsi_add_vlan(vsi, vid);
+			if (status) {
 				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 				goto error_param;
 			}
 
-			vf->num_vlan++;
+			vsi->num_vlan++;
 			/* Enable VLAN pruning when VLAN is added */
 			if (!vlan_promisc) {
 				status = ice_cfg_vlan_pruning(vsi, true, false);
@@ -2812,21 +2910,29 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 		 */
 		int num_vf_vlan;
 
-		num_vf_vlan = vf->num_vlan;
+		num_vf_vlan = vsi->num_vlan;
 		for (i = 0; i < vfl->num_elements && i < num_vf_vlan; i++) {
 			u16 vid = vfl->vlan_id[i];
 
+			/* we add VLAN 0 by default for each VF so we can enable
+			 * Tx VLAN anti-spoof without triggering MDD events so
+			 * we don't want a VIRTCHNL request to remove it
+			 */
+			if (!vid)
+				continue;
+
 			/* Make sure ice_vsi_kill_vlan is successful before
 			 * updating VLAN information
 			 */
-			if (ice_vsi_kill_vlan(vsi, vid)) {
+			status = ice_vsi_kill_vlan(vsi, vid);
+			if (status) {
 				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 				goto error_param;
 			}
 
-			vf->num_vlan--;
+			vsi->num_vlan--;
 			/* Disable VLAN pruning when the last VLAN is removed */
-			if (!vf->num_vlan)
+			if (!vsi->num_vlan)
 				ice_cfg_vlan_pruning(vsi, false, false);
 
 			/* Disable Unicast/Multicast VLAN promiscuous mode */
@@ -3139,65 +3245,6 @@ ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_info *ivi)
 	return 0;
 }
 
-/**
- * ice_set_vf_spoofchk
- * @netdev: network interface device structure
- * @vf_id: VF identifier
- * @ena: flag to enable or disable feature
- *
- * Enable or disable VF spoof checking
- */
-int ice_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool ena)
-{
-	struct ice_pf *pf = ice_netdev_to_pf(netdev);
-	struct ice_vsi *vsi = pf->vsi[0];
-	struct ice_vsi_ctx *ctx;
-	enum ice_status status;
-	struct device *dev;
-	struct ice_vf *vf;
-	int ret = 0;
-
-	dev = ice_pf_to_dev(pf);
-	if (ice_validate_vf_id(pf, vf_id))
-		return -EINVAL;
-
-	vf = &pf->vf[vf_id];
-	if (ice_check_vf_init(pf, vf))
-		return -EBUSY;
-
-	if (ena == vf->spoofchk) {
-		dev_dbg(dev, "VF spoofchk already %s\n",
-			ena ? "ON" : "OFF");
-		return 0;
-	}
-
-	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
-	if (!ctx)
-		return -ENOMEM;
-
-	ctx->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_SECURITY_VALID);
-
-	if (ena) {
-		ctx->info.sec_flags |= ICE_AQ_VSI_SEC_FLAG_ENA_MAC_ANTI_SPOOF;
-		ctx->info.sw_flags2 |= ICE_AQ_VSI_SW_FLAG_RX_PRUNE_EN_M;
-	}
-
-	status = ice_update_vsi(&pf->hw, vsi->idx, ctx, NULL);
-	if (status) {
-		dev_dbg(dev,
-			"Error %d, failed to update VSI* parameters\n", status);
-		ret = -EIO;
-		goto out;
-	}
-
-	vf->spoofchk = ena;
-	vsi->info.sec_flags = ctx->info.sec_flags;
-	vsi->info.sw_flags2 = ctx->info.sw_flags2;
-out:
-	kfree(ctx);
-	return ret;
-}
-
 /**
  * ice_wait_on_vf_reset
  * @vf: The VF being resseting
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index 88aa65d5cb31..611f45100438 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -91,7 +91,6 @@ struct ice_vf {
 	unsigned long vf_caps;		/* VF's adv. capabilities */
 	u8 num_req_qs;			/* num of queue pairs requested by VF */
 	u16 num_mac;
-	u16 num_vlan;
 	u16 num_vf_qs;			/* num of queue configured per VF */
 	u16 num_qs_ena;			/* total num of Tx/Rx queue enabled */
 };
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
