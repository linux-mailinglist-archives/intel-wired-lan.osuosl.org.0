Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B9659D48E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Aug 2022 10:28:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CDCA081345;
	Tue, 23 Aug 2022 08:28:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CDCA081345
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661243325;
	bh=8T/6PT6ShdkvttHUbeYg0uaiqhSxfjTli9m5l2ZmQzM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=gXidGWfQSmz3+msJznb41QvyTmEUuDExIFUSsF8WcaMrn2nkI9uaJrpJ1GE/eb1DD
	 f8evv7Y9iVYM7ffXxM1i9mhjggrqlyeQW4l0qaGO4C5e6ahxNvbqD52DEUZOmEsfu+
	 h/lHFiMbp8wodFT6Vo3LLsEIJ9FO6YkBKlVYELM+HJxbUrPWdqG2/++avtIKvLx/uV
	 KP9NBUGWt+6/r29s8XlYPeXwHef800YxQiqzOAXDU0lqnoknZyNwomJLKfpEy9okzA
	 KiOnNGV2AbeFOhJAldFR3FvDl3APvp5fnKFnSupxKQfDDxLwa2KNSBQi2Zwi5eZL8z
	 iieJ1wBPCUFew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X1-DyqgZ2wcM; Tue, 23 Aug 2022 08:28:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B440F8128D;
	Tue, 23 Aug 2022 08:28:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B440F8128D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 220CE1BF2A0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 08:28:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 08AF160BAA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 08:28:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 08AF160BAA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e5L0zfnZDPd2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Aug 2022 08:28:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E4B10607E1
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E4B10607E1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 08:28:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="292368597"
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="292368597"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 01:28:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="585883720"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orsmga006.jf.intel.com with ESMTP; 23 Aug 2022 01:28:10 -0700
From: Andrii Staikov <andrii.staikov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Aug 2022 10:28:03 +0200
Message-Id: <20220823082803.1683-1-andrii.staikov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661243316; x=1692779316;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=L5KSnu6Llh2/apPhaWNh7c/gUi+Tzk082AphflTw/c0=;
 b=GA2XsZGThXA8rYkdNp1DWV4KKUdY5EujB/PKqEVaUZpyjFqOQxHqjOg1
 MKBs+z8lnUjOhVTc3/u3nyOESwCIk8ixspPPbXi95wIUO+C9Rf7XcS70H
 TnBnN0thGsDD+0oTvh7Kyo4bRcj/78FiTocmShxCjUBQaPfaKl2dyNQ06
 S1B7KXbvKzkZBi4HkOyDx2ZjLlYlVCon5+QB8iQGJRCkBtok3m714LqlB
 8uGCeULibfk0w6EudWZpTdOwVvqi/Jbdq0KUsFHckZfHrdD6gUPaEpyF8
 LSnnVNfu2sIFl/e2QzNAFUIwaEvZ+mHLRnEMRmz/RjpuAU1dci/aYYAVy
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GA2XsZGT
Subject: [Intel-wired-lan] [PATCH net-next v3] i40e: add description and
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
 Andrii Staikov <andrii.staikov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jaroslaw Gawin <jaroslawx.gawin@intel.com>

Add description for values written into registers QINT_XXXX
and small cosmetic changes for MSI/LEGACY interrupts
configuration in the same way as for MSI-X.
Descriptions confirm the code is written correctly and
make the code clear. Small cosmetic changes for MSI/LEGACY
interrupts make code clear in the same manner as for MSI-X
interrupts.

Signed-off-by: Jaroslaw Gawin <jaroslawx.gawin@intel.com>
Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
---
v3: Reverted changes related for has_xdp variable in
i40e_vsi_configure_msix() function. In i40e_configure_msi_and_legacy()
function changed conditional statement to use i40e_enabled_xdp_vsi()
over nextqp variable.
---
v2: Removed has_xdp variable and replaced it's ussing with
i40e_enabled_xdp_vsi() function.
---
 drivers/net/ethernet/intel/i40e/i40e.h      | 14 +++++++++
 drivers/net/ethernet/intel/i40e/i40e_main.c | 34 ++++++++-------------
 2 files changed, 27 insertions(+), 21 deletions(-)

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
index 10c1e1ea83a1..bb0080ea37c6 100644
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
+	/* Associate the queue pair to the vector and enable the queue
+	 * interrupt RX queue in linked list with next queue set to TX
+	 */
+	wr32(hw, I40E_QINT_RQCTL(0), I40E_QINT_RQCTL_VAL(nextqp, 0, TX));
 
 	if (i40e_enabled_xdp_vsi(vsi)) {
-		val = I40E_QINT_TQCTL_CAUSE_ENA_MASK		     |
-		      (I40E_TX_ITR << I40E_QINT_TQCTL_ITR_INDX_SHIFT)|
-		      (I40E_QUEUE_TYPE_TX
-		       << I40E_QINT_TQCTL_NEXTQ_TYPE_SHIFT);
-
-		wr32(hw, I40E_QINT_TQCTL(nextqp), val);
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

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
