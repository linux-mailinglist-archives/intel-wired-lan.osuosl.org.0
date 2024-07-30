Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF78940D7E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 11:28:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 30231605A7;
	Tue, 30 Jul 2024 09:28:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PiR0MQ1mflNG; Tue, 30 Jul 2024 09:28:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3AFB4608F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722331690;
	bh=QAJX4I9O277fbzXAWXlVYlwcJVmQMt8t6FpA/zUAWOg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CebDgjeH/lIG+CYom4xq3P/jq0kLv8m98iGtQ9q4a9mA9d3WYUCMMjU8OjCRh9JQ1
	 OvE/inHX1G+NFzUqRrvCT0MPcJ1Dnfo9sY7hcBIaoepVDZ0LZ4nw2AQfkmGx64st76
	 D4UgWsQdhzi//1JbXWDUHZKrux9h0Z+Ulx6t5cYIxsML9RgnRZXoCe2z98Xcu3/dJT
	 EWsDH/2faWsRRmOyyvpJmtlWzcahLVC+uks7AyYCFWGnOxMGQ49jmFOx6aDS6K+X2S
	 fEB4oqLWBbUI9giznWGpAkewnr8bujjgp8LN7YfmndQEQ8tTB7ME72Z+J7R2qqQWp1
	 N1Kh7lLIhKTUg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3AFB4608F2;
	Tue, 30 Jul 2024 09:28:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A67EA1BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 09:28:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A19E680F81
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 09:28:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rxulZF817N8w for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 09:28:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9D5EC80FB2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D5EC80FB2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9D5EC80FB2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 09:28:01 +0000 (UTC)
X-CSE-ConnectionGUID: bpM3K54AQSehjINFEGQH6A==
X-CSE-MsgGUID: uVhe1NRSQwy8xjXKpXQ3lg==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="45551326"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="45551326"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 02:28:01 -0700
X-CSE-ConnectionGUID: KMgd1tOXSZeEEGLjnLoQ+Q==
X-CSE-MsgGUID: aPxgbtcKSGaRyKMQKMM8xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="84923202"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa002.jf.intel.com with ESMTP; 30 Jul 2024 02:27:59 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 2CDCB2816E;
 Tue, 30 Jul 2024 10:27:58 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	aleksander.lobakin@intel.com
Date: Tue, 30 Jul 2024 05:15:04 -0400
Message-Id: <20240730091509.18846-10-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240730091509.18846-1-mateusz.polchlopek@intel.com>
References: <20240730091509.18846-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722331682; x=1753867682;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DQucBiHNgfH9gui/SCJPHzxt81tfrCn1CUlPpoMaZXg=;
 b=CS+s20PmRCBLYJM5saYe/vn1mBnEJ6klKyplWDVIC2LL2UkQSkamOLc5
 3ZZIxZgcrIhur0DR34fj6IzPQTkiUViit/gow/Vvpcwetr8CPE+JF2E5d
 lnW0dw/C8FjZxIYZdDuvkOZsiNhCqd5CLTl7ADVkOy1zCGxYMVtZ01lRM
 Fe9TXfz6ccfRz25e1cjXVmy3uI/3qrqzm4PzAmyWURnJxtQYr9KOMnnHC
 Suzmhmznf5fZ8GKD+xBajZ/8m6nCC0oTp6Wzpz3x699SKwS55Q9uA11oz
 85876z6fu0pHUFxY0m+/PgxSkhmNeAvdS68bwsOTKBGf1k4YKKSIUELYK
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CS+s20Pm
Subject: [Intel-wired-lan] [PATCH iwl-next v8 09/14] libeth: move
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
idpf and iavf Intel drivers. This commit changes the prefix from
idpf_* to libeth_* and moves mentioned structs to libeth's rx.h header
file.

