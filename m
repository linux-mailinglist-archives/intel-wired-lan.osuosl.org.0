Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 199C2102382
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Nov 2019 12:44:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9793086963;
	Tue, 19 Nov 2019 11:44:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7k9r-+SnuG50; Tue, 19 Nov 2019 11:44:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2EA2D88309;
	Tue, 19 Nov 2019 11:44:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 272071BF83B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:44:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 23BC188303
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:44:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1UXjOErnHVol for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Nov 2019 11:44:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DA5EC86963
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:44:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 03:44:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,322,1569308400"; d="scan'208";a="196471759"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by orsmga007.jf.intel.com with ESMTP; 19 Nov 2019 03:44:39 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 19 Nov 2019 13:44:38 +0200
Message-Id: <20191119114438.42172-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 08/15] igc: Remove no need declaration
 of the igc_configure_msix
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
Rearrange the igc_configure_msix function implementation.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 89 +++++++++++++++----------------
 1 file changed, 44 insertions(+), 45 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 7118a5605229..7be1e500bed5 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -59,7 +59,6 @@ static void igc_free_q_vector(struct igc_adapter *adapter, int v_idx);
 static void igc_free_q_vectors(struct igc_adapter *adapter);
 static void igc_irq_disable(struct igc_adapter *adapter);
 static void igc_irq_enable(struct igc_adapter *adapter);
-static void igc_configure_msix(struct igc_adapter *adapter);
 
 enum latency_range {
 	lowest_latency = 0,
@@ -2201,6 +2200,50 @@ static void igc_configure(struct igc_adapter *adapter)
 }
 
 /**
+ * igc_configure_msix - Configure MSI-X hardware
+ * @adapter: Pointer to adapter structure
+ *
+ * igc_configure_msix sets up the hardware to properly
+ * generate MSI-X interrupts.
+ */
+static void igc_configure_msix(struct igc_adapter *adapter)
+{
+	struct igc_hw *hw = &adapter->hw;
+	int i, vector = 0;
+	u32 tmp;
+
+	adapter->eims_enable_mask = 0;
+
+	/* set vector for other causes, i.e. link changes */
+	switch (hw->mac.type) {
+	case igc_i225:
+		/* Turn on MSI-X capability first, or our settings
+		 * won't stick.  And it will take days to debug.
+		 */
+		wr32(IGC_GPIE, IGC_GPIE_MSIX_MODE |
+		     IGC_GPIE_PBA | IGC_GPIE_EIAME |
+		     IGC_GPIE_NSICR);
+
+		/* enable msix_other interrupt */
+		adapter->eims_other = BIT(vector);
+		tmp = (vector++ | IGC_IVAR_VALID) << 8;
+
+		wr32(IGC_IVAR_MISC, tmp);
+		break;
+	default:
+		/* do nothing, since nothing else supports MSI-X */
+		break;
+	} /* switch (hw->mac.type) */
+
+	adapter->eims_enable_mask |= adapter->eims_other;
+
+	for (i = 0; i < adapter->num_q_vectors; i++)
+		igc_assign_vector(adapter->q_vector[i], vector++);
+
+	wrfl();
+}
+
+/**
  * igc_up - Open the interface and prepare it to handle traffic
  * @adapter: board private structure
  */
@@ -2837,50 +2880,6 @@ static void igc_assign_vector(struct igc_q_vector *q_vector, int msix_vector)
 	q_vector->set_itr = 1;
 }
 
-/**
- * igc_configure_msix - Configure MSI-X hardware
- * @adapter: Pointer to adapter structure
- *
- * igc_configure_msix sets up the hardware to properly
- * generate MSI-X interrupts.
- */
-static void igc_configure_msix(struct igc_adapter *adapter)
-{
-	struct igc_hw *hw = &adapter->hw;
-	int i, vector = 0;
-	u32 tmp;
-
-	adapter->eims_enable_mask = 0;
-
-	/* set vector for other causes, i.e. link changes */
-	switch (hw->mac.type) {
-	case igc_i225:
-		/* Turn on MSI-X capability first, or our settings
-		 * won't stick.  And it will take days to debug.
-		 */
-		wr32(IGC_GPIE, IGC_GPIE_MSIX_MODE |
-		     IGC_GPIE_PBA | IGC_GPIE_EIAME |
-		     IGC_GPIE_NSICR);
-
-		/* enable msix_other interrupt */
-		adapter->eims_other = BIT(vector);
-		tmp = (vector++ | IGC_IVAR_VALID) << 8;
-
-		wr32(IGC_IVAR_MISC, tmp);
-		break;
-	default:
-		/* do nothing, since nothing else supports MSI-X */
-		break;
-	} /* switch (hw->mac.type) */
-
-	adapter->eims_enable_mask |= adapter->eims_other;
-
-	for (i = 0; i < adapter->num_q_vectors; i++)
-		igc_assign_vector(adapter->q_vector[i], vector++);
-
-	wrfl();
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
