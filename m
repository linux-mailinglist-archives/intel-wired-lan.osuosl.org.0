Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F87A19B7DD
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Apr 2020 23:44:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2F5D5204D1;
	Wed,  1 Apr 2020 21:44:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tRjuY+-YE5tJ; Wed,  1 Apr 2020 21:44:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D85DB2549C;
	Wed,  1 Apr 2020 21:44:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B81BD1BF47E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2020 21:44:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B380D888FB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2020 21:44:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E22qWFx6jxlP for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Apr 2020 21:44:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D094387EA6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2020 21:44:47 +0000 (UTC)
IronPort-SDR: mAzj0T0Vk+k05JT9i2QxTFhDXJKvzcHZuBDwcxzqnTzmPawxTLdRPMpSVxuReoyhG1vTzyZJeI
 opwBXoXLqQVA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 14:44:42 -0700
IronPort-SDR: 4V7l2JfwCuAGtTenL8YBYFeWLqzfTj/fYYPshI91S3U8GqP49nKifp3+0ow9Jo2wU04ekSHPAX
 SCgOGt+sNmsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,333,1580803200"; d="scan'208";a="359985721"
Received: from khsantac-mobl1.amr.corp.intel.com ([10.251.8.15])
 by fmsmga001.fm.intel.com with ESMTP; 01 Apr 2020 14:44:42 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  1 Apr 2020 14:43:58 -0700
Message-Id: <20200401214358.2838-1-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200318230102.36952-9-andre.guedes@intel.com>
References: <20200318230102.36952-9-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 08/12] igc: Remove
 IGC_MAC_STATE_QUEUE_STEERING
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

The IGC_MAC_STATE_QUEUE_STEERING bit in mac_table[i].state is
utilized to indicate that frames matching the filter are assigned to
mac_table[i].queue. This bit is not strictly necessary since we can
convey the same information as follows: queue == -1 means queue
assignment is disabled, otherwise it is enabled.

In addition to make the code simpler, this change fixes some awkward
situations where we pass a complete misleading 'queue' value such as in
igc_uc_sync().

So this patch removes IGC_MAC_STATE_QUEUE_STEERING and also takes the
opportunity to improve the igc_add_mac_filter documentation.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
---
v2: Fix function documentation to follow kernel-doc style.
---
 drivers/net/ethernet/intel/igc/igc.h      |  3 +--
 drivers/net/ethernet/intel/igc/igc_main.c | 32 ++++++++++++++---------
 2 files changed, 20 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index e743f92a27c6..192cef07bdf7 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -470,14 +470,13 @@ struct igc_nfc_filter {
 
 struct igc_mac_addr {
 	u8 addr[ETH_ALEN];
-	u8 queue;
+	s8 queue;
 	u8 state; /* bitmask */
 };
 
 #define IGC_MAC_STATE_DEFAULT		0x1
 #define IGC_MAC_STATE_IN_USE		0x2
 #define IGC_MAC_STATE_SRC_ADDR		0x4
-#define IGC_MAC_STATE_QUEUE_STEERING	0x8
 
 #define IGC_MAX_RXNFC_FILTERS		16
 
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 961a7c642e44..332ad5841a9f 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -820,8 +820,9 @@ static void igc_set_default_mac_filter(struct igc_adapter *adapter)
 
 	ether_addr_copy(mac_table->addr, adapter->hw.mac.addr);
 	mac_table->state = IGC_MAC_STATE_DEFAULT | IGC_MAC_STATE_IN_USE;
+	mac_table->queue = -1;
 
-	igc_set_mac_filter_hw(adapter, 0, mac_table->addr, -1);
+	igc_set_mac_filter_hw(adapter, 0, mac_table->addr, mac_table->queue);
 }
 
 /**
@@ -2197,13 +2198,20 @@ static bool igc_mac_entry_can_be_used(const struct igc_mac_addr *entry,
 	return true;
 }
 
-/* Add a MAC filter for 'addr' directing matching traffic to 'queue',
- * 'flags' is used to indicate what kind of match is made, match is by
- * default for the destination address, if matching by source address
- * is desired the flag IGC_MAC_STATE_SRC_ADDR can be used.
+/**
+ * igc_add_mac_filter() - Add MAC address filter.
+ * @adapter: Pointer to adapter where the filter should be added.
+ * @addr: MAC address.
+ * @queue: If non-negative, queue assignment feature is enabled and frames
+ *         matching the filter are enqueued onto 'queue'. Otherwise, queue
+ *         assignment is disabled.
+ * @flags: Set IGC_MAC_STATE_SRC_ADDR bit to indicate @address is a source
+ *         address.
+ *
+ * Return: 0 in case of success, negative errno code otherwise.
  */
 static int igc_add_mac_filter(struct igc_adapter *adapter, const u8 *addr,
-			      const u8 queue, const u8 flags)
+			      const s8 queue, const u8 flags)
 {
 	struct igc_hw *hw = &adapter->hw;
 	int rar_entries = hw->mac.rar_entry_count;
@@ -2267,11 +2275,11 @@ static int igc_del_mac_filter(struct igc_adapter *adapter, const u8 *addr,
 		if (adapter->mac_table[i].state & IGC_MAC_STATE_DEFAULT) {
 			adapter->mac_table[i].state =
 				IGC_MAC_STATE_DEFAULT | IGC_MAC_STATE_IN_USE;
-			adapter->mac_table[i].queue = 0;
+			adapter->mac_table[i].queue = -1;
 			igc_set_mac_filter_hw(adapter, 0, addr, -1);
 		} else {
 			adapter->mac_table[i].state = 0;
-			adapter->mac_table[i].queue = 0;
+			adapter->mac_table[i].queue = -1;
 			memset(adapter->mac_table[i].addr, 0, ETH_ALEN);
 			igc_clear_mac_filter_hw(adapter, i);
 		}
@@ -2286,7 +2294,7 @@ static int igc_uc_sync(struct net_device *netdev, const unsigned char *addr)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 
-	return igc_add_mac_filter(adapter, addr, adapter->num_rx_queues, 0);
+	return igc_add_mac_filter(adapter, addr, -1, 0);
 }
 
 static int igc_uc_unsync(struct net_device *netdev, const unsigned char *addr)
@@ -3731,15 +3739,13 @@ igc_features_check(struct sk_buff *skb, struct net_device *dev,
 int igc_add_mac_steering_filter(struct igc_adapter *adapter,
 				const u8 *addr, u8 queue, u8 flags)
 {
-	return igc_add_mac_filter(adapter, addr, queue,
-				  IGC_MAC_STATE_QUEUE_STEERING | flags);
+	return igc_add_mac_filter(adapter, addr, queue, flags);
 }
 
 int igc_del_mac_steering_filter(struct igc_adapter *adapter,
 				const u8 *addr, u8 queue, u8 flags)
 {
-	return igc_del_mac_filter(adapter, addr,
-				  IGC_MAC_STATE_QUEUE_STEERING | flags);
+	return igc_del_mac_filter(adapter, addr, flags);
 }
 
 static void igc_tsync_interrupt(struct igc_adapter *adapter)
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
