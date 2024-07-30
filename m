Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C936940D7F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 11:28:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1406B60B54;
	Tue, 30 Jul 2024 09:28:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oIU3Q-UYusTl; Tue, 30 Jul 2024 09:28:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C9D160769
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722331691;
	bh=tpiQqU/k1SUQN+FwHQEW++geZAwt9/4X+TvVDIzDGts=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rqvFGZSEdTXhnctnOaWAV8FRb7GNdmvX/Z7xRHCjX7wj7smAVrO+Gb5/a/qr74jl0
	 9pi3cCFtinsOxeY3I6+UvUOxz386G62pZWEk9rmBhsNdb2ZuOgCukaBCKaT65y4kV5
	 jaNtJpJLNZVPTodEYTeJbQDeJ+xDAYXiihI3irONu6yS8KK1pMCcf2AkPhKSGcWFoM
	 EiuG2T445F/PoYsXtORIue/2PJOCtNR1uuLDP7SMBTtdHD9MOril0C296UpTyI6fE8
	 XziAswpLgfWHyRXIfvY8UZ1J/8O9p8rKpKs+y/aSuR5Rr8eDcbWa8SupkMDnuudytf
	 a8AEDU020HMZA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C9D160769;
	Tue, 30 Jul 2024 09:28:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 191FD1BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 09:28:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0635340339
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 09:28:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KFyMffG4q6Cm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 09:28:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 57F4F4032A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57F4F4032A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 57F4F4032A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 09:28:03 +0000 (UTC)
X-CSE-ConnectionGUID: keGrv5KrQNSz5UvefiQSrg==
X-CSE-MsgGUID: B+rtU3aRSLysBfOni+h3iQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="45551329"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="45551329"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 02:28:03 -0700
X-CSE-ConnectionGUID: tL9EQPasR7SB3x0Zf6vyjA==
X-CSE-MsgGUID: hMH4p/ZnQy6e8Rn43og9Pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="84923208"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa002.jf.intel.com with ESMTP; 30 Jul 2024 02:28:00 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 55B2528198;
 Tue, 30 Jul 2024 10:27:59 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	aleksander.lobakin@intel.com
