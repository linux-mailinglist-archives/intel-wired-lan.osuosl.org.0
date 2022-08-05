Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5013F58AD1E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Aug 2022 17:39:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A11EF83EC3;
	Fri,  5 Aug 2022 15:39:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A11EF83EC3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659713950;
	bh=Nbwv1IMIl2JSyUNgXseokkjPv7TP6LQ8WSzQ2Lr8P80=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=05NIor3gsIMce47OyH9I3wVwx7h8XNj8StXa9Hd/TnwF7MhZShzBCcqHRfEXHVOFk
	 xSgiL98mDiABinEqjysAnO8vpdDTLJqA/BfHjYVt5ZNeZzxE+xSE4fkXi1Fu0sM5CY
	 KSX5wb/AkmZ+120TbKu6BnsbkAQj+H1MEwpgs7u71p6kE7R2aW6/nUi1rjrv8QJhdN
	 hyrmlFFaC8PM09kPiREOKJxSQRrdGIkRtbwg+902gVH7UfZXlAP3PM1rMrvE0QOZSj
	 MnNAXcADHR0psgIGJnpIrE4Lgs3zCnxNsW9BO6bk67SqgfMR88t0m6/+TuWPfCQ9eT
	 H68OzV53dheKw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4Zu5Fo8dJPhV; Fri,  5 Aug 2022 15:39:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 82D8B83EC8;
	Fri,  5 Aug 2022 15:39:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 82D8B83EC8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E890F1BF370
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 09:20:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D058E41C73
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 09:20:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D058E41C73
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cb1WQp-ACkjb for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Aug 2022 09:20:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C009841C2B
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C009841C2B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 09:20:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10429"; a="290935125"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="290935125"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2022 02:20:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="631948336"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orsmga008.jf.intel.com with ESMTP; 05 Aug 2022 02:20:12 -0700
From: Andrii Staikov <andrii.staikov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  5 Aug 2022 11:34:23 +0000
Message-Id: <20220805113423.267941-1-andrii.staikov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 05 Aug 2022 15:39:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659691214; x=1691227214;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EKQfiMU4B3jb6qF7qhrdEKQYlHQO1Qn9e9jIQrfuhA4=;
 b=XuNm4NRFgiOnhH285lg1kBVs3SqO4UHNs2GsZTASvG0YPBsIgJ5CnEne
 dvtqWPA16RW4Ll5JDDhUwDSB0cmdx+qJGYV+jhaFqPfA+hB0Gycq+GvUI
 S3aIoVKM2vZ8YwRIq73Yy/xUJ919BX9NBTkljWQ+kn3StzObdR4gsbtWj
 IByz5mfZ9pwQxbF4+2ap8wZMrIjBix1kkFhZftO3KiST1HFb+D8ESYmjd
 PW46iPkwZ3Je8a6MPaeE2OsCpygqdv0MpHX3s6qhbfXeaD84w32DE7H35
 03gEKsQeuhWuFaJ0V74e/MsG52Xcsd95l8KJ9yci+efB988taH4rUMaE3
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XuNm4NRF
Subject: [Intel-wired-lan] [PATCH net-next v1] i40e: add description and
 modify interrupts configuration procedure
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
Cc: Jaroslaw Gawin <jaroslawx.gawin@intel.com>,
 Staikov Andrii <andrii.staikov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Staikov Andrii <andrii.staikov@intel.com>

Add description for values written into registers QINT_XXXX
and small cosmetic changes for MSI/LEGACY interrupts
configuration in the same way as for MSI-X.
Descriptions confirm the code is written correctly and
make the code clear. Small cosmetic changes for MSI/LEGACY
interrupts make code clear in the same manner as for MSI-X
interrupts.
Without this descriptions the code doesn't look right.

Signed-off-by: Jaroslaw Gawin <jaroslawx.gawin@intel.com>
Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h      | 14 ++++++++
 drivers/net/ethernet/intel/i40e/i40e_main.c | 36 ++++++++-------------
 2 files changed, 28 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index d86b6d349ea9..9a60d6b207f7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -399,6 +399,20 @@ struct i40e_ddp_old_profile_list {
 				 I40E_FLEX_54_MASK | I40E_FLEX_55_MASK | \
 				 I40E_FLEX_56_MASK | I40E_FLEX_57_MASK)
 
