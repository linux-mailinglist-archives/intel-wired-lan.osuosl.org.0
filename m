Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F29E61D5D65
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:54:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A1E7787F93;
	Sat, 16 May 2020 00:54:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4wdJFnofeA0u; Sat, 16 May 2020 00:54:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 71C0588017;
	Sat, 16 May 2020 00:54:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 326FA1BF9C6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:53:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2E66122731
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:53:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3caOV69zLvOe for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:53:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id B38AC22622
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:53:56 +0000 (UTC)
IronPort-SDR: 09x4UUFKOX6WAwSpbGqoDqFQ+ZO/jISyu7JXwm509MYoFmrbjF+OTqZ5cyTWcbRBPUYbN7tWnN
 Ny2Xa+vrg5zQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:53:54 -0700
IronPort-SDR: BuQUzi5zRMgfFzzUq6vg649z5TX8x6Bm1jbCmd9p7ejsfj1Hd3mTbXPAf20sybF4bN6pQdtjdh
 2awfzeWLfTmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="263360546"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga003.jf.intel.com with ESMTP; 15 May 2020 17:53:54 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:51:16 -0700
Message-Id: <20200516005121.4963-10-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
References: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S45 10/15] ice: Refactor VF VSI release
 and setup functions
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

Currently when a VF VSI calls ice_vsi_release() and ice_vsi_setup() it
subsequently clears/sets the VF cached variables for lan_vsi_idx and
lan_vsi_num. This works fine, but can be improved by handling this in
the VF specific VSI release and setup functions.

Also, when a VF VSI is setup too many parameters are passed that can be
derived from the VF. Fix this by only calling VF VSI setup with the bare
minimum parameters.

Also, add functionality to invalidate a VF's VSI when it's released
and/or setup fails. This will make it so a VF VSI cannot be accessed via
its cached vsi_idx/vsi_num in these cases.

Finally when a VF's VSI is invalidated set the lan_vsi_idx and
lan_vsi_num to ICE_NO_VSI to clearly show that there is no valid VSI
associated with this VF.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 86 ++++++++++++-------
 1 file changed, 55 insertions(+), 31 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 9cd9904815b9..f5596b45b996 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -181,6 +181,26 @@ static void ice_vc_notify_vf_link_state(struct ice_vf *vf)
 			      sizeof(pfe), NULL);
 }
 
+/**
+ * ice_vf_invalidate_vsi - invalidate vsi_idx/vsi_num to remove VSI access
+ * @vf: VF to remove access to VSI for
+ */
+static void ice_vf_invalidate_vsi(struct ice_vf *vf)
+{
+	vf->lan_vsi_idx = ICE_NO_VSI;
+	vf->lan_vsi_num = ICE_NO_VSI;
+}
+
+/**
+ * ice_vf_vsi_release - invalidate the VF's VSI after freeing it
+ * @vf: invalidate this VF's VSI after freeing it
+ */
+static void ice_vf_vsi_release(struct ice_vf *vf)
+{
+	ice_vsi_release(vf->pf->vsi[vf->lan_vsi_idx]);
+	ice_vf_invalidate_vsi(vf);
+}
+
 /**
  * ice_free_vf_res - Free a VF's resources
  * @vf: pointer to the VF info
@@ -196,10 +216,8 @@ static void ice_free_vf_res(struct ice_vf *vf)
 	clear_bit(ICE_VF_STATE_INIT, vf->vf_states);
 
 	/* free VSI and disconnect it from the parent uplink */
-	if (vf->lan_vsi_idx) {
-		ice_vsi_release(pf->vsi[vf->lan_vsi_idx]);
-		vf->lan_vsi_idx = 0;
-		vf->lan_vsi_num = 0;
+	if (vf->lan_vsi_idx != ICE_NO_VSI) {
+		ice_vf_vsi_release(vf);
 		vf->num_mac = 0;
 	}
 
@@ -505,19 +523,40 @@ static int ice_vsi_manage_pvid(struct ice_vsi *vsi, u16 pvid_info, bool enable)
 	return ret;
 }
 
