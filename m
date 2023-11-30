Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF617FFDC6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Nov 2023 22:45:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C9B1384459;
	Thu, 30 Nov 2023 21:45:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C9B1384459
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701380736;
	bh=ePkmizgpekAdvYmqwCtW/rIXzzkAICBpMlPv2LssdpQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=RxFtaK53u9wqEV2oPigsZ384oHxebGsyTO2ftxaO8ncH9Xp/WYvwKVsN2kufLCI5n
	 gyUcAkMOFoRD/Pp54U9mS1tZoJc+rtVQqu4ZBXG4qgx36jbljF6MhJ7v9i5kkI8Y8b
	 cn3K8hETHIyiD2ZkoHIOnzyaiZth8YjdqI4nZvNT9TiCEKLAPsxzCy3kXw7W9HLhm3
	 jC4Nf6PYajuPgy/R3R4UxPJDOZ97NiaM0nDmLxfdFdjHf27yMY3L/4NhqYgaxpWxzA
	 L/u0gmsYEKvmFjWrd3tnZ+8kKlRF/ZAdmBEz1ABFKV7N4agiel6Ktjm5vHOjaum/4t
	 hqRAgGPHJtQzA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 78PLGyoN04fy; Thu, 30 Nov 2023 21:45:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 89FB68215F;
	Thu, 30 Nov 2023 21:45:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 89FB68215F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 996171BF2F0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 21:45:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 707C780DD1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 21:45:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 707C780DD1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aZ3uG_clEcZ7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Nov 2023 21:45:28 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9BD8E80DA9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 21:45:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9BD8E80DA9
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="373579456"
X-IronPort-AV: E=Sophos;i="6.04,240,1695711600"; d="scan'208";a="373579456"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 13:45:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="745774201"
X-IronPort-AV: E=Sophos;i="6.04,240,1695711600"; d="scan'208";a="745774201"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 13:45:23 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 30 Nov 2023 13:45:11 -0800
Message-Id: <20231130214511.647586-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701380728; x=1732916728;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gbJyS1ni1fasYiNfICmx4OXt8W5RATHo/YDRnY0i+1A=;
 b=YSlTwoWNCS66YUI394BlHN7tuqEpAqxIE/pOvIFAW6/M3LsqhSyVCEOM
 mLNgKineOue6RYAuK+GA64KppEylx0O+GCvzOoBG8REeJFXQYRfBozMIn
 neIx6l+Wx4TXqTm05svbJdu+bx5104TLPm9JcYnTpTYWnWl7CTGyKS/Da
 f3N7bFRalxJpy+x2EvcuqMc1Z+sMjeE4rA9GVa7LL6m2tvAmGFvjZKBFj
 wKYH8tqKprZ4l4MzlWL198zEsfllTAvKGT4+PhLXTHE7ZL28B2jjxysKA
 jZFpro0mPBUqHh7YqoytsAf7ArUgONe/F2GbMEXx2BdTXzgeyWGgm3R01
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YSlTwoWN
Subject: [Intel-wired-lan] [PATCH iwl-next v1] idpf: refactor some missing
 field get/prep conversions
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Most of idpf correctly uses FIELD_GET and FIELD_PREP, but a couple spots
were missed so fix those.

