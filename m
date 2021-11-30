Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1624646400F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Nov 2021 22:24:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6605A404B5;
	Tue, 30 Nov 2021 21:24:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ODf9cbWFTqam; Tue, 30 Nov 2021 21:24:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 72677404E9;
	Tue, 30 Nov 2021 21:24:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1D9EA1BF306
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 21:23:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4697840466
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 21:23:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z_OHD___bQWD for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Nov 2021 21:23:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2923340475
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 21:23:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="223550563"
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="223550563"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 13:23:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="499946577"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.133])
 by orsmga007.jf.intel.com with ESMTP; 30 Nov 2021 13:23:30 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 30 Nov 2021 13:21:53 -0800
Message-Id: <20211130212155.27852-12-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211130212155.27852-1-anthony.l.nguyen@intel.com>
References: <20211130212155.27852-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 12/14] ice: Advertise 802.1ad
 VLAN filtering and offloads for PF netdev
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

In order for the driver to support 802.1ad VLAN filtering and offloads,
it needs to advertise those VLAN features and also support modifying
those VLAN features, so make the necessary changes to
ice_set_netdev_features(). By default, enable CTAG insertion/stripping
and CTAG filtering for both Single and Double VLAN Modes (SVM/DVM).
Also, in DVM, enable STAG filtering by default. This is done by
setting the feature bits in netdev->features. Also, in DVM, support
toggling of STAG insertion/stripping, but don't enable them by
default. This is done by setting the feature bits in
netdev->hw_features.

Since 802.1ad VLAN filtering and offloads are only supported in DVM, make
sure they are not enabled by default and that they cannot be enabled
during runtime, when the device is in SVM.

Add an implementation for the ndo_fix_features() callback. This is
needed since the hardware cannot support multiple VLAN ethertypes for
VLAN insertion/stripping simultaneously and all supported VLAN filtering
must either be enabled or disabled together.

Disable inner VLAN stripping by default when DVM is enabled. If a VSI
supports stripping the inner VLAN in DVM, then it will have to configure
that during runtime. For example if a VF is configured in a port VLAN
while DVM is enabled it will be allowed to offload inner VLANs.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c  |  27 ++-
 drivers/net/ethernet/intel/ice/ice_main.c | 260 ++++++++++++++++++----
 2 files changed, 238 insertions(+), 49 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 36507f0dc04e..de37928c2870 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -796,11 +796,12 @@ static void ice_vsi_set_rss_params(struct ice_vsi *vsi)
 
 /**
  * ice_set_dflt_vsi_ctx - Set default VSI context before adding a VSI
+ * @hw: HW structure used to determine the VLAN mode of the device
  * @ctxt: the VSI context being set
  *
  * This initializes a default VSI context for all sections except the Queues.
  */
-static void ice_set_dflt_vsi_ctx(struct ice_vsi_ctx *ctxt)
+static void ice_set_dflt_vsi_ctx(struct ice_hw *hw, struct ice_vsi_ctx *ctxt)
 {
 	u32 table = 0;
 
@@ -811,13 +812,27 @@ static void ice_set_dflt_vsi_ctx(struct ice_vsi_ctx *ctxt)
 	ctxt->info.sw_flags = ICE_AQ_VSI_SW_FLAG_SRC_PRUNE;
 	/* Traffic from VSI can be sent to LAN */
 	ctxt->info.sw_flags2 = ICE_AQ_VSI_SW_FLAG_LAN_ENA;
-	/* By default bits 3 and 4 in inner_vlan_flags are 0's which results in legacy
-	 * behavior (show VLAN, DEI, and UP) in descriptor. Also, allow all
-	 * packets untagged/tagged.
-	 */
+	/* allow all untagged/tagged packets by default on Tx */
 	ctxt->info.inner_vlan_flags = ((ICE_AQ_VSI_INNER_VLAN_TX_MODE_ALL &
 				  ICE_AQ_VSI_INNER_VLAN_TX_MODE_M) >>
 				 ICE_AQ_VSI_INNER_VLAN_TX_MODE_S);
+	/* SVM - by default bits 3 and 4 in inner_vlan_flags are 0's which
+	 * results in legacy behavior (show VLAN, DEI, and UP) in descriptor.
+	 *
+	 * DVM - leave inner VLAN in packet by default
+	 */
+	if (ice_is_dvm_ena(hw)) {
+		ctxt->info.inner_vlan_flags |=
+			ICE_AQ_VSI_INNER_VLAN_EMODE_NOTHING;
+		ctxt->info.outer_vlan_flags =
+			(ICE_AQ_VSI_OUTER_VLAN_TX_MODE_ALL <<
+			 ICE_AQ_VSI_OUTER_VLAN_TX_MODE_S) &
+			ICE_AQ_VSI_OUTER_VLAN_TX_MODE_M;
+		ctxt->info.outer_vlan_flags |=
+			(ICE_AQ_VSI_OUTER_TAG_VLAN_8100 <<
+			 ICE_AQ_VSI_OUTER_TAG_TYPE_S) &
+			ICE_AQ_VSI_OUTER_TAG_TYPE_M;
+	}
 	/* Have 1:1 UP mapping for both ingress/egress tables */
 	table |= ICE_UP_TABLE_TRANSLATE(0, 0);
 	table |= ICE_UP_TABLE_TRANSLATE(1, 1);
@@ -1094,7 +1109,7 @@ static int ice_vsi_init(struct ice_vsi *vsi, bool init_vsi)
 				~ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA;
 	}
 
