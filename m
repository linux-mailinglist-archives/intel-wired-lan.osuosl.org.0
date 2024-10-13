Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8AB99C636
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Oct 2024 11:44:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 720E060764;
	Mon, 14 Oct 2024 09:44:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fpkuwpmK4d-4; Mon, 14 Oct 2024 09:44:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8CA7060706
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728899070;
	bh=3GkkXOleRkSeB55yJtT4K9P7O0eTJjP9G++8rv9VEGc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iG5dIBsecqJkT/HaqEUdyHwUeqgTsbg4Wv4Y+eJT0/6WUOsOKdPiJenvCGybOTncP
	 ly1PuRZg0ubVPLPF99320w8Cj/rmWMQFStZo/Qx72SQzxjenMjiTJ5Qq+RC09h5tIE
	 qvQB4nD/x2lRDHUR7x+09tKZamALfVfsBvnPkGvZG2nibI3ZU6lZCBcwnyhliYoaa+
	 p5LlCDFbiUfiJxCul+kjnN4t4nnYrbonuUicktw5FMIrXOmh/bS0+NTbKlskmdKvpa
	 /8UGCydZV690UpJcyTtl4FTlhjUWdvbeMYylSSGirqb8G4D8KyjH8Ig6ulxXeFlSMR
	 R/5pUkbcYFc+w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8CA7060706;
	Mon, 14 Oct 2024 09:44:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3E1471BF364
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 09:44:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8B9F840296
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 09:44:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vZ8ofJ8l-Q9W for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Oct 2024 09:44:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5F5F5400FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F5F5400FB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5F5F5400FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 09:44:12 +0000 (UTC)
X-CSE-ConnectionGUID: gCik74YnT1mwj/ZZ1K+/Jw==
X-CSE-MsgGUID: 8HxVW35US++ZNirxC3uELw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="45712192"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="45712192"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 02:44:11 -0700
X-CSE-ConnectionGUID: AXRHsBIESH6UDyo/lkGyxA==
X-CSE-MsgGUID: /0F8BieMQpOhOrsoOOuGeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="77531851"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa009.fm.intel.com with ESMTP; 14 Oct 2024 02:44:08 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id C966727BA0;
 Mon, 14 Oct 2024 10:44:06 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	aleksander.lobakin@intel.com
Date: Sun, 13 Oct 2024 11:44:12 -0400
Message-Id: <20241013154415.20262-12-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20241013154415.20262-1-mateusz.polchlopek@intel.com>
References: <20241013154415.20262-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728899052; x=1760435052;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xLr443hqIn9iyMIfYrk0cul7DotfTUPmrHZC0cj8LmI=;
 b=chpKTHpRy353tquLQl9bRN4a/eQWJ6UGL+jba5DSLhfwBn4yqGlTHX9V
 6JEVhTiR3es1NsBgk5rJghnmDnzkP8j43ckrsfY1tCpS+mPLXN+PeCsem
 iYDruUT9zv5zQMmvsLsV6uGzxbMC5DHCYrtnb5BB+syUV+rdojWtNYvoc
 OQERhY2Uc6raNTZ1/e6fZ5+Np+ru3Jskpxhc+LpojyMpjXSCme6BhbVY5
 W7D7FLOXgCBNS+YsmG1l7D6jEmsQKenaqBUGA1fGbK2hNps7i+GjBHOqj
 xzXqLHqVRYR/5ndpvw+BaGJyXQIs1GkZSHZ+NIiKJAWqbe7o8JMHabGOI
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=chpKTHpR
Subject: [Intel-wired-lan] [PATCH iwl-next v11 11/14] iavf: refactor
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
 drivers/net/ethernet/intel/iavf/iavf_txrx.c | 354 ++++++++++++++------
 drivers/net/ethernet/intel/iavf/iavf_type.h | 127 ++++---
 2 files changed, 327 insertions(+), 154 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 46745ebc9c1f..9f1c11e72846 100644
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
+ * @decoded_pt: decoded ptype information
+ * @csum_bits: decoded Rx descriptor information
  **/
