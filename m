Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B03318A8DC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2020 00:02:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D83238666C;
	Wed, 18 Mar 2020 23:02:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WFRZlJc9PmiS; Wed, 18 Mar 2020 23:02:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DA7D1866E5;
	Wed, 18 Mar 2020 23:02:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0D0BE1BF335
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 23:02:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0A82986644
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 23:02:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0o6X65KWlwim for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2020 23:02:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AE6E386640
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 23:02:09 +0000 (UTC)
IronPort-SDR: zznTgVIEPssPyTOkkwa84shZN9GsMbSNOkF9cEgUpkbvLDMRBuSMI1QB2v/uhQdnvOMuyZ1xyH
 trv5s4pJccgA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 16:02:09 -0700
IronPort-SDR: kgt9P5bXfdbfPUOPko4YP5JCRpHoWA8cJHkJLlV21YBPvUVdmRlJRInUcGUjdkgeopF01vXeHI
 yP9xn50JOvig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,569,1574150400"; d="scan'208";a="248341777"
Received: from ymtomada-mobl.amr.corp.intel.com ([10.251.21.179])
 by orsmga006.jf.intel.com with ESMTP; 18 Mar 2020 16:02:09 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 18 Mar 2020 16:00:55 -0700
Message-Id: <20200318230102.36952-6-andre.guedes@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200318230102.36952-1-andre.guedes@intel.com>
References: <20200318230102.36952-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 05/12] igc: Refactor igc_rar_set_index()
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

Current igc_rar_set_index() implementation is a bit convoluted so this
patch does some code refactoring to improve it.

The helper igc_rar_set_index() is about writing MAC filter settings into
hardware registers. Logic such as address validation belongs to
functions upper in the call chain such as igc_set_mac() and
igc_add_mac_filter(). So this patch moves the is_valid_ether_addr() call
to igc_add_mac_filter(). No need to touch igc_set_mac() since it already
checks it.

The variables 'rar_low' and 'rar_high' represent the value in registers
RAL and RAH so we rename them to 'ral' and 'rah', respectivelly, to
match the registers names.

To make it explicity, filter settings are passed as arguments to the
function instead of reading them from adapter->mac_table "under the
hood". Also, the function was renamed to igc_set_mac_filter_hw to make
it more clear what it does.

Finally, the patch removes some wrfl() calls and comments not needed.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 75 +++++++++++++----------
 1 file changed, 43 insertions(+), 32 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index cc1e1b0286b3..0ca7afaf6fc7 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -764,43 +764,53 @@ static void igc_setup_tctl(struct igc_adapter *adapter)
 	wr32(IGC_TCTL, tctl);
 }
 
-/**
- * igc_rar_set_index - Sync RAL[index] and RAH[index] registers with MAC table
- * @adapter: address of board private structure
- * @index: Index of the RAR entry which need to be synced with MAC table
+/* Set MAC address filter in hardware.
+ *
+ * @adapter: Pointer to adapter where the filter should be set.
+ * @index: Filter index.
+ * @addr: Destination MAC address.
+ * @queue: If non-negative, queue assignment feature is enabled and frames
+ * matching the filter are enqueued onto 'queue'. Otherwise, queue assignment
+ * is disabled.
  */
