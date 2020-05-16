Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 165ED1D5D77
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:57:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 91037890B8;
	Sat, 16 May 2020 00:57:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IH51l48RIiFC; Sat, 16 May 2020 00:57:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A4CDE890AB;
	Sat, 16 May 2020 00:57:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BD1531BF9C6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:57:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B900C227FC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:57:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xk1iAJb6IWvt for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:57:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id 75FC8204BE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:57:41 +0000 (UTC)
IronPort-SDR: 1bNQHa/lOLpWRnCHBS6JnAYucEEcvFmoQ+d3cg7ykO2qoX2cNvB2fgMCeRi7Q2u5/2vZf2G9Xa
 UGWvg0wbILBg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:57:40 -0700
IronPort-SDR: Nbk78f8YUn2IblatVFra226EMi+67ooKsVNujKWjN2+VeM+97T8XCSpnUG09HN8xAlmOyj7Cqb
 ZWDOsRaZClVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="464922693"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by fmsmga005.fm.intel.com with ESMTP; 15 May 2020 17:57:40 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:54:58 -0700
Message-Id: <20200516005506.5113-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S46 1/9] ice: Reset VF for all port VLAN
 changes from host
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

Currently the PF is modifying the VF's port VLAN on the fly when
configured via iproute. This is okay for most cases, but if the VF
already has guest VLANs configured the PF has to remove all of those
filters so only VLAN tagged traffic that matches the port VLAN will
pass. Instead of adding functionality to track which guest VLANs have
been added, just reset the VF each time port VLAN parameters are
modified.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 42 +++----------------
 1 file changed, 5 insertions(+), 37 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index abc4f2dba388..0ca614fa97bb 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -3269,7 +3269,6 @@ ice_set_vf_port_vlan(struct net_device *netdev, int vf_id, u16 vlan_id, u8 qos,
 		     __be16 vlan_proto)
 {
 	struct ice_pf *pf = ice_netdev_to_pf(netdev);
-	struct ice_vsi *vsi;
 	struct device *dev;
 	struct ice_vf *vf;
 	u16 vlanprio;
@@ -3291,8 +3290,6 @@ ice_set_vf_port_vlan(struct net_device *netdev, int vf_id, u16 vlan_id, u8 qos,
 	}
 
 	vf = &pf->vf[vf_id];
-	vsi = pf->vsi[vf->lan_vsi_idx];
-
 	ret = ice_check_vf_ready_for_cfg(vf);
 	if (ret)
 		return ret;
@@ -3305,44 +3302,15 @@ ice_set_vf_port_vlan(struct net_device *netdev, int vf_id, u16 vlan_id, u8 qos,
 		return 0;
 	}
 
-	if (vlan_id || qos) {
-		/* remove VLAN 0 filter set by default when transitioning from
-		 * no port VLAN to a port VLAN. No change to old port VLAN on
-		 * failure.
-		 */
-		ret = ice_vsi_kill_vlan(vsi, 0);
-		if (ret)
-			return ret;
-		ret = ice_vsi_manage_pvid(vsi, vlanprio, true);
-		if (ret)
-			return ret;
-	} else {
-		/* add VLAN 0 filter back when transitioning from port VLAN to
-		 * no port VLAN. No change to old port VLAN on failure.
-		 */
-		ret = ice_vsi_add_vlan(vsi, 0, ICE_FWD_TO_VSI);
-		if (ret)
-			return ret;
-		ret = ice_vsi_manage_pvid(vsi, 0, false);
-		if (ret)
-			return ret;
-	}
+	vf->port_vlan_info = vlanprio;
 
-	if (vlan_id) {
+	if (vf->port_vlan_info)
 		dev_info(dev, "Setting VLAN %d, QoS 0x%x on VF %d\n",
 			 vlan_id, qos, vf_id);
+	else
+		dev_info(dev, "Clearing port VLAN on VF %d\n", vf_id);
 
-		/* add VLAN filter for the port VLAN */
-		ret = ice_vsi_add_vlan(vsi, vlan_id, ICE_FWD_TO_VSI);
-		if (ret)
-			return ret;
-	}
-	/* remove old port VLAN filter with valid VLAN ID or QoS fields */
-	if (vf->port_vlan_info)
-		ice_vsi_kill_vlan(vsi, vf->port_vlan_info & VLAN_VID_MASK);
-
-	/* keep port VLAN information persistent on resets */
-	vf->port_vlan_info = le16_to_cpu(vsi->info.pvid);
+	ice_vc_reset_vf(vf);
 
 	return 0;
 }
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
