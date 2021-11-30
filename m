Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2BE4628FE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Nov 2021 01:17:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F1DAC60DED;
	Tue, 30 Nov 2021 00:17:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4dV2GJkmH-KI; Tue, 30 Nov 2021 00:17:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A1F36069A;
	Tue, 30 Nov 2021 00:17:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B7D381BF982
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 00:17:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A6B6F400D4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 00:17:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id huGzv03zNW7M for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Nov 2021 00:17:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E94C940003
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 00:17:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10183"; a="322343845"
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; d="scan'208";a="322343845"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2021 16:17:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; d="scan'208";a="511927988"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.133])
 by orsmga008.jf.intel.com with ESMTP; 29 Nov 2021 16:17:19 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 29 Nov 2021 16:16:01 -0800
Message-Id: <20211130001604.22112-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211130001604.22112-1-anthony.l.nguyen@intel.com>
References: <20211130001604.22112-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 3/6] iavf: Add support
 VIRTCHNL_VF_OFFLOAD_VLAN_V2 during netdev config
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

Based on VIRTCHNL_VF_OFFLOAD_VLAN_V2, the VF can now support more VLAN
capabilities (i.e. 802.1AD offloads and filtering). In order to
communicate these capabilities to the netdev layer, the VF needs to
parse its VLAN capabilities based on whether it was able to negotiation
VIRTCHNL_VF_OFFLOAD_VLAN or VIRTCHNL_VF_OFFLOAD_VLAN_V2 or neither of
these.

In order to support this, add the following functionality:

iavf_get_netdev_vlan_hw_features() - This is used to determine the VLAN
features that the underlying hardware supports and that can be toggled
off/on based on the negotiated capabiltiies. For example, if
VIRTCHNL_VF_OFFLOAD_VLAN_V2 was negotiated, then any capability marked
with VIRTCHNL_VLAN_TOGGLE can be toggled on/off by the VF. If
VIRTCHNL_VF_OFFLOAD_VLAN was negotiated, then only VLAN insertion and/or
stripping can be toggled on/off.

iavf_get_netdev_vlan_features() - This is used to determine the VLAN
features that the underlying hardware supports and that should be
enabled by default. For example, if VIRTHCNL_VF_OFFLOAD_VLAN_V2 was
negotiated, then any supported capability that has its ethertype_init
filed set should be enabled by default. If VIRTCHNL_VF_OFFLOAD_VLAN was
negotiated, then filtering, stripping, and insertion should be enabled
by default.

Also, refactor iavf_fix_features() to take into account the new
capabilities. To do this, query all the supported features (enabled by
default and toggleable) and make sure the requested change is supported.
If VIRTCHNL_VF_OFFLOAD_VLAN_V2 is successfully negotiated, there is no
need to check VIRTCHNL_VLAN_TOGGLE here because the driver already told
the netdev layer which features can be toggled via netdev->hw_features
during iavf_process_config(), so only those features will be requested
to change.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |  17 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 279 ++++++++++++++++--
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 251 +++++++++++-----
 3 files changed, 453 insertions(+), 94 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index edb139834437..5fb6ebf9a760 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -55,7 +55,8 @@ enum iavf_vsi_state_t {
 struct iavf_vsi {
 	struct iavf_adapter *back;
 	struct net_device *netdev;
-	unsigned long active_vlans[BITS_TO_LONGS(VLAN_N_VID)];
+	unsigned long active_cvlans[BITS_TO_LONGS(VLAN_N_VID)];
+	unsigned long active_svlans[BITS_TO_LONGS(VLAN_N_VID)];
 	u16 seid;
 	u16 id;
 	DECLARE_BITMAP(state, __IAVF_VSI_STATE_SIZE__);
@@ -146,9 +147,15 @@ struct iavf_mac_filter {
 	};
 };
 
+#define IAVF_VLAN(vid, tpid) ((struct iavf_vlan){ vid, tpid })
+struct iavf_vlan {
+	u16 vid;
+	u16 tpid;
+};
+
 struct iavf_vlan_filter {
 	struct list_head list;
-	u16 vlan;
+	struct iavf_vlan vlan;
 	bool remove;		/* filter needs to be removed */
 	bool add;		/* filter needs to be added */
 };
@@ -354,6 +361,12 @@ struct iavf_adapter {
 			  VIRTCHNL_VF_OFFLOAD_VLAN)
 #define VLAN_V2_ALLOWED(_a) ((_a)->vf_res->vf_cap_flags & \
 			     VIRTCHNL_VF_OFFLOAD_VLAN_V2)
