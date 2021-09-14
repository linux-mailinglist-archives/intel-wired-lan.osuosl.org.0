Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E6040A6D4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Sep 2021 08:44:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42C9B80E2C;
	Tue, 14 Sep 2021 06:44:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 78zzVQbkkn1S; Tue, 14 Sep 2021 06:44:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E94D480CE1;
	Tue, 14 Sep 2021 06:44:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E64181BF31B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 06:44:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DCC4E4018C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 06:44:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3-893r6IbmIH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Sep 2021 06:44:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7A01B4016A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 06:44:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="208996090"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="208996090"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 23:43:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="699361605"
Received: from amlin-19-169.igk.intel.com ([10.102.19.169])
 by fmsmga005.fm.intel.com with ESMTP; 13 Sep 2021 23:43:49 -0700
From: Karen Sornek <karen.sornek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 14 Sep 2021 08:43:46 +0200
Message-Id: <20210914064346.3376-1-karen.sornek@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] iavf: Fix promiscuous mode
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

Fixes: 129cf89e5856 ("iavf: rename functions and structs to new name")
Signed-off-by: Brett Creeley brett.creeley@intel.com
Signed-off-by: Karen Sornek karen.sornek@intel.com
---
 drivers/net/ethernet/intel/iavf/iavf.h        | 16 ++--
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 45 +++++------
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 77 ++++++++++++-------
 3 files changed, 76 insertions(+), 62 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 21c957755..ce393b253 100644
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
@@ -292,10 +290,7 @@ struct iavf_adapter {
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
@@ -307,6 +302,12 @@ struct iavf_adapter {
 #define IAVF_FLAG_AQ_ADD_ADV_RSS_CFG		BIT(27)
 #define IAVF_FLAG_AQ_DEL_ADV_RSS_CFG		BIT(28)
 
+	/* Lock to prevent possible clobbering of
+	 * current_netdev_promisc_flags
+	 */
+	spinlock_t current_netdev_promisc_flags_lock;
+	netdev_features_t current_netdev_promisc_flags;
+
 	/* OS defined structs */
 	struct net_device *netdev;
 	struct pci_dev *pdev;
@@ -426,7 +427,8 @@ void iavf_add_ether_addrs(struct iavf_adapter *adapter);
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
index 80437ef26..58ed7da6e 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -889,6 +889,16 @@ static int iavf_addr_unsync(struct net_device *netdev, const u8 *addr)
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
@@ -902,19 +912,11 @@ static void iavf_set_rx_mode(struct net_device *netdev)
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
@@ -1642,22 +1644,10 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
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
@@ -3840,6 +3830,7 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	spin_lock_init(&adapter->mac_vlan_list_lock);
 	spin_lock_init(&adapter->cloud_filter_list_lock);
+	spin_lock_init(&adapter->current_netdev_promisc_flags_lock);
 	spin_lock_init(&adapter->fdir_fltr_lock);
 	spin_lock_init(&adapter->adv_rss_lock);
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 9c128462e..3435d8fbc 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -729,47 +729,68 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
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
-		dev_err(&adapter->pdev->dev, "Cannot set promiscuous mode, command %d pending\n",
-			adapter->current_op);
+		dev_err(&adapter->pdev->dev, "Cannot set promiscuous mode, command %d pending\n",															adapter->current_op);
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
-		dev_info(&adapter->pdev->dev, "%s is entering multicast promiscuous mode\n",
-			 adapter->netdev->name);
+	/* sanity check to prevent duplicate AQ calls */
+	if (!iavf_promiscuous_mode_changed(adapter)) {
+		adapter->aq_required &= ~IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE;
+		dev_dbg(&adapter->pdev->dev, "No change in promiscuous mode\n");
+		/* allow changes to promiscuous flags */
+		spin_unlock_bh(&adapter->current_netdev_promisc_flags_lock);
+		return;
 	}
 
-	if (!flags) {
-		if (adapter->flags & IAVF_FLAG_PROMISC_ON) {
-			adapter->flags &= ~IAVF_FLAG_PROMISC_ON;
-			adapter->aq_required &= ~IAVF_FLAG_AQ_RELEASE_PROMISC;
-			dev_info(&adapter->pdev->dev, "Leaving promiscuous mode\n");
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
+		dev_info(&adapter->pdev->dev, "Leaving promiscuous mode\n");
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
+		dev_info(&adapter->pdev->dev, "Entering promiscuous mode\n");
 
-		if (adapter->flags & IAVF_FLAG_ALLMULTI_ON) {
-			adapter->flags &= ~IAVF_FLAG_ALLMULTI_ON;
-			adapter->aq_required &= ~IAVF_FLAG_AQ_RELEASE_ALLMULTI;
-			dev_info(&adapter->pdev->dev, "%s is leaving multicast promiscuous mode\n",
-				 adapter->netdev->name);
-		}
-	}
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
