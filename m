Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0930CA4ADC0
	for <lists+intel-wired-lan@lfdr.de>; Sat,  1 Mar 2025 21:12:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A25CD84CE3;
	Sat,  1 Mar 2025 20:11:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uYZ_Qs8h51kH; Sat,  1 Mar 2025 20:11:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C23C84CE6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740859918;
	bh=UwZ9/bDoZFEyNXLcdiINVBWmN99ngFJMZivkfhmn+bA=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Jmj/otW0NV6VLT7qHP62aABVM+8V09IMy3r2pVBW3dSwx7mdAzXsQVasyNmc7bfvC
	 onbcy+K12Pmn9R/I+APt75UQ8KocG7FNQNBbVdSQLdLZv18Qg6TbbmjaAqpTFxm9YM
	 BaKL9V5WGO9yq6NpLfgg6Nst4/5eByjZbJgp8LpN+MTqcPLs29/xfIvNZzWOUmUVXa
	 6EHHXF0CQ0jTHSgW+ok8Lew6mnxv37w4AYTYUOzuuHgMoa6QNWsfvYPhH+Ov4nwXeS
	 zTCZA4DNgbLSZSkz/zCRnUvsz2OTVjDbWH4Xe1Oys2r52S1BGr+VuHTfpYdEaBcasK
	 2OHP+riuIyfzA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C23C84CE6;
	Sat,  1 Mar 2025 20:11:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id ACD931CB
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Mar 2025 20:11:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 987E84012E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Mar 2025 20:11:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vZXE8HRDU-qy for <intel-wired-lan@lists.osuosl.org>;
 Sat,  1 Mar 2025 20:11:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 18431400CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 18431400CE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 18431400CE
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Mar 2025 20:11:54 +0000 (UTC)
X-CSE-ConnectionGUID: cpnm/3khSgWgKuQ5Bhy45w==
X-CSE-MsgGUID: vHPxs6XaSeW1opl0H2m0Kw==
X-IronPort-AV: E=McAfee;i="6700,10204,11360"; a="64229825"
X-IronPort-AV: E=Sophos;i="6.13,326,1732608000"; d="scan'208";a="64229825"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2025 12:11:54 -0800
X-CSE-ConnectionGUID: mqjQbMK5T6yO6U/VYAggmg==
X-CSE-MsgGUID: HyT4tf/4TlKs7FYALxjmhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,326,1732608000"; d="scan'208";a="140861498"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa002.fm.intel.com with ESMTP; 01 Mar 2025 12:11:52 -0800
Received: from ilmater.igk.intel.com (ilmater.igk.intel.com [10.123.220.50])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 21053125A0;
 Sat,  1 Mar 2025 20:11:51 +0000 (GMT)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Sat,  1 Mar 2025 20:02:44 +0100
Message-ID: <20250301190423.613493-1-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740859915; x=1772395915;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CHprCrFSz1GiRHepl8Dq8IroyU5sN/LtO9aY6fu2A5k=;
 b=PY3aCFPCFM15CS02uC2HYD9FBBHb/eVTcv8OSrNfZrboOAzYRDc0Z2LT
 Gy0NRyHd4/sfUIZ5RV6XjXTO1d3RlpqZp4tjQZW9iyaUSKxuizuuZ3Ayt
 tMDwf9/suJRJra4031I5kgXWJDKbQEunrfMbxNrBX28shUck1xIo7sFtg
 Rb4jsmTXZ+d3DdLcqJXWAc0qYc2wOdVFeq0xRzfwRzLTaeJL3MdOz3kMW
 SZzFyPRW/dzPy0lERwrNEASVD4EheijPja87KxrnC5yYCIT4Nq/BDVHbR
 uW1ebLOU0VFnqhiQDfug+FwUf7+MzBOHTCkV9hAvTmEVZYN8xSFY14zwb
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PY3aCFPC
Subject: [Intel-wired-lan] [PATCH iwl-next v2] idpf: assign extracted ptype
 to struct libeth_rqe_info field
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Assign the ptype extracted from qword to the ptype field of struct
libeth_rqe_info.
Remove the now excess ptype param of idpf_rx_singleq_extract_fields(),
idpf_rx_singleq_extract_base_fields() and
idpf_rx_singleq_extract_flex_fields().

Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
v2: removed excess function parameter 'ptype' description in
idpf_rx_singleq_extract_fields() - reported by kernel bot. No code or
functional changes.

v1: initial patch
https://lore.kernel.org/netdev/20250227123837.547053-1-mateusz.polchlopek@intel.com/
---
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 25 ++++++++-----------
 1 file changed, 11 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index eae1b6f474e6..2e356dd10812 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -891,7 +891,6 @@ bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_rx_queue *rx_q,
  * idpf_rx_singleq_extract_base_fields - Extract fields from the Rx descriptor
  * @rx_desc: the descriptor to process
  * @fields: storage for extracted values
