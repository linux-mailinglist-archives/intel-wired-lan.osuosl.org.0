Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0E5462063
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Nov 2021 20:24:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5624E4048E;
	Mon, 29 Nov 2021 19:24:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8i5qMPHFSSfT; Mon, 29 Nov 2021 19:24:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE7A340486;
	Mon, 29 Nov 2021 19:24:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3BAF51BF3A3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 19:24:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6931C60A4F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 19:24:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3j1Wl8aoopYc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Nov 2021 19:24:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C61946071A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 19:24:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10183"; a="259993363"
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; d="scan'208";a="259993363"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2021 11:24:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; d="scan'208";a="558967541"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.133])
 by fmsmga008.fm.intel.com with ESMTP; 29 Nov 2021 11:24:15 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 29 Nov 2021 11:22:59 -0800
Message-Id: <20211129192300.14188-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211129192300.14188-1-anthony.l.nguyen@intel.com>
References: <20211129192300.14188-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 5/6] iavf: Add support for
 VIRTCHNL_VF_OFFLOAD_VLAN_V2 offload enable/disable
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

The new VIRTCHNL_VF_OFFLOAD_VLAN_V2 capability added support that allows
the VF to support 802.1Q and 802.1ad VLAN insertion and stripping if
successfully negotiated via VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS.
Multiple changes were needed to support this new functionality.

1. Added new aq_required flags to support any kind of VLAN stripping and
   insertion offload requests via virtchnl.

2. Added the new method iavf_set_vlan_offload_features() that's
   used during VF initialization, VF reset, and iavf_set_features() to
   set the aq_required bits based on the current VLAN offload
   configuration of the VF's netdev.

