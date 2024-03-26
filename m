Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5093E88C178
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 13:01:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AAD9D60AEB;
	Tue, 26 Mar 2024 12:01:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hCv4G7R-q6mQ; Tue, 26 Mar 2024 12:00:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6891560B24
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711454459;
	bh=6mEgUSP8q1UgRNdAt5nvP8mA4IZgmkH93OyQVlBUeyw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1vmIRWPh3eO7b3UUnRPBEoGkEX3dOAMTD9po0d5vOtCJYtpZoG355p0FliINj4jxQ
	 VJtR0fKRd/DVk7DjOrL+r8rv8XfStb+5SwTq4TbJfaQuoSutFhLd6b/hm+2u7PXes4
	 Fo4lz18tS9PcSizGeVVykyXZeRbWudJLdcvMuTvbGT9MtwzuMx1FUBImeLHezan6nk
	 4VQpgYNJDdkwTz1CL/hibMbNneZMW/eQ1zUgkGr9E3n3O1+imednipRAQOlxqUQ4OO
	 NoSXvsubhL/AW+/YWdUbWpVZhPO/nVnRtPjBGZ5JOizrjLJWxiaMAxOmwbG3pnwf5W
	 t/0dkSTCXIuVQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6891560B24;
	Tue, 26 Mar 2024 12:00:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5225B1BF45A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 12:00:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4BBBC407CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 12:00:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AfOYWNeGv8Yo for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 12:00:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1A7F3407A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A7F3407A6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1A7F3407A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 12:00:52 +0000 (UTC)
X-CSE-ConnectionGUID: Fq5A5a+aRZmuPopmucksig==
X-CSE-MsgGUID: yYckHpm9T1+AimJpzVeG/Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="6394872"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; 
   d="scan'208";a="6394872"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 05:00:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="16019721"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa008.fm.intel.com with ESMTP; 26 Mar 2024 05:00:42 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 161F328160;
 Tue, 26 Mar 2024 12:00:41 +0000 (GMT)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Mar 2024 07:51:14 -0400
Message-Id: <20240326115116.10040-10-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240326115116.10040-1-mateusz.polchlopek@intel.com>
References: <20240326115116.10040-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711454453; x=1742990453;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bpgP7LcEZBQhJEtMnPxp4ez2C6iuKb7yg5+dRJgCaH0=;
 b=DtYt2IGslv4dBUTo3yj0OjmJwKgX8zjF4F/0msVTABJohgYgK2Cua2Eu
 bAJuSCi+nzbu6rzvWz+WbP42Xw9/oieDI4zHyCVoiq+GqvVMqxOU7HqMM
 vVldv81ydNXClidKOV/X5QSAPSJoCDjXV/rDAxy1ZyZfF8jThvwu5B/uF
 n1t9+u4zUwOsQVibRgrSdOIxF1MMe5SDoE6jGVueirHpUYdfu4JwcAmKh
 Wg0SoNZ+H44cEgdKf53GXJiVIAKXOB16lqSyaBPolxqTWtI7Q3CdiIfSP
 v1Y0C34FKOHL89dFdIYXgOBtze9CekA+neXlt6uiibT3ZHKIw9N00Luzi
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DtYt2IGs
Subject: [Intel-wired-lan] [PATCH iwl-next v1 09/12] iavf: refactor
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
 Wojciech Drewek <wojciech.drewek@intel.com>,
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

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 356 +++++++++++++-----
 drivers/net/ethernet/intel/iavf/iavf_txrx.h   |   8 +
 drivers/net/ethernet/intel/iavf/iavf_type.h   | 149 ++++++--
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   6 +
 4 files changed, 393 insertions(+), 126 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index b71484c87a84..e03694d0e1b1 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -972,27 +972,33 @@ bool iavf_alloc_rx_buffers(struct iavf_ring *rx_ring, u16 cleaned_count)
 	return true;
 }
 
+/* iavf_rx_csum_decoded
+ *
+ * Checksum offload bits decoded from the receive descriptor.
+ */
+struct iavf_rx_csum_decoded {
+	u8 l3l4p : 1;
+	u8 ipe : 1;
+	u8 eipe : 1;
+	u8 eudpe : 1;
+	u8 ipv6exadd : 1;
+	u8 l4e : 1;
+	u8 pprs : 1;
+	u8 nat : 1;
+};
+
 /**
- * iavf_rx_checksum - Indicate in skb if hw indicated a good cksum
+ * iavf_rx_csum - Indicate in skb if hw indicated a good checksum
  * @vsi: the VSI we care about
  * @skb: skb currently being received and modified
- * @rx_desc: the receive descriptor
+ * @ptype: decoded ptype information
+ * @csum_bits: decoded Rx descriptor information
  **/