+#define VLAN_V2_FILTERING_ALLOWED(_a) \
+	(VLAN_V2_ALLOWED((_a)) && \
+	 ((_a)->vlan_v2_caps.filtering.filtering_support.outer || \
+	  (_a)->vlan_v2_caps.filtering.filtering_support.inner))
+#define VLAN_FILTERING_ALLOWED(_a) \
+	(VLAN_ALLOWED((_a)) || VLAN_V2_FILTERING_ALLOWED((_a)))
 #define ADV_LINK_SUPPORT(_a) ((_a)->vf_res->vf_cap_flags & \
 			      VIRTCHNL_VF_CAP_ADV_LINK_SPEED)
 #define FDIR_FLTR_SUPPORT(_a) ((_a)->vf_res->vf_cap_flags & \
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 714709a28ad8..89d08b2f8a13 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -646,14 +646,17 @@ static void iavf_configure_rx(struct iavf_adapter *adapter)
  * mac_vlan_list_lock.
  **/
 static struct
-iavf_vlan_filter *iavf_find_vlan(struct iavf_adapter *adapter, u16 vlan)
+iavf_vlan_filter *iavf_find_vlan(struct iavf_adapter *adapter,
+				 struct iavf_vlan vlan)
 {
 	struct iavf_vlan_filter *f;
 
 	list_for_each_entry(f, &adapter->vlan_filter_list, list) {
-		if (vlan == f->vlan)
+		if (f->vlan.vid == vlan.vid &&
+		    f->vlan.tpid == vlan.tpid)
 			return f;
 	}
+
 	return NULL;
 }
 
@@ -665,7 +668,8 @@ iavf_vlan_filter *iavf_find_vlan(struct iavf_adapter *adapter, u16 vlan)
  * Returns ptr to the filter object or NULL when no memory available.
  **/
 static struct
