Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 794BD99C630
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Oct 2024 11:44:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED0C3607E6;
	Mon, 14 Oct 2024 09:44:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zRK0IV8AfWxM; Mon, 14 Oct 2024 09:44:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D8541607DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728899061;
	bh=2oV7Ez+pF8phgKumcikCe8bO+MAVuCZXBgtSMugNz28=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DVOUzPnrPSeBTLtsISoXjPF2SUI0jxX4y8qYoB0KsRZzSSjJDiziancNNsJNWQNbZ
	 uOZmDNd4qpr77vm8221qbNhVLNGE/dtvGY1vm/vUFALyZ0Li5glxoGtoE1BnqM72Oi
	 g9+XDNLjBMvsmJFnP+HfKYKlga2PlEhDgrewPfv068EMHTxB3JZllyXDPn3WOsL/NI
	 V4+N2ijMoPlSZpWcINIzsptK9YYWlQ8jJnYxqdGUrSUQ8ZcRO3mIsAOab5YoDqkYqN
	 xGQ0f9sQsCbyUlj+lPfkarz1bfpEzWxFnISKTgrwEX3LaHIdrSs70KOpyRDhMF3SaO
	 uqm7DvQoTr7EQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D8541607DF;
	Mon, 14 Oct 2024 09:44:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 615161BF364
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 09:44:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2531580B66
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 09:44:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yhd2_6zQwksR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Oct 2024 09:44:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EC09B80FF5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EC09B80FF5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EC09B80FF5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 09:44:08 +0000 (UTC)
X-CSE-ConnectionGUID: ICzHp0yoRraUixa2kfUsag==
X-CSE-MsgGUID: Nz9j3N90QrG5u9zNpZJAKw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="45712179"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="45712179"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 02:44:08 -0700
X-CSE-ConnectionGUID: zWsPGR9FQQS1DIDL+xhNCQ==
X-CSE-MsgGUID: ed0qUUIYScaxjYWYb2CD1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="77531834"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa009.fm.intel.com with ESMTP; 14 Oct 2024 02:44:07 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id A4CC527BD1;
 Mon, 14 Oct 2024 10:44:05 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	aleksander.lobakin@intel.com
Date: Sun, 13 Oct 2024 11:44:10 -0400
Message-Id: <20241013154415.20262-10-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20241013154415.20262-1-mateusz.polchlopek@intel.com>
References: <20241013154415.20262-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728899049; x=1760435049;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Mz6eqS6zKh51Wx8VNvZOK8oHoSmyhrlT+wQdhCpgFrI=;
 b=XUfsYRiBO+FSJ0TTdVSbpihe9+/2PbFsIewVc/mbqnk2O82uaw3RARml
 Olq4wf+9IXpYGq25t7/KEg8YsPw4trIMiV2ybJh26vTrMg2T4CtnBwkEG
 BtxwsLP6aTrYJhbNTewH+5uV2rjKfiMnpINNUESqXYHm7kuOc1KUHTv80
 fnUZtX9qXOXhwIybHNww54Zh27BBW2fL+Tb5Rgf2bDBzhETfFAaIvTENT
 r3jcCV4YwoJ8biJa5KqGVC7qmACOQmSdlWu7trhSAqrnXZJhZ9MdCr+j0
 im7OGs5wLOTmd1jmA22srxoc16vwLiPnKnZPHsPvpR4dIed/pdBuxKuu7
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XUfsYRiB
Subject: [Intel-wired-lan] [PATCH iwl-next v11 09/14] libeth: move
 idpf_rx_csum_decoded and idpf_rx_extracted
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
Cc: netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Structs idpf_rx_csum_decoded and idpf_rx_extracted are used both in
idpf and iavf Intel drivers. Change the prefix from idpf_* to libeth_*
and move mentioned structs to libeth's rx.h header file.

