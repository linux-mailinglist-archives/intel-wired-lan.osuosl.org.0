Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E801746D015
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Dec 2021 10:28:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF006401EA;
	Wed,  8 Dec 2021 09:28:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fLScPKcPLKsT; Wed,  8 Dec 2021 09:28:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86574402DF;
	Wed,  8 Dec 2021 09:28:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4F4D31BF5A9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 09:28:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 487EE40A08
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 09:28:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vL94QKa5I0Uv for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Dec 2021 09:28:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 35E0A409F1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 09:28:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10191"; a="301179015"
X-IronPort-AV: E=Sophos;i="5.87,297,1631602800"; d="scan'208";a="301179015"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 01:28:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,297,1631602800"; d="scan'208";a="502983295"
Received: from amlin-19-169.igk.intel.com ([10.102.19.169])
 by orsmga007.jf.intel.com with ESMTP; 08 Dec 2021 01:28:09 -0800
From: "Sornek, Karen" <karen.sornek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  8 Dec 2021 10:28:59 +0100
Message-Id: <20211208092859.1876593-1-karen.sornek@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v3] iavf: Fix promiscuous mode
 configuration flow messages
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
Cc: Karen Sornek <karen.sornek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Karen Sornek <karen.sornek@intel.com>

Currently when configuring promiscuous mode on the AVF we detect a
change in the netdev->flags. We use IFF_PROMISC and IFF_ALLMULTI to
determine whether or not we need to request/release promiscuous mode
and/or multicast promiscuous mode. The problem is that the AQ calls for
setting/clearing promiscuous/multicast mode are treated separately. This
leads to a case where we can trigger two promiscuous mode AQ calls in
a row with the incorrect state. To fix this make a few changes.

Use IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE instead of the previous
IAVF_FLAG_AQ_[REQUEST|RELEASE]_[PROMISC|ALLMULTI] flags.

In iavf_set_rx_mode() detect if there is a change in the
netdev->flags in comparison with adapter->flags and set the
IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE aq_required bit. Then in
iavf_process_aq_command() only check for IAVF_FLAG_CONFIGURE_PROMISC_MODE
and call iavf_set_promiscuous() if it's set.

In iavf_set_promiscuous() check again to see which (if any)
promiscuous mode bits have changed when comparing the netdev->flags with
the adapter->flags. Use this to set the flags which get sent to the PF
driver.

Add a spinlock that is used for updating current_netdev_promisc_flags
and only allows one promiscuous mode AQ at a time.

[1] Fixes the fact that we will only have one AQ call in the aq_required
queue at any one time.

[2] Streamlines the change in promiscuous mode to only set one AQ
required bit.

[3] This allows us to keep track of the current state of the flags and
also makes it so we can take the most recent netdev->flags promiscuous
mode state.

[4] This fixes the problem where a change in the netdev->flags can cause
IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE to be set in iavf_set_rx_mode(),
but cleared in iavf_set_promiscuous() before the change is ever made via
AQ call.

