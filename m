Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D1D9A98B9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 07:41:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2C297607C0;
	Tue, 22 Oct 2024 05:41:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zCiJbwspHlhW; Tue, 22 Oct 2024 05:41:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D8F266079C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729575692;
	bh=kEggq1MFt35wRGlOLRZRyZK3T2snWYlLvsBbtRfR8/U=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PTsnMcodBAcx64KrcNozkWReKUUlLm3TUQwYhU7v2MaRFhFTn4PE6kZoChNqNlfPG
	 0YSdT0Rh7sHJLkGhvI37uOp9QiSZI1EZXeA4iEirWniRgroVkoQFEQP/1lrcXi5fxW
	 6WYT7x6WaQx/LFGNJlmfZ2lvTcRJ/LHxvnz/fvseXlh7wVvdjnazGUIqAsA371Lmu7
	 lnMPaz85xjoWJ+wHT9fv2GlMQ3NIM0C3Ee2R+6S7Iwoa8Yh7n9Fsu5rZJ/Q7x7o2G5
	 xQmNWrEDuFTf7QvHhnIj/rChp9o10N0CvXre+KpZoyiSydRHe8kjuZawL8pz20IU/b
	 IriKBjcg3PAaw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D8F266079C;
	Tue, 22 Oct 2024 05:41:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id AFAD671F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 05:41:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0D56C4015F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 05:41:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7MWoS_iOOCcB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 05:41:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 541704014C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 541704014C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 541704014C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 05:41:20 +0000 (UTC)
X-CSE-ConnectionGUID: LuTp5sPjRw2kFJyhq8YUfw==
X-CSE-MsgGUID: I0r+nssWSdug+7e1Gfg/ug==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="33015627"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="33015627"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 22:41:20 -0700
X-CSE-ConnectionGUID: DeYBk8nIS/WHDynwC4B0xw==
X-CSE-MsgGUID: tf22APm7Tuu7fTBT9XrQPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="84558122"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa003.jf.intel.com with ESMTP; 21 Oct 2024 22:41:16 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id E0D1A27BD2;
 Tue, 22 Oct 2024 06:41:14 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Tue, 22 Oct 2024 07:41:17 -0400
