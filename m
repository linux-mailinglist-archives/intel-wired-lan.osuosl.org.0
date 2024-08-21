Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5948B959B90
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 14:18:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8306581395;
	Wed, 21 Aug 2024 12:18:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KQWrDwWN0AI2; Wed, 21 Aug 2024 12:18:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 08F318133A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724242724;
	bh=yI6EOSI/4IRe0+gumuzAKvjugNflXkNYodKlITFtGbo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dSlFu4SU+KVVCPSMednK5ahxV1F88xeLK0cAToWgXyZ6i8nyQSoCYZMEF53L0eywF
	 6iaPvSK3fKjfnHtcToNFiUXNPlFVvOLuleiAooEaesfi4rUPvro/2Dd7t3N6EWw+4a
	 xu8q/RK+wLxuuBtL4xqQlYpSvH/VNabQkAcUkuAgu7/zRZnz3ApsZBOXGIPfotfu8O
	 CJAO8ssTDeSXs8whgCnF+ovD4KmmzCtNmlZhqzFylBn1qhV/JHDd+DsGg5unaSJ33S
	 7OvWFLY/0xpxu9CEodbcvg2gj3uT88MX6yBjiuXpJuKMjMsKkLMRwygtH3W8sPa4Ih
	 b36DHeywwvKDQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 08F318133A;
	Wed, 21 Aug 2024 12:18:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 236A71BF97F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 12:18:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1E53260ADC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 12:18:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WEUYJcIy4OUk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 12:18:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E16766065D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E16766065D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E16766065D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 12:18:32 +0000 (UTC)
X-CSE-ConnectionGUID: RYVdt8e4Q9isaut14ogvsA==
X-CSE-MsgGUID: Lhd1B5B5SKeLaxtDBiOZMg==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="34017122"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="34017122"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 05:18:21 -0700
X-CSE-ConnectionGUID: 0lN/EDRJTzqil9wM/PwFZw==
X-CSE-MsgGUID: BgL1A9J7QiWvcwCpPxIxDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="60732502"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa006.fm.intel.com with ESMTP; 21 Aug 2024 05:18:19 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 0E60D2878D;
 Wed, 21 Aug 2024 13:18:18 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: netdev@vger.kernel.org
Date: Wed, 21 Aug 2024 14:15:34 +0200
Message-Id: <20240821121539.374343-10-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240821121539.374343-1-wojciech.drewek@intel.com>
References: <20240821121539.374343-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724242713; x=1755778713;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wmdckJ09Vq6zYp5+0a0OkJYSXVDZinGmXs7LGdeoe9k=;
 b=birx3hk7neFrdjV6MsZ8kc40sG/o7Hf1yhjwhomBWFSQdPl/2C4bS6hd
 l/TnorLvAnDIV9kiEL7UtdfBXLrhQP9By4IKNNiGXZTK6xItFh0nzLpYJ
 +ulw4sVDxv9UHNsBv66m6H9j5aUe3ovUENG8sKd3UVjgq2CD6xuYFyoiy
 sf8dJBzgebY51KomRT50F8CI8/sX2BGwQYPMOHuErCoJwLCGCxAwImSkt
 U+7pt58YZTUI6MzaW2KoTmLss7CPeZj2qvVi0Hg9fxBvq4U0322g0HnZm
 Foh0s/EJ9XrMis25vj+APDJD65cpcA4/RWuV5h1znBkBeLQ/fQ3B1NxFy
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=birx3hk7
Subject: [Intel-wired-lan] [PATCH iwl-next v10 09/14] libeth: move
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
Cc: alexandr.lobakin@intel.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org, kuba@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

Structs idpf_rx_csum_decoded and idpf_rx_extracted are used both in
idpf and iavf Intel drivers. This commit changes the prefix from
idpf_* to libeth_* and moves mentioned structs to libeth's rx.h header
file.

