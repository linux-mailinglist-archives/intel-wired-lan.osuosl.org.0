Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 574D61023AF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Nov 2019 12:57:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E381922703;
	Tue, 19 Nov 2019 11:57:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LtEhdNk4FSrA; Tue, 19 Nov 2019 11:57:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C8BFB2274A;
	Tue, 19 Nov 2019 11:57:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 77BA71BF83B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:57:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 71AA0864C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:57:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DSaKyoHbZqH6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Nov 2019 11:57:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 32098864B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:57:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 03:45:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,322,1569308400"; d="scan'208";a="204377544"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by fmsmga008.fm.intel.com with ESMTP; 19 Nov 2019 03:45:07 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 19 Nov 2019 13:45:07 +0200
Message-Id: <20191119114507.42377-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 11/15] igc: Remove no need declaration
 of the igc_free_q_vectors
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
Rearrange the igc_free_q_vectors function implementation.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 27 +++++++++++++--------------
 1 file changed, 13 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index f451c90581e5..be611f5fc87e 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -56,7 +56,6 @@ static int igc_sw_init(struct igc_adapter *);
 static void igc_write_itr(struct igc_q_vector *q_vector);
 static void igc_assign_vector(struct igc_q_vector *q_vector, int msix_vector);
 static void igc_free_q_vector(struct igc_adapter *adapter, int v_idx);
-static void igc_free_q_vectors(struct igc_adapter *adapter);
 
 enum latency_range {
 	lowest_latency = 0,
@@ -3119,19 +3118,6 @@ static void igc_set_interrupt_capability(struct igc_adapter *adapter,
 }
 
 /**
- * igc_clear_interrupt_scheme - reset the device to a state of no interrupts
- * @adapter: Pointer to adapter structure
- *
- * This function resets the device so that it has 0 rx queues, tx queues, and
- * MSI-X interrupts allocated.
- */
-static void igc_clear_interrupt_scheme(struct igc_adapter *adapter)
-{
-	igc_free_q_vectors(adapter);
-	igc_reset_interrupt_capability(adapter);
-}
-
-/**
  * igc_free_q_vectors - Free memory allocated for interrupt vectors
  * @adapter: board private structure to initialize
  *
@@ -3154,6 +3140,19 @@ static void igc_free_q_vectors(struct igc_adapter *adapter)
 }
 
 /**
+ * igc_clear_interrupt_scheme - reset the device to a state of no interrupts
+ * @adapter: Pointer to adapter structure
+ *
+ * This function resets the device so that it has 0 rx queues, tx queues, and
+ * MSI-X interrupts allocated.
+ */
+static void igc_clear_interrupt_scheme(struct igc_adapter *adapter)
+{
+	igc_free_q_vectors(adapter);
+	igc_reset_interrupt_capability(adapter);
+}
+
+/**
  * igc_free_q_vector - Free memory allocated for specific interrupt vector
  * @adapter: board private structure to initialize
  * @v_idx: Index of vector to be freed
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
