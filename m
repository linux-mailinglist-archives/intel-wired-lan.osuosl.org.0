Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F453502721
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Apr 2022 10:53:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 381F561056;
	Fri, 15 Apr 2022 08:53:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 56YDin-xDqSQ; Fri, 15 Apr 2022 08:53:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D570661054;
	Fri, 15 Apr 2022 08:53:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 76E221BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 08:53:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 715AC40B78
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 08:53:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s781VM4tG090 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Apr 2022 08:53:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 54858400CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 08:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650012789; x=1681548789;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dSVirAW8FqKpEM8lHylKWy2xweS5KEbvAAv1Sh7VkLM=;
 b=Lr3bbOQhWfEkn3T6yN4PflY+Ik7pkZqciXSC6O3wbm2EOmcdrWagD5tR
 WsBFIs3arzzGStTzFifW75+qBateE9Qh9+SGhzNIvWrnNQljlvVwTwSBQ
 wxInaFzIcy6DXi5nVo1UuafBcw08Fg6pkRMLRJpMGAjRMTRT8NCtn+6aK
 c9Jk4znv3OLwjlyDQZIlOPSqkUO5I6xv89gkDJK+wE3I4/rKTZdxX6i15
 3jQ1Ta7hmYPHj6arsoxfQgWIyCdynA4/MuyL8gSVlbTacqd1V1HBPXp1D
 kRaCn+xjyUk+3w0X5fIs3OMl6JLdkDuyUkBr82Z0oz/Pqp75jvsS/O7bm w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="262875775"
X-IronPort-AV: E=Sophos;i="5.90,262,1643702400"; d="scan'208";a="262875775"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 01:52:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,262,1643702400"; d="scan'208";a="855873335"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by fmsmga005.fm.intel.com with ESMTP; 15 Apr 2022 01:52:56 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 Apr 2022 10:50:09 +0200
Message-Id: <20220415085009.2117-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v3] iavf: Add waiting for
 response from PF in set mac
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Make iavf_set_mac synchronous by waiting for a response
from a PF. Without this iavf_set_mac is always returning
success even though set_mac can be rejected by a PF.
This ensures that when set_mac exits netdev MAC is updated.
This is needed for sending ARPs with correct MAC after
changing VF's MAC. This is also needed by bonding module.

Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 v3: Resent the patch to apply to next-queue
 v2: Changed __IAVF_IN_CRITICAL_TASK to crit_lock 
---
 drivers/net/ethernet/intel/iavf/iavf.h        |   7 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 123 +++++++++++++++---
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  61 ++++++++-
 3 files changed, 170 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 49aed3e..fda1198 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -146,7 +146,8 @@ struct iavf_mac_filter {
 		u8 remove:1;        /* filter needs to be removed */
 		u8 add:1;           /* filter needs to be added */
 		u8 is_primary:1;    /* filter is a default VF MAC */
-		u8 padding:4;
+		u8 add_handled:1;   /* received response for filter add */
+		u8 padding:3;
 	};
 };
 
