Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA8C102381
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Nov 2019 12:44:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ABCDD86890;
	Tue, 19 Nov 2019 11:44:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gSkN-RbDrJUZ; Tue, 19 Nov 2019 11:44:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C710A86896;
	Tue, 19 Nov 2019 11:44:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 007711BF83B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:44:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ED83A8651D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:44:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B_pwcdcuKPh4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Nov 2019 11:44:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A929586505
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:44:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 03:44:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,322,1569308400"; d="scan'208";a="200325779"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by orsmga008.jf.intel.com with ESMTP; 19 Nov 2019 03:44:29 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 19 Nov 2019 13:44:29 +0200
Message-Id: <20191119114429.42117-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 07/15] igc: Remove no need declaration
 of the igc_set_rx_mode
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

We want to avoid forward-declarations of function if possible.
Rearrange the igc_set_rx_mode function implementation.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 353 +++++++++++++++---------------
 1 file changed, 176 insertions(+), 177 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index a1746be345b9..7118a5605229 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -53,7 +53,6 @@ MODULE_DEVICE_TABLE(pci, igc_pci_tbl);
 
 /* forward declaration */
 static int igc_sw_init(struct igc_adapter *);
-static void igc_set_rx_mode(struct net_device *netdev);
 static void igc_write_itr(struct igc_q_vector *q_vector);
 static void igc_assign_vector(struct igc_q_vector *q_vector, int msix_vector);
 static void igc_free_q_vector(struct igc_adapter *adapter, int v_idx);
@@ -1992,6 +1991,182 @@ static void igc_nfc_filter_restore(struct igc_adapter *adapter)
 	spin_unlock(&adapter->nfc_lock);
 }
 
