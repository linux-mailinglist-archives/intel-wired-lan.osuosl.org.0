Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F26D88E2CC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 14:34:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DEABA40996;
	Wed, 27 Mar 2024 13:34:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n47DcKs6Hj59; Wed, 27 Mar 2024 13:34:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1EEBA4056E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711546478;
	bh=P8PFksODDKwQG+eaPgipWB5Z2qaW4NPDMAEUoIth09c=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xuKli9UDWsY9ae79d1OUprqMHTdmJF4ULSH0nw97D7uH8eC8sSw62geFK+SMMcal4
	 GbtUOXerHSc6JWfQAlDNa0d7HjRNFJ+6Pa3NWVWnA2RFbI9NOTMvV1fBq0vLr0DqZa
	 aMFggyxwBC2Z/40MLoDgvYo5oJt+nTnsWTsSPFrQS64BuyugImwcShigS5qtGTQx78
	 buHEmbgQ/kr6DZH2TSMvH94PEN5/LRhOwIz76x5ujbnK621yrdWA71zrlYfE4xxV/c
	 FgNemo1fZ1ZMUIudCVVMIstMjgZ/pekknediW3VNME2EHLtzuZNmqtA6U6eFVlEvbW
	 yHbV7P8koOeNQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1EEBA4056E;
	Wed, 27 Mar 2024 13:34:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BA0631BF980
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 13:34:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A70128120A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 13:34:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rgnC35hJ_ShZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 13:34:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BB04B80FB8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB04B80FB8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BB04B80FB8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 13:34:31 +0000 (UTC)
X-CSE-ConnectionGUID: yjtVylaCTD2SF2j5wT+Hxw==
X-CSE-MsgGUID: ZqNeQa9eT/qnbdOiYM4ENw==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="9608533"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="9608533"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 06:34:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,158,1708416000"; d="scan'208";a="16355739"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa009.fm.intel.com with ESMTP; 27 Mar 2024 06:34:30 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id E51D4284E2;
 Wed, 27 Mar 2024 13:34:28 +0000 (GMT)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 27 Mar 2024 09:25:41 -0400
Message-Id: <20240327132543.15923-11-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240327132543.15923-1-mateusz.polchlopek@intel.com>
References: <20240327132543.15923-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711546472; x=1743082472;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6lGF6vMGdljZnKEL+Lko5pt873z/i9BVn8qi3/zJ4rQ=;
 b=MuwD4MJXLOEGU2wLo3/rNuoqSdK81bh0l5Uai8CH3lMilt7RBJHtpJrJ
 Z2YSQ+Gmx7SB0vgaixRHi8YhAx4UArC9jHMEY/N7iy6DxfS+tduKPQNnb
 gC3pP9q1SeXPdwsRDOgsgsglwBSEshvs0Y2JRKf2tF0KQygXBrjQkPs2g
 ymM73u63hwoNNC6V/fqZg4lMjLCGiP6Vr6tkOeEYAa3M3BApcIkV+7fK2
 aGTCT/VXSCxsGIH6bjUPWc3yprJbeRZOwwKDlfi22vNDJctGMIgqvB7bV
 UpMQGV7nRz0xsrKhaJtDuY+dIuMUxCQ2PUvN/fo4O3P3rnnfuhSQHvCk6
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MuwD4MJX
Subject: [Intel-wired-lan] [PATCH iwl-next v2 10/12] iavf: Implement
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
Cc: netdev@vger.kernel.org, Wojciech Drewek <wojciech.drewek@intel.com>,
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
 drivers/net/ethernet/intel/iavf/iavf_txrx.c | 26 ++++++++++++++++++++-
 drivers/net/ethernet/intel/iavf/iavf_txrx.h | 17 --------------
 drivers/net/ethernet/intel/iavf/iavf_type.h |  1 +
 3 files changed, 26 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index c9c4f255bc8b..baf3cf80e3ac 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -8,6 +8,26 @@
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
+	if (rx_ring->rxdid == VIRTCHNL_RXDID_1_32B_BASE)
+		return !!(FIELD_GET(cpu_to_le64(IAVF_RX_DESC_STATUS_DD_MASK),
+				    rx_desc->wb.qword1.status_error_len));
+
+	return !!(FIELD_GET(cpu_to_le16(IAVF_RX_FLEX_DESC_STATUS_ERR0_DD_BIT),
+		  rx_desc->flex_wb.status_error0));
+}
+
 static __le64 build_ctob(u32 td_cmd, u32 td_offset, unsigned int size,
 			 u32 td_tag)
 {
@@ -1720,7 +1740,11 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
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
index 90447a8c3a7a..b84416918e7d 100644
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

