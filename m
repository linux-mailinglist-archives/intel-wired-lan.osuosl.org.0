Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 901571B6AB3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2020 03:12:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 256BE86E36;
	Fri, 24 Apr 2020 01:12:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0K-QdlM0kcUf; Fri, 24 Apr 2020 01:12:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BD42C86EB2;
	Fri, 24 Apr 2020 01:12:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 978151BF3D0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 01:12:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 84BEC8867E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 01:12:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 74PDvMoa9WvK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2020 01:12:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EDF8887E62
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 01:12:16 +0000 (UTC)
IronPort-SDR: QAEwQEA9gCgJAjMEYvwbwQTzHdP+8KzQZkrqD3W4aEbqF0mmSoMlC1sasvVsFImHfJIQoi2PAa
 5MA5X+NBNLug==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 18:12:16 -0700
IronPort-SDR: ib7sjkMxkl62GlzJs6PNNexCgkMVgM/CldtcrdcrMM7PEYdDAj/u+f/1S+6eZuFeBdS23fsvfA
 W5ZmvRRurJ7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,309,1583222400"; d="scan'208";a="457145540"
Received: from jwstark-mobl.amr.corp.intel.com ([10.212.173.233])
 by fmsmga005.fm.intel.com with ESMTP; 23 Apr 2020 18:12:15 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org, aaron.f.brown@intel.com,
 jeffrey.t.kirsher@intel.com
Date: Thu, 23 Apr 2020 18:11:19 -0700
Message-Id: <20200424011119.98746-1-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200403181743.23447-5-andre.guedes@intel.com>
References: <20200403181743.23447-5-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 4/4] igc: Refactor VLAN priority
 filtering code
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

The whole VLAN priority filtering code is implemented in igc_ethtool.c
and mixes logic from ethtool and core parts. This patch refactors it so
core logic is moved to igc_main.c, aligning the VLAN priority filtering
code organization with the MAC address filtering code.

This patch also takes the opportunity to add some log messages to ease
debugging.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
v2: Previous version had a bug when clearing IGC_VLANPQF_QSEL bits in
    igc_del_vlan_prio_filter().
---
 drivers/net/ethernet/intel/igc/igc.h         |  3 +
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 64 ++++----------------
 drivers/net/ethernet/intel/igc/igc_main.c    | 52 ++++++++++++++++
 3 files changed, 68 insertions(+), 51 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 1b07e8b870c2..48eb9c00a44d 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -235,6 +235,9 @@ int igc_add_mac_filter(struct igc_adapter *adapter, const u8 *addr,
 		       const s8 queue, const u8 flags);
 int igc_del_mac_filter(struct igc_adapter *adapter, const u8 *addr,
 		       const u8 flags);
+int igc_add_vlan_prio_filter(struct igc_adapter *adapter, int prio,
+			     int queue);
+void igc_del_vlan_prio_filter(struct igc_adapter *adapter, int prio);
 void igc_update_stats(struct igc_adapter *adapter);
 
 /* igc_dump declarations */
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 036a2244b76c..35bc125183a0 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1223,35 +1223,6 @@ static int igc_rxnfc_write_etype_filter(struct igc_adapter *adapter,
 	return 0;
 }
 
-static int igc_rxnfc_write_vlan_prio_filter(struct igc_adapter *adapter,
-					    struct igc_nfc_filter *input)
-{
-	struct igc_hw *hw = &adapter->hw;
-	u8 vlan_priority;
-	u16 queue_index;
-	u32 vlapqf;
-
-	vlapqf = rd32(IGC_VLANPQF);
-	vlan_priority = (ntohs(input->filter.vlan_tci) & VLAN_PRIO_MASK)
-				>> VLAN_PRIO_SHIFT;
-	queue_index = (vlapqf >> (vlan_priority * 4)) & IGC_VLANPQF_QUEUE_MASK;
-
-	/* check whether this vlan prio is already set */
-	if (vlapqf & IGC_VLANPQF_VALID(vlan_priority) &&
-	    queue_index != input->action) {
-		netdev_err(adapter->netdev,
-			   "ethtool rxnfc set vlan prio filter failed");
-		return -EEXIST;
-	}
-
-	vlapqf |= IGC_VLANPQF_VALID(vlan_priority);
-	vlapqf |= IGC_VLANPQF_QSEL(vlan_priority, input->action);
-
-	wr32(IGC_VLANPQF, vlapqf);
-
-	return 0;
-}
-
 int igc_add_filter(struct igc_adapter *adapter, struct igc_nfc_filter *input)
 {
 	struct igc_hw *hw = &adapter->hw;
@@ -1285,10 +1256,15 @@ int igc_add_filter(struct igc_adapter *adapter, struct igc_nfc_filter *input)
 			return err;
 	}
 
