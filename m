Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE3F18A8DB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2020 00:02:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E5A31877DB;
	Wed, 18 Mar 2020 23:02:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lM3ihc99w5v3; Wed, 18 Mar 2020 23:02:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7BC7F8798F;
	Wed, 18 Mar 2020 23:02:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 55BAA1BF335
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 23:02:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 535CC86644
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 23:02:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NBYSBRfTCNbr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2020 23:02:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C6ECE86637
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 23:02:10 +0000 (UTC)
IronPort-SDR: 2WQ6qSk9bJHTlzPVRf1n6VrWidDINLqBDPb1oMGamE9R60zspuk530nXiZGHnyWW08NLdQJckH
 XL54mhKsD1eA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 16:02:10 -0700
IronPort-SDR: YXvbqGJmU5qRzct76QEu0HpABUgHzMMhj1M+jEMLtBhOVYSVwzqdu50mbo0hnTEi6LS7AS+SFo
 UavEwqnQl5Jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,569,1574150400"; d="scan'208";a="248341780"
Received: from ymtomada-mobl.amr.corp.intel.com ([10.251.21.179])
 by orsmga006.jf.intel.com with ESMTP; 18 Mar 2020 16:02:09 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 18 Mar 2020 16:00:57 -0700
Message-Id: <20200318230102.36952-8-andre.guedes@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200318230102.36952-1-andre.guedes@intel.com>
References: <20200318230102.36952-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 07/12] igc: Remove 'queue' check in
 igc_del_mac_filter()
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

igc_add_mac_filter() doesn't allow us to have more than one entry with
the same address and address type in adapter->mac_table so checking if
'queue' matches in igc_del_mac_filter() isn't necessary. This patch
removes that check.

This patch also takes the opportunity to improve the igc_del_mac_filter
documentation and remove comment which is not applicable to this I225
controller.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 27 ++++++++++-------------
 1 file changed, 12 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index a71f1a5ca27c..8a3cae2367d4 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2234,14 +2234,17 @@ static int igc_add_mac_filter(struct igc_adapter *adapter, const u8 *addr,
 	return -ENOSPC;
 }
 
-/* Remove a MAC filter for 'addr' directing matching traffic to
- * 'queue', 'flags' is used to indicate what kind of match need to be
- * removed, match is by default for the destination address, if
- * matching by source address is to be removed the flag
- * IGC_MAC_STATE_SRC_ADDR can be used.
- */
+/* Delete MAC address filter from adapter.
+ *
+ * @adapter: Pointer to adapter where the filter should be deleted from.
+ * @addr: MAC address.
+ * @flags: Set IGC_MAC_STATE_SRC_ADDR bit to indicate @address is a source
+ * address.
+ *
+ * In case of success, returns 0. Otherwise, it returns a negative errno code.
+  */
 static int igc_del_mac_filter(struct igc_adapter *adapter, const u8 *addr,
-			      const u8 queue, const u8 flags)
+			      const u8 flags)
 {
 	struct igc_hw *hw = &adapter->hw;
 	int rar_entries = hw->mac.rar_entry_count;
@@ -2250,17 +2253,11 @@ static int igc_del_mac_filter(struct igc_adapter *adapter, const u8 *addr,
 	if (!is_valid_ether_addr(addr))
 		return -EINVAL;
 
-	/* Search for matching entry in the MAC table based on given address
-	 * and queue. Do not touch entries at the end of the table reserved
-	 * for the VF MAC addresses.
-	 */
 	for (i = 0; i < rar_entries; i++) {
 		if (!(adapter->mac_table[i].state & IGC_MAC_STATE_IN_USE))
 			continue;
 		if (flags && (adapter->mac_table[i].state & flags) != flags)
 			continue;
-		if (adapter->mac_table[i].queue != queue)
-			continue;
 		if (!ether_addr_equal(adapter->mac_table[i].addr, addr))
 			continue;
 
@@ -2296,7 +2293,7 @@ static int igc_uc_unsync(struct net_device *netdev, const unsigned char *addr)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 
-	return igc_del_mac_filter(adapter, addr, adapter->num_rx_queues, 0);
+	return igc_del_mac_filter(adapter, addr, 0);
 }
 
 /**
@@ -3741,7 +3738,7 @@ int igc_add_mac_steering_filter(struct igc_adapter *adapter,
 int igc_del_mac_steering_filter(struct igc_adapter *adapter,
 				const u8 *addr, u8 queue, u8 flags)
 {
-	return igc_del_mac_filter(adapter, addr, queue,
+	return igc_del_mac_filter(adapter, addr,
 				  IGC_MAC_STATE_QUEUE_STEERING | flags);
 }
 
-- 
2.25.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
