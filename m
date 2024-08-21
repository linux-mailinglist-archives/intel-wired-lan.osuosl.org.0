Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E55A959B9D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 14:19:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2490781384;
	Wed, 21 Aug 2024 12:19:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id egMgPivLuBrs; Wed, 21 Aug 2024 12:19:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C3D39813FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724242745;
	bh=5Z8zHVHW8y+arVUc1z3/vFbM0lVrrqwhEcU9yS74Sno=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wzSBcQhT02vDBIA7+q0evBYbwNoJk5nbDuzFu4DPQTx3cRMT1Po9STpA32hOqIu1h
	 +p0Z+b28ynme+sTSLRV16NboFq+Q/L0aWgHKurMYO6thAW1P7Kp4SICT82R/w4ryOJ
	 jO4L1m9XUjRTJ3+tzTwoC01PRavN11wip53E45b8YTKf/PaTOB3PU+SaM+iE7H8xn+
	 i7KeifwAHk75CvyYaaAQDXov/L8fDXQ5csNSXv27oHuRV+pmmtgMA/gTQzhkOahwiW
	 J91SX6ROPz8byeaC0ljF43NB214ufXbmrnjWHa2Avuj1uVaIIl6pHqG05q28WChu3h
	 Tk4r62OUq2r2w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3D39813FF;
	Wed, 21 Aug 2024 12:19:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1D7CD1BF418
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 12:18:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8592A81357
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 12:18:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9AfUtlPVI5wj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 12:18:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C364781347
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C364781347
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C364781347
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 12:18:33 +0000 (UTC)
X-CSE-ConnectionGUID: S5mRvAU3SFCj4GNHEq9nog==
X-CSE-MsgGUID: BGvsrjblTq2rcBd1jOtPsQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="34017140"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="34017140"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 05:18:23 -0700
X-CSE-ConnectionGUID: xvvT5TtwRQWnCzr44U2G8w==
X-CSE-MsgGUID: QVhG0SVHRHqLm2xTeTrPFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="60732515"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa006.fm.intel.com with ESMTP; 21 Aug 2024 05:18:21 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 026682878A;
 Wed, 21 Aug 2024 13:18:19 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: netdev@vger.kernel.org
Date: Wed, 21 Aug 2024 14:15:37 +0200
Message-Id: <20240821121539.374343-13-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240821121539.374343-1-wojciech.drewek@intel.com>
References: <20240821121539.374343-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724242714; x=1755778714;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YRb9EQyjV3zdtdcSX813Xx6U537vwZjskEd5A1dwaxE=;
 b=D8bqzD/PKeGkcctXDsBkP9qoUDLdEK3fXK1tkSpaNoW/9wwvc8BkYvOv
 1kqtJv9GqhtTFgqgAMc7iW8ZoyR8/beloAwyErmedrhm4dvZFiScZpSez
 W6a7+FPddIZZwJOOaI7nzjju4HQMxbYBRmpEX6YZ/Wclr56e/XeTykrjk
 bIi4u4vC6mtUBwaSxDnpdw6UGmzSC5PkzYSKpTEmnO34BZelzvSzf+NZN
 ZBxtnivK1pe597BwY5ZjE7NiAKet3qAW5TBhgZ1n/x6H9WNaHT7W+Aios
 JO8TYLPa/7JS/zyJIL+QWADHAktqk7CTpKf2nHB2wwPkEemUmqt4QksFl
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=D8bqzD/P
Subject: [Intel-wired-lan] [PATCH iwl-next v10 12/14] iavf: Implement
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
Cc: alexandr.lobakin@intel.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org, kuba@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

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
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
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
2.40.1

