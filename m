Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 614B79505F6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Aug 2024 15:08:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5CAAB81E32;
	Tue, 13 Aug 2024 13:08:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t1NYQa3G7HHG; Tue, 13 Aug 2024 13:08:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5C1DC81B72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723554517;
	bh=sGUs8Zp3swRqDCilK/jvU73GQN2OyF45/8jSA205JCE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Png4g2s2zEljIQaYkraCFpXEBEHzl/5U8uCAewTn+GpuyeGqHXJ1qxy0gL8waaZhH
	 djAJUInrR05ZwVFJQB+N17vQMnNsBXYUUCeGmSHDxaM/FG/DBo39c8DPZZctb1e0cX
	 pzXU8HdJvs3GjwPb3EhyH5gSDNSwvi1gWg/cgpT/ZtJ3H9jr/pQveVhkQMDEKWM/uz
	 ospsh1IbXD2CPgX4IL57nHhvIQS2PK1zUF/k72vMMkiC4EcbGywtMmuxzjbqsmsksF
	 g8zpB8ysUueTTSOB9Ht8f1CVZD8X8lk/rJYl4QzOTnZ2GOeEEgrdBL+x83u92e39ot
	 gT8uQiuHlan5Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C1DC81B72;
	Tue, 13 Aug 2024 13:08:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 00F5F1BF275
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 13:08:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EEAAB406E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 13:08:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c-5gVg9GKIuj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Aug 2024 13:08:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 57101406E0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57101406E0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 57101406E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 13:08:19 +0000 (UTC)
X-CSE-ConnectionGUID: +Nhh4ReHQEiuoO8RqH09Zg==
X-CSE-MsgGUID: UlZYASJbR36fBIcohoRYJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="32290941"
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="32290941"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 06:08:18 -0700
X-CSE-ConnectionGUID: KmH/TP2+RDebJse3mTMPBQ==
X-CSE-MsgGUID: Owqdsen2Rn+pncZvvEMjiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="59417158"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa008.jf.intel.com with ESMTP; 13 Aug 2024 06:08:15 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 992FB32C95;
 Tue, 13 Aug 2024 14:08:13 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	aleksander.lobakin@intel.com
Date: Tue, 13 Aug 2024 08:55:11 -0400
Message-Id: <20240813125513.8212-13-mateusz.polchlopek@intel.com>
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
 bh=9WfknfY3gEo5nflsyRpOyU/rMo17JdlH2EcYgg0AfLg=;
 b=JRTa8UR/umqRBb9j97nOrwcxWps39B7GQrgijYZdg1Z95nKYklzn9KUX
 nncnhLUBtf5Ch7ZQ+boimmZuDXL33heFflSagPcdudUALuKcSoDC/wERj
 yHb+LZRPo8cppkxZB4Js4LxyVyJzUuDUGDqfLLU44WXBH3ddpTt3sHUli
 xjeawGmD5P45WgZb6DEIkBN7oGei32qOlYD1/qRGYGOha8vjB/CgYgTQZ
 JQhg0Bbk3e+HHishn2biRPHd/t4QR+GIdgcGrGyq5WISCKYg87AdkGBqS
 K9LyFjUupw5FSRnXEO5U+jJZbiHO3CSR4T6DTPnX6Zpi6IWeZ3Kiw/6By
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JRTa8UR/
Subject: [Intel-wired-lan] [PATCH iwl-next v9 12/14] iavf: Implement
 checking DD desc field
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
Cc: Rahul Rameshbabu <rrameshbabu@nvidia.com>, netdev@vger.kernel.org,
 Wojciech Drewek <wojciech.drewek@intel.com>, Simon Horman <horms@kernel.org>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Rx timestamping introduced in PF driver caused the need of refactoring
the VF driver mechanism to check packet fields.

The function to check errors in descriptor has been removed and from
now only previously set struct fields are being checked. The field DD
(descriptor done) needs to be checked at the very beginning, before
extracting other fields.

Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
Reviewed-by: Simon Horman <horms@kernel.org>
---
 drivers/net/ethernet/intel/iavf/iavf_txrx.c | 90 +++++++++++++++------
 drivers/net/ethernet/intel/iavf/iavf_txrx.h | 16 ----
 2 files changed, 65 insertions(+), 41 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index cbcd6c7e675e..8f529cfaf7a8 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -9,6 +9,28 @@
 #include "iavf_trace.h"
 #include "iavf_prototype.h"
 
