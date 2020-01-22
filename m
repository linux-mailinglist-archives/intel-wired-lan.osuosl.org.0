Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F115145F84
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jan 2020 00:55:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DA7E786FB1;
	Wed, 22 Jan 2020 23:54:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id alwPQShhv1Ac; Wed, 22 Jan 2020 23:54:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 00A7981016;
	Wed, 22 Jan 2020 23:54:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DB66F1BF977
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:54:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D87D681A67
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:54:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qKi35mmZHbRu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jan 2020 23:54:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8580C81A64
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:54:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 15:54:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,351,1574150400"; d="scan'208";a="259651610"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga002.fm.intel.com with ESMTP; 22 Jan 2020 15:54:21 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 Jan 2020 07:21:25 -0800
Message-Id: <20200122152138.41585-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200122152138.41585-1-anthony.l.nguyen@intel.com>
References: <20200122152138.41585-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S38 02/15] ice: Refactor port vlan
 configuration for the VF
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

Currently ice_vsi_manage_pvid() calls
ice_vsi_[set|kill]_pvid_fill_ctxt() when enabling/disabling a port VLAN
on a VSI respectively. These two functions have some duplication so just
move their unique pieces inline in ice_vsi_manage_pvid() and then the
duplicate code can be reused for both the enabling/disabling paths.

Before this patch the info.pvid field was not being written
correctly via ice_vsi_kill_pvid_fill_ctxt() so it was being hardcoded
to 0 in ice_set_vf_port_vlan(). Fix this by setting the info.pvid field
to 0 before calling ice_vsi_update() in ice_vsi_manage_pvid().

We currently use vf->port_vlan_id to keep track of the port VLAN
ID and QoS, which is a bit misleading. Fix this by renaming it to
vf->port_vlan_info. Also change the name of the argument for
ice_vsi_manage_pvid() from vid to pvid_info.

In ice_vsi_manage_pvid() only save the fields that were modified
in the VSI properties structure on success instead of the entire thing.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 86 ++++++++-----------
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  2 +-
 2 files changed, 37 insertions(+), 51 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 8230a58a9b19..8349369b06bf 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -406,44 +406,16 @@ static void ice_trigger_vf_reset(struct ice_vf *vf, bool is_vflr, bool is_pfr)
 	}
 }
 
-/**
- * ice_vsi_set_pvid_fill_ctxt - Set VSI ctxt for add PVID
- * @ctxt: the VSI ctxt to fill
- * @vid: the VLAN ID to set as a PVID
- */
-static void ice_vsi_set_pvid_fill_ctxt(struct ice_vsi_ctx *ctxt, u16 vid)
-{
-	ctxt->info.vlan_flags = (ICE_AQ_VSI_VLAN_MODE_UNTAGGED |
-				 ICE_AQ_VSI_PVLAN_INSERT_PVID |
-				 ICE_AQ_VSI_VLAN_EMOD_STR);
-	ctxt->info.pvid = cpu_to_le16(vid);
-	ctxt->info.sw_flags2 |= ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA;
-	ctxt->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_VLAN_VALID |
-						ICE_AQ_VSI_PROP_SW_VALID);
-}
-
-/**
- * ice_vsi_kill_pvid_fill_ctxt - Set VSI ctx for remove PVID
- * @ctxt: the VSI ctxt to fill
- */
-static void ice_vsi_kill_pvid_fill_ctxt(struct ice_vsi_ctx *ctxt)
-{
-	ctxt->info.vlan_flags = ICE_AQ_VSI_VLAN_EMOD_NOTHING;
-	ctxt->info.vlan_flags |= ICE_AQ_VSI_VLAN_MODE_ALL;
-	ctxt->info.sw_flags2 &= ~ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA;
-	ctxt->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_VLAN_VALID |
-						ICE_AQ_VSI_PROP_SW_VALID);
-}
-
 /**
  * ice_vsi_manage_pvid - Enable or disable port VLAN for VSI
  * @vsi: the VSI to update
- * @vid: the VLAN ID to set as a PVID
+ * @pvid_info: VLAN ID and QoS used to set the PVID VSI context field
  * @enable: true for enable PVID false for disable
  */
