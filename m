Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADC91A4CEE
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Apr 2020 02:28:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D0D3788396;
	Sat, 11 Apr 2020 00:28:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gOeP9MVdn7+a; Sat, 11 Apr 2020 00:28:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BE9248838F;
	Sat, 11 Apr 2020 00:28:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 988171BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Apr 2020 00:28:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9591E85DCF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Apr 2020 00:28:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PbEDJvovpd69 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Apr 2020 00:28:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 16133862A5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Apr 2020 00:28:41 +0000 (UTC)
IronPort-SDR: JkvawzYrYmj3zg+zlttvOWx+ltH+ZmM1M0VlCQ5omFP8FcS3/dVTVh2cKsCpIxKQfQO7wZPAHn
 4RCdTZ01tPWQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2020 17:28:40 -0700
IronPort-SDR: N5IXqyAH9oCfxj4NERpey5K5pBnp2b/RGjZOyvQ1afNkML905XezlBlKvIxvetzuLo4zQZJbJH
 lrruvLoGrS5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,368,1580803200"; d="scan'208";a="362585533"
Received: from nwu5-mobl1.amr.corp.intel.com ([10.134.124.160])
 by fmsmga001.fm.intel.com with ESMTP; 10 Apr 2020 17:28:39 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 10 Apr 2020 17:28:32 -0700
Message-Id: <20200411002834.13916-3-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200411002834.13916-1-andre.guedes@intel.com>
References: <20200411002834.13916-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 2/4] igc: Remove mac_table from igc_adapter
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

In igc_adapter we keep a sort of shadow copy of RAL and RAH registers.
There is not much benefit in keeping it, at the cost of maintainability,
since adding/removing MAC address filters is not hot path, and we
already keep filters information in adapter->nfc_filter_list for cleanup
and restoration purposes.

