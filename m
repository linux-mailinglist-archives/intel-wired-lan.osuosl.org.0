Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5654C05F7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Feb 2022 01:27:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 02FB74061E;
	Wed, 23 Feb 2022 00:27:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hoi6cj-H6Yah; Wed, 23 Feb 2022 00:27:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 73AF84026A;
	Wed, 23 Feb 2022 00:27:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 49A231BF9B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AA84C60F16
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x2J4hVrXAdhI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Feb 2022 00:27:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C223760F11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645576040; x=1677112040;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/rHYEJiQS2cwCb+/abd7SBV9ng1a6IiyPdxPxXmajkE=;
 b=UIu6ilTwlRLfIgdQDXK4WhaLsfXFCj91jkM+fyAvZQcozHjTRn3tDWjK
 vOILy2tBiVlvBiG3VvlT98Mpf0xntJvNJRMitgwnCPsMtdwOK4X1vEexU
 MatVblhYdwZzOITDi5vcDc71DefbmrHRbErpL2cLBIWYnz7BMRUsc6I29
 /NdYl4kMsO7bNRvZh850ixnHN+TD143RENKgDKCRroYs1dKE7KHZBAXQI
 eFOGe15EzlRJvVla+jXL00AK6Jl7C6/zLE9hChKj65lHZvUbI17X0YgjY
 5vPJSIvU6Iy/laao+KLYvBQgklzC4geKIdJnyX/ixs/YqH2YvhzvH68TN w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="232468973"
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="232468973"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:19 -0800
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="505728017"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:18 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 22 Feb 2022 16:26:55 -0800
Message-Id: <20220223002712.2771809-9-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
In-Reply-To: <20220223002712.2771809-1-jacob.e.keller@intel.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 08/25] ice: move
 ice_set_vf_port_vlan near other .ndo ops
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

The ice_set_vf_port_vlan function is located in ice_sriov.c very far
away from the other .ndo operations that it is similar to. Move this so
that its located near the other .ndo operation definitions.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c | 192 ++++++++++-----------
 1 file changed, 96 insertions(+), 96 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 8d22b5d94706..eebff1824be2 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -4249,102 +4249,6 @@ static int ice_vc_request_qs_msg(struct ice_vf *vf, u8 *msg)
 				     v_ret, (u8 *)vfres, sizeof(*vfres));
 }
 
