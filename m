Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 559F4737E0F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 11:11:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E5DEC417FE;
	Wed, 21 Jun 2023 09:11:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E5DEC417FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687338697;
	bh=kUOaLpDHtsCjYrlZ7bB790yd0rpvpKisxmAYUXnb1Xk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5mTLyntdHZYSqepK86sPEm5vTE6W7XQMjjNLYbNV7spiLLkyU80PvXyBfcf8A0UTM
	 wzIIaDGkYmOpRt6Pml+is9GMfpr7/ko5CN5uGQhfw4jRl3gcUjnDzL9fVn8cLNR+98
	 QGy8wUHX8KTjz0r4ZJ72bDsQOTFzH8M7c4mQ5h3gSRhfLCxyBpnsMj9gbLDjTcUTQC
	 yOc1hTEV8Mbptw4LgTj8rOueY6EaWo+yyqgOv1F9qTk48pDaEt5suy/lDOWNMp7eZd
	 oiX2+ZkaXR5bP4ovtXwMVV4XYEFTW+lcHMoawycKip3pekroc+uH76haiLBC4O0yfQ
	 Iu4rt+SEZq4vg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zUayfYvQsDtr; Wed, 21 Jun 2023 09:11:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 57A3240636;
	Wed, 21 Jun 2023 09:11:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 57A3240636
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C2C901BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:11:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9B7CC83280
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:11:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B7CC83280
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HZHmsL7RklwU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 09:11:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8A6D83276
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B8A6D83276
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:11:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="357613622"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="357613622"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 02:11:30 -0700
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="748570755"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="748570755"
Received: from dpdk-liulingy-2.sh.intel.com ([10.67.119.34])
 by orsmga001.jf.intel.com with ESMTP; 21 Jun 2023 02:11:26 -0700
From: Lingyu Liu <lingyu.liu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 21 Jun 2023 09:10:59 +0000
Message-Id: <20230621091112.44945-3-lingyu.liu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230621091112.44945-1-lingyu.liu@intel.com>
References: <20230621091112.44945-1-lingyu.liu@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687338690; x=1718874690;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MWRxWLi0TZt1dcNXeVunlGeYWeBd2beSQjX5m1L8OIc=;
 b=CvXbGMTB8TmyIeH304ogcHUbwm4lS7k5PMhQtNrbEVrB5hmZgg1E0+68
 nR7O2cLwicpUWHJYkvaFl/MrXcffgXpOl4ksPUf6bJlcnHZ29Zvheymag
 4VlTRuclf5gQoJXlMwDsroxWZf4bU5Qlm1/Z6q3qk2B+yt7nhIilS3awz
 2Gigxqra6hMM+nPRfJPJesniEPqOU8wqqzxNSLhVemXpA+u+Wf42nhPPP
 OJQjjA4I5vRIVKPOYjgeJy6TPuRB9PUvLOo1PoM9cMHILnZXhTU8EbpJc
 goxR8VJ5JQ4JcA6KcroSFvkycBXLrkqGQhVHUjvpnCkH6KZq4BkqNRbkc
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CvXbGMTB
Subject: [Intel-wired-lan] [PATCH iwl-next V2 02/15] ice: add function to
 get rxq context
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
Cc: kevin.tian@intel.com, yi.l.liu@intel.com, phani.r.burra@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Yahui Cao <yahui.cao@intel.com>

Export rxq context. Read binaries from hw registers. Then
use offsets and masks to extract different context fields.

ice_vfio_pci driver that is introduced in coming patches of this series
will use the exported rxq context when saving and restoring device state.

Signed-off-by: Yahui Cao <yahui.cao@intel.com>
Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 268 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h |   5 +
 2 files changed, 273 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 7a9e88f3f4b5..21cd617f9620 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1428,6 +1428,34 @@ ice_copy_rxq_ctx_to_hw(struct ice_hw *hw, u8 *ice_rxq_ctx, u32 rxq_index)
 	return 0;
 }
 
+/**
+ * ice_copy_rxq_ctx_from_hw - Copy rxq context register from HW
+ * @hw: pointer to the hardware structure
+ * @ice_rxq_ctx: pointer to the rxq context
+ * @rxq_index: the index of the Rx queue
+ *
+ * Copies rxq context from HW register space to dense structure
+ */
+static int
+ice_copy_rxq_ctx_from_hw(struct ice_hw *hw, u8 *ice_rxq_ctx, u32 rxq_index)
+{
+	u8 i;
+
+	if (!ice_rxq_ctx || rxq_index > QRX_CTRL_MAX_INDEX)
+		return -EINVAL;
+
+	/* Copy each dword separately from HW */
+	for (i = 0; i < ICE_RXQ_CTX_SIZE_DWORDS; i++) {
+		u32 *ctx = (u32 *)(ice_rxq_ctx + (i * sizeof(u32)));
+
+		*ctx = rd32(hw, QRX_CONTEXT(i, rxq_index));
+
+		ice_debug(hw, ICE_DBG_QCTX, "qrxdata[%d]: %08X\n", i, *ctx);
+	}
+
+	return 0;
+}
+
 /* LAN Rx Queue Context */
 static const struct ice_ctx_ele ice_rlan_ctx_info[] = {
 	/* Field		Width	LSB */
@@ -1479,6 +1507,32 @@ ice_write_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
 	return ice_copy_rxq_ctx_to_hw(hw, ctx_buf, rxq_index);
 }
 
