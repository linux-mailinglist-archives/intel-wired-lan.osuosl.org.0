Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DDAD4ADF959
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jun 2025 00:25:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 69C3E60BB0;
	Wed, 18 Jun 2025 22:25:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PtepJRgUXVTL; Wed, 18 Jun 2025 22:25:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 71D3A60BB6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750285511;
	bh=N+QvFEFDeDo28j9kfgMtRUNIopSWmSfc/ucm6Qj3kSY=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AfV3DoDVGfzGnH0++74BrPfSiiHAPZsFoymr9ErGTZIQ39pcbeYExCpf0fEbOCkqH
	 wIHBtoqhom6QSonBJ4belV5iS8JNRgHHLkWmUb4NUkiApLfFuJkb6qN2j0KORgiHwU
	 V9yOesBp/l7iiaac/eVYnY3mZC4TYDNzWHFVHiQCk42opfrH+hxi4WiZPm6HtyKbJ2
	 ceYIYjxMHogWJG2dhwXgRjJRehrgaPEIioCq2T0nhisneOMrIFrQBie2oB3v4BliCq
	 +apgEejL8FItGM7yF4Hhj0rFNzfUwpGvgfqCa/sUHu/p0gmLtU+S0yQj0mDzT/chz2
	 qIj2SNXfDZnog==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 71D3A60BB6;
	Wed, 18 Jun 2025 22:25:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3A444E2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 22:25:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 02B2740402
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 22:25:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D05PX6tJIXil for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jun 2025 22:25:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 498184041E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 498184041E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 498184041E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 22:25:06 +0000 (UTC)
X-CSE-ConnectionGUID: ieJ2nQF9QGG79n6dBr+CIg==
X-CSE-MsgGUID: SZZ9ErLmTjqntUFkGhWlNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="52447737"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="52447737"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 15:25:05 -0700
X-CSE-ConnectionGUID: 4KdJiOfmRMK584uutzn+6Q==
X-CSE-MsgGUID: 6Ms/ebpQQoCwJqzJN/nhbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="149870004"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 15:25:04 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 18 Jun 2025 15:24:36 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250618-e810-live-migration-jk-migration-prep-v1-1-72a37485453e@intel.com>
References: <20250618-e810-live-migration-jk-migration-prep-v1-0-72a37485453e@intel.com>
In-Reply-To: <20250618-e810-live-migration-jk-migration-prep-v1-0-72a37485453e@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org, 
 Madhu Chittim <madhu.chittim@intel.com>, Yahui Cao <yahui.cao@intel.com>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750285506; x=1781821506;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=fdrkhdq6W8qDicqoFfmLZP4nTL8We3Md3i1yKTHvv50=;
 b=Pv7mIVlX1VHOM4rXUhLuq++lih+c8iAsPHCTuyX36QYJRQpItFSJ3QJa
 SVNCMvAkmiqb+1ilYJ4Dx7vLJZvYMHpzpsNBuIo9ZBUM4h+IuyA90EumY
 ZQbPU3J3d+ptKDIl9jfsfIRTZ1tzyct5BQcew3MOOnlCut7RiNIOMvGXc
 F/ZmGYrHF/S4WIm4U5nLHjqb3y44oRyEEILTmqtYwMaVpp+Bh1WcJbf1N
 Jmk1Lee30D161TKVbNd/YAih3Ok2vG6p406k5LYE0MgB03ljgPq8pApyR
 ygzRVTo0CmOQkXfJinPSFieVijRFkiR3Z78xEq98QD06wtPsAPz27q264
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Pv7mIVlX
Subject: [Intel-wired-lan] [PATCH iwl-next 1/8] ice: add support for reading
 and unpacking Rx queue context
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In order to support live migration, the ice driver will need to read
certain data from the Rx queue context. This is stored in the hardware in a
packed format.

Since we use <linux/packing.h> for the mapping between the packed hardware
format and the unpacked structure, it is trivial to enable unpacking
support via the unpack_fields() function.

Add the ice_unpack_rxq_ctx() function based on the unpack_fields() API.
Re-use the same field definitions from the packing implementation.

Add ice_copy_rxq_ctx_from_hw() to copy the Rx queue context data from the
hardware registers.

Use these to implement ice_read_rxq_ctx() which will return the Rx queue
context to the caller in its unpacked ice_rlan_ctx struct.

