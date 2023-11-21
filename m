Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A79E07F2439
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Nov 2023 03:49:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A56280C31;
	Tue, 21 Nov 2023 02:49:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A56280C31
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700534998;
	bh=WM1n5oOC/PfXvA1TVZk/FH8S63P9Ed82xXfCYSUtWFI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cZWmgRgADESf5lSBREgBx6FF2zugF2hijpRhRmO1u6BdjOQxbPDSgRcF7Z3rb/Rpq
	 FTFR7hSk9ZvaqVHFbkTsZki872TgBlxWTWKvLv2u9qFQI+O7L1kbZLp5xfepc5RXgf
	 GM73odmmcnp+oorSexFFWkRYDQUBxkxjCvY257nq8VKsuvEJnT4/tPEsvyVIKYXgwC
	 PAZ4vCLKQX//LQKln/u7yq0m7GY+HpFcHmkrLmwLUEgbAMWS/rxrAgc4r9hauMoeto
	 NUxfU/RGUYbrjXDuKAIrMh5LNwcXkBy823q8N25RKQD63wwnIbwe7DhrlraQpH1HOd
	 YeRqNJ7oOXuDQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cEzI5XQ3xebI; Tue, 21 Nov 2023 02:49:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F44780C07;
	Tue, 21 Nov 2023 02:49:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F44780C07
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE38F1BF33D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 02:49:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B6F34415EF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 02:49:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6F34415EF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mxvqCyAVvwMT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Nov 2023 02:49:50 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9C5DE41568
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 02:49:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C5DE41568
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="458245842"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="458245842"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 18:49:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="832488198"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="832488198"
Received: from dpdk-yahui-icx1.sh.intel.com ([10.67.111.85])
 by fmsmga008.fm.intel.com with ESMTP; 20 Nov 2023 18:49:45 -0800
From: Yahui Cao <yahui.cao@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 21 Nov 2023 02:51:00 +0000
Message-Id: <20231121025111.257597-2-yahui.cao@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231121025111.257597-1-yahui.cao@intel.com>
References: <20231121025111.257597-1-yahui.cao@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700534990; x=1732070990;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5mmDRZqN56RQo8t8hR6LlwHoKlEk5QkHY/79mVty8Uk=;
 b=TzrAtX0Rs4GoPOLTyDCDKX1+10uBAVnAiUQm5d/FB38jMtpcDWgBxmcc
 SEToXB7OM6o4kTaPuXuzZeaYIwE+gxw3R6ZTc9qTSsUkajAI/exExtY5P
 3SUAOJemzbu06VI+MJmprMcszvbujpJDDHEBLDBL23KL0N7VWZ6BHhsEO
 33MDd/Jso0Kf7oLbTn/zYA/qUl4ayUJ3h5CB0udrlV7iNiVIuyVAIG0v3
 lCsRfdw1g1MR3dSEYkWtI7b98fpS9UJCN6pwO4kMKZ0tSb42p6Gq/FuUJ
 rgUUMn61t+N1cudnBGtq4r1hC76IqI+DpIPGMiov7AlY8spnN0iud4qWr
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TzrAtX0R
Subject: [Intel-wired-lan] [PATCH iwl-next v4 01/12] ice: Add function to
 get RX queue context
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
Cc: kevin.tian@intel.com, yishaih@nvidia.com, brett.creeley@amd.com,
 kvm@vger.kernel.org, sridhar.samudrala@intel.com, edumazet@google.com,
 shameerali.kolothum.thodi@huawei.com, alex.williamson@redhat.com,
 madhu.chittim@intel.com, jgg@nvidia.com, netdev@vger.kernel.org,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Export RX queue context get function which is consumed by linux live
migration driver to save and load device state.

Signed-off-by: Yahui Cao <yahui.cao@intel.com>
Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 268 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h |   5 +
 2 files changed, 273 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 9a6c25f98632..d0a3bed00921 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1540,6 +1540,34 @@ ice_copy_rxq_ctx_to_hw(struct ice_hw *hw, u8 *ice_rxq_ctx, u32 rxq_index)
 	return 0;
 }
 
+/**
+ * ice_copy_rxq_ctx_from_hw - Copy rxq context register from HW
+ * @hw: pointer to the hardware structure
+ * @ice_rxq_ctx: pointer to the rxq context
+ * @rxq_index: the index of the Rx queue
+ *
+ * Copy rxq context from HW register space to dense structure
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
@@ -1591,6 +1619,32 @@ ice_write_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
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
@@ -4743,6 +4797,220 @@ ice_set_ctx(struct ice_hw *hw, u8 *src_ctx, u8 *dest_ctx,
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
index 31fdcac33986..df9c7f30592a 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -55,6 +55,9 @@ void ice_set_safe_mode_caps(struct ice_hw *hw);
 int
 ice_write_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
 		  u32 rxq_index);
+int
+ice_read_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
+		 u32 rxq_index);
 
 int
 ice_aq_get_rss_lut(struct ice_hw *hw, struct ice_aq_get_set_rss_lut_params *get_params);
@@ -74,6 +77,8 @@ extern const struct ice_ctx_ele ice_tlan_ctx_info[];
 int
 ice_set_ctx(struct ice_hw *hw, u8 *src_ctx, u8 *dest_ctx,
 	    const struct ice_ctx_ele *ce_info);
+int
+ice_get_ctx(u8 *src_ctx, u8 *dest_ctx, const struct ice_ctx_ele *ce_info);
 
 extern struct mutex ice_global_cfg_lock_sw;
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