This conversion was automated via a coccinelle script as posted with the
previous series.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
This patch should be applied after the larger FIELD_PREP/FIELD_GET
conversion series for the Intel drivers.
---
 .../ethernet/intel/idpf/idpf_singleq_txrx.c    |  7 +++----
 drivers/net/ethernet/intel/idpf/idpf_txrx.c    | 18 ++++++++----------
 2 files changed, 11 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index 81288a17da2a..447753495c53 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -328,10 +328,9 @@ static void idpf_tx_singleq_build_ctx_desc(struct idpf_queue *txq,
 
 	if (offload->tso_segs) {
 		qw1 |= IDPF_TX_CTX_DESC_TSO << IDPF_TXD_CTX_QW1_CMD_S;
-		qw1 |= ((u64)offload->tso_len << IDPF_TXD_CTX_QW1_TSO_LEN_S) &
-			IDPF_TXD_CTX_QW1_TSO_LEN_M;
-		qw1 |= ((u64)offload->mss << IDPF_TXD_CTX_QW1_MSS_S) &
-			IDPF_TXD_CTX_QW1_MSS_M;
+		qw1 |= FIELD_PREP(IDPF_TXD_CTX_QW1_TSO_LEN_M,
+				  offload->tso_len);
+		qw1 |= FIELD_PREP(IDPF_TXD_CTX_QW1_MSS_M, offload->mss);
 
 		u64_stats_update_begin(&txq->stats_sync);
 		u64_stats_inc(&txq->q_stats.tx.lso_pkts);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 1f728a9004d9..f3009d2a3c2e 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -505,7 +505,7 @@ static void idpf_rx_post_buf_refill(struct idpf_sw_queue *refillq, u16 buf_id)
 
 	/* store the buffer ID and the SW maintained GEN bit to the refillq */
 	refillq->ring[nta] =
-		((buf_id << IDPF_RX_BI_BUFID_S) & IDPF_RX_BI_BUFID_M) |
+		FIELD_PREP(IDPF_RX_BI_BUFID_M, buf_id) |
 		(!!(test_bit(__IDPF_Q_GEN_CHK, refillq->flags)) <<
 		 IDPF_RX_BI_GEN_S);
 
@@ -1825,14 +1825,14 @@ static bool idpf_tx_clean_complq(struct idpf_queue *complq, int budget,
 		u16 gen;
 
 		/* if the descriptor isn't done, no work yet to do */
-		gen = (le16_to_cpu(tx_desc->qid_comptype_gen) &
-		      IDPF_TXD_COMPLQ_GEN_M) >> IDPF_TXD_COMPLQ_GEN_S;
+		gen = FIELD_GET(IDPF_TXD_COMPLQ_GEN_M,
+				le16_to_cpu(tx_desc->qid_comptype_gen));
 		if (test_bit(__IDPF_Q_GEN_CHK, complq->flags) != gen)
 			break;
 
 		/* Find necessary info of TX queue to clean buffers */
-		rel_tx_qid = (le16_to_cpu(tx_desc->qid_comptype_gen) &
-			 IDPF_TXD_COMPLQ_QID_M) >> IDPF_TXD_COMPLQ_QID_S;
+		rel_tx_qid = FIELD_GET(IDPF_TXD_COMPLQ_QID_M,
+				       le16_to_cpu(tx_desc->qid_comptype_gen));
 		if (rel_tx_qid >= complq->txq_grp->num_txq ||
 		    !complq->txq_grp->txqs[rel_tx_qid]) {
 			dev_err(&complq->vport->adapter->pdev->dev,
@@ -1842,9 +1842,8 @@ static bool idpf_tx_clean_complq(struct idpf_queue *complq, int budget,
 		tx_q = complq->txq_grp->txqs[rel_tx_qid];
 
 		/* Determine completion type */
-		ctype = (le16_to_cpu(tx_desc->qid_comptype_gen) &
-			IDPF_TXD_COMPLQ_COMPL_TYPE_M) >>
-			IDPF_TXD_COMPLQ_COMPL_TYPE_S;
+		ctype = FIELD_GET(IDPF_TXD_COMPLQ_COMPL_TYPE_M,
+				  le16_to_cpu(tx_desc->qid_comptype_gen));
 		switch (ctype) {
 		case IDPF_TXD_COMPLT_RE:
 			hw_head = le16_to_cpu(tx_desc->q_head_compl_tag.q_head);
@@ -1947,8 +1946,7 @@ void idpf_tx_splitq_build_ctb(union idpf_tx_flex_desc *desc,
 	desc->q.qw1.cmd_dtype =
 		cpu_to_le16(params->dtype & IDPF_FLEX_TXD_QW1_DTYPE_M);
 	desc->q.qw1.cmd_dtype |=
-		cpu_to_le16((td_cmd << IDPF_FLEX_TXD_QW1_CMD_S) &
-			    IDPF_FLEX_TXD_QW1_CMD_M);
+		cpu_to_le16(FIELD_PREP(IDPF_FLEX_TXD_QW1_CMD_M, td_cmd));
 	desc->q.qw1.buf_size = cpu_to_le16((u16)size);
 	desc->q.qw1.l2tags.l2tag1 = cpu_to_le16(params->td_tag);
 }
-- 
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