-	ice_set_dflt_vsi_ctx(ctxt);
+	ice_set_dflt_vsi_ctx(hw, ctxt);
 	if (test_bit(ICE_FLAG_FD_ENA, pf->flags))
 		ice_set_fd_vsi_ctx(ctxt, vsi);
 	/* if the switch is in VEB mode, allow VSI loopback */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 563b597b0a85..851dbd70d809 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -416,7 +416,8 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 						IFF_PROMISC;
 					goto out_promisc;
 				}
-				if (vsi->num_vlan > 1)
+				if (vsi->current_netdev_flags &
+				    NETIF_F_HW_VLAN_CTAG_FILTER)
 					vlan_ops->ena_rx_filtering(vsi);
 			}
 		}
@@ -3240,6 +3241,7 @@ static void ice_set_ops(struct net_device *netdev)
 static void ice_set_netdev_features(struct net_device *netdev)
 {
 	struct ice_pf *pf = ice_netdev_to_pf(netdev);
+	bool is_dvm_ena = ice_is_dvm_ena(&pf->hw);
 	netdev_features_t csumo_features;
 	netdev_features_t vlano_features;
 	netdev_features_t dflt_features;
@@ -3266,6 +3268,10 @@ static void ice_set_netdev_features(struct net_device *netdev)
 			 NETIF_F_HW_VLAN_CTAG_TX     |
 			 NETIF_F_HW_VLAN_CTAG_RX;
 
+	/* Enable CTAG/STAG filtering by default in Double VLAN Mode (DVM) */
+	if (is_dvm_ena)
+		vlano_features |= NETIF_F_HW_VLAN_STAG_FILTER;
+
 	tso_features = NETIF_F_TSO			|
 		       NETIF_F_TSO_ECN			|
 		       NETIF_F_TSO6			|
@@ -3297,6 +3303,15 @@ static void ice_set_netdev_features(struct net_device *netdev)
 				   tso_features;
 	netdev->vlan_features |= dflt_features | csumo_features |
 				 tso_features;
+
+	/* advertise support but don't enable by default since only one type of
+	 * VLAN offload can be enabled at a time (i.e. CTAG or STAG). When one
+	 * type turns on the other has to be turned off. This is enforced by the
+	 * ice_fix_features() ndo callback.
+	 */
+	if (is_dvm_ena)
+		netdev->hw_features |= NETIF_F_HW_VLAN_STAG_RX |
+			NETIF_F_HW_VLAN_STAG_TX;
 }
 
 /**
@@ -3432,13 +3447,6 @@ ice_vlan_rx_add_vid(struct net_device *netdev, __be16 proto, u16 vid)
 
 	vlan_ops = ice_get_compat_vsi_vlan_ops(vsi);
 
-	/* Enable VLAN pruning when a VLAN other than 0 is added */
-	if (!ice_vsi_is_vlan_pruning_ena(vsi)) {
-		ret = vlan_ops->ena_rx_filtering(vsi);
-		if (ret)
-			return ret;
-	}
-
 	/* Add a switch rule for this VLAN ID so its corresponding VLAN tagged
 	 * packets aren't pruned by the device's internal switch on Rx
 	 */
@@ -3481,12 +3489,8 @@ ice_vlan_rx_kill_vid(struct net_device *netdev, __be16 proto, u16 vid)
 	if (ret)
 		return ret;
 
-	/* Disable pruning when VLAN 0 is the only VLAN rule */
-	if (vsi->num_vlan == 1 && ice_vsi_is_vlan_pruning_ena(vsi))
-		vlan_ops->dis_rx_filtering(vsi);
-
 	set_bit(ICE_VSI_VLAN_FLTR_CHANGED, vsi->state);