Usage in idpf driver has been adjusted.

Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 20 +++++------
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  8 ++---
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   | 19 -----------
 include/net/libeth/rx.h                       | 34 +++++++++++++++++++
 4 files changed, 48 insertions(+), 33 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index fe64febf7436..6d2a173f61e2 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -609,7 +609,7 @@ static bool idpf_rx_singleq_is_non_eop(const union virtchnl2_rx_desc *rx_desc)
  */
 static void idpf_rx_singleq_csum(struct idpf_rx_queue *rxq,
 				 struct sk_buff *skb,
-				 struct idpf_rx_csum_decoded csum_bits,
+				 struct libeth_rx_csum_decoded csum_bits,
 				 struct libeth_rx_pt decoded)
 {
 	bool ipv4, ipv6;
@@ -675,10 +675,10 @@ static void idpf_rx_singleq_csum(struct idpf_rx_queue *rxq,
  *
  * Return: parsed checksum status.
  **/
-static struct idpf_rx_csum_decoded
+static struct libeth_rx_csum_decoded
 idpf_rx_singleq_base_csum(const union virtchnl2_rx_desc *rx_desc)
 {
-	struct idpf_rx_csum_decoded csum_bits = { };
+	struct libeth_rx_csum_decoded csum_bits = { };
 	u32 rx_error, rx_status;
 	u64 qword;
 
@@ -710,10 +710,10 @@ idpf_rx_singleq_base_csum(const union virtchnl2_rx_desc *rx_desc)
  *
  * Return: parsed checksum status.
  **/
-static struct idpf_rx_csum_decoded
+static struct libeth_rx_csum_decoded
 idpf_rx_singleq_flex_csum(const union virtchnl2_rx_desc *rx_desc)
 {
-	struct idpf_rx_csum_decoded csum_bits = { };
+	struct libeth_rx_csum_decoded csum_bits = { };
 	u16 rx_status0, rx_status1;
 
 	rx_status0 = le16_to_cpu(rx_desc->flex_nic_wb.status_error0);
@@ -812,7 +812,7 @@ idpf_rx_singleq_process_skb_fields(struct idpf_rx_queue *rx_q,
 				   u16 ptype)
 {
 	struct libeth_rx_pt decoded = rx_q->rx_ptype_lkup[ptype];
-	struct idpf_rx_csum_decoded csum_bits;
+	struct libeth_rx_csum_decoded csum_bits;
 
 	/* modifies the skb - consumes the enet header */
 	skb->protocol = eth_type_trans(skb, rx_q->netdev);
@@ -914,7 +914,7 @@ bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_rx_queue *rx_q,
  */
 static void
 idpf_rx_singleq_extract_base_fields(const union virtchnl2_rx_desc *rx_desc,
-				    struct idpf_rx_extracted *fields)
+				    struct libeth_rx_extracted *fields)
 {
 	u64 qword;
 
@@ -937,7 +937,7 @@ idpf_rx_singleq_extract_base_fields(const union virtchnl2_rx_desc *rx_desc,
  */
 static void
 idpf_rx_singleq_extract_flex_fields(const union virtchnl2_rx_desc *rx_desc,
-				    struct idpf_rx_extracted *fields)
+				    struct libeth_rx_extracted *fields)
 {
 	fields->size = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_PKT_LEN_M,
 				 le16_to_cpu(rx_desc->flex_nic_wb.pkt_len));
@@ -955,7 +955,7 @@ idpf_rx_singleq_extract_flex_fields(const union virtchnl2_rx_desc *rx_desc,
 static void
 idpf_rx_singleq_extract_fields(const struct idpf_rx_queue *rx_q,
 			       const union virtchnl2_rx_desc *rx_desc,
-			       struct idpf_rx_extracted *fields)
+			       struct libeth_rx_extracted *fields)
 {
 	if (rx_q->rxdids == VIRTCHNL2_RXDID_1_32B_BASE_M)
 		idpf_rx_singleq_extract_base_fields(rx_desc, fields);
@@ -980,7 +980,7 @@ static int idpf_rx_singleq_clean(struct idpf_rx_queue *rx_q, int budget)
 
 	/* Process Rx packets bounded by budget */
 	while (likely(total_rx_pkts < (unsigned int)budget)) {
-		struct idpf_rx_extracted fields = { };
+		struct libeth_rx_extracted fields = { };
 		union virtchnl2_rx_desc *rx_desc;
 		struct idpf_rx_buf *rx_buf;
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 585c3dadd9bf..328b25d7bb63 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -2928,7 +2928,7 @@ idpf_rx_hash(const struct idpf_rx_queue *rxq, struct sk_buff *skb,
  * skb->protocol must be set before this function is called
  */
 static void idpf_rx_csum(struct idpf_rx_queue *rxq, struct sk_buff *skb,
-			 struct idpf_rx_csum_decoded csum_bits,
+			 struct libeth_rx_csum_decoded csum_bits,
 			 struct libeth_rx_pt decoded)
 {
 	bool ipv4, ipv6;
@@ -2979,10 +2979,10 @@ static void idpf_rx_csum(struct idpf_rx_queue *rxq, struct sk_buff *skb,
  *
  * Return: parsed checksum status.
  **/
-static struct idpf_rx_csum_decoded
+static struct libeth_rx_csum_decoded
 idpf_rx_splitq_extract_csum_bits(const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc)
 {
-	struct idpf_rx_csum_decoded csum = { };
+	struct libeth_rx_csum_decoded csum = { };
 	u8 qword0, qword1;
 
 	qword0 = rx_desc->status_err0_qw0;
@@ -3093,7 +3093,7 @@ static int
 idpf_rx_process_skb_fields(struct idpf_rx_queue *rxq, struct sk_buff *skb,
 			   const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc)
 {
-	struct idpf_rx_csum_decoded csum_bits;
+	struct libeth_rx_csum_decoded csum_bits;
 	struct libeth_rx_pt decoded;
 	u16 rx_ptype;
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 6215dbee5546..0b11e7c6547a 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -254,25 +254,6 @@ enum idpf_tx_ctx_desc_eipt_offload {
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
index 43574bd6612f..197ff0f5e34c 100644
--- a/include/net/libeth/rx.h
+++ b/include/net/libeth/rx.h
@@ -258,4 +258,38 @@ static inline void libeth_rx_pt_set_hash(struct sk_buff *skb, u32 hash,
 	skb_set_hash(skb, hash, pt.payload_layer);
 }
 
+/**
+ * struct libeth_rx_csum_decoded - csum errors indicators
+ * @l3l4p: L3 and L4 integrity check
+ * @ipe: IP checksum error indication
+ * @eipe: External (most outer) IP header (only relevant for tunneled packets)
+ * @eudpe: External (most outer) UDP checksum error (only relevant for tunneled
+ *         packets)
+ * @ipv6exadd: IPv6 with Destination Options Header or Routing Header
+ * @l4e: L4 integrity error indication
+ *
+ * Checksum offload bits decoded from the receive descriptor.
+ */
+struct libeth_rx_csum_decoded {
+	u32 l3l4p:1;
+	u32 ipe:1;
+	u32 eipe:1;
+	u32 eudpe:1;
+	u32 ipv6exadd:1;
+	u32 l4e:1;
+	u32 pprs:1;
+	u32 nat:1;
+	u32 raw_csum_inv:1;
+	u32 raw_csum:16;
+};
+
+struct libeth_rx_extracted {
+	unsigned int	size;
+	u16		vlan_tag;
+	u16		rx_ptype;
+	u8		end_of_packet:1;
+	u8		rxe:1;
+};
+
+
 #endif /* __LIBETH_RX_H */
-- 
2.38.1