-static int ice_vsi_manage_pvid(struct ice_vsi *vsi, u16 vid, bool enable)
+static int ice_vsi_manage_pvid(struct ice_vsi *vsi, u16 pvid_info, bool enable)
 {
 	struct ice_hw *hw = &vsi->back->hw;
+	struct ice_aqc_vsi_props *info;
 	struct ice_vsi_ctx *ctxt;
 	enum ice_status status;
 	int ret = 0;
@@ -453,20 +425,33 @@ static int ice_vsi_manage_pvid(struct ice_vsi *vsi, u16 vid, bool enable)
 		return -ENOMEM;
 
 	ctxt->info = vsi->info;
-	if (enable)
-		ice_vsi_set_pvid_fill_ctxt(ctxt, vid);
-	else
-		ice_vsi_kill_pvid_fill_ctxt(ctxt);
+	info = &ctxt->info;
+	if (enable) {
+		info->vlan_flags = ICE_AQ_VSI_VLAN_MODE_UNTAGGED |
+			ICE_AQ_VSI_PVLAN_INSERT_PVID |
+			ICE_AQ_VSI_VLAN_EMOD_STR;
+		info->sw_flags2 |= ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA;
+	} else {
+		info->vlan_flags = ICE_AQ_VSI_VLAN_EMOD_NOTHING |
+			ICE_AQ_VSI_VLAN_MODE_ALL;
+		info->sw_flags2 &= ~ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA;
+	}
+
+	info->pvid = cpu_to_le16(pvid_info);
+	info->valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_VLAN_VALID |
+					   ICE_AQ_VSI_PROP_SW_VALID);
 
 	status = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (status) {
-		dev_info(ice_pf_to_dev(vsi->back), "update VSI for port VLAN failed, err %d aq_err %d\n",
+		dev_info(ice_hw_to_dev(hw), "update VSI for port VLAN failed, err %d aq_err %d\n",
 			 status, hw->adminq.sq_last_status);
 		ret = -EIO;
 		goto out;
 	}
 
-	vsi->info = ctxt->info;
+	vsi->info.vlan_flags = info->vlan_flags;
+	vsi->info.sw_flags2 = info->sw_flags2;
+	vsi->info.pvid = info->pvid;
 out:
 	kfree(ctxt);
 	return ret;
@@ -533,9 +518,9 @@ static int ice_alloc_vsi_res(struct ice_vf *vf)
 	vf->lan_vsi_num = vsi->vsi_num;
 
 	/* Check if port VLAN exist before, and restore it accordingly */
-	if (vf->port_vlan_id) {
-		ice_vsi_manage_pvid(vsi, vf->port_vlan_id, true);
-		ice_vsi_add_vlan(vsi, vf->port_vlan_id & ICE_VLAN_M);
+	if (vf->port_vlan_info) {
+		ice_vsi_manage_pvid(vsi, vf->port_vlan_info, true);
+		ice_vsi_add_vlan(vsi, vf->port_vlan_info & ICE_VLAN_M);
 	}
 
 	eth_broadcast_addr(broadcast);
@@ -985,13 +970,13 @@ ice_vf_set_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m,
 	if (vsi->num_vlan) {
 		status = ice_set_vlan_vsi_promisc(hw, vsi->idx, promisc_m,
 						  rm_promisc);
-	} else if (vf->port_vlan_id) {
+	} else if (vf->port_vlan_info) {
 		if (rm_promisc)
 			status = ice_clear_vsi_promisc(hw, vsi->idx, promisc_m,
-						       vf->port_vlan_id);
+						       vf->port_vlan_info);
 		else
 			status = ice_set_vsi_promisc(hw, vsi->idx, promisc_m,
-						     vf->port_vlan_id);
+						     vf->port_vlan_info);
 	} else {
 		if (rm_promisc)
 			status = ice_clear_vsi_promisc(hw, vsi->idx, promisc_m,
@@ -1231,7 +1216,7 @@ static bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 	 */
 	if (test_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states) ||
 	    test_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states)) {
-		if (vf->port_vlan_id || vsi->num_vlan)
+		if (vf->port_vlan_info || vsi->num_vlan)
 			promisc_m = ICE_UCAST_VLAN_PROMISC_BITS;
 		else
 			promisc_m = ICE_UCAST_PROMISC_BITS;
@@ -2706,10 +2691,11 @@ ice_set_vf_port_vlan(struct net_device *netdev, int vf_id, u16 vlan_id, u8 qos,
 	if (vlan_id || qos) {
 		ret = ice_vsi_manage_pvid(vsi, vlanprio, true);
 		if (ret)
-			goto error_set_pvid;
+			goto error_manage_pvid;
 	} else {
-		ice_vsi_manage_pvid(vsi, 0, false);
-		vsi->info.pvid = 0;
+		ret = ice_vsi_manage_pvid(vsi, 0, false);
+		if (ret)
+			goto error_manage_pvid;
 	}
 
 	if (vlan_id) {
@@ -2719,15 +2705,15 @@ ice_set_vf_port_vlan(struct net_device *netdev, int vf_id, u16 vlan_id, u8 qos,
 		/* add new VLAN filter for each MAC */
 		ret = ice_vsi_add_vlan(vsi, vlan_id);
 		if (ret)
-			goto error_set_pvid;
+			goto error_manage_pvid;
 	}
 
 	/* The Port VLAN needs to be saved across resets the same as the
 	 * default LAN MAC address.
 	 */
-	vf->port_vlan_id = le16_to_cpu(vsi->info.pvid);
+	vf->port_vlan_info = le16_to_cpu(vsi->info.pvid);
 
-error_set_pvid:
+error_manage_pvid:
 	return ret;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index 4647d636ed36..80bb1acc7c28 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -74,7 +74,7 @@ struct ice_vf {
 	struct virtchnl_ether_addr dflt_lan_addr;
 	DECLARE_BITMAP(txq_ena, ICE_MAX_BASE_QS_PER_VF);
 	DECLARE_BITMAP(rxq_ena, ICE_MAX_BASE_QS_PER_VF);
-	u16 port_vlan_id;
+	u16 port_vlan_info;		/* Port VLAN ID and QoS */
 	u8 pf_set_mac:1;		/* VF MAC address set by VMM admin */
 	u8 trusted:1;
 	u8 spoofchk:1;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