- * @ptype: pointer that will store packet type
  *
  * Decode the Rx descriptor and extract relevant information including the
  * size and Rx packet type.
@@ -901,21 +900,20 @@ bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_rx_queue *rx_q,
  */
 static void
 idpf_rx_singleq_extract_base_fields(const union virtchnl2_rx_desc *rx_desc,
-				    struct libeth_rqe_info *fields, u32 *ptype)
+				    struct libeth_rqe_info *fields)
 {
 	u64 qword;
 
 	qword = le64_to_cpu(rx_desc->base_wb.qword1.status_error_ptype_len);
 
 	fields->len = FIELD_GET(VIRTCHNL2_RX_BASE_DESC_QW1_LEN_PBUF_M, qword);
-	*ptype = FIELD_GET(VIRTCHNL2_RX_BASE_DESC_QW1_PTYPE_M, qword);
+	fields->ptype = FIELD_GET(VIRTCHNL2_RX_BASE_DESC_QW1_PTYPE_M, qword);
 }
 
 /**
  * idpf_rx_singleq_extract_flex_fields - Extract fields from the Rx descriptor
  * @rx_desc: the descriptor to process
  * @fields: storage for extracted values
- * @ptype: pointer that will store packet type
  *
  * Decode the Rx descriptor and extract relevant information including the
  * size and Rx packet type.
@@ -925,12 +923,12 @@ idpf_rx_singleq_extract_base_fields(const union virtchnl2_rx_desc *rx_desc,
  */
 static void
 idpf_rx_singleq_extract_flex_fields(const union virtchnl2_rx_desc *rx_desc,
-				    struct libeth_rqe_info *fields, u32 *ptype)
+				    struct libeth_rqe_info *fields)
 {
 	fields->len = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_PKT_LEN_M,
 				le16_to_cpu(rx_desc->flex_nic_wb.pkt_len));
-	*ptype = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_PTYPE_M,
-			   le16_to_cpu(rx_desc->flex_nic_wb.ptype_flex_flags0));
+	fields->ptype = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_PTYPE_M,
+				  le16_to_cpu(rx_desc->flex_nic_wb.ptype_flex_flags0));
 }
 
 /**
@@ -938,18 +936,17 @@ idpf_rx_singleq_extract_flex_fields(const union virtchnl2_rx_desc *rx_desc,
  * @rx_q: Rx descriptor queue
  * @rx_desc: the descriptor to process
  * @fields: storage for extracted values
- * @ptype: pointer that will store packet type
  *
  */
 static void
 idpf_rx_singleq_extract_fields(const struct idpf_rx_queue *rx_q,
 			       const union virtchnl2_rx_desc *rx_desc,
-			       struct libeth_rqe_info *fields, u32 *ptype)
+			       struct libeth_rqe_info *fields)
 {
 	if (rx_q->rxdids == VIRTCHNL2_RXDID_1_32B_BASE_M)
-		idpf_rx_singleq_extract_base_fields(rx_desc, fields, ptype);
+		idpf_rx_singleq_extract_base_fields(rx_desc, fields);
 	else
-		idpf_rx_singleq_extract_flex_fields(rx_desc, fields, ptype);
+		idpf_rx_singleq_extract_flex_fields(rx_desc, fields);
 }
 
 /**
@@ -972,7 +969,6 @@ static int idpf_rx_singleq_clean(struct idpf_rx_queue *rx_q, int budget)
 		struct libeth_rqe_info fields = { };
 		union virtchnl2_rx_desc *rx_desc;
 		struct idpf_rx_buf *rx_buf;
-		u32 ptype;
 
 		/* get the Rx desc from Rx queue based on 'next_to_clean' */
 		rx_desc = &rx_q->rx[ntc];
@@ -993,7 +989,7 @@ static int idpf_rx_singleq_clean(struct idpf_rx_queue *rx_q, int budget)
 		 */
 		dma_rmb();
 
-		idpf_rx_singleq_extract_fields(rx_q, rx_desc, &fields, &ptype);
+		idpf_rx_singleq_extract_fields(rx_q, rx_desc, &fields);
 
 		rx_buf = &rx_q->rx_buf[ntc];
 		if (!libeth_rx_sync_for_cpu(rx_buf, fields.len))
@@ -1037,7 +1033,8 @@ static int idpf_rx_singleq_clean(struct idpf_rx_queue *rx_q, int budget)
 		total_rx_bytes += skb->len;
 
 		/* protocol */
-		idpf_rx_singleq_process_skb_fields(rx_q, skb, rx_desc, ptype);
+		idpf_rx_singleq_process_skb_fields(rx_q, skb, rx_desc,
+						   fields.ptype);
 
 		/* send completed skb up the stack */
 		napi_gro_receive(rx_q->pp->p.napi, skb);
-- 
2.48.1