+/**
+ * ice_read_rxq_ctx - Read rxq context from HW
+ * @hw: pointer to the hardware structure
+ * @rlan_ctx: pointer to the rxq context
+ * @rxq_index: the index of the Rx queue
+ *
+ * Read rxq context from HW register space and then converts it from dense
+ * structure to sparse
+ */
+int
+ice_read_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
+		 u32 rxq_index)
+{
+	u8 ctx_buf[ICE_RXQ_CTX_SZ] = { 0 };
+	int status;
+
+	if (!rlan_ctx)
+		return -EINVAL;
+
+	status = ice_copy_rxq_ctx_from_hw(hw, ctx_buf, rxq_index);
+	if (status)
+		return status;
+
+	return ice_get_ctx(ctx_buf, (u8 *)rlan_ctx, ice_rlan_ctx_info);
+}
+
 /* LAN Tx Queue Context */
 const struct ice_ctx_ele ice_tlan_ctx_info[] = {
 				    /* Field			Width	LSB */
@@ -4469,6 +4523,220 @@ ice_set_ctx(struct ice_hw *hw, u8 *src_ctx, u8 *dest_ctx,
 	return 0;
 }
 
+/**
+ * ice_read_byte - read context byte into struct
+ * @src_ctx:  the context structure to read from
+ * @dest_ctx: the context to be written to
+ * @ce_info:  a description of the struct to be filled
+ */
+static void
+ice_read_byte(u8 *src_ctx, u8 *dest_ctx, const struct ice_ctx_ele *ce_info)
+{
+	u8 dest_byte, mask;
+	u8 *src, *target;
+	u16 shift_width;
+
+	/* prepare the bits and mask */
+	shift_width = ce_info->lsb % 8;
+	mask = (u8)(BIT(ce_info->width) - 1);
+
+	/* shift to correct alignment */
+	mask <<= shift_width;
+
+	/* get the current bits from the src bit string */
+	src = src_ctx + (ce_info->lsb / 8);
+
+	memcpy(&dest_byte, src, sizeof(dest_byte));
+
+	dest_byte &= mask;
+
+	dest_byte >>= shift_width;
+
+	/* get the address from the struct field */
+	target = dest_ctx + ce_info->offset;
+
+	/* put it back in the struct */
+	memcpy(target, &dest_byte, sizeof(dest_byte));
+}
+
+/**
+ * ice_read_word - read context word into struct
+ * @src_ctx:  the context structure to read from
+ * @dest_ctx: the context to be written to
+ * @ce_info:  a description of the struct to be filled
+ */
+static void
+ice_read_word(u8 *src_ctx, u8 *dest_ctx, const struct ice_ctx_ele *ce_info)
+{
+	u16 dest_word, mask;
+	u8 *src, *target;
+	__le16 src_word;
+	u16 shift_width;
+
+	/* prepare the bits and mask */
+	shift_width = ce_info->lsb % 8;
+	mask = BIT(ce_info->width) - 1;
+
+	/* shift to correct alignment */
+	mask <<= shift_width;
+
+	/* get the current bits from the src bit string */
+	src = src_ctx + (ce_info->lsb / 8);
+
+	memcpy(&src_word, src, sizeof(src_word));
+
+	/* the data in the memory is stored as little endian so mask it
+	 * correctly
+	 */
+	src_word &= cpu_to_le16(mask);
+
+	/* get the data back into host order before shifting */
+	dest_word = le16_to_cpu(src_word);
+
+	dest_word >>= shift_width;
+
+	/* get the address from the struct field */
+	target = dest_ctx + ce_info->offset;
+
+	/* put it back in the struct */
+	memcpy(target, &dest_word, sizeof(dest_word));
+}
+
+/**
+ * ice_read_dword - read context dword into struct
+ * @src_ctx:  the context structure to read from
+ * @dest_ctx: the context to be written to
+ * @ce_info:  a description of the struct to be filled
+ */
+static void
+ice_read_dword(u8 *src_ctx, u8 *dest_ctx, const struct ice_ctx_ele *ce_info)
+{
+	u32 dest_dword, mask;
+	__le32 src_dword;
+	u8 *src, *target;
+	u16 shift_width;
+
+	/* prepare the bits and mask */
+	shift_width = ce_info->lsb % 8;
+
+	/* if the field width is exactly 32 on an x86 machine, then the shift
+	 * operation will not work because the SHL instructions count is masked
+	 * to 5 bits so the shift will do nothing
+	 */
+	if (ce_info->width < 32)
+		mask = BIT(ce_info->width) - 1;
+	else
+		mask = (u32)~0;
+
+	/* shift to correct alignment */
+	mask <<= shift_width;
+
+	/* get the current bits from the src bit string */
+	src = src_ctx + (ce_info->lsb / 8);
+
+	memcpy(&src_dword, src, sizeof(src_dword));
+
+	/* the data in the memory is stored as little endian so mask it
+	 * correctly
+	 */
+	src_dword &= cpu_to_le32(mask);
+
+	/* get the data back into host order before shifting */
+	dest_dword = le32_to_cpu(src_dword);
+
+	dest_dword >>= shift_width;
+
+	/* get the address from the struct field */
+	target = dest_ctx + ce_info->offset;
+
+	/* put it back in the struct */
+	memcpy(target, &dest_dword, sizeof(dest_dword));
+}
+
+/**
+ * ice_read_qword - read context qword into struct
+ * @src_ctx:  the context structure to read from
+ * @dest_ctx: the context to be written to
+ * @ce_info:  a description of the struct to be filled
+ */
+static void
+ice_read_qword(u8 *src_ctx, u8 *dest_ctx, const struct ice_ctx_ele *ce_info)
+{
+	u64 dest_qword, mask;
+	__le64 src_qword;
+	u8 *src, *target;
+	u16 shift_width;
+
+	/* prepare the bits and mask */
+	shift_width = ce_info->lsb % 8;
+
+	/* if the field width is exactly 64 on an x86 machine, then the shift
+	 * operation will not work because the SHL instructions count is masked
+	 * to 6 bits so the shift will do nothing
+	 */
+	if (ce_info->width < 64)
+		mask = BIT_ULL(ce_info->width) - 1;
+	else
+		mask = (u64)~0;
+
+	/* shift to correct alignment */
+	mask <<= shift_width;
+
+	/* get the current bits from the src bit string */
+	src = src_ctx + (ce_info->lsb / 8);
+
+	memcpy(&src_qword, src, sizeof(src_qword));
+
+	/* the data in the memory is stored as little endian so mask it
+	 * correctly
+	 */
+	src_qword &= cpu_to_le64(mask);
+
+	/* get the data back into host order before shifting */
+	dest_qword = le64_to_cpu(src_qword);
+
+	dest_qword >>= shift_width;
+
+	/* get the address from the struct field */
+	target = dest_ctx + ce_info->offset;
+
+	/* put it back in the struct */
+	memcpy(target, &dest_qword, sizeof(dest_qword));
+}
+
+/**
+ * ice_get_ctx - extract context bits from a packed structure
+ * @src_ctx:  pointer to a generic packed context structure
+ * @dest_ctx: pointer to a generic non-packed context structure
+ * @ce_info:  a description of the structure to be read from
+ */
+int
+ice_get_ctx(u8 *src_ctx, u8 *dest_ctx, const struct ice_ctx_ele *ce_info)
+{
+	int i;
+
+	for (i = 0; ce_info[i].width; i++) {
+		switch (ce_info[i].size_of) {
+		case 1:
+			ice_read_byte(src_ctx, dest_ctx, &ce_info[i]);
+			break;
+		case 2:
+			ice_read_word(src_ctx, dest_ctx, &ce_info[i]);
+			break;
+		case 4:
+			ice_read_dword(src_ctx, dest_ctx, &ce_info[i]);
+			break;
+		case 8:
+			ice_read_qword(src_ctx, dest_ctx, &ce_info[i]);
+			break;
+		default:
+			return -EINVAL;
+		}
+	}
+
+	return 0;
+}
+
 /**
  * ice_get_lan_q_ctx - get the LAN queue context for the given VSI and TC
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 81961a7d6598..85c477049a34 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -56,6 +56,9 @@ void ice_set_safe_mode_caps(struct ice_hw *hw);
 int
 ice_write_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
 		  u32 rxq_index);
+int
+ice_read_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
+		 u32 rxq_index);
 
 int
 ice_aq_get_rss_lut(struct ice_hw *hw, struct ice_aq_get_set_rss_lut_params *get_params);
@@ -75,6 +78,8 @@ extern const struct ice_ctx_ele ice_tlan_ctx_info[];
 int
 ice_set_ctx(struct ice_hw *hw, u8 *src_ctx, u8 *dest_ctx,
 	    const struct ice_ctx_ele *ce_info);
+int
+ice_get_ctx(u8 *src_ctx, u8 *dest_ctx, const struct ice_ctx_ele *ce_info);
 
 extern struct mutex ice_global_cfg_lock_sw;
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
