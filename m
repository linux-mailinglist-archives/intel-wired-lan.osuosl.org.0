Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D5B8A926D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 07:35:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 292F681F29;
	Thu, 18 Apr 2024 05:35:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mfRuhaOQ6Mtq; Thu, 18 Apr 2024 05:35:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F9CD81F32
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713418502;
	bh=ta+nKh5fXMwXoyHlMp72bOnsB1806N+d1Mwq+op6fVU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OMqe2Ndy3uB9va+wjmH+7GPmt3bPAA6jylxXOXX0tyTL4FqzoqEHDh93Hii/z0CvD
	 b8EwB4Sosg8GZV5bg9KgBOlAR1lmxYIx/Wmp3W8iEzdegazZ9yiZOve38h1rBImx/X
	 Df0U+ta3AF2SbA1qnuzARg3w7mdVCOOTM1qqMJ4F5W11IUv00T4i+yXY+8InIs7Skz
	 TUGF3oORrloHyOqtHH3Fw7xOMExbPqsm1pTWOGzRLE2NG35xEi2AOg6VUPgZk4noL8
	 V3JDTbf1j9zTYkZhEgnGxW5qr9nxHTH3KSbvFGUCmHRfmH3fSuMKLHnwnBxUqUdHtC
	 IS0fNo/MLzKOQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F9CD81F32;
	Thu, 18 Apr 2024 05:35:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3FCA31BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 05:34:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2C4654043A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 05:34:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2JBiGz4LJ-yj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 05:34:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 43D6F40153
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43D6F40153
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 43D6F40153
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 05:34:51 +0000 (UTC)
X-CSE-ConnectionGUID: zrZGN/C+TKuO8HOKlAP8aQ==
X-CSE-MsgGUID: wWKiwGxlR9izKaGAIVKZ+g==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="8814681"
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; 
   d="scan'208";a="8814681"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 22:34:51 -0700
X-CSE-ConnectionGUID: TvPuTnySQEivRAIIgpGxtA==
X-CSE-MsgGUID: uIDcC/zCQKOayI59E9hYFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; d="scan'208";a="22947397"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa009.fm.intel.com with ESMTP; 17 Apr 2024 22:34:49 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id E5C9D27BA1;
 Thu, 18 Apr 2024 06:34:47 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 18 Apr 2024 01:24:58 -0400
Message-Id: <20240418052500.50678-11-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240418052500.50678-1-mateusz.polchlopek@intel.com>
References: <20240418052500.50678-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713418491; x=1744954491;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H81k6sDC1csk/WXgLfW0CS/dGv/MQEvs7t8FPOf0uBc=;
 b=F/vZiUtzbUIHCSKAeBrox6D9/d7QAmA57HDkkHu/s+OQM3q8ZZq88EsQ
 4/TGnYtNZoVmJ+YqbgCEhSGleGHdx5jA3vUOk/TnE8bBDU/mAL8+EPfGk
 71jQM0Tk5I/LfgIRhdwvvKhMfv7lNMbf8nSxhoPwtFZUHAKsSz4zYqN+z
 VztZKUtZzBKLyejOl6iLBmg3HvMD0hkPCFldVr6TpIf7q8yIy/rOtKydI
 z0bTzwzh+7PHY6UiiC1lIHNTd/sgKM21Gp+WM1Ed4JG8loolwwpomDQIl
 0D72SMDBIFNPW9g6zSWkNsa89DjlXpnMZh9C6aOgVAQp4ZmCB1IN2ZUV2
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=F/vZiUtz
Subject: [Intel-wired-lan] [PATCH iwl-next v5 10/12] iavf: Implement
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, horms@kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Rx timestamping introduced in PF driver caused the need of refactoring
the VF driver mechanism to check packet fields.

The function to check errors in descriptor has been removed and from
now only previously set struct fields are being checked. The field DD
(descriptor done) needs to be checked at the very beginning, before
extracting other fields.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_txrx.c | 30 ++++++++++++++++++++-
 drivers/net/ethernet/intel/iavf/iavf_txrx.h | 17 ------------
 drivers/net/ethernet/intel/iavf/iavf_type.h |  1 +
 3 files changed, 30 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index e2f46e29945f..8e90b0b2a292 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -8,6 +8,30 @@
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
+				    union iavf_rx_desc *rx_desc)
+{
+	u64 status_error_len = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
+
+	if (rx_ring->rxdid == VIRTCHNL_RXDID_1_32B_BASE)
+		return !!(FIELD_GET(IAVF_RX_DESC_STATUS_DD_MASK,
+			  status_error_len));
+
+	return !!(FIELD_GET((IAVF_RX_FLEX_DESC_STATUS_ERR0_DD_BIT),
+		  le16_to_cpu(rx_desc->flex_wb.status_error0)));
+}
+
 static __le64 build_ctob(u32 td_cmd, u32 td_offset, unsigned int size,
 			 u32 td_tag)
 {
@@ -1718,7 +1742,11 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		 * verified the descriptor has been written back.
 		 */
 		dma_rmb();
-		if (!iavf_test_staterr(rx_desc, IAVF_RX_DESC_STATUS_DD_MASK))
+
+		/* If DD field (descriptor done) is unset then other fields are
+		 * not valid
+		 */
+		if (!iavf_is_descriptor_done(rx_ring, rx_desc))
 			break;
 
 		iavf_extract_rx_fields(rx_ring, rx_desc, &fields);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index 67e51b4883bc..54d858303839 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
@@ -153,23 +153,6 @@ static inline int iavf_skb_pad(void)
 #define IAVF_SKB_PAD (NET_SKB_PAD + NET_IP_ALIGN)
 #endif
 
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
-static inline bool iavf_test_staterr(union iavf_rx_desc *rx_desc,
-				     const u64 stat_err_bits)
-{
-	return !!(rx_desc->wb.qword1.status_error_len &
-		  cpu_to_le64(stat_err_bits));
-}
-
 struct iavf_rx_extracted {
 	unsigned int size;
 	u16 vlan_tag;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_type.h b/drivers/net/ethernet/intel/iavf/iavf_type.h
index e80d1f7b3052..5527e6479ebd 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_type.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_type.h
@@ -318,6 +318,7 @@ union iavf_32byte_rx_desc {
  */
 #define IAVF_RX_DESC_STATUS_INT_UDP_0_MASK	BIT(18)
 
+#define IAVF_RX_FLEX_DESC_STATUS_ERR0_DD_BIT	BIT(0)
 #define IAVF_RX_FLEX_DESC_STATUS_ERR0_EOP_BIT	BIT(1)
 #define IAVF_RX_FLEX_DESC_STATUS_ERR0_RXE_BIT	BIT(10)
 
-- 
2.38.1