-static void iavf_rx_checksum(struct iavf_vsi *vsi,
-			     struct sk_buff *skb,
-			     union iavf_rx_desc *rx_desc)
+static inline void iavf_rx_csum(struct iavf_vsi *vsi, struct sk_buff *skb,
+				struct iavf_rx_ptype_decoded *ptype,
+				struct iavf_rx_csum_decoded *csum_bits)
 {
-	struct iavf_rx_ptype_decoded decoded;
-	u32 rx_error, rx_status;
 	bool ipv4, ipv6;
-	u8 ptype;
-	u64 qword;
-
-	qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
-	ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
-	rx_error = FIELD_GET(IAVF_RXD_QW1_ERROR_MASK, qword);
-	rx_status = FIELD_GET(IAVF_RXD_QW1_STATUS_MASK, qword);
-	decoded = decode_rx_desc_ptype(ptype);
 
 	skb->ip_summed = CHECKSUM_NONE;
 
@@ -1003,42 +1009,45 @@ static void iavf_rx_checksum(struct iavf_vsi *vsi,
 		return;
 
 	/* did the hardware decode the packet and checksum? */
-	if (!(rx_status & BIT(IAVF_RX_DESC_STATUS_L3L4P_SHIFT)))
+	if (!csum_bits->l3l4p)
 		return;
 
 	/* both known and outer_ip must be set for the below code to work */
-	if (!(decoded.known && decoded.outer_ip))
+	if (!(ptype->known && ptype->outer_ip))
 		return;
 
-	ipv4 = (decoded.outer_ip == IAVF_RX_PTYPE_OUTER_IP) &&
-	       (decoded.outer_ip_ver == IAVF_RX_PTYPE_OUTER_IPV4);
-	ipv6 = (decoded.outer_ip == IAVF_RX_PTYPE_OUTER_IP) &&
-	       (decoded.outer_ip_ver == IAVF_RX_PTYPE_OUTER_IPV6);
+	ipv4 = (ptype->outer_ip == IAVF_RX_PTYPE_OUTER_IP) &&
+		(ptype->outer_ip_ver == IAVF_RX_PTYPE_OUTER_IPV4);
+	ipv6 = (ptype->outer_ip == IAVF_RX_PTYPE_OUTER_IP) &&
+		(ptype->outer_ip_ver == IAVF_RX_PTYPE_OUTER_IPV6);
 
-	if (ipv4 &&
-	    (rx_error & (BIT(IAVF_RX_DESC_ERROR_IPE_SHIFT) |
-			 BIT(IAVF_RX_DESC_ERROR_EIPE_SHIFT))))
+	if (ipv4 && (csum_bits->ipe || csum_bits->eipe))
 		goto checksum_fail;
 
 	/* likely incorrect csum if alternate IP extension headers found */
-	if (ipv6 &&
-	    rx_status & BIT(IAVF_RX_DESC_STATUS_IPV6EXADD_SHIFT))
-		/* don't increment checksum err here, non-fatal err */
+	if (ipv6 && csum_bits->ipv6exadd)
 		return;
 
 	/* there was some L4 error, count error and punt packet to the stack */
-	if (rx_error & BIT(IAVF_RX_DESC_ERROR_L4E_SHIFT))
+	if (csum_bits->l4e)
 		goto checksum_fail;
 
 	/* handle packets that were not able to be checksummed due
 	 * to arrival speed, in this case the stack can compute
 	 * the csum.
 	 */
-	if (rx_error & BIT(IAVF_RX_DESC_ERROR_PPRS_SHIFT))
+	if (csum_bits->pprs)
 		return;
 
+	/* If there is an outer header present that might contain a checksum
+	 * we need to bump the checksum level by 1 to reflect the fact that
+	 * we are indicating we validated the inner checksum.
+	 */
+	if (ptype->tunnel_type >= IAVF_RX_PTYPE_TUNNEL_IP_GRENAT)
+		skb->csum_level = 1;
+
 	/* Only report checksum unnecessary for TCP, UDP, or SCTP */
-	switch (decoded.inner_prot) {
+	switch (ptype->inner_prot) {
 	case IAVF_RX_PTYPE_INNER_PROT_TCP:
 	case IAVF_RX_PTYPE_INNER_PROT_UDP:
 	case IAVF_RX_PTYPE_INNER_PROT_SCTP:
@@ -1054,13 +1063,91 @@ static void iavf_rx_checksum(struct iavf_vsi *vsi,
 	vsi->back->hw_csum_rx_error++;
 }
 
+/**
+ * iavf_legacy_rx_csum - Indicate in skb if hw indicated a good cksum
+ * @vsi: the VSI we care about
+ * @skb: skb currently being received and modified
+ * @rx_desc: the receive descriptor
+ *
+ * This function only operates on the VIRTCHNL_RXDID_1_32B_BASE legacy 32byte
+ * descriptor writeback format.
+ **/
+static inline void iavf_legacy_rx_csum(struct iavf_vsi *vsi,
+				       struct sk_buff *skb,
+				       union iavf_rx_desc *rx_desc)
+{
+	struct iavf_rx_csum_decoded csum_bits;
+	struct iavf_rx_ptype_decoded decoded;
+	u32 rx_error, rx_status;
+	u64 qword;
+	u16 ptype;
+
+	qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
+	ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
+	rx_error = FIELD_GET(IAVF_RXD_QW1_ERROR_MASK, qword);
+	rx_status = FIELD_GET(IAVF_RXD_QW1_STATUS_MASK, qword);
+	decoded = decode_rx_desc_ptype(ptype);
+
+	csum_bits.ipe = FIELD_GET(IAVF_RX_DESC_ERROR_IPE_MASK, rx_error);
+	csum_bits.eipe = FIELD_GET(IAVF_RX_DESC_ERROR_EIPE_MASK, rx_error);
+	csum_bits.l4e = FIELD_GET(IAVF_RX_DESC_ERROR_L4E_MASK, rx_error);
+	csum_bits.pprs = FIELD_GET(IAVF_RX_DESC_ERROR_PPRS_MASK, rx_error);
+	csum_bits.l3l4p = FIELD_GET(IAVF_RX_DESC_STATUS_L3L4P_MASK, rx_error);
+	csum_bits.ipv6exadd = FIELD_GET(IAVF_RX_DESC_STATUS_IPV6EXADD_MASK,
+					rx_error);
+	csum_bits.nat = 0;
+	csum_bits.eudpe = 0;
+
+	iavf_rx_csum(vsi, skb, &decoded, &csum_bits);
+}
+
+/**
+ * iavf_flex_rx_csum - Indicate in skb if hw indicated a good cksum
+ * @vsi: the VSI we care about
+ * @skb: skb currently being received and modified
+ * @rx_desc: the receive descriptor
+ *
+ * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
+ * descriptor writeback format.
+ **/
+static inline void iavf_flex_rx_csum(struct iavf_vsi *vsi, struct sk_buff *skb,
+				     union iavf_rx_desc *rx_desc)
+{
+	struct iavf_rx_csum_decoded csum_bits;
+	struct iavf_rx_ptype_decoded decoded;
+	u16 rx_status0, rx_status1, ptype;
+
+	rx_status0 = le16_to_cpu(rx_desc->flex_wb.status_error0);
+	rx_status1 = le16_to_cpu(rx_desc->flex_wb.status_error1);
+	ptype = le16_to_cpu(FIELD_GET(IAVF_RX_FLEX_DESC_PTYPE_M,
+				      rx_desc->flex_wb.ptype_flexi_flags0));
+	decoded = decode_rx_desc_ptype(ptype);
+
+	csum_bits.ipe = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_XSUM_IPE_M,
+				  rx_status0);
+	csum_bits.eipe = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_XSUM_EIPE_M,
+				   rx_status0);
+	csum_bits.l4e = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_XSUM_L4E_M,
+				  rx_status0);
+	csum_bits.eudpe = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_XSUM_EUDPE_M,
+				    rx_status0);
+	csum_bits.l3l4p = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_L3L4P_M,
+				    rx_status0);
+	csum_bits.ipv6exadd = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_IPV6EXADD_M,
+					rx_status0);
+	csum_bits.nat = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS1_NAT_M, rx_status0);
+	csum_bits.pprs = 0;
+
+	iavf_rx_csum(vsi, skb, &decoded, &csum_bits);
+}
+
 /**
  * iavf_ptype_to_htype - get a hash type
  * @ptype: the ptype value from the descriptor
  *
  * Returns a hash type to be used by skb_set_hash
  **/
