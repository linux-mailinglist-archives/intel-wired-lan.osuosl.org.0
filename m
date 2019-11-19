Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4921B102383
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Nov 2019 12:44:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0843F88305;
	Tue, 19 Nov 2019 11:44:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rUmztE0VY88Z; Tue, 19 Nov 2019 11:44:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 722548831E;
	Tue, 19 Nov 2019 11:44:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1368D1BF83B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:44:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0AC578651D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:44:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hUL1Tnbmntry for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Nov 2019 11:44:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8225586508
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:44:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 03:44:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,322,1569308400"; d="scan'208";a="380991414"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by orsmga005.jf.intel.com with ESMTP; 19 Nov 2019 03:44:48 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 19 Nov 2019 13:44:47 +0200
Message-Id: <20191119114447.42241-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 09/15] igc: Remove no need declaration
 of the igc_irq_enable
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
Rearrange the igc_irq_enable function implementation.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 47 +++++++++++++++----------------
 1 file changed, 23 insertions(+), 24 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 7be1e500bed5..4877161f2ea5 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -58,7 +58,6 @@ static void igc_assign_vector(struct igc_q_vector *q_vector, int msix_vector);
 static void igc_free_q_vector(struct igc_adapter *adapter, int v_idx);
 static void igc_free_q_vectors(struct igc_adapter *adapter);
 static void igc_irq_disable(struct igc_adapter *adapter);
-static void igc_irq_enable(struct igc_adapter *adapter);
 
 enum latency_range {
 	lowest_latency = 0,
@@ -2244,6 +2243,29 @@ static void igc_configure_msix(struct igc_adapter *adapter)
 }
 
 /**
+ * igc_irq_enable - Enable default interrupt generation settings
+ * @adapter: board private structure
+ */
+static void igc_irq_enable(struct igc_adapter *adapter)
+{
+	struct igc_hw *hw = &adapter->hw;
+
+	if (adapter->msix_entries) {
+		u32 ims = IGC_IMS_LSC | IGC_IMS_DOUTSYNC | IGC_IMS_DRSTA;
+		u32 regval = rd32(IGC_EIAC);
+
+		wr32(IGC_EIAC, regval | adapter->eims_enable_mask);
+		regval = rd32(IGC_EIAM);
+		wr32(IGC_EIAM, regval | adapter->eims_enable_mask);
+		wr32(IGC_EIMS, adapter->eims_enable_mask);
+		wr32(IGC_IMS, ims);
+	} else {
+		wr32(IGC_IMS, IMS_ENABLE_MASK | IGC_IMS_DRSTA);
+		wr32(IGC_IAM, IMS_ENABLE_MASK | IGC_IMS_DRSTA);
+	}
+}
+
+/**
  * igc_up - Open the interface and prepare it to handle traffic
  * @adapter: board private structure
  */
@@ -3973,29 +3995,6 @@ static void igc_irq_disable(struct igc_adapter *adapter)
 }
 
 /**
- * igc_irq_enable - Enable default interrupt generation settings
- * @adapter: board private structure
- */
-static void igc_irq_enable(struct igc_adapter *adapter)
-{
-	struct igc_hw *hw = &adapter->hw;
-
-	if (adapter->msix_entries) {
-		u32 ims = IGC_IMS_LSC | IGC_IMS_DOUTSYNC | IGC_IMS_DRSTA;
-		u32 regval = rd32(IGC_EIAC);
-
-		wr32(IGC_EIAC, regval | adapter->eims_enable_mask);
-		regval = rd32(IGC_EIAM);
-		wr32(IGC_EIAM, regval | adapter->eims_enable_mask);
-		wr32(IGC_EIMS, adapter->eims_enable_mask);
-		wr32(IGC_IMS, ims);
-	} else {
-		wr32(IGC_IMS, IMS_ENABLE_MASK | IGC_IMS_DRSTA);
-		wr32(IGC_IAM, IMS_ENABLE_MASK | IGC_IMS_DRSTA);
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
