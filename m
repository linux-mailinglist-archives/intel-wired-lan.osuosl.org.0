Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E781A172A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Apr 2020 23:07:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 711FD220FB;
	Tue,  7 Apr 2020 21:07:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d1lUew05WWpi; Tue,  7 Apr 2020 21:07:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BC639220C4;
	Tue,  7 Apr 2020 21:07:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B3E621BF616
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2020 21:07:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AE8B287D48
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2020 21:07:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7CLZYKlp50Z8 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Apr 2020 21:07:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CDC5886D53
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2020 21:07:22 +0000 (UTC)
IronPort-SDR: c5yx42z4H1VeDAi3c+3nrcpMNILE06oJLxzjOQmzT974dCx8+xCOgK/dYv/BsFQ74sfl0mlKqW
 Ei9cYJptx4vQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 14:07:21 -0700
IronPort-SDR: 6EU1VjJIoLa4CH7V1BD/0rVToCUmwuT7X9YAEFtZK9OtFc9tq8ZVytjIS35hBRfdDgX0gYumi7
 U7mZ7YUtIqJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,356,1580803200"; d="scan'208";a="452593256"
Received: from jyguan-mobl1.amr.corp.intel.com ([10.212.37.126])
 by fmsmga006.fm.intel.com with ESMTP; 07 Apr 2020 14:07:21 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  7 Apr 2020 14:07:10 -0700
Message-Id: <20200407210711.24371-5-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200407210711.24371-1-andre.guedes@intel.com>
References: <20200407210711.24371-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 4/5] igc: Refactor ethertype filtering code
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

The whole ethertype filtering code is implemented in igc_ethtool.c and
mixes logic from ethtool and core parts. This patch refactors it so core
logic is moved to igc_main.c, aligning the ethertype filtering code
organization with the rest of the filtering code from the driver (MAC
address and VLAN priority).

Besides moving code to igc_main.c, this patch also does some minor
improvements to the code. Below are some highlights.

In case all filters are already in use and the user tries to add another
filter, we return -ENOSPC instead of -EINVAL so a more meaningful error
code is provided. This also aligns with the behavior implemented in MAC
address filtering code.

With this code refactoring, 'etype_bitmap' array in struct igc_adapter
and 'etype_reg_index' in struct igc_nfc_filter are not needed anymore
and are removed.