So in order to simplify the MAC address filtering code and prepare it
for source address support, this patch removes the mac_table from
igc_adapter.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         | 11 ----
 drivers/net/ethernet/intel/igc/igc_defines.h |  1 +
 drivers/net/ethernet/intel/igc/igc_main.c    | 57 +++++++-------------
 3 files changed, 21 insertions(+), 48 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index c4c4498ab48f..654481cea1f2 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -190,8 +190,6 @@ struct igc_adapter {
 	/* lock for RX network flow classification filter */
 	spinlock_t nfc_lock;
 
-	struct igc_mac_addr *mac_table;
-
 	u8 rss_indir_tbl[IGC_RETA_SIZE];
 
 	unsigned long link_check_timeout;
@@ -470,15 +468,6 @@ struct igc_nfc_filter {
 	u16 action;
 };
 
-struct igc_mac_addr {
-	u8 addr[ETH_ALEN];
-	s8 queue;
-	u8 state; /* bitmask */
-};
-
-#define IGC_MAC_STATE_DEFAULT		0x1
-#define IGC_MAC_STATE_IN_USE		0x2
-
 #define IGC_MAX_RXNFC_FILTERS		16
 
 /* igc_desc_unused - calculate if we have unused descriptors */
diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 1127ef81e374..e190a7f83c3c 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -62,6 +62,7 @@
  * (RAR[15]) for our directed address used by controllers with
  * manageability enabled, allowing us room for 15 multicast addresses.
  */
+#define IGC_RAH_RAH_MASK	0x0000FFFF
 #define IGC_RAH_QSEL_MASK	0x000C0000
 #define IGC_RAH_QSEL_SHIFT	18
 #define IGC_RAH_QSEL_ENABLE	BIT(28)
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 411af7eafe19..1779d20299d0 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -820,17 +820,12 @@ static void igc_clear_mac_filter_hw(struct igc_adapter *adapter, int index)
 /* Set default MAC address for the PF in the first RAR entry */
 static void igc_set_default_mac_filter(struct igc_adapter *adapter)
 {
-	struct igc_mac_addr *mac_table = &adapter->mac_table[0];
 	struct net_device *dev = adapter->netdev;
 	u8 *addr = adapter->hw.mac.addr;
 
 	netdev_dbg(dev, "Set default MAC address filter: address %pM", addr);
 
-	ether_addr_copy(mac_table->addr, addr);
-	mac_table->state = IGC_MAC_STATE_DEFAULT | IGC_MAC_STATE_IN_USE;
-	mac_table->queue = -1;
-
-	igc_set_mac_filter_hw(adapter, 0, addr, mac_table->queue);
+	igc_set_mac_filter_hw(adapter, 0, addr, -1);
 }
 
 /**
@@ -2187,16 +2182,21 @@ static void igc_nfc_filter_restore(struct igc_adapter *adapter)
 
 static int igc_find_mac_filter(struct igc_adapter *adapter, const u8 *addr)
 {
-	int max_entries = adapter->hw.mac.rar_entry_count;
-	struct igc_mac_addr *entry;
+	struct igc_hw *hw = &adapter->hw;
+	int max_entries = hw->mac.rar_entry_count;
+	u32 ral, rah;
 	int i;
 
 	for (i = 0; i < max_entries; i++) {
-		entry = &adapter->mac_table[i];
+		ral = rd32(IGC_RAL(i));
+		rah = rd32(IGC_RAH(i));
 
-		if (!(entry->state & IGC_MAC_STATE_IN_USE))
+		if (!(rah & IGC_RAH_AV))
 			continue;
-		if (!ether_addr_equal(addr, entry->addr))
+		if ((rah & IGC_RAH_RAH_MASK) !=
+		    le16_to_cpup((__le16 *)(addr + 4)))
+			continue;
+		if (ral != le32_to_cpup((__le32 *)(addr)))
 			continue;
 
 		return i;
@@ -2207,14 +2207,15 @@ static int igc_find_mac_filter(struct igc_adapter *adapter, const u8 *addr)
 
 static int igc_get_avail_mac_filter_slot(struct igc_adapter *adapter)
 {
-	int max_entries = adapter->hw.mac.rar_entry_count;
-	struct igc_mac_addr *entry;
+	struct igc_hw *hw = &adapter->hw;
+	int max_entries = hw->mac.rar_entry_count;
+	u32 rah;
 	int i;
 
 	for (i = 0; i < max_entries; i++) {
-		entry = &adapter->mac_table[i];
+		rah = rd32(IGC_RAH(i));
 
-		if (!(entry->state & IGC_MAC_STATE_IN_USE))
+		if (!(rah & IGC_RAH_AV))
 			return i;
 	}
 
@@ -2242,7 +2243,7 @@ int igc_add_mac_filter(struct igc_adapter *adapter, const u8 *addr,
 
 	index = igc_find_mac_filter(adapter, addr);
 	if (index >= 0)
-		goto update_queue_assignment;
+		goto update_filter;
 
 	index = igc_get_avail_mac_filter_slot(adapter);
 	if (index < 0)
@@ -2251,11 +2252,7 @@ int igc_add_mac_filter(struct igc_adapter *adapter, const u8 *addr,
 	netdev_dbg(dev, "Add MAC address filter: index %d address %pM queue %d",
 		   index, addr, queue);
 
-	ether_addr_copy(adapter->mac_table[index].addr, addr);
-	adapter->mac_table[index].state |= IGC_MAC_STATE_IN_USE;
-update_queue_assignment:
-	adapter->mac_table[index].queue = queue;
-
+update_filter:
 	igc_set_mac_filter_hw(adapter, index, addr, queue);
 	return 0;
 }
@@ -2270,7 +2267,6 @@ int igc_add_mac_filter(struct igc_adapter *adapter, const u8 *addr,
 int igc_del_mac_filter(struct igc_adapter *adapter, const u8 *addr)
 {
 	struct net_device *dev = adapter->netdev;
-	struct igc_mac_addr *entry;
 	int index;
 
 	if (!is_valid_ether_addr(addr))
@@ -2280,24 +2276,18 @@ int igc_del_mac_filter(struct igc_adapter *adapter, const u8 *addr)
 	if (index < 0)
 		return -ENOENT;
 
-	entry = &adapter->mac_table[index];
-
-	if (entry->state & IGC_MAC_STATE_DEFAULT) {
+	if (index == 0) {
 		/* If this is the default filter, we don't actually delete it.
 		 * We just reset to its default value i.e. disable queue
 		 * assignment.
 		 */
 		netdev_dbg(dev, "Disable default MAC filter queue assignment");
 
-		entry->queue = -1;
-		igc_set_mac_filter_hw(adapter, 0, addr, entry->queue);
+		igc_set_mac_filter_hw(adapter, 0, addr, -1);
 	} else {
 		netdev_dbg(dev, "Delete MAC address filter: index %d address %pM",
 			   index, addr);
 
-		entry->state = 0;
-		entry->queue = -1;
-		memset(entry->addr, 0, ETH_ALEN);
 		igc_clear_mac_filter_hw(adapter, index);
 	}
 
@@ -3405,8 +3395,6 @@ static int igc_sw_init(struct igc_adapter *adapter)
 	struct pci_dev *pdev = adapter->pdev;
 	struct igc_hw *hw = &adapter->hw;
 
-	int size = sizeof(struct igc_mac_addr) * hw->mac.rar_entry_count;
-
 	pci_read_config_word(pdev, PCI_COMMAND, &hw->bus.pci_cmd_word);
 
 	/* set default ring sizes */
@@ -3430,10 +3418,6 @@ static int igc_sw_init(struct igc_adapter *adapter)
 	/* Assume MSI-X interrupts, will be checked during IRQ allocation */
 	adapter->flags |= IGC_FLAG_HAS_MSIX;
 
-	adapter->mac_table = kzalloc(size, GFP_ATOMIC);
-	if (!adapter->mac_table)
-		return -ENOMEM;
-
 	igc_init_queue_configuration(adapter);
 
 	/* This call may decrease the number of queues */
@@ -5139,7 +5123,6 @@ static void igc_remove(struct pci_dev *pdev)
 	pci_iounmap(pdev, adapter->io_addr);
 	pci_release_mem_regions(pdev);
 
-	kfree(adapter->mac_table);
 	free_netdev(netdev);
 
 	pci_disable_pcie_error_reporting(pdev);
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
