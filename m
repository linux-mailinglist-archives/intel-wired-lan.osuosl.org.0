Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E166718A8DA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2020 00:02:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 97E79203E6;
	Wed, 18 Mar 2020 23:02:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EKFrC7EkokEU; Wed, 18 Mar 2020 23:02:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F2CB32042D;
	Wed, 18 Mar 2020 23:02:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 17C3F1BF335
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 23:02:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1133386610
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 23:02:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ukrf-whwqsto for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2020 23:02:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4DBD486637
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 23:02:07 +0000 (UTC)
IronPort-SDR: NILB+lWClM6tJrWKfJX+jbdnzD3BfIKx9qylBHweR9fC2Y8hueeq/mYnDI/PUe1tJ84Jjfep0O
 63Sp+z+9B8mg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 16:02:06 -0700
IronPort-SDR: R+As+uLWeSoaN1cCxio3CA8ec6Dh1EN3VReJ1obNZ3qj6kaVPCb4SUBU7kkOzvld8tik2Tx/ZQ
 kgyyEhJlLs1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,569,1574150400"; d="scan'208";a="248341767"
Received: from ymtomada-mobl.amr.corp.intel.com ([10.251.21.179])
 by orsmga006.jf.intel.com with ESMTP; 18 Mar 2020 16:02:06 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 18 Mar 2020 16:00:51 -0700
Message-Id: <20200318230102.36952-2-andre.guedes@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200318230102.36952-1-andre.guedes@intel.com>
References: <20200318230102.36952-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 01/12] igc: Remove duplicate code in MAC
 filtering logic
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

This patch does a code refactoring in the MAC address filtering logic to
get rid of some duplicate code.

IGC driver has two functions to add MAC address filters that are pretty
much the same: igc_add_mac_filter() and igc_add_mac_filter_flags(). The
only difference is that the latter allows the callee to specify the
'flags' parameter while the former has it hardcoded as zero. The same
rationale applies to filter deletion counterparts.

