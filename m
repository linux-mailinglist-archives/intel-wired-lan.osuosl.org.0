Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 795E28063E9
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 02:02:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20A5B61412;
	Wed,  6 Dec 2023 01:02:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 20A5B61412
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701824555;
	bh=ICrckRF0q8DBXZ08Vn6zprTWQ6otAyJgODfwAcam584=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XZUSsTGTYaWOsgTuuA6jIE3vkS2FVNv2FmUcfhcX7n8MMw5g74FW6BJC63/Bp8YJk
	 6ue5utQbbqPhKu7//2O+I5s/AIzBoTgH4radY3mgV5kWoclhhuaIM+q1rPuknBNx3O
	 dstKVwLozrgzMnzA/lxRVz5pSzRPwJqGRpTEKXigom5ZbjjMqYR6aNC1CwFyuh6473
	 YBcEFEFEfZ3k0PKJhNKr1e9q45uhDv2C1rNFLTSDVcNxua6jQ5K9po6o7wuwuLs+6c
	 DXjTGOBqer6TmijxamMD0Ujv95m2BHBjb9vpvK8c2s7zhtdvG4yPz2EgEJbhz7ZM8H
	 x7HM6RyeVImbQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8edfAOEiCMvN; Wed,  6 Dec 2023 01:02:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 971206141F;
	Wed,  6 Dec 2023 01:02:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 971206141F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 92EA11BF980
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 01:01:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5AEC1417E9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 01:01:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5AEC1417E9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MHq-vHpZtxti for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 01:01:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 599BA41714
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 01:01:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 599BA41714
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="12700336"
X-IronPort-AV: E=Sophos;i="6.04,254,1695711600"; d="scan'208";a="12700336"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 17:01:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="841655297"
X-IronPort-AV: E=Sophos;i="6.04,254,1695711600"; d="scan'208";a="841655297"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 17:01:36 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  5 Dec 2023 17:01:14 -0800
Message-Id: <20231206010114.2259388-16-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
References: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701824498; x=1733360498;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mnZASE63x34yCq6dzY8hV2ZsE25/tYf36JpzHzX+6rQ=;
 b=QJSf2zclXuWqpnL4aRsGu+DkM7yQJf4myIrohcbOhGXLjS80tMbuDYB2
 gAw60zn/Lpw8QO6bzTIqp8SiX3UuhhjUqOReZwrKOcEYKTyv9xG4z2mI6
 7mdw2ZO0EpbuaCGnG06EFDV/LPpz6EOODfLenxxLp93gJOoE/+bgRQHV9
 pboozZsT4hXtA9Dku25GEwpyejnOR5E6ZDUp5grJ4vtgBpDY5//4D3pSu
 O2QbX4v3pfTB8bls96bgjb4GNDYh1GKH96D3yC+Vh+WLTE/364e6PjrE6
 8pNAjfc3CZUGUFPQUKt7KOnX8E4EKRP7aKb/xynTKtbgED+hPrjE6KSmZ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QJSf2zcl
Subject: [Intel-wired-lan] [PATCH iwl-next v2 15/15] idpf: refactor some
 missing field get/prep conversions
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
Cc: przemyslaw.kitszel@intel.com, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 aleksander.lobakin@intel.com, marcin.szycik@linux.intel.com, horms@kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Most of idpf correctly uses FIELD_GET and FIELD_PREP, but a couple spots
were missed so fix those.

Automated conversion with coccinelle script and manually fixed up,
including audits for opportunities to convert to {get,encode,replace}
bits functions.

Add conversions to le16_get/encode/replace_bits where appropriate. And
in one place fix up a cast from a u16 to a u16.

@prep2@
constant shift,mask;
type T;
expression a;
@@
-(((T)(a) << shift) & mask)
+FIELD_PREP(mask, a)

@prep@
constant shift,mask;
type T;
expression a;
@@
-((T)((a) << shift) & mask)
+FIELD_PREP(mask, a)

@get@
constant shift,mask;
type T;
expression a;
@@
-((T)((a) & mask) >> shift)
+FIELD_GET(mask, a)

and applied via:
spatch --sp-file field_prep.cocci --in-place --dir \
 drivers/net/ethernet/intel/