-static void igc_rar_set_index(struct igc_adapter *adapter, u32 index)
+static void igc_set_mac_filter_hw(struct igc_adapter *adapter, int index,
+				  const u8 *addr, int queue)
 {
-	u8 *addr = adapter->mac_table[index].addr;
 	struct igc_hw *hw = &adapter->hw;
-	u32 rar_low, rar_high;
+	u32 ral, rah;
 
-	/* HW expects these to be in network order when they are plugged
-	 * into the registers which are little endian.  In order to guarantee
-	 * that ordering we need to do an leXX_to_cpup here in order to be
-	 * ready for the byteswap that occurs with writel
-	 */
-	rar_low = le32_to_cpup((__le32 *)(addr));
-	rar_high = le16_to_cpup((__le16 *)(addr + 4));
+	if (WARN_ON(index >= hw->mac.rar_entry_count))
+		return;
 
-	if (adapter->mac_table[index].state & IGC_MAC_STATE_QUEUE_STEERING) {
-		u8 queue = adapter->mac_table[index].queue;
-		u32 qsel = IGC_RAH_QSEL_MASK & (queue << IGC_RAH_QSEL_SHIFT);
+	ral = le32_to_cpup((__le32 *)(addr));
+	rah = le16_to_cpup((__le16 *)(addr + 4));
 
-		rar_high |= qsel;
-		rar_high |= IGC_RAH_QSEL_ENABLE;
+	if (queue >= 0) {
+		rah &= ~IGC_RAH_QSEL_MASK;
+		rah |= (queue << IGC_RAH_QSEL_SHIFT);
+		rah |= IGC_RAH_QSEL_ENABLE;
 	}
 
-	/* Indicate to hardware the Address is Valid. */
-	if (adapter->mac_table[index].state & IGC_MAC_STATE_IN_USE) {
-		if (is_valid_ether_addr(addr))
-			rar_high |= IGC_RAH_AV;
-	}
+	rah |= IGC_RAH_AV;
 
-	wr32(IGC_RAL(index), rar_low);
-	wrfl();
-	wr32(IGC_RAH(index), rar_high);
-	wrfl();
+	wr32(IGC_RAL(index), ral);
+	wr32(IGC_RAH(index), rah);
+}
+
+/* Clear MAC address filter in hardware.
+ *
+ * @adapter: Pointer to adapter where the filter should be cleared.
+ * @index: Filter index.
+ */
+static void igc_clear_mac_filter_hw(struct igc_adapter *adapter, int index)
+{
+	struct igc_hw *hw = &adapter->hw;
+
+	if (WARN_ON(index >= hw->mac.rar_entry_count))
+		return;
+
+	wr32(IGC_RAL(index), 0);
+	wr32(IGC_RAH(index), 0);
 }
 
 /* Set default MAC address for the PF in the first RAR entry */
@@ -811,7 +821,7 @@ static void igc_set_default_mac_filter(struct igc_adapter *adapter)
 	ether_addr_copy(mac_table->addr, adapter->hw.mac.addr);
 	mac_table->state = IGC_MAC_STATE_DEFAULT | IGC_MAC_STATE_IN_USE;
 
-	igc_rar_set_index(adapter, 0);
+	igc_set_mac_filter_hw(adapter, 0, mac_table->addr, -1);
 }
 
 /**
@@ -2199,7 +2209,7 @@ static int igc_add_mac_filter(struct igc_adapter *adapter, const u8 *addr,
 	int rar_entries = hw->mac.rar_entry_count;
 	int i;
 
-	if (is_zero_ether_addr(addr))
+	if (!is_valid_ether_addr(addr))
 		return -EINVAL;
 	if (flags & IGC_MAC_STATE_SRC_ADDR)
 		return -ENOTSUPP;
@@ -2217,7 +2227,7 @@ static int igc_add_mac_filter(struct igc_adapter *adapter, const u8 *addr,
 		adapter->mac_table[i].queue = queue;
 		adapter->mac_table[i].state |= IGC_MAC_STATE_IN_USE | flags;
 
-		igc_rar_set_index(adapter, i);
+		igc_set_mac_filter_hw(adapter, i, addr, queue);
 		return 0;
 	}
 
@@ -2261,13 +2271,14 @@ static int igc_del_mac_filter(struct igc_adapter *adapter, const u8 *addr,
 			adapter->mac_table[i].state =
 				IGC_MAC_STATE_DEFAULT | IGC_MAC_STATE_IN_USE;
 			adapter->mac_table[i].queue = 0;
+			igc_set_mac_filter_hw(adapter, 0, addr, -1);
 		} else {
 			adapter->mac_table[i].state = 0;
 			adapter->mac_table[i].queue = 0;
 			memset(adapter->mac_table[i].addr, 0, ETH_ALEN);
+			igc_clear_mac_filter_hw(adapter, i);
 		}
 
-		igc_rar_set_index(adapter, i);
 		return 0;
 	}
 
-- 
2.25.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
