Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD2D9505F4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Aug 2024 15:08:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C894A81D35;
	Tue, 13 Aug 2024 13:08:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sQBBYIOaU0gE; Tue, 13 Aug 2024 13:08:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 65FDA81D3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723554514;
	bh=zgg9RjfoCOT9X1vEhlwtGN9u2o+VH8S73vl6ukhJquc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cV4ebu36jnT6dPdEsN6PzyLhPdzPnwouwpsSle1bskfu23EOH4NJzRFgIIsIKZohN
	 0kEU1nn4xUu/+kTepkohM6+SgbktxkR7JFfzdDgnJ7OponZwQjsdjn/GbWuoITd31i
	 IigRRaFxxMXO8LlkPJYa9+B+8JsXwrCxC1JQ0SBFJPc1eSrs7MHMGgZolAeoGgz2mY
	 34P83AZmRxtK66ZUrDYmCc4aBDMWKVQvIwkfibp8NL/FzMCAZtMpqisyBFk+DK4QmO
	 7R9tvfo6dDYePx8hu9xD6LEUqxCUx704XZUJcEDeLNnssoTUpcYeAqiAmwvYUTamyM
	 RD9Xk8MxinDmw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 65FDA81D3A;
	Tue, 13 Aug 2024 13:08:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5A9C01BF275
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 13:08:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A4935606C6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 13:08:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R4-f609jKn8s for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Aug 2024 13:08:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6B3D66069C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6B3D66069C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6B3D66069C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 13:08:16 +0000 (UTC)
X-CSE-ConnectionGUID: KtI2DCLfRVmTPMOYBy6Zlg==
X-CSE-MsgGUID: DsSjsOyUTNqE68uoFXN2uQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="32290938"
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="32290938"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 06:08:16 -0700
X-CSE-ConnectionGUID: 3cBjVojoRLKIVSuYWVE54A==
X-CSE-MsgGUID: k64RN8joT/eJylvFwoFj9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="59417153"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa008.jf.intel.com with ESMTP; 13 Aug 2024 06:08:14 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 61EB432C92;
 Tue, 13 Aug 2024 14:08:12 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	aleksander.lobakin@intel.com
Date: Tue, 13 Aug 2024 08:55:09 -0400
Message-Id: <20240813125513.8212-11-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240813125513.8212-1-mateusz.polchlopek@intel.com>
References: <20240813125513.8212-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723554497; x=1755090497;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BGpFpT6IvmFqfwodOYLjTjH72wF3CT5cNpsYqxB3Kq4=;
 b=BRR67h4E7CSImY7/WdDz5Mrn5ss5H4sOCjMPNdc7oWrE3A6brf/T5rss
 1PFiFWF4rOwG+NuF1/sayK7PLUnbpJm1/ZzPE2w3PQjMVM94GmFbrZaqi
 Jdq8R6DvHrOUHqEsUF3qahpDljteNSweBeemy/SP/I81+hyM6itzi1VDu
 YzgUenz6vg77qk2WEMkAaju2lopsyR/YFUfPxaRX3/OlZ/Qijk/yVjYkm
 8U4zazoty4sIGRTsBi7drC/QBgaqynAvI/pk6h1r2bKZ0k4ef12Kozgyl
 oI/9eL8ZIZ5fujo1JWhzUEd7ZWXAMB/H2OKsAMK1JUdCv7MlpkKZvAiqo
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BRR67h4E
Subject: [Intel-wired-lan] [PATCH iwl-next v9 10/14] iavf: define Rx
 descriptors as qwords
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

The union iavf_32byte_rx_desc consists of two unnamed structs defined
inside. One of them represents legacy 32 byte descriptor and second the
16 byte descriptor (extended to 32 byte). Each of them consists of
bunch of unions, structs and __le fields that represent specific fields
in descriptor.

