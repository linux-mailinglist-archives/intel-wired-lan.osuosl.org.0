Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DDACA18A8DF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2020 00:02:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 90AA987D51;
	Wed, 18 Mar 2020 23:02:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iNoXtF0FDR76; Wed, 18 Mar 2020 23:02:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3F35287CDA;
	Wed, 18 Mar 2020 23:02:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9DE571BF335
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 23:02:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 94B6620435
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 23:02:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qfxM3bvpA6lh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2020 23:02:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id F061E2041B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 23:02:11 +0000 (UTC)
IronPort-SDR: S2GVMn0rH4i0a8+Q+aR1KljaxDakaw2kUgqOIPxQgUG6zZ0k8eNd1pztfxNDhGbnO5hple5PeO
 2U0n+g8nJoXA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 16:02:11 -0700
IronPort-SDR: a+7bhyjXTipYDqs5xTE2ZsGq6Ev1Hpik2RU01AJ6VSlUV4ayX/MYASPsk69MR4FHEZ62/VPkEl
 rGMhD7go35SA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,569,1574150400"; d="scan'208";a="248341791"
Received: from ymtomada-mobl.amr.corp.intel.com ([10.251.21.179])
 by orsmga006.jf.intel.com with ESMTP; 18 Mar 2020 16:02:10 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 18 Mar 2020 16:01:01 -0700
Message-Id: <20200318230102.36952-12-andre.guedes@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200318230102.36952-1-andre.guedes@intel.com>
References: <20200318230102.36952-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 11/12] igc: Refactor igc_del_mac_filter()
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

This patch does a code refactoring in igc_del_mac_filter() so it uses
the new helper igc_find_mac_filter() and improves the comment about the
special handling when deleting the default filter.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 45 ++++++++++-------------
 1 file changed, 19 insertions(+), 26 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 0264e424bd07..fa7cf33c58a9 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2268,40 +2268,33 @@ int igc_add_mac_filter(struct igc_adapter *adapter, const u8 *addr,
 int igc_del_mac_filter(struct igc_adapter *adapter, const u8 *addr,
 		       const u8 flags)
 {
-	struct igc_hw *hw = &adapter->hw;
-	int rar_entries = hw->mac.rar_entry_count;
-	int i;
+	struct igc_mac_addr *entry;
+	int index;
 
 	if (!is_valid_ether_addr(addr))
 		return -EINVAL;
 
-	for (i = 0; i < rar_entries; i++) {
-		if (!(adapter->mac_table[i].state & IGC_MAC_STATE_IN_USE))
-			continue;
-		if (flags && (adapter->mac_table[i].state & flags) != flags)
-			continue;
-		if (!ether_addr_equal(adapter->mac_table[i].addr, addr))
-			continue;
+	index = igc_find_mac_filter(adapter, addr, flags);
+	if (index < 0)
+		return -ENOENT;
 
-		/* When a filter for the default address is "deleted",
-		 * we return it to its initial configuration
-		 */
-		if (adapter->mac_table[i].state & IGC_MAC_STATE_DEFAULT) {
-			adapter->mac_table[i].state =
-				IGC_MAC_STATE_DEFAULT | IGC_MAC_STATE_IN_USE;
-			adapter->mac_table[i].queue = -1;
-			igc_set_mac_filter_hw(adapter, 0, addr, -1);
-		} else {
-			adapter->mac_table[i].state = 0;
-			adapter->mac_table[i].queue = -1;
-			memset(adapter->mac_table[i].addr, 0, ETH_ALEN);
-			igc_clear_mac_filter_hw(adapter, i);
-		}
+	entry = &adapter->mac_table[index];
 
-		return 0;
+	if (entry->state & IGC_MAC_STATE_DEFAULT) {
+		/* If this is the default filter, we don't actually delete it.
+		 * We just reset to its default value i.e. disable queue
+		 * assignment.
+		 */
+		entry->queue = -1;
+		igc_set_mac_filter_hw(adapter, 0, addr, entry->queue);
+	} else {
+		entry->state = 0;
+		entry->queue = -1;
+		memset(entry->addr, 0, ETH_ALEN);
+		igc_clear_mac_filter_hw(adapter, index);
 	}
 
-	return -ENOENT;
+	return 0;
 }
 
 static int igc_uc_sync(struct net_device *netdev, const unsigned char *addr)
-- 
2.25.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