3. Added virtchnl handling for VIRTCHNL_OP_ENABLE_STRIPPING_V2,
   VIRTCHNL_OP_DISABLE_STRIPPING_V2, VIRTCHNL_OP_ENABLE_INSERTION_V2,
   and VIRTCHNL_OP_ENABLE_INSERTION_V2.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |  18 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 151 +++++++++++--
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 203 ++++++++++++++++++
 3 files changed, 352 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 2660d46da1b5..8188cec34937 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -287,7 +287,7 @@ struct iavf_adapter {
 /* duplicates for common code */
 #define IAVF_FLAG_DCB_ENABLED			0
 	/* flags for admin queue service task */
-	u32 aq_required;
+	u64 aq_required;
 #define IAVF_FLAG_AQ_ENABLE_QUEUES		BIT(0)
 #define IAVF_FLAG_AQ_DISABLE_QUEUES		BIT(1)
 #define IAVF_FLAG_AQ_ADD_MAC_FILTER		BIT(2)
@@ -320,6 +320,14 @@ struct iavf_adapter {
 #define IAVF_FLAG_AQ_DEL_ADV_RSS_CFG		BIT(28)
 #define IAVF_FLAG_AQ_REQUEST_STATS		BIT(29)
 #define IAVF_FLAG_AQ_GET_OFFLOAD_VLAN_V2_CAPS	BIT(30)
+#define IAVF_FLAG_AQ_ENABLE_CTAG_VLAN_STRIPPING		BIT(31)
+#define IAVF_FLAG_AQ_DISABLE_CTAG_VLAN_STRIPPING	BIT(32)
+#define IAVF_FLAG_AQ_ENABLE_STAG_VLAN_STRIPPING		BIT(33)
+#define IAVF_FLAG_AQ_DISABLE_STAG_VLAN_STRIPPING	BIT(34)
+#define IAVF_FLAG_AQ_ENABLE_CTAG_VLAN_INSERTION		BIT(35)
+#define IAVF_FLAG_AQ_DISABLE_CTAG_VLAN_INSERTION	BIT(36)
+#define IAVF_FLAG_AQ_ENABLE_STAG_VLAN_INSERTION		BIT(37)
+#define IAVF_FLAG_AQ_DISABLE_STAG_VLAN_INSERTION	BIT(38)
 
 	/* OS defined structs */
 	struct net_device *netdev;
@@ -524,6 +532,14 @@ void iavf_enable_channels(struct iavf_adapter *adapter);
 void iavf_disable_channels(struct iavf_adapter *adapter);
 void iavf_add_cloud_filter(struct iavf_adapter *adapter);
 void iavf_del_cloud_filter(struct iavf_adapter *adapter);
+void iavf_enable_vlan_stripping_v2(struct iavf_adapter *adapter, u16 tpid);
+void iavf_disable_vlan_stripping_v2(struct iavf_adapter *adapter, u16 tpid);
+void iavf_enable_vlan_insertion_v2(struct iavf_adapter *adapter, u16 tpid);
+void iavf_disable_vlan_insertion_v2(struct iavf_adapter *adapter, u16 tpid);
+void
+iavf_set_vlan_offload_features(struct iavf_adapter *adapter,
+			       netdev_features_t prev_features,
+			       netdev_features_t features);
 void iavf_add_fdir_filter(struct iavf_adapter *adapter);
 void iavf_del_fdir_filter(struct iavf_adapter *adapter);
 void iavf_add_adv_rss_cfg(struct iavf_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 49c19fd08d64..1e798b00cd82 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1815,6 +1815,39 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
 		iavf_del_adv_rss_cfg(adapter);
 		return 0;
 	}
+	if (adapter->aq_required & IAVF_FLAG_AQ_DISABLE_CTAG_VLAN_STRIPPING) {
+		iavf_disable_vlan_stripping_v2(adapter, ETH_P_8021Q);
+		return 0;
+	}
+	if (adapter->aq_required & IAVF_FLAG_AQ_DISABLE_STAG_VLAN_STRIPPING) {
+		iavf_disable_vlan_stripping_v2(adapter, ETH_P_8021AD);
+		return 0;
+	}
+	if (adapter->aq_required & IAVF_FLAG_AQ_ENABLE_CTAG_VLAN_STRIPPING) {
+		iavf_enable_vlan_stripping_v2(adapter, ETH_P_8021Q);
+		return 0;
+	}
+	if (adapter->aq_required & IAVF_FLAG_AQ_ENABLE_STAG_VLAN_STRIPPING) {
+		iavf_enable_vlan_stripping_v2(adapter, ETH_P_8021AD);
+		return 0;
+	}
+	if (adapter->aq_required & IAVF_FLAG_AQ_DISABLE_CTAG_VLAN_INSERTION) {
+		iavf_disable_vlan_insertion_v2(adapter, ETH_P_8021Q);
+		return 0;
+	}
+	if (adapter->aq_required & IAVF_FLAG_AQ_DISABLE_STAG_VLAN_INSERTION) {
+		iavf_disable_vlan_insertion_v2(adapter, ETH_P_8021AD);
+		return 0;
+	}
+	if (adapter->aq_required & IAVF_FLAG_AQ_ENABLE_CTAG_VLAN_INSERTION) {
+		iavf_enable_vlan_insertion_v2(adapter, ETH_P_8021Q);
+		return 0;
+	}
+	if (adapter->aq_required & IAVF_FLAG_AQ_ENABLE_STAG_VLAN_INSERTION) {
+		iavf_enable_vlan_insertion_v2(adapter, ETH_P_8021AD);
+		return 0;
+	}
+
 	if (adapter->aq_required & IAVF_FLAG_AQ_REQUEST_STATS) {
 		iavf_request_stats(adapter);
 		return 0;
@@ -1823,6 +1856,91 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
 	return -EAGAIN;
 }
 
+/**
+ * iavf_set_vlan_offload_features - set VLAN offload configuration
+ * @adapter: board private structure
+ * @prev_features: previous features used for comparison
+ * @features: updated features used for configuration
+ *
+ * Set the aq_required bit(s) based on the requested features passed in to
+ * configure VLAN stripping and/or VLAN insertion if supported. Also, schedule
+ * the watchdog if any changes are requested to expedite the request via
+ * virtchnl.
+ **/
+void
+iavf_set_vlan_offload_features(struct iavf_adapter *adapter,
+			       netdev_features_t prev_features,
+			       netdev_features_t features)
+{
+	bool enable_stripping = true, enable_insertion = true;
+	u16 vlan_ethertype = 0;
+	u64 aq_required = 0;
+
+	/* keep cases separate because one ethertype for offloads can be
+	 * disabled at the same time as another is disabled, so check for an
+	 * enabled ethertype first, then check for disabled. Default to
+	 * ETH_P_8021Q so an ethertype is specified if disabling insertion and
+	 * stripping.
+	 */
+	if (features & (NETIF_F_HW_VLAN_STAG_RX | NETIF_F_HW_VLAN_STAG_TX))
+		vlan_ethertype = ETH_P_8021AD;
+	else if (features & (NETIF_F_HW_VLAN_CTAG_RX | NETIF_F_HW_VLAN_CTAG_TX))
+		vlan_ethertype = ETH_P_8021Q;
+	else if (prev_features & (NETIF_F_HW_VLAN_STAG_RX | NETIF_F_HW_VLAN_STAG_TX))
+		vlan_ethertype = ETH_P_8021AD;
+	else if (prev_features & (NETIF_F_HW_VLAN_CTAG_RX | NETIF_F_HW_VLAN_CTAG_TX))
+		vlan_ethertype = ETH_P_8021Q;
+	else
+		vlan_ethertype = ETH_P_8021Q;
+
+	if (!(features & (NETIF_F_HW_VLAN_STAG_RX | NETIF_F_HW_VLAN_CTAG_RX)))
+		enable_stripping = false;
+	if (!(features & (NETIF_F_HW_VLAN_STAG_TX | NETIF_F_HW_VLAN_CTAG_TX)))
+		enable_insertion = false;
+
+	if (VLAN_ALLOWED(adapter)) {
+		/* VIRTCHNL_VF_OFFLOAD_VLAN only has support for toggling VLAN
+		 * stripping via virtchnl. VLAN insertion can be toggled on the
+		 * netdev, but it doesn't require a virtchnl message
+		 */
+		if (enable_stripping)
+			aq_required |= IAVF_FLAG_AQ_ENABLE_VLAN_STRIPPING;
+		else
+			aq_required |= IAVF_FLAG_AQ_DISABLE_VLAN_STRIPPING;
+
+	} else if (VLAN_V2_ALLOWED(adapter)) {
+		switch (vlan_ethertype) {
+		case ETH_P_8021Q:
+			if (enable_stripping)
+				aq_required |= IAVF_FLAG_AQ_ENABLE_CTAG_VLAN_STRIPPING;
+			else
+				aq_required |= IAVF_FLAG_AQ_DISABLE_CTAG_VLAN_STRIPPING;
+
+			if (enable_insertion)
+				aq_required |= IAVF_FLAG_AQ_ENABLE_CTAG_VLAN_INSERTION;
+			else
+				aq_required |= IAVF_FLAG_AQ_DISABLE_CTAG_VLAN_INSERTION;
+			break;
+		case ETH_P_8021AD:
+			if (enable_stripping)
+				aq_required |= IAVF_FLAG_AQ_ENABLE_STAG_VLAN_STRIPPING;
+			else
+				aq_required |= IAVF_FLAG_AQ_DISABLE_STAG_VLAN_STRIPPING;
+
+			if (enable_insertion)
+				aq_required |= IAVF_FLAG_AQ_ENABLE_STAG_VLAN_INSERTION;
+			else
+				aq_required |= IAVF_FLAG_AQ_DISABLE_STAG_VLAN_INSERTION;
+			break;
+		}
+	}
+
+	if (aq_required) {
+		adapter->aq_required |= aq_required;
+		mod_delayed_work(iavf_wq, &adapter->watchdog_task, 0);
+	}
+}
+
 /**
  * iavf_startup - first step of driver startup
  * @adapter: board private structure
@@ -2179,6 +2297,10 @@ static void iavf_init_config_adapter(struct iavf_adapter *adapter)
 	else
 		iavf_init_rss(adapter);
 
+	if (VLAN_V2_ALLOWED(adapter))
+		/* request initial VLAN offload settings */
+		iavf_set_vlan_offload_features(adapter, 0, netdev->features);
+
 	return;
 err_mem:
 	iavf_free_rss(adapter);
@@ -3689,6 +3811,11 @@ static int iavf_change_mtu(struct net_device *netdev, int new_mtu)
 	return 0;
 }
 
+#define NETIF_VLAN_OFFLOAD_FEATURES	(NETIF_F_HW_VLAN_CTAG_RX | \
+					 NETIF_F_HW_VLAN_CTAG_TX | \
+					 NETIF_F_HW_VLAN_STAG_RX | \
+					 NETIF_F_HW_VLAN_STAG_TX)
+
 /**
  * iavf_set_features - set the netdev feature flags
  * @netdev: ptr to the netdev being adjusted
@@ -3700,25 +3827,11 @@ static int iavf_set_features(struct net_device *netdev,
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 
-	/* Don't allow enabling VLAN features when adapter is not capable
-	 * of VLAN offload/filtering
-	 */
-	if (!VLAN_ALLOWED(adapter)) {
-		netdev->hw_features &= ~(NETIF_F_HW_VLAN_CTAG_RX |
-					 NETIF_F_HW_VLAN_CTAG_TX |
-					 NETIF_F_HW_VLAN_CTAG_FILTER);
-		if (features & (NETIF_F_HW_VLAN_CTAG_RX |
-				NETIF_F_HW_VLAN_CTAG_TX |
-				NETIF_F_HW_VLAN_CTAG_FILTER))
-			return -EINVAL;
-	} else if ((netdev->features ^ features) & NETIF_F_HW_VLAN_CTAG_RX) {
-		if (features & NETIF_F_HW_VLAN_CTAG_RX)
-			adapter->aq_required |=
-				IAVF_FLAG_AQ_ENABLE_VLAN_STRIPPING;
-		else
-			adapter->aq_required |=
-				IAVF_FLAG_AQ_DISABLE_VLAN_STRIPPING;
-	}
+	/* trigger update on any VLAN feature change */
+	if ((netdev->features & NETIF_VLAN_OFFLOAD_FEATURES) ^
+	    (features & NETIF_VLAN_OFFLOAD_FEATURES))
+		iavf_set_vlan_offload_features(adapter, netdev->features,
+					       features);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 613fcc491fd7..1fe6ab40409a 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -1122,6 +1122,204 @@ void iavf_disable_vlan_stripping(struct iavf_adapter *adapter)
 	iavf_send_pf_msg(adapter, VIRTCHNL_OP_DISABLE_VLAN_STRIPPING, NULL, 0);
 }
 
