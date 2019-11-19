Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 973CA102384
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Nov 2019 12:45:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 51DB821F76;
	Tue, 19 Nov 2019 11:45:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EitVm-DL5brE; Tue, 19 Nov 2019 11:45:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EB08B22720;
	Tue, 19 Nov 2019 11:45:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7D2D71BF83B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:45:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 75F9388303
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:45:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nwmNQ1dojN0R for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Nov 2019 11:45:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E088486963
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:45:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 03:45:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,322,1569308400"; d="scan'208";a="209173065"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by orsmga003.jf.intel.com with ESMTP; 19 Nov 2019 03:44:59 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 19 Nov 2019 13:44:58 +0200
Message-Id: <20191119114458.42307-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 10/15] igc: Remove no need declaration
 of the igc_irq_disable
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
Rearrange the igc_irq_disable function implementation.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 67 +++++++++++++++----------------
 1 file changed, 33 insertions(+), 34 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 4877161f2ea5..f451c90581e5 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -57,7 +57,6 @@ static void igc_write_itr(struct igc_q_vector *q_vector);
 static void igc_assign_vector(struct igc_q_vector *q_vector, int msix_vector);
 static void igc_free_q_vector(struct igc_adapter *adapter, int v_idx);
 static void igc_free_q_vectors(struct igc_adapter *adapter);
-static void igc_irq_disable(struct igc_adapter *adapter);
 
 enum latency_range {
 	lowest_latency = 0,
@@ -2266,6 +2265,39 @@ static void igc_irq_enable(struct igc_adapter *adapter)
 }
 
 /**
+ * igc_irq_disable - Mask off interrupt generation on the NIC
+ * @adapter: board private structure
+ */
+static void igc_irq_disable(struct igc_adapter *adapter)
+{
+	struct igc_hw *hw = &adapter->hw;
+
+	if (adapter->msix_entries) {
+		u32 regval = rd32(IGC_EIAM);
+
+		wr32(IGC_EIAM, regval & ~adapter->eims_enable_mask);
+		wr32(IGC_EIMC, adapter->eims_enable_mask);
+		regval = rd32(IGC_EIAC);
+		wr32(IGC_EIAC, regval & ~adapter->eims_enable_mask);
+	}
+
+	wr32(IGC_IAM, 0);
+	wr32(IGC_IMC, ~0);
+	wrfl();
+
+	if (adapter->msix_entries) {
+		int vector = 0, i;
+
+		synchronize_irq(adapter->msix_entries[vector++].vector);
+
+		for (i = 0; i < adapter->num_q_vectors; i++)
+			synchronize_irq(adapter->msix_entries[vector++].vector);
+	} else {
+		synchronize_irq(adapter->pdev->irq);
+	}
+}
+
+/**
  * igc_up - Open the interface and prepare it to handle traffic
  * @adapter: board private structure
  */
@@ -3962,39 +3994,6 @@ static void igc_free_irq(struct igc_adapter *adapter)
 }
 
 /**
- * igc_irq_disable - Mask off interrupt generation on the NIC
- * @adapter: board private structure
- */
-static void igc_irq_disable(struct igc_adapter *adapter)
-{
-	struct igc_hw *hw = &adapter->hw;
-
-	if (adapter->msix_entries) {
-		u32 regval = rd32(IGC_EIAM);
-
-		wr32(IGC_EIAM, regval & ~adapter->eims_enable_mask);
-		wr32(IGC_EIMC, adapter->eims_enable_mask);
-		regval = rd32(IGC_EIAC);
-		wr32(IGC_EIAC, regval & ~adapter->eims_enable_mask);
-	}
-
-	wr32(IGC_IAM, 0);
-	wr32(IGC_IMC, ~0);
-	wrfl();
-
-	if (adapter->msix_entries) {
-		int vector = 0, i;
-
-		synchronize_irq(adapter->msix_entries[vector++].vector);
-
-		for (i = 0; i < adapter->num_q_vectors; i++)
-			synchronize_irq(adapter->msix_entries[vector++].vector);
-	} else {
-		synchronize_irq(adapter->pdev->irq);
-	}
-}
-
-/**
  * igc_request_irq - initialize interrupts
  * @adapter: Pointer to adapter structure
  *
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