+/**
+ * iavf_is_descriptor_done - tests DD bit in Rx descriptor
+ * @rx_ring: the ring parameter to distinguish descriptor type (flex/legacy)
+ * @rx_desc: pointer to receive descriptor
+ *
+ * This function tests the descriptor done bit in specified descriptor. Because
+ * there are two types of descriptors (legacy and flex) the parameter rx_ring
+ * is used to distinguish.
+ *
+ * Return: true or false based on the state of DD bit in Rx descriptor.
+ */
+static bool iavf_is_descriptor_done(struct iavf_ring *rx_ring,
+				    struct iavf_rx_desc *rx_desc)
+{
+	__le64 qw1 = rx_desc->qw1;
+
+	if (rx_ring->rxdid == VIRTCHNL_RXDID_1_32B_BASE)
+		return !!le64_get_bits(qw1, IAVF_RXD_LEGACY_DD_M);
+
+	return !!le64_get_bits(qw1, IAVF_RXD_FLEX_DD_M);
+}
+
 static __le64 build_ctob(u32 td_cmd, u32 td_offset, unsigned int size,
 			 u32 td_tag)
 {
@@ -1223,24 +1245,31 @@ iavf_extract_legacy_rx_fields(const struct iavf_ring *rx_ring,
 			      const struct iavf_rx_desc *rx_desc, u32 *ptype)
 {
 	struct libeth_rqe_info fields = {};
-	u64 qw0 = le64_to_cpu(rx_desc->qw0);
 	u64 qw1 = le64_to_cpu(rx_desc->qw1);
-	u64 qw2 = le64_to_cpu(rx_desc->qw2);
-	bool l2tag1p;
-	bool l2tag2p;
 
-	fields.eop = FIELD_GET(IAVF_RXD_LEGACY_EOP_M, qw1);
 	fields.len = FIELD_GET(IAVF_RXD_LEGACY_LENGTH_M, qw1);
-	fields.rxe = FIELD_GET(IAVF_RXD_LEGACY_RXE_M, qw1);
-	*ptype = FIELD_GET(IAVF_RXD_LEGACY_PTYPE_M, qw1);
-
-	l2tag1p = FIELD_GET(IAVF_RXD_LEGACY_L2TAG1P_M, qw1);
-	if (l2tag1p && (rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1))
-		fields.vlan_tag = FIELD_GET(IAVF_RXD_LEGACY_L2TAG1_M, qw0);
+	fields.eop = FIELD_GET(IAVF_RXD_LEGACY_EOP_M, qw1);
 
-	l2tag2p = FIELD_GET(IAVF_RXD_LEGACY_L2TAG2P_M, qw2);
-	if (l2tag2p && (rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2))
-		fields.vlan_tag = FIELD_GET(IAVF_RXD_LEGACY_L2TAG2_M, qw2);
+	if (fields.eop) {
+		bool l2tag1p, l2tag2p;
+		u64 qw0 = le64_to_cpu(rx_desc->qw0);
+		u64 qw2 = le64_to_cpu(rx_desc->qw2);
+
+		fields.rxe = FIELD_GET(IAVF_RXD_LEGACY_RXE_M, qw1);
+		*ptype = FIELD_GET(IAVF_RXD_LEGACY_PTYPE_M, qw1);
+
+		l2tag1p = FIELD_GET(IAVF_RXD_LEGACY_L2TAG1P_M, qw1);
+		if (l2tag1p &&
+		    (rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1))
+			fields.vlan_tag = FIELD_GET(IAVF_RXD_LEGACY_L2TAG1_M,
+						    qw0);
+
+		l2tag2p = FIELD_GET(IAVF_RXD_LEGACY_L2TAG2P_M, qw2);
+		if (l2tag2p &&
+		    (rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2))
+			fields.vlan_tag = FIELD_GET(IAVF_RXD_LEGACY_L2TAG2_M,
+						    qw2);
+	}
 
 	return fields;
 }
@@ -1266,21 +1295,29 @@ iavf_extract_flex_rx_fields(const struct iavf_ring *rx_ring,
 	struct libeth_rqe_info fields = {};
 	u64 qw0 = le64_to_cpu(rx_desc->qw0);
 	u64 qw1 = le64_to_cpu(rx_desc->qw1);
-	u64 qw2 = le64_to_cpu(rx_desc->qw2);
-	bool l2tag1p, l2tag2p;
 
 	fields.len = FIELD_GET(IAVF_RXD_FLEX_PKT_LEN_M, qw0);
-	fields.rxe = FIELD_GET(IAVF_RXD_FLEX_RXE_M, qw1);
 	fields.eop = FIELD_GET(IAVF_RXD_FLEX_EOP_M, qw1);
-	*ptype = FIELD_GET(IAVF_RXD_FLEX_PTYPE_M, qw0);
 
-	l2tag1p = FIELD_GET(IAVF_RXD_FLEX_L2TAG1P_M, qw1);
-	if (l2tag1p && (rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1))
-		fields.vlan_tag = FIELD_GET(IAVF_RXD_FLEX_L2TAG1_M, qw1);
+	if (fields.len) {
+		bool l2tag1p, l2tag2p;
+		u64 qw2 = le64_to_cpu(rx_desc->qw2);
+
+		fields.rxe = FIELD_GET(IAVF_RXD_FLEX_RXE_M, qw1);
+		*ptype = FIELD_GET(IAVF_RXD_FLEX_PTYPE_M, qw0);
 
-	l2tag2p = FIELD_GET(IAVF_RXD_FLEX_L2TAG2P_M, qw2);
-	if (l2tag2p && (rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2))
-		fields.vlan_tag = FIELD_GET(IAVF_RXD_FLEX_L2TAG2_2_M, qw2);
+		l2tag1p = FIELD_GET(IAVF_RXD_FLEX_L2TAG1P_M, qw1);
+		if (l2tag1p &&
+		    (rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1))
+			fields.vlan_tag = FIELD_GET(IAVF_RXD_FLEX_L2TAG1_M,
+						    qw1);
+
+		l2tag2p = FIELD_GET(IAVF_RXD_FLEX_L2TAG2P_M, qw2);
+		if (l2tag2p &&
+		    (rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2))
+			fields.vlan_tag = FIELD_GET(IAVF_RXD_FLEX_L2TAG2_2_M,
+						    qw2);
+	}
 
 	return fields;
 }
@@ -1335,7 +1372,10 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		 */
 		dma_rmb();
 
-		if (!iavf_test_staterr(rx_desc, IAVF_RXD_FLEX_DD_M))
+		/* If DD field (descriptor done) is unset then other fields are
+		 * not valid
+		 */
+		if (!iavf_is_descriptor_done(rx_ring, rx_desc))
 			break;
 
 		fields = iavf_extract_rx_fields(rx_ring, rx_desc, &ptype);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index 59e7a58bc0f7..b72741f11338 100644
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
-- 
2.38.1