-static int iavf_ptype_to_htype(u8 ptype)
+static int iavf_ptype_to_htype(u16 ptype)
 {
 	struct iavf_rx_ptype_decoded decoded = decode_rx_desc_ptype(ptype);
 
@@ -1078,21 +1165,21 @@ static int iavf_ptype_to_htype(u8 ptype)
 }
 
 /**
- * iavf_rx_hash - set the hash value in the skb
+ * iavf_legacy_rx_hash - set the hash value in the skb
  * @ring: descriptor ring
  * @rx_desc: specific descriptor
  * @skb: skb currently being received and modified
  * @rx_ptype: Rx packet type
+ *
+ * This function only operates on the VIRTCHNL_RXDID_1_32B_BASE legacy 32byte
+ * descriptor writeback format.
  **/
-static void iavf_rx_hash(struct iavf_ring *ring,
-			 union iavf_rx_desc *rx_desc,
-			 struct sk_buff *skb,
-			 u8 rx_ptype)
+static inline void iavf_legacy_rx_hash(struct iavf_ring *ring,
+				       union iavf_rx_desc *rx_desc,
+				       struct sk_buff *skb, u8 rx_ptype)
 {
 	u32 hash;
-	const __le64 rss_mask =
-		cpu_to_le64((u64)IAVF_RX_DESC_FLTSTAT_RSS_HASH <<
-			    IAVF_RX_DESC_STATUS_FLTSTAT_SHIFT);
+	const __le64 rss_mask = IAVF_RX_DESC_STATUS_FLTSTAT_MASK;
 
 	if (!(ring->netdev->features & NETIF_F_RXHASH))
 		return;
@@ -1103,6 +1190,33 @@ static void iavf_rx_hash(struct iavf_ring *ring,
 	}
 }
 
