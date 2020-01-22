Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F11145F76
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jan 2020 00:54:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4FF758558D;
	Wed, 22 Jan 2020 23:54:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3wp5dpdoG92I; Wed, 22 Jan 2020 23:54:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8F36F84C63;
	Wed, 22 Jan 2020 23:54:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9A6AD1BF988
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:54:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 97A2D834A3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:54:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TzAdVtm2gmWI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jan 2020 23:54:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C9D65822C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:54:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 15:54:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,351,1574150400"; d="scan'208";a="259651613"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga002.fm.intel.com with ESMTP; 22 Jan 2020 15:54:21 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 Jan 2020 07:21:27 -0800
Message-Id: <20200122152138.41585-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200122152138.41585-1-anthony.l.nguyen@intel.com>
References: <20200122152138.41585-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S38 04/15] ice: Fix Port VLAN priority bits
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

Currently when configuring a port VLAN for a VF we are only shifting the
QoS bits by 12. This is incorrect. Fix this by getting rid of the ICE
specific VLAN defines and use the kernel VLAN defines instead.

Also, don't assign a value to vlanprio until the VLAN ID and QoS
parameters have been validated.

Also, there are many places we do (le16_to_cpu(vsi->info.pvid) &
VLAN_VID_MASK). Instead do (vf->port_vlan_info & VLAN_VID_MASK) because
we always save what's stored in vsi->info.pvid to vf->port_vlan_info in
the CPU's endianness.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 27 +++++++++----------
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  5 ----
 2 files changed, 13 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 0133a79bbf4c..250fbfd4c5ff 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -528,7 +528,7 @@ static int ice_alloc_vsi_res(struct ice_vf *vf)
 	/* Check if port VLAN exist before, and restore it accordingly */
 	if (vf->port_vlan_info) {
 		ice_vsi_manage_pvid(vsi, vf->port_vlan_info, true);
-		ice_vsi_add_vlan(vsi, vf->port_vlan_info & ICE_VLAN_M);
+		ice_vsi_add_vlan(vsi, vf->port_vlan_info & VLAN_VID_MASK);
 	}
 
 	eth_broadcast_addr(broadcast);
@@ -2659,19 +2659,20 @@ int
 ice_set_vf_port_vlan(struct net_device *netdev, int vf_id, u16 vlan_id, u8 qos,
 		     __be16 vlan_proto)
 {
-	u16 vlanprio = vlan_id | (qos << ICE_VLAN_PRIORITY_S);
 	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 	struct ice_vsi *vsi;
 	struct device *dev;
 	struct ice_vf *vf;
+	u16 vlanprio;
 	int ret = 0;
 
 	dev = ice_pf_to_dev(pf);
 	if (ice_validate_vf_id(pf, vf_id))
 		return -EINVAL;
 
-	if (vlan_id > ICE_MAX_VLANID || qos > 7) {
-		dev_err(dev, "Invalid VF Parameters\n");
+	if (vlan_id >= VLAN_N_VID || qos > 7) {
+		dev_err(dev, "Invalid Port VLAN parameters for VF %d, ID %d, QoS %d\n",
+			vf_id, vlan_id, qos);
 		return -EINVAL;
 	}
 
@@ -2685,16 +2686,17 @@ ice_set_vf_port_vlan(struct net_device *netdev, int vf_id, u16 vlan_id, u8 qos,
 	if (ice_check_vf_init(pf, vf))
 		return -EBUSY;
 
-	if (le16_to_cpu(vsi->info.pvid) == vlanprio) {
+	vlanprio = vlan_id | (qos << VLAN_PRIO_SHIFT);
+
+	if (vf->port_vlan_info == vlanprio) {
 		/* duplicate request, so just return success */
 		dev_dbg(dev, "Duplicate pvid %d request\n", vlanprio);
 		return ret;
 	}
 
 	/* If PVID, then remove all filters on the old VLAN */
-	if (vsi->info.pvid)
-		ice_vsi_kill_vlan(vsi, (le16_to_cpu(vsi->info.pvid) &
-				  VLAN_VID_MASK));
+	if (vf->port_vlan_info)
+		ice_vsi_kill_vlan(vsi, vf->port_vlan_info & VLAN_VID_MASK);
 
 	if (vlan_id || qos) {
 		ret = ice_vsi_manage_pvid(vsi, vlanprio, true);
@@ -2775,7 +2777,7 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 	}
 
 	for (i = 0; i < vfl->num_elements; i++) {
-		if (vfl->vlan_id[i] > ICE_MAX_VLANID) {
+		if (vfl->vlan_id[i] >= VLAN_N_VID) {
 			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 			dev_err(dev, "invalid VF VLAN id %d\n",
 				vfl->vlan_id[i]);
@@ -3206,14 +3208,12 @@ int
 ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_info *ivi)
 {
 	struct ice_pf *pf = ice_netdev_to_pf(netdev);
-	struct ice_vsi *vsi;
 	struct ice_vf *vf;
 
 	if (ice_validate_vf_id(pf, vf_id))
 		return -EINVAL;
 
 	vf = &pf->vf[vf_id];
-	vsi = pf->vsi[vf->lan_vsi_idx];
 
 	if (ice_check_vf_init(pf, vf))
 		return -EBUSY;
@@ -3222,9 +3222,8 @@ ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_info *ivi)
 	ether_addr_copy(ivi->mac, vf->dflt_lan_addr.addr);
 
 	/* VF configuration for VLAN and applicable QoS */
-	ivi->vlan = le16_to_cpu(vsi->info.pvid) & ICE_VLAN_M;
-	ivi->qos = (le16_to_cpu(vsi->info.pvid) & ICE_PRIORITY_M) >>
-		    ICE_VLAN_PRIORITY_S;
+	ivi->vlan = vf->port_vlan_info & VLAN_VID_MASK;
+	ivi->qos = (vf->port_vlan_info & VLAN_PRIO_MASK) >> VLAN_PRIO_SHIFT;
 
 	ivi->trusted = vf->trusted;
 	ivi->spoofchk = vf->spoofchk;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index 80bb1acc7c28..a1bb196d417a 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -5,11 +5,6 @@
 #define _ICE_VIRTCHNL_PF_H_
 #include "ice.h"
 
-#define ICE_MAX_VLANID			4095
-#define ICE_VLAN_PRIORITY_S		12
-#define ICE_VLAN_M			0xFFF
-#define ICE_PRIORITY_M			0x7000
-
 /* Restrict number of MAC Addr and VLAN that non-trusted VF can programmed */
 #define ICE_MAX_VLAN_PER_VF		8
 #define ICE_MAX_MACADDR_PER_VF		12
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
