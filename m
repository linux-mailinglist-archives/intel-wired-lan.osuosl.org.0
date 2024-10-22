Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0619A98B7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 07:41:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 08DE960790;
	Tue, 22 Oct 2024 05:41:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ARF6uFpRjYzG; Tue, 22 Oct 2024 05:41:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2752060766
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729575690;
	bh=0LXwTKD4RjNWt9q3X4MESNpffivISPsRwpxl+XNhBaE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qophsZ00jNs+/Pz/8MWF6cBM/m5yk0Ud+cf4NRbFzmVY/e+tTNpdce7vA3VU44Lru
	 8QPdkmmqfK1FO59jec97tQvy7V3afl2SXUqQtS9CSps0h8dWAJolA9LVQtXMkZ7zld
	 SXnAb7W3+5hRCJ6IKMtb8xthwyWTuhFNfmB6OftnthRKARW7J3W9J0oLx8bR9/I+jR
	 /OUrDPYD0CW4Gdnt70QPdLlu2AlFdOv2g26h7v8EBhpw2rYRZOd422iGL9hxUFebLL
	 m1qXUDCZisCuykiB26HiDEWhHjvg9FgliA5XgiutS836/Tj7EcULxb/gWxb0oT86ES
	 M1/XuJ5sEZyVg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2752060766;
	Tue, 22 Oct 2024 05:41:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1B3B9963
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 05:41:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E7EF44025E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 05:41:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3OnjMK62je54 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 05:41:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org ACE1A4015F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ACE1A4015F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ACE1A4015F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 05:41:21 +0000 (UTC)
X-CSE-ConnectionGUID: C2+NU2sNSZeA5OfqW7fe+A==
X-CSE-MsgGUID: kc9FJJmyR0C592YE3n9Qrg==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="33015631"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="33015631"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 22:41:20 -0700
X-CSE-ConnectionGUID: VXDC8eG+RQunNdCqGPnVOQ==
X-CSE-MsgGUID: La8HS7fCQ5uVVqy+TwhWaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="84558124"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa003.jf.intel.com with ESMTP; 21 Oct 2024 22:41:17 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 16B2227BD9;
 Tue, 22 Oct 2024 06:41:16 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>, Simon Horman <horms@kernel.org>
Date: Tue, 22 Oct 2024 07:41:19 -0400
Message-Id: <20241022114121.61284-13-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20241022114121.61284-1-mateusz.polchlopek@intel.com>
References: <20241022114121.61284-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729575682; x=1761111682;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uTEKeAjxWkCJOzxROyE+zpMPJ3k65YpKKun5rhvspe0=;
 b=fdNiacyg3I0I+p/khdLszVhsgMCG9hx9YBQbXf6hXsXvnBgo9laIQ22Q
 x0TVEqkvMQrVwU1V+NqmvOYHHnacyJCVGzFEdPgZZ3ta8f0x9RnYr3RLq
 0FEK6aY7OcuuFey6d1CX7Ln0R6QBtirbAAyYj8B9riXaNkswu/F1brJ+K
 a8rFKUHPg07IzArQO+M4tsKjvDRuSrn/JGRCd55qe3wkGxGWdPaQAmi1g
 lu0UyqpQfoa3+V/HmnzJfiWUrryFonAee1U7Wr/yFALPOQ2jrDo2f3+KC
 08ePIek5cYu6nVqmoaGw0IebnPXjMZ4P11X75Hbt6FJwUSLqJxlruQfVe
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fdNiacyg
Subject: [Intel-wired-lan] [PATCH iwl-next v12 12/14] iavf: Implement
 checking DD desc field
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

Rx timestamping introduced in PF driver caused the need of refactoring
the VF driver mechanism to check packet fields.

The function to check errors in descriptor has been removed and from
now only previously set struct fields are being checked. The field DD
(descriptor done) needs to be checked at the very beginning, before
extracting other fields.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_txrx.c | 54 ++++++++++++++++-----
 drivers/net/ethernet/intel/iavf/iavf_txrx.h | 16 ------
 drivers/net/ethernet/intel/iavf/iavf_type.h |  2 +
 3 files changed, 43 insertions(+), 29 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 89b71509e521..283997b8a777 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -9,6 +9,25 @@
 #include "iavf_trace.h"
 #include "iavf_prototype.h"
 