Log messages are added to help debugging the ethertype filtering code.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  4 +-
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 67 ++------------
 drivers/net/ethernet/intel/igc/igc_main.c    | 93 ++++++++++++++++++++
 3 files changed, 103 insertions(+), 61 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index c20ac078fdef..22dde0590a23 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -189,7 +189,6 @@ struct igc_adapter {
 
 	/* lock for RX network flow classification filter */
 	spinlock_t nfc_lock;
-	bool etype_bitmap[MAX_ETYPE_FILTER];
 
 	struct igc_mac_addr *mac_table;
 
@@ -238,6 +237,8 @@ int igc_del_mac_filter(struct igc_adapter *adapter, const u8 *addr,
 int igc_add_vlan_prio_filter(struct igc_adapter *adapter, int prio,
 			     int queue);
 void igc_del_vlan_prio_filter(struct igc_adapter *adapter, int prio);
+int igc_add_etype_filter(struct igc_adapter *adapter, u16 etype, int queue);
+int igc_del_etype_filter(struct igc_adapter *adapter, u16 etype);
 void igc_update_stats(struct igc_adapter *adapter);
 
 /* igc_dump declarations */
@@ -466,7 +467,6 @@ struct igc_nfc_filter {
 	struct hlist_node nfc_node;
 	struct igc_nfc_input filter;
 	unsigned long cookie;
-	u16 etype_reg_index;
 	u16 sw_idx;
 	u16 action;
 };
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index a66b04755b2a..5a53bf6ee1e5 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1183,46 +1183,6 @@ static int igc_set_rss_hash_opt(struct igc_adapter *adapter,
 	return 0;
 }
 
-static int igc_rxnfc_write_etype_filter(struct igc_adapter *adapter,
-					struct igc_nfc_filter *input)
-{
-	struct igc_hw *hw = &adapter->hw;
-	u8 i;
-	u32 etqf;
-	u16 etype;
-
-	/* find an empty etype filter register */
-	for (i = 0; i < MAX_ETYPE_FILTER; ++i) {
-		if (!adapter->etype_bitmap[i])
-			break;
-	}
-	if (i == MAX_ETYPE_FILTER) {
-		netdev_err(adapter->netdev,
-			   "ethtool -N: etype filters are all used");
-		return -EINVAL;
-	}
-
-	adapter->etype_bitmap[i] = true;
-
-	etqf = rd32(IGC_ETQF(i));
-	etype = ntohs(input->filter.etype & ETHER_TYPE_FULL_MASK);
-
-	etqf |= IGC_ETQF_FILTER_ENABLE;
-	etqf &= ~IGC_ETQF_ETYPE_MASK;
-	etqf |= (etype & IGC_ETQF_ETYPE_MASK);
-
-	etqf &= ~IGC_ETQF_QUEUE_MASK;
-	etqf |= ((input->action << IGC_ETQF_QUEUE_SHIFT)
-		& IGC_ETQF_QUEUE_MASK);
-	etqf |= IGC_ETQF_QUEUE_ENABLE;
-
-	wr32(IGC_ETQF(i), etqf);
-
-	input->etype_reg_index = i;
-
-	return 0;
-}
-
 int igc_add_filter(struct igc_adapter *adapter, struct igc_nfc_filter *input)
 {
 	struct igc_hw *hw = &adapter->hw;
@@ -1236,7 +1196,9 @@ int igc_add_filter(struct igc_adapter *adapter, struct igc_nfc_filter *input)
 	}
 
 	if (input->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE) {
-		err = igc_rxnfc_write_etype_filter(adapter, input);
+		u16 etype = ntohs(input->filter.etype);
+
+		err = igc_add_etype_filter(adapter, etype, input->action);
 		if (err)
 			return err;
 	}
@@ -1267,26 +1229,13 @@ int igc_add_filter(struct igc_adapter *adapter, struct igc_nfc_filter *input)
 	return 0;
 }
 
-static void igc_clear_etype_filter_regs(struct igc_adapter *adapter,
-					u16 reg_index)
-{
-	struct igc_hw *hw = &adapter->hw;
-	u32 etqf = rd32(IGC_ETQF(reg_index));
-
-	etqf &= ~IGC_ETQF_QUEUE_ENABLE;
-	etqf &= ~IGC_ETQF_QUEUE_MASK;
-	etqf &= ~IGC_ETQF_FILTER_ENABLE;
-
-	wr32(IGC_ETQF(reg_index), etqf);
-
-	adapter->etype_bitmap[reg_index] = false;
-}
-
 int igc_erase_filter(struct igc_adapter *adapter, struct igc_nfc_filter *input)
 {
-	if (input->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE)
-		igc_clear_etype_filter_regs(adapter,
-					    input->etype_reg_index);
+	if (input->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE) {
+		u16 etype = ntohs(input->filter.etype);
+
+		igc_del_etype_filter(adapter, etype);
+	}
 
 	if (input->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI) {
 		int prio = (ntohs(input->filter.vlan_tci) & VLAN_PRIO_MASK)
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 150f4c6c029e..9c2d487803b2 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2367,6 +2367,99 @@ void igc_del_vlan_prio_filter(struct igc_adapter *adapter, int prio)
 		   prio);
 }
 
+static int igc_get_avail_etype_filter_slot(struct igc_adapter *adapter)
+{
+	struct igc_hw *hw = &adapter->hw;
+	int i;
+
+	for (i = 0; i < MAX_ETYPE_FILTER; i++) {
+		u32 etqf = rd32(IGC_ETQF(i));
+
+		if (!(etqf & IGC_ETQF_FILTER_ENABLE))
+			return i;
+	}
+
+	return -1;
+}
+
+/**
+ * igc_add_etype_filter() - Add ethertype filter.
+ * @adapter: Pointer to adapter where the filter should be added.
+ * @etype: Ethertype value.
+ * @queue: If non-negative, queue assignment feature is enabled and frames
+ *         matching the filter are enqueued onto 'queue'. Otherwise, queue
+ *         assignment is disabled.
+ *
+ * Return: 0 in case of success, negative errno code otherwise.
+ */
+int igc_add_etype_filter(struct igc_adapter *adapter, u16 etype, int queue)
+{
+	struct igc_hw *hw = &adapter->hw;
+	int index;
+	u32 etqf;
+
+	index = igc_get_avail_etype_filter_slot(adapter);
+	if (index < 0)
+		return -ENOSPC;
+
+	etqf = rd32(IGC_ETQF(index));
+
+	etqf &= ~IGC_ETQF_ETYPE_MASK;
+	etqf |= etype;
+
+	if (queue >= 0) {
+		etqf &= ~IGC_ETQF_QUEUE_MASK;
+		etqf |= (queue << IGC_ETQF_QUEUE_SHIFT);
+		etqf |= IGC_ETQF_QUEUE_ENABLE;
+	}
+
+	etqf |= IGC_ETQF_FILTER_ENABLE;
+
+	wr32(IGC_ETQF(index), etqf);
+
+	netdev_dbg(adapter->netdev, "Add ethertype filter: etype %04x queue %d",
+		   etype, queue);
+	return 0;
+}
+
+static int igc_find_etype_filter(struct igc_adapter *adapter, u16 etype)
+{
+	struct igc_hw *hw = &adapter->hw;
+	int i;
+
+	for (i = 0; i < MAX_ETYPE_FILTER; i++) {
+		u32 etqf = rd32(IGC_ETQF(i));
+
+		if ((etqf & IGC_ETQF_ETYPE_MASK) == etype)
+			return i;
+	}
+
+	return -1;
+}
+
+/**
+ * igc_del_etype_filter() - Delete ethertype filter.
+ * @adapter: Pointer to adapter where the filter should be deleted from.
+ * @etype: Ethertype value.
+ *
+ * Return: 0 in case of success, negative errno code otherwise.
+ */
+int igc_del_etype_filter(struct igc_adapter *adapter, u16 etype)
+{
+	struct igc_hw *hw = &adapter->hw;
+	int index;
+
+	index = igc_find_etype_filter(adapter, etype);
+	if (index < 0)
+		return -ENOENT;
+
+	wr32(IGC_ETQF(index), 0);
+
+	netdev_dbg(adapter->netdev, "Delete ethertype filter: etype %04x",
+		   etype);
+	return 0;
+}
+
 static int igc_uc_sync(struct net_device *netdev, const unsigned char *addr)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