+/**
+ * iavf_flex_rx_hash - set the hash value in the skb
+ * @ring: descriptor ring
+ * @rx_desc: specific descriptor
+ * @skb: skb currently being received and modified
+ * @rx_ptype: Rx packet type
+ *
+ * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
+ * descriptor writeback format.
+ **/
+static inline void iavf_flex_rx_hash(struct iavf_ring *ring,
+				     union iavf_rx_desc *rx_desc,
+				     struct sk_buff *skb, u16 rx_ptype)
+{
+	__le16 status0;
+
+	if (!(ring->netdev->features & NETIF_F_RXHASH))
+		return;
+
+	status0 = rx_desc->flex_wb.status_error0;
+	if (status0 & cpu_to_le16(IAVF_RX_FLEX_DESC_STATUS0_RSS_VALID_M)) {
+		u32 hash = le32_to_cpu(rx_desc->flex_wb.rss_hash);
+
+		skb_set_hash(skb, hash, iavf_ptype_to_htype(rx_ptype));
+	}
+}
+
 /**
  * iavf_process_skb_fields - Populate skb header fields from Rx descriptor
  * @rx_ring: rx descriptor ring packet is being transacted on
@@ -1114,14 +1228,19 @@ static void iavf_rx_hash(struct iavf_ring *ring,
  * order to populate the hash, checksum, VLAN, protocol, and
  * other fields within the skb.
  **/
