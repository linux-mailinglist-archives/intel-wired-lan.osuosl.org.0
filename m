Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE3A9505FA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Aug 2024 15:08:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5659481EBA;
	Tue, 13 Aug 2024 13:08:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id skdoHFSi03ol; Tue, 13 Aug 2024 13:08:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80C3481E43
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723554520;
	bh=s1+1dmuATER1usUvnJXlAL1oIq2O2fzy2tdvOEC87W8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5znAV2t67y4jyctvLZh/XJ+hkgalZNuV3Fgel2dQmjndIo5AQ857jXRAC4puZjECI
	 cr1xDVEUdcP9+/KASU9rOcxBPS5cFbKcVMxFtIY6EfaQADVECFq2c8tcYz+WyXaHgF
	 iscDnyYCQSHW4WFVNBFnMeVyiLsfeLhRVi52t7HxEsN0Z9nZnioAi/jH73MXF9W45r
	 LNb7/05D1FocC5PAxaknCvUhLDMYivVjs5DHl5GWnwLdqqfGSywG2nOPXSD0qiU6Gh
	 DQnkrsTL1bdS4+bTGRg+ZYA4PvR8x4Fj84mx4ZMJd/3dyE5hpTCpvSX3qKt5nljd29
	 y4zcT91A0kKsg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 80C3481E43;
	Tue, 13 Aug 2024 13:08:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4A48B1BF275
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 13:08:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 35E30406E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 13:08:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rcUlZCyGKnmA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Aug 2024 13:08:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1D669406E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D669406E2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1D669406E2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 13:08:20 +0000 (UTC)
X-CSE-ConnectionGUID: uE3MzBeRQLS3Rj1Mv0rL6w==
X-CSE-MsgGUID: JXK49QeSSES8WnNXvho5rA==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="32290949"
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="32290949"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 06:08:19 -0700
X-CSE-ConnectionGUID: eKCkktUoTg+oKgHlPQjd/Q==
X-CSE-MsgGUID: Y8nr0rUbQ7KUmepgue53uA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="59417160"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa008.jf.intel.com with ESMTP; 13 Aug 2024 06:08:15 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id E5B4E32C86;
 Tue, 13 Aug 2024 14:08:12 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	aleksander.lobakin@intel.com
Date: Tue, 13 Aug 2024 08:55:10 -0400
Message-Id: <20240813125513.8212-12-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240813125513.8212-1-mateusz.polchlopek@intel.com>
References: <20240813125513.8212-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723554500; x=1755090500;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VZIvSoR+5wVPYdYaUjXyRabHaMZyI+56417tzQxC004=;
 b=ZG+Im2xTwXytPqSryB80KX50fVAFOv2CPgtVVNdb08GqeGtJUsXRJo0e
 FIga/jC7xy5WJvhHOMfA5H4BlwsfoyhBuFnc3x3d6j5lnouqDSlxOra3e
 oIOp3Oru4QSyxx9/kgptkHyP33pc76NujWn09iPKQsMbSRjovuHXiJrDy
 ISjfTnXPWXSUCLytLS7ntIKEn4nrOTuxitI8SAtoIm7UNoqaE5M46HJEg
 qC/yHoNqmqVCRROq4yYDjk0nBkseXE5IzTP3lOdvEh8ogWhM+pdtx302H
 w4xWTOd14nogWnwIB6/dWYuir98gh9ydmZLm7yMa8ph2ifEk6haYHGGAq
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZG+Im2xT
Subject: [Intel-wired-lan] [PATCH iwl-next v9 11/14] iavf: refactor
 iavf_clean_rx_irq to support legacy and flex descriptors
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

Using VIRTCHNL_VF_OFFLOAD_FLEX_DESC, the iAVF driver is capable of
negotiating to enable the advanced flexible descriptor layout. Add the
flexible NIC layout (RXDID=2) as a member of the Rx descriptor union.

Also add bit position definitions for the status and error indications
that are needed.

The iavf_clean_rx_irq function needs to extract a few fields from the Rx
descriptor, including the size, rx_ptype, and vlan_tag.
Move the extraction to a separate function that decodes the fields into
a structure. This will reduce the burden for handling multiple
descriptor types by keeping the relevant extraction logic in one place.

To support handling an additional descriptor format with minimal code
duplication, refactor Rx checksum handling so that the general logic
is separated from the bit calculations. Introduce an iavf_rx_desc_decoded
structure which holds the relevant bits decoded from the Rx descriptor.
This will enable implementing flexible descriptor handling without
duplicating the general logic twice.

Introduce an iavf_extract_flex_rx_fields, iavf_flex_rx_hash, and
iavf_flex_rx_csum functions which operate on the flexible NIC descriptor
format instead of the legacy 32 byte format. Based on the negotiated
RXDID, select the correct function for processing the Rx descriptors.

With this change, the Rx hot path should be functional when using either
the default legacy 32byte format or when we switch to the flexible NIC
layout.

Modify the Rx hot path to add support for the flexible descriptor
format and add request enabling Rx timestamps for all queues.

