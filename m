Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED7E736899
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 12:01:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 335F9418C2;
	Tue, 20 Jun 2023 10:01:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 335F9418C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687255262;
	bh=kUOaLpDHtsCjYrlZ7bB790yd0rpvpKisxmAYUXnb1Xk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LNkIaze+ebHCQKax2AUoNodkH/LJLP6kZk1YQd31DSmJFyhYy7UXkzRpAsAUCHYub
	 hK6N19kW8pJeP+f8A5DvU5YAiEqPHyM7giOScasulg0jubiPmxgDH+X2PJfIXUwxrr
	 2Ah9uO1u/lgPVoSUMU7QSPCVTVDMig/f4HNUCisNKou32EBvLGE5ndNJt8HesjFLVi
	 dukzrFEUvgx6h3vbWKmLJAcsoovZanhXBibKMfykKTVCAduW5bDCf+hV7L4jmTk+kl
	 sV+EW4mhOD0bgsaB+kYBOBNhh+5a4yxApJ88jlr18ryUVXwxtww9tmbe12YnfPZK1O
	 KsNYwNsAuU0BQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bhYBA40KvayO; Tue, 20 Jun 2023 10:01:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 07E9B417E4;
	Tue, 20 Jun 2023 10:00:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 07E9B417E4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 50B461BF39E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:00:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1D55D418BD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:00:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D55D418BD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ipz7FHyRkvjT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 10:00:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA664417E4
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BA664417E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:00:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="358688320"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="358688320"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 03:00:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="664227149"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="664227149"
Received: from dpdk-liulingy-2.sh.intel.com ([10.67.119.34])
 by orsmga003.jf.intel.com with ESMTP; 20 Jun 2023 03:00:36 -0700
From: Lingyu Liu <lingyu.liu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Jun 2023 09:59:48 +0000
Message-Id: <20230620100001.5331-3-lingyu.liu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230620100001.5331-1-lingyu.liu@intel.com>
References: <20230620100001.5331-1-lingyu.liu@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687255250; x=1718791250;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MWRxWLi0TZt1dcNXeVunlGeYWeBd2beSQjX5m1L8OIc=;
 b=F/LWLyFIBNvkHhOsUHYWlW2A4XhP4oiVf1pduaeNquDsDdzz1q1u/xkN
 F7K4hYEPjTjRYjyhn/Xogk5fEvNG/iFPt9Y1PVb2u66H+Zaivt9gQ75QD
 6MOM8MXE/QqQ2O9B/9CZhVkmAz/T4O2NYfwdkna9AQTTLocPJGghHG0pb
 PcBIZpCPlQ2ALCYPQNzRcphw4ORL7SXEDaG0Qju1GBWaPAhemc3tA7a7y
 5w1I9yrj8Gm4ijLA3eNEEwwk0KmpU/lion1AnNHlG1HXPtqvJ/rKh3fvc
 HJ44BOCqhR7DLgCIwtFGJqzVTPW+NW02s5vBVJLII0h7FQkJb3JaIJ2Y0
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=F/LWLyFI
Subject: [Intel-wired-lan] [PATCH iwl-next V1 02/15] ice: add function to
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