-	return ret;
+	return 0;
 }
 
 /**
@@ -5596,6 +5600,194 @@ ice_fdb_del(struct ndmsg *ndm, __always_unused struct nlattr *tb[],
 	return err;
 }
 
+#define NETIF_VLAN_OFFLOAD_FEATURES	(NETIF_F_HW_VLAN_CTAG_RX | \
+					 NETIF_F_HW_VLAN_CTAG_TX | \
+					 NETIF_F_HW_VLAN_STAG_RX | \
+					 NETIF_F_HW_VLAN_STAG_TX)
+
+#define NETIF_VLAN_FILTERING_FEATURES	(NETIF_F_HW_VLAN_CTAG_FILTER | \
+					 NETIF_F_HW_VLAN_STAG_FILTER)
+
+/**
+ * ice_fix_features - fix the netdev features flags based on device limitations
+ * @netdev: ptr to the netdev that flags are being fixed on
+ * @features: features that need to be checked and possibly fixed
+ *
+ * Make sure any fixups are made to features in this callback. This enables the
+ * driver to not have to check unsupported configurations throughout the driver
+ * because that's the responsiblity of this callback.
+ *
+ * Single VLAN Mode (SVM) Supported Features:
+ *	NETIF_F_HW_VLAN_CTAG_FILTER
+ *	NETIF_F_HW_VLAN_CTAG_RX
+ *	NETIF_F_HW_VLAN_CTAG_TX
+ *
+ * Double VLAN Mode (DVM) Supported Features:
+ *	NETIF_F_HW_VLAN_CTAG_FILTER
+ *	NETIF_F_HW_VLAN_CTAG_RX
+ *	NETIF_F_HW_VLAN_CTAG_TX
+ *
+ *	NETIF_F_HW_VLAN_STAG_FILTER
+ *	NETIF_HW_VLAN_STAG_RX
+ *	NETIF_HW_VLAN_STAG_TX
+ *
+ * Features that need fixing:
+ *	Cannot simultaneously enable CTAG and STAG stripping and/or insertion.
+ *	These are mutually exlusive as the VSI context cannot support multiple
+ *	VLAN ethertypes simultaneously for stripping and/or insertion. If this
+ *	is not done, then default to clearing the requested STAG offload
+ *	settings.
+ *
+ *	All supported filtering has to be enabled or disabled together. For
+ *	example, in DVM, CTAG and STAG filtering have to be enabled and disabled
+ *	together. If this is not done, then default to VLAN filtering disabled.
+ *	These are mutually exclusive as there is currently no way to
+ *	enable/disable VLAN filtering based on VLAN ethertype when using VLAN
+ *	prune rules.
+ */
+static netdev_features_t
+ice_fix_features(struct net_device *netdev, netdev_features_t features)
+{
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+	netdev_features_t supported_vlan_filtering;
+	netdev_features_t requested_vlan_filtering;
+	struct ice_vsi *vsi = np->vsi;
+
+	requested_vlan_filtering = features & NETIF_VLAN_FILTERING_FEATURES;
+
+	/* make sure supported_vlan_filtering works for both SVM and DVM */
+	supported_vlan_filtering = NETIF_F_HW_VLAN_CTAG_FILTER;
+	if (ice_is_dvm_ena(&vsi->back->hw))
+		supported_vlan_filtering |= NETIF_F_HW_VLAN_STAG_FILTER;
+
+	if (requested_vlan_filtering &&
+	    requested_vlan_filtering != supported_vlan_filtering) {
+		if (requested_vlan_filtering & NETIF_F_HW_VLAN_CTAG_FILTER) {
+			netdev_warn(netdev, "cannot support requested VLAN filtering settings, enabling all supported VLAN filtering settings\n");
+			features |= supported_vlan_filtering;
+		} else {
+			netdev_warn(netdev, "cannot support requested VLAN filtering settings, clearing all supported VLAN filtering settings\n");
+			features &= ~supported_vlan_filtering;
+		}
+	}
+
+	if ((features & (NETIF_F_HW_VLAN_CTAG_RX | NETIF_F_HW_VLAN_CTAG_TX)) &&
+	    (features & (NETIF_F_HW_VLAN_STAG_RX | NETIF_F_HW_VLAN_STAG_TX))) {
+		netdev_warn(netdev, "cannot support CTAG and STAG VLAN stripping and/or insertion simultaneously since CTAG and STAG offloads are mutually exclusive, clearing STAG offload settings\n");
+		features &= ~(NETIF_F_HW_VLAN_STAG_RX |
+			      NETIF_F_HW_VLAN_STAG_TX);
+	}
+
+	return features;
+}
+
+/**
+ * ice_set_vlan_offload_features - set VLAN offload features for the PF VSI
+ * @vsi: PF's VSI
+ * @features: features used to determine VLAN offload settings
+ *
+ * First, determine the vlan_ethertype based on the VLAN offload bits in
+ * features. Then determine if stripping and insertion should be enabled or
+ * disabled. Finally enable or disable VLAN stripping and insertion.
+ */
+static int
+ice_set_vlan_offload_features(struct ice_vsi *vsi, netdev_features_t features)
+{
+	bool enable_stripping = true, enable_insertion = true;
+	struct ice_vsi_vlan_ops *vlan_ops;
+	int strip_err = 0, insert_err = 0;
+	u16 vlan_ethertype = 0;
+
+	vlan_ops = ice_get_compat_vsi_vlan_ops(vsi);
+
+	if (features & (NETIF_F_HW_VLAN_STAG_RX | NETIF_F_HW_VLAN_STAG_TX))
+		vlan_ethertype = ETH_P_8021AD;
+	else if (features & (NETIF_F_HW_VLAN_CTAG_RX | NETIF_F_HW_VLAN_CTAG_TX))
+		vlan_ethertype = ETH_P_8021Q;
+
+	if (!(features & (NETIF_F_HW_VLAN_STAG_RX | NETIF_F_HW_VLAN_CTAG_RX)))
+		enable_stripping = false;
+	if (!(features & (NETIF_F_HW_VLAN_STAG_TX | NETIF_F_HW_VLAN_CTAG_TX)))
+		enable_insertion = false;
+
+	if (enable_stripping)
+		strip_err = vlan_ops->ena_stripping(vsi, vlan_ethertype);
+	else
+		strip_err = vlan_ops->dis_stripping(vsi);
+
+	if (enable_insertion)
+		insert_err = vlan_ops->ena_insertion(vsi, vlan_ethertype);
+	else
+		insert_err = vlan_ops->dis_insertion(vsi);
+
+	if (strip_err || insert_err)
+		return -EIO;
+
+	return 0;
+}
+
+/**
+ * ice_set_vlan_filtering_features - set VLAN filtering features for the PF VSI
+ * @vsi: PF's VSI
+ * @features: features used to determine VLAN filtering settings
+ *
+ * Enable or disable Rx VLAN filtering based on the VLAN filtering bits in the
+ * features.
+ */
+static int
+ice_set_vlan_filtering_features(struct ice_vsi *vsi, netdev_features_t features)
+{
+	struct ice_vsi_vlan_ops *vlan_ops = ice_get_compat_vsi_vlan_ops(vsi);
+	int err = 0;
+
+	/* support Single VLAN Mode (SVM) and Double VLAN Mode (DVM) by checking
+	 * if either bit is set
+	 */
+	if (features &
+	    (NETIF_F_HW_VLAN_CTAG_FILTER | NETIF_F_HW_VLAN_STAG_FILTER))
+		err = vlan_ops->ena_rx_filtering(vsi);
+	else
+		err = vlan_ops->dis_rx_filtering(vsi);
+
+	return err;
+}
+
+/**
+ * ice_set_vlan_features - set VLAN settings based on suggested feature set
+ * @netdev: ptr to the netdev being adjusted
+ * @features: the feature set that the stack is suggesting
+ *
+ * Only update VLAN settings if the requested_vlan_features are different than
+ * the current_vlan_features.
+ */
+static int
+ice_set_vlan_features(struct net_device *netdev, netdev_features_t features)
+{
+	netdev_features_t current_vlan_features, requested_vlan_features;
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_vsi *vsi = np->vsi;
+	int err;
+
+	current_vlan_features = netdev->features & NETIF_VLAN_OFFLOAD_FEATURES;
+	requested_vlan_features = features & NETIF_VLAN_OFFLOAD_FEATURES;
+	if (current_vlan_features ^ requested_vlan_features) {
+		err = ice_set_vlan_offload_features(vsi, features);
+		if (err)
+			return err;
+	}
+
+	current_vlan_features = netdev->features &
+		NETIF_VLAN_FILTERING_FEATURES;
+	requested_vlan_features = features & NETIF_VLAN_FILTERING_FEATURES;
+	if (current_vlan_features ^ requested_vlan_features) {
+		err = ice_set_vlan_filtering_features(vsi, features);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
 /**
  * ice_set_features - set the netdev feature flags
  * @netdev: ptr to the netdev being adjusted
@@ -5605,7 +5797,6 @@ static int
 ice_set_features(struct net_device *netdev, netdev_features_t features)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_vsi_vlan_ops *vlan_ops;
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
 	int ret = 0;
@@ -5622,8 +5813,6 @@ ice_set_features(struct net_device *netdev, netdev_features_t features)
 		return -EBUSY;
 	}
 
-	vlan_ops = ice_get_compat_vsi_vlan_ops(vsi);
-
 	/* Multiple features can be changed in one call so keep features in
 	 * separate if/else statements to guarantee each feature is checked
 	 */
@@ -5633,26 +5822,9 @@ ice_set_features(struct net_device *netdev, netdev_features_t features)
 		 netdev->features & NETIF_F_RXHASH)
 		ice_vsi_manage_rss_lut(vsi, false);
 
-	if ((features & NETIF_F_HW_VLAN_CTAG_RX) &&
-	    !(netdev->features & NETIF_F_HW_VLAN_CTAG_RX))
-		ret = vlan_ops->ena_stripping(vsi, ETH_P_8021Q);
-	else if (!(features & NETIF_F_HW_VLAN_CTAG_RX) &&
-		 (netdev->features & NETIF_F_HW_VLAN_CTAG_RX))
-		ret = vlan_ops->dis_stripping(vsi);
-
-	if ((features & NETIF_F_HW_VLAN_CTAG_TX) &&
-	    !(netdev->features & NETIF_F_HW_VLAN_CTAG_TX))
-		ret = vlan_ops->ena_insertion(vsi, ETH_P_8021Q);
-	else if (!(features & NETIF_F_HW_VLAN_CTAG_TX) &&
-		 (netdev->features & NETIF_F_HW_VLAN_CTAG_TX))
-		ret = vlan_ops->dis_insertion(vsi);
-
-	if ((features & NETIF_F_HW_VLAN_CTAG_FILTER) &&
-	    !(netdev->features & NETIF_F_HW_VLAN_CTAG_FILTER))
-		ret = vlan_ops->ena_rx_filtering(vsi);
-	else if (!(features & NETIF_F_HW_VLAN_CTAG_FILTER) &&
-		 (netdev->features & NETIF_F_HW_VLAN_CTAG_FILTER))
-		ret = vlan_ops->dis_rx_filtering(vsi);
+	ret = ice_set_vlan_features(netdev, features);
+	if (ret)
+		return ret;
 
 	if ((features & NETIF_F_NTUPLE) &&
 	    !(netdev->features & NETIF_F_NTUPLE)) {
@@ -5676,7 +5848,7 @@ ice_set_features(struct net_device *netdev, netdev_features_t features)
 	else
 		clear_bit(ICE_FLAG_CLS_FLOWER, pf->flags);
 
-	return ret;
+	return 0;
 }
 
 /**
@@ -5685,14 +5857,15 @@ ice_set_features(struct net_device *netdev, netdev_features_t features)
  */
 static int ice_vsi_vlan_setup(struct ice_vsi *vsi)
 {
-	struct ice_vsi_vlan_ops *vlan_ops;
+	int err;
 
-	vlan_ops = ice_get_compat_vsi_vlan_ops(vsi);
+	err = ice_set_vlan_offload_features(vsi, vsi->netdev->features);
+	if (err)
+		return err;
 
-	if (vsi->netdev->features & NETIF_F_HW_VLAN_CTAG_RX)
-		vlan_ops->ena_stripping(vsi, ETH_P_8021Q);
-	if (vsi->netdev->features & NETIF_F_HW_VLAN_CTAG_TX)
-		vlan_ops->ena_insertion(vsi, ETH_P_8021Q);
+	err = ice_set_vlan_filtering_features(vsi, vsi->netdev->features);
+	if (err)
+		return err;
 
 	return ice_vsi_add_vlan_zero(vsi);
 }
@@ -8549,6 +8722,7 @@ static const struct net_device_ops ice_netdev_ops = {
 	.ndo_start_xmit = ice_start_xmit,
 	.ndo_select_queue = ice_select_queue,
 	.ndo_features_check = ice_features_check,
+	.ndo_fix_features = ice_fix_features,
 	.ndo_set_rx_mode = ice_set_rx_mode,
 	.ndo_set_mac_address = ice_set_mac_address,
 	.ndo_validate_addr = eth_validate_addr,
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
