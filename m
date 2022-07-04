Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51EBF5656A6
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Jul 2022 15:13:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 85F9240600;
	Mon,  4 Jul 2022 13:13:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 85F9240600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656940383;
	bh=BTfbL0nLEgrDO5M3Tdjp9hhj2AkmiB4jej4Ubb3UQIw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wC8JU8CMqeiMAxz/JViGFyL4xGzAJM0fXx+R5dnnOoPa8VBgVQfZ/PRKGxft2ENdG
	 vrbLojDMlVmnzopjn+njnVx8m+YFPPxek06eTHIz94rr4k89xNczva3AHzS1vjgM+L
	 an1by7/NxO40/M24lsaumUOWDzAKJ1p8SHrineX+yL2aurZ72AUdXrmyaDYMHPaFpT
	 2tmntaNirnBDxuTl2ui7d3xT9r0ShluhQiY2ab2+vv1HR6AHNxFyXE74dAEzOLNFUg
	 hWZ82FIbrDZfMk4GqL3hvB5XPyGce0OYU3MCOfDAEOQj+rHyPKierXuTtHr/ybpmY2
	 UdxYX3MGVhYvQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vUT-4HQPQSRQ; Mon,  4 Jul 2022 13:13:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7DFFA405D9;
	Mon,  4 Jul 2022 13:13:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7DFFA405D9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 43D3D1BF35F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 13:12:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2C3848277E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 13:12:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2C3848277E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sudbzhgzWtfD for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Jul 2022 13:12:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 35B3D81AF5
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 35B3D81AF5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 13:12:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10397"; a="284236134"
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="284236134"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2022 06:12:52 -0700
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="542586279"
Received: from moradin.igk.intel.com ([10.123.220.12])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2022 06:12:51 -0700
From: Michal Wilczynski <michal.wilczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 Jul 2022 15:12:26 +0200
Message-Id: <20220704131227.2966160-2-michal.wilczynski@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220704131227.2966160-1-michal.wilczynski@intel.com>
References: <20220704131227.2966160-1-michal.wilczynski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656940373; x=1688476373;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WufwisultsCVp6EUUEcyzwJuP7sp1aPDnkys5xYA3vs=;
 b=MeDHNFu0ryI2fvcVigBC/Mbi5S1ffzLhupMEqcmsPjuisV7BIjPOvR0g
 pSj+GGdzY2N8Nj7Qlh9KRk7K+9/iBQFwUbxq3x22FaB4KLVH7IRtbdYh7
 QUmAW3D5JF3XVatfoMYiaYjwZ/5ATxRiEFtwroPrFmLRqWRLfhIrpTU7q
 lEvGyKLFZlgFo9zZysnyHnNWuDiGxoOglzLanNilwxeyc2exb7Yh8+sPc
 bQFPm7K+RPP6CdeIQdzVv2LgQLtzWCMr0FvRqag4FbueM9tHB+qFmeRUm
 g2ilWBsMlkQ4jYUqevk8AnkrRL8M4TMUjreOdcdARPI9jXJkxOYDaxPtl
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MeDHNFu0
Subject: [Intel-wired-lan] [PATCH net v3 1/2] ice: Introduce enabling
 promiscuous mode on multiple VF's
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
Cc: Michal Wilczynski <michal.wilczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In current implementation default VSI switch filter is only able to
forward traffic to a single VSI. This limits promiscuous mode with
private flag 'vf-true-promisc-support' to a single VF. Enabling it on
the second VF won't work. Also allmulticast support doesn't seem to be
properly implemented when vf-true-promisc-support is true.

Use standard ice_add_rule_internal() function that already implements
forwarding to multiple VSI's instead of constructing AQ call manually.

Add switch filter for allmulticast mode when vf-true-promisc-support is
enabled. The same filter is added regardless of the flag - it doesn't
matter for this case.

Remove unnecessary fields in switch structure. From now on book keeping
will be done by ice_add_rule_internal().

Refactor unnecessarily passed function arguments.

To test:
1) Create 2 VM's, and two VF's. Attach VF's to VM's.
2) Enable promiscuous mode on both of them and check if
   traffic is seen on both of them.

