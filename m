Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 692A8F5B63
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Nov 2019 23:54:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 20F9B86505;
	Fri,  8 Nov 2019 22:54:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gsP-ZVV4Mp64; Fri,  8 Nov 2019 22:54:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 049D986502;
	Fri,  8 Nov 2019 22:54:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C55471BF5DB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 22:54:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C23322413D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 22:54:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OaOXhxign-bv for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Nov 2019 22:54:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 60488241F9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 22:54:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 14:54:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,283,1569308400"; d="scan'208";a="201478829"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga008.fm.intel.com with ESMTP; 08 Nov 2019 14:54:16 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  8 Nov 2019 06:23:20 -0800
Message-Id: <20191108142331.10221-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108142331.10221-1-anthony.l.nguyen@intel.com>
References: <20191108142331.10221-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S33 04/15] ice: Don't modify stripping for
 add/del VLANs on VF
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

Currently when adding/deleting vlans in ice_vc_process_vlan_msg()
we are calling ice_vsi_manage_vlan_stripping() to enable/disable
when adding and deleting a VLAN respectively. This is wrong
because adding/deleting VLANs has nothing to do with configuring
VLAN stripping. VLAN stripping is configured through the
following VIRTCHNL operations:
	VIRTCHNL_OP_ENABLE_VLAN_STRIPPING
	VIRTCHNL_OP_DISABLE_VLAN_STRIPPING

Unfortunately we can't just remove this because then stripping
will never be configured on VF initialization. Fix this by
adding a new function that initializes (disables/enables) VLAN
stripping for the VF based on the device supported capabilities.
This allows us to remove the call to
ice_vsi_manage_vlan_stripping() in ice_vc_process_vlan_msg().

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 39 +++++++++++++++----
 1 file changed, 31 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 3cb394bdfe51..fd419230a6c0 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -2735,14 +2735,6 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 		goto error_param;
 	}
 
-	if (ice_vsi_manage_vlan_stripping(vsi, add_v)) {
-		dev_err(&pf->pdev->dev,
-			"%sable VLAN stripping failed for VSI %i\n",
-			 add_v ? "en" : "dis", vsi->vsi_num);
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto error_param;
-	}
-
 	if (test_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states) ||
 	    test_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states))
 		vlan_promisc = true;
@@ -2933,6 +2925,33 @@ static int ice_vc_dis_vlan_stripping(struct ice_vf *vf)
 				     v_ret, NULL, 0);
 }
 
+/**
+ * ice_vf_init_vlan_stripping - enable/disable VLAN stripping on initialization
+ * @vf: VF to enable/disable VLAN stripping for on initialization
+ *
+ * If the VIRTCHNL_VF_OFFLOAD_VLAN flag is set enable VLAN stripping, else if
+ * the flag is cleared then we want to disable stripping. For example, the flag
+ * will be cleared when port VLANs are configured by the administrator before
+ * passing the VF to the guest or if the AVF driver doesn't support VLAN
+ * offloads.
+ */
+static int ice_vf_init_vlan_stripping(struct ice_vf *vf)
+{
+	struct ice_vsi *vsi = vf->pf->vsi[vf->lan_vsi_idx];
+
+	if (!vsi)
+		return -EINVAL;
+
+	/* don't modify stripping if port VLAN is configured */
+	if (vsi->info.pvid)
+		return 0;
+
+	if (ice_vf_vlan_offload_ena(vf->driver_caps))
+		return ice_vsi_manage_vlan_stripping(vsi, true);
+	else
+		return ice_vsi_manage_vlan_stripping(vsi, false);
+}
+
 /**
  * ice_vc_process_vf_msg - Process request from VF
  * @pf: pointer to the PF structure
@@ -2987,6 +3006,10 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
 		break;
 	case VIRTCHNL_OP_GET_VF_RESOURCES:
 		err = ice_vc_get_vf_res_msg(vf, msg);
+		if (ice_vf_init_vlan_stripping(vf))
+			dev_err(&pf->pdev->dev,
+				"Failed to initialize VLAN stripping for VF %d\n",
+				vf->vf_id);
 		ice_vc_notify_vf_link_state(vf);
 		break;
 	case VIRTCHNL_OP_RESET_VF:
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
