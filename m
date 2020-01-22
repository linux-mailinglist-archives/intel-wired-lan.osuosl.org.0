Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A464D145F80
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jan 2020 00:54:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 563CF871F4;
	Wed, 22 Jan 2020 23:54:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gIjMQDokhMWI; Wed, 22 Jan 2020 23:54:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0659D8558D;
	Wed, 22 Jan 2020 23:54:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 790521BF988
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:54:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 761AC81A67
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:54:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nlEYYcjnFAwr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jan 2020 23:54:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E4B6883445
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:54:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 15:54:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,351,1574150400"; d="scan'208";a="259651614"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga002.fm.intel.com with ESMTP; 22 Jan 2020 15:54:21 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 Jan 2020 07:21:28 -0800
Message-Id: <20200122152138.41585-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200122152138.41585-1-anthony.l.nguyen@intel.com>
References: <20200122152138.41585-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S38 05/15] ice: Only allow tagged
 bcast/mcast traffic for VF in port VLAN
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

Currently the VF can see other's broadcast and multicast traffic because
it always has a VLAN filter for VLAN 0. Fix this by removing/adding the
VF's VLAN 0 filter when a port VLAN is added/removed respectively.

This required a few changes.

1. Move where we add VLAN 0 by default for the VF into
ice_alloc_vsi_res() because this is when we determine if a port VLAN is
present for load and reset.

2. Moved where we kill the old port VLAN filter in
ice_set_vf_port_vlan() to the very end of the function because it allows
us to save the old port VLAN configuration upon any failure case.

3. During adding/removing of a port VLAN via ice_set_vf_port_vlan() we
also need to remove/add the VLAN 0 filter rule respectively.

4. Improve log messages.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 49 ++++++++++++-------
 1 file changed, 31 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 250fbfd4c5ff..993bc89c920e 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -528,7 +528,18 @@ static int ice_alloc_vsi_res(struct ice_vf *vf)
 	/* Check if port VLAN exist before, and restore it accordingly */
 	if (vf->port_vlan_info) {
 		ice_vsi_manage_pvid(vsi, vf->port_vlan_info, true);
-		ice_vsi_add_vlan(vsi, vf->port_vlan_info & VLAN_VID_MASK);
+		if (ice_vsi_add_vlan(vsi, vf->port_vlan_info & VLAN_VID_MASK))
+			dev_warn(ice_pf_to_dev(pf), "Failed to add Port VLAN %d filter for VF %d\n",
+				 vf->port_vlan_info & VLAN_VID_MASK, vf->vf_id);
+	} else {
+		/* set VLAN 0 filter by default when no port VLAN is
+		 * enabled. If a port VLAN is enabled we don't want
+		 * untagged broadcast/multicast traffic seen on the VF
+		 * interface.
+		 */
+		if (ice_vsi_add_vlan(vsi, 0))
+			dev_warn(ice_pf_to_dev(pf), "Failed to add VLAN 0 filter for VF %d, MDD events will trigger. Reset the VF, disable spoofchk, or enable 8021q module on the guest\n",
+				 vf->vf_id);
 	}
 
 	eth_broadcast_addr(broadcast);
@@ -936,17 +947,9 @@ static void ice_cleanup_and_realloc_vf(struct ice_vf *vf)
 
 	/* reallocate VF resources to finish resetting the VSI state */
 	if (!ice_alloc_vf_res(vf)) {
-		struct ice_vsi *vsi;
-
 		ice_ena_vf_mappings(vf);
 		set_bit(ICE_VF_STATE_ACTIVE, vf->vf_states);
 		clear_bit(ICE_VF_STATE_DIS, vf->vf_states);
-
-		vsi = pf->vsi[vf->lan_vsi_idx];
-		if (ice_vsi_add_vlan(vsi, 0))
-			dev_warn(ice_pf_to_dev(pf),
-				 "Failed to add VLAN 0 filter for VF %d, MDD events will trigger. Reset the VF, disable spoofchk, or enable 8021q module on the guest",
-				 vf->vf_id);
 	}
 
 	/* Tell the VF driver the reset is done. This needs to be done only
@@ -2694,15 +2697,24 @@ ice_set_vf_port_vlan(struct net_device *netdev, int vf_id, u16 vlan_id, u8 qos,
 		return ret;
 	}
 
-	/* If PVID, then remove all filters on the old VLAN */
-	if (vf->port_vlan_info)
-		ice_vsi_kill_vlan(vsi, vf->port_vlan_info & VLAN_VID_MASK);
-
 	if (vlan_id || qos) {
+		/* remove VLAN 0 filter set by default when transitioning from
+		 * no port VLAN to a port VLAN. No change to old port VLAN on
+		 * failure.
+		 */
+		ret = ice_vsi_kill_vlan(vsi, 0);
+		if (ret)
+			return ret;
 		ret = ice_vsi_manage_pvid(vsi, vlanprio, true);
 		if (ret)
-			goto error_manage_pvid;
+			return ret;
 	} else {
+		/* add VLAN 0 filter back when transitioning from port VLAN to
+		 * no port VLAN. No change to old port VLAN on failure.
+		 */
+		ret = ice_vsi_add_vlan(vsi, 0);
+		if (ret)
+			return ret;
 		ret = ice_vsi_manage_pvid(vsi, 0, false);
 		if (ret)
 			goto error_manage_pvid;
@@ -2712,15 +2724,16 @@ ice_set_vf_port_vlan(struct net_device *netdev, int vf_id, u16 vlan_id, u8 qos,
 		dev_info(dev, "Setting VLAN %d, QoS 0x%x on VF %d\n",
 			 vlan_id, qos, vf_id);
 
-		/* add new VLAN filter for each MAC */
+		/* add VLAN filter for the port VLAN */
 		ret = ice_vsi_add_vlan(vsi, vlan_id);
 		if (ret)
 			goto error_manage_pvid;
 	}
+	/* remove old port VLAN filter with valid VLAN ID or QoS fields */
+	if (vf->port_vlan_info)
+		ice_vsi_kill_vlan(vsi, vf->port_vlan_info & VLAN_VID_MASK);
 
-	/* The Port VLAN needs to be saved across resets the same as the
-	 * default LAN MAC address.
-	 */
+	/* keep port VLAN information persistent on resets */
 	vf->port_vlan_info = le16_to_cpu(vsi->info.pvid);
 
 error_manage_pvid:
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