+/* If the filter to be added and an already existing filter express
+ * the same address and address type, it should be possible to only
+ * override the other configurations, for example the queue to steer
+ * traffic.
+ */
+static bool igc_mac_entry_can_be_used(const struct igc_mac_addr *entry,
+				      const u8 *addr, const u8 flags)
+{
+	if (!(entry->state & IGC_MAC_STATE_IN_USE))
+		return true;
+
+	if ((entry->state & IGC_MAC_STATE_SRC_ADDR) !=
+	    (flags & IGC_MAC_STATE_SRC_ADDR))
+		return false;
+
+	if (!ether_addr_equal(addr, entry->addr))
+		return false;
+
+	return true;
+}
+
+/* Add a MAC filter for 'addr' directing matching traffic to 'queue',
+ * 'flags' is used to indicate what kind of match is made, match is by
+ * default for the destination address, if matching by source address
+ * is desired the flag IGC_MAC_STATE_SRC_ADDR can be used.
+ */
+static int igc_add_mac_filter(struct igc_adapter *adapter,
+			      const u8 *addr, const u8 queue)
+{
+	struct igc_hw *hw = &adapter->hw;
+	int rar_entries = hw->mac.rar_entry_count;
+	int i;
+
+	if (is_zero_ether_addr(addr))
+		return -EINVAL;
+
+	/* Search for the first empty entry in the MAC table.
+	 * Do not touch entries at the end of the table reserved for the VF MAC
+	 * addresses.
+	 */
+	for (i = 0; i < rar_entries; i++) {
+		if (!igc_mac_entry_can_be_used(&adapter->mac_table[i],
+					       addr, 0))
+			continue;
+
+		ether_addr_copy(adapter->mac_table[i].addr, addr);
+		adapter->mac_table[i].queue = queue;
+		adapter->mac_table[i].state |= IGC_MAC_STATE_IN_USE;
+
+		igc_rar_set_index(adapter, i);
+		return i;
+	}
+
+	return -ENOSPC;
+}
+
+/* Remove a MAC filter for 'addr' directing matching traffic to
+ * 'queue', 'flags' is used to indicate what kind of match need to be
+ * removed, match is by default for the destination address, if
+ * matching by source address is to be removed the flag
+ * IGC_MAC_STATE_SRC_ADDR can be used.
+ */
+static int igc_del_mac_filter(struct igc_adapter *adapter,
+			      const u8 *addr, const u8 queue)
+{
+	struct igc_hw *hw = &adapter->hw;
+	int rar_entries = hw->mac.rar_entry_count;
+	int i;
+
+	if (is_zero_ether_addr(addr))
+		return -EINVAL;
+
+	/* Search for matching entry in the MAC table based on given address
+	 * and queue. Do not touch entries at the end of the table reserved
+	 * for the VF MAC addresses.
+	 */
+	for (i = 0; i < rar_entries; i++) {
+		if (!(adapter->mac_table[i].state & IGC_MAC_STATE_IN_USE))
+			continue;
+		if (adapter->mac_table[i].state != 0)
+			continue;
+		if (adapter->mac_table[i].queue != queue)
+			continue;
+		if (!ether_addr_equal(adapter->mac_table[i].addr, addr))
+			continue;
+
+		/* When a filter for the default address is "deleted",
+		 * we return it to its initial configuration
+		 */
+		if (adapter->mac_table[i].state & IGC_MAC_STATE_DEFAULT) {
+			adapter->mac_table[i].state =
+				IGC_MAC_STATE_DEFAULT | IGC_MAC_STATE_IN_USE;
+			adapter->mac_table[i].queue = 0;
+		} else {
+			adapter->mac_table[i].state = 0;
+			adapter->mac_table[i].queue = 0;
+			memset(adapter->mac_table[i].addr, 0, ETH_ALEN);
+		}
+
+		igc_rar_set_index(adapter, i);
+		return 0;
+	}
+
+	return -ENOENT;
+}
+
+static int igc_uc_sync(struct net_device *netdev, const unsigned char *addr)
+{
+	struct igc_adapter *adapter = netdev_priv(netdev);
+	int ret;
+
+	ret = igc_add_mac_filter(adapter, addr, adapter->num_rx_queues);
+
+	return min_t(int, ret, 0);
+}
+
+static int igc_uc_unsync(struct net_device *netdev, const unsigned char *addr)
+{
+	struct igc_adapter *adapter = netdev_priv(netdev);
+
+	igc_del_mac_filter(adapter, addr, adapter->num_rx_queues);
+
+	return 0;
+}
+
+/**
+ * igc_set_rx_mode - Secondary Unicast, Multicast and Promiscuous mode set
+ * @netdev: network interface device structure
+ *
+ * The set_rx_mode entry point is called whenever the unicast or multicast
+ * address lists or the network interface flags are updated.  This routine is
+ * responsible for configuring the hardware for proper unicast, multicast,
+ * promiscuous mode, and all-multi behavior.
+ */
+static void igc_set_rx_mode(struct net_device *netdev)
+{
+	struct igc_adapter *adapter = netdev_priv(netdev);
+	struct igc_hw *hw = &adapter->hw;
+	u32 rctl = 0, rlpml = MAX_JUMBO_FRAME_SIZE;
+	int count;
+
+	/* Check for Promiscuous and All Multicast modes */
+	if (netdev->flags & IFF_PROMISC) {
+		rctl |= IGC_RCTL_UPE | IGC_RCTL_MPE;
+	} else {
+		if (netdev->flags & IFF_ALLMULTI) {
+			rctl |= IGC_RCTL_MPE;
+		} else {
+			/* Write addresses to the MTA, if the attempt fails
+			 * then we should just turn on promiscuous mode so
+			 * that we can at least receive multicast traffic
+			 */
+			count = igc_write_mc_addr_list(netdev);
+			if (count < 0)
+				rctl |= IGC_RCTL_MPE;
+		}
+	}
+
+	/* Write addresses to available RAR registers, if there is not
+	 * sufficient space to store all the addresses then enable
+	 * unicast promiscuous mode
+	 */
+	if (__dev_uc_sync(netdev, igc_uc_sync, igc_uc_unsync))
+		rctl |= IGC_RCTL_UPE;
+
+	/* update state of unicast and multicast */
+	rctl |= rd32(IGC_RCTL) & ~(IGC_RCTL_UPE | IGC_RCTL_MPE);
+	wr32(IGC_RCTL, rctl);
+
+#if (PAGE_SIZE < 8192)
+	if (adapter->max_frame_size <= IGC_MAX_FRAME_BUILD_SKB)
+		rlpml = IGC_MAX_FRAME_BUILD_SKB;
+#endif
+	wr32(IGC_RLPML, rlpml);
+}
+
 /**
  * igc_configure - configure the hardware for RX and TX
  * @adapter: private board structure
@@ -2469,27 +2644,6 @@ igc_features_check(struct sk_buff *skb, struct net_device *dev,
 	return features;
 }
 
-/* If the filter to be added and an already existing filter express
- * the same address and address type, it should be possible to only
- * override the other configurations, for example the queue to steer
- * traffic.
- */
-static bool igc_mac_entry_can_be_used(const struct igc_mac_addr *entry,
-				      const u8 *addr, const u8 flags)
-{
-	if (!(entry->state & IGC_MAC_STATE_IN_USE))
-		return true;
-
-	if ((entry->state & IGC_MAC_STATE_SRC_ADDR) !=
-	    (flags & IGC_MAC_STATE_SRC_ADDR))
-		return false;
-
-	if (!ether_addr_equal(addr, entry->addr))
-		return false;
-
-	return true;
-}
-
 /* Add a MAC filter for 'addr' directing matching traffic to 'queue',
  * 'flags' is used to indicate what kind of match is made, match is by
  * default for the destination address, if matching by source address
@@ -2590,161 +2744,6 @@ int igc_del_mac_steering_filter(struct igc_adapter *adapter,
 					IGC_MAC_STATE_QUEUE_STEERING | flags);
 }
 
-/* Add a MAC filter for 'addr' directing matching traffic to 'queue',
- * 'flags' is used to indicate what kind of match is made, match is by
- * default for the destination address, if matching by source address
- * is desired the flag IGC_MAC_STATE_SRC_ADDR can be used.
- */
-static int igc_add_mac_filter(struct igc_adapter *adapter,
-			      const u8 *addr, const u8 queue)
-{
-	struct igc_hw *hw = &adapter->hw;
-	int rar_entries = hw->mac.rar_entry_count;
-	int i;
-
-	if (is_zero_ether_addr(addr))
-		return -EINVAL;
-
-	/* Search for the first empty entry in the MAC table.
-	 * Do not touch entries at the end of the table reserved for the VF MAC
-	 * addresses.
-	 */
-	for (i = 0; i < rar_entries; i++) {
-		if (!igc_mac_entry_can_be_used(&adapter->mac_table[i],
-					       addr, 0))
-			continue;
-
-		ether_addr_copy(adapter->mac_table[i].addr, addr);
-		adapter->mac_table[i].queue = queue;
-		adapter->mac_table[i].state |= IGC_MAC_STATE_IN_USE;
-
-		igc_rar_set_index(adapter, i);
-		return i;
-	}
-
-	return -ENOSPC;
-}
-
-/* Remove a MAC filter for 'addr' directing matching traffic to
- * 'queue', 'flags' is used to indicate what kind of match need to be
- * removed, match is by default for the destination address, if
- * matching by source address is to be removed the flag
- * IGC_MAC_STATE_SRC_ADDR can be used.
- */
-static int igc_del_mac_filter(struct igc_adapter *adapter,
-			      const u8 *addr, const u8 queue)
-{
-	struct igc_hw *hw = &adapter->hw;
-	int rar_entries = hw->mac.rar_entry_count;
-	int i;
-
-	if (is_zero_ether_addr(addr))
-		return -EINVAL;
-
-	/* Search for matching entry in the MAC table based on given address
-	 * and queue. Do not touch entries at the end of the table reserved
-	 * for the VF MAC addresses.
-	 */
-	for (i = 0; i < rar_entries; i++) {
-		if (!(adapter->mac_table[i].state & IGC_MAC_STATE_IN_USE))
-			continue;
-		if (adapter->mac_table[i].state != 0)
-			continue;
-		if (adapter->mac_table[i].queue != queue)
-			continue;
-		if (!ether_addr_equal(adapter->mac_table[i].addr, addr))
-			continue;
-
-		/* When a filter for the default address is "deleted",
-		 * we return it to its initial configuration
-		 */
-		if (adapter->mac_table[i].state & IGC_MAC_STATE_DEFAULT) {
-			adapter->mac_table[i].state =
-				IGC_MAC_STATE_DEFAULT | IGC_MAC_STATE_IN_USE;
-			adapter->mac_table[i].queue = 0;
-		} else {
-			adapter->mac_table[i].state = 0;
-			adapter->mac_table[i].queue = 0;
-			memset(adapter->mac_table[i].addr, 0, ETH_ALEN);
-		}
-
-		igc_rar_set_index(adapter, i);
-		return 0;
-	}
-
-	return -ENOENT;
-}
-
-static int igc_uc_sync(struct net_device *netdev, const unsigned char *addr)
-{
-	struct igc_adapter *adapter = netdev_priv(netdev);
-	int ret;
-
-	ret = igc_add_mac_filter(adapter, addr, adapter->num_rx_queues);
-
-	return min_t(int, ret, 0);
-}
-
-static int igc_uc_unsync(struct net_device *netdev, const unsigned char *addr)
-{
-	struct igc_adapter *adapter = netdev_priv(netdev);
-
-	igc_del_mac_filter(adapter, addr, adapter->num_rx_queues);
-
-	return 0;
-}
-
-/**
- * igc_set_rx_mode - Secondary Unicast, Multicast and Promiscuous mode set
- * @netdev: network interface device structure
- *
- * The set_rx_mode entry point is called whenever the unicast or multicast
- * address lists or the network interface flags are updated.  This routine is
- * responsible for configuring the hardware for proper unicast, multicast,
- * promiscuous mode, and all-multi behavior.
- */
-static void igc_set_rx_mode(struct net_device *netdev)
-{
-	struct igc_adapter *adapter = netdev_priv(netdev);
-	struct igc_hw *hw = &adapter->hw;
-	u32 rctl = 0, rlpml = MAX_JUMBO_FRAME_SIZE;
-	int count;
-
-	/* Check for Promiscuous and All Multicast modes */
-	if (netdev->flags & IFF_PROMISC) {
-		rctl |= IGC_RCTL_UPE | IGC_RCTL_MPE;
-	} else {
-		if (netdev->flags & IFF_ALLMULTI) {
-			rctl |= IGC_RCTL_MPE;
-		} else {
-			/* Write addresses to the MTA, if the attempt fails
-			 * then we should just turn on promiscuous mode so
-			 * that we can at least receive multicast traffic
-			 */
-			count = igc_write_mc_addr_list(netdev);
-			if (count < 0)
-				rctl |= IGC_RCTL_MPE;
-		}
-	}
-
-	/* Write addresses to available RAR registers, if there is not
-	 * sufficient space to store all the addresses then enable
-	 * unicast promiscuous mode
-	 */
-	if (__dev_uc_sync(netdev, igc_uc_sync, igc_uc_unsync))
-		rctl |= IGC_RCTL_UPE;
-
-	/* update state of unicast and multicast */
-	rctl |= rd32(IGC_RCTL) & ~(IGC_RCTL_UPE | IGC_RCTL_MPE);
-	wr32(IGC_RCTL, rctl);
-
-#if (PAGE_SIZE < 8192)
-	if (adapter->max_frame_size <= IGC_MAX_FRAME_BUILD_SKB)
-		rlpml = IGC_MAX_FRAME_BUILD_SKB;
-#endif
-	wr32(IGC_RLPML, rlpml);
-}
-
 /**
  * igc_msix_other - msix other interrupt handler
  * @irq: interrupt number
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
