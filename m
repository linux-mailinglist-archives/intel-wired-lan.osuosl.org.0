Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D723B10238A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Nov 2019 12:46:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 92642868CC;
	Tue, 19 Nov 2019 11:46:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ls2y35BlcyVs; Tue, 19 Nov 2019 11:46:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2680C86896;
	Tue, 19 Nov 2019 11:46:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 81B671BF83B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:46:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 79DD98830F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:46:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ui6kHGWj9QTv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Nov 2019 11:46:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 954F886963
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:46:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 03:45:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,322,1569308400"; d="scan'208";a="406425707"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by fmsmga005.fm.intel.com with ESMTP; 19 Nov 2019 03:45:24 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 19 Nov 2019 13:45:23 +0200
Message-Id: <20191119114523.42490-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 13/15] igc: Remove no need declaration
 of the igc_assign_vector
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
Rearrange the igc_assign_vector function implementation.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 123 +++++++++++++++---------------
 1 file changed, 61 insertions(+), 62 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 66a83c9509a5..bce18aee8d8f 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -54,7 +54,6 @@ MODULE_DEVICE_TABLE(pci, igc_pci_tbl);
 /* forward declaration */
 static int igc_sw_init(struct igc_adapter *);
 static void igc_write_itr(struct igc_q_vector *q_vector);
-static void igc_assign_vector(struct igc_q_vector *q_vector, int msix_vector);
 
 enum latency_range {
 	lowest_latency = 0,
@@ -2196,6 +2195,67 @@ static void igc_configure(struct igc_adapter *adapter)
 }
 
 /**
+ * igc_write_ivar - configure ivar for given MSI-X vector
+ * @hw: pointer to the HW structure
+ * @msix_vector: vector number we are allocating to a given ring
+ * @index: row index of IVAR register to write within IVAR table
+ * @offset: column offset of in IVAR, should be multiple of 8
+ *
+ * The IVAR table consists of 2 columns,
+ * each containing an cause allocation for an Rx and Tx ring, and a
+ * variable number of rows depending on the number of queues supported.
+ */
+static void igc_write_ivar(struct igc_hw *hw, int msix_vector,
+			   int index, int offset)
+{
+	u32 ivar = array_rd32(IGC_IVAR0, index);
+
+	/* clear any bits that are currently set */
+	ivar &= ~((u32)0xFF << offset);
+
+	/* write vector and valid bit */
+	ivar |= (msix_vector | IGC_IVAR_VALID) << offset;
+
+	array_wr32(IGC_IVAR0, index, ivar);
+}
+
+static void igc_assign_vector(struct igc_q_vector *q_vector, int msix_vector)
+{
+	struct igc_adapter *adapter = q_vector->adapter;
+	struct igc_hw *hw = &adapter->hw;
+	int rx_queue = IGC_N0_QUEUE;
+	int tx_queue = IGC_N0_QUEUE;
+
+	if (q_vector->rx.ring)
+		rx_queue = q_vector->rx.ring->reg_idx;
+	if (q_vector->tx.ring)
+		tx_queue = q_vector->tx.ring->reg_idx;
+
+	switch (hw->mac.type) {
+	case igc_i225:
+		if (rx_queue > IGC_N0_QUEUE)
+			igc_write_ivar(hw, msix_vector,
+				       rx_queue >> 1,
+				       (rx_queue & 0x1) << 4);
+		if (tx_queue > IGC_N0_QUEUE)
+			igc_write_ivar(hw, msix_vector,
+				       tx_queue >> 1,
+				       ((tx_queue & 0x1) << 4) + 8);
+		q_vector->eims_value = BIT(msix_vector);
+		break;
+	default:
+		WARN_ONCE(hw->mac.type != igc_i225, "Wrong MAC type\n");
+		break;
+	}
+
+	/* add q_vector eims value to global eims_enable_mask */
+	adapter->eims_enable_mask |= q_vector->eims_value;
+
+	/* configure q_vector to set itr on first interrupt */
+	q_vector->set_itr = 1;
+}
+
+/**
  * igc_configure_msix - Configure MSI-X hardware
  * @adapter: Pointer to adapter structure
  *
@@ -2871,67 +2931,6 @@ static irqreturn_t igc_msix_other(int irq, void *data)
 	return IRQ_HANDLED;
 }
 
-/**
- * igc_write_ivar - configure ivar for given MSI-X vector
- * @hw: pointer to the HW structure
- * @msix_vector: vector number we are allocating to a given ring
- * @index: row index of IVAR register to write within IVAR table
- * @offset: column offset of in IVAR, should be multiple of 8
- *
- * The IVAR table consists of 2 columns,
- * each containing an cause allocation for an Rx and Tx ring, and a
- * variable number of rows depending on the number of queues supported.
- */
-static void igc_write_ivar(struct igc_hw *hw, int msix_vector,
-			   int index, int offset)
-{
-	u32 ivar = array_rd32(IGC_IVAR0, index);
-
-	/* clear any bits that are currently set */
-	ivar &= ~((u32)0xFF << offset);
-
-	/* write vector and valid bit */
-	ivar |= (msix_vector | IGC_IVAR_VALID) << offset;
-
-	array_wr32(IGC_IVAR0, index, ivar);
-}
-
-static void igc_assign_vector(struct igc_q_vector *q_vector, int msix_vector)
-{
-	struct igc_adapter *adapter = q_vector->adapter;
-	struct igc_hw *hw = &adapter->hw;
-	int rx_queue = IGC_N0_QUEUE;
-	int tx_queue = IGC_N0_QUEUE;
-
-	if (q_vector->rx.ring)
-		rx_queue = q_vector->rx.ring->reg_idx;
-	if (q_vector->tx.ring)
-		tx_queue = q_vector->tx.ring->reg_idx;
-
-	switch (hw->mac.type) {
-	case igc_i225:
-		if (rx_queue > IGC_N0_QUEUE)
-			igc_write_ivar(hw, msix_vector,
-				       rx_queue >> 1,
-				       (rx_queue & 0x1) << 4);
-		if (tx_queue > IGC_N0_QUEUE)
-			igc_write_ivar(hw, msix_vector,
-				       tx_queue >> 1,
-				       ((tx_queue & 0x1) << 4) + 8);
-		q_vector->eims_value = BIT(msix_vector);
-		break;
-	default:
-		WARN_ONCE(hw->mac.type != igc_i225, "Wrong MAC type\n");
-		break;
-	}
-
-	/* add q_vector eims value to global eims_enable_mask */
-	adapter->eims_enable_mask |= q_vector->eims_value;
-
-	/* configure q_vector to set itr on first interrupt */
-	q_vector->set_itr = 1;
-}
-
 static irqreturn_t igc_msix_ring(int irq, void *data)
 {
 	struct igc_q_vector *q_vector = data;
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
