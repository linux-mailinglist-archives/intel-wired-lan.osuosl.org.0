Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDB31A4CEF
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Apr 2020 02:28:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E0CE083468;
	Sat, 11 Apr 2020 00:28:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id slCecipPhs5P; Sat, 11 Apr 2020 00:28:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4FBD686B77;
	Sat, 11 Apr 2020 00:28:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5F5881BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Apr 2020 00:28:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5C45385DD8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Apr 2020 00:28:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GAHi0ITzghrB for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Apr 2020 00:28:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A861485DCF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Apr 2020 00:28:40 +0000 (UTC)
IronPort-SDR: Ojf0WkorUXnpchBHiisY/H0PJPEOiuFJleKAy9i723cnbLjPGGWWUoqFGvi0JMpeDb+RLaUT59
 6Ez9TvIRffWg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2020 17:28:40 -0700
IronPort-SDR: HpQVEWu4NIPgYMttfmgJLE+N80TaYKR5RWNX3PMqfUe9E2OaDYTYa/WEIZ4Emnh4DxhaBpRUYM
 qB26VlJQcu2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,368,1580803200"; d="scan'208";a="362585532"
Received: from nwu5-mobl1.amr.corp.intel.com ([10.134.124.160])
 by fmsmga001.fm.intel.com with ESMTP; 10 Apr 2020 17:28:39 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 10 Apr 2020 17:28:31 -0700
Message-Id: <20200411002834.13916-2-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200411002834.13916-1-andre.guedes@intel.com>
References: <20200411002834.13916-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 1/4] igc: Remove IGC_MAC_STATE_SRC_ADDR
 flag
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

MAC address filters based on source address are not currently supported
by the IGC driver. Despite of that, the driver have some dangling code
to handle it, inherited from IGB driver. This patch removes that code to
prepare for a follow up patch that adds proper source MAC address filter
support.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  6 ++---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 16 ++----------
 drivers/net/ethernet/intel/igc/igc_main.c    | 27 ++++++--------------
 3 files changed, 12 insertions(+), 37 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 22dde0590a23..c4c4498ab48f 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -231,9 +231,8 @@ bool igc_has_link(struct igc_adapter *adapter);
 void igc_reset(struct igc_adapter *adapter);
 int igc_set_spd_dplx(struct igc_adapter *adapter, u32 spd, u8 dplx);
 int igc_add_mac_filter(struct igc_adapter *adapter, const u8 *addr,
-		       const s8 queue, const u8 flags);
-int igc_del_mac_filter(struct igc_adapter *adapter, const u8 *addr,
-		       const u8 flags);
+		       const s8 queue);
+int igc_del_mac_filter(struct igc_adapter *adapter, const u8 *addr);
 int igc_add_vlan_prio_filter(struct igc_adapter *adapter, int prio,
 			     int queue);
 void igc_del_vlan_prio_filter(struct igc_adapter *adapter, int prio);
@@ -479,7 +478,6 @@ struct igc_mac_addr {
 
 #define IGC_MAC_STATE_DEFAULT		0x1
 #define IGC_MAC_STATE_IN_USE		0x2
-#define IGC_MAC_STATE_SRC_ADDR		0x4
 
 #define IGC_MAX_RXNFC_FILTERS		16
 
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 285310a99ddc..36e94142b248 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1208,15 +1208,7 @@ int igc_add_filter(struct igc_adapter *adapter, struct igc_nfc_filter *input)
 
 	if (input->filter.match_flags & IGC_FILTER_FLAG_DST_MAC_ADDR) {
 		err = igc_add_mac_filter(adapter, input->filter.dst_addr,
-					 input->action, 0);
-		if (err)
-			return err;
-	}
-
-	if (input->filter.match_flags & IGC_FILTER_FLAG_SRC_MAC_ADDR) {
-		err = igc_add_mac_filter(adapter, input->filter.src_addr,
-					 input->action,
-					 IGC_MAC_STATE_SRC_ADDR);
+					 input->action);
 		if (err)
 			return err;
 	}
@@ -1246,12 +1238,8 @@ int igc_erase_filter(struct igc_adapter *adapter, struct igc_nfc_filter *input)
 		igc_del_vlan_prio_filter(adapter, prio);
 	}
 
-	if (input->filter.match_flags & IGC_FILTER_FLAG_SRC_MAC_ADDR)
-		igc_del_mac_filter(adapter, input->filter.src_addr,
-				   IGC_MAC_STATE_SRC_ADDR);
-
 	if (input->filter.match_flags & IGC_FILTER_FLAG_DST_MAC_ADDR)
