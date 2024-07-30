Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 579D4940D82
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 11:28:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8768E60E78;
	Tue, 30 Jul 2024 09:28:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OsLnM-EKog_s; Tue, 30 Jul 2024 09:28:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA2D060769
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722331694;
	bh=sSH9qcU6P4lW6CDJP57EYJwlEQEb755EBfLxbBOZFwc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Qau7z/Chadua/Ya8GPwAaw7rZPitsUaV2K+lTik9Mf60rjmhZT+CJGj0UFL/Da4J8
	 AKuAho39kCjor+2G7rCre1SftEuJAkmvsIryRZGG7R1nC0BUebTYO9gio8tg3V9abE
	 qUStRUHZ652AQkMKNCUZJp+nSUxtPATKjmJl41ZCJrwhOkhVoucJ/7BZgDQW9WwbKy
	 2EvoPW5aedIjXYLnFc8EALYul9ZQuKk37nOHJy3zUnwtnXDuGgbh4gUKJWqIDlC95q
	 NLbRGMusfztl5rDkvcR6pC9hiPb1R0nnCuODFW/867Uyhz/e07DgccEdKfm/6GFLA0
	 O9HcAu9yG5h4w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA2D060769;
	Tue, 30 Jul 2024 09:28:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 45D2D1BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 09:28:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 33A6240332
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 09:28:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gVYgNagRYzUk for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 09:28:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 14A7A40607
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14A7A40607
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 14A7A40607
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 09:28:04 +0000 (UTC)
X-CSE-ConnectionGUID: Vnrkj5KPTeqIsAf+0ZAaHQ==
X-CSE-MsgGUID: it5MruSJT5G8UFoL4Ibdhw==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="45551334"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="45551334"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 02:28:05 -0700
X-CSE-ConnectionGUID: dWBNKYa/RtGRS2pftW88HA==
X-CSE-MsgGUID: 6StT84sDS1ef8iYDoVk2AA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="84923216"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa002.jf.intel.com with ESMTP; 30 Jul 2024 02:28:01 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 90A53284FE;
 Tue, 30 Jul 2024 10:28:00 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	aleksander.lobakin@intel.com
Date: Tue, 30 Jul 2024 05:15:06 -0400
Message-Id: <20240730091509.18846-12-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240730091509.18846-1-mateusz.polchlopek@intel.com>
References: <20240730091509.18846-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722331685; x=1753867685;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XoPiy5WGKbbcBsyWDb5DmczJaDlyK0WOghpYW0ot5jM=;
 b=LNb3n5KAkLNS+2/q5hIzJqnUEOOr/HJXFCZxmH6u6f9dIb06dOxbFBiH
 0X88Elyol025RcQ677JOnKp5hUU8pUSHr22EE4OjczIrBggEHBFtT9gnB
 oeiEx8LM+9ceJZ1HvOtraY1csbnWmE6bhIxvW0bvWWCo8vlo727IHAq86
 J7yq91JOmyfIij3PLYtwMoxFNosTrDTsdw8j6PTvGwVmf+RVR0ZYjEaCq
 aei4noLhoMRUKn9LDs+vuzLbiZaCUUMtuzFhAx8jKsLMNRmeYDWjSgY1R
 tK6IH+i+XiF/cDCQrQC0W5uYGxBHGh+9sRtMezFuAEeLpY5GG4JcshHEJ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LNb3n5KA
Subject: [Intel-wired-lan] [PATCH iwl-next v8 11/14] iavf: refactor
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
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 340 +++++++++++++-----
 drivers/net/ethernet/intel/iavf/iavf_type.h   | 143 +++++---
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   5 +
 3 files changed, 333 insertions(+), 155 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index ef69ec8c2c3c..5b81b3fe2e18 100644
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
+ * @ptype: decoded ptype information
+ * @csum_bits: decoded Rx descriptor information
  **/
-static void iavf_rx_checksum(struct iavf_vsi *vsi, struct sk_buff *skb,
-			     struct iavf_rx_desc *rx_desc)
+static void iavf_rx_csum(const struct iavf_vsi *vsi, struct sk_buff *skb,
+			 struct libeth_rx_pt ptype,
+			 struct libeth_rx_csum_decoded csum_bits)
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
 