Fixes: 01b5e89aab49 ("ice: Add VF promiscuous support")
Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |   2 -
 drivers/net/ethernet/intel/ice/ice_eswitch.c  |   8 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |   2 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  67 ++++-----
 drivers/net/ethernet/intel/ice/ice_lib.h      |   9 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |  14 +-
 drivers/net/ethernet/intel/ice/ice_switch.c   | 134 +++++++++---------
 drivers/net/ethernet/intel/ice/ice_switch.h   |   6 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   4 -
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  10 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   4 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  58 ++++----
 12 files changed, 151 insertions(+), 167 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 60453b3b8d23..d8d64914e413 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -246,8 +246,6 @@ struct ice_sw {
 	struct ice_pf *pf;
 	u16 sw_id;		/* switch ID for this switch */
 	u16 bridge_mode;	/* VEB/VEPA/Port Virtualizer */
-	struct ice_vsi *dflt_vsi;	/* default VSI for this switch */
-	u8 dflt_vsi_ena:1;	/* true if above dflt_vsi is enabled */
 };
 
 enum ice_pf_state {
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 6a463b242c7d..e35371e61e07 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -133,8 +133,8 @@ static int ice_eswitch_setup_env(struct ice_pf *pf)
 	if (ice_vsi_add_vlan_zero(uplink_vsi))
 		goto err_def_rx;
 
-	if (!ice_is_dflt_vsi_in_use(uplink_vsi->vsw)) {
-		if (ice_set_dflt_vsi(uplink_vsi->vsw, uplink_vsi))
+	if (!ice_is_dflt_vsi_in_use(uplink_vsi->port_info)) {
+		if (ice_set_dflt_vsi(uplink_vsi))
 			goto err_def_rx;
 		rule_added = true;
 	}
@@ -151,7 +151,7 @@ static int ice_eswitch_setup_env(struct ice_pf *pf)
 	ice_vsi_update_security(uplink_vsi, ice_vsi_ctx_clear_allow_override);
 err_override_uplink:
 	if (rule_added)
-		ice_clear_dflt_vsi(uplink_vsi->vsw);
+		ice_clear_dflt_vsi(uplink_vsi);
 err_def_rx:
 	ice_fltr_add_mac_and_broadcast(uplink_vsi,
 				       uplink_vsi->port_info->mac.perm_addr,
@@ -411,7 +411,7 @@ static void ice_eswitch_release_env(struct ice_pf *pf)
 
 	ice_vsi_update_security(ctrl_vsi, ice_vsi_ctx_clear_allow_override);
 	ice_vsi_update_security(uplink_vsi, ice_vsi_ctx_clear_allow_override);
-	ice_clear_dflt_vsi(uplink_vsi->vsw);
+	ice_clear_dflt_vsi(uplink_vsi);
 	ice_fltr_add_mac_and_broadcast(uplink_vsi,
 				       uplink_vsi->port_info->mac.perm_addr,
 				       ICE_FWD_TO_VSI);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 70335f6e8524..340dc5a0832c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1292,7 +1292,7 @@ static int ice_set_priv_flags(struct net_device *netdev, u32 flags)
 	 * promiscuous mode because it's not supported
 	 */
 	if (test_bit(ICE_FLAG_VF_TRUE_PROMISC_ENA, change_flags) &&
-	    ice_is_any_vf_in_promisc(pf)) {
+	    ice_is_any_vf_in_unicast_promisc(pf)) {
 		dev_err(dev, "Changing vf-true-promisc-support flag while VF(s) are in promiscuous mode not supported\n");
 		/* toggle bit back to previous state */
 		change_bit(ICE_FLAG_VF_TRUE_PROMISC_ENA, pf->flags);
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index a6c4be5e5566..6a3b9fd12303 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3006,8 +3006,8 @@ int ice_vsi_release(struct ice_vsi *vsi)
 		}
 	}
 
-	if (ice_is_vsi_dflt_vsi(pf->first_sw, vsi))
-		ice_clear_dflt_vsi(pf->first_sw);
+	if (ice_is_vsi_dflt_vsi(vsi))
+		ice_clear_dflt_vsi(vsi);
 	ice_fltr_remove_all(vsi);
 	ice_rm_vsi_lan_cfg(vsi->port_info, vsi->idx);
 	err = ice_rm_vsi_rdma_cfg(vsi->port_info, vsi->idx);
@@ -3690,116 +3690,97 @@ void ice_update_rx_ring_stats(struct ice_rx_ring *rx_ring, u64 pkts, u64 bytes)
 
 /**
  * ice_is_dflt_vsi_in_use - check if the default forwarding VSI is being used
- * @sw: switch to check if its default forwarding VSI is free
+ * @pi: port info of the switch with default VSI
  *
- * Return true if the default forwarding VSI is already being used, else returns
- * false signalling that it's available to use.
+ * Return true if the there is a single VSI in default forwarding VSI list
  */
-bool ice_is_dflt_vsi_in_use(struct ice_sw *sw)
+bool ice_is_dflt_vsi_in_use(struct ice_port_info *pi)
 {
-	return (sw->dflt_vsi && sw->dflt_vsi_ena);
+	bool exists = false;
+
+	ice_check_if_dflt_vsi(pi, 0, &exists);
+	return exists;
 }
 
 /**
  * ice_is_vsi_dflt_vsi - check if the VSI passed in is the default VSI
- * @sw: switch for the default forwarding VSI to compare against
  * @vsi: VSI to compare against default forwarding VSI
  *
  * If this VSI passed in is the default forwarding VSI then return true, else
  * return false
  */
-bool ice_is_vsi_dflt_vsi(struct ice_sw *sw, struct ice_vsi *vsi)
+bool ice_is_vsi_dflt_vsi(struct ice_vsi *vsi)
 {
-	return (sw->dflt_vsi == vsi && sw->dflt_vsi_ena);
+	return ice_check_if_dflt_vsi(vsi->port_info, vsi->idx, NULL);
 }
 
 /**
  * ice_set_dflt_vsi - set the default forwarding VSI
- * @sw: switch used to assign the default forwarding VSI
  * @vsi: VSI getting set as the default forwarding VSI on the switch
  *
  * If the VSI passed in is already the default VSI and it's enabled just return
  * success.
  *
- * If there is already a default VSI on the switch and it's enabled then return
- * -EEXIST since there can only be one default VSI per switch.
- *
- *  Otherwise try to set the VSI passed in as the switch's default VSI and
- *  return the result.
+ * Otherwise try to set the VSI passed in as the switch's default VSI and
+ * return the result.
  */
-int ice_set_dflt_vsi(struct ice_sw *sw, struct ice_vsi *vsi)
+int ice_set_dflt_vsi(struct ice_vsi *vsi)
 {
 	struct device *dev;
 	int status;
 
-	if (!sw || !vsi)
+	if (!vsi)
 		return -EINVAL;
 
 	dev = ice_pf_to_dev(vsi->back);
 
 	/* the VSI passed in is already the default VSI */
-	if (ice_is_vsi_dflt_vsi(sw, vsi)) {
+	if (ice_is_vsi_dflt_vsi(vsi)) {
 		dev_dbg(dev, "VSI %d passed in is already the default forwarding VSI, nothing to do\n",
 			vsi->vsi_num);
 		return 0;
 	}
 
-	/* another VSI is already the default VSI for this switch */
-	if (ice_is_dflt_vsi_in_use(sw)) {
-		dev_err(dev, "Default forwarding VSI %d already in use, disable it and try again\n",
-			sw->dflt_vsi->vsi_num);
-		return -EEXIST;
-	}
-
-	status = ice_cfg_dflt_vsi(&vsi->back->hw, vsi->idx, true, ICE_FLTR_RX);
+	status = ice_cfg_dflt_vsi(vsi->port_info, vsi->idx, true, ICE_FLTR_RX);
 	if (status) {
 		dev_err(dev, "Failed to set VSI %d as the default forwarding VSI, error %d\n",
 			vsi->vsi_num, status);
 		return status;
 	}
 
-	sw->dflt_vsi = vsi;
-	sw->dflt_vsi_ena = true;
-
 	return 0;
 }
 
 /**
  * ice_clear_dflt_vsi - clear the default forwarding VSI
- * @sw: switch used to clear the default VSI
+ * @vsi: VSI to remove from filter list
  *
  * If the switch has no default VSI or it's not enabled then return error.
  *
  * Otherwise try to clear the default VSI and return the result.
  */
-int ice_clear_dflt_vsi(struct ice_sw *sw)
+int ice_clear_dflt_vsi(struct ice_vsi *vsi)
 {
-	struct ice_vsi *dflt_vsi;
 	struct device *dev;
 	int status;
 
-	if (!sw)
+	if (!vsi)
 		return -EINVAL;
 
-	dev = ice_pf_to_dev(sw->pf);
-
-	dflt_vsi = sw->dflt_vsi;
+	dev = ice_pf_to_dev(vsi->back);
 
 	/* there is no default VSI configured */
-	if (!ice_is_dflt_vsi_in_use(sw))
+	if (!ice_is_dflt_vsi_in_use(vsi->port_info))
 		return -ENODEV;
 
-	status = ice_cfg_dflt_vsi(&dflt_vsi->back->hw, dflt_vsi->idx, false,
+	status = ice_cfg_dflt_vsi(vsi->port_info, vsi->idx, false,
 				  ICE_FLTR_RX);
 	if (status) {
 		dev_err(dev, "Failed to clear the default forwarding VSI %d, error %d\n",
-			dflt_vsi->vsi_num, status);
+			vsi->vsi_num, status);
 		return -EIO;
 	}
 
-	sw->dflt_vsi = NULL;
-	sw->dflt_vsi_ena = false;
-
 	return 0;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 0095329949d4..d3284e4d0ee1 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -102,13 +102,12 @@ int ice_vsi_cfg_mac_fltr(struct ice_vsi *vsi, const u8 *macaddr, bool set);
 
 bool ice_is_safe_mode(struct ice_pf *pf);
 bool ice_is_rdma_ena(struct ice_pf *pf);
-bool ice_is_dflt_vsi_in_use(struct ice_sw *sw);
 
-bool ice_is_vsi_dflt_vsi(struct ice_sw *sw, struct ice_vsi *vsi);
+bool ice_is_dflt_vsi_in_use(struct ice_port_info *pi);
+bool ice_is_vsi_dflt_vsi(struct ice_vsi *vsi);
+int ice_set_dflt_vsi(struct ice_vsi *vsi);
+int ice_clear_dflt_vsi(struct ice_vsi *vsi);
 
-int ice_set_dflt_vsi(struct ice_sw *sw, struct ice_vsi *vsi);
-
-int ice_clear_dflt_vsi(struct ice_sw *sw);
 int ice_set_min_bw_limit(struct ice_vsi *vsi, u64 min_tx_rate);
 int ice_set_max_bw_limit(struct ice_vsi *vsi, u64 max_tx_rate);
 int ice_get_link_speed_kbps(struct ice_vsi *vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index c1ac2f746714..da2a6d44e468 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -410,8 +410,8 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 		clear_bit(ICE_VSI_PROMISC_CHANGED, vsi->state);
 		if (vsi->current_netdev_flags & IFF_PROMISC) {
 			/* Apply Rx filter rule to get traffic from wire */
-			if (!ice_is_dflt_vsi_in_use(pf->first_sw)) {
-				err = ice_set_dflt_vsi(pf->first_sw, vsi);
+			if (!ice_is_dflt_vsi_in_use(vsi->port_info)) {
+				err = ice_set_dflt_vsi(vsi);
 				if (err && err != -EEXIST) {
 					netdev_err(netdev, "Error %d setting default VSI %i Rx rule\n",
 						   err, vsi->vsi_num);
@@ -424,8 +424,8 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 			}
 		} else {
 			/* Clear Rx filter to remove traffic from wire */
-			if (ice_is_vsi_dflt_vsi(pf->first_sw, vsi)) {
-				err = ice_clear_dflt_vsi(pf->first_sw);
+			if (ice_is_vsi_dflt_vsi(vsi)) {
+				err = ice_clear_dflt_vsi(vsi);
 				if (err) {
 					netdev_err(netdev, "Error %d clearing default VSI %i Rx rule\n",
 						   err, vsi->vsi_num);
@@ -6995,12 +6995,6 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 		goto err_init_ctrlq;
 	}
 
-	if (pf->first_sw->dflt_vsi_ena)
-		dev_info(dev, "Clearing default VSI, re-enable after reset completes\n");
-	/* clear the default VSI configuration if it exists */
-	pf->first_sw->dflt_vsi = NULL;
-	pf->first_sw->dflt_vsi_ena = false;
-
 	ice_clear_pxe_mode(hw);
 
 	err = ice_init_nvm(hw);
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 2d1274774987..ad55dea76ab0 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -1608,7 +1608,8 @@ ice_aq_alloc_free_vsi_list(struct ice_hw *hw, u16 *vsi_list_id,
 	    lkup_type == ICE_SW_LKUP_ETHERTYPE ||
 	    lkup_type == ICE_SW_LKUP_ETHERTYPE_MAC ||
 	    lkup_type == ICE_SW_LKUP_PROMISC ||
-	    lkup_type == ICE_SW_LKUP_PROMISC_VLAN) {
+	    lkup_type == ICE_SW_LKUP_PROMISC_VLAN ||
+	    lkup_type == ICE_SW_LKUP_DFLT) {
 		sw_buf->res_type = cpu_to_le16(ICE_AQC_RES_TYPE_VSI_LIST_REP);
 	} else if (lkup_type == ICE_SW_LKUP_VLAN) {
 		sw_buf->res_type =
@@ -2101,8 +2102,6 @@ ice_init_port_info(struct ice_port_info *pi, u16 vsi_port_num, u8 type,
 		pi->sw_id = swid;
 		pi->pf_vf_num = pf_vf_num;
 		pi->is_vf = is_vf;
-		pi->dflt_tx_vsi_num = ICE_DFLT_VSI_INVAL;
-		pi->dflt_rx_vsi_num = ICE_DFLT_VSI_INVAL;
 		break;
 	default:
 		ice_debug(pi->hw, ICE_DBG_SW, "incorrect VSI/port type received\n");
@@ -2537,7 +2536,8 @@ ice_update_vsi_list_rule(struct ice_hw *hw, u16 *vsi_handle_arr, u16 num_vsi,
 	    lkup_type == ICE_SW_LKUP_ETHERTYPE ||
 	    lkup_type == ICE_SW_LKUP_ETHERTYPE_MAC ||
 	    lkup_type == ICE_SW_LKUP_PROMISC ||
-	    lkup_type == ICE_SW_LKUP_PROMISC_VLAN)
+	    lkup_type == ICE_SW_LKUP_PROMISC_VLAN ||
+	    lkup_type == ICE_SW_LKUP_DFLT)
 		rule_type = remove ? ICE_AQC_SW_RULES_T_VSI_LIST_CLEAR :
 			ICE_AQC_SW_RULES_T_VSI_LIST_SET;
 	else if (lkup_type == ICE_SW_LKUP_VLAN)
@@ -3719,7 +3719,7 @@ ice_rem_adv_rule_info(struct ice_hw *hw, struct list_head *rule_head)
 
 /**
  * ice_cfg_dflt_vsi - change state of VSI to set/clear default
- * @hw: pointer to the hardware structure
+ * @pi: pointer to the port_info structure
  * @vsi_handle: VSI handle to set as default
  * @set: true to add the above mentioned switch rule, false to remove it
  * @direction: ICE_FLTR_RX or ICE_FLTR_TX
@@ -3727,25 +3727,18 @@ ice_rem_adv_rule_info(struct ice_hw *hw, struct list_head *rule_head)
  * add filter rule to set/unset given VSI as default VSI for the switch
  * (represented by swid)
  */
-int ice_cfg_dflt_vsi(struct ice_hw *hw, u16 vsi_handle, bool set, u8 direction)
+int ice_cfg_dflt_vsi(struct ice_port_info *pi, u16 vsi_handle, bool set, u8 direction)
 {
-	struct ice_sw_rule_lkup_rx_tx *s_rule;
+	struct ice_fltr_list_entry f_list_entry;
 	struct ice_fltr_info f_info;
-	enum ice_adminq_opc opcode;
-	u16 s_rule_size;
+	struct ice_hw *hw = pi->hw;
 	u16 hw_vsi_id;
 	int status;
 
 	if (!ice_is_vsi_valid(hw, vsi_handle))
 		return -EINVAL;
-	hw_vsi_id = ice_get_hw_vsi_num(hw, vsi_handle);
 
-	s_rule_size = set ? ICE_SW_RULE_RX_TX_ETH_HDR_SIZE(s_rule) :
-			    ICE_SW_RULE_RX_TX_NO_HDR_SIZE(s_rule);
-
-	s_rule = devm_kzalloc(ice_hw_to_dev(hw), s_rule_size, GFP_KERNEL);
-	if (!s_rule)
-		return -ENOMEM;
+	hw_vsi_id = ice_get_hw_vsi_num(hw, vsi_handle);
 
 	memset(&f_info, 0, sizeof(f_info));
 
@@ -3753,54 +3746,80 @@ int ice_cfg_dflt_vsi(struct ice_hw *hw, u16 vsi_handle, bool set, u8 direction)
 	f_info.flag = direction;
 	f_info.fltr_act = ICE_FWD_TO_VSI;
 	f_info.fwd_id.hw_vsi_id = hw_vsi_id;
+	f_info.vsi_handle = vsi_handle;
 
 	if (f_info.flag & ICE_FLTR_RX) {
 		f_info.src = hw->port_info->lport;
 		f_info.src_id = ICE_SRC_ID_LPORT;
-		if (!set)
-			f_info.fltr_rule_id =
-				hw->port_info->dflt_rx_vsi_rule_id;
 	} else if (f_info.flag & ICE_FLTR_TX) {
 		f_info.src_id = ICE_SRC_ID_VSI;
 		f_info.src = hw_vsi_id;
-		if (!set)
-			f_info.fltr_rule_id =
-				hw->port_info->dflt_tx_vsi_rule_id;
 	}
+	f_list_entry.fltr_info = f_info;
 
 	if (set)
-		opcode = ice_aqc_opc_add_sw_rules;
+		status = ice_add_rule_internal(hw, ICE_SW_LKUP_DFLT,
+					       &f_list_entry);
 	else
-		opcode = ice_aqc_opc_remove_sw_rules;
-
-	ice_fill_sw_rule(hw, &f_info, s_rule, opcode);
-
-	status = ice_aq_sw_rules(hw, s_rule, s_rule_size, 1, opcode, NULL);
-	if (status || !(f_info.flag & ICE_FLTR_TX_RX))
-		goto out;
-	if (set) {
-		u16 index = le16_to_cpu(s_rule->index);
-
-		if (f_info.flag & ICE_FLTR_TX) {
-			hw->port_info->dflt_tx_vsi_num = hw_vsi_id;
-			hw->port_info->dflt_tx_vsi_rule_id = index;
-		} else if (f_info.flag & ICE_FLTR_RX) {
-			hw->port_info->dflt_rx_vsi_num = hw_vsi_id;
-			hw->port_info->dflt_rx_vsi_rule_id = index;
-		}
-	} else {
-		if (f_info.flag & ICE_FLTR_TX) {
-			hw->port_info->dflt_tx_vsi_num = ICE_DFLT_VSI_INVAL;
-			hw->port_info->dflt_tx_vsi_rule_id = ICE_INVAL_ACT;
-		} else if (f_info.flag & ICE_FLTR_RX) {
-			hw->port_info->dflt_rx_vsi_num = ICE_DFLT_VSI_INVAL;
-			hw->port_info->dflt_rx_vsi_rule_id = ICE_INVAL_ACT;
+		status = ice_remove_rule_internal(hw, ICE_SW_LKUP_DFLT,
+						  &f_list_entry);
+
+	return status;
+}
+
+/**
+ * ice_vsi_uses_fltr - Determine if given VSI uses specified filter
+ * @fm_entry: filter entry to inspect
+ * @vsi_handle: VSI handle to compare with filter info
+ */
+static bool
+ice_vsi_uses_fltr(struct ice_fltr_mgmt_list_entry *fm_entry, u16 vsi_handle)
+{
+	return ((fm_entry->fltr_info.fltr_act == ICE_FWD_TO_VSI &&
+		 fm_entry->fltr_info.vsi_handle == vsi_handle) ||
+		(fm_entry->fltr_info.fltr_act == ICE_FWD_TO_VSI_LIST &&
+		 fm_entry->vsi_list_info &&
+		 (test_bit(vsi_handle, fm_entry->vsi_list_info->vsi_map))));
+}
+
+/**
+ * ice_check_if_dflt_vsi - check if VSI is default VSI
+ * @pi: pointer to the port_info structure
+ * @vsi_handle: vsi handle to check for in filter list
+ * @rule_exists: indicates if there are any VSI's in the rule list
+ *
+ * checks if the VSI is in a default VSI list, and also indicates
+ * if the default VSI list is empty
+ */
+bool
+ice_check_if_dflt_vsi(struct ice_port_info *pi, u16 vsi_handle,
+		      bool *rule_exists)
+{
+	struct ice_fltr_mgmt_list_entry *fm_entry;
+	struct ice_sw_recipe *recp_list;
+	struct list_head *rule_head;
+	struct mutex *rule_lock; /* Lock to protect filter rule list */
+	bool ret = false;
+
+	recp_list = &pi->hw->switch_info->recp_list[ICE_SW_LKUP_DFLT];
+	rule_lock = &recp_list->filt_rule_lock;
+	rule_head = &recp_list->filt_rules;
+
+	mutex_lock(rule_lock);
+
+	if (rule_exists && !list_empty(rule_head))
+		*rule_exists = true;
+
+	list_for_each_entry(fm_entry, rule_head, list_entry) {
+		if (ice_vsi_uses_fltr(fm_entry, vsi_handle)) {
+			ret = true;
+			break;
 		}
 	}
 
-out:
-	devm_kfree(ice_hw_to_dev(hw), s_rule);
-	return status;
+	mutex_unlock(rule_lock);
+
+	return ret;
 }
 
 /**
@@ -3919,21 +3938,6 @@ int ice_remove_vlan(struct ice_hw *hw, struct list_head *v_list)
 	return 0;
 }
 
-/**
- * ice_vsi_uses_fltr - Determine if given VSI uses specified filter
- * @fm_entry: filter entry to inspect
- * @vsi_handle: VSI handle to compare with filter info
- */
-static bool
-ice_vsi_uses_fltr(struct ice_fltr_mgmt_list_entry *fm_entry, u16 vsi_handle)
-{
-	return ((fm_entry->fltr_info.fltr_act == ICE_FWD_TO_VSI &&
-		 fm_entry->fltr_info.vsi_handle == vsi_handle) ||
-		(fm_entry->fltr_info.fltr_act == ICE_FWD_TO_VSI_LIST &&
-		 fm_entry->vsi_list_info &&
-		 (test_bit(vsi_handle, fm_entry->vsi_list_info->vsi_map))));
-}
-
 /**
  * ice_add_entry_to_vsi_fltr_list - Add copy of fltr_list_entry to remove list
  * @hw: pointer to the hardware structure
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index 59488e3e9d6a..cbd65ab4febd 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -359,7 +359,11 @@ int ice_cfg_rdma_fltr(struct ice_hw *hw, u16 vsi_handle, bool enable);
 void ice_remove_vsi_fltr(struct ice_hw *hw, u16 vsi_handle);
 
 /* Promisc/defport setup for VSIs */
-int ice_cfg_dflt_vsi(struct ice_hw *hw, u16 vsi_handle, bool set, u8 direction);
+int ice_cfg_dflt_vsi(struct ice_port_info *pi, u16 vsi_handle, bool set, u8 direction);
+
+bool
+ice_check_if_dflt_vsi(struct ice_port_info *pi, u16 vsi_handle, bool *rule_exists);
+
 int
 ice_set_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
 		    u16 vid);
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index f2a518a1fd94..861b64322959 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -693,10 +693,6 @@ struct ice_port_info {
 #define ICE_SCHED_PORT_STATE_READY	0x1
 	u8 lport;
 #define ICE_LPORT_MASK			0xff
-	u16 dflt_tx_vsi_rule_id;
-	u16 dflt_tx_vsi_num;
-	u16 dflt_rx_vsi_rule_id;
-	u16 dflt_rx_vsi_num;
 	struct ice_fc_info fc;
 	struct ice_mac_info mac;
 	struct ice_phy_info phy;
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 7adf9ddf129e..9038d2687ba6 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -271,13 +271,14 @@ static int ice_vf_rebuild_vsi(struct ice_vf *vf)
 }
 
 /**
- * ice_is_any_vf_in_promisc - check if any VF(s) are in promiscuous mode
+ * ice_is_any_vf_in_unicast_promisc - check if any VF(s)
+ * are in unicast promiscuous mode
  * @pf: PF structure for accessing VF(s)
  *
- * Return false if no VF(s) are in unicast and/or multicast promiscuous mode,
+ * Return false if no VF(s) are in unicast promiscuous mode,
  * else return true
  */
-bool ice_is_any_vf_in_promisc(struct ice_pf *pf)
+bool ice_is_any_vf_in_unicast_promisc(struct ice_pf *pf)
 {
 	bool is_vf_promisc = false;
 	struct ice_vf *vf;
@@ -286,8 +287,7 @@ bool ice_is_any_vf_in_promisc(struct ice_pf *pf)
 	rcu_read_lock();
 	ice_for_each_vf_rcu(pf, bkt, vf) {
 		/* found a VF that has promiscuous mode configured */
-		if (test_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states) ||
-		    test_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states)) {
+		if (test_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states)) {
 			is_vf_promisc = true;
 			break;
 		}
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 1b4380d6d949..1acb35c9ff01 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -214,7 +214,7 @@ struct ice_vsi *ice_get_vf_vsi(struct ice_vf *vf);
 bool ice_is_vf_disabled(struct ice_vf *vf);
 int ice_check_vf_ready_for_cfg(struct ice_vf *vf);
 void ice_set_vf_state_qs_dis(struct ice_vf *vf);
-bool ice_is_any_vf_in_promisc(struct ice_pf *pf);
+bool ice_is_any_vf_in_unicast_promisc(struct ice_pf *pf);
 int
 ice_vf_set_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m);
 int
@@ -260,7 +260,7 @@ static inline void ice_set_vf_state_qs_dis(struct ice_vf *vf)
 {
 }
 
-static inline bool ice_is_any_vf_in_promisc(struct ice_pf *pf)
+static inline bool ice_is_any_vf_in_unicast_promisc(struct ice_pf *pf)
 {
 	return false;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index b2b5d2ee83a5..47ce713274cf 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -999,6 +999,7 @@ static int ice_vc_cfg_promiscuous_mode_msg(struct ice_vf *vf, u8 *msg)
 	int mcast_err = 0, ucast_err = 0;
 	struct ice_pf *pf = vf->pf;
 	struct ice_vsi *vsi;
+	u8 mcast_m, ucast_m;
 	struct device *dev;
 	int ret = 0;
 
@@ -1045,39 +1046,40 @@ static int ice_vc_cfg_promiscuous_mode_msg(struct ice_vf *vf, u8 *msg)
 		goto error_param;
 	}
 
+	if (ice_vf_is_port_vlan_ena(vf) ||
+	    ice_vsi_has_non_zero_vlans(vsi)) {
+		mcast_m = ICE_MCAST_VLAN_PROMISC_BITS;
+		ucast_m = ICE_UCAST_VLAN_PROMISC_BITS;
+	} else {
+		mcast_m = ICE_MCAST_PROMISC_BITS;
+		ucast_m = ICE_UCAST_PROMISC_BITS;
+	}
+
 	if (!test_bit(ICE_FLAG_VF_TRUE_PROMISC_ENA, pf->flags)) {
-		bool set_dflt_vsi = alluni || allmulti;
+		if (alluni) {
+			/* in this case we're turning on promiscuous mode */
+			ret = ice_set_dflt_vsi(vsi);
+		} else {
+			/* in this case we're turning off promiscuous mode */
+			if (ice_is_dflt_vsi_in_use(vsi->port_info))
+				ret = ice_clear_dflt_vsi(vsi);
+		}
 
-		if (set_dflt_vsi && !ice_is_dflt_vsi_in_use(pf->first_sw))
-			/* only attempt to set the default forwarding VSI if
-			 * it's not currently set
-			 */
-			ret = ice_set_dflt_vsi(pf->first_sw, vsi);
-		else if (!set_dflt_vsi &&
-			 ice_is_vsi_dflt_vsi(pf->first_sw, vsi))
-			/* only attempt to free the default forwarding VSI if we
-			 * are the owner
-			 */
-			ret = ice_clear_dflt_vsi(pf->first_sw);
+		/* in this case we're turning on/off only
+		 * allmulticast
+		 */
+		if (allmulti)
+			mcast_err = ice_vf_set_vsi_promisc(vf, vsi, mcast_m);
+		else
+			mcast_err = ice_vf_clear_vsi_promisc(vf, vsi, mcast_m);
 
 		if (ret) {
-			dev_err(dev, "%sable VF %d as the default VSI failed, error %d\n",
-				set_dflt_vsi ? "en" : "dis", vf->vf_id, ret);
+			dev_err(dev, "Turning on/off promiscuous mode for VF %d failed, error: %d\n",
+				vf->vf_id, ret);
 			v_ret = VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR;
 			goto error_param;
 		}
 	} else {
-		u8 mcast_m, ucast_m;
-
-		if (ice_vf_is_port_vlan_ena(vf) ||
-		    ice_vsi_has_non_zero_vlans(vsi)) {
-			mcast_m = ICE_MCAST_VLAN_PROMISC_BITS;
-			ucast_m = ICE_UCAST_VLAN_PROMISC_BITS;
-		} else {
-			mcast_m = ICE_MCAST_PROMISC_BITS;
-			ucast_m = ICE_UCAST_PROMISC_BITS;
-		}
-
 		if (alluni)
 			ucast_err = ice_vf_set_vsi_promisc(vf, vsi, ucast_m);
 		else
@@ -1102,6 +1104,9 @@ static int ice_vc_cfg_promiscuous_mode_msg(struct ice_vf *vf, u8 *msg)
 					    vf->vf_states))
 			dev_info(dev, "VF %u successfully unset multicast promiscuous mode\n",
 				 vf->vf_id);
+	} else {
+		dev_err(dev, "Error while modifying multicast promiscuous mode for VF %u, error: %d\n",
+			vf->vf_id, mcast_err);
 	}
 
 	if (!ucast_err) {
@@ -1114,6 +1119,9 @@ static int ice_vc_cfg_promiscuous_mode_msg(struct ice_vf *vf, u8 *msg)
 					    vf->vf_states))
 			dev_info(dev, "VF %u successfully unset unicast promiscuous mode\n",
 				 vf->vf_id);
+	} else {
+		dev_err(dev, "Error while modifying unicast promiscuous mode for VF %u, error: %d\n",
+			vf->vf_id, ucast_err);
 	}
 
 error_param:
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
