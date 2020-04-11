Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F301A4CEB
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Apr 2020 02:28:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 25B008651D;
	Sat, 11 Apr 2020 00:28:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fLW2uzkJQdPD; Sat, 11 Apr 2020 00:28:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 66F0A862AC;
	Sat, 11 Apr 2020 00:28:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 441F71BF9CB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Apr 2020 00:28:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4135785DD8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Apr 2020 00:28:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ir49GToW78mZ for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Apr 2020 00:28:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 506F8862AC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Apr 2020 00:28:41 +0000 (UTC)
IronPort-SDR: vZfu/DxeKQ1rlsvEXTk0VCs2hS8VNhehSU8vddA3E1bqT/fXPjM9GTuy/y9UEpE70R5fgGjsiV
 yNrX6jAhs/IA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2020 17:28:40 -0700
IronPort-SDR: U861a/hr+Ba+A9SDxFYembGCyIwCTQwA02Sfcgiv2FiNwryHZwXQEJ3UbK0KQ2h+79yWdGnNJa
 dJoh4fDn3/Fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,368,1580803200"; d="scan'208";a="362585534"
Received: from nwu5-mobl1.amr.corp.intel.com ([10.134.124.160])
 by fmsmga001.fm.intel.com with ESMTP; 10 Apr 2020 17:28:39 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 10 Apr 2020 17:28:33 -0700
Message-Id: <20200411002834.13916-4-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200411002834.13916-1-andre.guedes@intel.com>
References: <20200411002834.13916-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 3/4] igc: Add support for source address
 filters in core
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

This patch extends MAC address filter internal APIs igc_add_mac_filter()
and igc_del_mac_filter(), as well as local helpers, to support filters
based on source address.

A new parameters 'type' is added to the APIs to indicate if the filter
type is source or destination. In case it is source type, the RAH
register is configured accordingly in igc_set_mac_filter_hw().

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         | 13 ++++--
 drivers/net/ethernet/intel/igc/igc_defines.h |  2 +
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  6 ++-
 drivers/net/ethernet/intel/igc/igc_main.c    | 49 +++++++++++++-------
 4 files changed, 49 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 654481cea1f2..a887331bc622 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -29,6 +29,11 @@ void igc_set_ethtool_ops(struct net_device *);
 #define MAX_ETYPE_FILTER		8
 #define IGC_RETA_SIZE			128
 