As in ice, make sure we bump the checksum level if the hardware detected
a packet type which could have an outer checksum. This is important
because hardware only verifies the inner checksum.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_txrx.c | 331 ++++++++++++++------
 drivers/net/ethernet/intel/iavf/iavf_type.h | 171 +++++++---
 2 files changed, 359 insertions(+), 143 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 1103395e415b..cbcd6c7e675e 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -896,59 +896,43 @@ bool iavf_alloc_rx_buffers(struct iavf_ring *rx_ring, u16 cleaned_count)
 }
 
 /**
- * iavf_rx_checksum - Indicate in skb if hw indicated a good cksum
+ * iavf_rx_csum - Indicate in skb if hw indicated a good checksum
  * @vsi: the VSI we care about
  * @skb: skb currently being received and modified
- * @rx_desc: the receive descriptor
+ * @decoded: decoded ptype information
+ * @csum_bits: decoded Rx descriptor information
  **/
-static void iavf_rx_checksum(struct iavf_vsi *vsi, struct sk_buff *skb,
-			     struct iavf_rx_desc *rx_desc)
+static void iavf_rx_csum(const struct iavf_vsi *vsi, struct sk_buff *skb,
+			 struct libeth_rx_pt decoded,
+			 struct libeth_rx_csum csum_bits)
 {
-	struct libeth_rx_pt decoded;
-	u32 rx_error, rx_status;
 	bool ipv4, ipv6;
-	u64 qword;
-	u8 ptype;
 
 	skb->ip_summed = CHECKSUM_NONE;
 
-	qword = le64_to_cpu(rx_desc->qw1);
-	ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
-
-	decoded = libie_rx_pt_parse(ptype);
-	if (!libeth_rx_pt_has_checksum(vsi->netdev, decoded))
-		return;
-
-	rx_error = FIELD_GET(IAVF_RXD_QW1_ERROR_MASK, qword);
-	rx_status = FIELD_GET(IAVF_RXD_QW1_STATUS_MASK, qword);
-
 	/* did the hardware decode the packet and checksum? */
-	if (!(rx_status & BIT(IAVF_RX_DESC_STATUS_L3L4P_SHIFT)))
+	if (unlikely(!csum_bits.l3l4p))
 		return;
 
 	ipv4 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV4;
 	ipv6 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV6;
 
-	if (ipv4 &&
-	    (rx_error & (BIT(IAVF_RX_DESC_ERROR_IPE_SHIFT) |
-			 BIT(IAVF_RX_DESC_ERROR_EIPE_SHIFT))))
+	if (unlikely(ipv4 && (csum_bits.ipe || csum_bits.eipe)))
 		goto checksum_fail;
 
 	/* likely incorrect csum if alternate IP extension headers found */
-	if (ipv6 &&
-	    rx_status & BIT(IAVF_RX_DESC_STATUS_IPV6EXADD_SHIFT))
-		/* don't increment checksum err here, non-fatal err */
+	if (unlikely(ipv6 && csum_bits.ipv6exadd))
 		return;
 
 	/* there was some L4 error, count error and punt packet to the stack */
-	if (rx_error & BIT(IAVF_RX_DESC_ERROR_L4E_SHIFT))
+	if (unlikely(csum_bits.l4e))
 		goto checksum_fail;
 
 	/* handle packets that were not able to be checksummed due
 	 * to arrival speed, in this case the stack can compute
 	 * the csum.
 	 */
-	if (rx_error & BIT(IAVF_RX_DESC_ERROR_PPRS_SHIFT))
+	if (unlikely(csum_bits.pprs))
 		return;
 
 	skb->ip_summed = CHECKSUM_UNNECESSARY;
@@ -959,24 +943,88 @@ static void iavf_rx_checksum(struct iavf_vsi *vsi, struct sk_buff *skb,
 }
 
 /**
- * iavf_rx_hash - set the hash value in the skb
+ * iavf_legacy_rx_csum - Indicate in skb if hw indicated a good checksum
+ * @vsi: the VSI we care about
+ * @rx_desc: the receive descriptor
+ * @decoded: decoded packet type
+ *
+ * This function only operates on the VIRTCHNL_RXDID_1_32B_BASE legacy 32byte
+ * descriptor writeback format.
+ *
+ * Return: decoded checksum bits.
+ **/
+static struct libeth_rx_csum
+iavf_legacy_rx_csum(const struct iavf_vsi *vsi,
+		    const struct iavf_rx_desc *rx_desc,
+		    const struct libeth_rx_pt decoded)
+{
+	struct libeth_rx_csum csum_bits;
+	u64 qw1 = le64_to_cpu(rx_desc->qw1);
+
+	if (!libeth_rx_pt_has_checksum(vsi->netdev, decoded))
+		return csum_bits;
+
+	csum_bits.ipe = FIELD_GET(IAVF_RXD_LEGACY_IPE_M, qw1);
+	csum_bits.eipe = FIELD_GET(IAVF_RXD_LEGACY_EIPE_M, qw1);
+	csum_bits.l4e = FIELD_GET(IAVF_RXD_LEGACY_L4E_M, qw1);
+	csum_bits.pprs = FIELD_GET(IAVF_RXD_LEGACY_PPRS_M, qw1);
+	csum_bits.l3l4p = FIELD_GET(IAVF_RXD_LEGACY_L3L4P_M, qw1);
+	csum_bits.ipv6exadd = FIELD_GET(IAVF_RXD_LEGACY_IPV6EXADD_M, qw1);
+
+	return csum_bits;
+}
+
+/**
+ * iavf_flex_rx_csum - Indicate in skb if hw indicated a good checksum
+ * @vsi: the VSI we care about
+ * @rx_desc: the receive descriptor
+ * @decoded: decoded packet type
+ *
+ * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
+ * descriptor writeback format.
+ *
+ * Return: decoded checksum bits.
+ **/
+static struct libeth_rx_csum
+iavf_flex_rx_csum(const struct iavf_vsi *vsi,
+		  const struct iavf_rx_desc *rx_desc,
+		  const struct libeth_rx_pt decoded)
+{
+	struct libeth_rx_csum csum_bits;
+	u64 qw1 = le64_to_cpu(rx_desc->qw1);
+
+	if (!libeth_rx_pt_has_checksum(vsi->netdev, decoded))
+		return csum_bits;
+
+	csum_bits.ipe = FIELD_GET(IAVF_RXD_FLEX_XSUM_IPE_M, qw1);
+	csum_bits.eipe = FIELD_GET(IAVF_RXD_FLEX_XSUM_EIPE_M, qw1);
+	csum_bits.l4e = FIELD_GET(IAVF_RXD_FLEX_XSUM_L4E_M, qw1);
+	csum_bits.eudpe = FIELD_GET(IAVF_RXD_FLEX_XSUM_EUDPE_M, qw1);
+	csum_bits.l3l4p = FIELD_GET(IAVF_RXD_FLEX_L3L4P_M, qw1);
+	csum_bits.ipv6exadd = FIELD_GET(IAVF_RXD_FLEX_IPV6EXADD_M, qw1);
+	csum_bits.nat = FIELD_GET(IAVF_RXD_FLEX_NAT_M, qw1);
+
+	return csum_bits;
+}
+
+/**
+ * iavf_legacy_rx_hash - set the hash value in the skb
  * @ring: descriptor ring
  * @rx_desc: specific descriptor
  * @skb: skb currently being received and modified
- * @rx_ptype: Rx packet type
+ * @decoded: decoded packet type
+ *
+ * This function only operates on the VIRTCHNL_RXDID_1_32B_BASE legacy 32byte
+ * descriptor writeback format.
  **/
-static void iavf_rx_hash(struct iavf_ring *ring,
-			 struct iavf_rx_desc *rx_desc,
-			 struct sk_buff *skb,
-			 u8 rx_ptype)
+static void iavf_legacy_rx_hash(const struct iavf_ring *ring,
+				const struct iavf_rx_desc *rx_desc,
+				struct sk_buff *skb,
+				const struct libeth_rx_pt decoded)
 {
-	struct libeth_rx_pt decoded;
+	const __le64 rss_mask = cpu_to_le64(IAVF_RXD_LEGACY_FLTSTAT_M);
 	u32 hash;
-	const __le64 rss_mask =
-		cpu_to_le64((u64)IAVF_RX_DESC_FLTSTAT_RSS_HASH <<
-			    IAVF_RX_DESC_STATUS_FLTSTAT_SHIFT);
 
-	decoded = libie_rx_pt_parse(rx_ptype);
 	if (!libeth_rx_pt_has_hash(ring->netdev, decoded))
 		return;
 
@@ -986,6 +1034,35 @@ static void iavf_rx_hash(struct iavf_ring *ring,
 	}
 }
 
+/**
+ * iavf_flex_rx_hash - set the hash value in the skb
+ * @ring: descriptor ring
+ * @rx_desc: specific descriptor
+ * @skb: skb currently being received and modified
+ * @decoded: decoded packet type
+ *
+ * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
+ * descriptor writeback format.
+ **/
+static void iavf_flex_rx_hash(const struct iavf_ring *ring,
+			      const struct iavf_rx_desc *rx_desc,
+			      struct sk_buff *skb,
+			      const struct libeth_rx_pt decoded)
+{
+	__le64 qw1 = rx_desc->qw1;
+	bool rss_valid;
+	u32 hash;
+
+	if (!libeth_rx_pt_has_hash(ring->netdev, decoded))
+		return;
+
+	rss_valid = le64_get_bits(qw1, IAVF_RXD_FLEX_RSS_VALID_M);
+	if (rss_valid) {
+		hash = le64_get_bits(qw1, IAVF_RXD_FLEX_RSS_HASH_M);
+		libeth_rx_pt_set_hash(skb, hash, decoded);
+	}
+}
+
 /**
  * iavf_process_skb_fields - Populate skb header fields from Rx descriptor
  * @rx_ring: rx descriptor ring packet is being transacted on
@@ -997,14 +1074,23 @@ static void iavf_rx_hash(struct iavf_ring *ring,
  * order to populate the hash, checksum, VLAN, protocol, and
  * other fields within the skb.
  **/
-static void
-iavf_process_skb_fields(struct iavf_ring *rx_ring,
-			struct iavf_rx_desc *rx_desc, struct sk_buff *skb,
-			u8 rx_ptype)
+static void iavf_process_skb_fields(const struct iavf_ring *rx_ring,
+				    const struct iavf_rx_desc *rx_desc,
+				    struct sk_buff *skb, u32 rx_ptype)
 {
-	iavf_rx_hash(rx_ring, rx_desc, skb, rx_ptype);
+	struct libeth_rx_csum csum_bits;
+	struct libeth_rx_pt decoded;
 
-	iavf_rx_checksum(rx_ring->vsi, skb, rx_desc);
+	decoded = libie_rx_pt_parse(rx_ptype);
+
+	if (rx_ring->rxdid == VIRTCHNL_RXDID_1_32B_BASE) {
+		iavf_legacy_rx_hash(rx_ring, rx_desc, skb, decoded);
+		csum_bits = iavf_legacy_rx_csum(rx_ring->vsi, rx_desc, decoded);
+	} else {
+		iavf_flex_rx_hash(rx_ring, rx_desc, skb, decoded);
+		csum_bits = iavf_flex_rx_csum(rx_ring->vsi, rx_desc, decoded);
+	}
+	iavf_rx_csum(rx_ring->vsi, skb, decoded, csum_bits);
 
 	skb_record_rx_queue(skb, rx_ring->queue_index);
 
@@ -1091,8 +1177,7 @@ static struct sk_buff *iavf_build_skb(const struct libeth_fqe *rx_buffer,
 /**
  * iavf_is_non_eop - process handling of non-EOP buffers
  * @rx_ring: Rx ring being processed
- * @rx_desc: Rx descriptor for current buffer
- * @skb: Current socket buffer containing buffer in progress
+ * @fields: Rx descriptor extracted fields
  *
  * This function updates next to clean.  If the buffer is an EOP buffer
  * this function exits returning false, otherwise it will place the
@@ -1100,8 +1185,7 @@ static struct sk_buff *iavf_build_skb(const struct libeth_fqe *rx_buffer,
  * that this is in fact a non-EOP buffer.
  **/
 static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
-			    struct iavf_rx_desc *rx_desc,
-			    struct sk_buff *skb)
+			    struct libeth_rqe_info fields)
 {
 	u32 ntc = rx_ring->next_to_clean + 1;
 
@@ -1112,8 +1196,7 @@ static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
 	prefetch(IAVF_RX_DESC(rx_ring, ntc));
 
 	/* if we are the last buffer then there is nothing else to do */
-#define IAVF_RXD_EOF BIT(IAVF_RX_DESC_STATUS_EOF_SHIFT)
-	if (likely(iavf_test_staterr(rx_desc, IAVF_RXD_EOF)))
+	if (likely(fields.eop))
 		return false;
 
 	rx_ring->rx_stats.non_eop_descs++;
@@ -1121,6 +1204,97 @@ static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
 	return true;
 }
 
+/**
+ * iavf_extract_legacy_rx_fields - Extract fields from the Rx descriptor
+ * @rx_ring: rx descriptor ring
+ * @rx_desc: the descriptor to process
+ * @ptype: pointer that will store packet type
+ *
+ * Decode the Rx descriptor and extract relevant information including the
+ * size, VLAN tag, Rx packet type, end of packet field and RXE field value.
+ *
+ * This function only operates on the VIRTCHNL_RXDID_1_32B_BASE legacy 32byte
+ * descriptor writeback format.
+ *
+ * Return: fields extracted from the Rx descriptor.
+ */
+static struct libeth_rqe_info
+iavf_extract_legacy_rx_fields(const struct iavf_ring *rx_ring,
+			      const struct iavf_rx_desc *rx_desc, u32 *ptype)
+{
+	struct libeth_rqe_info fields = {};
+	u64 qw0 = le64_to_cpu(rx_desc->qw0);
+	u64 qw1 = le64_to_cpu(rx_desc->qw1);
+	u64 qw2 = le64_to_cpu(rx_desc->qw2);
+	bool l2tag1p;
+	bool l2tag2p;
+
+	fields.eop = FIELD_GET(IAVF_RXD_LEGACY_EOP_M, qw1);
+	fields.len = FIELD_GET(IAVF_RXD_LEGACY_LENGTH_M, qw1);
+	fields.rxe = FIELD_GET(IAVF_RXD_LEGACY_RXE_M, qw1);
+	*ptype = FIELD_GET(IAVF_RXD_LEGACY_PTYPE_M, qw1);
+
+	l2tag1p = FIELD_GET(IAVF_RXD_LEGACY_L2TAG1P_M, qw1);
+	if (l2tag1p && (rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1))
+		fields.vlan_tag = FIELD_GET(IAVF_RXD_LEGACY_L2TAG1_M, qw0);
+
+	l2tag2p = FIELD_GET(IAVF_RXD_LEGACY_L2TAG2P_M, qw2);
+	if (l2tag2p && (rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2))
+		fields.vlan_tag = FIELD_GET(IAVF_RXD_LEGACY_L2TAG2_M, qw2);
+
+	return fields;
+}
+
+/**
+ * iavf_extract_flex_rx_fields - Extract fields from the Rx descriptor
+ * @rx_ring: rx descriptor ring
+ * @rx_desc: the descriptor to process
+ * @ptype: pointer that will store packet type
+ *
+ * Decode the Rx descriptor and extract relevant information including the
+ * size, VLAN tag, Rx packet type, end of packet field and RXE field value.
+ *
+ * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
+ * descriptor writeback format.
+ *
+ * Return: fields extracted from the Rx descriptor.
+ */
+static struct libeth_rqe_info
+iavf_extract_flex_rx_fields(const struct iavf_ring *rx_ring,
+			    const struct iavf_rx_desc *rx_desc, u32 *ptype)
+{
+	struct libeth_rqe_info fields = {};
+	u64 qw0 = le64_to_cpu(rx_desc->qw0);
+	u64 qw1 = le64_to_cpu(rx_desc->qw1);
+	u64 qw2 = le64_to_cpu(rx_desc->qw2);
+	bool l2tag1p, l2tag2p;
+
+	fields.len = FIELD_GET(IAVF_RXD_FLEX_PKT_LEN_M, qw0);
+	fields.rxe = FIELD_GET(IAVF_RXD_FLEX_RXE_M, qw1);
+	fields.eop = FIELD_GET(IAVF_RXD_FLEX_EOP_M, qw1);
+	*ptype = FIELD_GET(IAVF_RXD_FLEX_PTYPE_M, qw0);
+
+	l2tag1p = FIELD_GET(IAVF_RXD_FLEX_L2TAG1P_M, qw1);
+	if (l2tag1p && (rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1))
+		fields.vlan_tag = FIELD_GET(IAVF_RXD_FLEX_L2TAG1_M, qw1);
+
+	l2tag2p = FIELD_GET(IAVF_RXD_FLEX_L2TAG2P_M, qw2);
+	if (l2tag2p && (rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2))
+		fields.vlan_tag = FIELD_GET(IAVF_RXD_FLEX_L2TAG2_2_M, qw2);
+
+	return fields;
+}
+
+static struct libeth_rqe_info
+iavf_extract_rx_fields(const struct iavf_ring *rx_ring,
+		       const struct iavf_rx_desc *rx_desc, u32 *ptype)
+{
+	if (rx_ring->rxdid == VIRTCHNL_RXDID_1_32B_BASE)
+		return iavf_extract_legacy_rx_fields(rx_ring, rx_desc, ptype);
+	else
+		return iavf_extract_flex_rx_fields(rx_ring, rx_desc, ptype);
+}
+
 /**
  * iavf_clean_rx_irq - Clean completed descriptors from Rx ring - bounce buf
  * @rx_ring: rx descriptor ring to transact packets on
@@ -1141,13 +1315,10 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 	bool failure = false;
 
 	while (likely(total_rx_packets < (unsigned int)budget)) {
+		struct libeth_rqe_info fields = {};
 		struct libeth_fqe *rx_buffer;
 		struct iavf_rx_desc *rx_desc;
-		u16 ext_status = 0;
-		unsigned int size;
-		u16 vlan_tag = 0;
-		u8 rx_ptype;
-		u64 qword;
+		u32 ptype;
 
 		/* return some buffers to hardware, one at a time is too slow */
 		if (cleaned_count >= IAVF_RX_BUFFER_WRITE) {
@@ -1158,35 +1329,28 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 
 		rx_desc = IAVF_RX_DESC(rx_ring, rx_ring->next_to_clean);
 
-		/* status_error_len will always be zero for unused descriptors
-		 * because it's cleared in cleanup, and overlaps with hdr_addr
-		 * which is always zero because packet split isn't used, if the
-		 * hardware wrote DD then the length will be non-zero
-		 */
-		qword = le64_to_cpu(rx_desc->qw1);
-
 		/* This memory barrier is needed to keep us from reading
 		 * any other fields out of the rx_desc until we have
 		 * verified the descriptor has been written back.
 		 */
 		dma_rmb();
-#define IAVF_RXD_DD BIT(IAVF_RX_DESC_STATUS_DD_SHIFT)
-		if (!iavf_test_staterr(rx_desc, IAVF_RXD_DD))
+
+		if (!iavf_test_staterr(rx_desc, IAVF_RXD_FLEX_DD_M))
 			break;
 
-		size = FIELD_GET(IAVF_RXD_QW1_LENGTH_PBUF_MASK, qword);
+		fields = iavf_extract_rx_fields(rx_ring, rx_desc, &ptype);
 
 		iavf_trace(clean_rx_irq, rx_ring, rx_desc, skb);
 
 		rx_buffer = &rx_ring->rx_fqes[rx_ring->next_to_clean];
-		if (!libeth_rx_sync_for_cpu(rx_buffer, size))
+		if (!libeth_rx_sync_for_cpu(rx_buffer, fields.len))
 			goto skip_data;
 
 		/* retrieve a buffer from the ring */
 		if (skb)
-			iavf_add_rx_frag(skb, rx_buffer, size);
+			iavf_add_rx_frag(skb, rx_buffer, fields.len);
 		else
-			skb = iavf_build_skb(rx_buffer, size);
+			skb = iavf_build_skb(rx_buffer, fields.len);
 
 		/* exit if we failed to retrieve a buffer */
 		if (!skb) {
@@ -1197,15 +1361,14 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 skip_data:
 		cleaned_count++;
 
-		if (iavf_is_non_eop(rx_ring, rx_desc, skb) || unlikely(!skb))
+		if (iavf_is_non_eop(rx_ring, fields) || unlikely(!skb))
 			continue;
 
-		/* ERR_MASK will only have valid bits if EOP set, and
-		 * what we are doing here is actually checking
-		 * IAVF_RX_DESC_ERROR_RXE_SHIFT, since it is the zeroth bit in
-		 * the error field
+		/* RXE field in descriptor is an indication of the MAC errors
+		 * (like CRC, alignment, oversize etc). If it is set then iavf
+		 * should finish.
 		 */
-		if (unlikely(iavf_test_staterr(rx_desc, BIT(IAVF_RXD_QW1_ERROR_SHIFT)))) {
+		if (unlikely(fields.rxe)) {
 			dev_kfree_skb_any(skb);
 			skb = NULL;
 			continue;
@@ -1219,27 +1382,11 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		/* probably a little skewed due to removing CRC */
 		total_rx_bytes += skb->len;
 
-		qword = le64_to_cpu(rx_desc->qw1);
-		rx_ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
-
 		/* populate checksum, VLAN, and protocol */
-		iavf_process_skb_fields(rx_ring, rx_desc, skb, rx_ptype);
-
-		if (qword & BIT(IAVF_RX_DESC_STATUS_L2TAG1P_SHIFT) &&
-		    rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1)
-			vlan_tag = le64_get_bits(rx_desc->qw0,
-						 IAVF_RXD_LEGACY_L2TAG1_M);
-
-		ext_status = le64_get_bits(rx_desc->qw2,
-					   IAVF_RXD_LEGACY_EXT_STATUS_M);
-
-		if ((ext_status & IAVF_RX_DESC_EXT_STATUS_L2TAG2P_M) &&
-		    (rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2))
-			vlan_tag = le64_get_bits(rx_desc->qw2,
-						 IAVF_RXD_LEGACY_L2TAG2_2_M);
+		iavf_process_skb_fields(rx_ring, rx_desc, skb, ptype);
 
 		iavf_trace(clean_rx_irq_rx, rx_ring, rx_desc, skb);
-		iavf_receive_skb(rx_ring, skb, vlan_tag);
+		iavf_receive_skb(rx_ring, skb, fields.vlan_tag);
 		skb = NULL;
 
 		/* update budget accounting */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_type.h b/drivers/net/ethernet/intel/iavf/iavf_type.h
index c1a4506fbaba..db48ab08faf2 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_type.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_type.h
@@ -191,45 +191,137 @@ struct iavf_rx_desc {
 #define IAVF_RXD_LEGACY_RSS_M			GENMASK_ULL(63, 32)
 /* Stripped L2 Tag from the receive packet. */
 #define IAVF_RXD_LEGACY_L2TAG1_M		GENMASK_ULL(33, 16)
+/* Packet type. */
+#define IAVF_RXD_FLEX_PTYPE_M			GENMASK_ULL(25, 16)
+/* Packet length. */
+#define IAVF_RXD_FLEX_PKT_LEN_M			GENMASK_ULL(45, 32)
 
 	aligned_le64 qw1;
+/* Status field stores information about end of packet, descriptor done etc. */
+#define IAVF_RXD_LEGACY_STATUS_M		GENMASK(18, 0)
+/* Descriptor done indication flag. */
+#define IAVF_RXD_LEGACY_DD_M			BIT(0)
+/* End of packet. Set to 1 if this descriptor is the last one of the packet. */
+#define IAVF_RXD_LEGACY_EOP_M			BIT(1)
+/* L2 TAG 1 presence indication. */
+#define IAVF_RXD_LEGACY_L2TAG1P_M		BIT(2)
+/* Detectable L3 and L4 integrity check is processed by the HW. */
+#define IAVF_RXD_LEGACY_L3L4P_M			BIT(3)
+/* The Ethernet CRC is posted with data to the host buffer. */
+#define IAVF_RXD_LEGACY_CRCP_M			BIT(4)
+/* Note: Bit 8 is reserved in X710 and XL710. */
+#define IAVF_RXD_LEGACY_EXT_UDP_0_M		BIT(8)
+/* Flow director filter match indication. */
+#define IAVF_RXD_LEGACY_FLM_M			BIT(11)
+/* Loop back indication means that the packet is originated from this system. */
+#define IAVF_RXD_LEGACY_LPBK_M			BIT(14)
+/* Set when an IPv6 packet contains a Destination Options Header or a Routing
+ * Header */
+#define IAVF_RXD_LEGACY_IPV6EXADD_M		BIT(15)
+/* Note: For non-tunnel packets INT_UDP_0 is the right status for
+ * UDP header.
+ */
+#define IAVF_RXD_LEGACY_INT_UDP_0_M		BIT(18)
+/* Receive MAC Errors: CRC; Alignment; Oversize; Undersizes; Length error. */
+#define IAVF_RXD_LEGACY_RXE_M			BIT(19)
+/* Set by the Rx data processing unit if it could not complete properly
+ * the packet processing. */
+#define IAVF_RXD_LEGACY_RECIPE_M		BIT(20)
+/* Header Buffer overflow. */
+#define IAVF_RXD_LEGACY_HBO_M			BIT(21)
+/* Checksum reports:
+ * - IPE: IP checksum error
+ * - L4E: L4 integrity error
+ * - EIPE: External IP header (tunneled packets)
+ */
+#define IAVF_RXD_LEGACY_IPE_M			BIT(22)
+#define IAVF_RXD_LEGACY_L4E_M			BIT(23)
+#define IAVF_RXD_LEGACY_EIPE_M			BIT(24)
+/* Oversize packet error. */
+#define IAVF_RXD_LEGACY_OVERSIZE_M		BIT(25)
+/* Set for packets that skip checksum calculation in pre-parser. */
+#define IAVF_RXD_LEGACY_PPRS_M			BIT(26)
+/* Destination Address type (unicast/multicast/broadcast/mirrored packet). */
+#define IAVF_RXD_LEGACY_UMBCAST_M		GENMASK_ULL(10, 9)
+/* Indicates the conetnt in the Filter Status field . */
+#define IAVF_RXD_LEGACY_FLTSTAT_M		GENMASK_ULL(13, 12)
+/* Reserved. */
+#define IAVF_RXD_LEGACY_RESERVED_M		GENMASK_ULL(17, 16)
+/* Encoded errors of IP packets */
+#define IAVF_RXD_LEGACY_L3L4E_M			GENMASK_ULL(24, 22)
+/* Packet type. */
+#define IAVF_RXD_LEGACY_PTYPE_M			GENMASK_ULL(37, 30)
+/* Packet length. */
+#define IAVF_RXD_LEGACY_LENGTH_M		GENMASK_ULL(51, 38)
+/* Descriptor done indication flag. */
+#define IAVF_RXD_FLEX_DD_M			BIT(0)
+/* End of packet. Set to 1 if this descriptor is the last one of the packet. */
+#define IAVF_RXD_FLEX_EOP_M			BIT(1)
+/* Header Buffer overflow. */
+#define IAVF_RXD_FLEX_HBO_M			BIT(2)
+/* Detectable L3 and L4 integrity check is processed by the HW. */
+#define IAVF_RXD_FLEX_L3L4P_M			BIT(3)
+/* Checksum reports:
+ * - IPE: IP checksum error
+ * - L4E: L4 integrity error
+ * - EIPE: External IP header (tunneled packets)
+ * - EUDPE: External UDP checksum error (tunneled packets)
+ */
+#define IAVF_RXD_FLEX_XSUM_IPE_M		BIT(4)
+#define IAVF_RXD_FLEX_XSUM_L4E_M		BIT(5)
+#define IAVF_RXD_FLEX_XSUM_EIPE_M		BIT(6)
+#define IAVF_RXD_FLEX_XSUM_EUDPE_M		BIT(7)
+/* Loop back indication means that the packet is originated from this system. */
+#define IAVF_RXD_FLEX_LPBK_M			BIT(8)
+/* Set when an IPv6 packet contains a Destination Options Header or a Routing
+ * Header */
+#define IAVF_RXD_FLEX_IPV6EXADD_M		BIT(9)
+/* Receive MAC Errors: CRC; Alignment; Oversize; Undersizes; Length error. */
+#define IAVF_RXD_FLEX_RXE_M			BIT(10)
+/* The Ethernet CRC is posted with data to the host buffer. */
+#define IAVF_RXD_FLEX_CRCP_M			BIT(11)
+/* Indicates that the RSS/HASH result is valid. */
+#define IAVF_RXD_FLEX_RSS_VALID_M		BIT(12)
+/* L2 TAG 1 presence indication. */
+#define IAVF_RXD_FLEX_L2TAG1P_M			BIT(13)
+/* Indicates that extracted data from the packet is valid in specific Metadata
+ * Container
+ */
+#define IAVF_RXD_FLEX_XTRMD0_VALID_M		BIT(14)
+#define IAVF_RXD_FLEX_XTRMD1_VALID_M		BIT(15)
+/* Stripped L2 Tag from the receive packet. */
+#define IAVF_RXD_FLEX_L2TAG1_M			GENMASK_ULL(31, 16)
+/* The hash signature (RSS). */
+#define IAVF_RXD_FLEX_RSS_HASH_M		GENMASK_ULL(63, 32)
+
 	aligned_le64 qw2;
 /* Extracted second word of the L2 Tag 2. */
 #define IAVF_RXD_LEGACY_L2TAG2_2_M		GENMASK_ULL(63, 48)
 /* Extended status bits. */
 #define IAVF_RXD_LEGACY_EXT_STATUS_M		GENMASK_ULL(11, 0)
+/* L2 Tag 2 Presence. */
+#define IAVF_RXD_LEGACY_L2TAG2P_M		BIT(0)
+/* Stripped L2 Tag from the receive packet. */
+#define IAVF_RXD_LEGACY_L2TAG2_M		GENMASK_ULL(63, 32)
+/* Stripped L2 Tag from the receive packet. */
+#define IAVF_RXD_LEGACY_L2TAG2_1_M		GENMASK_ULL(47, 32)
+/* Stripped L2 Tag from the receive packet. */
+#define IAVF_RXD_FLEX_L2TAG2_2_M		GENMASK_ULL(63, 48)
+/* The packet is a UDP tunneled packet. */
+#define IAVF_RXD_FLEX_NAT_M			BIT(4)
+/* L2 Tag 2 Presence. */
+#define IAVF_RXD_FLEX_L2TAG2P_M			BIT(11)
+/* Indicates that extracted data from the packet is valid in specific Metadata
+ * Container
+ */
+#define IAVF_RXD_FLEX_XTRMD2_VALID_M		BIT(12)
+#define IAVF_RXD_FLEX_XTRMD3_VALID_M		BIT(13)
+#define IAVF_RXD_FLEX_XTRMD4_VALID_M		BIT(14)
+#define IAVF_RXD_FLEX_XTRMD5_VALID_M		BIT(15)
 
 	aligned_le64 qw3;
 } __aligned(4 * sizeof(__le64));
 
-enum iavf_rx_desc_status_bits {
-	/* Note: These are predefined bit offsets */
-	IAVF_RX_DESC_STATUS_DD_SHIFT		= 0,
-	IAVF_RX_DESC_STATUS_EOF_SHIFT		= 1,
-	IAVF_RX_DESC_STATUS_L2TAG1P_SHIFT	= 2,
-	IAVF_RX_DESC_STATUS_L3L4P_SHIFT		= 3,
-	IAVF_RX_DESC_STATUS_CRCP_SHIFT		= 4,
-	IAVF_RX_DESC_STATUS_TSYNINDX_SHIFT	= 5, /* 2 BITS */
-	IAVF_RX_DESC_STATUS_TSYNVALID_SHIFT	= 7,
-	/* Note: Bit 8 is reserved in X710 and XL710 */
-	IAVF_RX_DESC_STATUS_EXT_UDP_0_SHIFT	= 8,
-	IAVF_RX_DESC_STATUS_UMBCAST_SHIFT	= 9, /* 2 BITS */
-	IAVF_RX_DESC_STATUS_FLM_SHIFT		= 11,
-	IAVF_RX_DESC_STATUS_FLTSTAT_SHIFT	= 12, /* 2 BITS */
-	IAVF_RX_DESC_STATUS_LPBK_SHIFT		= 14,
-	IAVF_RX_DESC_STATUS_IPV6EXADD_SHIFT	= 15,
-	IAVF_RX_DESC_STATUS_RESERVED_SHIFT	= 16, /* 2 BITS */
-	/* Note: For non-tunnel packets INT_UDP_0 is the right status for
-	 * UDP header
-	 */
-	IAVF_RX_DESC_STATUS_INT_UDP_0_SHIFT	= 18,
-	IAVF_RX_DESC_STATUS_LAST /* this entry must be last!!! */
-};
-
-#define IAVF_RXD_QW1_STATUS_SHIFT	0
-#define IAVF_RXD_QW1_STATUS_MASK	((BIT(IAVF_RX_DESC_STATUS_LAST) - 1) \
-					 << IAVF_RXD_QW1_STATUS_SHIFT)
-
 #define IAVF_RXD_QW1_STATUS_TSYNINDX_SHIFT IAVF_RX_DESC_STATUS_TSYNINDX_SHIFT
 #define IAVF_RXD_QW1_STATUS_TSYNINDX_MASK  (0x3UL << \
 					    IAVF_RXD_QW1_STATUS_TSYNINDX_SHIFT)
@@ -245,22 +337,6 @@ enum iavf_rx_desc_fltstat_values {
 	IAVF_RX_DESC_FLTSTAT_RSS_HASH	= 3,
 };
 
-#define IAVF_RXD_QW1_ERROR_SHIFT	19
-#define IAVF_RXD_QW1_ERROR_MASK		(0xFFUL << IAVF_RXD_QW1_ERROR_SHIFT)
-
-enum iavf_rx_desc_error_bits {
-	/* Note: These are predefined bit offsets */
-	IAVF_RX_DESC_ERROR_RXE_SHIFT		= 0,
-	IAVF_RX_DESC_ERROR_RECIPE_SHIFT		= 1,
-	IAVF_RX_DESC_ERROR_HBO_SHIFT		= 2,
-	IAVF_RX_DESC_ERROR_L3L4E_SHIFT		= 3, /* 3 BITS */
-	IAVF_RX_DESC_ERROR_IPE_SHIFT		= 3,
-	IAVF_RX_DESC_ERROR_L4E_SHIFT		= 4,
-	IAVF_RX_DESC_ERROR_EIPE_SHIFT		= 5,
-	IAVF_RX_DESC_ERROR_OVERSIZE_SHIFT	= 6,
-	IAVF_RX_DESC_ERROR_PPRS_SHIFT		= 7
-};
-
 enum iavf_rx_desc_error_l3l4e_fcoe_masks {
 	IAVF_RX_DESC_ERROR_L3L4E_NONE		= 0,
 	IAVF_RX_DESC_ERROR_L3L4E_PROT		= 1,
@@ -269,13 +345,6 @@ enum iavf_rx_desc_error_l3l4e_fcoe_masks {
 	IAVF_RX_DESC_ERROR_L3L4E_DMAC_WARN	= 4
 };
 
-#define IAVF_RXD_QW1_PTYPE_SHIFT	30
-#define IAVF_RXD_QW1_PTYPE_MASK		(0xFFULL << IAVF_RXD_QW1_PTYPE_SHIFT)
-
-#define IAVF_RXD_QW1_LENGTH_PBUF_SHIFT	38
-#define IAVF_RXD_QW1_LENGTH_PBUF_MASK	(0x3FFFULL << \
-					 IAVF_RXD_QW1_LENGTH_PBUF_SHIFT)
-
 #define IAVF_RXD_QW1_LENGTH_HBUF_SHIFT	52
 #define IAVF_RXD_QW1_LENGTH_HBUF_MASK	(0x7FFULL << \
 					 IAVF_RXD_QW1_LENGTH_HBUF_SHIFT)
-- 
2.38.1