CC: Alexander Lobakin <aleksander.lobakin@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
v2: merged this patch into larger series, modified after Olek's comments
to include bits encoding where changing lines for prep or get.
---
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  7 +--
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 58 +++++++++----------
 2 files changed, 30 insertions(+), 35 deletions(-)

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
index 1f728a9004d9..725f2477f979 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -505,9 +505,9 @@ static void idpf_rx_post_buf_refill(struct idpf_sw_queue *refillq, u16 buf_id)
 
 	/* store the buffer ID and the SW maintained GEN bit to the refillq */
 	refillq->ring[nta] =
-		((buf_id << IDPF_RX_BI_BUFID_S) & IDPF_RX_BI_BUFID_M) |
-		(!!(test_bit(__IDPF_Q_GEN_CHK, refillq->flags)) <<
-		 IDPF_RX_BI_GEN_S);
+		FIELD_PREP(IDPF_RX_BI_BUFID_M, buf_id) |
+		FIELD_PREP(IDPF_RX_BI_GEN_M,
+			   test_bit(__IDPF_Q_GEN_CHK, refillq->flags));
 
 	if (unlikely(++nta == refillq->desc_count)) {
 		nta = 0;
@@ -1825,14 +1825,14 @@ static bool idpf_tx_clean_complq(struct idpf_queue *complq, int budget,
 		u16 gen;
 
 		/* if the descriptor isn't done, no work yet to do */
-		gen = (le16_to_cpu(tx_desc->qid_comptype_gen) &
-		      IDPF_TXD_COMPLQ_GEN_M) >> IDPF_TXD_COMPLQ_GEN_S;
+		gen = le16_get_bits(tx_desc->qid_comptype_gen,
+				    IDPF_TXD_COMPLQ_GEN_M);
 		if (test_bit(__IDPF_Q_GEN_CHK, complq->flags) != gen)
 			break;
 
 		/* Find necessary info of TX queue to clean buffers */
-		rel_tx_qid = (le16_to_cpu(tx_desc->qid_comptype_gen) &
-			 IDPF_TXD_COMPLQ_QID_M) >> IDPF_TXD_COMPLQ_QID_S;
+		rel_tx_qid = le16_get_bits(tx_desc->qid_comptype_gen,
+					   IDPF_TXD_COMPLQ_QID_M);
 		if (rel_tx_qid >= complq->txq_grp->num_txq ||
 		    !complq->txq_grp->txqs[rel_tx_qid]) {
 			dev_err(&complq->vport->adapter->pdev->dev,
@@ -1842,9 +1842,8 @@ static bool idpf_tx_clean_complq(struct idpf_queue *complq, int budget,
 		tx_q = complq->txq_grp->txqs[rel_tx_qid];
 
 		/* Determine completion type */
-		ctype = (le16_to_cpu(tx_desc->qid_comptype_gen) &
-			IDPF_TXD_COMPLQ_COMPL_TYPE_M) >>
-			IDPF_TXD_COMPLQ_COMPL_TYPE_S;
+		ctype = le16_get_bits(tx_desc->qid_comptype_gen,
+				      IDPF_TXD_COMPLQ_COMPL_TYPE_M);
 		switch (ctype) {
 		case IDPF_TXD_COMPLT_RE:
 			hw_head = le16_to_cpu(tx_desc->q_head_compl_tag.q_head);
@@ -1945,11 +1944,10 @@ void idpf_tx_splitq_build_ctb(union idpf_tx_flex_desc *desc,
 			      u16 td_cmd, u16 size)
 {
 	desc->q.qw1.cmd_dtype =
-		cpu_to_le16(params->dtype & IDPF_FLEX_TXD_QW1_DTYPE_M);
+		le16_encode_bits(params->dtype, IDPF_FLEX_TXD_QW1_DTYPE_M);
 	desc->q.qw1.cmd_dtype |=
-		cpu_to_le16((td_cmd << IDPF_FLEX_TXD_QW1_CMD_S) &
-			    IDPF_FLEX_TXD_QW1_CMD_M);
-	desc->q.qw1.buf_size = cpu_to_le16((u16)size);
+		le16_encode_bits(td_cmd, IDPF_FLEX_TXD_QW1_CMD_M);
+	desc->q.qw1.buf_size = cpu_to_le16(size);
 	desc->q.qw1.l2tags.l2tag1 = cpu_to_le16(params->td_tag);
 }
 
@@ -2843,8 +2841,9 @@ static void idpf_rx_splitq_extract_csum_bits(struct virtchnl2_rx_flex_desc_adv_n
 				qword1);
 	csum->ipv6exadd = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_IPV6EXADD_M,
 				    qword0);
-	csum->raw_csum_inv = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_RAW_CSUM_INV_M,
-				       le16_to_cpu(rx_desc->ptype_err_fflags0));
+	csum->raw_csum_inv =
+		le16_get_bits(rx_desc->ptype_err_fflags0,
+			      VIRTCHNL2_RX_FLEX_DESC_ADV_RAW_CSUM_INV_M);
 	csum->raw_csum = le16_to_cpu(rx_desc->misc.raw_cs);
 }
 
@@ -2938,8 +2937,8 @@ static int idpf_rx_process_skb_fields(struct idpf_queue *rxq,
 	struct idpf_rx_ptype_decoded decoded;
 	u16 rx_ptype;
 
-	rx_ptype = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_PTYPE_M,
-			     le16_to_cpu(rx_desc->ptype_err_fflags0));
+	rx_ptype = le16_get_bits(rx_desc->ptype_err_fflags0,
+				 VIRTCHNL2_RX_FLEX_DESC_ADV_PTYPE_M);
 
 	decoded = rxq->vport->rx_ptype_lkup[rx_ptype];
 	/* If we don't know the ptype we can't do anything else with it. Just
@@ -2953,8 +2952,8 @@ static int idpf_rx_process_skb_fields(struct idpf_queue *rxq,
 
 	skb->protocol = eth_type_trans(skb, rxq->vport->netdev);
 
-	if (FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_RSC_M,
-		      le16_to_cpu(rx_desc->hdrlen_flags)))
+	if (le16_get_bits(rx_desc->hdrlen_flags,
+			  VIRTCHNL2_RX_FLEX_DESC_ADV_RSC_M))
 		return idpf_rx_rsc(rxq, skb, rx_desc, &decoded);
 
 	idpf_rx_splitq_extract_csum_bits(rx_desc, &csum_bits);
@@ -3148,8 +3147,8 @@ static int idpf_rx_splitq_clean(struct idpf_queue *rxq, int budget)
 		dma_rmb();
 
 		/* if the descriptor isn't done, no work yet to do */
-		gen_id = le16_to_cpu(rx_desc->pktlen_gen_bufq_id);
-		gen_id = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_GEN_M, gen_id);
+		gen_id = le16_get_bits(rx_desc->pktlen_gen_bufq_id,
+				       VIRTCHNL2_RX_FLEX_DESC_ADV_GEN_M);
 
 		if (test_bit(__IDPF_Q_GEN_CHK, rxq->flags) != gen_id)
 			break;
@@ -3164,9 +3163,8 @@ static int idpf_rx_splitq_clean(struct idpf_queue *rxq, int budget)
 			continue;
 		}
 
-		pkt_len = le16_to_cpu(rx_desc->pktlen_gen_bufq_id);
-		pkt_len = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_LEN_PBUF_M,
-				    pkt_len);
+		pkt_len = le16_get_bits(rx_desc->pktlen_gen_bufq_id,
+					VIRTCHNL2_RX_FLEX_DESC_ADV_LEN_PBUF_M);
 
 		hbo = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_HBO_M,
 				rx_desc->status_err0_qw1);
@@ -3183,14 +3181,12 @@ static int idpf_rx_splitq_clean(struct idpf_queue *rxq, int budget)
 			goto bypass_hsplit;
 		}
 
-		hdr_len = le16_to_cpu(rx_desc->hdrlen_flags);
-		hdr_len = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_LEN_HDR_M,
-				    hdr_len);
+		hdr_len = le16_get_bits(rx_desc->hdrlen_flags,
+					VIRTCHNL2_RX_FLEX_DESC_ADV_LEN_HDR_M);
 
 bypass_hsplit:
-		bufq_id = le16_to_cpu(rx_desc->pktlen_gen_bufq_id);
-		bufq_id = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_BUFQ_ID_M,
-				    bufq_id);
+		bufq_id = le16_get_bits(rx_desc->pktlen_gen_bufq_id,
+					VIRTCHNL2_RX_FLEX_DESC_ADV_BUFQ_ID_M);
 
 		rxq_set = container_of(rxq, struct idpf_rxq_set, rxq);
 		if (!bufq_id)
-- 
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