Message-Id: <20241022114121.61284-11-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20241022114121.61284-1-mateusz.polchlopek@intel.com>
References: <20241022114121.61284-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729575681; x=1761111681;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wn2DQTj8Ja/53EKpweyWNIWopEoyEl+hlbf3ep9spzY=;
 b=azyvAne+Os8mSBYB7mLBALkZozgnoxlQp8FZ1S+SLpqS1qOlEoM78O7l
 GqTYEFqnty78RmnzhRn8+W3ammg9x0bTH8yNLCud9ijQMjOew3La0bcEe
 vzT2qUbJKdJMj5S2ocV98jBEsoNK9N8EryM4PWUBCUuUjQhh7neVqusZO
 3OUWu0qQ+7NoFKgaOw5c+0LPAhWHEidNlxlfkm4J7Kx3Ajx2XTTjGCrDQ
 O349oQSG2MPVHkskFwK5NqjT7xTRkKDDf7NirDvycJ8/L6fCHd+O/oBKu
 b5134ogb4aiYjiI1rsNxrrAnkZfvArWcuQT+tESuXL3Yscw+kcL1scElz
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=azyvAne+
Subject: [Intel-wired-lan] [PATCH iwl-next v12 10/14] iavf: define Rx
 descriptors as qwords
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
 drivers/net/ethernet/intel/iavf/iavf_txrx.c  |  56 ++++-----
 drivers/net/ethernet/intel/iavf/iavf_txrx.h  |   7 +-
 drivers/net/ethernet/intel/iavf/iavf_type.h  | 117 +++++++------------
 5 files changed, 77 insertions(+), 111 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index b6e52992e270..9de3e0ba3731 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -83,7 +83,7 @@ struct iavf_vsi {
 
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
index 26b424fd6718..46745ebc9c1f 100644
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
+	u32 ptype;
 
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
@@ -1143,11 +1142,12 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 
 	while (likely(total_rx_packets < (unsigned int)budget)) {
 		struct libeth_fqe *rx_buffer;
-		union iavf_rx_desc *rx_desc;
+		struct iavf_rx_desc *rx_desc;
+		u16 ext_status = 0;
 		unsigned int size;
 		u16 vlan_tag = 0;
 		u8 rx_ptype;
-		u64 qword;
+		u64 qw1;
 
 		/* return some buffers to hardware, one at a time is too slow */
 		if (cleaned_count >= IAVF_RX_BUFFER_WRITE) {
@@ -1163,7 +1163,7 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		 * which is always zero because packet split isn't used, if the
 		 * hardware wrote DD then the length will be non-zero
 		 */
-		qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
+		qw1 = le64_to_cpu(rx_desc->qw1);
 
 		/* This memory barrier is needed to keep us from reading
 		 * any other fields out of the rx_desc until we have
@@ -1174,7 +1174,7 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		if (!iavf_test_staterr(rx_desc, IAVF_RXD_DD))
 			break;
 
-		size = FIELD_GET(IAVF_RXD_QW1_LENGTH_PBUF_MASK, qword);
+		size = FIELD_GET(IAVF_RXD_QW1_LENGTH_PBUF_MASK, qw1);
 
 		iavf_trace(clean_rx_irq, rx_ring, rx_desc, skb);
 
@@ -1219,19 +1219,23 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		/* probably a little skewed due to removing CRC */
 		total_rx_bytes += skb->len;
 
-		qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
-		rx_ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
+		rx_ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qw1);
 
 		/* populate checksum, VLAN, and protocol */
 		iavf_process_skb_fields(rx_ring, rx_desc, skb, rx_ptype);
 
-		if (qword & BIT(IAVF_RX_DESC_STATUS_L2TAG1P_SHIFT) &&
+		if (qw1 & BIT(IAVF_RX_DESC_STATUS_L2TAG1P_SHIFT) &&
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
index c38b4ec2eaea..3a1a39ee3615 100644
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
index f6b09e57abce..e000971e3c01 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_type.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_type.h
@@ -178,82 +178,45 @@ struct iavf_hw {
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
+ * @qw0: quad word 0 fields:
+ *	 Legacy: Descriptor Type; Mirror ID; L2TAG1P (S-TAG); Filter Status
+ *	 Flex: Descriptor Type; Mirror ID; UMBCAST; Packet Type; Flexible Flags
+ *	       Section 0; Packet Length; Header Length; Split Header Flag;
+ *	       Flexible Flags section 1 / Extended Status
+ * @qw1: quad word 1 fields:
+ *	 Legacy: Status Field; Error Field; Packet Type; Packet Length (packet,
+ *		 header, Split Header Flag)
+ *	 Flex: Status / Error 0 Field; L2TAG1P (S-TAG); Flexible Metadata
+ *	       Container #0; Flexible Metadata Container #1
+ * @qw2: quad word 2 fields:
+ *	 Legacy: Extended Status; 1st L2TAG2P (C-TAG); 2nd L2TAG2P (C-TAG)
+ *	 Flex: Status / Error 1 Field; Flexible Flags section 2; Timestamp Low;
+ *	       1st L2TAG2 (C-TAG); 2nd L2TAG2 (C-TAG)
+ * @qw3: quad word 3 fields:
+ *	 Legacy: FD Filter ID / Flexible Bytes
+ *	 Flex: Flexible Metadata Container #2; Flexible Metadata Container #3;
+ *	       Flexible Metadata Container #4 / Timestamp High 0; Flexible
+ *	       Metadata Container #5 / Timestamp High 1;
+ */
+struct iavf_rx_desc {
+	aligned_le64 qw0;
+/* The hash signature (RSS) */
+#define IAVF_RXD_LEGACY_RSS_M			GENMASK_ULL(63, 32)
+/* Stripped C-TAG VLAN from the receive packet */
+#define IAVF_RXD_LEGACY_L2TAG1_M		GENMASK_ULL(33, 16)
+
+	aligned_le64 qw1;
+	aligned_le64 qw2;
+/* Stripped S-TAG VLAN from the receive packet */
+#define IAVF_RXD_LEGACY_L2TAG2_2_M		GENMASK_ULL(63, 48)
+/* Extended status bits */
+#define IAVF_RXD_LEGACY_EXT_STATUS_M		GENMASK_ULL(11, 0)
+
+	aligned_le64 qw3;
+} __aligned(4 * sizeof(__le64));
+static_assert(sizeof(struct iavf_rx_desc) == 32);
 
 enum iavf_rx_desc_status_bits {
 	/* Note: These are predefined bit offsets */
@@ -347,6 +310,8 @@ enum iavf_rx_desc_ext_status_bits {
 	IAVF_RX_DESC_EXT_STATUS_PELONGB_SHIFT	= 11,
 };
 
+#define IAVF_RX_DESC_EXT_STATUS_L2TAG2P_M	BIT(IAVF_RX_DESC_EXT_STATUS_L2TAG2P_SHIFT)
+
 enum iavf_rx_desc_pe_status_bits {
 	/* Note: These are predefined bit offsets */
 	IAVF_RX_DESC_PE_STATUS_QPID_SHIFT	= 0, /* 18 BITS */
-- 
2.38.1