Adjust usage in idpf driver.

Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 51 ++++++++++---------
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 16 +++---
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   | 19 -------
 include/net/libeth/rx.h                       | 47 +++++++++++++++++
 4 files changed, 82 insertions(+), 51 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index dfd7cf1d9aa0..27797dfc95da 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -595,7 +595,7 @@ static bool idpf_rx_singleq_is_non_eop(const union virtchnl2_rx_desc *rx_desc)
  */
 static void idpf_rx_singleq_csum(struct idpf_rx_queue *rxq,
 				 struct sk_buff *skb,
-				 struct idpf_rx_csum_decoded csum_bits,
+				 struct libeth_rx_csum csum_bits,
 				 struct libeth_rx_pt decoded)
 {
 	bool ipv4, ipv6;
@@ -661,10 +661,10 @@ static void idpf_rx_singleq_csum(struct idpf_rx_queue *rxq,
  *
  * Return: parsed checksum status.
  **/
-static struct idpf_rx_csum_decoded
+static struct libeth_rx_csum
 idpf_rx_singleq_base_csum(const union virtchnl2_rx_desc *rx_desc)
 {
-	struct idpf_rx_csum_decoded csum_bits = { };
+	struct libeth_rx_csum csum_bits = { };
 	u32 rx_error, rx_status;
 	u64 qword;
 
@@ -696,10 +696,10 @@ idpf_rx_singleq_base_csum(const union virtchnl2_rx_desc *rx_desc)
  *
  * Return: parsed checksum status.
  **/
-static struct idpf_rx_csum_decoded
+static struct libeth_rx_csum
 idpf_rx_singleq_flex_csum(const union virtchnl2_rx_desc *rx_desc)
 {
-	struct idpf_rx_csum_decoded csum_bits = { };
+	struct libeth_rx_csum csum_bits = { };
 	u16 rx_status0, rx_status1;
 
 	rx_status0 = le16_to_cpu(rx_desc->flex_nic_wb.status_error0);
@@ -798,7 +798,7 @@ idpf_rx_singleq_process_skb_fields(struct idpf_rx_queue *rx_q,
 				   u16 ptype)
 {
 	struct libeth_rx_pt decoded = rx_q->rx_ptype_lkup[ptype];
-	struct idpf_rx_csum_decoded csum_bits;
+	struct libeth_rx_csum csum_bits;
 
 	/* modifies the skb - consumes the enet header */
 	skb->protocol = eth_type_trans(skb, rx_q->netdev);
@@ -891,6 +891,7 @@ bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_rx_queue *rx_q,
  * idpf_rx_singleq_extract_base_fields - Extract fields from the Rx descriptor
  * @rx_desc: the descriptor to process
  * @fields: storage for extracted values
+ * @ptype: pointer that will store packet type
  *
  * Decode the Rx descriptor and extract relevant information including the
  * size and Rx packet type.
@@ -900,20 +901,21 @@ bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_rx_queue *rx_q,
  */
 static void
 idpf_rx_singleq_extract_base_fields(const union virtchnl2_rx_desc *rx_desc,
-				    struct idpf_rx_extracted *fields)
+				    struct libeth_rqe_info *fields, u32 *ptype)
 {
 	u64 qword;
 
 	qword = le64_to_cpu(rx_desc->base_wb.qword1.status_error_ptype_len);
 
-	fields->size = FIELD_GET(VIRTCHNL2_RX_BASE_DESC_QW1_LEN_PBUF_M, qword);
-	fields->rx_ptype = FIELD_GET(VIRTCHNL2_RX_BASE_DESC_QW1_PTYPE_M, qword);
+	fields->len = FIELD_GET(VIRTCHNL2_RX_BASE_DESC_QW1_LEN_PBUF_M, qword);
+	*ptype = FIELD_GET(VIRTCHNL2_RX_BASE_DESC_QW1_PTYPE_M, qword);
 }
 
 /**
  * idpf_rx_singleq_extract_flex_fields - Extract fields from the Rx descriptor
  * @rx_desc: the descriptor to process
  * @fields: storage for extracted values
+ * @ptype: pointer that will store packet type
  *
  * Decode the Rx descriptor and extract relevant information including the
  * size and Rx packet type.
@@ -923,12 +925,12 @@ idpf_rx_singleq_extract_base_fields(const union virtchnl2_rx_desc *rx_desc,
  */
 static void
 idpf_rx_singleq_extract_flex_fields(const union virtchnl2_rx_desc *rx_desc,
-				    struct idpf_rx_extracted *fields)
+				    struct libeth_rqe_info *fields, u32 *ptype)
 {
-	fields->size = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_PKT_LEN_M,
-				 le16_to_cpu(rx_desc->flex_nic_wb.pkt_len));
-	fields->rx_ptype = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_PTYPE_M,
-				     le16_to_cpu(rx_desc->flex_nic_wb.ptype_flex_flags0));
+	fields->len = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_PKT_LEN_M,
+				le16_to_cpu(rx_desc->flex_nic_wb.pkt_len));
+	*ptype = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_PTYPE_M,
+			   le16_to_cpu(rx_desc->flex_nic_wb.ptype_flex_flags0));
 }
 
 /**
@@ -936,17 +938,18 @@ idpf_rx_singleq_extract_flex_fields(const union virtchnl2_rx_desc *rx_desc,
  * @rx_q: Rx descriptor queue
  * @rx_desc: the descriptor to process
  * @fields: storage for extracted values
+ * @ptype: pointer that will store packet type
  *
  */
 static void
 idpf_rx_singleq_extract_fields(const struct idpf_rx_queue *rx_q,
 			       const union virtchnl2_rx_desc *rx_desc,
-			       struct idpf_rx_extracted *fields)
+			       struct libeth_rqe_info *fields, u32 *ptype)
 {
 	if (rx_q->rxdids == VIRTCHNL2_RXDID_1_32B_BASE_M)
-		idpf_rx_singleq_extract_base_fields(rx_desc, fields);
+		idpf_rx_singleq_extract_base_fields(rx_desc, fields, ptype);
 	else
-		idpf_rx_singleq_extract_flex_fields(rx_desc, fields);
+		idpf_rx_singleq_extract_flex_fields(rx_desc, fields, ptype);
 }
 
 /**
@@ -966,9 +969,10 @@ static int idpf_rx_singleq_clean(struct idpf_rx_queue *rx_q, int budget)
 
 	/* Process Rx packets bounded by budget */
 	while (likely(total_rx_pkts < (unsigned int)budget)) {
-		struct idpf_rx_extracted fields = { };
+		struct libeth_rqe_info fields = { };
 		union virtchnl2_rx_desc *rx_desc;
 		struct idpf_rx_buf *rx_buf;
+		u32 ptype;
 
 		/* get the Rx desc from Rx queue based on 'next_to_clean' */
 		rx_desc = &rx_q->rx[ntc];
@@ -989,16 +993,16 @@ static int idpf_rx_singleq_clean(struct idpf_rx_queue *rx_q, int budget)
 		 */
 		dma_rmb();
 
-		idpf_rx_singleq_extract_fields(rx_q, rx_desc, &fields);
+		idpf_rx_singleq_extract_fields(rx_q, rx_desc, &fields, &ptype);
 
 		rx_buf = &rx_q->rx_buf[ntc];
-		if (!libeth_rx_sync_for_cpu(rx_buf, fields.size))
+		if (!libeth_rx_sync_for_cpu(rx_buf, fields.len))
 			goto skip_data;
 
 		if (skb)
-			idpf_rx_add_frag(rx_buf, skb, fields.size);
+			idpf_rx_add_frag(rx_buf, skb, fields.len);
 		else
-			skb = idpf_rx_build_skb(rx_buf, fields.size);
+			skb = idpf_rx_build_skb(rx_buf, fields.len);
 
 		/* exit if we failed to retrieve a buffer */
 		if (!skb)
@@ -1033,8 +1037,7 @@ static int idpf_rx_singleq_clean(struct idpf_rx_queue *rx_q, int budget)
 		total_rx_bytes += skb->len;
 
 		/* protocol */
-		idpf_rx_singleq_process_skb_fields(rx_q, skb,
-						   rx_desc, fields.rx_ptype);
+		idpf_rx_singleq_process_skb_fields(rx_q, skb, rx_desc, ptype)
 
 		/* send completed skb up the stack */
 		napi_gro_receive(rx_q->pp->p.napi, skb);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 60d15b3e6e2f..63a76e5b7f01 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -2895,7 +2895,7 @@ idpf_rx_hash(const struct idpf_rx_queue *rxq, struct sk_buff *skb,
  * skb->protocol must be set before this function is called
  */
 static void idpf_rx_csum(struct idpf_rx_queue *rxq, struct sk_buff *skb,
-			 struct idpf_rx_csum_decoded csum_bits,
+			 struct libeth_rx_csum csum_bits,
 			 struct libeth_rx_pt decoded)
 {
 	bool ipv4, ipv6;
@@ -2923,7 +2923,7 @@ static void idpf_rx_csum(struct idpf_rx_queue *rxq, struct sk_buff *skb,
 	if (unlikely(csum_bits.l4e))
 		goto checksum_fail;
 
-	if (csum_bits.raw_csum_inv ||
+	if (!csum_bits.raw_csum_valid ||
 	    decoded.inner_prot == LIBETH_RX_PT_INNER_SCTP) {
 		skb->ip_summed = CHECKSUM_UNNECESSARY;
 		return;
@@ -2946,10 +2946,10 @@ static void idpf_rx_csum(struct idpf_rx_queue *rxq, struct sk_buff *skb,
  *
  * Return: parsed checksum status.
  **/
-static struct idpf_rx_csum_decoded
+static struct libeth_rx_csum
 idpf_rx_splitq_extract_csum_bits(const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc)
 {
-	struct idpf_rx_csum_decoded csum = { };
+	struct libeth_rx_csum csum = { };
 	u8 qword0, qword1;
 
 	qword0 = rx_desc->status_err0_qw0;
@@ -2965,9 +2965,9 @@ idpf_rx_splitq_extract_csum_bits(const struct virtchnl2_rx_flex_desc_adv_nic_3 *
 			       qword1);
 	csum.ipv6exadd = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_IPV6EXADD_M,
 				   qword0);
-	csum.raw_csum_inv =
-		le16_get_bits(rx_desc->ptype_err_fflags0,
-			      VIRTCHNL2_RX_FLEX_DESC_ADV_RAW_CSUM_INV_M);
+	csum.raw_csum_valid =
+		!le16_get_bits(rx_desc->ptype_err_fflags0,
+			       VIRTCHNL2_RX_FLEX_DESC_ADV_RAW_CSUM_INV_M);
 	csum.raw_csum = le16_to_cpu(rx_desc->misc.raw_cs);
 
 	return csum;
@@ -3060,7 +3060,7 @@ static int
 idpf_rx_process_skb_fields(struct idpf_rx_queue *rxq, struct sk_buff *skb,
 			   const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc)
 {
-	struct idpf_rx_csum_decoded csum_bits;
+	struct libeth_rx_csum csum_bits;
 	struct libeth_rx_pt decoded;
 	u16 rx_ptype;
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 9c1fe84108ed..b59aa7d8de2c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -213,25 +213,6 @@ enum idpf_tx_ctx_desc_eipt_offload {
 	IDPF_TX_CTX_EXT_IP_IPV4         = 0x3
 };
 
-/* Checksum offload bits decoded from the receive descriptor. */
-struct idpf_rx_csum_decoded {
-	u32 l3l4p : 1;
-	u32 ipe : 1;
-	u32 eipe : 1;
-	u32 eudpe : 1;
-	u32 ipv6exadd : 1;
-	u32 l4e : 1;
-	u32 pprs : 1;
-	u32 nat : 1;
-	u32 raw_csum_inv : 1;
-	u32 raw_csum : 16;
-};
-
-struct idpf_rx_extracted {
-	unsigned int size;
-	u16 rx_ptype;
-};
-
 #define IDPF_TX_COMPLQ_CLEAN_BUDGET	256
 #define IDPF_TX_MIN_PKT_LEN		17
 #define IDPF_TX_DESCS_FOR_SKB_DATA_PTR	1
diff --git a/include/net/libeth/rx.h b/include/net/libeth/rx.h
index 43574bd6612f..ab05024be518 100644
--- a/include/net/libeth/rx.h
+++ b/include/net/libeth/rx.h
@@ -198,6 +198,53 @@ struct libeth_rx_pt {
 	enum xdp_rss_hash_type			hash_type:16;
 };
 
+/**
+ * struct libeth_rx_csum - checksum offload bits decoded from the Rx descriptor
+ * @l3l4p: detectable L3 and L4 integrity check is processed by the hardware
+ * @ipe: IP checksum error
+ * @eipe: external (outermost) IP header (only for tunels)
+ * @eudpe: external (outermost) UDP checksum error (only for tunels)
+ * @ipv6exadd: IPv6 header with extension headers
+ * @l4e: L4 integrity error
+ * @pprs: set for packets that skip checksum calculation in the HW pre parser
+ * @nat: the packet is a UDP tunneled packet
+ * @raw_csum_valid: set if raw checksum is valid
+ * @pad: padding to naturally align raw_csum field
+ * @raw_csum: raw checksum
+ */
+struct libeth_rx_csum {
+	u32					l3l4p:1;
+	u32					ipe:1;
+	u32					eipe:1;
+	u32					eudpe:1;
+	u32					ipv6exadd:1;
+	u32					l4e:1;
+	u32					pprs:1;
+	u32					nat:1;
+
+	u32					raw_csum_valid:1;
+	u32					pad:7;
+	u32					raw_csum:16;
+};
+
+/**
+ * struct libeth_rqe_info - receive queue element info
+ * @len: packet length
+ * @ptype: packet type based on types programmed into the device
+ * @eop: whether it's the last fragment of the packet
+ * @rxe: MAC errors: CRC, Alignment, Oversize, Undersizes, Length error
+ * @vlan: C-VLAN or S-VLAN tag depending on the VLAN offload configuration
+ */
+struct libeth_rqe_info {
+	u32					len;
+
+	u32					ptype:14;
+	u32					eop:1;
+	u32					rxe:1;
+
+	u32					vlan:16;
+};
+
 void libeth_rx_pt_gen_hash_type(struct libeth_rx_pt *pt);
 
 /**
-- 
2.38.1