-	ipv4 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV4;
-	ipv6 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV6;
+	ipv4 = libeth_rx_pt_get_ip_ver(ptype) == LIBETH_RX_PT_OUTER_IPV4;
+	ipv6 = libeth_rx_pt_get_ip_ver(ptype) == LIBETH_RX_PT_OUTER_IPV6;
 
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
@@ -959,30 +943,122 @@ static void iavf_rx_checksum(struct iavf_vsi *vsi, struct sk_buff *skb,
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
+ * Return: decoded checksum bits
+ **/
+static struct libeth_rx_csum_decoded
+iavf_legacy_rx_csum(const struct iavf_vsi *vsi,
+		    const struct iavf_rx_desc *rx_desc,
+		    const struct libeth_rx_pt decoded)
+{
+	struct libeth_rx_csum_decoded csum_bits = {};
+	u64 qw1 = le64_to_cpu(rx_desc->qw1);
+
+	if (!libeth_rx_pt_has_checksum(vsi->netdev, decoded))
+		return csum_bits;
+
+	csum_bits.ipe = FIELD_GET(IAVF_RXD_LEGACY_QW1_IPE_M, qw1);
+	csum_bits.eipe = FIELD_GET(IAVF_RXD_LEGACY_QW1_EIPE_M, qw1);
+	csum_bits.l4e = FIELD_GET(IAVF_RXD_LEGACY_QW1_L4E_M, qw1);
+	csum_bits.pprs = FIELD_GET(IAVF_RXD_LEGACY_QW1_PPRS_M, qw1);
+	csum_bits.l3l4p = FIELD_GET(IAVF_RXD_LEGACY_QW1_L3L4P_M, qw1);
+	csum_bits.ipv6exadd = FIELD_GET(IAVF_RXD_LEGACY_QW1_IPV6EXADD_M, qw1);
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
+ * Return: decoded checksum bits
+ **/
+static struct libeth_rx_csum_decoded
+iavf_flex_rx_csum(const struct iavf_vsi *vsi,
+		  const struct iavf_rx_desc *rx_desc,
+		  const struct libeth_rx_pt decoded)
+{
+	struct libeth_rx_csum_decoded csum_bits = {};
+	u64 qw1 = le64_to_cpu(rx_desc->qw1);
+
+	if (!libeth_rx_pt_has_checksum(vsi->netdev, decoded))
+		return csum_bits;
+
+	csum_bits.ipe = FIELD_GET(IAVF_RXD_FLEX_QW1_XSUM_IPE_M, qw1);
+	csum_bits.eipe = FIELD_GET(IAVF_RXD_FLEX_QW1_XSUM_EIPE_M, qw1);
+	csum_bits.l4e = FIELD_GET(IAVF_RXD_FLEX_QW1_XSUM_L4E_M, qw1);
+	csum_bits.eudpe = FIELD_GET(IAVF_RXD_FLEX_QW1_XSUM_EUDPE_M, qw1);
+	csum_bits.l3l4p = FIELD_GET(IAVF_RXD_FLEX_QW1_L3L4P_M, qw1);
+	csum_bits.ipv6exadd = FIELD_GET(IAVF_RXD_FLEX_QW1_IPV6EXADD_M, qw1);
+	csum_bits.nat = FIELD_GET(IAVF_RXD_FLEX_QW2_NAT_M, qw1);
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
+	const __le64 rss_mask = cpu_to_le64(IAVF_RXD_LEGACY_QW1_FLTSTAT_M);
 	u32 hash;
-	const __le64 rss_mask =
-		cpu_to_le64((u64)IAVF_RX_DESC_FLTSTAT_RSS_HASH <<
-			    IAVF_RX_DESC_STATUS_FLTSTAT_SHIFT);
 
-	decoded = libie_rx_pt_parse(rx_ptype);
 	if (!libeth_rx_pt_has_hash(ring->netdev, decoded))
 		return;
 
 	if ((rx_desc->qw1 & rss_mask) == rss_mask) {
-		hash = le64_get_bits(rx_desc->qw0,
-				     IAVF_RX_DESC_LEGACY_QW0_RSS_M);
+		hash = le64_get_bits(rx_desc->qw0, IAVF_RXD_LEGACY_QW0_RSS_M);
+		libeth_rx_pt_set_hash(skb, hash, decoded);
+	}
+}
+
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
+	rss_valid = le64_get_bits(qw1, IAVF_RXD_FLEX_QW1_RSS_VALID_M);
+	if (rss_valid) {
+		hash = le64_get_bits(qw1, IAVF_RXD_FLEX_QW1_RSS_HASH_M);
 		libeth_rx_pt_set_hash(skb, hash, decoded);
 	}
 }
@@ -998,14 +1074,23 @@ static void iavf_rx_hash(struct iavf_ring *ring,
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
+	struct libeth_rx_csum_decoded csum_bits = {};
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
 
@@ -1092,8 +1177,7 @@ static struct sk_buff *iavf_build_skb(const struct libeth_fqe *rx_buffer,
 /**
  * iavf_is_non_eop - process handling of non-EOP buffers
  * @rx_ring: Rx ring being processed
- * @rx_desc: Rx descriptor for current buffer
- * @skb: Current socket buffer containing buffer in progress
+ * @fields: Rx descriptor extracted fields
  *
  * This function updates next to clean.  If the buffer is an EOP buffer
  * this function exits returning false, otherwise it will place the
@@ -1101,8 +1185,7 @@ static struct sk_buff *iavf_build_skb(const struct libeth_fqe *rx_buffer,
  * that this is in fact a non-EOP buffer.
  **/
 static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
-			    struct iavf_rx_desc *rx_desc,
-			    struct sk_buff *skb)
+			    struct libeth_rx_extracted fields)
 {
 	u32 ntc = rx_ring->next_to_clean + 1;
 
@@ -1113,8 +1196,7 @@ static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
 	prefetch(IAVF_RX_DESC(rx_ring, ntc));
 
 	/* if we are the last buffer then there is nothing else to do */
-#define IAVF_RXD_EOF BIT(IAVF_RX_DESC_STATUS_EOF_SHIFT)
-	if (likely(iavf_test_staterr(rx_desc, IAVF_RXD_EOF)))
+	if (likely(fields.end_of_packet))
 		return false;
 
 	rx_ring->rx_stats.non_eop_descs++;
@@ -1122,6 +1204,99 @@ static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
 	return true;
 }
 
+/**
+ * iavf_extract_legacy_rx_fields - Extract fields from the Rx descriptor
+ * @rx_ring: rx descriptor ring
+ * @rx_desc: the descriptor to process
+ *
+ * Decode the Rx descriptor and extract relevant information including the
+ * size, VLAN tag, Rx packet type, end of packet field and RXE field value.
+ *
+ * This function only operates on the VIRTCHNL_RXDID_1_32B_BASE legacy 32byte
+ * descriptor writeback format.
+ *
+ * Return: fields extracted from the Rx descriptor
+ */
+static struct libeth_rx_extracted
+iavf_extract_legacy_rx_fields(const struct iavf_ring *rx_ring,
+			      const struct iavf_rx_desc *rx_desc)
+{
+	struct libeth_rx_extracted fields = {};
+	__le64 qw0 = rx_desc->qw0;
+	__le64 qw1 = rx_desc->qw1;
+	__le64 qw2 = rx_desc->qw2;
+	bool l2tag1p;
+	bool l2tag2p;
+
+	fields.end_of_packet = le64_get_bits(qw1, IAVF_RXD_LEGACY_QW1_EOP_M);
+	fields.size = le64_get_bits(qw1, IAVF_RXD_LEGACY_QW1_LENGTH_M);
+	fields.rxe = le64_get_bits(qw1, IAVF_RXD_LEGACY_QW1_RXE_M);
+	fields.rx_ptype = le64_get_bits(qw1, IAVF_RXD_LEGACY_QW1_PTYPE_M);
+
+	l2tag1p = le64_get_bits(qw1, IAVF_RXD_LEGACY_QW1_L2TAG1P_M);
+	if (l2tag1p && (rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1))
+		fields.vlan_tag = le64_get_bits(qw0,
+						IAVF_RXD_LEGACY_QW0_L2TAG1_M);
+
+	l2tag2p = le64_get_bits(qw2, IAVF_RXD_LEGACY_QW2_L2TAG2P_M);
+	if (l2tag2p && (rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2))
+		fields.vlan_tag = le64_get_bits(qw2,
+						IAVF_RXD_LEGACY_QW2_L2TAG2_M);
+
+	return fields;
+}
+
+/**
+ * iavf_extract_flex_rx_fields - Extract fields from the Rx descriptor
+ * @rx_ring: rx descriptor ring
+ * @rx_desc: the descriptor to process
+ *
+ * Decode the Rx descriptor and extract relevant information including the
+ * size, VLAN tag, Rx packet type, end of packet field and RXE field value.
+ *
+ * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
+ * descriptor writeback format.
+ *
+ * Return: fields extracted from the Rx descriptor
+ */
+static struct libeth_rx_extracted
+iavf_extract_flex_rx_fields(const struct iavf_ring *rx_ring,
+			    const struct iavf_rx_desc *rx_desc)
+{
+	struct libeth_rx_extracted fields = {};
+	__le64 qw0 = rx_desc->qw0;
+	__le64 qw1 = rx_desc->qw1;
+	__le64 qw2 = rx_desc->qw2;
+	bool l2tag1p, l2tag2p;
+
+	fields.size = le64_get_bits(qw0, IAVF_RXD_FLEX_QW0_PKT_LEN_M);
+	fields.rx_ptype = le64_get_bits(qw0, IAVF_RXD_FLEX_QW0_PTYPE_M);
+	fields.rxe = le64_get_bits(qw1, IAVF_RXD_FLEX_QW1_RXE_M);
+	fields.end_of_packet = le64_get_bits(qw1, IAVF_RXD_FLEX_QW1_EOP_M);
+
+	l2tag1p = le64_get_bits(qw1, IAVF_RXD_FLEX_QW1_L2TAG1P_M);
+	if (l2tag1p && (rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1))
+		fields.vlan_tag = le64_get_bits(qw1,
+						IAVF_RXD_FLEX_QW1_L2TAG1_M);
+
+	l2tag2p = le64_get_bits(qw2, IAVF_RXD_FLEX_QW2_L2TAG2P_M);
+	if (l2tag2p && (rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2))
+		fields.vlan_tag = le64_get_bits(qw2,
+						IAVF_RXD_FLEX_QW2_L2TAG2_2_M);
+
+	return fields;
+}
+
+static struct libeth_rx_extracted
+iavf_extract_rx_fields(const struct iavf_ring *rx_ring,
+		       const struct iavf_rx_desc *rx_desc)
+{
+	if (rx_ring->rxdid == VIRTCHNL_RXDID_1_32B_BASE)
+		return iavf_extract_legacy_rx_fields(rx_ring, rx_desc);
+	else
+		return iavf_extract_flex_rx_fields(rx_ring, rx_desc);
+}
+
 /**
  * iavf_clean_rx_irq - Clean completed descriptors from Rx ring - bounce buf
  * @rx_ring: rx descriptor ring to transact packets on
@@ -1142,13 +1317,9 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 	bool failure = false;
 
 	while (likely(total_rx_packets < (unsigned int)budget)) {
+		struct libeth_rx_extracted fields = {};
 		struct libeth_fqe *rx_buffer;
 		struct iavf_rx_desc *rx_desc;
-		u16 ext_status = 0;
-		unsigned int size;
-		u16 vlan_tag = 0;
-		u8 rx_ptype;
-		u64 qword;
 
 		/* return some buffers to hardware, one at a time is too slow */
 		if (cleaned_count >= IAVF_RX_BUFFER_WRITE) {
@@ -1159,35 +1330,28 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 
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
+		if (!iavf_test_staterr(rx_desc, IAVF_RXD_FLEX_QW1_DD_M))
 			break;
 
-		size = FIELD_GET(IAVF_RXD_QW1_LENGTH_PBUF_MASK, qword);
+		fields = iavf_extract_rx_fields(rx_ring, rx_desc);
 
 		iavf_trace(clean_rx_irq, rx_ring, rx_desc, skb);
 
 		rx_buffer = &rx_ring->rx_fqes[rx_ring->next_to_clean];
-		if (!libeth_rx_sync_for_cpu(rx_buffer, size))
+		if (!libeth_rx_sync_for_cpu(rx_buffer, fields.size))
 			goto skip_data;
 
 		/* retrieve a buffer from the ring */
 		if (skb)
-			iavf_add_rx_frag(skb, rx_buffer, size);
+			iavf_add_rx_frag(skb, rx_buffer, fields.size);
 		else
-			skb = iavf_build_skb(rx_buffer, size);
+			skb = iavf_build_skb(rx_buffer, fields.size);
 
 		/* exit if we failed to retrieve a buffer */
 		if (!skb) {
@@ -1198,15 +1362,14 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
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
@@ -1220,28 +1383,11 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
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
-						 IAVF_RX_DESC_LEGACY_QW0_L2TAG1_M);
-
-		ext_status = le64_get_bits(rx_desc->qw2,
-					   IAVF_RX_DESC_LEGACY_QW2_EXT_STATUS_M);
-
-		if (ext_status &
-		    BIT(IAVF_RX_DESC_EXT_STATUS_L2TAG2P_SHIFT) &&
-		    rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2)
-			vlan_tag = le64_get_bits(rx_desc->qw2,
-						 IAVF_RX_DESC_LEGACY_QW2_L2TAG2_2_M);
+		iavf_process_skb_fields(rx_ring, rx_desc, skb, fields.rx_ptype);
 
 		iavf_trace(clean_rx_irq_rx, rx_ring, rx_desc, skb);
-		iavf_receive_skb(rx_ring, skb, vlan_tag);
+		iavf_receive_skb(rx_ring, skb, fields.vlan_tag);
 		skb = NULL;
 
 		/* update budget accounting */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_type.h b/drivers/net/ethernet/intel/iavf/iavf_type.h
index 07e54db0bd4d..498746a83d35 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_type.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_type.h
@@ -179,39 +179,13 @@ struct iavf_hw {
 };
 
 struct iavf_rx_desc {
-	aligned_le64 qw0;
-	aligned_le64 qw1;
-	aligned_le64 qw2;
-	aligned_le64 qw3;
-} __aligned(4 * sizeof(__le64));;
-
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
+	__le64 qw0;
+	__le64 qw1;
+	__le64 qw2;
+	__le64 qw3;
 };
 
-#define IAVF_RXD_QW1_STATUS_SHIFT	0
-#define IAVF_RXD_QW1_STATUS_MASK	((BIT(IAVF_RX_DESC_STATUS_LAST) - 1) \
-					 << IAVF_RXD_QW1_STATUS_SHIFT)
+#define IAVF_RXD_QW1_STATUS_MASK		GENMASK(18, 0)
 
 #define IAVF_RXD_QW1_STATUS_TSYNINDX_SHIFT IAVF_RX_DESC_STATUS_TSYNINDX_SHIFT
 #define IAVF_RXD_QW1_STATUS_TSYNINDX_MASK  (0x3UL << \
