Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B3FD1326972
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Feb 2021 22:29:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 999CC4F08E;
	Fri, 26 Feb 2021 21:29:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tdfzS3EUCosK; Fri, 26 Feb 2021 21:29:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4DA684F0B7;
	Fri, 26 Feb 2021 21:29:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EF4C01BF302
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 21:29:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DAF654341C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 21:29:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id swhFuuCIUlQF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Feb 2021 21:28:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C0C07431C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 21:28:57 +0000 (UTC)
IronPort-SDR: 9AgP9sInPfOHIPafA7ckZmkfrtehOi1JrwymDyH/vTYSqnHoUT7a1ymNKlw+Te9Iqftv0K8X/A
 lTqGc49Uj1LA==
X-IronPort-AV: E=McAfee;i="6000,8403,9907"; a="186117848"
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; d="scan'208";a="186117848"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2021 13:28:56 -0800
IronPort-SDR: SxszM+Pg6GgVP8i2hTXUebsyu6EnE07FrrjZr9MnNOKC9vZ/2livTb1DIdGRKqRymUNI0Hcv96
 HswpQPs05RbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; d="scan'208";a="432913434"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Feb 2021 13:28:55 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 26 Feb 2021 13:19:23 -0800
Message-Id: <20210226211932.46683-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210226211932.46683-1-anthony.l.nguyen@intel.com>
References: <20210226211932.46683-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 04/13] ice: Fix VF true promiscuous
 mode
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

When a VF requests promiscuous mode and it's trusted and true promiscuous
mode is enabled the PF driver attempts to enable unicast and/or
multicast promiscuous mode filters based on the request. This is fine,
but there are a couple issues with the current code.

[1] The define to configure the unicast promiscuous mode mask also
    includes bits to configure the multicast promiscuous mode mask, which
    causes multicast to be set/cleared unintentionally.
[2] All 4 cases for enable/disable unicast/multicast mode are not
    handled in the promiscuous mode message handler, which causes
    unexpected results regarding the current promiscuous mode settings.

To fix [1] make sure any promiscuous mask defines include the correct
bits for each of the promiscuous modes.

To fix [2] make sure that all 4 cases are handled since there are 2 bits
(FLAG_VF_UNICAST_PROMISC and FLAG_VF_MULTICAST_PROMISC) that can be
either set or cleared. Also, since either unicast and/or multicast
promiscuous configuration can fail, introduce two separate error values
to handle each of these cases.

Fixes: 01b5e89aab49 ("ice: Add VF promiscuous support")
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |  5 +-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 78 +++++++++----------
 2 files changed, 40 insertions(+), 43 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 357706444dd5..264507762dc5 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -125,13 +125,10 @@
 #define ice_for_each_q_vector(vsi, i) \
 	for ((i) = 0; (i) < (vsi)->num_q_vectors; (i)++)
 
-#define ICE_UCAST_PROMISC_BITS (ICE_PROMISC_UCAST_TX | ICE_PROMISC_MCAST_TX | \
-				ICE_PROMISC_UCAST_RX | ICE_PROMISC_MCAST_RX)
+#define ICE_UCAST_PROMISC_BITS (ICE_PROMISC_UCAST_TX | ICE_PROMISC_UCAST_RX)
 
 #define ICE_UCAST_VLAN_PROMISC_BITS (ICE_PROMISC_UCAST_TX | \
-				     ICE_PROMISC_MCAST_TX | \
 				     ICE_PROMISC_UCAST_RX | \