@@ -248,6 +249,7 @@ struct iavf_adapter {
 	struct work_struct adminq_task;
 	struct delayed_work client_task;
 	wait_queue_head_t down_waitqueue;
+	wait_queue_head_t vc_waitqueue;
 	struct iavf_q_vector *q_vectors;
 	struct list_head vlan_filter_list;
 	struct list_head mac_filter_list;
@@ -292,6 +294,7 @@ struct iavf_adapter {
 #define IAVF_FLAG_QUEUES_DISABLED		BIT(17)
 #define IAVF_FLAG_SETUP_NETDEV_FEATURES		BIT(18)
 #define IAVF_FLAG_REINIT_MSIX_NEEDED		BIT(20)
+#define IAVF_FLAG_INITIAL_MAC_SET		BIT(23)
 /* duplicates for common code */
 #define IAVF_FLAG_DCB_ENABLED			0
 	/* flags for admin queue service task */
@@ -559,6 +562,8 @@ void iavf_enable_vlan_stripping_v2(struct iavf_adapter *adapter, u16 tpid);
 void iavf_disable_vlan_stripping_v2(struct iavf_adapter *adapter, u16 tpid);
 void iavf_enable_vlan_insertion_v2(struct iavf_adapter *adapter, u16 tpid);
 void iavf_disable_vlan_insertion_v2(struct iavf_adapter *adapter, u16 tpid);
+int iavf_replace_primary_mac(struct iavf_adapter *adapter,
+			     const u8 *new_mac);
 void
 iavf_set_vlan_offload_features(struct iavf_adapter *adapter,
 			       netdev_features_t prev_features,
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 7dfcf78..57c51a1 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -983,6 +983,7 @@ struct iavf_mac_filter *iavf_add_filter(struct iavf_adapter *adapter,
 
 		list_add_tail(&f->list, &adapter->mac_filter_list);
 		f->add = true;
+		f->add_handled = false;
 		f->is_new_mac = true;
 		f->is_primary = false;
 		adapter->aq_required |= IAVF_FLAG_AQ_ADD_MAC_FILTER;
@@ -994,47 +995,128 @@ struct iavf_mac_filter *iavf_add_filter(struct iavf_adapter *adapter,
 }
 
 /**
- * iavf_set_mac - NDO callback to set port mac address
- * @netdev: network interface device structure
- * @p: pointer to an address structure
+ * iavf_replace_primary_mac - Replace current primary address
+ * @adapter: board private structure
+ * @new_mac: new mac address to be applied
  *
- * Returns 0 on success, negative on failure
+ * Replace current dev_addr and send request to PF for removal of previous
+ * primary mac address filter and addition of new primary mac filter.
+ * Return 0 for success, -ENOMEM for failure.
+ *
+ * Do not call this with mac_vlan_list_lock!
  **/
-static int iavf_set_mac(struct net_device *netdev, void *p)
+int iavf_replace_primary_mac(struct iavf_adapter *adapter,
+			     const u8 *new_mac)
 {
-	struct iavf_adapter *adapter = netdev_priv(netdev);
 	struct iavf_hw *hw = &adapter->hw;
 	struct iavf_mac_filter *f;
-	struct sockaddr *addr = p;
-
-	if (!is_valid_ether_addr(addr->sa_data))
-		return -EADDRNOTAVAIL;
-
-	if (ether_addr_equal(netdev->dev_addr, addr->sa_data))
-		return 0;
 
 	spin_lock_bh(&adapter->mac_vlan_list_lock);
 
+	list_for_each_entry(f, &adapter->mac_filter_list, list) {
+		f->is_primary = false;
+	}
+
 	f = iavf_find_filter(adapter, hw->mac.addr);
 	if (f) {
 		f->remove = true;
-		f->is_primary = true;
 		adapter->aq_required |= IAVF_FLAG_AQ_DEL_MAC_FILTER;
 	}
 
-	f = iavf_add_filter(adapter, addr->sa_data);
+	f = iavf_add_filter(adapter, new_mac);
+
 	if (f) {
+		/* Always send the request to add if changing primary MAC
+		 * even if filter is already present on the list
+		 */
 		f->is_primary = true;
-		ether_addr_copy(hw->mac.addr, addr->sa_data);
+		f->add = true;
+		adapter->aq_required |= IAVF_FLAG_AQ_ADD_MAC_FILTER;
+		ether_addr_copy(hw->mac.addr, new_mac);
 	}
 
 	spin_unlock_bh(&adapter->mac_vlan_list_lock);
 
 	/* schedule the watchdog task to immediately process the request */
-	if (f)
+	if (f) {
 		queue_work(iavf_wq, &adapter->watchdog_task.work);
+		return 0;
+	}
+	return -ENOMEM;
+}
 
-	return (f == NULL) ? -ENOMEM : 0;
+/**
+ * iavf_is_mac_set_handled - wait for a response to set MAC from PF
+ * @netdev: network interface device structure
+ * @macaddr: MAC address to set
+ *
+ * Returns true on success, false on failure
+ */
+static bool iavf_is_mac_set_handled(struct net_device *netdev,
+				    const u8 *macaddr)
+{
+	struct iavf_adapter *adapter = netdev_priv(netdev);
+	struct iavf_mac_filter *f;
+	bool ret = false;
+
+	spin_lock_bh(&adapter->mac_vlan_list_lock);
+
+	f = iavf_find_filter(adapter, macaddr);
+
+	if (!f || (!f->add && f->add_handled))
+		ret = true;
+
+	spin_unlock_bh(&adapter->mac_vlan_list_lock);
+
+	return ret;
+}
+
+/**
+ * iavf_set_mac - NDO callback to set port mac address
+ * @netdev: network interface device structure
+ * @p: pointer to an address structure
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int iavf_set_mac(struct net_device *netdev, void *p)
+{
+	struct iavf_adapter *adapter = netdev_priv(netdev);
+	struct sockaddr *addr = p;
+	bool handle_mac = iavf_is_mac_set_handled(netdev, addr->sa_data);
+	int ret;
+
+	if (!is_valid_ether_addr(addr->sa_data))
+		return -EADDRNOTAVAIL;
+
+	ret = iavf_replace_primary_mac(adapter, addr->sa_data);
+
+	if (ret)
+		return ret;
+
+	/* If this is an initial set mac during VF spawn do not wait */
+	if (adapter->flags & IAVF_FLAG_INITIAL_MAC_SET) {
+		adapter->flags &= ~IAVF_FLAG_INITIAL_MAC_SET;
+		return 0;
+	}
+
+	ret = wait_event_interruptible_timeout(adapter->vc_waitqueue, handle_mac, msecs_to_jiffies(2500));
+
+	/* If ret < 0 then it means wait was interrupted.
+	 * If ret == 0 then it means we got a timeout.
+	 * If ret > 0 it means we got response for set MAC from PF,
+	 * check if netdev MAC was updated to requested MAC,
+	 * if yes then set MAC succeeded otherwise it failed return -EACCES
+	 */
+	if (ret < 0)
+		return ret;
+
+	if (ret == 0)
+		return -EAGAIN;
+
+	if (ret > 0 && !ether_addr_equal(netdev->dev_addr, addr->sa_data))
+		return -EACCES;
+
+	return 0;
 }
 
 /**
@@ -2451,6 +2533,8 @@ static void iavf_init_config_adapter(struct iavf_adapter *adapter)
 		ether_addr_copy(netdev->perm_addr, adapter->hw.mac.addr);
 	}
 
+	adapter->flags |= IAVF_FLAG_INITIAL_MAC_SET;
+
 	adapter->tx_desc_count = IAVF_DEFAULT_TXD;
 	adapter->rx_desc_count = IAVF_DEFAULT_RXD;
 	err = iavf_init_interrupt_scheme(adapter);
@@ -4681,6 +4765,9 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* Setup the wait queue for indicating transition to down status */
 	init_waitqueue_head(&adapter->down_waitqueue);
 
+	/* Setup the wait queue for indicating virtchannel events */
+	init_waitqueue_head(&adapter->vc_waitqueue);
+
 	return 0;
 
 err_ioremap:
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 782450d..e2b4ba9 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -598,6 +598,8 @@ static void iavf_mac_add_ok(struct iavf_adapter *adapter)
 	spin_lock_bh(&adapter->mac_vlan_list_lock);
 	list_for_each_entry_safe(f, ftmp, &adapter->mac_filter_list, list) {
 		f->is_new_mac = false;
+		if (!f->add && !f->add_handled)
+			f->add_handled = true;
 	}
 	spin_unlock_bh(&adapter->mac_vlan_list_lock);
 }
@@ -618,6 +620,9 @@ static void iavf_mac_add_reject(struct iavf_adapter *adapter)
 		if (f->remove && ether_addr_equal(f->macaddr, netdev->dev_addr))
 			f->remove = false;
 
+		if (!f->add && !f->add_handled)
+			f->add_handled = true;
+
 		if (f->is_new_mac) {
 			list_del(&f->list);
 			kfree(f);
@@ -1932,6 +1937,7 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 			iavf_mac_add_reject(adapter);
 			/* restore administratively set MAC address */
 			ether_addr_copy(adapter->hw.mac.addr, netdev->dev_addr);
+			wake_up(&adapter->vc_waitqueue);
 			break;
 		case VIRTCHNL_OP_DEL_VLAN:
 			dev_err(&adapter->pdev->dev, "Failed to delete VLAN filter, error %s\n",
@@ -2091,7 +2097,13 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		if (!v_retval)
 			iavf_mac_add_ok(adapter);
 		if (!ether_addr_equal(netdev->dev_addr, adapter->hw.mac.addr))
-			eth_hw_addr_set(netdev, adapter->hw.mac.addr);
+			if (!ether_addr_equal(netdev->dev_addr,
+					      adapter->hw.mac.addr)) {
+				netif_addr_lock_bh(netdev);
+				eth_hw_addr_set(netdev, adapter->hw.mac.addr);
+				netif_addr_unlock_bh(netdev);
+			}
+		wake_up(&adapter->vc_waitqueue);
 		break;
 	case VIRTCHNL_OP_GET_STATS: {
 		struct iavf_eth_stats *stats =
@@ -2121,10 +2133,11 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 			/* restore current mac address */
 			ether_addr_copy(adapter->hw.mac.addr, netdev->dev_addr);
 		} else {
+			netif_addr_lock_bh(netdev);
 			/* refresh current mac address if changed */
-			eth_hw_addr_set(netdev, adapter->hw.mac.addr);
 			ether_addr_copy(netdev->perm_addr,
 					adapter->hw.mac.addr);
+			netif_addr_unlock_bh(netdev);
 		}
 		spin_lock_bh(&adapter->mac_vlan_list_lock);
 		iavf_add_filter(adapter, adapter->hw.mac.addr);
@@ -2160,6 +2173,10 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		}
 		fallthrough;
 	case VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS: {
+		struct iavf_mac_filter *f;
+		bool was_mac_changed;
+		u64 aq_required = 0;
+
 		if (v_opcode == VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS)
 			memcpy(&adapter->vlan_v2_caps, msg,
 			       min_t(u16, msglen,
@@ -2167,6 +2184,46 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 
 		iavf_process_config(adapter);
 		adapter->flags |= IAVF_FLAG_SETUP_NETDEV_FEATURES;
+		was_mac_changed = !ether_addr_equal(netdev->dev_addr,
+						    adapter->hw.mac.addr);
+
+		spin_lock_bh(&adapter->mac_vlan_list_lock);
+
+		/* re-add all MAC filters */
+		list_for_each_entry(f, &adapter->mac_filter_list, list) {
+			if (was_mac_changed &&
+			    ether_addr_equal(netdev->dev_addr, f->macaddr))
+				ether_addr_copy(f->macaddr,
+						adapter->hw.mac.addr);
+
+			f->is_new_mac = true;
+			f->add = true;
+			f->add_handled = false;
+			f->remove = false;
+		}
+
+		/* re-add all VLAN filters */
+		if (VLAN_FILTERING_ALLOWED(adapter)) {
+			struct iavf_vlan_filter *vlf;
+
+			if (!list_empty(&adapter->vlan_filter_list)) {
+				list_for_each_entry(vlf,
+						    &adapter->vlan_filter_list,
+						    list)
+					vlf->add = true;
+
+				aq_required |= IAVF_FLAG_AQ_ADD_VLAN_FILTER;
+			}
+		}
+
+		spin_unlock_bh(&adapter->mac_vlan_list_lock);
+
+		netif_addr_lock_bh(netdev);
+		eth_hw_addr_set(netdev, adapter->hw.mac.addr);
+		netif_addr_unlock_bh(netdev);
+
+		adapter->aq_required |= IAVF_FLAG_AQ_ADD_MAC_FILTER |
+			aq_required;
 		}
 		break;
 	case VIRTCHNL_OP_ENABLE_QUEUES:
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