+/**
+ * ice_vf_get_port_info - Get the VF's port info structure
+ * @vf: VF used to get the port info structure for
+ */
+static struct ice_port_info *ice_vf_get_port_info(struct ice_vf *vf)
+{
+	return vf->pf->hw.port_info;
+}
+
 /**
  * ice_vf_vsi_setup - Set up a VF VSI
- * @pf: board private structure
- * @pi: pointer to the port_info instance
- * @vf_id: defines VF ID to which this VSI connects.
+ * @vf: VF to setup VSI for
  *
  * Returns pointer to the successfully allocated VSI struct on success,
  * otherwise returns NULL on failure.
  */
-static struct ice_vsi *
-ice_vf_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi, u16 vf_id)
+static struct ice_vsi *ice_vf_vsi_setup(struct ice_vf *vf)
 {
-	return ice_vsi_setup(pf, pi, ICE_VSI_VF, vf_id);
+	struct ice_port_info *pi = ice_vf_get_port_info(vf);
+	struct ice_pf *pf = vf->pf;
+	struct ice_vsi *vsi;
+
+	vsi = ice_vsi_setup(pf, pi, ICE_VSI_VF, vf->vf_id);
+
+	if (!vsi) {
+		dev_err(ice_pf_to_dev(pf), "Failed to create VF VSI\n");
+		ice_vf_invalidate_vsi(vf);
+		return NULL;
+	}
+
+	vf->lan_vsi_idx = vsi->idx;
+	vf->lan_vsi_num = vsi->vsi_num;
+
+	return vsi;
 }
 
 /**
@@ -1043,19 +1082,9 @@ static void ice_vf_rebuild_host_cfg(struct ice_vf *vf)
  */
 static int ice_vf_rebuild_vsi_with_release(struct ice_vf *vf)
 {
-	struct ice_pf *pf = vf->pf;
-	struct ice_vsi *vsi;
-
-	vsi = pf->vsi[vf->lan_vsi_idx];
-	ice_vsi_release(vsi);
-	vsi = ice_vf_vsi_setup(pf, pf->hw.port_info, vf->vf_id);
-	if (!vsi) {
-		dev_err(ice_pf_to_dev(pf), "Failed to create VF VSI\n");
+	ice_vf_vsi_release(vf);
+	if (!ice_vf_vsi_setup(vf))
 		return -ENOMEM;
-	}
-
-	vf->lan_vsi_idx = vsi->idx;
-	vf->lan_vsi_num = vsi->vsi_num;
 
 	return 0;
 }
@@ -1395,14 +1424,9 @@ static int ice_init_vf_vsi_res(struct ice_vf *vf)
 	vf->first_vector_idx = ice_calc_vf_first_vector_idx(pf, vf);
 
 	dev = ice_pf_to_dev(pf);
-	vsi = ice_vf_vsi_setup(pf, pf->hw.port_info, vf->vf_id);
-	if (!vsi) {
-		dev_err(dev, "Failed to create VF VSI\n");
+	vsi = ice_vf_vsi_setup(vf);
+	if (!vsi)
 		return -ENOMEM;
-	}
-
-	vf->lan_vsi_idx = vsi->idx;
-	vf->lan_vsi_num = vsi->vsi_num;
 
 	err = ice_vsi_add_vlan(vsi, 0, ICE_FWD_TO_VSI);
 	if (err) {
@@ -1425,7 +1449,7 @@ static int ice_init_vf_vsi_res(struct ice_vf *vf)
 	return 0;
 
 release_vsi:
-	ice_vsi_release(vsi);
+	ice_vf_vsi_release(vf);
 	return err;
 }
 
@@ -1463,7 +1487,7 @@ static int ice_start_vfs(struct ice_pf *pf)
 		struct ice_vf *vf = &pf->vf[i];
 
 		ice_dis_vf_mappings(vf);
-		ice_vsi_release(pf->vsi[vf->lan_vsi_idx]);
+		ice_vf_vsi_release(vf);
 	}
 
 	return retval;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
