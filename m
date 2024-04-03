Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 859DC8970EE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Apr 2024 15:28:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A330C41797;
	Wed,  3 Apr 2024 13:28:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y2XDI6us0nPg; Wed,  3 Apr 2024 13:28:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D8EF44178A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712150915;
	bh=ac3vxQxU7jSLwoXS0rKCsgJ5FbW+e4AxEr2tYbrmWnA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bz2JEHHzTf7p1zAbRZY3YT3sBu59/DhsC8OJ+sh4lRn/h1btQA1QHHNGjNf3Xf0bz
	 fgKSNR7B17wmxUhqODvhrotzlhfIWxvyBekVzV0dq4ialhNJkrZs5B6nTsYZG78W3J
	 6ONbjIZoZHOjWZgGaHlo9NKuK4XpDsSULn9EoI8dL+HdNfliYyRj7AUaDMvd+ZrGg8
	 WxEkbajC4KvgFbtNcV09NBrsALvfjtpWBoXpd+x+AVCk5IAm2Mo7hEWlGtVpxuHB/d
	 y5BU6bBCaMISzCz26yBhC5npKBemdtKDAazPX0AGOyXVgqQ4mlGWQXVQ1ogWAFc4k8
	 +ls2WDKHqz7eg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D8EF44178A;
	Wed,  3 Apr 2024 13:28:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D20A81BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 13:28:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 585AC81B3E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 13:28:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bivPInSeMPz5 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Apr 2024 13:28:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A244C81E72
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A244C81E72
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A244C81E72
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 13:28:25 +0000 (UTC)
X-CSE-ConnectionGUID: yySiyI7dRYa521AXPLsj/A==
X-CSE-MsgGUID: snOdDQhJRb6Clld/XwjlZQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="7568770"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7568770"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 06:28:25 -0700
X-CSE-ConnectionGUID: Sknap4ZhS/eSXd0kWW113g==
X-CSE-MsgGUID: MvhDx9NURcuB5CGyfQ+nFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="41592101"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa002.fm.intel.com with ESMTP; 03 Apr 2024 06:28:23 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id CE82636C17;
 Wed,  3 Apr 2024 14:28:20 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Apr 2024 09:19:25 -0400
Message-Id: <20240403131927.87021-11-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240403131927.87021-1-mateusz.polchlopek@intel.com>
References: <20240403131927.87021-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712150905; x=1743686905;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qqI4Hy9HQ5zxSze1eLps1lHtL5YfZRaJ9DXMxGzdzmE=;
 b=cqLkU50c07pUwDiZpXJWnrs0D9Vu6l7rNLjHreZotQpR+yX6drmD6yBL
 QyrlPKlrItL0sdqp2QLBGQPQbk/5UH4Iusf5Dp1oSOgIwk+YEWOaFA7pR
 WQwuhIo7D9CHbv9lycDGVeOL8LZ5Wg7xlcxkVG6pUbGXnfMUJSsUTiE5S
 EAI5aEI6rlN1oi9Gi/oiNYlhmAN5Ws+jzNc6ci5S2MRoqZYYsAThEpxlT
 Vpa0gQCFQq+xjsGHLcjdnMJv05fFvTedlxtIlKl9+xHJ5UC8OWs9QFEPf
 7irR2CIVy6nbJd14ipU2MV/2uYJH3oDAcZrf2sBVvSl7huYUW1scriNYD
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cqLkU50c
Subject: [Intel-wired-lan] [PATCH iwl-next v3 10/12] iavf: Implement
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
 drivers/net/ethernet/intel/iavf/iavf_txrx.c | 28 ++++++++++++++++++++-
 drivers/net/ethernet/intel/iavf/iavf_txrx.h | 17 -------------
 drivers/net/ethernet/intel/iavf/iavf_type.h |  1 +
 3 files changed, 28 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index e2f46e29945f..b97da9c946ce 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -8,6 +8,28 @@
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
@@ -1718,7 +1740,11 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
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

