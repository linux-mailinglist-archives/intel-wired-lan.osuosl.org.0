Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A348F4643A8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Dec 2021 00:53:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD00580D8B;
	Tue, 30 Nov 2021 23:53:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lY51m7pHTDKy; Tue, 30 Nov 2021 23:53:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB64B80C16;
	Tue, 30 Nov 2021 23:53:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 24B2A1BF23C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 23:53:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8CE7D80A46
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 23:53:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ATxqOTvFPVHL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Nov 2021 23:53:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A8F35826B4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 23:53:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="236164190"
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="236164190"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 15:53:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="511726110"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.133])
 by fmsmga007.fm.intel.com with ESMTP; 30 Nov 2021 15:53:02 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 30 Nov 2021 15:51:45 -0800
Message-Id: <20211130235146.28731-13-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211130235146.28731-1-anthony.l.nguyen@intel.com>
References: <20211130235146.28731-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 13/14] ice: Add support for
 802.1ad port VLANs VF
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

Currently there is only support for 802.1Q port VLANs on SR-IOV VFs. Add
support to also allow 802.1ad port VLANs when double VLAN mode is
enabled.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 51 ++++++++++++++++---
 1 file changed, 44 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index de74a2b4f846..f1802de98b82 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -768,6 +768,11 @@ bool ice_vf_is_port_vlan_ena(struct ice_vf *vf)
 	return (ice_vf_get_port_vlan_id(vf) || ice_vf_get_port_vlan_prio(vf));
 }
 
+static u16 ice_vf_get_port_vlan_tpid(struct ice_vf *vf)
+{
+	return vf->port_vlan_info.tpid;
+}
+
 /**
  * ice_vf_rebuild_host_vlan_cfg - add VLAN 0 filter or rebuild the Port VLAN
  * @vf: VF to add MAC filters for
@@ -4129,6 +4134,33 @@ static int ice_vc_request_qs_msg(struct ice_vf *vf, u8 *msg)
 				     v_ret, (u8 *)vfres, sizeof(*vfres));
 }
 
+/**
+ * ice_is_supported_port_vlan_proto - make sure the vlan_proto is supported
+ * @hw: hardware structure used to check the VLAN mode
+ * @vlan_proto: VLAN TPID being checked
+ *
+ * If the device is configured in Double VLAN Mode (DVM), then both ETH_P_8021Q
+ * and ETH_P_8021AD are supported. If the device is configured in Single VLAN
+ * Mode (SVM), then only ETH_P_8021Q is supported.
+ */
+static bool
+ice_is_supported_port_vlan_proto(struct ice_hw *hw, u16 vlan_proto)
+{
+	bool is_supported = false;
+
+	switch (vlan_proto) {
+	case ETH_P_8021Q:
+		is_supported = true;
+		break;
+	case ETH_P_8021AD:
+		if (ice_is_dvm_ena(hw))
+			is_supported = true;
+		break;
+	}
+
+	return is_supported;
+}
+
 /**
  * ice_set_vf_port_vlan
  * @netdev: network interface device structure
@@ -4144,6 +4176,7 @@ ice_set_vf_port_vlan(struct net_device *netdev, int vf_id, u16 vlan_id, u8 qos,
 		     __be16 vlan_proto)
 {
 	struct ice_pf *pf = ice_netdev_to_pf(netdev);
+	u16 local_vlan_proto = ntohs(vlan_proto);
 	struct device *dev;
 	struct ice_vf *vf;
 	int ret;
@@ -4158,8 +4191,9 @@ ice_set_vf_port_vlan(struct net_device *netdev, int vf_id, u16 vlan_id, u8 qos,
 		return -EINVAL;
 	}
 
-	if (vlan_proto != htons(ETH_P_8021Q)) {
-		dev_err(dev, "VF VLAN protocol is not supported\n");
+	if (!ice_is_supported_port_vlan_proto(&pf->hw, local_vlan_proto)) {
+		dev_err(dev, "VF VLAN protocol 0x%04x is not supported\n",
+			local_vlan_proto);
 		return -EPROTONOSUPPORT;
 	}
 
@@ -4169,19 +4203,20 @@ ice_set_vf_port_vlan(struct net_device *netdev, int vf_id, u16 vlan_id, u8 qos,
 		return ret;
 
 	if (ice_vf_get_port_vlan_prio(vf) == qos &&
+	    ice_vf_get_port_vlan_tpid(vf) == local_vlan_proto &&
 	    ice_vf_get_port_vlan_id(vf) == vlan_id) {
 		/* duplicate request, so just return success */
-		dev_dbg(dev, "Duplicate port VLAN %u, QoS %u request\n",
-			vlan_id, qos);
+		dev_dbg(dev, "Duplicate port VLAN %u, QoS %u, TPID 0x%04x request\n",
+			vlan_id, qos, local_vlan_proto);
 		return 0;
 	}
 
 	mutex_lock(&vf->cfg_lock);
 
-	vf->port_vlan_info = ICE_VLAN(ETH_P_8021Q, vlan_id, qos);
+	vf->port_vlan_info = ICE_VLAN(local_vlan_proto, vlan_id, qos);
 	if (ice_vf_is_port_vlan_ena(vf))
-		dev_info(dev, "Setting VLAN %u, QoS %u on VF %d\n",
-			 vlan_id, qos, vf_id);
+		dev_info(dev, "Setting VLAN %u, QoS %u, TPID 0x%04x on VF %d\n",
+			 vlan_id, qos, local_vlan_proto, vf_id);
 	else
 		dev_info(dev, "Clearing port VLAN on VF %d\n", vf_id);
 
@@ -5904,6 +5939,8 @@ ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_info *ivi)
 	/* VF configuration for VLAN and applicable QoS */
 	ivi->vlan = ice_vf_get_port_vlan_id(vf);
 	ivi->qos = ice_vf_get_port_vlan_prio(vf);
+	if (ice_vf_is_port_vlan_ena(vf))
+		ivi->vlan_proto = cpu_to_be16(ice_vf_get_port_vlan_tpid(vf));
 
 	ivi->trusted = vf->trusted;
 	ivi->spoofchk = vf->spoofchk;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
