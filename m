Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 204F93757EE
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 May 2021 17:51:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 94989406A2;
	Thu,  6 May 2021 15:51:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jFKkkGvrZ77n; Thu,  6 May 2021 15:51:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7797240294;
	Thu,  6 May 2021 15:51:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2EDEC1BF363
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 15:50:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 43B874061C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 15:50:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8OSset6j_eg0 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 May 2021 15:50:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 06BB6405DF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 15:50:38 +0000 (UTC)
IronPort-SDR: 27FZOdShVNvpITAP9scij6L2l0Wu0qe38kf5gPwlTjLxOZAUoju6kt4b8p4ahthybpTqvdHTjY
 UNkyswUsuLtQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="219389326"
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="219389326"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 08:50:36 -0700
IronPort-SDR: ZLtUlDQmMCBeZ55VJkJpP8D0wCenNGjuMPIl5673Cb6btknQl977WcXde7FpY2Hns/lDP3BDOd
 mOq3Vb13J30A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="459369485"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 06 May 2021 08:50:36 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 May 2021 08:40:02 -0700
Message-Id: <20210506154008.12880-7-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
References: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S59 07/13] ice: Remove boolean
 vlan_promisc flag from function
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

Currently, the vlan_promisc flag is used exclusively by VF VSI to
determine whether or not to toggle VLAN pruning along with
trusted/true-promiscuous mode. This is not needed for a couple of
reasons. First, trusted/true-promiscuous mode is only supposed to allow
all MAC filters within VLANs that a VF has added filters for, so VLAN
pruning should not be disabled. Second, the boolean argument makes the
function confusing and unintuitive. Remove this flag.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c         |  7 ++-----
 drivers/net/ethernet/intel/ice/ice_lib.h         |  2 +-
 drivers/net/ethernet/intel/ice/ice_main.c        | 12 ++++++------
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c |  9 ++++++---
 4 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 6ee1d1994a23..20daa8c8fb07 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2102,11 +2102,10 @@ bool ice_vsi_is_vlan_pruning_ena(struct ice_vsi *vsi)
  * ice_cfg_vlan_pruning - enable or disable VLAN pruning on the VSI
  * @vsi: VSI to enable or disable VLAN pruning on
  * @ena: set to true to enable VLAN pruning and false to disable it
- * @vlan_promisc: enable valid security flags if not in VLAN promiscuous mode
  *
  * returns 0 if VSI is updated, negative otherwise
  */
-int ice_cfg_vlan_pruning(struct ice_vsi *vsi, bool ena, bool vlan_promisc)
+int ice_cfg_vlan_pruning(struct ice_vsi *vsi, bool ena)
 {
 	struct ice_vsi_ctx *ctxt;
 	struct ice_pf *pf;
@@ -2134,9 +2133,7 @@ int ice_cfg_vlan_pruning(struct ice_vsi *vsi, bool ena, bool vlan_promisc)
 	else
 		ctxt->info.sw_flags2 &= ~ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA;
 
-	if (!vlan_promisc)
-		ctxt->info.valid_sections =
-			cpu_to_le16(ICE_AQ_VSI_PROP_SW_VALID);
+	ctxt->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_SW_VALID);
 
 	status = ice_update_vsi(&pf->hw, vsi->idx, ctxt, NULL);
 	if (status) {
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 35ccf3e2f721..7eb0f879067e 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -45,7 +45,7 @@ int ice_vsi_stop_xdp_tx_rings(struct ice_vsi *vsi);
 
 bool ice_vsi_is_vlan_pruning_ena(struct ice_vsi *vsi);
 
-int ice_cfg_vlan_pruning(struct ice_vsi *vsi, bool ena, bool vlan_promisc);
+int ice_cfg_vlan_pruning(struct ice_vsi *vsi, bool ena);
 
 void ice_cfg_sw_lldp(struct ice_vsi *vsi, bool tx, bool create);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0bf3b9bd9ef8..eaebffdb6257 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -378,7 +378,7 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 						~IFF_PROMISC;
 					goto out_promisc;
 				}