-	if (input->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI)
-		err = igc_rxnfc_write_vlan_prio_filter(adapter, input);
+	if (input->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI) {
+		int prio = (ntohs(input->filter.vlan_tci) & VLAN_PRIO_MASK)
+				>> VLAN_PRIO_SHIFT;
+		err = igc_add_vlan_prio_filter(adapter, prio, input->action);
+		if (err)
+			return err;
+	}
 
-	return err;
+	return 0;
 }
 
 static void igc_clear_etype_filter_regs(struct igc_adapter *adapter,
@@ -1306,31 +1282,17 @@ static void igc_clear_etype_filter_regs(struct igc_adapter *adapter,
 	adapter->etype_bitmap[reg_index] = false;
 }
 
-static void igc_clear_vlan_prio_filter(struct igc_adapter *adapter,
-				       u16 vlan_tci)
-{
-	struct igc_hw *hw = &adapter->hw;
-	u8 vlan_priority;
-	u32 vlapqf;
-
-	vlan_priority = (vlan_tci & VLAN_PRIO_MASK) >> VLAN_PRIO_SHIFT;
-
-	vlapqf = rd32(IGC_VLANPQF);
-	vlapqf &= ~IGC_VLANPQF_VALID(vlan_priority);
-	vlapqf &= ~IGC_VLANPQF_QSEL(vlan_priority, IGC_VLANPQF_QUEUE_MASK);
-
-	wr32(IGC_VLANPQF, vlapqf);
-}
-
 int igc_erase_filter(struct igc_adapter *adapter, struct igc_nfc_filter *input)
 {
 	if (input->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE)
 		igc_clear_etype_filter_regs(adapter,
 					    input->etype_reg_index);
 
-	if (input->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI)
-		igc_clear_vlan_prio_filter(adapter,
-					   ntohs(input->filter.vlan_tci));
+	if (input->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI) {
+		int prio = (ntohs(input->filter.vlan_tci) & VLAN_PRIO_MASK)
+				>> VLAN_PRIO_SHIFT;
+		igc_del_vlan_prio_filter(adapter, prio);
+	}
 
 	if (input->filter.match_flags & IGC_FILTER_FLAG_SRC_MAC_ADDR)
 		igc_del_mac_filter(adapter, input->filter.src_addr,
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index c3555148ca0e..7ae5bc476bdb 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2315,6 +2315,58 @@ int igc_del_mac_filter(struct igc_adapter *adapter, const u8 *addr,
 	return 0;
 }
 
+/**
+ * igc_add_vlan_prio_filter() - Add VLAN priority filter.
+ * @adapter: Pointer to adapter where the filter should be added.
+ * @prio: VLAN priority value.
+ * @queue: Queue number which matching frames are assigned to.
+ *
+ * Return: 0 in case of success, negative errno code otherwise.
+ */
+int igc_add_vlan_prio_filter(struct igc_adapter *adapter, int prio, int queue)
+{
+	struct net_device *dev = adapter->netdev;
+	struct igc_hw *hw = &adapter->hw;
+	u32 vlanpqf;
+
+	vlanpqf = rd32(IGC_VLANPQF);
+
+	if (vlanpqf & IGC_VLANPQF_VALID(prio)) {
+		netdev_dbg(dev, "VLAN priority filter already in use");
+		return -EEXIST;
+	}
+
+	vlanpqf |= IGC_VLANPQF_QSEL(prio, queue);
+	vlanpqf |= IGC_VLANPQF_VALID(prio);
+
+	wr32(IGC_VLANPQF, vlanpqf);
+
+	netdev_dbg(dev, "Add VLAN priority filter: prio %d queue %d",
+		   prio, queue);
+	return 0;
+}
+
+/**
+ * igc_del_vlan_prio_filter() - Delete VLAN priority filter.
+ * @adapter: Pointer to adapter where the filter should be deleted from.
+ * @prio: VLAN priority value.
+ */
+void igc_del_vlan_prio_filter(struct igc_adapter *adapter, int prio)
+{
+	struct igc_hw *hw = &adapter->hw;
+	u32 vlanpqf;
+
+	vlanpqf = rd32(IGC_VLANPQF);
+
+	vlanpqf &= ~IGC_VLANPQF_VALID(prio);
+	vlanpqf &= ~IGC_VLANPQF_QSEL(prio, IGC_VLANPQF_QUEUE_MASK);
+
+	wr32(IGC_VLANPQF, vlanpqf);
+
+	netdev_dbg(adapter->netdev, "Delete VLAN priority filter: prio %d",
+		   prio);
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