-static void
-iavf_process_skb_fields(struct iavf_ring *rx_ring,
-			union iavf_rx_desc *rx_desc, struct sk_buff *skb,
-			u8 rx_ptype)
+static void iavf_process_skb_fields(struct iavf_ring *rx_ring,
+				    union iavf_rx_desc *rx_desc,
+				    struct sk_buff *skb, u16 rx_ptype)
 {
-	iavf_rx_hash(rx_ring, rx_desc, skb, rx_ptype);
+	if (rx_ring->rxdid == VIRTCHNL_RXDID_1_32B_BASE) {
+		iavf_legacy_rx_hash(rx_ring, rx_desc, skb, rx_ptype);
+
+		iavf_legacy_rx_csum(rx_ring->vsi, skb, rx_desc);
+	} else {
+		iavf_flex_rx_hash(rx_ring, rx_desc, skb, rx_ptype);
 
-	iavf_rx_checksum(rx_ring->vsi, skb, rx_desc);
+		iavf_flex_rx_csum(rx_ring->vsi, skb, rx_desc);
+	}
 
 	skb_record_rx_queue(skb, rx_ring->queue_index);
 
@@ -1450,7 +1569,7 @@ static void iavf_put_rx_buffer(struct iavf_ring *rx_ring,
 /**
  * iavf_is_non_eop - process handling of non-EOP buffers
  * @rx_ring: Rx ring being processed
- * @rx_desc: Rx descriptor for current buffer
+ * @fields: Rx descriptor extracted fields
  * @skb: Current socket buffer containing buffer in progress
  *
  * This function updates next to clean.  If the buffer is an EOP buffer
@@ -1459,7 +1578,7 @@ static void iavf_put_rx_buffer(struct iavf_ring *rx_ring,
  * that this is in fact a non-EOP buffer.
  **/
 static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
-			    union iavf_rx_desc *rx_desc,
+			    struct iavf_rx_extracted *fields,
 			    struct sk_buff *skb)
 {
 	u32 ntc = rx_ring->next_to_clean + 1;
@@ -1471,8 +1590,7 @@ static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
 	prefetch(IAVF_RX_DESC(rx_ring, ntc));
 
 	/* if we are the last buffer then there is nothing else to do */
-#define IAVF_RXD_EOF BIT(IAVF_RX_DESC_STATUS_EOF_SHIFT)
-	if (likely(iavf_test_staterr(rx_desc, IAVF_RXD_EOF)))
+	if (likely(fields->end_of_packet))
 		return false;
 
 	rx_ring->rx_stats.non_eop_descs++;
@@ -1480,6 +1598,92 @@ static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
 	return true;
 }
 
+/**
+ * iavf_extract_legacy_rx_fields - Extract fields from the Rx descriptor
+ * @rx_ring: rx descriptor ring
+ * @rx_desc: the descriptor to process
+ * @fields: storage for extracted values
+ *
+ * Decode the Rx descriptor and extract relevant information including the
+ * size, VLAN tag, Rx packet type, end of packet field and RXE field value.
+ *
+ * This function only operates on the VIRTCHNL_RXDID_1_32B_BASE legacy 32byte
+ * descriptor writeback format.
+ */
+static inline void iavf_extract_legacy_rx_fields(struct iavf_ring *rx_ring,
+						 union iavf_rx_desc *rx_desc,
+						 struct iavf_rx_extracted *fields)
+{
+	u64 qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
+
+	fields->size = FIELD_GET(IAVF_RXD_QW1_LENGTH_PBUF_MASK, qword);
+	fields->rx_ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
+
+	if (qword & IAVF_RX_DESC_STATUS_L2TAG1P_MASK &&
+	    rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1)
+		fields->vlan_tag = le16_to_cpu(rx_desc->wb.qword0.lo_dword.l2tag1);
+
+	if (rx_desc->wb.qword2.ext_status &
+	    cpu_to_le16(BIT(IAVF_RX_DESC_EXT_STATUS_L2TAG2P_SHIFT)) &&
+	    rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2)
+		fields->vlan_tag = le16_to_cpu(rx_desc->wb.qword2.l2tag2_2);
+
+	fields->end_of_packet = FIELD_GET(IAVF_RX_DESC_STATUS_EOF_MASK, qword);
+	fields->rxe = FIELD_GET(BIT(IAVF_RXD_QW1_ERROR_SHIFT), qword);
+}
+
+/**
+ * iavf_extract_flex_rx_fields - Extract fields from the Rx descriptor
+ * @rx_ring: rx descriptor ring
+ * @rx_desc: the descriptor to process
+ * @fields: storage for extracted values
+ *
+ * Decode the Rx descriptor and extract relevant information including the
+ * size, VLAN tag, Rx packet type, end of packet field and RXE field value.
+ *
+ * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
+ * descriptor writeback format.
+ */
+static inline void iavf_extract_flex_rx_fields(struct iavf_ring *rx_ring,
+					       union iavf_rx_desc *rx_desc,
+					       struct iavf_rx_extracted *fields)
+{
+	__le16 status0, status1, flexi_flags0;
+
+	fields->size = FIELD_GET(IAVF_RX_FLEX_DESC_PKT_LEN_M,
+				 le16_to_cpu(rx_desc->flex_wb.pkt_len));
+
+	flexi_flags0 = rx_desc->flex_wb.ptype_flexi_flags0;
+
+	fields->rx_ptype = FIELD_GET(IAVF_RX_FLEX_DESC_PTYPE_M,
+				     le16_to_cpu(flexi_flags0));
+
+	status0 = rx_desc->flex_wb.status_error0;
+	if (status0 & cpu_to_le16(IAVF_RX_FLEX_DESC_STATUS0_L2TAG1P_M) &&
+	    rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1)
+		fields->vlan_tag = le16_to_cpu(rx_desc->flex_wb.l2tag1);
+
+	status1 = rx_desc->flex_wb.status_error1;
+	if (status1 & cpu_to_le16(IAVF_RX_FLEX_DESC_STATUS1_L2TAG2P_M) &&
+	    rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2)
+		fields->vlan_tag = le16_to_cpu(rx_desc->flex_wb.l2tag2_2nd);
+
+	fields->end_of_packet = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS_ERR0_EOP_BIT,
+					  le16_to_cpu(status0));
+	fields->rxe = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS_ERR0_RXE_BIT,
+				le16_to_cpu(status0));
+}
+
+static inline void iavf_extract_rx_fields(struct iavf_ring *rx_ring,
+					  union iavf_rx_desc *rx_desc,
+					  struct iavf_rx_extracted *fields)
+{
+	if (rx_ring->rxdid == VIRTCHNL_RXDID_1_32B_BASE)
+		iavf_extract_legacy_rx_fields(rx_ring, rx_desc, fields);
+	else
+		iavf_extract_flex_rx_fields(rx_ring, rx_desc, fields);
+}
+
 /**
  * iavf_clean_rx_irq - Clean completed descriptors from Rx ring - bounce buf
  * @rx_ring: rx descriptor ring to transact packets on
@@ -1500,12 +1704,9 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 	bool failure = false;
 
 	while (likely(total_rx_packets < (unsigned int)budget)) {
+		struct iavf_rx_extracted fields = {};
 		struct iavf_rx_buffer *rx_buffer;
 		union iavf_rx_desc *rx_desc;
-		unsigned int size;
-		u16 vlan_tag = 0;
-		u8 rx_ptype;
-		u64 qword;
 
 		/* return some buffers to hardware, one at a time is too slow */
 		if (cleaned_count >= IAVF_RX_BUFFER_WRITE) {
@@ -1516,39 +1717,32 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 
 		rx_desc = IAVF_RX_DESC(rx_ring, rx_ring->next_to_clean);
 
-		/* status_error_len will always be zero for unused descriptors
-		 * because it's cleared in cleanup, and overlaps with hdr_addr
-		 * which is always zero because packet split isn't used, if the
-		 * hardware wrote DD then the length will be non-zero
-		 */
-		qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
-
 		/* This memory barrier is needed to keep us from reading
 		 * any other fields out of the rx_desc until we have
 		 * verified the descriptor has been written back.
 		 */
 		dma_rmb();
-#define IAVF_RXD_DD BIT(IAVF_RX_DESC_STATUS_DD_SHIFT)
-		if (!iavf_test_staterr(rx_desc, IAVF_RXD_DD))
+		if (!iavf_test_staterr(rx_desc, IAVF_RX_DESC_STATUS_DD_MASK))
 			break;
 
-		size = FIELD_GET(IAVF_RXD_QW1_LENGTH_PBUF_MASK, qword);
+		iavf_extract_rx_fields(rx_ring, rx_desc, &fields);
 
 		iavf_trace(clean_rx_irq, rx_ring, rx_desc, skb);
-		rx_buffer = iavf_get_rx_buffer(rx_ring, size);
+		rx_buffer = iavf_get_rx_buffer(rx_ring, fields.size);
 
 		/* retrieve a buffer from the ring */
 		if (skb)
-			iavf_add_rx_frag(rx_ring, rx_buffer, skb, size);
+			iavf_add_rx_frag(rx_ring, rx_buffer, skb, fields.size);
 		else if (ring_uses_build_skb(rx_ring))
-			skb = iavf_build_skb(rx_ring, rx_buffer, size);
+			skb = iavf_build_skb(rx_ring, rx_buffer, fields.size);
 		else
-			skb = iavf_construct_skb(rx_ring, rx_buffer, size);
+			skb = iavf_construct_skb(rx_ring, rx_buffer,
+						 fields.size);
 
 		/* exit if we failed to retrieve a buffer */
 		if (!skb) {
 			rx_ring->rx_stats.alloc_buff_failed++;
-			if (rx_buffer && size)
+			if (rx_buffer && fields.size)
 				rx_buffer->pagecnt_bias++;
 			break;
 		}
@@ -1556,15 +1750,14 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		iavf_put_rx_buffer(rx_ring, rx_buffer);
 		cleaned_count++;
 
-		if (iavf_is_non_eop(rx_ring, rx_desc, skb))
+		if (iavf_is_non_eop(rx_ring, &fields, skb))
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
@@ -1578,22 +1771,11 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		/* probably a little skewed due to removing CRC */
 		total_rx_bytes += skb->len;
 
-		qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
-		rx_ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
-
 		/* populate checksum, VLAN, and protocol */
-		iavf_process_skb_fields(rx_ring, rx_desc, skb, rx_ptype);
-
-		if (qword & BIT(IAVF_RX_DESC_STATUS_L2TAG1P_SHIFT) &&
-		    rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1)
-			vlan_tag = le16_to_cpu(rx_desc->wb.qword0.lo_dword.l2tag1);
-		if (rx_desc->wb.qword2.ext_status &
-		    cpu_to_le16(BIT(IAVF_RX_DESC_EXT_STATUS_L2TAG2P_SHIFT)) &&
-		    rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2)
-			vlan_tag = le16_to_cpu(rx_desc->wb.qword2.l2tag2_2);
+		iavf_process_skb_fields(rx_ring, rx_desc, skb, fields.rx_ptype);
 
 		iavf_trace(clean_rx_irq_rx, rx_ring, rx_desc, skb);
-		iavf_receive_skb(rx_ring, skb, vlan_tag);
+		iavf_receive_skb(rx_ring, skb, fields.vlan_tag);
 		skb = NULL;
 
 		/* update budget accounting */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index 97055c63e866..67e51b4883bc 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
@@ -170,6 +170,14 @@ static inline bool iavf_test_staterr(union iavf_rx_desc *rx_desc,
 		  cpu_to_le64(stat_err_bits));
 }
 