This will enable the migration logic access to the relevant data about the
Rx device queues. It can easily be copied to the target system as part of
the migration payload, where it will be used to configure the Rx queues.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.h |  2 +
 drivers/net/ethernet/intel/ice/ice_common.c | 60 +++++++++++++++++++++++++++++
 2 files changed, 62 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index f5f132e5b5f945280b53b0eb35aef37c66e3f384..5f15bf83f06a8992f8b260c128df2c625f0bb9f1 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -118,6 +118,8 @@ void ice_set_safe_mode_caps(struct ice_hw *hw);
 
 int ice_write_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
 		      u32 rxq_index);
+int ice_read_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
+		     u32 rxq_index);
 
 int
 ice_aq_get_rss_lut(struct ice_hw *hw, struct ice_aq_get_set_rss_lut_params *get_params);
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index a8b66f7e7f4e65f311daaeb39f1c673ec4cca7ca..2800ec4763688c0d194d29686b470e555a457c1c 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1352,6 +1352,26 @@ static void ice_copy_rxq_ctx_to_hw(struct ice_hw *hw,
 	}
 }
 
+/**
+ * ice_copy_rxq_ctx_from_hw - Copy packed Rx Queue context from HW registers
+ * @hw: pointer to the hardware structure
+ * @rxq_ctx: pointer to the packed Rx queue context
+ * @rxq_index: the index of the Rx queue
+ */
+static void ice_copy_rxq_ctx_from_hw(struct ice_hw *hw,
+				     ice_rxq_ctx_buf_t *rxq_ctx,
+				     u32 rxq_index)
+{
+	u32 *ctx = (u32 *)rxq_ctx;
+
+	/* Copy each dword separately from HW */
+	for (int i = 0; i < ICE_RXQ_CTX_SIZE_DWORDS; i++, ctx++) {
+		*ctx = rd32(hw, QRX_CONTEXT(i, rxq_index));
+
+		ice_debug(hw, ICE_DBG_QCTX, "qrxdata[%d]: %08X\n", i, *ctx);
+	}
+}
+
 #define ICE_CTX_STORE(struct_name, struct_field, width, lsb) \
 	PACKED_FIELD((lsb) + (width) - 1, (lsb), struct struct_name, struct_field)
 
@@ -1395,6 +1415,21 @@ static void ice_pack_rxq_ctx(const struct ice_rlan_ctx *ctx,
 		    QUIRK_LITTLE_ENDIAN | QUIRK_LSW32_IS_FIRST);
 }
 
+/**
+ * ice_unpack_rxq_ctx - Unpack Rx queue context from a HW buffer
+ * @buf: the HW buffer to unpack from
+ * @ctx: the Rx queue context to unpack
+ *
+ * Unpack the Rx queue context from the HW buffer into the CPU-friendly
+ * structure.
+ */
+static void ice_unpack_rxq_ctx(const ice_rxq_ctx_buf_t *buf,
+			       struct ice_rlan_ctx *ctx)
+{
+	unpack_fields(buf, sizeof(*buf), ctx, ice_rlan_ctx_fields,
+		      QUIRK_LITTLE_ENDIAN | QUIRK_LSW32_IS_FIRST);
+}
+
 /**
  * ice_write_rxq_ctx - Write Rx Queue context to hardware
  * @hw: pointer to the hardware structure
@@ -1420,6 +1455,31 @@ int ice_write_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
 	return 0;
 }
 
+/**
+ * ice_read_rxq_ctx - Read Rx queue context from HW
+ * @hw: pointer to the hardware structure
+ * @rlan_ctx: pointer to the Rx queue context
+ * @rxq_index: the index of the Rx queue
+ *
+ * Read the Rx queue context from the hardware registers, and unpack it into
+ * the sparse Rx queue context structure.
+ *
+ * Returns: 0 on success, or -EINVAL if the Rx queue index is invalid.
+ */
+int ice_read_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
+		     u32 rxq_index)
+{
+	ice_rxq_ctx_buf_t buf = {};
+
+	if (rxq_index > QRX_CTRL_MAX_INDEX)
+		return -EINVAL;
+
+	ice_copy_rxq_ctx_from_hw(hw, &buf, rxq_index);
+	ice_unpack_rxq_ctx(&buf, rlan_ctx);
+
+	return 0;
+}
+
 /* LAN Tx Queue Context */
 static const struct packed_field_u8 ice_tlan_ctx_fields[] = {
 				    /* Field			Width	LSB */

-- 
2.48.1.397.gec9d649cc640

