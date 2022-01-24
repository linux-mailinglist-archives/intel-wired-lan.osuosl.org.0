Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0934983C5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jan 2022 16:46:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 764B960E8C;
	Mon, 24 Jan 2022 15:46:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o--1TPXCo5oF; Mon, 24 Jan 2022 15:46:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 21AA760D60;
	Mon, 24 Jan 2022 15:46:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 883801BF2EC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jan 2022 15:46:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 82AB2828DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jan 2022 15:46:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L-mKFeFWEdJl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jan 2022 15:46:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7BE2682716
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jan 2022 15:46:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643039209; x=1674575209;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8ILrIAsEdSHfIw9inywlCV57oUw0siPAf1+ulHmAdhw=;
 b=jbtOPSKdVrFWWy+9Q16CDEeVddGWMFjtNAuUQWUWjDhE2ayql54Q8MVa
 QJRolTYYeHQKuUJkxWrbsbj3Keplx6UmjcX/hwLUL7B5mHz1fHKEhOSLX
 21ja7RhSnhSjnyJWOricYtEsglNeOtm0dk7NYPb8dsetS2SNlv+UqrY3y
 GxSxFqrzsiQSdGckJdQIe9N/xB2+zWCF17f07HMwTOKRKzIx1FihwoHX8
 Vqo4BhIC1gyM1PzkJetmN1+LsS43/AKX7ROXLlXvxZ28CsfUYCCatuEhH
 vs0ZiZupOMJof+15juiC5CbjB+JrhEdy1HRP3DJgeS2Z78TBzv19Rs0vg w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10236"; a="332426707"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="332426707"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 07:46:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="695462122"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by orsmga005.jf.intel.com with ESMTP; 24 Jan 2022 07:46:46 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 24 Jan 2022 16:45:53 +0100
Message-Id: <20220124154553.29782-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1] iavf: Add waiting for
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
 drivers/net/ethernet/intel/iavf/iavf.h        |  11 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 123 +++++++++++++++---
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  77 +++++++++--
 3 files changed, 183 insertions(+), 28 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index a746f44..2854af1 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -143,7 +143,8 @@ struct iavf_mac_filter {
 		u8 remove:1;        /* filter needs to be removed */
 		u8 add:1;           /* filter needs to be added */
 		u8 is_primary:1;    /* filter is a default VF MAC */
-		u8 padding:4;
+		u8 add_handled:1;   /* received response for filter add */
+		u8 padding:3;
 	};
 };
 
@@ -201,6 +202,10 @@ enum iavf_state_t {
 	__IAVF_RUNNING,		/* opened, working */
 };
 
+enum iavf_critical_section_t {
+	__IAVF_IN_CRITICAL_TASK		/* cannot be interrupted */
+};
+
 #define IAVF_CLOUD_FIELD_OMAC		0x01
 #define IAVF_CLOUD_FIELD_IMAC		0x02
 #define IAVF_CLOUD_FIELD_IVLAN	0x04
