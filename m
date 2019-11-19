Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B859C102385
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Nov 2019 12:45:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6B40A8831B;
	Tue, 19 Nov 2019 11:45:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zBqanyzPv5EG; Tue, 19 Nov 2019 11:45:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C566588309;
	Tue, 19 Nov 2019 11:45:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F20D71BF83B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:45:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EB4498651D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:45:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dNRIQ8fAXw0U for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Nov 2019 11:45:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6A83786508
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:45:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 03:45:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,322,1569308400"; d="scan'208";a="407726296"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by fmsmga006.fm.intel.com with ESMTP; 19 Nov 2019 03:45:16 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 19 Nov 2019 13:45:16 +0200
Message-Id: <20191119114516.42434-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 12/15] igc: Remove no need declaration
 of the igc_free_q_vector
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
Rearrange the igc_free_q_vector function implementation.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 41 +++++++++++++++----------------
 1 file changed, 20 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index be611f5fc87e..66a83c9509a5 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -55,7 +55,6 @@ MODULE_DEVICE_TABLE(pci, igc_pci_tbl);
 static int igc_sw_init(struct igc_adapter *);
 static void igc_write_itr(struct igc_q_vector *q_vector);
 static void igc_assign_vector(struct igc_q_vector *q_vector, int msix_vector);
-static void igc_free_q_vector(struct igc_adapter *adapter, int v_idx);
 
 enum latency_range {
 	lowest_latency = 0,
@@ -3118,6 +3117,26 @@ static void igc_set_interrupt_capability(struct igc_adapter *adapter,
 }
 
 /**
+ * igc_free_q_vector - Free memory allocated for specific interrupt vector
+ * @adapter: board private structure to initialize
+ * @v_idx: Index of vector to be freed
+ *
+ * This function frees the memory allocated to the q_vector.
+ */
+static void igc_free_q_vector(struct igc_adapter *adapter, int v_idx)
+{
+	struct igc_q_vector *q_vector = adapter->q_vector[v_idx];
+
+	adapter->q_vector[v_idx] = NULL;
+
+	/* igc_get_stats64() might access the rings on this vector,
+	 * we must wait a grace period before freeing it.
+	 */
+	if (q_vector)
+		kfree_rcu(q_vector, rcu);
+}
+
+/**
  * igc_free_q_vectors - Free memory allocated for interrupt vectors
  * @adapter: board private structure to initialize
  *
@@ -3152,26 +3171,6 @@ static void igc_clear_interrupt_scheme(struct igc_adapter *adapter)
 	igc_reset_interrupt_capability(adapter);
 }
 
-/**
- * igc_free_q_vector - Free memory allocated for specific interrupt vector
- * @adapter: board private structure to initialize
- * @v_idx: Index of vector to be freed
- *
- * This function frees the memory allocated to the q_vector.
- */
-static void igc_free_q_vector(struct igc_adapter *adapter, int v_idx)
-{
-	struct igc_q_vector *q_vector = adapter->q_vector[v_idx];
-
-	adapter->q_vector[v_idx] = NULL;
-
-	/* igc_get_stats64() might access the rings on this vector,
-	 * we must wait a grace period before freeing it.
-	 */
-	if (q_vector)
-		kfree_rcu(q_vector, rcu);
-}
-
 /* Need to wait a few seconds after link up to get diagnostic information from
  * the phy
  */
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