+/**
+ * iavf_is_descriptor_done - tests DD bit in Rx descriptor
+ * @qw1: quad word 1 from descriptor to get Descriptor Done field from
+ * @flex: is the descriptor flex or legacy
+ *
+ * This function tests the descriptor done bit in specified descriptor. Because
+ * there are two types of descriptors (legacy and flex) the parameter rx_ring
+ * is used to distinguish.
+ *
+ * Return: true or false based on the state of DD bit in Rx descriptor.
+ */
+static bool iavf_is_descriptor_done(u64 qw1, bool flex)
+{
+	if (flex)
+		return FIELD_GET(IAVF_RXD_FLEX_DD_M, qw1);
+	else
+		return FIELD_GET(IAVF_RXD_LEGACY_DD_M, qw1);
+}
+
 static __le64 build_ctob(u32 td_cmd, u32 td_offset, unsigned int size,
 			 u32 td_tag)
 {
@@ -1063,6 +1082,7 @@ static void iavf_flex_rx_hash(const struct iavf_ring *ring, __le64 qw1,
  * @rx_desc: pointer to the EOP Rx descriptor
  * @skb: pointer to current skb being populated
  * @ptype: the packet type decoded by hardware
+ * @flex: is the descriptor flex or legacy
  *
  * This function checks the ring, descriptor, and packet information in
  * order to populate the hash, checksum, VLAN, protocol, and
@@ -1070,7 +1090,8 @@ static void iavf_flex_rx_hash(const struct iavf_ring *ring, __le64 qw1,
  **/
 static void iavf_process_skb_fields(const struct iavf_ring *rx_ring,
 				    const struct iavf_rx_desc *rx_desc,
-				    struct sk_buff *skb, u32 ptype)
+				    struct sk_buff *skb, u32 ptype,
+				    bool flex)
 {
 	struct libeth_rx_csum csum_bits;
 	struct libeth_rx_pt decoded_pt;
@@ -1079,14 +1100,14 @@ static void iavf_process_skb_fields(const struct iavf_ring *rx_ring,
 
 	decoded_pt = libie_rx_pt_parse(ptype);
 
-	if (rx_ring->rxdid == VIRTCHNL_RXDID_1_32B_BASE) {
-		iavf_legacy_rx_hash(rx_ring, qw0, qw1, skb, decoded_pt);
-		csum_bits = iavf_legacy_rx_csum(rx_ring->vsi, le64_to_cpu(qw1),
-						decoded_pt);
-	} else {
+	if (flex) {
 		iavf_flex_rx_hash(rx_ring, qw1, skb, decoded_pt);
 		csum_bits = iavf_flex_rx_csum(rx_ring->vsi, le64_to_cpu(qw1),
 					      decoded_pt);
+	} else {
+		iavf_legacy_rx_hash(rx_ring, qw0, qw1, skb, decoded_pt);
+		csum_bits = iavf_legacy_rx_csum(rx_ring->vsi, le64_to_cpu(qw1),
+						decoded_pt);
 	}
 	iavf_rx_csum(rx_ring->vsi, skb, decoded_pt, csum_bits);
 
@@ -1296,12 +1317,13 @@ iavf_extract_flex_rx_fields(const struct iavf_ring *rx_ring,
 
 static struct libeth_rqe_info
 iavf_extract_rx_fields(const struct iavf_ring *rx_ring,
-		       const struct iavf_rx_desc *rx_desc)
+		       const struct iavf_rx_desc *rx_desc,
+		       bool flex)
 {
-	if (rx_ring->rxdid == VIRTCHNL_RXDID_1_32B_BASE)
-		return iavf_extract_legacy_rx_fields(rx_ring, rx_desc);
-	else
+	if (flex)
 		return iavf_extract_flex_rx_fields(rx_ring, rx_desc);
+	else
+		return iavf_extract_legacy_rx_fields(rx_ring, rx_desc);
 }
 
 /**
@@ -1318,6 +1340,7 @@ iavf_extract_rx_fields(const struct iavf_ring *rx_ring,
  **/
 static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 {
+	bool flex = rx_ring->rxdid == VIRTCHNL_RXDID_2_FLEX_SQ_NIC;
 	unsigned int total_rx_bytes = 0, total_rx_packets = 0;
 	struct sk_buff *skb = rx_ring->skb;
 	u16 cleaned_count = IAVF_DESC_UNUSED(rx_ring);
@@ -1327,6 +1350,7 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		struct libeth_rqe_info fields;
 		struct libeth_fqe *rx_buffer;
 		struct iavf_rx_desc *rx_desc;
+		u64 qw1;
 
 		/* return some buffers to hardware, one at a time is too slow */
 		if (cleaned_count >= IAVF_RX_BUFFER_WRITE) {
@@ -1343,10 +1367,14 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		 */
 		dma_rmb();
 
-		if (!iavf_test_staterr(rx_desc, IAVF_RXD_FLEX_DD_M))
+		qw1 = le64_to_cpu(rx_desc->qw1);
+		/* If DD field (descriptor done) is unset then other fields are
+		 * not valid
+		 */
+		if (!iavf_is_descriptor_done(qw1, flex))
 			break;
 
-		fields = iavf_extract_rx_fields(rx_ring, rx_desc);
+		fields = iavf_extract_rx_fields(rx_ring, rx_desc, flex);
 
 		iavf_trace(clean_rx_irq, rx_ring, rx_desc, skb);
 
@@ -1391,7 +1419,7 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		total_rx_bytes += skb->len;
 
 		/* populate checksum, VLAN, and protocol */
-		iavf_process_skb_fields(rx_ring, rx_desc, skb, fields.ptype);
+		iavf_process_skb_fields(rx_ring, rx_desc, skb, fields.ptype, flex);
 
 		iavf_trace(clean_rx_irq_rx, rx_ring, rx_desc, skb);
 		iavf_receive_skb(rx_ring, skb, fields.vlan);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index 3a1a39ee3615..dff5c8cd27ab 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
@@ -80,22 +80,6 @@ enum iavf_dyn_idx_t {
 	BIT_ULL(IAVF_FILTER_PCTYPE_NONF_UNICAST_IPV6_UDP) | \
 	BIT_ULL(IAVF_FILTER_PCTYPE_NONF_MULTICAST_IPV6_UDP))
 
-/**
- * iavf_test_staterr - tests bits in Rx descriptor status and error fields
- * @rx_desc: pointer to receive descriptor (in le64 format)
- * @stat_err_bits: value to mask
- *
- * This function does some fast chicanery in order to return the
- * value of the mask which is really only used for boolean tests.
- * The status_error_len doesn't need to be shifted because it begins
- * at offset zero.
- */
-static inline bool iavf_test_staterr(struct iavf_rx_desc *rx_desc,
-				     const u64 stat_err_bits)
-{
-	return !!(rx_desc->qw1 & cpu_to_le64(stat_err_bits));
-}
-
 /* How many Rx Buffers do we bundle into one write to the hardware ? */
 #define IAVF_RX_INCREMENT(r, i) \
 	do {					\
diff --git a/drivers/net/ethernet/intel/iavf/iavf_type.h b/drivers/net/ethernet/intel/iavf/iavf_type.h
index 3dc0907bf70d..e62a8a0067ea 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_type.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_type.h
@@ -212,6 +212,8 @@ struct iavf_rx_desc {
 #define IAVF_RXD_FLEX_PKT_LEN_M			GENMASK_ULL(45, 32)
 
 	aligned_le64 qw1;
+/* Descriptor done indication flag. */
+#define IAVF_RXD_LEGACY_DD_M			BIT(0)
 /* End of packet. Set to 1 if this descriptor is the last one of the packet */
 #define IAVF_RXD_LEGACY_EOP_M			BIT(1)
 /* L2 TAG 1 presence indication */
-- 
2.38.1

