Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC7A590089
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Aug 2022 17:44:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8FFF6108A;
	Thu, 11 Aug 2022 15:44:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E8FFF6108A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660232658;
	bh=0c/kEfKQdJFbJiRs+0iJEcDTIXMk/VjovneSS2Q1lLE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OEjl5pu00fw+0UTbtaaPBAl+oroGLx/TcY6uiudlS/I1lOAo28gKFLWkEgMh9VHW/
	 cnfacOHWx53hPD6Ae/Mt6koI+tvZRM0gArXkRx7XNufv7HeJ7CPUHsf8h02TC6vTlc
	 ruCrtBY72zNWoz9/mtFndfVzUbhg3dHDOm0ccaT+TanIUEuY9oep7UnOHfbeGz6hOB
	 d3iBBWYuapShPJe1xHAZ7SrF9COuWllsoeaaeriy1nYJjWcI75Gkip0p/3HpwcBf/R
	 ZVxuIotP7eheq/415lIyQsmEtH6k4dpoxHiUj4XWFt4zGWk/XpCQZsC6WEsNfR0+qg
	 AE3voaIC3cytg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YU_lkAxkiAzD; Thu, 11 Aug 2022 15:44:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6EE2B60B06;
	Thu, 11 Aug 2022 15:44:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6EE2B60B06
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0C04F1BF371
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 15:44:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DA729404C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 15:44:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DA729404C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JPNA-x9v_zlt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Aug 2022 15:44:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BBDA240165
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BBDA240165
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 15:44:09 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 12512616E2;
 Thu, 11 Aug 2022 15:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5FA5CC433C1;
 Thu, 11 Aug 2022 15:44:06 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Thu, 11 Aug 2022 11:41:09 -0400
Message-Id: <20220811154237.1531313-15-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220811154237.1531313-1-sashal@kernel.org>
References: <20220811154237.1531313-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1660232648;
 bh=JpWJuc87JdE7l8Oa/B1+9XhhPK7XEBMFR4T7SWPH+Tc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nqTpBtJdIUA6YGpnRGA+ZLbxB8+eHwv27H0SnRVScYA5aB0qbcQuGTf0CMUeJXWiq
 nNHolWtkFbz1pXGQ2Ob62NEvIlmLo040vSmu3uPkFHDcmQZtw1r5OpRjnOmBhsaSuv
 qxbDp7oGuTNfPrG5gbxicp22HoSE7il1jdgUuJVssR+2lUmLvU74jM0qR+aLNiqHhS
 XctGJlmldQ7fT0PU+V4tXuwZPEPrqbeBKHIuLpx6m24Lh/zXpM6yVloxyA2ciuyMzV
 I0z4UA5yHXdMngKZd2YL5NrUuyciffaCNE8TkDaXmiijLHdGPIkN0ALuVueUq+Cbh1
 +adwd+vu3Cohw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=nqTpBtJd
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.18 15/93] iavf: Add waiting for
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
Cc: Sasha Levin <sashal@kernel.org>, jesse.brandeburg@intel.com,
 edumazet@google.com, netdev@vger.kernel.org,
 Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mateusz Palczewski <mateusz.palczewski@intel.com>

[ Upstream commit 35a2443d0910fdd6ce29d4f724447ad7029e8f23 ]

Make iavf_set_mac synchronous by waiting for a response
from a PF. Without this iavf_set_mac is always returning
success even though set_mac can be rejected by a PF.
This ensures that when set_mac exits netdev MAC is updated.
This is needed for sending ARPs with correct MAC after
changing VF's MAC. This is also needed by bonding module.

Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |   7 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 127 +++++++++++++++---
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  61 ++++++++-
 3 files changed, 174 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 0ea0361cd86b..69703801d1b0 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -145,7 +145,8 @@ struct iavf_mac_filter {
 		u8 remove:1;        /* filter needs to be removed */
 		u8 add:1;           /* filter needs to be added */
 		u8 is_primary:1;    /* filter is a default VF MAC */
-		u8 padding:4;
+		u8 add_handled:1;   /* received response for filter add */
+		u8 padding:3;
 	};
 };
 
