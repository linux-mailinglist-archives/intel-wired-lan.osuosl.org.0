Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0428419B7D9
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Apr 2020 23:42:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5C60425CA8;
	Wed,  1 Apr 2020 21:42:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6Hm-EHj1GS-i; Wed,  1 Apr 2020 21:42:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 08FA42549D;
	Wed,  1 Apr 2020 21:42:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5C6E91BF47E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2020 21:42:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 582BF87927
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2020 21:42:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EbToBJe4aCZR for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Apr 2020 21:42:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 638A387658
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2020 21:42:23 +0000 (UTC)
IronPort-SDR: YrY2JLjlEnR8GOayuVV48k9hft9uQ3mPbpHyPGEomlDy6Yosy2fFlc6KdPdRHBrNFwBUekvT0z
 MfJaBKuayvZA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 14:42:22 -0700
IronPort-SDR: wFNoXNT5y8xKrtnJ7dgYpxLrvHY5oNHR8bbgoyX1SD3pZrQ6Fsgb54ehOpuYgrp1nOrFIptJjA
 spRB3wkU8W4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,333,1580803200"; d="scan'208";a="359985261"
Received: from khsantac-mobl1.amr.corp.intel.com ([10.251.8.15])
 by fmsmga001.fm.intel.com with ESMTP; 01 Apr 2020 14:42:21 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  1 Apr 2020 14:41:43 -0700
Message-Id: <20200401214142.2779-1-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200318230102.36952-8-andre.guedes@intel.com>
References: <20200318230102.36952-8-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 07/12] igc: Remove 'queue' check in
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
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
---
v2: Fix function documentation to follow kernel-doc style.
---
 drivers/net/ethernet/intel/igc/igc_main.c | 25 ++++++++++-------------
 1 file changed, 11 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 37c8980a43a0..961a7c642e44 100644
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
+/**
+ * igc_del_mac_filter() - Delete MAC address filter.
+ * @adapter: Pointer to adapter where the filter should be deleted from.
+ * @addr: MAC address.
+ * @flags: Set IGC_MAC_STATE_SRC_ADDR bit to indicate @address is a source
+ *         address.
+ *
+ * Return: 0 in case of success, negative errno code otherwise.
  */
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
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
