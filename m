Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA8110237C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Nov 2019 12:43:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E335021F76;
	Tue, 19 Nov 2019 11:43:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id paHjHCxRo-g6; Tue, 19 Nov 2019 11:43:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7C3CC22720;
	Tue, 19 Nov 2019 11:43:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 450C01BF83B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:43:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4192986508
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:43:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zyYi9BFF5HXi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Nov 2019 11:43:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 85E3986505
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:43:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 03:43:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,322,1569308400"; d="scan'208";a="215524411"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by fmsmga001.fm.intel.com with ESMTP; 19 Nov 2019 03:43:52 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 19 Nov 2019 13:43:51 +0200
Message-Id: <20191119114351.41780-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 03/15] igc: Remove no need declaration
 of the igc_set_default_mac_filter
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
Rearrange the igc_set_default_mac_filter function implementation.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 91 +++++++++++++++----------------
 1 file changed, 45 insertions(+), 46 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 87823a04427e..4484e7ab0a53 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -54,7 +54,6 @@ MODULE_DEVICE_TABLE(pci, igc_pci_tbl);
 /* forward declaration */
 static int igc_sw_init(struct igc_adapter *);
 static void igc_configure(struct igc_adapter *adapter);
-static void igc_set_default_mac_filter(struct igc_adapter *adapter);
 static void igc_set_rx_mode(struct net_device *netdev);
 static void igc_write_itr(struct igc_q_vector *q_vector);
 static void igc_assign_vector(struct igc_q_vector *q_vector, int msix_vector);
@@ -770,6 +769,51 @@ static void igc_setup_tctl(struct igc_adapter *adapter)
 }
 
 /**
+ * igc_rar_set_index - Sync RAL[index] and RAH[index] registers with MAC table
+ * @adapter: address of board private structure
+ * @index: Index of the RAR entry which need to be synced with MAC table
+ */
+static void igc_rar_set_index(struct igc_adapter *adapter, u32 index)
+{
+	u8 *addr = adapter->mac_table[index].addr;
+	struct igc_hw *hw = &adapter->hw;
+	u32 rar_low, rar_high;
+
+	/* HW expects these to be in network order when they are plugged
+	 * into the registers which are little endian.  In order to guarantee
+	 * that ordering we need to do an leXX_to_cpup here in order to be
+	 * ready for the byteswap that occurs with writel
+	 */
+	rar_low = le32_to_cpup((__le32 *)(addr));
+	rar_high = le16_to_cpup((__le16 *)(addr + 4));
+
+	/* Indicate to hardware the Address is Valid. */
+	if (adapter->mac_table[index].state & IGC_MAC_STATE_IN_USE) {
+		if (is_valid_ether_addr(addr))
+			rar_high |= IGC_RAH_AV;
+
+		rar_high |= IGC_RAH_POOL_1 <<
+			adapter->mac_table[index].queue;
+	}
+
+	wr32(IGC_RAL(index), rar_low);
+	wrfl();
+	wr32(IGC_RAH(index), rar_high);
+	wrfl();
+}
+
+/* Set default MAC address for the PF in the first RAR entry */
+static void igc_set_default_mac_filter(struct igc_adapter *adapter)
+{
+	struct igc_mac_addr *mac_table = &adapter->mac_table[0];
+
+	ether_addr_copy(mac_table->addr, adapter->hw.mac.addr);
+	mac_table->state = IGC_MAC_STATE_DEFAULT | IGC_MAC_STATE_IN_USE;
+
+	igc_rar_set_index(adapter, 0);
+}
+
+/**
  * igc_set_mac - Change the Ethernet Address of the NIC
  * @netdev: network interface device structure
  * @p: pointer to an address structure
@@ -2430,51 +2474,6 @@ static void igc_configure(struct igc_adapter *adapter)
 	}
 }
 
-/**
- * igc_rar_set_index - Sync RAL[index] and RAH[index] registers with MAC table
- * @adapter: address of board private structure
- * @index: Index of the RAR entry which need to be synced with MAC table
- */
-static void igc_rar_set_index(struct igc_adapter *adapter, u32 index)
-{
-	u8 *addr = adapter->mac_table[index].addr;
-	struct igc_hw *hw = &adapter->hw;
-	u32 rar_low, rar_high;
-
-	/* HW expects these to be in network order when they are plugged
-	 * into the registers which are little endian.  In order to guarantee
-	 * that ordering we need to do an leXX_to_cpup here in order to be
-	 * ready for the byteswap that occurs with writel
-	 */
-	rar_low = le32_to_cpup((__le32 *)(addr));
-	rar_high = le16_to_cpup((__le16 *)(addr + 4));
-
-	/* Indicate to hardware the Address is Valid. */
-	if (adapter->mac_table[index].state & IGC_MAC_STATE_IN_USE) {
-		if (is_valid_ether_addr(addr))
-			rar_high |= IGC_RAH_AV;
-
-		rar_high |= IGC_RAH_POOL_1 <<
-			adapter->mac_table[index].queue;
-	}
-
-	wr32(IGC_RAL(index), rar_low);
-	wrfl();
-	wr32(IGC_RAH(index), rar_high);
-	wrfl();
-}
-
-/* Set default MAC address for the PF in the first RAR entry */
-static void igc_set_default_mac_filter(struct igc_adapter *adapter)
-{
-	struct igc_mac_addr *mac_table = &adapter->mac_table[0];
-
-	ether_addr_copy(mac_table->addr, adapter->hw.mac.addr);
-	mac_table->state = IGC_MAC_STATE_DEFAULT | IGC_MAC_STATE_IN_USE;
-
-	igc_rar_set_index(adapter, 0);
-}
-
 /* If the filter to be added and an already existing filter express
  * the same address and address type, it should be possible to only
  * override the other configurations, for example the queue to steer
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