+/**
+ * iavf_tpid_to_vc_ethertype - transform from VLAN TPID to virtchnl ethertype
+ * @tpid: VLAN TPID (i.e. 0x8100, 0x88a8, etc.)
+ */
+static u32 iavf_tpid_to_vc_ethertype(u16 tpid)
+{
+	switch (tpid) {
+	case ETH_P_8021Q:
+		return VIRTCHNL_VLAN_ETHERTYPE_8100;
+	case ETH_P_8021AD:
+		return VIRTCHNL_VLAN_ETHERTYPE_88A8;
+	}
+
+	return 0;
+}
+
+/**
+ * iavf_set_vc_offload_ethertype - set virtchnl ethertype for offload message
+ * @adapter: adapter structure
+ * @msg: message structure used for updating offloads over virtchnl to update
+ * @tpid: VLAN TPID (i.e. 0x8100, 0x88a8, etc.)
+ * @offload_op: opcode used to determine which support structure to check
+ */
+static int
+iavf_set_vc_offload_ethertype(struct iavf_adapter *adapter,
+			      struct virtchnl_vlan_setting *msg, u16 tpid,
+			      enum virtchnl_ops offload_op)
+{
+	struct virtchnl_vlan_supported_caps *offload_support;
+	u16 vc_ethertype = iavf_tpid_to_vc_ethertype(tpid);
+
+	/* reference the correct offload support structure */
+	switch (offload_op) {
+	case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2:
+	case VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2:
+		offload_support =
+			&adapter->vlan_v2_caps.offloads.stripping_support;
+		break;
+	case VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2:
+	case VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2:
+		offload_support =
+			&adapter->vlan_v2_caps.offloads.insertion_support;
+		break;
+	default:
+		dev_err(&adapter->pdev->dev, "Invalid opcode %d for setting virtchnl ethertype to enable/disable VLAN offloads\n",
+			offload_op);
+		return -EINVAL;
+	}
+
+	/* make sure ethertype is supported */
+	if (offload_support->outer & vc_ethertype &&
+	    offload_support->outer & VIRTCHNL_VLAN_TOGGLE) {
+		msg->outer_ethertype_setting = vc_ethertype;
+	} else if (offload_support->inner & vc_ethertype &&
+		   offload_support->inner & VIRTCHNL_VLAN_TOGGLE) {
+		msg->inner_ethertype_setting = vc_ethertype;
+	} else {
+		dev_dbg(&adapter->pdev->dev, "opcode %d unsupported for VLAN TPID 0x%04x\n",
+			offload_op, tpid);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+/**
+ * iavf_clear_offload_v2_aq_required - clear AQ required bit for offload request
+ * @adapter: adapter structure
+ * @tpid: VLAN TPID
+ * @offload_op: opcode used to determine which AQ required bit to clear
+ */
+static void
+iavf_clear_offload_v2_aq_required(struct iavf_adapter *adapter, u16 tpid,
+				  enum virtchnl_ops offload_op)
+{
+	switch (offload_op) {
+	case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2:
+		if (tpid == ETH_P_8021Q)
+			adapter->aq_required &=
+				~IAVF_FLAG_AQ_ENABLE_CTAG_VLAN_STRIPPING;
+		else if (tpid == ETH_P_8021AD)
+			adapter->aq_required &=
+				~IAVF_FLAG_AQ_ENABLE_STAG_VLAN_STRIPPING;
+		break;
+	case VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2:
+		if (tpid == ETH_P_8021Q)
+			adapter->aq_required &=
+				~IAVF_FLAG_AQ_DISABLE_CTAG_VLAN_STRIPPING;
+		else if (tpid == ETH_P_8021AD)
+			adapter->aq_required &=
+				~IAVF_FLAG_AQ_DISABLE_STAG_VLAN_STRIPPING;
+		break;
+	case VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2:
+		if (tpid == ETH_P_8021Q)
+			adapter->aq_required &=
+				~IAVF_FLAG_AQ_ENABLE_CTAG_VLAN_INSERTION;
+		else if (tpid == ETH_P_8021AD)
+			adapter->aq_required &=
+				~IAVF_FLAG_AQ_ENABLE_STAG_VLAN_INSERTION;
+		break;
+	case VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2:
+		if (tpid == ETH_P_8021Q)
+			adapter->aq_required &=
+				~IAVF_FLAG_AQ_DISABLE_CTAG_VLAN_INSERTION;
+		else if (tpid == ETH_P_8021AD)
+			adapter->aq_required &=
+				~IAVF_FLAG_AQ_DISABLE_STAG_VLAN_INSERTION;
+		break;
+	default:
+		dev_err(&adapter->pdev->dev, "Unsupported opcode %d specified for clearing aq_required bits for VIRTCHNL_VF_OFFLOAD_VLAN_V2 offload request\n",
+			offload_op);
+	}
+}
+
+/**
+ * iavf_send_vlan_offload_v2 - send offload enable/disable over virtchnl
+ * @adapter: adapter structure
+ * @tpid: VLAN TPID used for the command (i.e. 0x8100 or 0x88a8)
+ * @offload_op: offload_op used to make the request over virtchnl
+ */
+static void
+iavf_send_vlan_offload_v2(struct iavf_adapter *adapter, u16 tpid,
+			  enum virtchnl_ops offload_op)
+{
+	struct virtchnl_vlan_setting *msg;
+	int len = sizeof(*msg);
+
+	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
+		/* bail because we already have a command pending */
+		dev_err(&adapter->pdev->dev, "Cannot send %d, command %d pending\n",
+			offload_op, adapter->current_op);
+		return;
+	}
+
+	adapter->current_op = offload_op;
+
+	msg = kzalloc(len, GFP_KERNEL);
+	if (!msg)
+		return;
+
+	msg->vport_id = adapter->vsi_res->vsi_id;
+
+	/* always clear to prevent unsupported and endless requests */
+	iavf_clear_offload_v2_aq_required(adapter, tpid, offload_op);
+
+	/* only send valid offload requests */
+	if (!iavf_set_vc_offload_ethertype(adapter, msg, tpid, offload_op))
+		iavf_send_pf_msg(adapter, offload_op, (u8 *)msg, len);
+	else
+		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
+
+	kfree(msg);
+}
+
+/**
+ * iavf_enable_vlan_stripping_v2 - enable VLAN stripping
+ * @adapter: adapter structure
+ * @tpid: VLAN TPID used to enable VLAN stripping
+ */
+void iavf_enable_vlan_stripping_v2(struct iavf_adapter *adapter, u16 tpid)
+{
+	iavf_send_vlan_offload_v2(adapter, tpid,
+				  VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2);
+}
+
+/**
+ * iavf_disable_vlan_stripping_v2 - disable VLAN stripping
+ * @adapter: adapter structure
+ * @tpid: VLAN TPID used to disable VLAN stripping
+ */
+void iavf_disable_vlan_stripping_v2(struct iavf_adapter *adapter, u16 tpid)
+{
+	iavf_send_vlan_offload_v2(adapter, tpid,
+				  VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2);
+}
+
+/**
+ * iavf_enable_vlan_insertion_v2 - enable VLAN insertion
+ * @adapter: adapter structure
+ * @tpid: VLAN TPID used to enable VLAN insertion
+ */
+void iavf_enable_vlan_insertion_v2(struct iavf_adapter *adapter, u16 tpid)
+{
+	iavf_send_vlan_offload_v2(adapter, tpid,
+				  VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2);
+}
+
+/**
+ * iavf_disable_vlan_insertion_v2 - disable VLAN insertion
+ * @adapter: adapter structure
+ * @tpid: VLAN TPID used to disable VLAN insertion
+ */
+void iavf_disable_vlan_insertion_v2(struct iavf_adapter *adapter, u16 tpid)
+{
+	iavf_send_vlan_offload_v2(adapter, tpid,
+				  VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2);
+}
+
 #define IAVF_MAX_SPEED_STRLEN	13
 
 /**
@@ -1962,6 +2160,11 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 			dev_warn(&adapter->pdev->dev, "failed to acquire crit_lock in %s\n",
 				 __FUNCTION__);
 
+		/* Request VLAN offload settings */
+		if (VLAN_V2_ALLOWED(adapter))
+			iavf_set_vlan_offload_features(adapter, 0,
+						       netdev->features);
+
 		iavf_set_queue_vlan_tag_loc(adapter);
 
 		}
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
