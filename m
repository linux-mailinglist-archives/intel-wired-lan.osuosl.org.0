Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C626A7A410B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Sep 2023 08:28:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 63627401A0;
	Mon, 18 Sep 2023 06:28:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 63627401A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695018489;
	bh=il8Ws5O/4syp6vLHiD6sd+0Xrt91E/mlWRLVilzjW7w=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=J7VPY6em2D/Zgh8p9SsQ67Lsu6g3MIvp+bY4OjqjYTTB9pXsb/nLohtzDiomdLEP9
	 yZHBVqcu6s3GnrAhFX3VL9uCCZ9JCVy5XmkvLvMIBufnY6qjql3CzkEeuNzZ3n9qa0
	 Ob1C2ccTilRhIUW+AKU90BSeEndMajO5dMsQzAW3Izj8U+tGwGWF9NPNKOkbbZFBJl
	 HlY0neGYTp7cMBq/YIJhi6p2fJxgaf51RkeW17Qx0zWhF2HlDSia3igawpjCSx70CE
	 8FKZnyh3aBAE2I/RvthteAje54QNHDIs6Up3RZMilioS0qd3Kt/kOR79hEEUrpaY2H
	 Y6ao1zEBmbQpg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EFa63J30Ezj8; Mon, 18 Sep 2023 06:28:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7FD6D4182D;
	Mon, 18 Sep 2023 06:28:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7FD6D4182D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6ACC31BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:28:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 518BD411A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:28:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 518BD411A1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gj-soh24QmKe for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Sep 2023 06:28:01 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 234B640C0E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:28:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 234B640C0E
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="378488489"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="378488489"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2023 23:28:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="815893392"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="815893392"
Received: from dpdk-yahui-icx1.sh.intel.com ([10.67.111.186])
 by fmsmga004.fm.intel.com with ESMTP; 17 Sep 2023 23:27:54 -0700
From: Yahui Cao <yahui.cao@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Sep 2023 06:25:35 +0000
Message-Id: <20230918062546.40419-3-yahui.cao@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230918062546.40419-1-yahui.cao@intel.com>
References: <20230918062546.40419-1-yahui.cao@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695018481; x=1726554481;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4bV4dc9Lxk0qRc1xvTaSV5zDFH1c10RazegGUfXW6Cg=;
 b=gVS6/pOE6IjWu58G5oV7h04+GMzxcFM0jVBXiZJqsr4bjE9u1oa9DJ10
 PPs5N0UVj+S+WDHWSR4NbJ/HYzsPZI+/xDg+RP/K1ZNJVzHQlG3il1oyA
 kFqKS1wQoMo2grl824Zj+tWz+6l7bA+hauI+8eYQGEh+9vgDIJvz9Ewcm
 QZ0OmuSLdxGbIO8EE3Hii7EosPoZVy36/VGKBzSq8wI4TUATikpomMdon
 MNfoo6bnc10rVWnKrX6tT775v7Qzxl2TWrFctCNHwc1K8H2AvKP/nkWIi
 y7c5EZY+qTs/YFwa//PGxQzwUZKeIG82Km490JraJ4tt23/qHVB0fKgLf
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gVS6/pOE
Subject: [Intel-wired-lan] [PATCH iwl-next v3 02/13] ice: Add function to
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
 kvm@vger.kernel.org, edumazet@google.com, shameerali.kolothum.thodi@huawei.com,
 jesse.brandeburg@intel.com, alex.williamson@redhat.com,
 madhu.chittim@intel.com, anthony.l.nguyen@intel.com, jgg@nvidia.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
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
index 6f12ea050d35..5892d5a22323 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1217,6 +1217,34 @@ ice_copy_rxq_ctx_to_hw(struct ice_hw *hw, u8 *ice_rxq_ctx, u32 rxq_index)
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
@@ -1268,6 +1296,32 @@ ice_write_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
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
@@ -4443,6 +4497,220 @@ ice_set_ctx(struct ice_hw *hw, u8 *src_ctx, u8 *dest_ctx,
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
index 71381d9835a1..657767c50be6 100644
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
