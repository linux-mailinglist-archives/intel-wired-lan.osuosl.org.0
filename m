Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D7398780E90
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Aug 2023 17:06:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B3E9417BA;
	Fri, 18 Aug 2023 15:06:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B3E9417BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692371184;
	bh=bW2KQOvT+e224qNyIFwY89mnc6CWPyTMYzRM5TzbK8g=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=k/mQF6SGVhYgA3s26lF56twjL9peTziySuIvtBDJrcAKf/Q7BFyD+6b6dm9B57CEE
	 eMWkNL9OZH0gEXKPG8slz8sfQVwWjQyuS4eUvzd68XAHnCuO0cLTVisK6n3I8JRJmB
	 YB2y49SYr9k2Z0dwh1xAeb4yOvdiCjwz3zCvCgjaxEW/UXLHNMDvraol+80AqP41S2
	 JqTJf3wg0JjYkTHzE4uT9wyQ1BVPrxawaEG/0fScKR5fmkzVjl6feKUFKxErp5hzEf
	 jIevPNDWdZxEY0Xe+CGZFb6UBv5Dz0upeu/vO4sD3D9h4IPGdZCsAIiQJW8x+teIX2
	 PA0NUgf0kqSlg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XXPzwtagz1KY; Fri, 18 Aug 2023 15:06:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D6164139E;
	Fri, 18 Aug 2023 15:06:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D6164139E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DE7A21BF2EC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 15:06:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C417360BCE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 15:06:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C417360BCE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IbZjRlrFZnyJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Aug 2023 15:06:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A02B560B3C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 15:06:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A02B560B3C
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="370577353"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="370577353"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 08:06:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="878712049"
Received: from lettner-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.51.175])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 08:06:13 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 18 Aug 2023 09:05:58 -0600
Message-Id: <20230818150558.638998-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692371171; x=1723907171;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ashx7sQ2HbAzlBcIbvU2e9oG7my+WG8SHt4UOHBLC1I=;
 b=ni7BYm7z2d17Qk0gJfhTuuLHIn7CTvG104F9Eg7uD78toDJVROdVGLxY
 /gUEBN010F+q3eLxG+jSThBM2/mxeHqjdYtOjd9qocysSV7FzCrGhWdVy
 7MogFSPycm3DTtRTgVRUDNqLcy7Pi17LPTIFMcqq+Y+lQrSQ10J4IFqWw
 92gK4Hv5QRQgSstNySI/QdCW1DiRzSQglGWTfIBp2YMT19xIIDNjc7mOk
 RUK0BnFMuhdCgwCm9V+aTm/GjFg82HJKFuZuZcz1KvQI4z7nAwEY2xWEm
 yUz7cmUIz3DHfM3FimA7TStbxY8wRncI/FMre1qRnq72VIGuazr4ak+WY
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ni7BYm7z
Subject: [Intel-wired-lan] [PATCH iwl-net] iavf: Fix promiscuous mode
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