So this patch refactors igc_add_mac_filter() and igc_del_mac_filter() so
they handle the 'flags' parameters, removes the _flags() functions, and
fixes callees accordingly.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 112 +++-------------------
 1 file changed, 13 insertions(+), 99 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index a964ef18ac0c..107e9f86bd0a 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2192,8 +2192,8 @@ static bool igc_mac_entry_can_be_used(const struct igc_mac_addr *entry,
  * default for the destination address, if matching by source address
  * is desired the flag IGC_MAC_STATE_SRC_ADDR can be used.
  */
-static int igc_add_mac_filter(struct igc_adapter *adapter,
-			      const u8 *addr, const u8 queue)
+static int igc_add_mac_filter(struct igc_adapter *adapter, const u8 *addr,
+			      const u8 queue, const u8 flags)
 {
 	struct igc_hw *hw = &adapter->hw;
 	int rar_entries = hw->mac.rar_entry_count;
@@ -2208,12 +2208,12 @@ static int igc_add_mac_filter(struct igc_adapter *adapter,
 	 */
 	for (i = 0; i < rar_entries; i++) {
 		if (!igc_mac_entry_can_be_used(&adapter->mac_table[i],
-					       addr, 0))
+					       addr, flags))
 			continue;
 
 		ether_addr_copy(adapter->mac_table[i].addr, addr);
 		adapter->mac_table[i].queue = queue;
-		adapter->mac_table[i].state |= IGC_MAC_STATE_IN_USE;
+		adapter->mac_table[i].state |= IGC_MAC_STATE_IN_USE | flags;
 
 		igc_rar_set_index(adapter, i);
 		return i;
@@ -2228,8 +2228,8 @@ static int igc_add_mac_filter(struct igc_adapter *adapter,
  * matching by source address is to be removed the flag
  * IGC_MAC_STATE_SRC_ADDR can be used.
  */
-static int igc_del_mac_filter(struct igc_adapter *adapter,
-			      const u8 *addr, const u8 queue)
+static int igc_del_mac_filter(struct igc_adapter *adapter, const u8 *addr,
+			      const u8 queue, const u8 flags)
 {
 	struct igc_hw *hw = &adapter->hw;
 	int rar_entries = hw->mac.rar_entry_count;
@@ -2245,7 +2245,7 @@ static int igc_del_mac_filter(struct igc_adapter *adapter,
 	for (i = 0; i < rar_entries; i++) {
 		if (!(adapter->mac_table[i].state & IGC_MAC_STATE_IN_USE))
 			continue;
-		if (adapter->mac_table[i].state != 0)
+		if (flags && (adapter->mac_table[i].state & flags) != flags)
 			continue;
 		if (adapter->mac_table[i].queue != queue)
 			continue;
@@ -2277,7 +2277,7 @@ static int igc_uc_sync(struct net_device *netdev, const unsigned char *addr)
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	int ret;
 
-	ret = igc_add_mac_filter(adapter, addr, adapter->num_rx_queues);
+	ret = igc_add_mac_filter(adapter, addr, adapter->num_rx_queues, 0);
 
 	return min_t(int, ret, 0);
 }
@@ -2286,7 +2286,7 @@ static int igc_uc_unsync(struct net_device *netdev, const unsigned char *addr)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 
-	igc_del_mac_filter(adapter, addr, adapter->num_rx_queues);
+	igc_del_mac_filter(adapter, addr, adapter->num_rx_queues, 0);
 
 	return 0;
 }
@@ -3723,104 +3723,18 @@ igc_features_check(struct sk_buff *skb, struct net_device *dev,
 	return features;
 }
 
-/* Add a MAC filter for 'addr' directing matching traffic to 'queue',
- * 'flags' is used to indicate what kind of match is made, match is by
- * default for the destination address, if matching by source address
- * is desired the flag IGC_MAC_STATE_SRC_ADDR can be used.
- */
-static int igc_add_mac_filter_flags(struct igc_adapter *adapter,
-				    const u8 *addr, const u8 queue,
-				    const u8 flags)
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
-					       addr, flags))
-			continue;
-
-		ether_addr_copy(adapter->mac_table[i].addr, addr);
-		adapter->mac_table[i].queue = queue;
-		adapter->mac_table[i].state |= IGC_MAC_STATE_IN_USE | flags;
-
-		igc_rar_set_index(adapter, i);
-		return i;
-	}
-
-	return -ENOSPC;
-}
-
 int igc_add_mac_steering_filter(struct igc_adapter *adapter,
 				const u8 *addr, u8 queue, u8 flags)
 {
-	return igc_add_mac_filter_flags(adapter, addr, queue,
-					IGC_MAC_STATE_QUEUE_STEERING | flags);
-}
-
-/* Remove a MAC filter for 'addr' directing matching traffic to
- * 'queue', 'flags' is used to indicate what kind of match need to be
- * removed, match is by default for the destination address, if
- * matching by source address is to be removed the flag
- * IGC_MAC_STATE_SRC_ADDR can be used.
- */
-static int igc_del_mac_filter_flags(struct igc_adapter *adapter,
-				    const u8 *addr, const u8 queue,
-				    const u8 flags)
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
-		if ((adapter->mac_table[i].state & flags) != flags)
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
+	return igc_add_mac_filter(adapter, addr, queue,
+				  IGC_MAC_STATE_QUEUE_STEERING | flags);
 }
 
 int igc_del_mac_steering_filter(struct igc_adapter *adapter,
 				const u8 *addr, u8 queue, u8 flags)
 {
-	return igc_del_mac_filter_flags(adapter, addr, queue,
-					IGC_MAC_STATE_QUEUE_STEERING | flags);
+	return igc_del_mac_filter(adapter, addr, queue,
+				  IGC_MAC_STATE_QUEUE_STEERING | flags);
 }
 
 static void igc_tsync_interrupt(struct igc_adapter *adapter)
-- 
2.25.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