This commit changes the representation of iavf_32byte_rx_desc union
to store four __le64 fields (qw0, qw1, qw2, qw3) that represent
quad-words. Those quad-words will be then accessed by calling
leXY_get_bits macros in upcoming commits.

Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h       |   2 +-
 drivers/net/ethernet/intel/iavf/iavf_trace.h |   6 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.c  |  49 +++++----
 drivers/net/ethernet/intel/iavf/iavf_txrx.h  |   7 +-
 drivers/net/ethernet/intel/iavf/iavf_type.h  | 102 +++++--------------
 5 files changed, 59 insertions(+), 107 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 871431bed64a..07b48034a22b 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -82,7 +82,7 @@ struct iavf_vsi {
 
 #define MAXIMUM_ETHERNET_VLAN_SIZE (VLAN_ETH_FRAME_LEN + ETH_FCS_LEN)
 
-#define IAVF_RX_DESC(R, i) (&(((union iavf_32byte_rx_desc *)((R)->desc))[i]))
+#define IAVF_RX_DESC(R, i) (&(((struct iavf_rx_desc *)((R)->desc))[i]))
 #define IAVF_TX_DESC(R, i) (&(((struct iavf_tx_desc *)((R)->desc))[i]))
 #define IAVF_TX_CTXTDESC(R, i) \
 	(&(((struct iavf_tx_context_desc *)((R)->desc))[i]))
diff --git a/drivers/net/ethernet/intel/iavf/iavf_trace.h b/drivers/net/ethernet/intel/iavf/iavf_trace.h
index 62212011c807..c5e4d1823886 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_trace.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_trace.h
@@ -112,7 +112,7 @@ DECLARE_EVENT_CLASS(
 	iavf_rx_template,
 
 	TP_PROTO(struct iavf_ring *ring,
-		 union iavf_32byte_rx_desc *desc,
+		 struct iavf_rx_desc *desc,
 		 struct sk_buff *skb),
 
 	TP_ARGS(ring, desc, skb),
@@ -140,7 +140,7 @@ DECLARE_EVENT_CLASS(
 DEFINE_EVENT(
 	iavf_rx_template, iavf_clean_rx_irq,
 	TP_PROTO(struct iavf_ring *ring,
-		 union iavf_32byte_rx_desc *desc,
+		 struct iavf_rx_desc *desc,
 		 struct sk_buff *skb),
 
 	TP_ARGS(ring, desc, skb));
@@ -148,7 +148,7 @@ DEFINE_EVENT(
 DEFINE_EVENT(
 	iavf_rx_template, iavf_clean_rx_irq_rx,
 	TP_PROTO(struct iavf_ring *ring,
-		 union iavf_32byte_rx_desc *desc,
+		 struct iavf_rx_desc *desc,
 		 struct sk_buff *skb),
 
 	TP_ARGS(ring, desc, skb));
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 26b424fd6718..1103395e415b 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -766,7 +766,7 @@ int iavf_setup_rx_descriptors(struct iavf_ring *rx_ring)
 	u64_stats_init(&rx_ring->syncp);
 
 	/* Round up to nearest 4K */
-	rx_ring->size = rx_ring->count * sizeof(union iavf_32byte_rx_desc);
+	rx_ring->size = rx_ring->count * sizeof(struct iavf_rx_desc);
 	rx_ring->size = ALIGN(rx_ring->size, 4096);
 	rx_ring->desc = dma_alloc_coherent(fq.pp->p.dev, rx_ring->size,
 					   &rx_ring->dma, GFP_KERNEL);
@@ -845,7 +845,7 @@ bool iavf_alloc_rx_buffers(struct iavf_ring *rx_ring, u16 cleaned_count)
 		.count		= rx_ring->count,
 	};
 	u16 ntu = rx_ring->next_to_use;
-	union iavf_rx_desc *rx_desc;
+	struct iavf_rx_desc *rx_desc;
 
 	/* do nothing if no valid netdev defined */
 	if (!rx_ring->netdev || !cleaned_count)
@@ -863,7 +863,7 @@ bool iavf_alloc_rx_buffers(struct iavf_ring *rx_ring, u16 cleaned_count)
 		/* Refresh the desc even if buffer_addrs didn't change
 		 * because each write-back erases this info.
 		 */
-		rx_desc->read.pkt_addr = cpu_to_le64(addr);
+		rx_desc->qw0 = cpu_to_le64(addr);
 
 		rx_desc++;
 		ntu++;
@@ -873,7 +873,7 @@ bool iavf_alloc_rx_buffers(struct iavf_ring *rx_ring, u16 cleaned_count)
 		}
 
 		/* clear the status bits for the next_to_use descriptor */
-		rx_desc->wb.qword1.status_error_len = 0;
+		rx_desc->qw1 = 0;
 
 		cleaned_count--;
 	} while (cleaned_count);
@@ -901,19 +901,18 @@ bool iavf_alloc_rx_buffers(struct iavf_ring *rx_ring, u16 cleaned_count)
  * @skb: skb currently being received and modified
  * @rx_desc: the receive descriptor
  **/
-static void iavf_rx_checksum(struct iavf_vsi *vsi,
-			     struct sk_buff *skb,
-			     union iavf_rx_desc *rx_desc)
+static void iavf_rx_checksum(struct iavf_vsi *vsi, struct sk_buff *skb,
+			     struct iavf_rx_desc *rx_desc)
 {
 	struct libeth_rx_pt decoded;
 	u32 rx_error, rx_status;
 	bool ipv4, ipv6;
-	u8 ptype;
 	u64 qword;
+	u8 ptype;
 
 	skb->ip_summed = CHECKSUM_NONE;
 
-	qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
+	qword = le64_to_cpu(rx_desc->qw1);
 	ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
 
 	decoded = libie_rx_pt_parse(ptype);
@@ -967,7 +966,7 @@ static void iavf_rx_checksum(struct iavf_vsi *vsi,
  * @rx_ptype: Rx packet type
  **/
 static void iavf_rx_hash(struct iavf_ring *ring,
-			 union iavf_rx_desc *rx_desc,
+			 struct iavf_rx_desc *rx_desc,
 			 struct sk_buff *skb,
 			 u8 rx_ptype)
 {
@@ -981,8 +980,8 @@ static void iavf_rx_hash(struct iavf_ring *ring,
 	if (!libeth_rx_pt_has_hash(ring->netdev, decoded))
 		return;
 
-	if ((rx_desc->wb.qword1.status_error_len & rss_mask) == rss_mask) {
-		hash = le32_to_cpu(rx_desc->wb.qword0.hi_dword.rss);
+	if ((rx_desc->qw1 & rss_mask) == rss_mask) {
+		hash = le64_get_bits(rx_desc->qw0, IAVF_RXD_LEGACY_RSS_M);
 		libeth_rx_pt_set_hash(skb, hash, decoded);
 	}
 }
@@ -1000,7 +999,7 @@ static void iavf_rx_hash(struct iavf_ring *ring,
  **/
 static void
 iavf_process_skb_fields(struct iavf_ring *rx_ring,
-			union iavf_rx_desc *rx_desc, struct sk_buff *skb,
+			struct iavf_rx_desc *rx_desc, struct sk_buff *skb,
 			u8 rx_ptype)
 {
 	iavf_rx_hash(rx_ring, rx_desc, skb, rx_ptype);
@@ -1101,7 +1100,7 @@ static struct sk_buff *iavf_build_skb(const struct libeth_fqe *rx_buffer,
  * that this is in fact a non-EOP buffer.
  **/
 static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
-			    union iavf_rx_desc *rx_desc,
+			    struct iavf_rx_desc *rx_desc,
 			    struct sk_buff *skb)
 {
 	u32 ntc = rx_ring->next_to_clean + 1;
@@ -1143,7 +1142,8 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 
 	while (likely(total_rx_packets < (unsigned int)budget)) {
 		struct libeth_fqe *rx_buffer;
-		union iavf_rx_desc *rx_desc;
+		struct iavf_rx_desc *rx_desc;
+		u16 ext_status = 0;
 		unsigned int size;
 		u16 vlan_tag = 0;
 		u8 rx_ptype;
@@ -1163,7 +1163,7 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		 * which is always zero because packet split isn't used, if the
 		 * hardware wrote DD then the length will be non-zero
 		 */
-		qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
+		qword = le64_to_cpu(rx_desc->qw1);
 
 		/* This memory barrier is needed to keep us from reading
 		 * any other fields out of the rx_desc until we have
@@ -1219,7 +1219,7 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		/* probably a little skewed due to removing CRC */
 		total_rx_bytes += skb->len;
 
-		qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
+		qword = le64_to_cpu(rx_desc->qw1);
 		rx_ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
 
 		/* populate checksum, VLAN, and protocol */
@@ -1227,11 +1227,16 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 
 		if (qword & BIT(IAVF_RX_DESC_STATUS_L2TAG1P_SHIFT) &&
 		    rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1)
-			vlan_tag = le16_to_cpu(rx_desc->wb.qword0.lo_dword.l2tag1);
-		if (rx_desc->wb.qword2.ext_status &
-		    cpu_to_le16(BIT(IAVF_RX_DESC_EXT_STATUS_L2TAG2P_SHIFT)) &&
-		    rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2)
-			vlan_tag = le16_to_cpu(rx_desc->wb.qword2.l2tag2_2);
+			vlan_tag = le64_get_bits(rx_desc->qw0,
+						 IAVF_RXD_LEGACY_L2TAG1_M);
+
+		ext_status = le64_get_bits(rx_desc->qw2,
+					   IAVF_RXD_LEGACY_EXT_STATUS_M);
+
+		if ((ext_status & IAVF_RX_DESC_EXT_STATUS_L2TAG2P_M) &&
+		    (rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2))
+			vlan_tag = le64_get_bits(rx_desc->qw2,
+						 IAVF_RXD_LEGACY_L2TAG2_2_M);
 
 		iavf_trace(clean_rx_irq_rx, rx_ring, rx_desc, skb);
 		iavf_receive_skb(rx_ring, skb, vlan_tag);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index e8421994235b..59e7a58bc0f7 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
@@ -80,8 +80,6 @@ enum iavf_dyn_idx_t {
 	BIT_ULL(IAVF_FILTER_PCTYPE_NONF_UNICAST_IPV6_UDP) | \
 	BIT_ULL(IAVF_FILTER_PCTYPE_NONF_MULTICAST_IPV6_UDP))
 
-#define iavf_rx_desc iavf_32byte_rx_desc
-
 /**
  * iavf_test_staterr - tests bits in Rx descriptor status and error fields
  * @rx_desc: pointer to receive descriptor (in le64 format)
@@ -92,11 +90,10 @@ enum iavf_dyn_idx_t {
  * The status_error_len doesn't need to be shifted because it begins
  * at offset zero.
  */
-static inline bool iavf_test_staterr(union iavf_rx_desc *rx_desc,
+static inline bool iavf_test_staterr(struct iavf_rx_desc *rx_desc,
 				     const u64 stat_err_bits)
 {
-	return !!(rx_desc->wb.qword1.status_error_len &
-		  cpu_to_le64(stat_err_bits));
+	return !!(rx_desc->qw1 & cpu_to_le64(stat_err_bits));
 }
 
 /* How many Rx Buffers do we bundle into one write to the hardware ? */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_type.h b/drivers/net/ethernet/intel/iavf/iavf_type.h
index f6b09e57abce..c1a4506fbaba 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_type.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_type.h
@@ -178,82 +178,29 @@ struct iavf_hw {
 	char err_str[16];
 };
 
-/* RX Descriptors */
-union iavf_16byte_rx_desc {
-	struct {
-		__le64 pkt_addr; /* Packet buffer address */
-		__le64 hdr_addr; /* Header buffer address */
-	} read;
-	struct {
-		struct {
-			struct {
-				union {
-					__le16 mirroring_status;
-					__le16 fcoe_ctx_id;
-				} mirr_fcoe;
-				__le16 l2tag1;
-			} lo_dword;
-			union {
-				__le32 rss; /* RSS Hash */
-				__le32 fd_id; /* Flow director filter id */
-				__le32 fcoe_param; /* FCoE DDP Context id */
-			} hi_dword;
-		} qword0;
-		struct {
-			/* ext status/error/pktype/length */
-			__le64 status_error_len;
-		} qword1;
-	} wb;  /* writeback */
-};
-
-union iavf_32byte_rx_desc {
-	struct {
-		__le64  pkt_addr; /* Packet buffer address */
-		__le64  hdr_addr; /* Header buffer address */
-			/* bit 0 of hdr_buffer_addr is DD bit */
-		__le64  rsvd1;
-		__le64  rsvd2;
-	} read;
-	struct {
-		struct {
-			struct {
-				union {
-					__le16 mirroring_status;
-					__le16 fcoe_ctx_id;
-				} mirr_fcoe;
-				__le16 l2tag1;
-			} lo_dword;
-			union {
-				__le32 rss; /* RSS Hash */
-				__le32 fcoe_param; /* FCoE DDP Context id */
-				/* Flow director filter id in case of
-				 * Programming status desc WB
-				 */
-				__le32 fd_id;
-			} hi_dword;
-		} qword0;
-		struct {
-			/* status/error/pktype/length */
-			__le64 status_error_len;
-		} qword1;
-		struct {
-			__le16 ext_status; /* extended status */
-			__le16 rsvd;
-			__le16 l2tag2_1;
-			__le16 l2tag2_2;
-		} qword2;
-		struct {
-			union {
-				__le32 flex_bytes_lo;
-				__le32 pe_status;
-			} lo_dword;
-			union {
-				__le32 flex_bytes_hi;
-				__le32 fd_id;
-			} hi_dword;
-		} qword3;
-	} wb;  /* writeback */
-};
+/**
+ * struct iavf_rx_desc - Receive descriptor (both legacy and flexible)
+ * @qw0: quad word 0
+ * @qw1: quad word 1
+ * @qw2: quad word 2
+ * @qw3: quad word 3
+ */
+struct iavf_rx_desc {
+	aligned_le64 qw0;
+/* The hash signature (RSS). */
+#define IAVF_RXD_LEGACY_RSS_M			GENMASK_ULL(63, 32)
+/* Stripped L2 Tag from the receive packet. */
+#define IAVF_RXD_LEGACY_L2TAG1_M		GENMASK_ULL(33, 16)
+
+	aligned_le64 qw1;
+	aligned_le64 qw2;
+/* Extracted second word of the L2 Tag 2. */
+#define IAVF_RXD_LEGACY_L2TAG2_2_M		GENMASK_ULL(63, 48)
+/* Extended status bits. */
+#define IAVF_RXD_LEGACY_EXT_STATUS_M		GENMASK_ULL(11, 0)
+
+	aligned_le64 qw3;
+} __aligned(4 * sizeof(__le64));
 
 enum iavf_rx_desc_status_bits {
 	/* Note: These are predefined bit offsets */
@@ -347,6 +294,8 @@ enum iavf_rx_desc_ext_status_bits {
 	IAVF_RX_DESC_EXT_STATUS_PELONGB_SHIFT	= 11,
 };
 
+#define IAVF_RX_DESC_EXT_STATUS_L2TAG2P_M	BIT(IAVF_RX_DESC_EXT_STATUS_L2TAG2P_SHIFT)
+
 enum iavf_rx_desc_pe_status_bits {
 	/* Note: These are predefined bit offsets */
 	IAVF_RX_DESC_PE_STATUS_QPID_SHIFT	= 0, /* 18 BITS */
@@ -574,4 +523,5 @@ struct iavf_eth_stats {
 	u64 tx_discards;		/* tdpc */
 	u64 tx_errors;			/* tepc */
 };
+
 #endif /* _IAVF_TYPE_H_ */
-- 
2.38.1

