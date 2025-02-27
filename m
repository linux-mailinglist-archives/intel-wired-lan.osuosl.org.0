Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FBC1A47FBF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Feb 2025 14:46:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 899304093F;
	Thu, 27 Feb 2025 13:46:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2tqanNnejqVr; Thu, 27 Feb 2025 13:46:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B27D40B4B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740663971;
	bh=8mgl9lTL5JI8Ic7E6OyPmL4v94kqHxgCjLQ1utGQbLo=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=l6ilb671VsQUYY0aXu2fCPrXJAfTt25PcPKYlvSTtI7RdDjimG4YTkqgtP92jVEn9
	 zXryDYcereyPdmMHrNFXQoVVgjNO7BIhqMnrwwLi/t76aFSD5qLd2iT3NmHxxJwOtb
	 m0x3R/df5ISSA0LHdS+q+jbzQW+NkISCkcGXRpPWfUZ8kFmwD4e99BoAoSEqdFyucT
	 AXsOqKU2NmPoq1kAUyx5+VYXyloom0QKal5AmSHKZXu1YEpyxGZNok0f2Vf07t68ip
	 lzE+Aoohv6zu09BJknxpG0ukSIftLmPT276P7aMNCx35Zo83HPAafBvHyLyk+UawM6
	 hXVMxHusIholw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B27D40B4B;
	Thu, 27 Feb 2025 13:46:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E681568
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 13:46:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B7E0283B15
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 13:46:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X1Zt2Cn0N6bQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Feb 2025 13:46:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 93A6383AD9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 93A6383AD9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 93A6383AD9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 13:46:06 +0000 (UTC)
X-CSE-ConnectionGUID: lA/M28CORWmZ+6TSrggFaw==
X-CSE-MsgGUID: 25HUvXSsQ5q1b7AHqP6T7A==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="66922750"
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="66922750"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 05:46:06 -0800
X-CSE-ConnectionGUID: csjCOY9ARQKW7K18UOYwiA==
X-CSE-MsgGUID: cvfqdnLNSCqMkV95T4zn0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="122039809"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa004.jf.intel.com with ESMTP; 27 Feb 2025 05:46:04 -0800
Received: from ilmater.igk.intel.com (ilmater.igk.intel.com [10.123.220.50])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id AC32F12692;
 Thu, 27 Feb 2025 13:46:02 +0000 (GMT)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Thu, 27 Feb 2025 13:38:30 +0100
Message-ID: <20250227123837.547053-1-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740663966; x=1772199966;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UM901/g7+N9FJl/7G9axof2tsLzHggB3NqpgUO3p1Nw=;
 b=LhynXWz/0JC4bmYm3YH5JaoL/EVLiUbWokGHPB4M9OScG8xqtTai7kmq
 zbuhGNuoQlPAvQEmiXldv4MPLfqc1PKn5uAcyyDWnatC0HWh+vioUSbww
 pPCP7+pjfA1EOqAq4oXhg3YlP5Z7t4W8mnubvg5PnKcmWdBP1JS8yrjfN
 ITDBLD8Yk4FShjfQo18ECVsCehHXlqRS/F84MpmDMaZMOrPHgEOC3nTO7
 TbCY+VtyfmPkhXBZ01KX5XWRZrnNjs40QGaFKP0azvmZCTLrW0zjGqpZO
 AiDVDQSWbbtIoZSjwJaV307xq5hUekoqMPiPjtqShc/ZEBKZ291Q4hMBH
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LhynXWz/
Subject: [Intel-wired-lan] [PATCH iwl-next v1] idpf: assign extracted ptype
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
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 24 +++++++++----------
 1 file changed, 11 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index eae1b6f474e6..72436a582158 100644
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
@@ -944,12 +942,12 @@ idpf_rx_singleq_extract_flex_fields(const union virtchnl2_rx_desc *rx_desc,
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
@@ -972,7 +970,6 @@ static int idpf_rx_singleq_clean(struct idpf_rx_queue *rx_q, int budget)
 		struct libeth_rqe_info fields = { };
 		union virtchnl2_rx_desc *rx_desc;
 		struct idpf_rx_buf *rx_buf;
-		u32 ptype;
 
 		/* get the Rx desc from Rx queue based on 'next_to_clean' */
 		rx_desc = &rx_q->rx[ntc];
@@ -993,7 +990,7 @@ static int idpf_rx_singleq_clean(struct idpf_rx_queue *rx_q, int budget)
 		 */
 		dma_rmb();
 
-		idpf_rx_singleq_extract_fields(rx_q, rx_desc, &fields, &ptype);
+		idpf_rx_singleq_extract_fields(rx_q, rx_desc, &fields);
 
 		rx_buf = &rx_q->rx_buf[ntc];
 		if (!libeth_rx_sync_for_cpu(rx_buf, fields.len))
@@ -1037,7 +1034,8 @@ static int idpf_rx_singleq_clean(struct idpf_rx_queue *rx_q, int budget)
 		total_rx_bytes += skb->len;
 
 		/* protocol */
-		idpf_rx_singleq_process_skb_fields(rx_q, skb, rx_desc, ptype);
+		idpf_rx_singleq_process_skb_fields(rx_q, skb, rx_desc,
+						   fields.ptype);
 
 		/* send completed skb up the stack */
 		napi_gro_receive(rx_q->pp->p.napi, skb);
-- 
2.48.1

