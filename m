Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 67AD3940D80
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 11:28:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B475E608F2;
	Tue, 30 Jul 2024 09:28:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0rxKs-yd0yxs; Tue, 30 Jul 2024 09:28:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B80EB60769
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722331693;
	bh=/GasoA6LPnat/fr6pmLPXM9vLkts/r0kk5x+jUuiX2o=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rrjaKWm7/VCsnB8gLz1+FS1aWZxivVC9UUSxxaU6Tw5hOFfgHfYQ3g0JUxzoPTr4O
	 HPLDYwqtDaZUN/egbLUGQKoF9s76LtxIi3AAnGCeff8xtRZE4pTC4qfoouZAx6M1A3
	 LmmWojx6jWxY5051V4lFSMNqoKQJpMXW8zbFSHHVDWCusi+fOd46IcTfC1RLnx+bBh
	 fm6JXHin+I7FYE1E6zrtFAn7ZqQ+0ihyny5/ooppexvfG7Nh3mmJ03O0ZC+/eF26t9
	 86Uof3+tdGT8mV0JYzxV62+LUMXv+pbY0ocnzm5Yjt+DQ8x9Em2DvnuhsOL3mdyRuN
	 ZRxFprTLHqqzQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B80EB60769;
	Tue, 30 Jul 2024 09:28:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DF85F1BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 09:28:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CD3A940339
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 09:28:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XxPEalOpQbbY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 09:28:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D9B7F40332
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D9B7F40332
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D9B7F40332
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 09:28:05 +0000 (UTC)
X-CSE-ConnectionGUID: UemORsF+Tv24ff1GIWiYXg==
X-CSE-MsgGUID: nftFeokYSSauU5Zre24BDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="45551336"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="45551336"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 02:28:06 -0700
X-CSE-ConnectionGUID: 3INPqJXdT9GZEaeqtkUmnw==
X-CSE-MsgGUID: YkECMyYiTcSLFdpSFbyDdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="84923218"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa002.jf.intel.com with ESMTP; 30 Jul 2024 02:28:03 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 162942816E;
 Tue, 30 Jul 2024 10:28:02 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	aleksander.lobakin@intel.com
Date: Tue, 30 Jul 2024 05:15:07 -0400
Message-Id: <20240730091509.18846-13-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240730091509.18846-1-mateusz.polchlopek@intel.com>
References: <20240730091509.18846-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722331686; x=1753867686;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aiibkHLYfAIJg7ZVJ7jttQ7bm7XvkHOAkgdHFcUoUHk=;
 b=CTVnRZBr6IUTgwIKE82l2S4oMCYwljnpkpbhHygfoIXlL1DsFLQ2Nhm/
 Lzk9LWQaysxb2DgSsWRkRDn+ilRoK2GraGKEkQTqTayv1TfSlkidKSMOu
 7u1O75CKCjf33NB/x0l3/DYP6jQdy2PNMjOJEtwkg97QMENvWCZ/zXq65
 QCxHQHtZwMuFjc5xjNeadpwG2VnV6R9cCw53QpNXwfgomsCgntEB7Z8zZ
 O7zpiCyl6eQN9YqJPUPd9B9hjLrdER2N6DREy/rmHaNnLyUPaWv9W/Lw2
 1NETC3vjmiMExmVRoe1U16Zv7nCUqoa1ZM1lVWuH1vK2Y23T08F0H8LIx
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CTVnRZBr
Subject: [Intel-wired-lan] [PATCH iwl-next v8 12/14] iavf: Implement
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
 drivers/net/ethernet/intel/iavf/iavf_txrx.c | 27 ++++++++++++++++++++-
 drivers/net/ethernet/intel/iavf/iavf_txrx.h | 16 ------------
 2 files changed, 26 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 5b81b3fe2e18..997fd0d520a9 100644
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
+ * Return: true or false based on the state of DD bit in Rx descriptor
+ */
+static bool iavf_is_descriptor_done(struct iavf_ring *rx_ring,
+				    struct iavf_rx_desc *rx_desc)
+{
+	__le64 qw1 = rx_desc->qw1;
+
+	if (rx_ring->rxdid == VIRTCHNL_RXDID_1_32B_BASE)
+		return !!le64_get_bits(qw1, IAVF_RXD_LEGACY_QW1_DD_M);
+
+	return !!le64_get_bits(qw1, IAVF_RXD_FLEX_QW1_DD_M);
+}
+
 static __le64 build_ctob(u32 td_cmd, u32 td_offset, unsigned int size,
 			 u32 td_tag)
 {
@@ -1336,7 +1358,10 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		 */
 		dma_rmb();
 
-		if (!iavf_test_staterr(rx_desc, IAVF_RXD_FLEX_QW1_DD_M))
+		/* If DD field (descriptor done) is unset then other fields are
+		 * not valid
+		 */
+		if (!iavf_is_descriptor_done(rx_ring, rx_desc))
 			break;
 
 		fields = iavf_extract_rx_fields(rx_ring, rx_desc);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index 289d061c3a58..94023873cb36 100644
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