Date: Tue, 30 Jul 2024 05:15:05 -0400
Message-Id: <20240730091509.18846-11-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240730091509.18846-1-mateusz.polchlopek@intel.com>
References: <20240730091509.18846-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722331683; x=1753867683;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RP3eAyTaKzrsNEOnIhwWOPrUNCtofQsGT6AxMT2mRlo=;
 b=Wt95CwVYjnoCMVIjSrc2qe5v7SQ2l8Mn0Uqisdam8rfi7Xr6QZFTfy+x
 /eTTp+McCQOgjP5bkhtqNZy3aWFujhudZ6yFS2AW7Gof3fpBM41Efmkmi
 UfjsB9LWk3qHirDGCOvhL61JRf6LuU/5ywOQmOWPH02WQqDiX3MFIRz0Q
 B1w3ysvU3A2rukh38NjvcAfIKtULsHfBoJZoFwCNDjn4LUGn7nd9Ggbfw
 EaM6lp+nGZc7lgwBSzfTyoqW0mgpwJvJRDpmthnTO6R8eaDGUgavgc53B
 zXF4/leRgzeQDjcJViDhcQ4gDuQ3wL1/UdiAEhpSZz95qsgE1L3IFRpvX
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Wt95CwVY
Subject: [Intel-wired-lan] [PATCH iwl-next v8 10/14] iavf: flatten union
 iavf_32byte_rx_desc
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
 drivers/net/ethernet/intel/iavf/iavf.h       |  2 +-
 drivers/net/ethernet/intel/iavf/iavf_trace.h |  6 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.c  | 49 ++++++-----
 drivers/net/ethernet/intel/iavf/iavf_txrx.h  |  7 +-
 drivers/net/ethernet/intel/iavf/iavf_type.h  | 88 +++-----------------
 5 files changed, 46 insertions(+), 106 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 8e86b0edb046..97972e64bf33 100644
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
index 26b424fd6718..ef69ec8c2c3c 100644
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
@@ -981,8 +980,9 @@ static void iavf_rx_hash(struct iavf_ring *ring,
 	if (!libeth_rx_pt_has_hash(ring->netdev, decoded))
 		return;
 
-	if ((rx_desc->wb.qword1.status_error_len & rss_mask) == rss_mask) {
-		hash = le32_to_cpu(rx_desc->wb.qword0.hi_dword.rss);
+	if ((rx_desc->qw1 & rss_mask) == rss_mask) {
+		hash = le64_get_bits(rx_desc->qw0,
+				     IAVF_RX_DESC_LEGACY_QW0_RSS_M);
 		libeth_rx_pt_set_hash(skb, hash, decoded);
 	}
 }
@@ -1000,7 +1000,7 @@ static void iavf_rx_hash(struct iavf_ring *ring,
  **/
 static void
 iavf_process_skb_fields(struct iavf_ring *rx_ring,
-			union iavf_rx_desc *rx_desc, struct sk_buff *skb,
+			struct iavf_rx_desc *rx_desc, struct sk_buff *skb,
 			u8 rx_ptype)
 {
 	iavf_rx_hash(rx_ring, rx_desc, skb, rx_ptype);
@@ -1101,7 +1101,7 @@ static struct sk_buff *iavf_build_skb(const struct libeth_fqe *rx_buffer,
  * that this is in fact a non-EOP buffer.
  **/
 static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
-			    union iavf_rx_desc *rx_desc,
+			    struct iavf_rx_desc *rx_desc,
 			    struct sk_buff *skb)
 {
 	u32 ntc = rx_ring->next_to_clean + 1;
@@ -1143,7 +1143,8 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 
 	while (likely(total_rx_packets < (unsigned int)budget)) {
 		struct libeth_fqe *rx_buffer;
-		union iavf_rx_desc *rx_desc;
+		struct iavf_rx_desc *rx_desc;
+		u16 ext_status = 0;
 		unsigned int size;
 		u16 vlan_tag = 0;
 		u8 rx_ptype;
@@ -1163,7 +1164,7 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		 * which is always zero because packet split isn't used, if the
 		 * hardware wrote DD then the length will be non-zero
 		 */
-		qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
+		qword = le64_to_cpu(rx_desc->qw1);
 
 		/* This memory barrier is needed to keep us from reading
 		 * any other fields out of the rx_desc until we have
@@ -1219,7 +1220,7 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		/* probably a little skewed due to removing CRC */
 		total_rx_bytes += skb->len;
 
-		qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
+		qword = le64_to_cpu(rx_desc->qw1);
 		rx_ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
 
 		/* populate checksum, VLAN, and protocol */
@@ -1227,11 +1228,17 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 
 		if (qword & BIT(IAVF_RX_DESC_STATUS_L2TAG1P_SHIFT) &&
 		    rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1)
-			vlan_tag = le16_to_cpu(rx_desc->wb.qword0.lo_dword.l2tag1);
-		if (rx_desc->wb.qword2.ext_status &
-		    cpu_to_le16(BIT(IAVF_RX_DESC_EXT_STATUS_L2TAG2P_SHIFT)) &&
+			vlan_tag = le64_get_bits(rx_desc->qw0,
+						 IAVF_RX_DESC_LEGACY_QW0_L2TAG1_M);
+
+		ext_status = le64_get_bits(rx_desc->qw2,
+					   IAVF_RX_DESC_LEGACY_QW2_EXT_STATUS_M);
+
+		if (ext_status &
+		    BIT(IAVF_RX_DESC_EXT_STATUS_L2TAG2P_SHIFT) &&
 		    rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2)
-			vlan_tag = le16_to_cpu(rx_desc->wb.qword2.l2tag2_2);
+			vlan_tag = le64_get_bits(rx_desc->qw2,
+						 IAVF_RX_DESC_LEGACY_QW2_L2TAG2_2_M);
 
 		iavf_trace(clean_rx_irq_rx, rx_ring, rx_desc, skb);
 		iavf_receive_skb(rx_ring, skb, vlan_tag);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index 17309d8625ac..289d061c3a58 100644
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
index f6b09e57abce..07e54db0bd4d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_type.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_type.h
@@ -178,82 +178,12 @@ struct iavf_hw {
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
+struct iavf_rx_desc {
+	aligned_le64 qw0;
+	aligned_le64 qw1;
+	aligned_le64 qw2;
+	aligned_le64 qw3;
+} __aligned(4 * sizeof(__le64));;
 
 enum iavf_rx_desc_status_bits {
 	/* Note: These are predefined bit offsets */
@@ -574,4 +504,10 @@ struct iavf_eth_stats {
 	u64 tx_discards;		/* tdpc */
 	u64 tx_errors;			/* tepc */
 };
+
+#define IAVF_RX_DESC_LEGACY_QW0_RSS_M		GENMASK_ULL(63, 32)
+#define IAVF_RX_DESC_LEGACY_QW0_L2TAG1_M	GENMASK_ULL(33, 16)
+#define IAVF_RX_DESC_LEGACY_QW2_L2TAG2_2_M	GENMASK_ULL(63, 48)
+#define IAVF_RX_DESC_LEGACY_QW2_EXT_STATUS_M	GENMASK_ULL(11, 0)
+
 #endif /* _IAVF_TYPE_H_ */
-- 
2.38.1

