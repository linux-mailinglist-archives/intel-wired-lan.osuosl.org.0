Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 47DDC1D5D70
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:54:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A058A227B1;
	Sat, 16 May 2020 00:54:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1KOASJwhyGiz; Sat, 16 May 2020 00:54:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D3D43227FC;
	Sat, 16 May 2020 00:54:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BD82B1BF9C6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:53:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BA42087F7D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:53:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZCYr82f84h3O for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:53:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 32DF3880B7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:53:56 +0000 (UTC)
IronPort-SDR: PBYBP1HJ3H4D+JGbOHXOSyTKMOzOpY9NQ2nXqQgPHSs7MLxYzjjAr9lJnnSx48eY/Nexa7u8iG
 WZJMGcBRG4ow==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:53:54 -0700
IronPort-SDR: 1m2ycWpnA0DBe6CDzLlHfRgVNuTKFJQkEXU/tswfbK7iMP098e92WbQ4LzJd1ZZmpG5dsHRqgQ
 uJxnsiEuSHDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="263360543"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga003.jf.intel.com with ESMTP; 15 May 2020 17:53:54 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:51:13 -0700
Message-Id: <20200516005121.4963-7-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
References: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S45 07/15] ice: Add functions to rebuild
 host VLAN/MAC config for a VF
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

When resetting a VF the VLAN and MAC filter configurations need to be
replayed. Add helper functions for this purpose.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 121 +++++++++++++-----
 1 file changed, 89 insertions(+), 32 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 1599d89216a5..1212bf42c135 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -540,6 +540,82 @@ static int ice_calc_vf_first_vector_idx(struct ice_pf *pf, struct ice_vf *vf)
 	return pf->sriov_base_vector + vf->vf_id * pf->num_msix_per_vf;
 }
 
+/**
+ * ice_vf_rebuild_host_vlan_cfg - add VLAN 0 filter or rebuild the Port VLAN
+ * @vf: VF to add MAC filters for
+ *
+ * Called after a VF VSI has been re-added/rebuilt during reset. The PF driver
+ * always re-adds either a VLAN 0 or port VLAN based filter after reset.
+ */
+static int ice_vf_rebuild_host_vlan_cfg(struct ice_vf *vf)
+{
+	struct ice_vsi *vsi = vf->pf->vsi[vf->lan_vsi_idx];
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	u16 vlan_id = 0;
+	int err;
+
+	if (vf->port_vlan_info) {
+		err = ice_vsi_manage_pvid(vsi, vf->port_vlan_info, true);
+		if (err) {
+			dev_err(dev, "failed to configure port VLAN via VSI parameters for VF %u, error %d\n",
+				vf->vf_id, err);
+			return err;
+		}
+
+		vlan_id = vf->port_vlan_info & VLAN_VID_MASK;
+	}
+
+	/* vlan_id will either be 0 or the port VLAN number */
+	err = ice_vsi_add_vlan(vsi, vlan_id, ICE_FWD_TO_VSI);
+	if (err) {
+		dev_err(dev, "failed to add %s VLAN %u filter for VF %u, error %d\n",
+			vf->port_vlan_info ? "port" : "", vlan_id, vf->vf_id,
+			err);
+		return err;
+	}
+
+	return 0;
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
+	struct ice_vsi *vsi = vf->pf->vsi[vf->lan_vsi_idx];
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	enum ice_status status;
+	u8 broadcast[ETH_ALEN];
+
+	eth_broadcast_addr(broadcast);
+	status = ice_fltr_add_mac(vsi, broadcast, ICE_FWD_TO_VSI);
+	if (status) {
+		dev_err(dev, "failed to add broadcast MAC filter for VF %u, error %s\n",
+			vf->vf_id, ice_stat_str(status));
+		return ice_status_to_errno(status);
+	}
+
+	vf->num_mac++;
+
+	if (is_valid_ether_addr(vf->dflt_lan_addr.addr)) {
+		status = ice_fltr_add_mac(vsi, vf->dflt_lan_addr.addr,
+					  ICE_FWD_TO_VSI);
+		if (status) {
+			dev_err(dev, "failed to add default unicast MAC filter %pM for VF %u, error %s\n",
+				&vf->dflt_lan_addr.addr[0], vf->vf_id,
+				ice_stat_str(status));
+			return ice_status_to_errno(status);
+		}
+		vf->num_mac++;
+	}
+
+	return 0;
+}
+
 /**
  * ice_alloc_vsi_res - Setup VF VSI and its resources
  * @vf: pointer to the VF structure
@@ -549,10 +625,9 @@ static int ice_calc_vf_first_vector_idx(struct ice_pf *pf, struct ice_vf *vf)
 static int ice_alloc_vsi_res(struct ice_vf *vf)
 {
 	struct ice_pf *pf = vf->pf;
-	u8 broadcast[ETH_ALEN];
 	struct ice_vsi *vsi;
 	struct device *dev;
-	int status = 0;
+	int ret;
 
 	dev = ice_pf_to_dev(pf);
 	/* first vector index is the VFs OICR index */
