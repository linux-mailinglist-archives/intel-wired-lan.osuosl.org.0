Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 73275102386
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Nov 2019 12:45:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 255B02266F;
	Tue, 19 Nov 2019 11:45:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m3AU47kmBoDY; Tue, 19 Nov 2019 11:45:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8DC092273B;
	Tue, 19 Nov 2019 11:45:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 761161BF83B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:45:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6BC6C88309
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:45:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nXuAQoPv1HL1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Nov 2019 11:45:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A791E86963
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:45:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 03:45:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,322,1569308400"; d="scan'208";a="231504686"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by fmsmga004.fm.intel.com with ESMTP; 19 Nov 2019 03:45:32 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 19 Nov 2019 13:45:32 +0200
Message-Id: <20191119114532.42554-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 14/15] igc: Remove no need declaration
 of the igc_write_itr
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
Rearrange the igc_write_itr function implementation.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 33 +++++++++++++++----------------
 1 file changed, 16 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index bce18aee8d8f..309e9694633a 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -53,7 +53,6 @@ MODULE_DEVICE_TABLE(pci, igc_pci_tbl);
 
 /* forward declaration */
 static int igc_sw_init(struct igc_adapter *);
-static void igc_write_itr(struct igc_q_vector *q_vector);
 
 enum latency_range {
 	lowest_latency = 0,
@@ -2931,6 +2930,22 @@ static irqreturn_t igc_msix_other(int irq, void *data)
 	return IRQ_HANDLED;
 }
 
+static void igc_write_itr(struct igc_q_vector *q_vector)
+{
+	u32 itr_val = q_vector->itr_val & IGC_QVECTOR_MASK;
+
+	if (!q_vector->set_itr)
+		return;
+
+	if (!itr_val)
+		itr_val = IGC_ITR_VAL_MASK;
+
+	itr_val |= IGC_EITR_CNT_IGNR;
+
+	writel(itr_val, q_vector->itr_register);
+	q_vector->set_itr = 0;
+}
+
 static irqreturn_t igc_msix_ring(int irq, void *data)
 {
 	struct igc_q_vector *q_vector = data;
@@ -4044,22 +4059,6 @@ static int igc_request_irq(struct igc_adapter *adapter)
 	return err;
 }
 
-static void igc_write_itr(struct igc_q_vector *q_vector)
-{
-	u32 itr_val = q_vector->itr_val & IGC_QVECTOR_MASK;
-
-	if (!q_vector->set_itr)
-		return;
-
-	if (!itr_val)
-		itr_val = IGC_ITR_VAL_MASK;
-
-	itr_val |= IGC_EITR_CNT_IGNR;
-
-	writel(itr_val, q_vector->itr_register);
-	q_vector->set_itr = 0;
-}
-
 /**
  * __igc_open - Called when a network interface is made active
  * @netdev: network interface device structure
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