-static void iavf_rx_checksum(struct iavf_vsi *vsi, struct sk_buff *skb,
-			     struct iavf_rx_desc *rx_desc)
+static void iavf_rx_csum(const struct iavf_vsi *vsi, struct sk_buff *skb,
+			 struct libeth_rx_pt decoded_pt,
+			 struct libeth_rx_csum csum_bits)
 {
-	struct libeth_rx_pt decoded;
-	u32 rx_error, rx_status;
 	bool ipv4, ipv6;
-	u64 qword;
-	u32 ptype;
 
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
+	ipv4 = libeth_rx_pt_get_ip_ver(decoded_pt) == LIBETH_RX_PT_OUTER_IPV4;
+	ipv6 = libeth_rx_pt_get_ip_ver(decoded_pt) == LIBETH_RX_PT_OUTER_IPV6;
 
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
@@ -959,30 +943,117 @@ static void iavf_rx_checksum(struct iavf_vsi *vsi, struct sk_buff *skb,
 }
 
 /**
- * iavf_rx_hash - set the hash value in the skb
+ * iavf_legacy_rx_csum - Indicate in skb if hw indicated a good checksum
+ * @vsi: the VSI we care about
+ * @qw1: quad word 1
+ * @decoded_pt: decoded packet type
+ *
+ * This function only operates on the VIRTCHNL_RXDID_1_32B_BASE legacy 32byte
+ * descriptor writeback format.
+ *
+ * Return: decoded checksum bits.
+ **/
+static struct libeth_rx_csum
+iavf_legacy_rx_csum(const struct iavf_vsi *vsi, u64 qw1,
+		    const struct libeth_rx_pt decoded_pt)
+{
+	struct libeth_rx_csum csum_bits;
+
+	if (!libeth_rx_pt_has_checksum(vsi->netdev, decoded_pt))
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
+ * @qw1: quad word 1
+ * @decoded_pt: decoded packet type
+ *
+ * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
+ * descriptor writeback format.
+ *
+ * Return: decoded checksum bits.
+ **/
+static struct libeth_rx_csum
+iavf_flex_rx_csum(const struct iavf_vsi *vsi, u64 qw1,
+		  const struct libeth_rx_pt decoded_pt)
+{
+	struct libeth_rx_csum csum_bits;
+
+	if (!libeth_rx_pt_has_checksum(vsi->netdev, decoded_pt))
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
+ * @ring: descriptor ring
+ * @qw0: quad word 0
+ * @qw1: quad word 1
+ * @skb: skb currently being received and modified
+ * @decoded_pt: decoded packet type
+ *
+ * This function only operates on the VIRTCHNL_RXDID_1_32B_BASE legacy 32byte
+ * descriptor writeback format.
+ **/
+static void iavf_legacy_rx_hash(const struct iavf_ring *ring, __le64 qw0,
+				__le64 qw1, struct sk_buff *skb,
+				const struct libeth_rx_pt decoded_pt)
+{
+	const __le64 rss_mask = cpu_to_le64(IAVF_RXD_LEGACY_FLTSTAT_M);
+	u32 hash;
+
+	if (!libeth_rx_pt_has_hash(ring->netdev, decoded_pt))
+		return;
+
+	if ((qw1 & rss_mask) == rss_mask) {
+		hash = le64_get_bits(qw0, IAVF_RXD_LEGACY_RSS_M);
+		libeth_rx_pt_set_hash(skb, hash, decoded_pt);
+	}
+}
+
+/**
+ * iavf_flex_rx_hash - set the hash value in the skb
  * @ring: descriptor ring
- * @rx_desc: specific descriptor
+ * @qw1: quad word 1
  * @skb: skb currently being received and modified
- * @rx_ptype: Rx packet type
+ * @decoded_pt: decoded packet type
+ *
+ * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
+ * descriptor writeback format.
  **/
-static void iavf_rx_hash(struct iavf_ring *ring,
-			 struct iavf_rx_desc *rx_desc,
-			 struct sk_buff *skb,
-			 u8 rx_ptype)
+static void iavf_flex_rx_hash(const struct iavf_ring *ring, __le64 qw1,
+			      struct sk_buff *skb,
+			      const struct libeth_rx_pt decoded_pt)
 {
-	struct libeth_rx_pt decoded;
+	bool rss_valid;
 	u32 hash;
-	const __le64 rss_mask =
-		cpu_to_le64((u64)IAVF_RX_DESC_FLTSTAT_RSS_HASH <<
-			    IAVF_RX_DESC_STATUS_FLTSTAT_SHIFT);
 
-	decoded = libie_rx_pt_parse(rx_ptype);
-	if (!libeth_rx_pt_has_hash(ring->netdev, decoded))
+	if (!libeth_rx_pt_has_hash(ring->netdev, decoded_pt))
 		return;
 
-	if ((rx_desc->qw1 & rss_mask) == rss_mask) {
-		hash = le64_get_bits(rx_desc->qw0, IAVF_RXD_LEGACY_RSS_M);
-		libeth_rx_pt_set_hash(skb, hash, decoded);
+	rss_valid = le64_get_bits(qw1, IAVF_RXD_FLEX_RSS_VALID_M);
+	if (rss_valid) {
+		hash = le64_get_bits(qw1, IAVF_RXD_FLEX_RSS_HASH_M);
+		libeth_rx_pt_set_hash(skb, hash, decoded_pt);
 	}
 }
 
@@ -991,20 +1062,33 @@ static void iavf_rx_hash(struct iavf_ring *ring,
  * @rx_ring: rx descriptor ring packet is being transacted on
  * @rx_desc: pointer to the EOP Rx descriptor
  * @skb: pointer to current skb being populated
- * @rx_ptype: the packet type decoded by hardware
+ * @ptype: the packet type decoded by hardware
  *
  * This function checks the ring, descriptor, and packet information in
  * order to populate the hash, checksum, VLAN, protocol, and
  * other fields within the skb.
  **/
-static void
-iavf_process_skb_fields(struct iavf_ring *rx_ring,
-			struct iavf_rx_desc *rx_desc, struct sk_buff *skb,
-			u8 rx_ptype)
+static void iavf_process_skb_fields(const struct iavf_ring *rx_ring,
+				    const struct iavf_rx_desc *rx_desc,
+				    struct sk_buff *skb, u32 ptype)
 {
-	iavf_rx_hash(rx_ring, rx_desc, skb, rx_ptype);
+	struct libeth_rx_csum csum_bits;
+	struct libeth_rx_pt decoded_pt;
+	__le64 qw0 = rx_desc->qw0;
+	__le64 qw1 = rx_desc->qw1;
 
-	iavf_rx_checksum(rx_ring->vsi, skb, rx_desc);
+	decoded_pt = libie_rx_pt_parse(ptype);
+
+	if (rx_ring->rxdid == VIRTCHNL_RXDID_1_32B_BASE) {
+		iavf_legacy_rx_hash(rx_ring, qw0, qw1, skb, decoded_pt);
+		csum_bits = iavf_legacy_rx_csum(rx_ring->vsi, le64_to_cpu(qw1),
+						decoded_pt);
+	} else {
+		iavf_flex_rx_hash(rx_ring, qw1, skb, decoded_pt);
+		csum_bits = iavf_flex_rx_csum(rx_ring->vsi, le64_to_cpu(qw1),
+					      decoded_pt);
+	}
+	iavf_rx_csum(rx_ring->vsi, skb, decoded_pt, csum_bits);
 
 	skb_record_rx_queue(skb, rx_ring->queue_index);
 
@@ -1091,8 +1175,7 @@ static struct sk_buff *iavf_build_skb(const struct libeth_fqe *rx_buffer,
 /**
  * iavf_is_non_eop - process handling of non-EOP buffers
  * @rx_ring: Rx ring being processed
- * @rx_desc: Rx descriptor for current buffer
- * @skb: Current socket buffer containing buffer in progress
+ * @fields: Rx descriptor extracted fields
  *
  * This function updates next to clean.  If the buffer is an EOP buffer
  * this function exits returning false, otherwise it will place the
@@ -1100,8 +1183,7 @@ static struct sk_buff *iavf_build_skb(const struct libeth_fqe *rx_buffer,
  * that this is in fact a non-EOP buffer.
  **/
 static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
-			    struct iavf_rx_desc *rx_desc,
-			    struct sk_buff *skb)
+			    struct libeth_rqe_info fields)
 {
 	u32 ntc = rx_ring->next_to_clean + 1;
 
@@ -1112,8 +1194,7 @@ static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
 	prefetch(IAVF_RX_DESC(rx_ring, ntc));
 
 	/* if we are the last buffer then there is nothing else to do */
-#define IAVF_RXD_EOF BIT(IAVF_RX_DESC_STATUS_EOF_SHIFT)
-	if (likely(iavf_test_staterr(rx_desc, IAVF_RXD_EOF)))
+	if (likely(fields.eop))
 		return false;
 
 	rx_ring->rx_stats.non_eop_descs++;
@@ -1121,6 +1202,108 @@ static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
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
+ * Return: fields extracted from the Rx descriptor.
+ */
+static struct libeth_rqe_info
+iavf_extract_legacy_rx_fields(const struct iavf_ring *rx_ring,
+			      const struct iavf_rx_desc *rx_desc)
+{
+	u64 qw0 = le64_to_cpu(rx_desc->qw0);
+	u64 qw1 = le64_to_cpu(rx_desc->qw1);
+	u64 qw2 = le64_to_cpu(rx_desc->qw2);
+	struct libeth_rqe_info fields;
+	bool l2tag1p, l2tag2p;
+
+	fields.eop = FIELD_GET(IAVF_RXD_LEGACY_EOP_M, qw1);
+	fields.len = FIELD_GET(IAVF_RXD_LEGACY_LENGTH_M, qw1);
+
+	if (!fields.eop)
+		return fields;
+
+	fields.rxe = FIELD_GET(IAVF_RXD_LEGACY_RXE_M, qw1);
+	fields.ptype = FIELD_GET(IAVF_RXD_LEGACY_PTYPE_M, qw1);
+	fields.vlan = 0;
+
+	if (rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1) {
+		l2tag1p = FIELD_GET(IAVF_RXD_LEGACY_L2TAG1P_M, qw1);
+		if (l2tag1p)
+			fields.vlan = FIELD_GET(IAVF_RXD_LEGACY_L2TAG1_M, qw0);
+	} else if (rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2) {
+		l2tag2p = FIELD_GET(IAVF_RXD_LEGACY_L2TAG2P_M, qw2);
+		if (l2tag2p)
+			fields.vlan = FIELD_GET(IAVF_RXD_LEGACY_L2TAG2_M, qw2);
+	}
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
+ * Return: fields extracted from the Rx descriptor.
+ */
+static struct libeth_rqe_info
+iavf_extract_flex_rx_fields(const struct iavf_ring *rx_ring,
+			    const struct iavf_rx_desc *rx_desc)
+{
+	struct libeth_rqe_info fields = {};
+	u64 qw0 = le64_to_cpu(rx_desc->qw0);
+	u64 qw1 = le64_to_cpu(rx_desc->qw1);
+	u64 qw2 = le64_to_cpu(rx_desc->qw2);
+	bool l2tag1p, l2tag2p;
+
+	fields.eop = FIELD_GET(IAVF_RXD_FLEX_EOP_M, qw1);
+	fields.len = FIELD_GET(IAVF_RXD_FLEX_PKT_LEN_M, qw0);
+
+	if (!fields.eop)
+		return fields;
+
+	fields.rxe = FIELD_GET(IAVF_RXD_FLEX_RXE_M, qw1);
+	fields.ptype = FIELD_GET(IAVF_RXD_FLEX_PTYPE_M, qw0);
+	fields.vlan = 0;
+
+	if (rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1) {
+		l2tag1p = FIELD_GET(IAVF_RXD_FLEX_L2TAG1P_M, qw1);
+		if (l2tag1p)
+			fields.vlan = FIELD_GET(IAVF_RXD_FLEX_L2TAG1_M, qw1);
+	} else if (rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2) {
+		l2tag2p = FIELD_GET(IAVF_RXD_FLEX_L2TAG2P_M, qw2);
+		if (l2tag2p)
+			fields.vlan = FIELD_GET(IAVF_RXD_FLEX_L2TAG2_2_M, qw2);
+	}
+
+	return fields;
+}
+
+static struct libeth_rqe_info
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
@@ -1141,13 +1324,9 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 	bool failure = false;
 
 	while (likely(total_rx_packets < (unsigned int)budget)) {
+		struct libeth_rqe_info fields;
 		struct libeth_fqe *rx_buffer;
 		struct iavf_rx_desc *rx_desc;
-		u16 ext_status = 0;
-		unsigned int size;
-		u16 vlan_tag = 0;
-		u8 rx_ptype;
-		u64 qw1;
 
 		/* return some buffers to hardware, one at a time is too slow */
 		if (cleaned_count >= IAVF_RX_BUFFER_WRITE) {
@@ -1158,35 +1337,28 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 
 		rx_desc = IAVF_RX_DESC(rx_ring, rx_ring->next_to_clean);
 
-		/* status_error_len will always be zero for unused descriptors
-		 * because it's cleared in cleanup, and overlaps with hdr_addr
-		 * which is always zero because packet split isn't used, if the
-		 * hardware wrote DD then the length will be non-zero
-		 */
-		qw1 = le64_to_cpu(rx_desc->qw1);
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
 
-		size = FIELD_GET(IAVF_RXD_QW1_LENGTH_PBUF_MASK, qw1);
+		fields = iavf_extract_rx_fields(rx_ring, rx_desc);
 
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
@@ -1197,15 +1369,14 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
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
@@ -1219,26 +1390,11 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		/* probably a little skewed due to removing CRC */
 		total_rx_bytes += skb->len;
 
-		rx_ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qw1);
-
 		/* populate checksum, VLAN, and protocol */
-		iavf_process_skb_fields(rx_ring, rx_desc, skb, rx_ptype);
-
-		if (qw1 & BIT(IAVF_RX_DESC_STATUS_L2TAG1P_SHIFT) &&
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
+		iavf_process_skb_fields(rx_ring, rx_desc, skb, fields.ptype);
 
 		iavf_trace(clean_rx_irq_rx, rx_ring, rx_desc, skb);
-		iavf_receive_skb(rx_ring, skb, vlan_tag);
+		iavf_receive_skb(rx_ring, skb, fields.vlan);
 		skb = NULL;
 
 		/* update budget accounting */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_type.h b/drivers/net/ethernet/intel/iavf/iavf_type.h
index e000971e3c01..3dc0907bf70d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_type.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_type.h
@@ -206,46 +206,86 @@ struct iavf_rx_desc {
 #define IAVF_RXD_LEGACY_RSS_M			GENMASK_ULL(63, 32)
 /* Stripped C-TAG VLAN from the receive packet */
 #define IAVF_RXD_LEGACY_L2TAG1_M		GENMASK_ULL(33, 16)
+/* Packet type */
+#define IAVF_RXD_FLEX_PTYPE_M			GENMASK_ULL(25, 16)
+/* Packet length */
+#define IAVF_RXD_FLEX_PKT_LEN_M			GENMASK_ULL(45, 32)
 
 	aligned_le64 qw1;
+/* End of packet. Set to 1 if this descriptor is the last one of the packet */
+#define IAVF_RXD_LEGACY_EOP_M			BIT(1)
+/* L2 TAG 1 presence indication */
+#define IAVF_RXD_LEGACY_L2TAG1P_M		BIT(2)
+/* Detectable L3 and L4 integrity check is processed by the HW */
+#define IAVF_RXD_LEGACY_L3L4P_M			BIT(3)
+/* Set when an IPv6 packet contains a Destination Options Header or a Routing
+ * Header.
+ */
+#define IAVF_RXD_LEGACY_IPV6EXADD_M		BIT(15)
+/* Receive MAC Errors: CRC; Alignment; Oversize; Undersizes; Length error */
+#define IAVF_RXD_LEGACY_RXE_M			BIT(19)
+/* Checksum reports:
+ * - IPE: IP checksum error
+ * - L4E: L4 integrity error
+ * - EIPE: External IP header (tunneled packets)
+ */
+#define IAVF_RXD_LEGACY_IPE_M			BIT(22)
+#define IAVF_RXD_LEGACY_L4E_M			BIT(23)
+#define IAVF_RXD_LEGACY_EIPE_M			BIT(24)
+/* Set for packets that skip checksum calculation in pre-parser */
+#define IAVF_RXD_LEGACY_PPRS_M			BIT(26)
+/* Indicates the content in the Filter Status field */
+#define IAVF_RXD_LEGACY_FLTSTAT_M		GENMASK_ULL(13, 12)
+/* Packet type */
+#define IAVF_RXD_LEGACY_PTYPE_M			GENMASK_ULL(37, 30)
+/* Packet length */
+#define IAVF_RXD_LEGACY_LENGTH_M		GENMASK_ULL(51, 38)
+/* Descriptor done indication flag */
+#define IAVF_RXD_FLEX_DD_M			BIT(0)
+/* End of packet. Set to 1 if this descriptor is the last one of the packet */
+#define IAVF_RXD_FLEX_EOP_M			BIT(1)
+/* Detectable L3 and L4 integrity check is processed by the HW */
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
+/* Set when an IPv6 packet contains a Destination Options Header or a Routing
+ * Header.
+ */
+#define IAVF_RXD_FLEX_IPV6EXADD_M		BIT(9)
+/* Receive MAC Errors: CRC; Alignment; Oversize; Undersizes; Length error */
+#define IAVF_RXD_FLEX_RXE_M			BIT(10)
+/* Indicates that the RSS/HASH result is valid */
+#define IAVF_RXD_FLEX_RSS_VALID_M		BIT(12)
+/* L2 TAG 1 presence indication */
+#define IAVF_RXD_FLEX_L2TAG1P_M			BIT(13)
+/* Stripped L2 Tag from the receive packet */
+#define IAVF_RXD_FLEX_L2TAG1_M			GENMASK_ULL(31, 16)
+/* The hash signature (RSS) */
+#define IAVF_RXD_FLEX_RSS_HASH_M		GENMASK_ULL(63, 32)
+
 	aligned_le64 qw2;
+/* L2 Tag 2 Presence */
+#define IAVF_RXD_LEGACY_L2TAG2P_M		BIT(0)
 /* Stripped S-TAG VLAN from the receive packet */
-#define IAVF_RXD_LEGACY_L2TAG2_2_M		GENMASK_ULL(63, 48)
-/* Extended status bits */
-#define IAVF_RXD_LEGACY_EXT_STATUS_M		GENMASK_ULL(11, 0)
-
+#define IAVF_RXD_LEGACY_L2TAG2_M		GENMASK_ULL(63, 32)
+/* Stripped S-TAG VLAN from the receive packet */
+#define IAVF_RXD_FLEX_L2TAG2_2_M		GENMASK_ULL(63, 48)
+/* The packet is a UDP tunneled packet */
+#define IAVF_RXD_FLEX_NAT_M			BIT(4)
+/* L2 Tag 2 Presence */
+#define IAVF_RXD_FLEX_L2TAG2P_M			BIT(11)
 	aligned_le64 qw3;
 } __aligned(4 * sizeof(__le64));
 static_assert(sizeof(struct iavf_rx_desc) == 32);
 
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
@@ -261,22 +301,6 @@ enum iavf_rx_desc_fltstat_values {
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
@@ -285,13 +309,6 @@ enum iavf_rx_desc_error_l3l4e_fcoe_masks {
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