-/**
- * ice_is_supported_port_vlan_proto - make sure the vlan_proto is supported
- * @hw: hardware structure used to check the VLAN mode
- * @vlan_proto: VLAN TPID being checked
- *
- * If the device is configured in Double VLAN Mode (DVM), then both ETH_P_8021Q
- * and ETH_P_8021AD are supported. If the device is configured in Single VLAN
- * Mode (SVM), then only ETH_P_8021Q is supported.
- */
-static bool
-ice_is_supported_port_vlan_proto(struct ice_hw *hw, u16 vlan_proto)
-{
-	bool is_supported = false;
-
-	switch (vlan_proto) {
-	case ETH_P_8021Q:
-		is_supported = true;
-		break;
-	case ETH_P_8021AD:
-		if (ice_is_dvm_ena(hw))
-			is_supported = true;
-		break;
-	}
-
-	return is_supported;
-}
-
-/**
- * ice_set_vf_port_vlan
- * @netdev: network interface device structure
- * @vf_id: VF identifier
- * @vlan_id: VLAN ID being set
- * @qos: priority setting
- * @vlan_proto: VLAN protocol
- *
- * program VF Port VLAN ID and/or QoS
- */
-int
-ice_set_vf_port_vlan(struct net_device *netdev, int vf_id, u16 vlan_id, u8 qos,
-		     __be16 vlan_proto)
-{
-	struct ice_pf *pf = ice_netdev_to_pf(netdev);
-	u16 local_vlan_proto = ntohs(vlan_proto);
-	struct device *dev;
-	struct ice_vf *vf;
-	int ret;
-
-	dev = ice_pf_to_dev(pf);
-
-	if (vlan_id >= VLAN_N_VID || qos > 7) {
-		dev_err(dev, "Invalid Port VLAN parameters for VF %d, ID %d, QoS %d\n",
-			vf_id, vlan_id, qos);
-		return -EINVAL;
-	}
-
-	if (!ice_is_supported_port_vlan_proto(&pf->hw, local_vlan_proto)) {
-		dev_err(dev, "VF VLAN protocol 0x%04x is not supported\n",
-			local_vlan_proto);
-		return -EPROTONOSUPPORT;
-	}
-
-	vf = ice_get_vf_by_id(pf, vf_id);
-	if (!vf)
-		return -EINVAL;
-
-	ret = ice_check_vf_ready_for_cfg(vf);
-	if (ret)
-		goto out_put_vf;
-
-	if (ice_vf_get_port_vlan_prio(vf) == qos &&
-	    ice_vf_get_port_vlan_tpid(vf) == local_vlan_proto &&
-	    ice_vf_get_port_vlan_id(vf) == vlan_id) {
-		/* duplicate request, so just return success */
-		dev_dbg(dev, "Duplicate port VLAN %u, QoS %u, TPID 0x%04x request\n",
-			vlan_id, qos, local_vlan_proto);
-		ret = 0;
-		goto out_put_vf;
-	}
-
-	mutex_lock(&vf->cfg_lock);
-
-	vf->port_vlan_info = ICE_VLAN(local_vlan_proto, vlan_id, qos);
-	if (ice_vf_is_port_vlan_ena(vf))
-		dev_info(dev, "Setting VLAN %u, QoS %u, TPID 0x%04x on VF %d\n",
-			 vlan_id, qos, local_vlan_proto, vf_id);
-	else
-		dev_info(dev, "Clearing port VLAN on VF %d\n", vf_id);
-
-	ice_vc_reset_vf(vf);
-	mutex_unlock(&vf->cfg_lock);
-
-out_put_vf:
-	ice_put_vf(vf);
-	return ret;
-}
-
 /**
  * ice_vf_vlan_offload_ena - determine if capabilities support VLAN offloads
  * @caps: VF driver negotiated capabilities
@@ -6483,6 +6387,102 @@ int ice_get_vf_stats(struct net_device *netdev, int vf_id,
 	return ret;
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
+/**
+ * ice_set_vf_port_vlan
+ * @netdev: network interface device structure
+ * @vf_id: VF identifier
+ * @vlan_id: VLAN ID being set
+ * @qos: priority setting
+ * @vlan_proto: VLAN protocol
+ *
+ * program VF Port VLAN ID and/or QoS
+ */
+int
+ice_set_vf_port_vlan(struct net_device *netdev, int vf_id, u16 vlan_id, u8 qos,
+		     __be16 vlan_proto)
+{
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
+	u16 local_vlan_proto = ntohs(vlan_proto);
+	struct device *dev;
+	struct ice_vf *vf;
+	int ret;
+
+	dev = ice_pf_to_dev(pf);
+
+	if (vlan_id >= VLAN_N_VID || qos > 7) {
+		dev_err(dev, "Invalid Port VLAN parameters for VF %d, ID %d, QoS %d\n",
+			vf_id, vlan_id, qos);
+		return -EINVAL;
+	}
+
+	if (!ice_is_supported_port_vlan_proto(&pf->hw, local_vlan_proto)) {
+		dev_err(dev, "VF VLAN protocol 0x%04x is not supported\n",
+			local_vlan_proto);
+		return -EPROTONOSUPPORT;
+	}
+
+	vf = ice_get_vf_by_id(pf, vf_id);
+	if (!vf)
+		return -EINVAL;
+
+	ret = ice_check_vf_ready_for_cfg(vf);
+	if (ret)
+		goto out_put_vf;
+
+	if (ice_vf_get_port_vlan_prio(vf) == qos &&
+	    ice_vf_get_port_vlan_tpid(vf) == local_vlan_proto &&
+	    ice_vf_get_port_vlan_id(vf) == vlan_id) {
+		/* duplicate request, so just return success */
+		dev_dbg(dev, "Duplicate port VLAN %u, QoS %u, TPID 0x%04x request\n",
+			vlan_id, qos, local_vlan_proto);
+		ret = 0;
+		goto out_put_vf;
+	}
+
+	mutex_lock(&vf->cfg_lock);
+
+	vf->port_vlan_info = ICE_VLAN(local_vlan_proto, vlan_id, qos);
+	if (ice_vf_is_port_vlan_ena(vf))
+		dev_info(dev, "Setting VLAN %u, QoS %u, TPID 0x%04x on VF %d\n",
+			 vlan_id, qos, local_vlan_proto, vf_id);
+	else
+		dev_info(dev, "Clearing port VLAN on VF %d\n", vf_id);
+
+	ice_vc_reset_vf(vf);
+	mutex_unlock(&vf->cfg_lock);
+
+out_put_vf:
+	ice_put_vf(vf);
+	return ret;
+}
+
 /**
  * ice_print_vf_rx_mdd_event - print VF Rx malicious driver detect event
  * @vf: pointer to the VF structure
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