-		igc_del_mac_filter(adapter, input->filter.dst_addr, 0);
+		igc_del_mac_filter(adapter, input->filter.dst_addr);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 9c2d487803b2..411af7eafe19 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2185,8 +2185,7 @@ static void igc_nfc_filter_restore(struct igc_adapter *adapter)
 	spin_unlock(&adapter->nfc_lock);
 }
 
-static int igc_find_mac_filter(struct igc_adapter *adapter, const u8 *addr,
-			       u8 flags)
+static int igc_find_mac_filter(struct igc_adapter *adapter, const u8 *addr)
 {
 	int max_entries = adapter->hw.mac.rar_entry_count;
 	struct igc_mac_addr *entry;
@@ -2199,9 +2198,6 @@ static int igc_find_mac_filter(struct igc_adapter *adapter, const u8 *addr,
 			continue;
 		if (!ether_addr_equal(addr, entry->addr))
 			continue;
-		if ((entry->state & IGC_MAC_STATE_SRC_ADDR) !=
-		    (flags & IGC_MAC_STATE_SRC_ADDR))
-			continue;
 
 		return i;
 	}
@@ -2232,23 +2228,19 @@ static int igc_get_avail_mac_filter_slot(struct igc_adapter *adapter)
  * @queue: If non-negative, queue assignment feature is enabled and frames
  *         matching the filter are enqueued onto 'queue'. Otherwise, queue
  *         assignment is disabled.
- * @flags: Set IGC_MAC_STATE_SRC_ADDR bit to indicate @address is a source
- *         address.
  *
  * Return: 0 in case of success, negative errno code otherwise.
  */
 int igc_add_mac_filter(struct igc_adapter *adapter, const u8 *addr,
-		       const s8 queue, const u8 flags)
+		       const s8 queue)
 {
 	struct net_device *dev = adapter->netdev;
 	int index;
 
 	if (!is_valid_ether_addr(addr))
 		return -EINVAL;
-	if (flags & IGC_MAC_STATE_SRC_ADDR)
-		return -ENOTSUPP;
 
-	index = igc_find_mac_filter(adapter, addr, flags);
+	index = igc_find_mac_filter(adapter, addr);
 	if (index >= 0)
 		goto update_queue_assignment;
 
@@ -2260,7 +2252,7 @@ int igc_add_mac_filter(struct igc_adapter *adapter, const u8 *addr,
 		   index, addr, queue);
 
 	ether_addr_copy(adapter->mac_table[index].addr, addr);
-	adapter->mac_table[index].state |= IGC_MAC_STATE_IN_USE | flags;
+	adapter->mac_table[index].state |= IGC_MAC_STATE_IN_USE;
 update_queue_assignment:
 	adapter->mac_table[index].queue = queue;
 
@@ -2272,13 +2264,10 @@ int igc_add_mac_filter(struct igc_adapter *adapter, const u8 *addr,
  * igc_del_mac_filter() - Delete MAC address filter.
  * @adapter: Pointer to adapter where the filter should be deleted from.
  * @addr: MAC address.
- * @flags: Set IGC_MAC_STATE_SRC_ADDR bit to indicate @address is a source
- *         address.
  *
  * Return: 0 in case of success, negative errno code otherwise.
  */
-int igc_del_mac_filter(struct igc_adapter *adapter, const u8 *addr,
-		       const u8 flags)
+int igc_del_mac_filter(struct igc_adapter *adapter, const u8 *addr)
 {
 	struct net_device *dev = adapter->netdev;
 	struct igc_mac_addr *entry;
@@ -2287,7 +2276,7 @@ int igc_del_mac_filter(struct igc_adapter *adapter, const u8 *addr,
 	if (!is_valid_ether_addr(addr))
 		return -EINVAL;
 
-	index = igc_find_mac_filter(adapter, addr, flags);
+	index = igc_find_mac_filter(adapter, addr);
 	if (index < 0)
 		return -ENOENT;
 
@@ -2464,14 +2453,14 @@ static int igc_uc_sync(struct net_device *netdev, const unsigned char *addr)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 
-	return igc_add_mac_filter(adapter, addr, -1, 0);
+	return igc_add_mac_filter(adapter, addr, -1);
 }
 
 static int igc_uc_unsync(struct net_device *netdev, const unsigned char *addr)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 
-	return igc_del_mac_filter(adapter, addr, 0);
+	return igc_del_mac_filter(adapter, addr);
 }
 
 /**
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
