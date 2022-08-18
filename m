Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE397597FA3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Aug 2022 09:59:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EA6AB410E7;
	Thu, 18 Aug 2022 07:59:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA6AB410E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660809553;
	bh=ZspPkp52xoqln0qkFX0n0J8ZymE7YKICL0Xh1JP60mA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=mU6W9rYqNygFDti966BbLz1cWs8uQu1sFeOgMzq6IanyJk8AA4f7+ihgkF/rLhXkS
	 m0Wfx2JNhvZ8zxKGvKzx/1pC+Mjzz8rd41VC1dmbfkCCMHLr/lFCpxymz2f8b/8pvD
	 RlOAallz2SqcJI6+KTe+m7XkdC9JG6GszgKPYN/dhaaz937TQL/Dcfo0bpYw5v6Pvm
	 0kOTGsIULYgYNur0Y+tNVC6RFzIU7mkap14DGpvU6EQi6OKghCCw8b89UNcbdRhLqM
	 vAt/Lo6G45ssY/cI2QCGNDw/pJtUp4/OwDxX4toPn17wFVkvhV2ll6TVDMv/yNC7rb
	 8ZsQRF8ZGa7pg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BFcjyst28sia; Thu, 18 Aug 2022 07:59:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9B8A041127;
	Thu, 18 Aug 2022 07:59:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9B8A041127
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3417B1BF2BB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Aug 2022 07:59:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0DBAE60C27
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Aug 2022 07:59:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0DBAE60C27
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id If8-2FZm4zKb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Aug 2022 07:59:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 339E960BDE
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 339E960BDE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Aug 2022 07:59:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10442"; a="354433683"
X-IronPort-AV: E=Sophos;i="5.93,245,1654585200"; d="scan'208";a="354433683"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2022 00:59:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,245,1654585200"; d="scan'208";a="558433517"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orsmga003.jf.intel.com with ESMTP; 18 Aug 2022 00:59:00 -0700
From: Andrii Staikov <andrii.staikov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 18 Aug 2022 12:13:03 +0200
Message-Id: <20220818101303.6595-1-andrii.staikov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660809545; x=1692345545;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7upmgo4fEqLnZsMUjqmqJRykVRhG58rVTmgxkFMJhNw=;
 b=G7uDXgdTm8KoHI32bxJQOph+tuLyObuSnGOUWSr/m+mel+GaxMXxahqi
 JAvYH6mhTW5u7J20NEyBSjKahOUy9NcSXkSXDRw5CWzHgC7+Id7O84o3w
 URTUPd4JGv4qEaIConJ1VXNLx+OxyOlbQGsW5XcuXfgmhOd++inctS96H
 9g7fb4GgJBTn5ai4YYiPRnfp41T1QgCcGNIKtzzvR8aKASqCj/KkXPKMp
 PjeqjIvBnC6jdid3texO0+9iETegOLZQgeZNuEMe5BcfCM4z2XMo6f+sx
 60WXD6OwI7LZb2flwu2z/7HNI4UurtBXyKt3zBDsN1fB92R7Stm+vvBOV
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G7uDXgdT
Subject: [Intel-wired-lan] [PATCH net-next v2] i40e: add description and
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
 drivers/net/ethernet/intel/i40e/i40e.h      | 14 +++++++
 drivers/net/ethernet/intel/i40e/i40e_main.c | 41 ++++++++-------------
 2 files changed, 30 insertions(+), 25 deletions(-)

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
index 10c1e1ea83a1..7f77df8a938e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -3845,7 +3845,6 @@ static int i40e_vsi_configure(struct i40e_vsi *vsi)
  **/
 static void i40e_vsi_configure_msix(struct i40e_vsi *vsi)
 {
-	bool has_xdp = i40e_enabled_xdp_vsi(vsi);
 	struct i40e_pf *pf = vsi->back;
 	struct i40e_hw *hw = &pf->hw;
 	u16 vector;
@@ -3878,10 +3877,10 @@ static void i40e_vsi_configure_msix(struct i40e_vsi *vsi)
 		wr32(hw, I40E_PFINT_RATEN(vector - 1),
 		     i40e_intrl_usec_to_reg(vsi->int_rate_limit));
 
-		/* Linked list for the queuepairs assigned to this vector */
+		/* begin of linked list for RX queue assigned to this vector */
 		wr32(hw, I40E_PFINT_LNKLSTN(vector - 1), qp);
 		for (q = 0; q < q_vector->num_ringpairs; q++) {
-			u32 nextqp = has_xdp ? qp + vsi->alloc_queue_pairs : qp;
+			u32 nextqp = i40e_enabled_xdp_vsi(vsi) ? qp + vsi->alloc_queue_pairs : qp;
 			u32 val;
 
 			val = I40E_QINT_RQCTL_CAUSE_ENA_MASK |
@@ -3893,7 +3892,8 @@ static void i40e_vsi_configure_msix(struct i40e_vsi *vsi)
 
 			wr32(hw, I40E_QINT_RQCTL(qp), val);
 
-			if (has_xdp) {
+			if (i40e_enabled_xdp_vsi(vsi)) {
+				/* TX queue with next queue set to TX */
 				val = I40E_QINT_TQCTL_CAUSE_ENA_MASK |
 				      (I40E_TX_ITR << I40E_QINT_TQCTL_ITR_INDX_SHIFT) |
 				      (vector << I40E_QINT_TQCTL_MSIX_INDX_SHIFT) |
@@ -3903,7 +3903,7 @@ static void i40e_vsi_configure_msix(struct i40e_vsi *vsi)
 
 				wr32(hw, I40E_QINT_TQCTL(nextqp), val);
 			}
-
+			/* TX queue with next RX or end of linked list */
 			val = I40E_QINT_TQCTL_CAUSE_ENA_MASK |
 			      (I40E_TX_ITR << I40E_QINT_TQCTL_ITR_INDX_SHIFT) |
 			      (vector << I40E_QINT_TQCTL_MSIX_INDX_SHIFT) |
@@ -3972,7 +3972,6 @@ static void i40e_configure_msi_and_legacy(struct i40e_vsi *vsi)
 	struct i40e_q_vector *q_vector = vsi->q_vectors[0];
 	struct i40e_pf *pf = vsi->back;
 	struct i40e_hw *hw = &pf->hw;
-	u32 val;
 
 	/* set the ITR configuration */
 	q_vector->rx.next_update = jiffies + 1;
@@ -3989,28 +3988,20 @@ static void i40e_configure_msi_and_legacy(struct i40e_vsi *vsi)
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

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