+struct iavf_rx_extracted {
+	unsigned int size;
+	u16 vlan_tag;
+	u16 rx_ptype;
+	u8 end_of_packet:1;
+	u8 rxe:1;
+};
+
 /* How many Rx Buffers do we bundle into one write to the hardware ? */
 #define IAVF_RX_INCREMENT(r, i) \
 	do {					\
diff --git a/drivers/net/ethernet/intel/iavf/iavf_type.h b/drivers/net/ethernet/intel/iavf/iavf_type.h
index 2b6a207fa441..90447a8c3a7a 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_type.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_type.h
@@ -208,6 +208,45 @@ union iavf_16byte_rx_desc {
 	} wb;  /* writeback */
 };
 
+/* Rx Flex Descriptor NIC Profile
+ * RxDID Profile ID 2
+ * Flex-field 0: RSS hash lower 16-bits
+ * Flex-field 1: RSS hash upper 16-bits
+ * Flex-field 2: Flow ID lower 16-bits
+ * Flex-field 3: Flow ID higher 16-bits
+ * Flex-field 4: reserved, VLAN ID taken from L2Tag
+ */
+struct iavf_32byte_rx_flex_wb {
+	/* Qword 0 */
+	u8 rxdid;
+	u8 mir_id_umb_cast;
+	__le16 ptype_flexi_flags0;
+	__le16 pkt_len;
+	__le16 hdr_len_sph_flex_flags1;
+
+	/* Qword 1 */
+	__le16 status_error0;
+	__le16 l2tag1;
+	__le32 rss_hash;
+
+	/* Qword 2 */
+	__le16 status_error1;
+	u8 flexi_flags2;
+	u8 ts_low;
+	__le16 l2tag2_1st;
+	__le16 l2tag2_2nd;
+
+	/* Qword 3 */
+	__le32 flow_id;
+	union {
+		struct {
+			__le16 rsvd;
+			__le16 flow_id_ipv6;
+		} flex;
+		__le32 ts_high;
+	} flex_ts;
+};
+
 union iavf_32byte_rx_desc {
 	struct {
 		__le64  pkt_addr; /* Packet buffer address */
@@ -255,35 +294,34 @@ union iavf_32byte_rx_desc {
 			} hi_dword;
 		} qword3;
 	} wb;  /* writeback */