+enum igc_mac_filter_type {
+	IGC_MAC_FILTER_TYPE_DST = 0,
+	IGC_MAC_FILTER_TYPE_SRC
+};
+
 struct igc_tx_queue_stats {
 	u64 packets;
 	u64 bytes;
@@ -228,9 +233,11 @@ void igc_write_rss_indir_tbl(struct igc_adapter *adapter);
 bool igc_has_link(struct igc_adapter *adapter);
 void igc_reset(struct igc_adapter *adapter);
 int igc_set_spd_dplx(struct igc_adapter *adapter, u32 spd, u8 dplx);
-int igc_add_mac_filter(struct igc_adapter *adapter, const u8 *addr,
-		       const s8 queue);
-int igc_del_mac_filter(struct igc_adapter *adapter, const u8 *addr);
+int igc_add_mac_filter(struct igc_adapter *adapter,
+		       enum igc_mac_filter_type type, const u8 *addr,
+		       int queue);
+int igc_del_mac_filter(struct igc_adapter *adapter,
+		       enum igc_mac_filter_type type, const u8 *addr);
 int igc_add_vlan_prio_filter(struct igc_adapter *adapter, int prio,
 			     int queue);
 void igc_del_vlan_prio_filter(struct igc_adapter *adapter, int prio);
diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index e190a7f83c3c..389a2c340261 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -63,6 +63,8 @@
  * manageability enabled, allowing us room for 15 multicast addresses.
  */
 #define IGC_RAH_RAH_MASK	0x0000FFFF
+#define IGC_RAH_ASEL_MASK	0x00030000
+#define IGC_RAH_ASEL_SRC_ADDR	BIT(16)
 #define IGC_RAH_QSEL_MASK	0x000C0000
 #define IGC_RAH_QSEL_SHIFT	18
 #define IGC_RAH_QSEL_ENABLE	BIT(28)
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 36e94142b248..20d22df52f09 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1207,7 +1207,8 @@ int igc_add_filter(struct igc_adapter *adapter, struct igc_nfc_filter *input)
 	}
 
 	if (input->filter.match_flags & IGC_FILTER_FLAG_DST_MAC_ADDR) {
-		err = igc_add_mac_filter(adapter, input->filter.dst_addr,
+		err = igc_add_mac_filter(adapter, IGC_MAC_FILTER_TYPE_DST,
+					 input->filter.dst_addr,
 					 input->action);
 		if (err)
 			return err;
@@ -1239,7 +1240,8 @@ int igc_erase_filter(struct igc_adapter *adapter, struct igc_nfc_filter *input)
 	}
 
 	if (input->filter.match_flags & IGC_FILTER_FLAG_DST_MAC_ADDR)
-		igc_del_mac_filter(adapter, input->filter.dst_addr);
+		igc_del_mac_filter(adapter, IGC_MAC_FILTER_TYPE_DST,
+				   input->filter.dst_addr);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 1779d20299d0..c5f0f7690ad3 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -766,12 +766,14 @@ static void igc_setup_tctl(struct igc_adapter *adapter)
  * igc_set_mac_filter_hw() - Set MAC address filter in hardware.
  * @adapter: Pointer to adapter where the filter should be set.
  * @index: Filter index.
- * @addr: Destination MAC address.
+ * @type: MAC address filter type (source or destination).
+ * @addr: MAC address.
  * @queue: If non-negative, queue assignment feature is enabled and frames
  *         matching the filter are enqueued onto 'queue'. Otherwise, queue
  *         assignment is disabled.
  */
 static void igc_set_mac_filter_hw(struct igc_adapter *adapter, int index,
+				  enum igc_mac_filter_type type,
 				  const u8 *addr, int queue)
 {
 	struct net_device *dev = adapter->netdev;
@@ -784,6 +786,11 @@ static void igc_set_mac_filter_hw(struct igc_adapter *adapter, int index,
 	ral = le32_to_cpup((__le32 *)(addr));
 	rah = le16_to_cpup((__le16 *)(addr + 4));
 
+	if (type == IGC_MAC_FILTER_TYPE_SRC) {
+		rah &= ~IGC_RAH_ASEL_MASK;
+		rah |= IGC_RAH_ASEL_SRC_ADDR;
+	}
+
 	if (queue >= 0) {
 		rah &= ~IGC_RAH_QSEL_MASK;
 		rah |= (queue << IGC_RAH_QSEL_SHIFT);
@@ -825,7 +832,7 @@ static void igc_set_default_mac_filter(struct igc_adapter *adapter)
 
 	netdev_dbg(dev, "Set default MAC address filter: address %pM", addr);
 
-	igc_set_mac_filter_hw(adapter, 0, addr, -1);
+	igc_set_mac_filter_hw(adapter, 0, IGC_MAC_FILTER_TYPE_DST, addr, -1);
 }
 
 /**
@@ -2180,7 +2187,8 @@ static void igc_nfc_filter_restore(struct igc_adapter *adapter)
 	spin_unlock(&adapter->nfc_lock);
 }
 
-static int igc_find_mac_filter(struct igc_adapter *adapter, const u8 *addr)
+static int igc_find_mac_filter(struct igc_adapter *adapter,
+			       enum igc_mac_filter_type type, const u8 *addr)
 {
 	struct igc_hw *hw = &adapter->hw;
 	int max_entries = hw->mac.rar_entry_count;
@@ -2193,6 +2201,8 @@ static int igc_find_mac_filter(struct igc_adapter *adapter, const u8 *addr)
 
 		if (!(rah & IGC_RAH_AV))
 			continue;
+		if (!!(rah & IGC_RAH_ASEL_SRC_ADDR) != type)
+			continue;
 		if ((rah & IGC_RAH_RAH_MASK) !=
 		    le16_to_cpup((__le16 *)(addr + 4)))
 			continue;
@@ -2225,6 +2235,7 @@ static int igc_get_avail_mac_filter_slot(struct igc_adapter *adapter)
 /**
  * igc_add_mac_filter() - Add MAC address filter.
  * @adapter: Pointer to adapter where the filter should be added.
+ * @type: MAC address filter type (source or destination).
  * @addr: MAC address.
  * @queue: If non-negative, queue assignment feature is enabled and frames
  *         matching the filter are enqueued onto 'queue'. Otherwise, queue
@@ -2232,8 +2243,9 @@ static int igc_get_avail_mac_filter_slot(struct igc_adapter *adapter)
  *
  * Return: 0 in case of success, negative errno code otherwise.
  */
-int igc_add_mac_filter(struct igc_adapter *adapter, const u8 *addr,
-		       const s8 queue)
+int igc_add_mac_filter(struct igc_adapter *adapter,
+		       enum igc_mac_filter_type type, const u8 *addr,
+		       int queue)
 {
 	struct net_device *dev = adapter->netdev;
 	int index;
@@ -2241,7 +2253,7 @@ int igc_add_mac_filter(struct igc_adapter *adapter, const u8 *addr,
 	if (!is_valid_ether_addr(addr))
 		return -EINVAL;
 
-	index = igc_find_mac_filter(adapter, addr);
+	index = igc_find_mac_filter(adapter, type, addr);
 	if (index >= 0)
 		goto update_filter;
 
@@ -2249,22 +2261,25 @@ int igc_add_mac_filter(struct igc_adapter *adapter, const u8 *addr,
 	if (index < 0)
 		return -ENOSPC;
 
-	netdev_dbg(dev, "Add MAC address filter: index %d address %pM queue %d",
-		   index, addr, queue);
+	netdev_dbg(dev, "Add MAC address filter: index %d type %s address %pM queue %d",
+		   index, type == IGC_MAC_FILTER_TYPE_DST ? "dst" : "src",
+		   addr, queue);
 
 update_filter:
-	igc_set_mac_filter_hw(adapter, index, addr, queue);
+	igc_set_mac_filter_hw(adapter, index, type, addr, queue);
 	return 0;
 }
 
 /**
  * igc_del_mac_filter() - Delete MAC address filter.
  * @adapter: Pointer to adapter where the filter should be deleted from.
+ * @type: MAC address filter type (source or destination).
  * @addr: MAC address.
  *
  * Return: 0 in case of success, negative errno code otherwise.
  */
-int igc_del_mac_filter(struct igc_adapter *adapter, const u8 *addr)
+int igc_del_mac_filter(struct igc_adapter *adapter,
+		       enum igc_mac_filter_type type, const u8 *addr)
 {
 	struct net_device *dev = adapter->netdev;
 	int index;
@@ -2272,7 +2287,7 @@ int igc_del_mac_filter(struct igc_adapter *adapter, const u8 *addr)
 	if (!is_valid_ether_addr(addr))
 		return -EINVAL;
 
-	index = igc_find_mac_filter(adapter, addr);
+	index = igc_find_mac_filter(adapter, type, addr);
 	if (index < 0)
 		return -ENOENT;
 
@@ -2283,10 +2298,12 @@ int igc_del_mac_filter(struct igc_adapter *adapter, const u8 *addr)
 		 */
 		netdev_dbg(dev, "Disable default MAC filter queue assignment");
 
-		igc_set_mac_filter_hw(adapter, 0, addr, -1);
+		igc_set_mac_filter_hw(adapter, 0, type, addr, -1);
 	} else {
-		netdev_dbg(dev, "Delete MAC address filter: index %d address %pM",
-			   index, addr);
+		netdev_dbg(dev, "Delete MAC address filter: index %d type %s address %pM",
+			   index,
+			   type == IGC_MAC_FILTER_TYPE_DST ? "dst" : "src",
+			   addr);
 
 		igc_clear_mac_filter_hw(adapter, index);
 	}
@@ -2443,14 +2460,14 @@ static int igc_uc_sync(struct net_device *netdev, const unsigned char *addr)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 
-	return igc_add_mac_filter(adapter, addr, -1);
+	return igc_add_mac_filter(adapter, IGC_MAC_FILTER_TYPE_DST, addr, -1);
 }
 
 static int igc_uc_unsync(struct net_device *netdev, const unsigned char *addr)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 
-	return igc_del_mac_filter(adapter, addr);
+	return igc_del_mac_filter(adapter, IGC_MAC_FILTER_TYPE_DST, addr);
 }
 
 /**
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