@@ -240,6 +245,7 @@ struct iavf_adapter {
 	struct work_struct adminq_task;
 	struct delayed_work client_task;
 	wait_queue_head_t down_waitqueue;
+	wait_queue_head_t vc_waitqueue;
 	struct iavf_q_vector *q_vectors;
 	struct list_head vlan_filter_list;
 	struct list_head mac_filter_list;
@@ -283,6 +289,7 @@ struct iavf_adapter {
 #define IAVF_FLAG_LEGACY_RX			BIT(15)
 #define IAVF_FLAG_REINIT_ITR_NEEDED		BIT(16)
 #define IAVF_FLAG_QUEUES_DISABLED		BIT(17)
+#define IAVF_FLAG_INITIAL_MAC_SET		BIT(23)
 /* duplicates for common code */
 #define IAVF_FLAG_DCB_ENABLED			0
 	/* flags for admin queue service task */
@@ -550,6 +557,8 @@ void iavf_enable_vlan_stripping_v2(struct iavf_adapter *adapter, u16 tpid);
 void iavf_disable_vlan_stripping_v2(struct iavf_adapter *adapter, u16 tpid);
 void iavf_enable_vlan_insertion_v2(struct iavf_adapter *adapter, u16 tpid);
 void iavf_disable_vlan_insertion_v2(struct iavf_adapter *adapter, u16 tpid);
+int iavf_replace_primary_mac(struct iavf_adapter *adapter,
+			     const u8 *new_mac);
 void
 iavf_set_vlan_offload_features(struct iavf_adapter *adapter,
 			       netdev_features_t prev_features,
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index a4c12a3..c816ecb 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -873,6 +873,7 @@ struct iavf_mac_filter *iavf_add_filter(struct iavf_adapter *adapter,
 
 		list_add_tail(&f->list, &adapter->mac_filter_list);
 		f->add = true;
+		f->add_handled = false;
 		f->is_new_mac = true;
 		f->is_primary = false;
 		adapter->aq_required |= IAVF_FLAG_AQ_ADD_MAC_FILTER;
@@ -884,47 +885,128 @@ struct iavf_mac_filter *iavf_add_filter(struct iavf_adapter *adapter,
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
+
+/**
+ * iavf_is_mac_set_handled - wait for a response to set MAC from PF
+ * @netdev: network interface device structure
+ * @macaddr: MAC address to set
+ *
+ * Returns true on success, false on failure
+ **/
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
 
-	return (f == NULL) ? -ENOMEM : 0;
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
+ **/
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
@@ -2338,6 +2420,8 @@ static void iavf_init_config_adapter(struct iavf_adapter *adapter)
 		ether_addr_copy(netdev->perm_addr, adapter->hw.mac.addr);
 	}
 
+	adapter->flags |= IAVF_FLAG_INITIAL_MAC_SET;
+
 	adapter->tx_desc_count = IAVF_DEFAULT_TXD;
 	adapter->rx_desc_count = IAVF_DEFAULT_RXD;
 	err = iavf_init_interrupt_scheme(adapter);
@@ -4483,6 +4567,9 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* Setup the wait queue for indicating transition to down status */
 	init_waitqueue_head(&adapter->down_waitqueue);
 
+	/* Setup the wait queue for indicating virtchannel events */
+	init_waitqueue_head(&adapter->vc_waitqueue);
+
 	return 0;
 
 err_ioremap:
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 60ee462..e1fa2fe 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -622,6 +622,8 @@ static void iavf_mac_add_ok(struct iavf_adapter *adapter)
 	spin_lock_bh(&adapter->mac_vlan_list_lock);
 	list_for_each_entry_safe(f, ftmp, &adapter->mac_filter_list, list) {
 		f->is_new_mac = false;
+		if (!f->add && !f->add_handled)
+			f->add_handled = true;
 	}
 	spin_unlock_bh(&adapter->mac_vlan_list_lock);
 }
@@ -642,6 +644,9 @@ static void iavf_mac_add_reject(struct iavf_adapter *adapter)
 		if (f->remove && ether_addr_equal(f->macaddr, netdev->dev_addr))
 			f->remove = false;
 
+		if (!f->add && !f->add_handled)
+			f->add_handled = true;
+
 		if (f->is_new_mac) {
 			list_del(&f->list);
 			kfree(f);
@@ -1938,6 +1943,7 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 			iavf_mac_add_reject(adapter);
 			/* restore administratively set MAC address */
 			ether_addr_copy(adapter->hw.mac.addr, netdev->dev_addr);
+			wake_up(&adapter->vc_waitqueue);
 			break;
 		case VIRTCHNL_OP_DEL_VLAN:
 			dev_err(&adapter->pdev->dev, "Failed to delete VLAN filter, error %s\n",
@@ -2087,7 +2093,13 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
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
@@ -2117,10 +2129,11 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
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
@@ -2156,6 +2169,10 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
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
@@ -2163,20 +2180,21 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 
 		iavf_process_config(adapter);
 
-		/* unlock crit_lock before acquiring rtnl_lock as other
-		 * processes holding rtnl_lock could be waiting for the same
-		 * crit_lock
+		/* Clear 'critical task' bit before acquiring rtnl_lock
+		 * as other process holding rtnl_lock could be waiting
+		 * for the same bit resulting in deadlock
 		 */
-		mutex_unlock(&adapter->crit_lock);
+		clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
 		/* VLAN capabilities can change during VFR, so make sure to
 		 * update the netdev features with the new capabilities
 		 */
 		rtnl_lock();
 		netdev_update_features(netdev);
 		rtnl_unlock();
-		if (iavf_lock_timeout(&adapter->crit_lock, 10000))
-			dev_warn(&adapter->pdev->dev, "failed to acquire crit_lock in %s\n",
-				 __FUNCTION__);
+		/* Set 'critical task' bit again */
+		while (test_and_set_bit(__IAVF_IN_CRITICAL_TASK,
+					&adapter->crit_section))
+			usleep_range(500, 1000);
 
 		/* Request VLAN offload settings */
 		if (VLAN_V2_ALLOWED(adapter))
@@ -2185,6 +2203,47 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 
 		iavf_set_queue_vlan_tag_loc(adapter);
 
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
+
 		}
 		break;
 	case VIRTCHNL_OP_ENABLE_QUEUES:
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
