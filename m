Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CDCD218A8E1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2020 00:02:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8510F866E5;
	Wed, 18 Mar 2020 23:02:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WlTCXd_xlXGu; Wed, 18 Mar 2020 23:02:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1BC838665F;
	Wed, 18 Mar 2020 23:02:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E778A1BF335
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 23:02:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E29042044A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 23:02:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xr-QoVEUO1fr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2020 23:02:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id AE0E4203EE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 23:02:11 +0000 (UTC)
IronPort-SDR: HRqL4UmIV2rLy/7Q5m99XcUCHKpU7GGgBDtnLWUqUj/gKZSv4zgCKT39OXqIk6tefmNLfJuK/V
 vIT8A8nO8ihg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 16:02:10 -0700
IronPort-SDR: E2Ugk9ivmcSk1Otmchxk5rlhecm7aABUstEro/0Eq35Qa8jLH0+oeFhCWRW0NY5V6A5dCTCGAs
 Ko24/wevQKpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,569,1574150400"; d="scan'208";a="248341790"
Received: from ymtomada-mobl.amr.corp.intel.com ([10.251.21.179])
 by orsmga006.jf.intel.com with ESMTP; 18 Mar 2020 16:02:10 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 18 Mar 2020 16:01:00 -0700
Message-Id: <20200318230102.36952-11-andre.guedes@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200318230102.36952-1-andre.guedes@intel.com>
References: <20200318230102.36952-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 10/12] igc: Refactor
 igc_mac_entry_can_be_used()
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

The helper igc_mac_entry_can_be_used() implementation is a bit
convoluted since it does two different things: find a not-in-use slot
in mac_table or find an in-use slot where the address and address type
match. This patch does a code refactoring and break it up into two
helper functions.

With this patch we might traverse mac_table twice in some situations,
but this is not harmful performance-wise (mac_table has only 16 entries
and adding mac filters is not hot-path), and it improves igc_add_mac_
filter() readability considerably.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 80 +++++++++++++----------
 1 file changed, 47 insertions(+), 33 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 25d0431f4f4a..0264e424bd07 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2177,25 +2177,44 @@ static void igc_nfc_filter_restore(struct igc_adapter *adapter)
 	spin_unlock(&adapter->nfc_lock);
 }
 
-/* If the filter to be added and an already existing filter express
- * the same address and address type, it should be possible to only
- * override the other configurations, for example the queue to steer
- * traffic.
- */
-static bool igc_mac_entry_can_be_used(const struct igc_mac_addr *entry,
-				      const u8 *addr, const u8 flags)
+static int igc_find_mac_filter(struct igc_adapter *adapter, const u8 *addr,
+			       u8 flags)
 {
-	if (!(entry->state & IGC_MAC_STATE_IN_USE))
-		return true;
+	int max_entries = adapter->hw.mac.rar_entry_count;
+	struct igc_mac_addr *entry;
+	int i;
 
-	if ((entry->state & IGC_MAC_STATE_SRC_ADDR) !=
-	    (flags & IGC_MAC_STATE_SRC_ADDR))
-		return false;
+	for (i = 0; i < max_entries; i++) {
+		entry = &adapter->mac_table[i];
 
-	if (!ether_addr_equal(addr, entry->addr))
-		return false;
+		if (!(entry->state & IGC_MAC_STATE_IN_USE))
+			continue;
+		if (!ether_addr_equal(addr, entry->addr))
+			continue;
+		if ((entry->state & IGC_MAC_STATE_SRC_ADDR) !=
+		    (flags & IGC_MAC_STATE_SRC_ADDR))
+			continue;
 
-	return true;
+		return i;
+	}
+
+	return -1;
+}
+
+static int igc_get_avail_mac_filter_slot(struct igc_adapter *adapter)
+{
+	int max_entries = adapter->hw.mac.rar_entry_count;
+	struct igc_mac_addr *entry;
+	int i;
+
+	for (i = 0; i < max_entries; i++) {
+		entry = &adapter->mac_table[i];
+
+		if (!(entry->state & IGC_MAC_STATE_IN_USE))
+			return i;
+	}
+
+	return -1;
 }
 
 /* Add MAC address filter to adapter.
@@ -2213,33 +2232,28 @@ static bool igc_mac_entry_can_be_used(const struct igc_mac_addr *entry,
 int igc_add_mac_filter(struct igc_adapter *adapter, const u8 *addr,
 		       const s8 queue, const u8 flags)
 {
-	struct igc_hw *hw = &adapter->hw;
-	int rar_entries = hw->mac.rar_entry_count;
-	int i;
+	int index;
 
 	if (!is_valid_ether_addr(addr))
 		return -EINVAL;
 	if (flags & IGC_MAC_STATE_SRC_ADDR)
 		return -ENOTSUPP;
 
-	/* Search for the first empty entry in the MAC table.
-	 * Do not touch entries at the end of the table reserved for the VF MAC
-	 * addresses.
-	 */
-	for (i = 0; i < rar_entries; i++) {
-		if (!igc_mac_entry_can_be_used(&adapter->mac_table[i],
-					       addr, flags))
-			continue;
+	index = igc_find_mac_filter(adapter, addr, flags);
+	if (index >= 0)
+		goto update_queue_assignment;
 
-		ether_addr_copy(adapter->mac_table[i].addr, addr);
-		adapter->mac_table[i].queue = queue;
-		adapter->mac_table[i].state |= IGC_MAC_STATE_IN_USE | flags;
+	index = igc_get_avail_mac_filter_slot(adapter);
+	if (index < 0)
+		return -ENOSPC;
 
-		igc_set_mac_filter_hw(adapter, i, addr, queue);
-		return 0;
-	}
+	ether_addr_copy(adapter->mac_table[index].addr, addr);
+	adapter->mac_table[index].state |= IGC_MAC_STATE_IN_USE | flags;
+update_queue_assignment:
+	adapter->mac_table[index].queue = queue;
 
-	return -ENOSPC;
+	igc_set_mac_filter_hw(adapter, index, addr, queue);
+	return 0;
 }
 
 /* Delete MAC address filter from adapter.
-- 
2.25.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