-};
+	struct iavf_32byte_rx_flex_wb flex_wb;
+};
+
+/* Note: These are predefined bit offsets */
+#define IAVF_RX_DESC_STATUS_DD_MASK		BIT(0)
+#define IAVF_RX_DESC_STATUS_EOF_MASK		BIT(1)
+#define IAVF_RX_DESC_STATUS_L2TAG1P_MASK	BIT(2)
+#define IAVF_RX_DESC_STATUS_L3L4P_MASK		BIT(3)
+#define IAVF_RX_DESC_STATUS_CRCP_MASK		BIT(4)
+#define IAVF_RX_DESC_STATUS_TSYNINDX_MASK	(0x3ULL << 5) /* 2 BITS */
+#define IAVF_RX_DESC_STATUS_TSYNVALID_MASK	BIT(7)
+/* Note: Bit 8 is reserved in X710 and XL710 */
+#define IAVF_RX_DESC_STATUS_EXT_UDP_0_MASK	BIT(8)
+#define IAVF_RX_DESC_STATUS_UMBCAST_MASK	(0x3ULL << 9) /* 2 BITS */
+#define IAVF_RX_DESC_STATUS_FLM_MASK		BIT(11)
+#define IAVF_RX_DESC_STATUS_FLTSTAT_MASK	(0x3ULL << 12) /* 2 BITS */
+#define IAVF_RX_DESC_STATUS_LPBK_MASK		BIT(14)
+#define IAVF_RX_DESC_STATUS_IPV6EXADD_MASK	BIT(15)
+#define IAVF_RX_DESC_STATUS_RESERVED_MASK	(0x3UL << 16) /* 2 BITS */
+/* Note: For non-tunnel packets INT_UDP_0 is the right status for
+ * UDP header
+ */
+#define IAVF_RX_DESC_STATUS_INT_UDP_0_MASK	BIT(18)
 
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
+#define IAVF_RX_FLEX_DESC_STATUS_ERR0_EOP_BIT	BIT(1)
+#define IAVF_RX_FLEX_DESC_STATUS_ERR0_RXE_BIT	BIT(10)
 
-#define IAVF_RXD_QW1_STATUS_SHIFT	0
-#define IAVF_RXD_QW1_STATUS_MASK	((BIT(IAVF_RX_DESC_STATUS_LAST) - 1) \
-					 << IAVF_RXD_QW1_STATUS_SHIFT)
+#define IAVF_RXD_QW1_STATUS_MASK		(BIT(19) - 1)
 
 #define IAVF_RXD_QW1_STATUS_TSYNINDX_SHIFT IAVF_RX_DESC_STATUS_TSYNINDX_SHIFT
 #define IAVF_RXD_QW1_STATUS_TSYNINDX_MASK  (0x3UL << \