-				ice_cfg_vlan_pruning(vsi, false, false);
+				ice_cfg_vlan_pruning(vsi, false);
 			}
 		} else {
 			/* Clear Rx filter to remove traffic from wire */
@@ -392,7 +392,7 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 					goto out_promisc;
 				}
 				if (vsi->num_vlan > 1)
-					ice_cfg_vlan_pruning(vsi, true, false);
+					ice_cfg_vlan_pruning(vsi, true);
 			}
 		}
 	}
@@ -3144,7 +3144,7 @@ ice_vlan_rx_add_vid(struct net_device *netdev, __always_unused __be16 proto,
 
 	/* Enable VLAN pruning when a VLAN other than 0 is added */
 	if (!ice_vsi_is_vlan_pruning_ena(vsi)) {
-		ret = ice_cfg_vlan_pruning(vsi, true, false);
+		ret = ice_cfg_vlan_pruning(vsi, true);
 		if (ret)
 			return ret;
 	}
@@ -3188,7 +3188,7 @@ ice_vlan_rx_kill_vid(struct net_device *netdev, __always_unused __be16 proto,
 
 	/* Disable pruning when VLAN 0 is the only VLAN rule */
 	if (vsi->num_vlan == 1 && ice_vsi_is_vlan_pruning_ena(vsi))
-		ret = ice_cfg_vlan_pruning(vsi, false, false);
+		ret = ice_cfg_vlan_pruning(vsi, false);
 
 	set_bit(ICE_VSI_VLAN_FLTR_CHANGED, vsi->state);
 	return ret;
@@ -5199,10 +5199,10 @@ ice_set_features(struct net_device *netdev, netdev_features_t features)
 
 	if ((features & NETIF_F_HW_VLAN_CTAG_FILTER) &&
 	    !(netdev->features & NETIF_F_HW_VLAN_CTAG_FILTER))
-		ret = ice_cfg_vlan_pruning(vsi, true, false);
+		ret = ice_cfg_vlan_pruning(vsi, true);
 	else if (!(features & NETIF_F_HW_VLAN_CTAG_FILTER) &&
 		 (netdev->features & NETIF_F_HW_VLAN_CTAG_FILTER))
-		ret = ice_cfg_vlan_pruning(vsi, false, false);
+		ret = ice_cfg_vlan_pruning(vsi, false);
 
 	if ((features & NETIF_F_NTUPLE) &&
 	    !(netdev->features & NETIF_F_NTUPLE)) {
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index fa038834cc29..3c9bff68b05e 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -2971,7 +2971,10 @@ static int ice_vc_cfg_promiscuous_mode_msg(struct ice_vf *vf, u8 *msg)
 	rm_promisc = !allmulti && !alluni;
 
 	if (vsi->num_vlan || vf->port_vlan_info) {
-		ret = ice_cfg_vlan_pruning(vsi, true, !rm_promisc);
+		if (rm_promisc)
+			ret = ice_cfg_vlan_pruning(vsi, true);
+		else
+			ret = ice_cfg_vlan_pruning(vsi, false);
 		if (ret) {
 			dev_err(dev, "Failed to configure VLAN pruning in promiscuous mode\n");
 			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
@@ -4161,7 +4164,7 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 			/* Enable VLAN pruning when non-zero VLAN is added */
 			if (!vlan_promisc && vid &&
 			    !ice_vsi_is_vlan_pruning_ena(vsi)) {
-				status = ice_cfg_vlan_pruning(vsi, true, false);
+				status = ice_cfg_vlan_pruning(vsi, true);
 				if (status) {
 					v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 					dev_err(dev, "Enable VLAN pruning on VLAN ID: %d failed error-%d\n",
@@ -4215,7 +4218,7 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 			/* Disable VLAN pruning when only VLAN 0 is left */
 			if (vsi->num_vlan == 1 &&
 			    ice_vsi_is_vlan_pruning_ena(vsi))
-				ice_cfg_vlan_pruning(vsi, false, false);
+				ice_cfg_vlan_pruning(vsi, false);
 
 			/* Disable Unicast/Multicast VLAN promiscuous mode */
 			if (vlan_promisc) {
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