In iavf_set_promiscuous() check again to see which (if any) promiscuous
mode bits have changed when comparing the netdev->flags with the
adapter->flags. Use this to set the flags which get sent to the PF
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
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        | 16 ++--
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 43 +++++------
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 75 ++++++++++++-------
 3 files changed, 74 insertions(+), 60 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 8cbdebc5b698..00552a1a19c7 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -298,8 +298,6 @@ struct iavf_adapter {
 #define IAVF_FLAG_CLIENT_NEEDS_OPEN		BIT(10)
 #define IAVF_FLAG_CLIENT_NEEDS_CLOSE		BIT(11)
 #define IAVF_FLAG_CLIENT_NEEDS_L2_PARAMS	BIT(12)
-#define IAVF_FLAG_PROMISC_ON			BIT(13)
-#define IAVF_FLAG_ALLMULTI_ON			BIT(14)
 #define IAVF_FLAG_LEGACY_RX			BIT(15)
 #define IAVF_FLAG_REINIT_ITR_NEEDED		BIT(16)
 #define IAVF_FLAG_QUEUES_DISABLED		BIT(17)
@@ -325,10 +323,7 @@ struct iavf_adapter {
 #define IAVF_FLAG_AQ_SET_HENA			BIT_ULL(12)
 #define IAVF_FLAG_AQ_SET_RSS_KEY		BIT_ULL(13)
 #define IAVF_FLAG_AQ_SET_RSS_LUT		BIT_ULL(14)
-#define IAVF_FLAG_AQ_REQUEST_PROMISC		BIT_ULL(15)
-#define IAVF_FLAG_AQ_RELEASE_PROMISC		BIT_ULL(16)
-#define IAVF_FLAG_AQ_REQUEST_ALLMULTI		BIT_ULL(17)
-#define IAVF_FLAG_AQ_RELEASE_ALLMULTI		BIT_ULL(18)
+#define IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE	BIT_ULL(15)
 #define IAVF_FLAG_AQ_ENABLE_VLAN_STRIPPING	BIT_ULL(19)
 #define IAVF_FLAG_AQ_DISABLE_VLAN_STRIPPING	BIT_ULL(20)
 #define IAVF_FLAG_AQ_ENABLE_CHANNELS		BIT_ULL(21)
@@ -365,6 +360,12 @@ struct iavf_adapter {
 	(IAVF_EXTENDED_CAP_SEND_VLAN_V2 |		\
 	 IAVF_EXTENDED_CAP_RECV_VLAN_V2)
 
+	/* Lock to prevent possible clobbering of
+	 * current_netdev_promisc_flags
+	 */
+	spinlock_t current_netdev_promisc_flags_lock;
+	netdev_features_t current_netdev_promisc_flags;
+
 	/* OS defined structs */
 	struct net_device *netdev;
 	struct pci_dev *pdev;
@@ -551,7 +552,8 @@ void iavf_add_ether_addrs(struct iavf_adapter *adapter);
 void iavf_del_ether_addrs(struct iavf_adapter *adapter);
 void iavf_add_vlans(struct iavf_adapter *adapter);
 void iavf_del_vlans(struct iavf_adapter *adapter);
-void iavf_set_promiscuous(struct iavf_adapter *adapter, int flags);
+void iavf_set_promiscuous(struct iavf_adapter *adapter);
+bool iavf_promiscuous_mode_changed(struct iavf_adapter *adapter);
 void iavf_request_stats(struct iavf_adapter *adapter);
 int iavf_request_reset(struct iavf_adapter *adapter);
 void iavf_get_hena(struct iavf_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 1d24a71905d0..1e7c216ecee7 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1188,6 +1188,16 @@ static int iavf_addr_unsync(struct net_device *netdev, const u8 *addr)
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
@@ -1201,19 +1211,10 @@ static void iavf_set_rx_mode(struct net_device *netdev)
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
+	if (iavf_promiscuous_mode_changed(adapter))
+		adapter->aq_required |= IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE;
+	spin_unlock_bh(&adapter->current_netdev_promisc_flags_lock);
 }
 
 /**
@@ -2164,19 +2165,8 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
 		return 0;
 	}
 
-	if (adapter->aq_required & IAVF_FLAG_AQ_REQUEST_PROMISC) {
-		iavf_set_promiscuous(adapter, FLAG_VF_UNICAST_PROMISC |
-				       FLAG_VF_MULTICAST_PROMISC);
-		return 0;
-	}
-
-	if (adapter->aq_required & IAVF_FLAG_AQ_REQUEST_ALLMULTI) {
-		iavf_set_promiscuous(adapter, FLAG_VF_MULTICAST_PROMISC);
-		return 0;
-	}
-	if ((adapter->aq_required & IAVF_FLAG_AQ_RELEASE_PROMISC) ||
-	    (adapter->aq_required & IAVF_FLAG_AQ_RELEASE_ALLMULTI)) {
-		iavf_set_promiscuous(adapter, 0);
+	if (adapter->aq_required & IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE) {
+		iavf_set_promiscuous(adapter);
 		return 0;
 	}
 
@@ -4972,6 +4962,7 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	spin_lock_init(&adapter->cloud_filter_list_lock);
 	spin_lock_init(&adapter->fdir_fltr_lock);
 	spin_lock_init(&adapter->adv_rss_lock);
+	spin_lock_init(&adapter->current_netdev_promisc_flags_lock);
 
 	INIT_LIST_HEAD(&adapter->mac_filter_list);
 	INIT_LIST_HEAD(&adapter->vlan_filter_list);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index be3c007ce90a..e5b36d73e4d5 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -948,14 +948,14 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
 /**
  * iavf_set_promiscuous
  * @adapter: adapter structure
- * @flags: bitmask to control unicast/multicast promiscuous.
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
@@ -964,36 +964,57 @@ void iavf_set_promiscuous(struct iavf_adapter *adapter, int flags)
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
-		}
+	/* there are 2 bits, but only 3 states */
+	if (!(netdev->flags & IFF_PROMISC) &&
+	    netdev->flags & IFF_ALLMULTI) {
+		/* State 1  - only multicast promiscuous mode enabled
+		 * - !IFF_PROMISC && IFF_ALLMULTI
+		 */
+		flags = FLAG_VF_MULTICAST_PROMISC;
+		adapter->current_netdev_promisc_flags |= IFF_ALLMULTI;
+		adapter->current_netdev_promisc_flags &= ~IFF_PROMISC;
+		dev_info(&adapter->pdev->dev, "Entering multicast promiscuous mode\n");
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
 
-		if (adapter->flags & IAVF_FLAG_ALLMULTI_ON) {
-			adapter->flags &= ~IAVF_FLAG_ALLMULTI_ON;
-			adapter->aq_required &= ~IAVF_FLAG_AQ_RELEASE_ALLMULTI;
-			dev_info(&adapter->pdev->dev, "%s is leaving multicast promiscuous mode\n",
-				 adapter->netdev->name);
-		}
+		dev_info(&adapter->pdev->dev, "Entering promiscuous mode\n");
 	}
 
+	adapter->aq_required &= ~IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE;
+
+	/* allow changes to promiscuous flags */
+	spin_unlock_bh(&adapter->current_netdev_promisc_flags_lock);
+
 	adapter->current_op = VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE;
 	vpi.vsi_id = adapter->vsi_res->vsi_id;
 	vpi.flags = flags;
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