+#define I40E_QINT_TQCTL_VAL(qp, vector, nextq_type) \
+	(I40E_QINT_TQCTL_CAUSE_ENA_MASK | \
+	(I40E_TX_ITR << I40E_QINT_TQCTL_ITR_INDX_SHIFT) | \
+	((vector) << I40E_QINT_TQCTL_MSIX_INDX_SHIFT) | \
+	((qp) << I40E_QINT_TQCTL_NEXTQ_INDX_SHIFT) | \
+	(I40E_QUEUE_TYPE_##nextq_type << I40E_QINT_TQCTL_NEXTQ_TYPE_SHIFT))
+
+#define I40E_QINT_RQCTL_VAL(qp, vector, nextq_type) \
+	(I40E_QINT_RQCTL_CAUSE_ENA_MASK | \
+	(I40E_RX_ITR << I40E_QINT_RQCTL_ITR_INDX_SHIFT) | \
+	((vector) << I40E_QINT_RQCTL_MSIX_INDX_SHIFT) | \
+	((qp) << I40E_QINT_RQCTL_NEXTQ_INDX_SHIFT) | \
+	(I40E_QUEUE_TYPE_##nextq_type << I40E_QINT_RQCTL_NEXTQ_TYPE_SHIFT))
+
 struct i40e_flex_pit {
 	struct list_head list;
 	u16 src_offset;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 9f1d5de7bf16..174511d64627 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -3878,7 +3878,7 @@ static void i40e_vsi_configure_msix(struct i40e_vsi *vsi)
 		wr32(hw, I40E_PFINT_RATEN(vector - 1),
 		     i40e_intrl_usec_to_reg(vsi->int_rate_limit));
 
-		/* Linked list for the queuepairs assigned to this vector */
+		/* begin of linked list for RX queue assigned to this vector */
 		wr32(hw, I40E_PFINT_LNKLSTN(vector - 1), qp);
 		for (q = 0; q < q_vector->num_ringpairs; q++) {
 			u32 nextqp = has_xdp ? qp + vsi->alloc_queue_pairs : qp;
@@ -3894,6 +3894,7 @@ static void i40e_vsi_configure_msix(struct i40e_vsi *vsi)
 			wr32(hw, I40E_QINT_RQCTL(qp), val);
 
 			if (has_xdp) {
+				/* TX queue with next queue set to TX */
 				val = I40E_QINT_TQCTL_CAUSE_ENA_MASK |
 				      (I40E_TX_ITR << I40E_QINT_TQCTL_ITR_INDX_SHIFT) |
 				      (vector << I40E_QINT_TQCTL_MSIX_INDX_SHIFT) |
@@ -3903,7 +3904,7 @@ static void i40e_vsi_configure_msix(struct i40e_vsi *vsi)
 
 				wr32(hw, I40E_QINT_TQCTL(nextqp), val);
 			}
-
+			/* TX queue with next RX or end of linked list */
 			val = I40E_QINT_TQCTL_CAUSE_ENA_MASK |
 			      (I40E_TX_ITR << I40E_QINT_TQCTL_ITR_INDX_SHIFT) |
 			      (vector << I40E_QINT_TQCTL_MSIX_INDX_SHIFT) |
@@ -3972,7 +3973,6 @@ static void i40e_configure_msi_and_legacy(struct i40e_vsi *vsi)
 	struct i40e_q_vector *q_vector = vsi->q_vectors[0];
 	struct i40e_pf *pf = vsi->back;
 	struct i40e_hw *hw = &pf->hw;
-	u32 val;
 
 	/* set the ITR configuration */
 	q_vector->rx.next_update = jiffies + 1;
@@ -3989,28 +3989,20 @@ static void i40e_configure_msi_and_legacy(struct i40e_vsi *vsi)
 	/* FIRSTQ_INDX = 0, FIRSTQ_TYPE = 0 (rx) */
 	wr32(hw, I40E_PFINT_LNKLST0, 0);
 
-	/* Associate the queue pair to the vector and enable the queue int */
-	val = I40E_QINT_RQCTL_CAUSE_ENA_MASK		       |
-	      (I40E_RX_ITR << I40E_QINT_RQCTL_ITR_INDX_SHIFT)  |
-	      (nextqp	   << I40E_QINT_RQCTL_NEXTQ_INDX_SHIFT)|
-	      (I40E_QUEUE_TYPE_TX << I40E_QINT_TQCTL_NEXTQ_TYPE_SHIFT);
-
-	wr32(hw, I40E_QINT_RQCTL(0), val);
-
-	if (i40e_enabled_xdp_vsi(vsi)) {
-		val = I40E_QINT_TQCTL_CAUSE_ENA_MASK		     |
-		      (I40E_TX_ITR << I40E_QINT_TQCTL_ITR_INDX_SHIFT)|
-		      (I40E_QUEUE_TYPE_TX
-		       << I40E_QINT_TQCTL_NEXTQ_TYPE_SHIFT);
+	/* Associate the queue pair to the vector and enable the queue
+	 * interrupt RX queue in linked list with next queue set to TX
+	 */
+	wr32(hw, I40E_QINT_RQCTL(0), I40E_QINT_RQCTL_VAL(nextqp, 0, TX));
 
-		wr32(hw, I40E_QINT_TQCTL(nextqp), val);
+	if (nextqp) {
+		/* TX queue in linked list with next queue set to TX */
+		wr32(hw, I40E_QINT_TQCTL(nextqp),
+		     I40E_QINT_TQCTL_VAL(nextqp, 0, TX));
 	}
 
-	val = I40E_QINT_TQCTL_CAUSE_ENA_MASK		      |
-	      (I40E_TX_ITR << I40E_QINT_TQCTL_ITR_INDX_SHIFT) |
-	      (I40E_QUEUE_END_OF_LIST << I40E_QINT_TQCTL_NEXTQ_INDX_SHIFT);
-
-	wr32(hw, I40E_QINT_TQCTL(0), val);
+	/* last TX queue so the next RX queue doesn't matter */
+	wr32(hw, I40E_QINT_TQCTL(0),
+	     I40E_QINT_TQCTL_VAL(I40E_QUEUE_END_OF_LIST, 0, RX));
 	i40e_flush(hw);
 }
 
-- 
2.25.1

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-316 | Kapital zakladowy 200.000 PLN.
Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wiadomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiekolwiek przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