-				     ICE_PROMISC_MCAST_RX | \
 				     ICE_PROMISC_VLAN_TX  | \
 				     ICE_PROMISC_VLAN_RX)
 
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 0f2a4d48574e..5a581e759111 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -2378,6 +2378,7 @@ bool ice_is_any_vf_in_promisc(struct ice_pf *pf)
 static int ice_vc_cfg_promiscuous_mode_msg(struct ice_vf *vf, u8 *msg)
 {
 	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
+	enum ice_status mcast_status = 0, ucast_status = 0;
 	bool rm_promisc, alluni = false, allmulti = false;
 	struct virtchnl_promisc_info *info =
 	    (struct virtchnl_promisc_info *)msg;
@@ -2467,52 +2468,51 @@ static int ice_vc_cfg_promiscuous_mode_msg(struct ice_vf *vf, u8 *msg)
 			goto error_param;
 		}
 	} else {
-		enum ice_status status;
-		u8 promisc_m;
-
-		if (alluni) {
-			if (vf->port_vlan_info || vsi->num_vlan)
-				promisc_m = ICE_UCAST_VLAN_PROMISC_BITS;
-			else
-				promisc_m = ICE_UCAST_PROMISC_BITS;
-		} else if (allmulti) {
-			if (vf->port_vlan_info || vsi->num_vlan)
-				promisc_m = ICE_MCAST_VLAN_PROMISC_BITS;
-			else
-				promisc_m = ICE_MCAST_PROMISC_BITS;
+		u8 mcast_m, ucast_m;
+
+		if (vf->port_vlan_info || vsi->num_vlan > 1) {
+			mcast_m = ICE_MCAST_VLAN_PROMISC_BITS;
+			ucast_m = ICE_UCAST_VLAN_PROMISC_BITS;
 		} else {
-			if (vf->port_vlan_info || vsi->num_vlan)
-				promisc_m = ICE_UCAST_VLAN_PROMISC_BITS;
-			else
-				promisc_m = ICE_UCAST_PROMISC_BITS;
+			mcast_m = ICE_MCAST_PROMISC_BITS;
+			ucast_m = ICE_UCAST_PROMISC_BITS;
 		}
 
-		/* Configure multicast/unicast with or without VLAN promiscuous
-		 * mode
-		 */
-		status = ice_vf_set_vsi_promisc(vf, vsi, promisc_m, rm_promisc);
-		if (status) {
-			dev_err(dev, "%sable Tx/Rx filter promiscuous mode on VF-%d failed, error: %s\n",
-				rm_promisc ? "dis" : "en", vf->vf_id,
-				ice_stat_str(status));
-			v_ret = ice_err_to_virt_err(status);
-			goto error_param;
-		} else {
-			dev_dbg(dev, "%sable Tx/Rx filter promiscuous mode on VF-%d succeeded\n",
-				rm_promisc ? "dis" : "en", vf->vf_id);
+		ucast_status = ice_vf_set_vsi_promisc(vf, vsi, ucast_m,
+						      !alluni);
+		if (ucast_status) {
+			dev_err(dev, "%sable Tx/Rx filter promiscuous mode on VF-%d failed\n",
+				alluni ? "en" : "dis", vf->vf_id);
+			v_ret = ice_err_to_virt_err(ucast_status);
+		}
+
+		mcast_status = ice_vf_set_vsi_promisc(vf, vsi, mcast_m,
+						      !allmulti);
+		if (mcast_status) {
+			dev_err(dev, "%sable Tx/Rx filter promiscuous mode on VF-%d failed\n",
+				allmulti ? "en" : "dis", vf->vf_id);
+			v_ret = ice_err_to_virt_err(mcast_status);
 		}
 	}
 
-	if (allmulti &&
-	    !test_and_set_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states))
-		dev_info(dev, "VF %u successfully set multicast promiscuous mode\n", vf->vf_id);
-	else if (!allmulti && test_and_clear_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states))
-		dev_info(dev, "VF %u successfully unset multicast promiscuous mode\n", vf->vf_id);
+	if (!mcast_status) {
+		if (allmulti &&
+		    !test_and_set_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states))
+			dev_info(dev, "VF %u successfully set multicast promiscuous mode\n",
+				 vf->vf_id);
+		else if (!allmulti && test_and_clear_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states))
+			dev_info(dev, "VF %u successfully unset multicast promiscuous mode\n",
+				 vf->vf_id);
+	}
 
-	if (alluni && !test_and_set_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states))
-		dev_info(dev, "VF %u successfully set unicast promiscuous mode\n", vf->vf_id);
-	else if (!alluni && test_and_clear_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states))
-		dev_info(dev, "VF %u successfully unset unicast promiscuous mode\n", vf->vf_id);
+	if (!ucast_status) {
+		if (alluni && !test_and_set_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states))
+			dev_info(dev, "VF %u successfully set unicast promiscuous mode\n",
+				 vf->vf_id);
+		else if (!alluni && test_and_clear_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states))
+			dev_info(dev, "VF %u successfully unset unicast promiscuous mode\n",
+				 vf->vf_id);
+	}
 
 error_param:
 	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE,
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
