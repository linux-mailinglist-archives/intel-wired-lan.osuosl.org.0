Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0900F462061
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Nov 2021 20:24:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7930080FA6;
	Mon, 29 Nov 2021 19:24:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id grdxoR-lOTUX; Mon, 29 Nov 2021 19:24:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7939D816F5;
	Mon, 29 Nov 2021 19:24:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2E4741BF3A3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 19:24:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1D1FF60A4F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 19:24:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 29mdSMIapf_B for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Nov 2021 19:24:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 00FC0607CB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 19:24:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10183"; a="259993364"
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; d="scan'208";a="259993364"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2021 11:24:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; d="scan'208";a="558967544"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.133])
 by fmsmga008.fm.intel.com with ESMTP; 29 Nov 2021 11:24:15 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 29 Nov 2021 11:23:00 -0800
Message-Id: <20211129192300.14188-7-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211129192300.14188-1-anthony.l.nguyen@intel.com>
References: <20211129192300.14188-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 6/6] iavf: Restrict maximum VLAN
 filters for VIRTCHNL_VF_OFFLOAD_VLAN_V2
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

For VIRTCHNL_VF_OFFLOAD_VLAN, PF's would limit the number of VLAN
filters a VF was allowed to add. However, by the time the opcode failed,
the VLAN netdev had already been added. VIRTCHNL_VF_OFFLOAD_VLAN_V2
added the ability for a PF to tell the VF how many VLAN filters it's
allowed to add. Make changes to support that functionality.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 50 +++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 1e798b00cd82..5b5cd66e4ef2 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -731,6 +731,50 @@ static void iavf_restore_filters(struct iavf_adapter *adapter)
 		iavf_add_vlan(adapter, IAVF_VLAN(vid, ETH_P_8021AD));
 }
 
+/**
+ * iavf_get_num_vlans_added - get number of VLANs added
+ * @adapter: board private structure
+ */
+static u16 iavf_get_num_vlans_added(struct iavf_adapter *adapter)
+{
+	return bitmap_weight(adapter->vsi.active_cvlans, VLAN_N_VID) +
+		bitmap_weight(adapter->vsi.active_svlans, VLAN_N_VID);
+}
+
+/**
+ * iavf_get_max_vlans_allowed - get maximum VLANs allowed for this VF
+ * @adapter: board private structure
+ *
+ * This depends on the negotiated VLAN capability. For VIRTCHNL_VF_OFFLOAD_VLAN,
+ * do not impose a limit as that maintains current behavior and for
+ * VIRTCHNL_VF_OFFLOAD_VLAN_V2, use the maximum allowed sent from the PF.
+ **/
+static u16 iavf_get_max_vlans_allowed(struct iavf_adapter *adapter)
+{
+	/* don't impose any limit for VIRTCHNL_VF_OFFLOAD_VLAN since there has
+	 * never been a limit on the VF driver side
+	 */
+	if (VLAN_ALLOWED(adapter))
+		return VLAN_N_VID;
+	else if (VLAN_V2_ALLOWED(adapter))
+		return adapter->vlan_v2_caps.filtering.max_filters;
+
+	return 0;
+}
+
+/**
+ * iavf_max_vlans_added - check if maximum VLANs allowed already exist
+ * @adapter: board private structure
+ **/
+static bool iavf_max_vlans_added(struct iavf_adapter *adapter)
+{
+	if (iavf_get_num_vlans_added(adapter) <
+	    iavf_get_max_vlans_allowed(adapter))
+		return false;
+
+	return true;
+}
+
 /**
  * iavf_vlan_rx_add_vid - Add a VLAN filter to a device
  * @netdev: network device struct
@@ -745,6 +789,12 @@ static int iavf_vlan_rx_add_vid(struct net_device *netdev,
 	if (!VLAN_FILTERING_ALLOWED(adapter))
 		return -EIO;
 
+	if (iavf_max_vlans_added(adapter)) {
+		netdev_err(netdev, "Max allowed VLAN filters %u. Remove existing VLANs or disable filtering via Ethtool if supported.\n",
+			   iavf_get_max_vlans_allowed(adapter));
+		return -EIO;
+	}
+
 	if (!iavf_add_vlan(adapter, IAVF_VLAN(vid, be16_to_cpu(proto))))
 		return -ENOMEM;
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