@@ -228,22 +202,6 @@ enum iavf_rx_desc_fltstat_values {
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
@@ -252,13 +210,6 @@ enum iavf_rx_desc_error_l3l4e_fcoe_masks {
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
@@ -505,9 +456,85 @@ struct iavf_eth_stats {
 	u64 tx_errors;			/* tepc */
 };
 
-#define IAVF_RX_DESC_LEGACY_QW0_RSS_M		GENMASK_ULL(63, 32)
-#define IAVF_RX_DESC_LEGACY_QW0_L2TAG1_M	GENMASK_ULL(33, 16)
-#define IAVF_RX_DESC_LEGACY_QW2_L2TAG2_2_M	GENMASK_ULL(63, 48)
-#define IAVF_RX_DESC_LEGACY_QW2_EXT_STATUS_M	GENMASK_ULL(11, 0)
+/* LEGACY DESCRIPTOR */
+/* Quad Word 0 */
+#define IAVF_RXD_LEGACY_QW0_RSS_M		GENMASK_ULL(63, 32)
+#define IAVF_RXD_LEGACY_QW0_L2TAG1_M		GENMASK_ULL(31, 16)
+
+/* Quad Word 1 */
+#define IAVF_RXD_LEGACY_QW1_DD_M		BIT(0)
+#define IAVF_RXD_LEGACY_QW1_EOP_M		BIT(1)
+#define IAVF_RXD_LEGACY_QW1_L2TAG1P_M		BIT(2)
+#define IAVF_RXD_LEGACY_QW1_L3L4P_M		BIT(3)
+#define IAVF_RXD_LEGACY_QW1_CRCP_M		BIT(4)
+#define IAVF_RXD_LEGACY_QW1_TSYNVALID_M		BIT(7)
+/* Note: Bit 8 is reserved in X710 and XL710 */
+#define IAVF_RXD_LEGACY_QW1_EXT_UDP_0_M		BIT(8)
+#define IAVF_RXD_LEGACY_QW1_FLM_M		BIT(11)
+#define IAVF_RXD_LEGACY_QW1_LPBK_M		BIT(14)
+#define IAVF_RXD_LEGACY_QW1_IPV6EXADD_M		BIT(15)
+/* Note: For non-tunnel packets INT_UDP_0 is the right status for
+ * UDP header
+ */
+#define IAVF_RXD_LEGACY_QW1_INT_UDP_0_M		BIT(18)
+#define IAVF_RXD_LEGACY_QW1_RXE_M		BIT(19)
+#define IAVF_RXD_LEGACY_QW1_RECIPE_M		BIT(20)
+#define IAVF_RXD_LEGACY_QW1_HBO_M		BIT(21)
+#define IAVF_RXD_LEGACY_QW1_IPE_M		BIT(22)
+#define IAVF_RXD_LEGACY_QW1_L4E_M		BIT(23)
+#define IAVF_RXD_LEGACY_QW1_EIPE_M		BIT(24)
+#define IAVF_RXD_LEGACY_QW1_OVERSIZE_M		BIT(25)
+#define IAVF_RXD_LEGACY_QW1_PPRS_M		BIT(26)
+#define IAVF_RXD_LEGACY_QW1_TSYNINDX_M		GENMASK_ULL(6, 5)
+#define IAVF_RXD_LEGACY_QW1_UMBCAST_M		GENMASK_ULL(10, 9)
+#define IAVF_RXD_LEGACY_QW1_FLTSTAT_M		GENMASK_ULL(13, 12)
+#define IAVF_RXD_LEGACY_QW1_RESERVED_M		GENMASK_ULL(17, 16)
+#define IAVF_RXD_LEGACY_QW1_L3L4E_M		GENMASK_ULL(24, 22)
+#define IAVF_RXD_LEGACY_QW1_PTYPE_M		GENMASK_ULL(37, 30)
+#define IAVF_RXD_LEGACY_QW1_LENGTH_M		GENMASK_ULL(51, 38)
+
+/* Quad Word 2 */
+#define IAVF_RXD_LEGACY_QW2_L2TAG2P_M		BIT(0)
+#define IAVF_RXD_LEGACY_QW2_EXT_STATUS_M	GENMASK_ULL(11, 0)
+#define IAVF_RXD_LEGACY_QW2_L2TAG2_M		GENMASK_ULL(63, 32)
+#define IAVF_RXD_LEGACY_QW2_L2TAG2_1_M		GENMASK_ULL(47, 32)
+#define IAVF_RXD_LEGACY_QW2_L2TAG2_2_M		GENMASK_ULL(63, 48)
+
+/* FLEX DESCRIPTOR */
+/* Quad Word 0 */
+#define IAVF_RXD_FLEX_QW0_PTYPE_M		GENMASK_ULL(25, 16)
+#define IAVF_RXD_FLEX_QW0_PKT_LEN_M		GENMASK_ULL(45, 32)
+
+/* Quad Word 1 */
+#define IAVF_RXD_FLEX_QW1_DD_M			BIT(0)
+#define IAVF_RXD_FLEX_QW1_EOP_M			BIT(1)
+#define IAVF_RXD_FLEX_QW1_HBO_M			BIT(2)
+#define IAVF_RXD_FLEX_QW1_L3L4P_M		BIT(3)
+#define IAVF_RXD_FLEX_QW1_XSUM_IPE_M		BIT(4)
+#define IAVF_RXD_FLEX_QW1_XSUM_L4E_M		BIT(5)
+#define IAVF_RXD_FLEX_QW1_XSUM_EIPE_M		BIT(6)
+#define IAVF_RXD_FLEX_QW1_XSUM_EUDPE_M		BIT(7)
+#define IAVF_RXD_FLEX_QW1_LPBK_M		BIT(8)
+#define IAVF_RXD_FLEX_QW1_IPV6EXADD_M		BIT(9)
+#define IAVF_RXD_FLEX_QW1_RXE_M			BIT(10)
+#define IAVF_RXD_FLEX_QW1_CRCP_M		BIT(11)
+#define IAVF_RXD_FLEX_QW1_RSS_VALID_M		BIT(12)
+#define IAVF_RXD_FLEX_QW1_L2TAG1P_M		BIT(13)
+#define IAVF_RXD_FLEX_QW1_XTRMD0_VALID_M	BIT(14)
+#define IAVF_RXD_FLEX_QW1_XTRMD1_VALID_M	BIT(15)
+#define IAVF_RXD_FLEX_QW1_L2TAG1_M		GENMASK_ULL(31, 16)
+#define IAVF_RXD_FLEX_QW1_RSS_HASH_M		GENMASK_ULL(63, 32)
+
+/* Quad Word 2 */
+#define IAVF_RXD_FLEX_QW2_L2TAG2_2_M		GENMASK_ULL(63, 48)
+#define IAVF_RXD_FLEX_QW2_CPM_M			GENMASK_ULL(3, 0)
+#define IAVF_RXD_FLEX_QW2_NAT_M			BIT(4)
+#define IAVF_RXD_FLEX_QW2_CRYPTO_M		BIT(5)
+/* [10:6] reserved */
+#define IAVF_RXD_FLEX_QW2_L2TAG2P_M		BIT(11)
+#define IAVF_RXD_FLEX_QW2_XTRMD2_VALID_M	BIT(12)
+#define IAVF_RXD_FLEX_QW2_XTRMD3_VALID_M	BIT(13)
+#define IAVF_RXD_FLEX_QW2_XTRMD4_VALID_M	BIT(14)
+#define IAVF_RXD_FLEX_QW2_XTRMD5_VALID_M	BIT(15)
 
 #endif /* _IAVF_TYPE_H_ */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 4163dfe90b4a..d60fba84b109 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -403,6 +403,7 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
 	int pairs = adapter->num_active_queues;
 	struct virtchnl_queue_pair_info *vqpi;
 	u32 i, max_frame;
+	u8 rx_flags = 0;
 	size_t len;
 
 	max_frame = LIBIE_MAX_RX_FRM_LEN(adapter->rx_rings->pp->p.offset);
@@ -420,6 +421,9 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
 	if (!vqci)
 		return;
 
+	if (iavf_ptp_cap_supported(adapter, VIRTCHNL_1588_PTP_CAP_RX_TSTAMP))
+		rx_flags |= VIRTCHNL_PTP_RX_TSTAMP;
+
 	vqci->vsi_id = adapter->vsi_res->vsi_id;
 	vqci->num_queue_pairs = pairs;
 	vqpi = vqci->qpair;
@@ -442,6 +446,7 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
 		if (CRC_OFFLOAD_ALLOWED(adapter))
 			vqpi->rxq.crc_disable = !!(adapter->netdev->features &
 						   NETIF_F_RXFCS);
+		vqpi->rxq.flags = rx_flags;
 		vqpi++;
 	}
 
-- 
2.38.1