Fixes: 47d3483988f6 ("i40evf: Add driver support for promiscuous mode")
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Karen Sornek <karen.sornek@intel.com>
---
v3: Previous version had applying issue
---
 drivers/net/ethernet/intel/iavf/iavf.h        | 16 +++--
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 45 +++++--------
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 66 ++++++++++++++-----
 3 files changed, 75 insertions(+), 52 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 4d62231ec6b5..14e120a82b1c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -267,8 +267,6 @@ struct iavf_adapter {
 #define IAVF_FLAG_CLIENT_NEEDS_OPEN		BIT(10)
 #define IAVF_FLAG_CLIENT_NEEDS_CLOSE		BIT(11)
 #define IAVF_FLAG_CLIENT_NEEDS_L2_PARAMS	BIT(12)
-#define IAVF_FLAG_PROMISC_ON			BIT(13)
-#define IAVF_FLAG_ALLMULTI_ON			BIT(14)
 #define IAVF_FLAG_LEGACY_RX			BIT(15)
 #define IAVF_FLAG_REINIT_ITR_NEEDED		BIT(16)
 #define IAVF_FLAG_QUEUES_DISABLED		BIT(17)
@@ -293,10 +291,7 @@ struct iavf_adapter {
 #define IAVF_FLAG_AQ_SET_HENA			BIT(12)
 #define IAVF_FLAG_AQ_SET_RSS_KEY		BIT(13)
 #define IAVF_FLAG_AQ_SET_RSS_LUT		BIT(14)
-#define IAVF_FLAG_AQ_REQUEST_PROMISC		BIT(15)
-#define IAVF_FLAG_AQ_RELEASE_PROMISC		BIT(16)
-#define IAVF_FLAG_AQ_REQUEST_ALLMULTI		BIT(17)
-#define IAVF_FLAG_AQ_RELEASE_ALLMULTI		BIT(18)
+#define IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE	BIT(15)
 #define IAVF_FLAG_AQ_ENABLE_VLAN_STRIPPING	BIT(19)
 #define IAVF_FLAG_AQ_DISABLE_VLAN_STRIPPING	BIT(20)
 #define IAVF_FLAG_AQ_ENABLE_CHANNELS		BIT(21)
@@ -309,6 +304,12 @@ struct iavf_adapter {
 #define IAVF_FLAG_AQ_DEL_ADV_RSS_CFG		BIT(28)
 #define IAVF_FLAG_AQ_REQUEST_STATS		BIT(29)
 
+	/* Lock to prevent possible clobbering of
+	 * current_netdev_promisc_flags
+	 */
+	spinlock_t current_netdev_promisc_flags_lock;
+	netdev_features_t current_netdev_promisc_flags;
+
 	/* OS defined structs */
 	struct net_device *netdev;
 	struct pci_dev *pdev;
@@ -475,7 +476,8 @@ void iavf_add_ether_addrs(struct iavf_adapter *adapter);
 void iavf_del_ether_addrs(struct iavf_adapter *adapter);
 void iavf_add_vlans(struct iavf_adapter *adapter);
 void iavf_del_vlans(struct iavf_adapter *adapter);
-void iavf_set_promiscuous(struct iavf_adapter *adapter, int flags);
+void iavf_set_promiscuous(struct iavf_adapter *adapter);
+bool iavf_promiscuous_mode_changed(struct iavf_adapter *adapter);
 void iavf_request_stats(struct iavf_adapter *adapter);
 void iavf_request_reset(struct iavf_adapter *adapter);
 void iavf_get_hena(struct iavf_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 40903b02b2a3..86fa2a1a5010 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -906,6 +906,16 @@ static int iavf_addr_unsync(struct net_device *netdev, const u8 *addr)
 	return 0;
 }
 
+/**
+ * iavf_promiscuous_mode_changed - check if promiscuous mode bits changed
+ * @adapter: device specific adapter
+ */
+bool iavf_promiscuous_mode_changed(struct iavf_adapter *adapter)
+{
+	return (adapter->current_netdev_promisc_flags ^ adapter->netdev->flags)
+		& (IFF_PROMISC | IFF_ALLMULTI);
+}
+
 /**
  * iavf_set_rx_mode - NDO callback to set the netdev filters
  * @netdev: network interface device structure
@@ -919,19 +929,11 @@ static void iavf_set_rx_mode(struct net_device *netdev)
 	__dev_mc_sync(netdev, iavf_addr_sync, iavf_addr_unsync);
 	spin_unlock_bh(&adapter->mac_vlan_list_lock);
 
-	if (netdev->flags & IFF_PROMISC &&
-	    !(adapter->flags & IAVF_FLAG_PROMISC_ON))
-		adapter->aq_required |= IAVF_FLAG_AQ_REQUEST_PROMISC;
-	else if (!(netdev->flags & IFF_PROMISC) &&
-		 adapter->flags & IAVF_FLAG_PROMISC_ON)
-		adapter->aq_required |= IAVF_FLAG_AQ_RELEASE_PROMISC;
-
-	if (netdev->flags & IFF_ALLMULTI &&
-	    !(adapter->flags & IAVF_FLAG_ALLMULTI_ON))
-		adapter->aq_required |= IAVF_FLAG_AQ_REQUEST_ALLMULTI;
-	else if (!(netdev->flags & IFF_ALLMULTI) &&
-		 adapter->flags & IAVF_FLAG_ALLMULTI_ON)
-		adapter->aq_required |= IAVF_FLAG_AQ_RELEASE_ALLMULTI;
+	spin_lock_bh(&adapter->current_netdev_promisc_flags_lock);
+
+	if (iavf_promiscuous_mode_changed(adapter))
+		adapter->aq_required |= IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE;
+	spin_unlock_bh(&adapter->current_netdev_promisc_flags_lock);
 }
 
 /**
@@ -1659,22 +1661,10 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
 		return 0;
 	}
 
-	if (adapter->aq_required & IAVF_FLAG_AQ_REQUEST_PROMISC) {
-		iavf_set_promiscuous(adapter, FLAG_VF_UNICAST_PROMISC |
-				       FLAG_VF_MULTICAST_PROMISC);
+	if (adapter->aq_required & IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE) {
+		iavf_set_promiscuous(adapter);
 		return 0;
 	}
-
-	if (adapter->aq_required & IAVF_FLAG_AQ_REQUEST_ALLMULTI) {
-		iavf_set_promiscuous(adapter, FLAG_VF_MULTICAST_PROMISC);
-		return 0;
-	}
-	if ((adapter->aq_required & IAVF_FLAG_AQ_RELEASE_PROMISC) ||
-	    (adapter->aq_required & IAVF_FLAG_AQ_RELEASE_ALLMULTI)) {
-		iavf_set_promiscuous(adapter, 0);
-		return 0;
-	}
-
 	if (adapter->aq_required & IAVF_FLAG_AQ_ENABLE_CHANNELS) {
 		iavf_enable_channels(adapter);
 		return 0;
@@ -3856,6 +3846,7 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	spin_lock_init(&adapter->mac_vlan_list_lock);
 	spin_lock_init(&adapter->cloud_filter_list_lock);
+	spin_lock_init(&adapter->current_netdev_promisc_flags_lock);
 	spin_lock_init(&adapter->fdir_fltr_lock);
 	spin_lock_init(&adapter->adv_rss_lock);
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 26ae289a0524..2d38d0c54523 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -739,10 +739,11 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
  *
  * Request that the PF enable promiscuous mode for our VSI.
  **/
-void iavf_set_promiscuous(struct iavf_adapter *adapter, int flags)
+void iavf_set_promiscuous(struct iavf_adapter *adapter)
 {
+	struct net_device *netdev = adapter->netdev;
 	struct virtchnl_promisc_info vpi;
-	int promisc_all;
+	unsigned int flags;
 
 	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
 		/* bail because we already have a command pending */
@@ -751,27 +752,56 @@ void iavf_set_promiscuous(struct iavf_adapter *adapter, int flags)
 		return;
 	}
 
-	promisc_all = FLAG_VF_UNICAST_PROMISC |
-		      FLAG_VF_MULTICAST_PROMISC;
-	if ((flags & promisc_all) == promisc_all) {
-		adapter->flags |= IAVF_FLAG_PROMISC_ON;
-		adapter->aq_required &= ~IAVF_FLAG_AQ_REQUEST_PROMISC;
-		dev_info(&adapter->pdev->dev, "Entering promiscuous mode\n");
-	}
+	/* prevent changes to promiscuous flags */
+	spin_lock_bh(&adapter->current_netdev_promisc_flags_lock);
 
-	if (flags & FLAG_VF_MULTICAST_PROMISC) {
-		adapter->flags |= IAVF_FLAG_ALLMULTI_ON;
-		adapter->aq_required &= ~IAVF_FLAG_AQ_REQUEST_ALLMULTI;
-		dev_info(&adapter->pdev->dev, "Entering multicast promiscuous mode\n");
+	/* sanity check to prevent duplicate AQ calls */
+	if (!iavf_promiscuous_mode_changed(adapter)) {
+		adapter->aq_required &= ~IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE;
+		dev_dbg(&adapter->pdev->dev, "No change in promiscuous mode\n");
+		/* allow changes to promiscuous flags */
+		spin_unlock_bh(&adapter->current_netdev_promisc_flags_lock);
+		return;
 	}
 
-	if (!flags) {
-		adapter->flags &= ~(IAVF_FLAG_PROMISC_ON |
-				    IAVF_FLAG_ALLMULTI_ON);
-		adapter->aq_required &= ~(IAVF_FLAG_AQ_RELEASE_PROMISC |
-					  IAVF_FLAG_AQ_RELEASE_ALLMULTI);
+	/* there are 2 bits, but only 3 states */
+	if (!(netdev->flags & IFF_PROMISC) &&
+	    netdev->flags & IFF_ALLMULTI) {
+		/* State 1  - only multicast promiscuous mode enabled
+		 * - !IFF_PROMISC && IFF_ALLMULTI
+		 */
+		flags = FLAG_VF_MULTICAST_PROMISC;
+		adapter->current_netdev_promisc_flags |= IFF_ALLMULTI;
+		adapter->current_netdev_promisc_flags &= ~IFF_PROMISC;
+		dev_info(&adapter->pdev->dev,
+			 "Entering multicast promiscuous mode\n");
+	} else if (!(netdev->flags & IFF_PROMISC) &&
+		   !(netdev->flags & IFF_ALLMULTI)) {
+		/* State 2 - unicast/multicast promiscuous mode disabled
+		 * - !IFF_PROMISC && !IFF_ALLMULTI
+		 */
+		flags = 0;
+		adapter->current_netdev_promisc_flags &=
+			~(IFF_PROMISC | IFF_ALLMULTI);
 		dev_info(&adapter->pdev->dev, "Leaving promiscuous mode\n");
+	} else {
+		/* State 3 - unicast/multicast promiscuous mode enabled
+		 * - IFF_PROMISC && IFF_ALLMULTI
+		 * - IFF_PROMISC && !IFF_ALLMULTI
+		 */
+		flags = FLAG_VF_UNICAST_PROMISC | FLAG_VF_MULTICAST_PROMISC;
+		adapter->current_netdev_promisc_flags |= IFF_PROMISC;
+		if (netdev->flags & IFF_ALLMULTI)
+			adapter->current_netdev_promisc_flags |= IFF_ALLMULTI;
+		else
+			adapter->current_netdev_promisc_flags &= ~IFF_ALLMULTI;
 	}
+	dev_info(&adapter->pdev->dev, "Entering promiscuous mode\n");
+
+	adapter->aq_required &= ~IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE;
+
+	/* allow changes to promiscuous flags */
+	spin_unlock_bh(&adapter->current_netdev_promisc_flags_lock);
 
 	adapter->current_op = VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE;
 	vpi.vsi_id = adapter->vsi_res->vsi_id;
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
