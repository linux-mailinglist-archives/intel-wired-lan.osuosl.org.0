Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 62DD28FB3AE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jun 2024 15:25:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CCC9C61069;
	Tue,  4 Jun 2024 13:25:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NmRPGwpfad7I; Tue,  4 Jun 2024 13:25:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E7A6C613C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717507517;
	bh=NeMjNX+Zcs1tiNIb+oYlAlz8qeULV+2hP8ZPcrzzSBc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zFMr3HflHjbDJubfxLqVSPYwxjjxR9h2JE1FtGxe6rBhqKcXciacWj4YfpUHBFvjU
	 T9FQzHBT9SPXCiCagOq/bb8pT4Hlku6DqlX+zW7cwzgrUA3kCgSDAWX3cm30CzGwZv
	 6foebQdSQp7XjedGe5tKPB08rEPy55KmA4VvN7LJ5B59Ta8UBnPGxnOd32Ma3wxuhD
	 f52fWJJTptxbOb2/5FC7zkCE+6KItxcG35XHw6Yt3OvXVEPOxQOfT26/qGMeNwbFwI
	 d5g43Ycj7uYI99N0RON5Nc/cH8fnCgvM1xRKI/HcKFiUg6L+Ju7/YFEW6tNeyI1S5E
	 702kN0ZHLwwRA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E7A6C613C8;
	Tue,  4 Jun 2024 13:25:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CE2F21BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 13:25:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 288BE40524
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 13:25:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PVI2bQGoqgFU for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jun 2024 13:25:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 57E1D404B4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 57E1D404B4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 57E1D404B4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 13:25:04 +0000 (UTC)
X-CSE-ConnectionGUID: 5y2UGjlMSQ+iOK2BB87kQA==
X-CSE-MsgGUID: iafQ4e5WSs2fRxDEjo0RjQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14245408"
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="14245408"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 06:25:04 -0700
X-CSE-ConnectionGUID: zsmcEpNHQL6dLE67lIEcSw==
X-CSE-MsgGUID: sifc17Q6Tf6MhvrOS6V4Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="37109802"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa007.fm.intel.com with ESMTP; 04 Jun 2024 06:25:01 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 4D5FB12424;
 Tue,  4 Jun 2024 14:24:53 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  4 Jun 2024 09:13:58 -0400
Message-Id: <20240604131400.13655-11-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240604131400.13655-1-mateusz.polchlopek@intel.com>
References: <20240604131400.13655-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717507504; x=1749043504;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eV0lxpXkCoamU6+zg0eGXExILgVQ2uro7nTGSixxTzg=;
 b=WG4TTts2MYvpYQVhxhysZEsGgFW7egVnHIYqfTqBEsRuRuJTkXCOnhdF
 62aX5QjlQ1pG7eUo/X3KyhKIAbKdQGYcGU4wIrHHsVnCQq5p7rxj/xVs6
 pgv/YnreHMXUgfujJHZKScCetjbJBGM+CXl1foQnsuWZJ8/FY968wTmx9
 Kx8ERMwGb5p9NxRlMg8uaDpGCL3Aw91IZRpWVVdcItOmw/mZq6s2z9Qng
 2a1rDy9W/hwbsLvN6Dpl7ZpGsfARUDtWeSbFegTGn0SYIb+qr58Bo+ys7
 qh6ru8oWXR0Sn9IS7Y8BPq7sg3kojdMEytj7PM7D9z0oduymQX0FK+yF3
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WG4TTts2
Subject: [Intel-wired-lan] [PATCH iwl-next v7 10/12] iavf: Implement
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
 Wojciech Drewek <wojciech.drewek@intel.com>,
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
---
 drivers/net/ethernet/intel/iavf/iavf_txrx.c | 30 ++++++++++++++++++++-
 drivers/net/ethernet/intel/iavf/iavf_txrx.h | 17 ------------
 drivers/net/ethernet/intel/iavf/iavf_type.h |  1 +
 3 files changed, 30 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 97da5af52ad7..78da3b2e81a7 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -9,6 +9,30 @@
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
@@ -1367,7 +1391,11 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
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
index 3661cd57a068..3add31924d75 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
@@ -82,23 +82,6 @@ enum iavf_dyn_idx_t {
 
 #define iavf_rx_desc iavf_32byte_rx_desc
 
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
index 82c16a720807..61012ee5de2e 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_type.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_type.h
@@ -316,6 +316,7 @@ union iavf_32byte_rx_desc {
  */
 #define IAVF_RX_DESC_STATUS_INT_UDP_0_MASK	BIT(18)
 
+#define IAVF_RX_FLEX_DESC_STATUS_ERR0_DD_BIT	BIT(0)
 #define IAVF_RX_FLEX_DESC_STATUS_ERR0_EOP_BIT	BIT(1)
 #define IAVF_RX_FLEX_DESC_STATUS_ERR0_RXE_BIT	BIT(10)
 
-- 
2.38.1