@@ -303,18 +341,16 @@ enum iavf_rx_desc_fltstat_values {
 #define IAVF_RXD_QW1_ERROR_SHIFT	19
 #define IAVF_RXD_QW1_ERROR_MASK		(0xFFUL << IAVF_RXD_QW1_ERROR_SHIFT)
 
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
+/* Note: These are predefined bit offsets */
+#define IAVF_RX_DESC_ERROR_RXE_MASK		BIT(0)
+#define IAVF_RX_DESC_ERROR_RECIPE_MASK		BIT(1)
+#define IAVF_RX_DESC_ERROR_HBO_MASK		BIT(2)
+#define IAVF_RX_DESC_ERROR_L3L4E_MASK		(0x7UL << 3)
+#define IAVF_RX_DESC_ERROR_IPE_MASK		BIT(3)
+#define IAVF_RX_DESC_ERROR_L4E_MASK		BIT(4)
+#define IAVF_RX_DESC_ERROR_EIPE_MASK		BIT(5)
+#define IAVF_RX_DESC_ERROR_OVERSIZE_MASK	BIT(6)
+#define IAVF_RX_DESC_ERROR_PPRS_MASK		BIT(7)
 
 enum iavf_rx_desc_error_l3l4e_fcoe_masks {
 	IAVF_RX_DESC_ERROR_L3L4E_NONE		= 0,
@@ -327,6 +363,41 @@ enum iavf_rx_desc_error_l3l4e_fcoe_masks {
 #define IAVF_RXD_QW1_PTYPE_SHIFT	30
 #define IAVF_RXD_QW1_PTYPE_MASK		(0xFFULL << IAVF_RXD_QW1_PTYPE_SHIFT)
 
+/* for iavf_32byte_rx_flex_wb.ptype_flexi_flags0 member */
+#define IAVF_RX_FLEX_DESC_PTYPE_M      (0x3FF) /* 10-bits */
+
+/* for iavf_32byte_rx_flex_wb.pkt_length member */
+#define IAVF_RX_FLEX_DESC_PKT_LEN_M    (0x3FFF) /* 14-bits */
+
+/* Note: These are predefined bit offsets */
+#define IAVF_RX_FLEX_DESC_STATUS0_DD_M			BIT(0)
+#define IAVF_RX_FLEX_DESC_STATUS0_EOF_M			BIT(1)
+#define IAVF_RX_FLEX_DESC_STATUS0_HBO_M			BIT(2)
+#define IAVF_RX_FLEX_DESC_STATUS0_L3L4P_M		BIT(3)
+#define IAVF_RX_FLEX_DESC_STATUS0_XSUM_IPE_M		BIT(4)
+#define IAVF_RX_FLEX_DESC_STATUS0_XSUM_L4E_M		BIT(5)
+#define IAVF_RX_FLEX_DESC_STATUS0_XSUM_EIPE_M		BIT(6)
+#define IAVF_RX_FLEX_DESC_STATUS0_XSUM_EUDPE_M		BIT(7)
+#define IAVF_RX_FLEX_DESC_STATUS0_LPBK_M		BIT(8)
+#define IAVF_RX_FLEX_DESC_STATUS0_IPV6EXADD_M		BIT(9)
+#define IAVF_RX_FLEX_DESC_STATUS0_RXE_M			BIT(10)
+#define IAVF_RX_FLEX_DESC_STATUS0_CRCP_			BIT(11)
+#define IAVF_RX_FLEX_DESC_STATUS0_RSS_VALID_M		BIT(12)
+#define IAVF_RX_FLEX_DESC_STATUS0_L2TAG1P_M		BIT(13)
+#define IAVF_RX_FLEX_DESC_STATUS0_XTRMD0_VALID_M	BIT(14)
+#define IAVF_RX_FLEX_DESC_STATUS0_XTRMD1_VALID_M	BIT(15)
+
+/* Note: These are predefined bit offsets */
+#define IAVF_RX_FLEX_DESC_STATUS1_CPM_M			(0xFULL) /* 4 bits */
+#define IAVF_RX_FLEX_DESC_STATUS1_NAT_M			BIT(4)
+#define IAVF_RX_FLEX_DESC_STATUS1_CRYPTO_M		BIT(5)
+/* [10:6] reserved */
+#define IAVF_RX_FLEX_DESC_STATUS1_L2TAG2P_M		BIT(11)
+#define IAVF_RX_FLEX_DESC_STATUS1_XTRMD2_VALID_M	BIT(12)
+#define IAVF_RX_FLEX_DESC_STATUS1_XTRMD3_VALID_M	BIT(13)
+#define IAVF_RX_FLEX_DESC_STATUS1_XTRMD4_VALID_M	BIT(14)
+#define IAVF_RX_FLEX_DESC_STATUS1_XTRMD5_VALID_M	BIT(15)
+
 /* Packet type non-ip values */
 enum iavf_rx_l2_ptype {
 	IAVF_RX_PTYPE_L2_RESERVED			= 0,
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 1746bb8de6f1..9d0b2ba21498 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -141,6 +141,7 @@ int iavf_send_vf_config_msg(struct iavf_adapter *adapter)
 	       VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2 |
 	       VIRTCHNL_VF_OFFLOAD_ENCAP |
 	       VIRTCHNL_VF_OFFLOAD_VLAN_V2 |
+	       VIRTCHNL_VF_CAP_PTP |
 	       VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC |
 	       VIRTCHNL_VF_OFFLOAD_CRC |
 	       VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM |
@@ -397,6 +398,7 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
 	int i, max_frame = adapter->vf_res->max_mtu;
 	int pairs = adapter->num_active_queues;
 	struct virtchnl_queue_pair_info *vqpi;
+	u8 rx_flags = 0;
 	size_t len;
 
 	if (max_frame > IAVF_MAX_RXBUFFER || !max_frame)
@@ -414,6 +416,9 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
 	if (!vqci)
 		return;
 
+	if (iavf_ptp_cap_supported(adapter, VIRTCHNL_1588_PTP_CAP_RX_TSTAMP))
+		rx_flags |= VIRTCHNL_PTP_RX_TSTAMP;
+
 	/* Limit maximum frame size when jumbo frames is not enabled */
 	if (!(adapter->flags & IAVF_FLAG_LEGACY_RX) &&
 	    (adapter->netdev->mtu <= ETH_DATA_LEN))
@@ -443,6 +448,7 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
 		if (CRC_OFFLOAD_ALLOWED(adapter))
 			vqpi->rxq.crc_disable = !!(adapter->netdev->features &
 						   NETIF_F_RXFCS);
+		vqpi->rxq.flags = rx_flags;
 		vqpi++;
 	}
 
-- 
2.38.1