-iavf_vlan_filter *iavf_add_vlan(struct iavf_adapter *adapter, u16 vlan)
+iavf_vlan_filter *iavf_add_vlan(struct iavf_adapter *adapter,
+				struct iavf_vlan vlan)
 {
 	struct iavf_vlan_filter *f = NULL;
 
@@ -694,7 +698,7 @@ iavf_vlan_filter *iavf_add_vlan(struct iavf_adapter *adapter, u16 vlan)
  * @adapter: board private structure
  * @vlan: VLAN tag
  **/
-static void iavf_del_vlan(struct iavf_adapter *adapter, u16 vlan)
+static void iavf_del_vlan(struct iavf_adapter *adapter, struct iavf_vlan vlan)
 {
 	struct iavf_vlan_filter *f;
 
@@ -720,8 +724,11 @@ static void iavf_restore_filters(struct iavf_adapter *adapter)
 	u16 vid;
 
 	/* re-add all VLAN filters */
-	for_each_set_bit(vid, adapter->vsi.active_vlans, VLAN_N_VID)
-		iavf_add_vlan(adapter, vid);
+	for_each_set_bit(vid, adapter->vsi.active_cvlans, VLAN_N_VID)
+		iavf_add_vlan(adapter, IAVF_VLAN(vid, ETH_P_8021Q));
+
+	for_each_set_bit(vid, adapter->vsi.active_svlans, VLAN_N_VID)
+		iavf_add_vlan(adapter, IAVF_VLAN(vid, ETH_P_8021AD));
 }
 
 /**
@@ -735,13 +742,17 @@ static int iavf_vlan_rx_add_vid(struct net_device *netdev,
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 
-	if (!VLAN_ALLOWED(adapter))
+	if (!VLAN_FILTERING_ALLOWED(adapter))
 		return -EIO;
 
-	if (iavf_add_vlan(adapter, vid) == NULL)
+	if (!iavf_add_vlan(adapter, IAVF_VLAN(vid, be16_to_cpu(proto))))
 		return -ENOMEM;
 
-	set_bit(vid, adapter->vsi.active_vlans);
+	if (proto == cpu_to_be16(ETH_P_8021Q))
+		set_bit(vid, adapter->vsi.active_cvlans);
+	else
+		set_bit(vid, adapter->vsi.active_svlans);
+
 	return 0;
 }
 
@@ -756,8 +767,11 @@ static int iavf_vlan_rx_kill_vid(struct net_device *netdev,
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 
-	iavf_del_vlan(adapter, vid);
-	clear_bit(vid, adapter->vsi.active_vlans);
+	iavf_del_vlan(adapter, IAVF_VLAN(vid, be16_to_cpu(proto)));
+	if (proto == cpu_to_be16(ETH_P_8021Q))
+		clear_bit(vid, adapter->vsi.active_cvlans);
+	else
+		clear_bit(vid, adapter->vsi.active_svlans);
 
 	return 0;
 }
@@ -3685,6 +3699,228 @@ static netdev_features_t iavf_features_check(struct sk_buff *skb,
 	return features & ~(NETIF_F_CSUM_MASK | NETIF_F_GSO_MASK);
 }
 
+/**
+ * iavf_get_netdev_vlan_hw_features - get NETDEV VLAN features that can toggle on/off
+ * @adapter: board private structure
+ *
+ * Depending on whether VIRTHCNL_VF_OFFLOAD_VLAN or VIRTCHNL_VF_OFFLOAD_VLAN_V2
+ * were negotiated determine the VLAN features that can be toggled on and off.
+ **/
+static netdev_features_t
+iavf_get_netdev_vlan_hw_features(struct iavf_adapter *adapter)
+{
+	netdev_features_t hw_features = 0;
+
+	if (!adapter->vf_res || !adapter->vf_res->vf_cap_flags)
+		return hw_features;
+
+	/* Enable VLAN features if supported */
+	if (VLAN_ALLOWED(adapter)) {
+		hw_features |= (NETIF_F_HW_VLAN_CTAG_TX |
+				NETIF_F_HW_VLAN_CTAG_RX);
+	} else if (VLAN_V2_ALLOWED(adapter)) {
+		struct virtchnl_vlan_caps *vlan_v2_caps =
+			&adapter->vlan_v2_caps;
+		struct virtchnl_vlan_supported_caps *stripping_support =
+			&vlan_v2_caps->offloads.stripping_support;
+		struct virtchnl_vlan_supported_caps *insertion_support =
+			&vlan_v2_caps->offloads.insertion_support;
+
+		if (stripping_support->outer != VIRTCHNL_VLAN_UNSUPPORTED &&
+		    stripping_support->outer & VIRTCHNL_VLAN_TOGGLE) {
+			if (stripping_support->outer &
+			    VIRTCHNL_VLAN_ETHERTYPE_8100)
+				hw_features |= NETIF_F_HW_VLAN_CTAG_RX;
+			if (stripping_support->outer &
+			    VIRTCHNL_VLAN_ETHERTYPE_88A8)
+				hw_features |= NETIF_F_HW_VLAN_STAG_RX;
+		} else if (stripping_support->inner !=
+			   VIRTCHNL_VLAN_UNSUPPORTED &&
+			   stripping_support->inner & VIRTCHNL_VLAN_TOGGLE) {
+			if (stripping_support->inner &
+			    VIRTCHNL_VLAN_ETHERTYPE_8100)
+				hw_features |= NETIF_F_HW_VLAN_CTAG_RX;
+		}
+
+		if (insertion_support->outer != VIRTCHNL_VLAN_UNSUPPORTED &&
+		    insertion_support->outer & VIRTCHNL_VLAN_TOGGLE) {
+			if (insertion_support->outer &
+			    VIRTCHNL_VLAN_ETHERTYPE_8100)
+				hw_features |= NETIF_F_HW_VLAN_CTAG_TX;
+			if (insertion_support->outer &
+			    VIRTCHNL_VLAN_ETHERTYPE_88A8)
+				hw_features |= NETIF_F_HW_VLAN_STAG_TX;
+		} else if (insertion_support->inner &&
+			   insertion_support->inner & VIRTCHNL_VLAN_TOGGLE) {
+			if (insertion_support->inner &
+			    VIRTCHNL_VLAN_ETHERTYPE_8100)
+				hw_features |= NETIF_F_HW_VLAN_CTAG_TX;
+		}
+	}
+
+	return hw_features;
+}
+
+/**
+ * iavf_get_netdev_vlan_features - get the enabled NETDEV VLAN fetures
+ * @adapter: board private structure
+ *
+ * Depending on whether VIRTHCNL_VF_OFFLOAD_VLAN or VIRTCHNL_VF_OFFLOAD_VLAN_V2
+ * were negotiated determine the VLAN features that are enabled by default.
+ **/
+static netdev_features_t
+iavf_get_netdev_vlan_features(struct iavf_adapter *adapter)
+{
+	netdev_features_t features = 0;
+
+	if (!adapter->vf_res || !adapter->vf_res->vf_cap_flags)
+		return features;
+
+	if (VLAN_ALLOWED(adapter)) {
+		features |= NETIF_F_HW_VLAN_CTAG_FILTER |
+			NETIF_F_HW_VLAN_CTAG_RX | NETIF_F_HW_VLAN_CTAG_TX;
+	} else if (VLAN_V2_ALLOWED(adapter)) {
+		struct virtchnl_vlan_caps *vlan_v2_caps =
+			&adapter->vlan_v2_caps;
+		struct virtchnl_vlan_supported_caps *filtering_support =
+			&vlan_v2_caps->filtering.filtering_support;
+		struct virtchnl_vlan_supported_caps *stripping_support =
+			&vlan_v2_caps->offloads.stripping_support;
+		struct virtchnl_vlan_supported_caps *insertion_support =
+			&vlan_v2_caps->offloads.insertion_support;
+		u32 ethertype_init;
+
+		/* give priority to outer stripping and don't support both outer
+		 * and inner stripping
+		 */
+		ethertype_init = vlan_v2_caps->offloads.ethertype_init;
+		if (stripping_support->outer != VIRTCHNL_VLAN_UNSUPPORTED) {
+			if (stripping_support->outer &
+			    VIRTCHNL_VLAN_ETHERTYPE_8100 &&
+			    ethertype_init & VIRTCHNL_VLAN_ETHERTYPE_8100)
+				features |= NETIF_F_HW_VLAN_CTAG_RX;
+			else if (stripping_support->outer &
+				 VIRTCHNL_VLAN_ETHERTYPE_88A8 &&
+				 ethertype_init & VIRTCHNL_VLAN_ETHERTYPE_88A8)
+				features |= NETIF_F_HW_VLAN_STAG_RX;
+		} else if (stripping_support->inner !=
+			   VIRTCHNL_VLAN_UNSUPPORTED) {
+			if (stripping_support->inner &
+			    VIRTCHNL_VLAN_ETHERTYPE_8100 &&
+			    ethertype_init & VIRTCHNL_VLAN_ETHERTYPE_8100)
+				features |= NETIF_F_HW_VLAN_CTAG_RX;
+		}
+
+		/* give priority to outer insertion and don't support both outer
+		 * and inner insertion
+		 */
+		if (insertion_support->outer != VIRTCHNL_VLAN_UNSUPPORTED) {
+			if (insertion_support->outer &
+			    VIRTCHNL_VLAN_ETHERTYPE_8100 &&
+			    ethertype_init & VIRTCHNL_VLAN_ETHERTYPE_8100)
+				features |= NETIF_F_HW_VLAN_CTAG_TX;
+			else if (insertion_support->outer &
+				 VIRTCHNL_VLAN_ETHERTYPE_88A8 &&
+				 ethertype_init & VIRTCHNL_VLAN_ETHERTYPE_88A8)
+				features |= NETIF_F_HW_VLAN_STAG_TX;
+		} else if (insertion_support->inner !=
+			   VIRTCHNL_VLAN_UNSUPPORTED) {
+			if (insertion_support->inner &
+			    VIRTCHNL_VLAN_ETHERTYPE_8100 &&
+			    ethertype_init & VIRTCHNL_VLAN_ETHERTYPE_8100)
+				features |= NETIF_F_HW_VLAN_CTAG_TX;
+		}
+
+		/* give priority to outer filtering and don't bother if both
+		 * outer and inner filtering are enabled
+		 */
+		ethertype_init = vlan_v2_caps->filtering.ethertype_init;
+		if (filtering_support->outer != VIRTCHNL_VLAN_UNSUPPORTED) {
+			if (filtering_support->outer &
+			    VIRTCHNL_VLAN_ETHERTYPE_8100 &&
+			    ethertype_init & VIRTCHNL_VLAN_ETHERTYPE_8100)
+				features |= NETIF_F_HW_VLAN_CTAG_FILTER;
+			if (filtering_support->outer &
+			    VIRTCHNL_VLAN_ETHERTYPE_88A8 &&
+			    ethertype_init & VIRTCHNL_VLAN_ETHERTYPE_88A8)
+				features |= NETIF_F_HW_VLAN_STAG_FILTER;
+		} else if (filtering_support->inner !=
+			   VIRTCHNL_VLAN_UNSUPPORTED) {
+			if (filtering_support->inner &
+			    VIRTCHNL_VLAN_ETHERTYPE_8100 &&
+			    ethertype_init & VIRTCHNL_VLAN_ETHERTYPE_8100)
+				features |= NETIF_F_HW_VLAN_CTAG_FILTER;
+			if (filtering_support->inner &
+			    VIRTCHNL_VLAN_ETHERTYPE_88A8 &&
+			    ethertype_init & VIRTCHNL_VLAN_ETHERTYPE_88A8)
+				features |= NETIF_F_HW_VLAN_STAG_FILTER;
+		}
+	}
+
+	return features;
+}
+
+#define IAVF_NETDEV_VLAN_FEATURE_ALLOWED(requested, allowed, feature_bit) \
+	(!(((requested) & (feature_bit)) && \
+	   !((allowed) & (feature_bit))))
+
+/**
+ * iavf_fix_netdev_vlan_features - fix NETDEV VLAN features based on support
+ * @adapter: board private structure
+ * @requested_features: stack requested NETDEV features
+ **/
+static netdev_features_t
+iavf_fix_netdev_vlan_features(struct iavf_adapter *adapter,
+			      netdev_features_t requested_features)
+{
+	netdev_features_t allowed_features;
+
+	allowed_features = iavf_get_netdev_vlan_hw_features(adapter) |
+		iavf_get_netdev_vlan_features(adapter);
+
+	if (!IAVF_NETDEV_VLAN_FEATURE_ALLOWED(requested_features,
+					      allowed_features,
+					      NETIF_F_HW_VLAN_CTAG_TX))
+		requested_features &= ~NETIF_F_HW_VLAN_CTAG_TX;
+
+	if (!IAVF_NETDEV_VLAN_FEATURE_ALLOWED(requested_features,
+					      allowed_features,
+					      NETIF_F_HW_VLAN_CTAG_RX))
+		requested_features &= ~NETIF_F_HW_VLAN_CTAG_RX;
+
+	if (!IAVF_NETDEV_VLAN_FEATURE_ALLOWED(requested_features,
+					      allowed_features,
+					      NETIF_F_HW_VLAN_STAG_TX))
+		requested_features &= ~NETIF_F_HW_VLAN_STAG_TX;
+	if (!IAVF_NETDEV_VLAN_FEATURE_ALLOWED(requested_features,
+					      allowed_features,
+					      NETIF_F_HW_VLAN_STAG_RX))
+		requested_features &= ~NETIF_F_HW_VLAN_STAG_RX;
+
+	if (!IAVF_NETDEV_VLAN_FEATURE_ALLOWED(requested_features,
+					      allowed_features,
+					      NETIF_F_HW_VLAN_CTAG_FILTER))
+		requested_features &= ~NETIF_F_HW_VLAN_CTAG_FILTER;
+
+	if (!IAVF_NETDEV_VLAN_FEATURE_ALLOWED(requested_features,
+					      allowed_features,
+					      NETIF_F_HW_VLAN_STAG_FILTER))
+		requested_features &= ~NETIF_F_HW_VLAN_STAG_FILTER;
+
+	if ((requested_features &
+	     (NETIF_F_HW_VLAN_CTAG_RX | NETIF_F_HW_VLAN_CTAG_TX)) &&
+	    (requested_features &
+	     (NETIF_F_HW_VLAN_STAG_RX | NETIF_F_HW_VLAN_STAG_TX)) &&
+	    adapter->vlan_v2_caps.offloads.ethertype_match ==
+	    VIRTCHNL_ETHERTYPE_STRIPPING_MATCHES_INSERTION) {
+		netdev_warn(adapter->netdev, "cannot support CTAG and STAG VLAN stripping and/or insertion simultaneously since CTAG and STAG offloads are mutually exclusive, clearing STAG offload settings\n");
+		requested_features &= ~(NETIF_F_HW_VLAN_STAG_RX |
+					NETIF_F_HW_VLAN_STAG_TX);
+	}
+
+	return requested_features;
+}
+
 /**
  * iavf_fix_features - fix up the netdev feature bits
  * @netdev: our net device
@@ -3697,13 +3933,7 @@ static netdev_features_t iavf_fix_features(struct net_device *netdev,
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 
-	if (adapter->vf_res &&
-	    !(adapter->vf_res->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_VLAN))
-		features &= ~(NETIF_F_HW_VLAN_CTAG_TX |
-			      NETIF_F_HW_VLAN_CTAG_RX |
-			      NETIF_F_HW_VLAN_CTAG_FILTER);
-
-	return features;
+	return iavf_fix_netdev_vlan_features(adapter, features);
 }
 
 static const struct net_device_ops iavf_netdev_ops = {
@@ -3755,6 +3985,7 @@ static int iavf_check_reset_complete(struct iavf_hw *hw)
 int iavf_process_config(struct iavf_adapter *adapter)
 {
 	struct virtchnl_vf_resource *vfres = adapter->vf_res;
+	netdev_features_t hw_vlan_features, vlan_features;
 	struct net_device *netdev = adapter->netdev;
 	netdev_features_t hw_enc_features;
 	netdev_features_t hw_features;
@@ -3802,19 +4033,19 @@ int iavf_process_config(struct iavf_adapter *adapter)
 	 */
 	hw_features = hw_enc_features;
 
-	/* Enable VLAN features if supported */
-	if (vfres->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_VLAN)
-		hw_features |= (NETIF_F_HW_VLAN_CTAG_TX |
-				NETIF_F_HW_VLAN_CTAG_RX);
+	/* get HW VLAN features that can be toggled */
+	hw_vlan_features = iavf_get_netdev_vlan_hw_features(adapter);
+
 	/* Enable cloud filter if ADQ is supported */
 	if (vfres->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_ADQ)
 		hw_features |= NETIF_F_HW_TC;
 	if (vfres->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_USO)
 		hw_features |= NETIF_F_GSO_UDP_L4;
 
-	netdev->hw_features |= hw_features;
+	netdev->hw_features |= hw_features | hw_vlan_features;
+	vlan_features = iavf_get_netdev_vlan_features(adapter);
 
-	netdev->features |= hw_features;
+	netdev->features |= hw_features | vlan_features;
 
 	if (vfres->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_VLAN)
 		netdev->features |= NETIF_F_HW_VLAN_CTAG_FILTER;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 2ad426f13462..2dc1c435223c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -642,7 +642,6 @@ static void iavf_mac_add_reject(struct iavf_adapter *adapter)
  **/
 void iavf_add_vlans(struct iavf_adapter *adapter)
 {
-	struct virtchnl_vlan_filter_list *vvfl;
 	int len, i = 0, count = 0;
 	struct iavf_vlan_filter *f;
 	bool more = false;
@@ -660,48 +659,105 @@ void iavf_add_vlans(struct iavf_adapter *adapter)
 		if (f->add)
 			count++;
 	}
-	if (!count || !VLAN_ALLOWED(adapter)) {
+	if (!count || !VLAN_FILTERING_ALLOWED(adapter)) {
 		adapter->aq_required &= ~IAVF_FLAG_AQ_ADD_VLAN_FILTER;
 		spin_unlock_bh(&adapter->mac_vlan_list_lock);
 		return;
 	}
-	adapter->current_op = VIRTCHNL_OP_ADD_VLAN;
 
-	len = sizeof(struct virtchnl_vlan_filter_list) +
-	      (count * sizeof(u16));
-	if (len > IAVF_MAX_AQ_BUF_SIZE) {
-		dev_warn(&adapter->pdev->dev, "Too many add VLAN changes in one request\n");
-		count = (IAVF_MAX_AQ_BUF_SIZE -
-			 sizeof(struct virtchnl_vlan_filter_list)) /
-			sizeof(u16);
-		len = sizeof(struct virtchnl_vlan_filter_list) +
-		      (count * sizeof(u16));
-		more = true;
-	}
-	vvfl = kzalloc(len, GFP_ATOMIC);
-	if (!vvfl) {
+	if (VLAN_ALLOWED(adapter)) {
+		struct virtchnl_vlan_filter_list *vvfl;
+
+		adapter->current_op = VIRTCHNL_OP_ADD_VLAN;
+
+		len = sizeof(*vvfl) + (count * sizeof(u16));
+		if (len > IAVF_MAX_AQ_BUF_SIZE) {
+			dev_warn(&adapter->pdev->dev, "Too many add VLAN changes in one request\n");
+			count = (IAVF_MAX_AQ_BUF_SIZE - sizeof(*vvfl)) /
+				sizeof(u16);
+			len = sizeof(*vvfl) + (count * sizeof(u16));
+			more = true;
+		}
+		vvfl = kzalloc(len, GFP_ATOMIC);
+		if (!vvfl) {
+			spin_unlock_bh(&adapter->mac_vlan_list_lock);
+			return;
+		}
+
+		vvfl->vsi_id = adapter->vsi_res->vsi_id;
+		vvfl->num_elements = count;
+		list_for_each_entry(f, &adapter->vlan_filter_list, list) {
+			if (f->add) {
+				vvfl->vlan_id[i] = f->vlan.vid;
+				i++;
+				f->add = false;
+				if (i == count)
+					break;
+			}
+		}
+		if (!more)
+			adapter->aq_required &= ~IAVF_FLAG_AQ_ADD_VLAN_FILTER;
+
 		spin_unlock_bh(&adapter->mac_vlan_list_lock);
-		return;
-	}
 
-	vvfl->vsi_id = adapter->vsi_res->vsi_id;
-	vvfl->num_elements = count;
-	list_for_each_entry(f, &adapter->vlan_filter_list, list) {
-		if (f->add) {
-			vvfl->vlan_id[i] = f->vlan;
-			i++;
-			f->add = false;
-			if (i == count)
-				break;
+		iavf_send_pf_msg(adapter, VIRTCHNL_OP_ADD_VLAN, (u8 *)vvfl, len);
+		kfree(vvfl);
+	} else {
+		struct virtchnl_vlan_filter_list_v2 *vvfl_v2;
+
+		adapter->current_op = VIRTCHNL_OP_ADD_VLAN_V2;
+
+		len = sizeof(*vvfl_v2) + ((count - 1) *
+					  sizeof(struct virtchnl_vlan_filter));
+		if (len > IAVF_MAX_AQ_BUF_SIZE) {
+			dev_warn(&adapter->pdev->dev, "Too many add VLAN changes in one request\n");
+			count = (IAVF_MAX_AQ_BUF_SIZE - sizeof(*vvfl_v2)) /
+				sizeof(struct virtchnl_vlan_filter);
+			len = sizeof(*vvfl_v2) +
+				((count - 1) *
+				 sizeof(struct virtchnl_vlan_filter));
+			more = true;
 		}
-	}
-	if (!more)
-		adapter->aq_required &= ~IAVF_FLAG_AQ_ADD_VLAN_FILTER;
 
-	spin_unlock_bh(&adapter->mac_vlan_list_lock);
+		vvfl_v2 = kzalloc(len, GFP_ATOMIC);
+		if (!vvfl_v2) {
+			spin_unlock_bh(&adapter->mac_vlan_list_lock);
+			return;
+		}
 
-	iavf_send_pf_msg(adapter, VIRTCHNL_OP_ADD_VLAN, (u8 *)vvfl, len);
-	kfree(vvfl);
+		vvfl_v2->vport_id = adapter->vsi_res->vsi_id;
+		vvfl_v2->num_elements = count;
+		list_for_each_entry(f, &adapter->vlan_filter_list, list) {
+			if (f->add) {
+				struct virtchnl_vlan_supported_caps *filtering_support =
+					&adapter->vlan_v2_caps.filtering.filtering_support;
+				struct virtchnl_vlan *vlan;
+
+				/* give priority over outer if it's enabled */
+				if (filtering_support->outer)
+					vlan = &vvfl_v2->filters[i].outer;
+				else
+					vlan = &vvfl_v2->filters[i].inner;
+
+				vlan->tci = f->vlan.vid;
+				vlan->tpid = f->vlan.tpid;
+
+				i++;
+				f->add = false;
+				if (i == count)
+					break;
+			}
+		}
+
+		if (!more)
+			adapter->aq_required &= ~IAVF_FLAG_AQ_ADD_VLAN_FILTER;
+
+		spin_unlock_bh(&adapter->mac_vlan_list_lock);
+
+		iavf_send_pf_msg(adapter, VIRTCHNL_OP_ADD_VLAN_V2,
+				 (u8 *)vvfl_v2, len);
+		kfree(vvfl_v2);
+	}
 }
 
 /**
@@ -712,7 +768,6 @@ void iavf_add_vlans(struct iavf_adapter *adapter)
  **/
 void iavf_del_vlans(struct iavf_adapter *adapter)
 {
-	struct virtchnl_vlan_filter_list *vvfl;
 	struct iavf_vlan_filter *f, *ftmp;
 	int len, i = 0, count = 0;
 	bool more = false;
@@ -733,56 +788,116 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
 		 * filters marked for removal to enable bailing out before
 		 * sending a virtchnl message
 		 */
-		if (f->remove && !VLAN_ALLOWED(adapter)) {
+		if (f->remove && !VLAN_FILTERING_ALLOWED(adapter)) {
 			list_del(&f->list);
 			kfree(f);
 		} else if (f->remove) {
 			count++;
 		}
 	}
-	if (!count) {
+	if (!count || !VLAN_FILTERING_ALLOWED(adapter)) {
 		adapter->aq_required &= ~IAVF_FLAG_AQ_DEL_VLAN_FILTER;
 		spin_unlock_bh(&adapter->mac_vlan_list_lock);
 		return;
 	}
-	adapter->current_op = VIRTCHNL_OP_DEL_VLAN;
 
-	len = sizeof(struct virtchnl_vlan_filter_list) +
-	      (count * sizeof(u16));
-	if (len > IAVF_MAX_AQ_BUF_SIZE) {
-		dev_warn(&adapter->pdev->dev, "Too many delete VLAN changes in one request\n");
-		count = (IAVF_MAX_AQ_BUF_SIZE -
-			 sizeof(struct virtchnl_vlan_filter_list)) /
-			sizeof(u16);
-		len = sizeof(struct virtchnl_vlan_filter_list) +
-		      (count * sizeof(u16));
-		more = true;
-	}
-	vvfl = kzalloc(len, GFP_ATOMIC);
-	if (!vvfl) {
+	if (VLAN_ALLOWED(adapter)) {
+		struct virtchnl_vlan_filter_list *vvfl;
+
+		adapter->current_op = VIRTCHNL_OP_DEL_VLAN;
+
+		len = sizeof(*vvfl) + (count * sizeof(u16));
+		if (len > IAVF_MAX_AQ_BUF_SIZE) {
+			dev_warn(&adapter->pdev->dev, "Too many delete VLAN changes in one request\n");
+			count = (IAVF_MAX_AQ_BUF_SIZE - sizeof(*vvfl)) /
+				sizeof(u16);
+			len = sizeof(*vvfl) + (count * sizeof(u16));
+			more = true;
+		}
+		vvfl = kzalloc(len, GFP_ATOMIC);
+		if (!vvfl) {
+			spin_unlock_bh(&adapter->mac_vlan_list_lock);
+			return;
+		}
+
+		vvfl->vsi_id = adapter->vsi_res->vsi_id;
+		vvfl->num_elements = count;
+		list_for_each_entry_safe(f, ftmp, &adapter->vlan_filter_list, list) {
+			if (f->remove) {
+				vvfl->vlan_id[i] = f->vlan.vid;
+				i++;
+				list_del(&f->list);
+				kfree(f);
+				if (i == count)
+					break;
+			}
+		}
+
+		if (!more)
+			adapter->aq_required &= ~IAVF_FLAG_AQ_DEL_VLAN_FILTER;
+
 		spin_unlock_bh(&adapter->mac_vlan_list_lock);
-		return;
-	}
 
-	vvfl->vsi_id = adapter->vsi_res->vsi_id;
-	vvfl->num_elements = count;
-	list_for_each_entry_safe(f, ftmp, &adapter->vlan_filter_list, list) {
-		if (f->remove) {
-			vvfl->vlan_id[i] = f->vlan;
-			i++;
-			list_del(&f->list);
-			kfree(f);
-			if (i == count)
-				break;
+		iavf_send_pf_msg(adapter, VIRTCHNL_OP_DEL_VLAN, (u8 *)vvfl, len);
+		kfree(vvfl);
+	} else {
+		struct virtchnl_vlan_filter_list_v2 *vvfl_v2;
+
+		adapter->current_op = VIRTCHNL_OP_DEL_VLAN_V2;
+
+		len = sizeof(*vvfl_v2) +
+			((count - 1) * sizeof(struct virtchnl_vlan_filter));
+		if (len > IAVF_MAX_AQ_BUF_SIZE) {
+			dev_warn(&adapter->pdev->dev, "Too many add VLAN changes in one request\n");
+			count = (IAVF_MAX_AQ_BUF_SIZE -
+				 sizeof(*vvfl_v2)) /
+				sizeof(struct virtchnl_vlan_filter);
+			len = sizeof(*vvfl_v2) +
+				((count - 1) *
+				 sizeof(struct virtchnl_vlan_filter));
+			more = true;
 		}
-	}
-	if (!more)
-		adapter->aq_required &= ~IAVF_FLAG_AQ_DEL_VLAN_FILTER;
 
-	spin_unlock_bh(&adapter->mac_vlan_list_lock);
+		vvfl_v2 = kzalloc(len, GFP_ATOMIC);
+		if (!vvfl_v2) {
+			spin_unlock_bh(&adapter->mac_vlan_list_lock);
+			return;
+		}
+
+		vvfl_v2->vport_id = adapter->vsi_res->vsi_id;
+		vvfl_v2->num_elements = count;
+		list_for_each_entry_safe(f, ftmp, &adapter->vlan_filter_list, list) {
+			if (f->remove) {
+				struct virtchnl_vlan_supported_caps *filtering_support =
+					&adapter->vlan_v2_caps.filtering.filtering_support;
+				struct virtchnl_vlan *vlan;
+
+				/* give priority over outer if it's enabled */
+				if (filtering_support->outer)
+					vlan = &vvfl_v2->filters[i].outer;
+				else
+					vlan = &vvfl_v2->filters[i].inner;
+
+				vlan->tci = f->vlan.vid;
+				vlan->tpid = f->vlan.tpid;
+
+				list_del(&f->list);
+				kfree(f);
+				i++;
+				if (i == count)
+					break;
+			}
+		}
 
-	iavf_send_pf_msg(adapter, VIRTCHNL_OP_DEL_VLAN, (u8 *)vvfl, len);
-	kfree(vvfl);
+		if (!more)
+			adapter->aq_required &= ~IAVF_FLAG_AQ_DEL_VLAN_FILTER;
+
+		spin_unlock_bh(&adapter->mac_vlan_list_lock);
+
+		iavf_send_pf_msg(adapter, VIRTCHNL_OP_DEL_VLAN_V2,
+				 (u8 *)vvfl_v2, len);
+		kfree(vvfl_v2);
+	}
 }
 
 /**
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