@@ -251,6 +252,7 @@ struct iavf_adapter {
 	struct work_struct adminq_task;
 	struct delayed_work client_task;
 	wait_queue_head_t down_waitqueue;
+	wait_queue_head_t vc_waitqueue;
 	struct iavf_q_vector *q_vectors;
 	struct list_head vlan_filter_list;
 	struct list_head mac_filter_list;
@@ -295,6 +297,7 @@ struct iavf_adapter {
 #define IAVF_FLAG_QUEUES_DISABLED		BIT(17)
 #define IAVF_FLAG_SETUP_NETDEV_FEATURES		BIT(18)
 #define IAVF_FLAG_REINIT_MSIX_NEEDED		BIT(20)
+#define IAVF_FLAG_INITIAL_MAC_SET		BIT(23)
 /* duplicates for common code */
 #define IAVF_FLAG_DCB_ENABLED			0
 	/* flags for admin queue service task */
@@ -567,6 +570,8 @@ void iavf_enable_vlan_stripping_v2(struct iavf_adapter *adapter, u16 tpid);
 void iavf_disable_vlan_stripping_v2(struct iavf_adapter *adapter, u16 tpid);
 void iavf_enable_vlan_insertion_v2(struct iavf_adapter *adapter, u16 tpid);
 void iavf_disable_vlan_insertion_v2(struct iavf_adapter *adapter, u16 tpid);
+int iavf_replace_primary_mac(struct iavf_adapter *adapter,
+			     const u8 *new_mac);
 void
 iavf_set_vlan_offload_features(struct iavf_adapter *adapter,
 			       netdev_features_t prev_features,
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 2e2c153ce46a..2ec3ebb397f3 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -978,6 +978,7 @@ struct iavf_mac_filter *iavf_add_filter(struct iavf_adapter *adapter,
 
 		list_add_tail(&f->list, &adapter->mac_filter_list);
 		f->add = true;
+		f->add_handled = false;
 		f->is_new_mac = true;
 		f->is_primary = ether_addr_equal(macaddr, adapter->hw.mac.addr);
 		adapter->aq_required |= IAVF_FLAG_AQ_ADD_MAC_FILTER;
@@ -989,47 +990,132 @@ struct iavf_mac_filter *iavf_add_filter(struct iavf_adapter *adapter,
 }
 
 /**
- * iavf_set_mac - NDO callback to set port mac address
- * @netdev: network interface device structure
- * @p: pointer to an address structure
+ * iavf_replace_primary_mac - Replace current primary address
+ * @adapter: board private structure
+ * @new_mac: new MAC address to be applied
  *
- * Returns 0 on success, negative on failure
+ * Replace current dev_addr and send request to PF for removal of previous
+ * primary MAC address filter and addition of new primary MAC filter.
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
+ * iavf_set_mac - NDO callback to set port MAC address
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
+	/* If this is an initial set MAC during VF spawn do not wait */
+	if (adapter->flags & IAVF_FLAG_INITIAL_MAC_SET) {
+		adapter->flags &= ~IAVF_FLAG_INITIAL_MAC_SET;
+		return 0;
+	}
+
+	if (handle_mac)
+		goto done;
+
+	ret = wait_event_interruptible_timeout(adapter->vc_waitqueue, false, msecs_to_jiffies(2500));
+
+	/* If ret < 0 then it means wait was interrupted.
+	 * If ret == 0 then it means we got a timeout.
+	 * else it means we got response for set MAC from PF,
+	 * check if netdev MAC was updated to requested MAC,
+	 * if yes then set MAC succeeded otherwise it failed return -EACCES
+	 */
+	if (ret < 0)
+		return ret;
+
+	if (!ret)
+		return -EAGAIN;
+
+done:
+	if (!ether_addr_equal(netdev->dev_addr, addr->sa_data))
+		return -EACCES;
+
+	return 0;
 }
 
 /**
@@ -2445,6 +2531,8 @@ static void iavf_init_config_adapter(struct iavf_adapter *adapter)
 		ether_addr_copy(netdev->perm_addr, adapter->hw.mac.addr);
 	}
 
+	adapter->flags |= IAVF_FLAG_INITIAL_MAC_SET;
+
 	adapter->tx_desc_count = IAVF_DEFAULT_TXD;
 	adapter->rx_desc_count = IAVF_DEFAULT_RXD;
 	err = iavf_init_interrupt_scheme(adapter);
@@ -4678,6 +4766,9 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* Setup the wait queue for indicating transition to down status */
 	init_waitqueue_head(&adapter->down_waitqueue);
 
+	/* Setup the wait queue for indicating virtchannel events */
+	init_waitqueue_head(&adapter->vc_waitqueue);
+
 	return 0;
 
 err_ioremap:
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 1603e99bae4a..7c98ac1fe458 100644
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
@@ -1970,6 +1975,7 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 			iavf_mac_add_reject(adapter);
 			/* restore administratively set MAC address */
 			ether_addr_copy(adapter->hw.mac.addr, netdev->dev_addr);
+			wake_up(&adapter->vc_waitqueue);
 			break;
 		case VIRTCHNL_OP_DEL_VLAN:
 			dev_err(&adapter->pdev->dev, "Failed to delete VLAN filter, error %s\n",
@@ -2134,7 +2140,13 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
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
@@ -2164,10 +2176,11 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
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
@@ -2203,6 +2216,10 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
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
@@ -2210,6 +2227,46 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 
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
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