@@ -567,38 +642,20 @@ static int ice_alloc_vsi_res(struct ice_vf *vf)
 	vf->lan_vsi_idx = vsi->idx;
 	vf->lan_vsi_num = vsi->vsi_num;
 
-	/* Check if port VLAN exist before, and restore it accordingly */
-	if (vf->port_vlan_info) {
-		ice_vsi_manage_pvid(vsi, vf->port_vlan_info, true);
-		if (ice_vsi_add_vlan(vsi, vf->port_vlan_info & VLAN_VID_MASK,
-				     ICE_FWD_TO_VSI))
-			dev_warn(ice_pf_to_dev(pf), "Failed to add Port VLAN %d filter for VF %d\n",
-				 vf->port_vlan_info & VLAN_VID_MASK, vf->vf_id);
-	} else {
-		/* set VLAN 0 filter by default when no port VLAN is
-		 * enabled. If a port VLAN is enabled we don't want
-		 * untagged broadcast/multicast traffic seen on the VF
-		 * interface.
-		 */
-		if (ice_vsi_add_vlan(vsi, 0, ICE_FWD_TO_VSI))
-			dev_warn(ice_pf_to_dev(pf), "Failed to add VLAN 0 filter for VF %d, MDD events will trigger. Reset the VF, disable spoofchk, or enable 8021q module on the guest\n",
-				 vf->vf_id);
+	ret = ice_vf_rebuild_host_vlan_cfg(vf);
+	if (ret) {
+		dev_err(dev, "failed to rebuild default MAC configuration for VF %d, error %d\n",
+			vf->vf_id, ret);
+		goto ice_alloc_vsi_res_exit;
 	}
 
-	if (is_valid_ether_addr(vf->dflt_lan_addr.addr)) {
-		status = ice_fltr_add_mac(vsi, vf->dflt_lan_addr.addr,
-					  ICE_FWD_TO_VSI);
-		if (status)
-			goto ice_alloc_vsi_res_exit;
-	}
 
-	eth_broadcast_addr(broadcast);
-	status = ice_fltr_add_mac(vsi, broadcast, ICE_FWD_TO_VSI);
-	if (status)
-		dev_err(dev, "could not add mac filters error %d\n",
-			status);
-	else
-		vf->num_mac = 1;
+	ret = ice_vf_rebuild_host_mac_cfg(vf);
+	if (ret) {
+		dev_err(dev, "failed to rebuild default MAC configuration for VF %d, error %d\n",
+			vf->vf_id, ret);
+		goto ice_alloc_vsi_res_exit;
+	}
 
 	/* Clear this bit after VF initialization since we shouldn't reclaim
 	 * and reassign interrupts for synchronous or asynchronous VFR events.
@@ -607,7 +664,7 @@ static int ice_alloc_vsi_res(struct ice_vf *vf)
 	 * more vectors.
 	 */
 ice_alloc_vsi_res_exit:
-	return status;
+	return ret;
 }
 
 /**
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