Usage in idpf driver has been adjusted.

Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 51 ++++++++++---------
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 16 +++---
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   | 19 -------
 include/net/libeth/rx.h                       | 42 +++++++++++++++
 4 files changed, 77 insertions(+), 51 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index c6ce819b3528..e57d366ed576 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -592,7 +592,7 @@ static bool idpf_rx_singleq_is_non_eop(const union virtchnl2_rx_desc *rx_desc)
  */
 static void idpf_rx_singleq_csum(struct idpf_rx_queue *rxq,
 				 struct sk_buff *skb,
-				 struct idpf_rx_csum_decoded csum_bits,
+				 struct libeth_rx_csum csum_bits,
 				 struct libeth_rx_pt decoded,
 				 struct libeth_rq_napi_stats *rs)
 {
@@ -663,10 +663,10 @@ static void idpf_rx_singleq_csum(struct idpf_rx_queue *rxq,
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
 
@@ -698,10 +698,10 @@ idpf_rx_singleq_base_csum(const union virtchnl2_rx_desc *rx_desc)
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
@@ -802,7 +802,7 @@ idpf_rx_singleq_process_skb_fields(struct idpf_rx_queue *rx_q,
 				   struct libeth_rq_napi_stats *rs)
 {
 	struct libeth_rx_pt decoded = rx_q->rx_ptype_lkup[ptype];
-	struct idpf_rx_csum_decoded csum_bits;
+	struct libeth_rx_csum csum_bits;
 
 	/* modifies the skb - consumes the enet header */
 	skb->protocol = eth_type_trans(skb, rx_q->netdev);
@@ -895,6 +895,7 @@ bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_rx_queue *rx_q,
  * idpf_rx_singleq_extract_base_fields - Extract fields from the Rx descriptor
  * @rx_desc: the descriptor to process
  * @fields: storage for extracted values
+ * @ptype: pointer that will store packet type
  *
  * Decode the Rx descriptor and extract relevant information including the
  * size and Rx packet type.
@@ -904,20 +905,21 @@ bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_rx_queue *rx_q,
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
@@ -927,12 +929,12 @@ idpf_rx_singleq_extract_base_fields(const union virtchnl2_rx_desc *rx_desc,
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
@@ -940,17 +942,18 @@ idpf_rx_singleq_extract_flex_fields(const union virtchnl2_rx_desc *rx_desc,
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
@@ -970,9 +973,10 @@ static int idpf_rx_singleq_clean(struct idpf_rx_queue *rx_q, int budget)
 
 	/* Process Rx packets bounded by budget */
 	while (likely(rs.packets < budget)) {
-		struct idpf_rx_extracted fields = { };
+		struct libeth_rqe_info fields = { };
 		union virtchnl2_rx_desc *rx_desc;
 		struct idpf_rx_buf *rx_buf;
+		u32 ptype;
 
 		/* get the Rx desc from Rx queue based on 'next_to_clean' */
 		rx_desc = &rx_q->rx[ntc];
@@ -993,16 +997,16 @@ static int idpf_rx_singleq_clean(struct idpf_rx_queue *rx_q, int budget)
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
@@ -1037,8 +1041,7 @@ static int idpf_rx_singleq_clean(struct idpf_rx_queue *rx_q, int budget)
 		rs.bytes += skb->len;
 
 		/* protocol */
-		idpf_rx_singleq_process_skb_fields(rx_q, skb,
-						   rx_desc, fields.rx_ptype,
+		idpf_rx_singleq_process_skb_fields(rx_q, skb, rx_desc, ptype,
 						   &rs);
 
 		/* send completed skb up the stack */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 7a597bd2bb25..09c803055332 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -2896,7 +2896,7 @@ idpf_rx_hash(const struct idpf_rx_queue *rxq, struct sk_buff *skb,
  * skb->protocol must be set before this function is called
  */
 static void idpf_rx_csum(struct idpf_rx_queue *rxq, struct sk_buff *skb,
-			 struct idpf_rx_csum_decoded csum_bits,
+			 struct libeth_rx_csum csum_bits,
 			 struct libeth_rx_pt decoded,
 			 struct libeth_rq_napi_stats *rs)
 {
@@ -2925,7 +2925,7 @@ static void idpf_rx_csum(struct idpf_rx_queue *rxq, struct sk_buff *skb,
 	if (unlikely(csum_bits.l4e))
 		goto bad;
 
-	if (csum_bits.raw_csum_inv ||
+	if (!csum_bits.raw_csum_valid ||
 	    decoded.inner_prot == LIBETH_RX_PT_INNER_SCTP) {
 		skb->ip_summed = CHECKSUM_UNNECESSARY;
 		rs->csum_unnecessary++;
@@ -2951,10 +2951,10 @@ static void idpf_rx_csum(struct idpf_rx_queue *rxq, struct sk_buff *skb,
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
@@ -2970,9 +2970,9 @@ idpf_rx_splitq_extract_csum_bits(const struct virtchnl2_rx_flex_desc_adv_nic_3 *
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
@@ -3068,7 +3068,7 @@ idpf_rx_process_skb_fields(struct idpf_rx_queue *rxq, struct sk_buff *skb,
 			   const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
 			   struct libeth_rq_napi_stats *rs)
 {
-	struct idpf_rx_csum_decoded csum_bits;
+	struct libeth_rx_csum csum_bits;
 	struct libeth_rx_pt decoded;
 	u16 rx_ptype;
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 8188f5cb418b..46ae7832a0b2 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -216,25 +216,6 @@ enum idpf_tx_ctx_desc_eipt_offload {
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
index 43574bd6612f..03e371633f4f 100644
--- a/include/net/libeth/rx.h
+++ b/include/net/libeth/rx.h
@@ -198,6 +198,48 @@ struct libeth_rx_pt {
 	enum xdp_rss_hash_type			hash_type:16;
 };
 
+/**
+ * struct libeth_rx_csum - Checksum offload bits decoded from the Rx descriptor
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
+	u32					raw_csum_valid:1;
+	u32					pad:7;
+	u32					raw_csum:16;
+};
+
+/**
+ * struct libeth_rqe_info - receive queue element info
+ * @len: packet length
+ * @vlan_tag: vlan tag
+ * @eop: end of packet
+ * @rxe: MAC errors: CRC, Alignment, Oversize, Undersizes, Length error
+ */
+struct libeth_rqe_info {
+	u32					len;
+	u32					vlan_tag:16;
+	u32					eop:1;
+	u32					rxe:1;
+};
+
 void libeth_rx_pt_gen_hash_type(struct libeth_rx_pt *pt);
 
 /**
-- 
2.40.1

