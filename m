Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 43744963337
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Aug 2024 22:58:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1F3A760E47;
	Wed, 28 Aug 2024 20:57:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KyDLO31Xg2oE; Wed, 28 Aug 2024 20:57:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD75A60DFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724878668;
	bh=nLLcq9cJ+rUtVqKb236JtOu4v1huirZ58v6CbrDAhSA=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yntcKgG2YernsTtPbNc+dDQ5mHgj9RCFTgShX1nnIASSEKtGUQLpkN54U8FTj2+zY
	 gg7FupU6nabrSpckXOsRRK/QcWRC0YqbEyVue2+GCer5QoUhyrtbZ3JZxCNnzyfNb2
	 d4sg6KNgbu4v+9MbjRgVkLffz+XwN+tAaBzjlgM1XVTkTXKXjIR5wzPt0S90zcdxHH
	 qz+jPBe4iQzWwA8AsXQlBYxBO3aPo2A0Y2Hlx/XhSrZ1HhITpNwI6UP93nH5P8+93Y
	 r9XSeZdbT2wR/4Rc/6wOJkuv6iCsb41i2OioU+pG0uysmWK4eknctvo6wiF9bI8gM8
	 1FZ9+QZoo4xkg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD75A60DFD;
	Wed, 28 Aug 2024 20:57:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0771B1BF980
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C94B081521
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T1W7A-iICGbq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Aug 2024 20:57:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E29A181551
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E29A181551
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E29A181551
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:31 +0000 (UTC)
X-CSE-ConnectionGUID: zL9NPzd5TmOhqkLkrCkCsA==
X-CSE-MsgGUID: O//WLnaAR4qzu0g4NvkKtA==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="34592614"
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="34592614"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 13:57:31 -0700
X-CSE-ConnectionGUID: E0grSi5JRC67e2OwoFR4Jg==
X-CSE-MsgGUID: dZBQDbrXSQyWLpLT0B3y2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="64049985"
Received: from jekeller-desk.jf.intel.com ([10.166.241.20])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 13:57:29 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 28 Aug 2024 13:57:26 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240828-e810-live-migration-jk-prep-ctx-functions-v2-10-558ab9e240f5@intel.com>
References: <20240828-e810-live-migration-jk-prep-ctx-functions-v2-0-558ab9e240f5@intel.com>
In-Reply-To: <20240828-e810-live-migration-jk-prep-ctx-functions-v2-0-558ab9e240f5@intel.com>
To: Vladimir Oltean <olteanv@gmail.com>, netdev <netdev@vger.kernel.org>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
X-Mailer: b4 0.14.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724878653; x=1756414653;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=l7QkD+FUPja3RWxoITYr6vFS1/aY/myxAhFh3UngTWA=;
 b=CtjXMbZbUTjdL2vt2oPaIKm8qB9LtCgdVu7Bj3qP9KjDpeA9mgFJFAjQ
 8dT5ZmnvkTpdzuIOZOjFpSmnDIH7K7BvrVYiuGW31rZjLkK+Nh2dr7U3a
 XRmxIaZZh4N+3FNGDWuf+y4hC0A8qK4mX4K3SnAdWbA3mU7TwFeIoHKdY
 y/3d4nDNu+8SVulyUtgcdRMZIIdJZ5bEPlOJl5E6jwWfOlAMoIW07vj7k
 v4ooBZ8oeVg2KKrpus9dVdgSQ8YEWx/CZvotdfqR1uy6/wNf0BqjhvVKI
 slkbOQWHo+HCfFqlKP5CiQQbqYWy+X09xV8T3LqAvRztlixe997idaV7S
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CtjXMbZb
Subject: [Intel-wired-lan] [PATCH iwl-next v2 10/13] ice: use
 <linux/packing.h> for Tx and Rx queue context data
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice driver needs to write the Tx and Rx queue context when programming
Tx and Rx queues. This is currently done using some bespoke custom logic
via the ice_set_ctx() and its helper functions, along with bit position
definitions in the ice_tlan_ctx_info and ice_rlan_ctx_info structures.

This logic does work, but is problematic for several reasons:

1) ice_set_ctx requires a helper function for each byte size being packed,
   as it uses a separate function to pack u8, u16, u32, and u64 fields.
   This requires 4 functions which contain near-duplicate logic with the
   types changed out.

2) The logic in the ice_pack_ctx_word, ice_pack_ctx_dword, and
   ice_pack_ctx_qword does not handle values which straddle alignment
   boundaries very well. This requires that several fields in the
   ice_tlan_ctx_info and ice_rlan_ctx_info be a size larger than their bit
   size should require.

3) Future support for live migration will require adding unpacking
   functions to take the packed hardware context and unpack it into the
   ice_rlan_ctx and ice_tlan_ctx structures. Implementing this would
   require implementing ice_get_ctx, and its associated helper functions,
   which essentially doubles the amount of code required.

Since Linux 5.2, commit 554aae35007e ("lib: Add support for generic packing
operations") has had a robust bit packing library function which can
correctly pack or unpack data between the CPU-useful unpacked structures
and bitpacked buffers used by hardware. This API was previously broken if
the buffer size was not aligned to 4 bytes. However, this has recently been
fixed.

The major difference with <linux/packing.h> is that it expects the unpacked
data will always be a u64. This is somewhat limiting, but can be worked
around by using a local temporary u64.

Replace the ice-specific ice_set_ctx() logic with a <linux/packing.h>
based implementation, ice_ctx_pack(). It takes pointers to the relevant
packed and unpacked storage, as well as the least significant bit and the
width. A temporary local u64 value is used to interact with the pack() API.

As with the other implementations, we handle the error codes from pack()
with a pr_err and a call to dump_stack. These are unexpected as they should
only happen due to programmer error.

Note that I initially tried implementing this as functions which just
repeatably called the ice_ctx_pack() function instead of using the
ice_rlan_ctx_info and ice_tlan_ctx_info arrays. This does work, but it has
a couple of downsides:

 1) it wastes a significant amount of bytes in the text section, vs the
    savings from removing the RO data of the arrays.

 2) this cost is made worse after implementing an unpack function, as we
    must duplicate the list of packings for the unpack function.

It does have the slight upside of allowing integer type promotion when
packing. However, the unpack() function still requires a pointer to the u64
value, so a temporary variable would still be required when unpacking.

Finally, I opted to use the pack() interface instead of the packing()
interface since it ends up producing code I found easier to read overall.
The unpack support will ultimately add a few extra bytes to implement
separate ice_ctx_unpack(), and the __ice_unpack_queue_ctx(). However, I
think the resulting code is still simpler and will avoid requiring the
packing() to stick around forever. The overall cost is not high since we
still store the actual packing tables as shared RO data.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.h |  13 +-
 drivers/net/ethernet/intel/ice/ice_base.c   |   3 +-
 drivers/net/ethernet/intel/ice/ice_common.c | 285 ++++++++--------------------
 3 files changed, 96 insertions(+), 205 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 27208a60cece..550fdd08e6aa 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -5,6 +5,7 @@
 #define _ICE_COMMON_H_
 
 #include <linux/bitfield.h>
+#include <linux/packing.h>
 
 #include "ice.h"
 #include "ice_type.h"
@@ -93,8 +94,16 @@ bool ice_check_sq_alive(struct ice_hw *hw, struct ice_ctl_q_info *cq);
 int ice_aq_q_shutdown(struct ice_hw *hw, bool unloading);
 void ice_fill_dflt_direct_cmd_desc(struct ice_aq_desc *desc, u16 opcode);
 extern const struct ice_ctx_ele ice_tlan_ctx_info[];
-int ice_set_ctx(struct ice_hw *hw, u8 *src_ctx, u8 *dest_ctx,
-		const struct ice_ctx_ele *ce_info);
+extern const struct ice_ctx_ele ice_rlan_ctx_info[];
+
+void __ice_pack_queue_ctx(const void *ctx, void *buf, size_t len,
+			  const struct ice_ctx_ele *ctx_info);
+
+#define ice_pack_rxq_ctx(rlan_ctx, buf) \
+	__ice_pack_queue_ctx((rlan_ctx), (buf), sizeof(buf), ice_rlan_ctx_info)
+
+#define ice_pack_txq_ctx(tlan_ctx, buf) \
+	__ice_pack_queue_ctx((tlan_ctx), (buf), sizeof(buf), ice_tlan_ctx_info)
 
 extern struct mutex ice_global_cfg_lock_sw;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index f448d3a84564..1881ce8105ca 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -907,8 +907,7 @@ ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_tx_ring *ring,
 	ice_setup_tx_ctx(ring, &tlan_ctx, pf_q);
 	/* copy context contents into the qg_buf */
 	qg_buf->txqs[0].txq_id = cpu_to_le16(pf_q);
-	ice_set_ctx(hw, (u8 *)&tlan_ctx, qg_buf->txqs[0].txq_ctx,
-		    ice_tlan_ctx_info);
+	ice_pack_txq_ctx(&tlan_ctx, qg_buf->txqs[0].txq_ctx);
 
 	/* init queue specific tail reg. It is referred as
 	 * transmit comm scheduler queue doorbell.
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index c4b24ba36b5e..09a94c20e16d 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1387,8 +1387,89 @@ ice_copy_rxq_ctx_to_hw(struct ice_hw *hw, u8 *ice_rxq_ctx, u32 rxq_index)
 	return 0;
 }
 
+/**
+ * ice_ctx_pack - Pack Tx/Rx queue context data
+ * @pbuf: pointer to the packed buffer
+ * @pbuflen: size of the packed buffer
+ * @val: pointer to storage for the unpacked data
+ * @len: size of the unpacked data
+ * @width: width of bits to pack
+ * @lsb: least significant bit in the packed buffer
+ *
+ * Pack the given field of the Tx or Rx queue context into the hardware data
+ * buffer. The packed contents are in full Little Endian ordering with the
+ * least significant 4-byte block first.
+ *
+ * The only time that pack() should produce an error is due to invalid bit
+ * offsets. Thus, errors are logged along with a stack dump.
+ */
+static void ice_ctx_pack(void *pbuf, size_t pbuflen, const void *val,
+			 size_t len, size_t width, size_t lsb)
+{
+	size_t msb = lsb + width - 1;
+	u64 uval;
+	int err;
+
+	switch (len) {
+	case sizeof(u8):
+		uval = *((u8 *)val);
+		break;
+	case sizeof(u16):
+		uval = *((u16 *)val);
+		break;
+	case sizeof(u32):
+		uval = *((u32 *)val);
+		break;
+	case sizeof(u64):
+		uval = *((u64 *)val);
+		break;
+	default:
+		WARN_ONCE(1, "Unexpected size %zd when packing queue context",
+			  len);
+		return;
+	}
+
+	err = pack(pbuf, uval, msb, lsb, pbuflen,
+		   QUIRK_LITTLE_ENDIAN | QUIRK_LSW32_IS_FIRST);
+	if (unlikely(err)) {
+		if (err == -EINVAL) {
+			pr_err("MSB (%zd) expected to be larger than LSB (%zd)\n",
+			       msb, lsb);
+		} else if (err == -ERANGE) {
+			if ((msb - lsb + 1) > 64)
+				pr_err("Field %zd-%zd too large for 64 bits!\n",
+				       lsb, msb);
+			else
+				pr_err("Cannot store %llx inside field %zd-%zd (would truncate)\n",
+				       uval, lsb, msb);
+		}
+		dump_stack();
+	}
+}
+
+/**
+ * __ice_pack_queue_ctx - Pack Tx or Rx queue context
+ * @ctx: Unpacked queue context structure
+ * @buf: packed buffer storage
+ * @len: size of the packed buffer
+ * @ctx_info: array describing the packing layout
+ */
+void __ice_pack_queue_ctx(const void *ctx, void *buf, size_t len,
+			  const struct ice_ctx_ele *ctx_info)
+{
+	for (int f = 0; ctx_info[f].width; f++) {
+		const struct ice_ctx_ele *field_info = &ctx_info[f];
+		const void *field;
+
+		field = (const void *)ctx + field_info->offset;
+
+		ice_ctx_pack(buf, len, field, field_info->size_of,
+			     field_info->width, field_info->lsb);
+	}
+}
+
 /* LAN Rx Queue Context */
-static const struct ice_ctx_ele ice_rlan_ctx_info[] = {
+const struct ice_ctx_ele ice_rlan_ctx_info[] = {
 	/* Field		Width	LSB */
 	ICE_CTX_STORE(ice_rlan_ctx, head,		13,	0),
 	ICE_CTX_STORE(ice_rlan_ctx, cpuid,		8,	13),
@@ -1433,7 +1514,8 @@ int ice_write_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
 
 	rlan_ctx->prefena = 1;
 
-	ice_set_ctx(hw, (u8 *)rlan_ctx, ctx_buf, ice_rlan_ctx_info);
+	ice_pack_rxq_ctx(rlan_ctx, ctx_buf);
+
 	return ice_copy_rxq_ctx_to_hw(hw, ctx_buf, rxq_index);
 }
 
@@ -4526,205 +4608,6 @@ ice_aq_add_rdma_qsets(struct ice_hw *hw, u8 num_qset_grps,
 
 /* End of FW Admin Queue command wrappers */
 
-/**
- * ice_pack_ctx_byte - write a byte to a packed context structure
- * @src_ctx: unpacked source context structure
- * @dest_ctx: packed destination context data
- * @ce_info: context element description
- */
-static void ice_pack_ctx_byte(u8 *src_ctx, u8 *dest_ctx,
-			      const struct ice_ctx_ele *ce_info)
-{
-	u8 src_byte, dest_byte, mask;
-	u8 *from, *dest;
-	u16 shift_width;
-
-	/* copy from the next struct field */
-	from = src_ctx + ce_info->offset;
-
-	/* prepare the bits and mask */
-	shift_width = ce_info->lsb % 8;
-	mask = GENMASK(ce_info->width - 1 + shift_width, shift_width);
-
-	src_byte = *from;
-	src_byte <<= shift_width;
-	src_byte &= mask;
-
-	/* get the current bits from the target bit string */
-	dest = dest_ctx + (ce_info->lsb / 8);
-
-	memcpy(&dest_byte, dest, sizeof(dest_byte));
-
-	dest_byte &= ~mask;	/* get the bits not changing */
-	dest_byte |= src_byte;	/* add in the new bits */
-
-	/* put it all back */
-	memcpy(dest, &dest_byte, sizeof(dest_byte));
-}
-
-/**
- * ice_pack_ctx_word - write a word to a packed context structure
- * @src_ctx: unpacked source context structure
- * @dest_ctx: packed destination context data
- * @ce_info: context element description
- */
-static void ice_pack_ctx_word(u8 *src_ctx, u8 *dest_ctx,
-			      const struct ice_ctx_ele *ce_info)
-{
-	u16 src_word, mask;
-	__le16 dest_word;
-	u8 *from, *dest;
-	u16 shift_width;
-
-	/* copy from the next struct field */
-	from = src_ctx + ce_info->offset;
-
-	/* prepare the bits and mask */
-	shift_width = ce_info->lsb % 8;
-	mask = GENMASK(ce_info->width - 1 + shift_width, shift_width);
-
-	/* don't swizzle the bits until after the mask because the mask bits
-	 * will be in a different bit position on big endian machines
-	 */
-	src_word = *(u16 *)from;
-	src_word <<= shift_width;
-	src_word &= mask;
-
-	/* get the current bits from the target bit string */
-	dest = dest_ctx + (ce_info->lsb / 8);
-
-	memcpy(&dest_word, dest, sizeof(dest_word));
-
-	dest_word &= ~(cpu_to_le16(mask));	/* get the bits not changing */
-	dest_word |= cpu_to_le16(src_word);	/* add in the new bits */
-
-	/* put it all back */
-	memcpy(dest, &dest_word, sizeof(dest_word));
-}
-
-/**
- * ice_pack_ctx_dword - write a dword to a packed context structure
- * @src_ctx: unpacked source context structure
- * @dest_ctx: packed destination context data
- * @ce_info: context element description
- */
-static void ice_pack_ctx_dword(u8 *src_ctx, u8 *dest_ctx,
-			       const struct ice_ctx_ele *ce_info)
-{
-	u32 src_dword, mask;
-	__le32 dest_dword;
-	u8 *from, *dest;
-	u16 shift_width;
-
-	/* copy from the next struct field */
-	from = src_ctx + ce_info->offset;
-
-	/* prepare the bits and mask */
-	shift_width = ce_info->lsb % 8;
-	mask = GENMASK(ce_info->width - 1 + shift_width, shift_width);
-
-	/* don't swizzle the bits until after the mask because the mask bits
-	 * will be in a different bit position on big endian machines
-	 */
-	src_dword = *(u32 *)from;
-	src_dword <<= shift_width;
-	src_dword &= mask;
-
-	/* get the current bits from the target bit string */
-	dest = dest_ctx + (ce_info->lsb / 8);
-
-	memcpy(&dest_dword, dest, sizeof(dest_dword));
-
-	dest_dword &= ~(cpu_to_le32(mask));	/* get the bits not changing */
-	dest_dword |= cpu_to_le32(src_dword);	/* add in the new bits */
-
-	/* put it all back */
-	memcpy(dest, &dest_dword, sizeof(dest_dword));
-}
-
-/**
- * ice_pack_ctx_qword - write a qword to a packed context structure
- * @src_ctx: unpacked source context structure
- * @dest_ctx: packed destination context data
- * @ce_info: context element description
- */
-static void ice_pack_ctx_qword(u8 *src_ctx, u8 *dest_ctx,
-			       const struct ice_ctx_ele *ce_info)
-{
-	u64 src_qword, mask;
-	__le64 dest_qword;
-	u8 *from, *dest;
-	u16 shift_width;
-
-	/* copy from the next struct field */
-	from = src_ctx + ce_info->offset;
-
-	/* prepare the bits and mask */
-	shift_width = ce_info->lsb % 8;
-	mask = GENMASK_ULL(ce_info->width - 1 + shift_width, shift_width);
-
-	/* don't swizzle the bits until after the mask because the mask bits
-	 * will be in a different bit position on big endian machines
-	 */
-	src_qword = *(u64 *)from;
-	src_qword <<= shift_width;
-	src_qword &= mask;
-
-	/* get the current bits from the target bit string */
-	dest = dest_ctx + (ce_info->lsb / 8);
-
-	memcpy(&dest_qword, dest, sizeof(dest_qword));
-
-	dest_qword &= ~(cpu_to_le64(mask));	/* get the bits not changing */
-	dest_qword |= cpu_to_le64(src_qword);	/* add in the new bits */
-
-	/* put it all back */
-	memcpy(dest, &dest_qword, sizeof(dest_qword));
-}
-
-/**
- * ice_set_ctx - set context bits in packed structure
- * @hw: pointer to the hardware structure
- * @src_ctx:  pointer to a generic non-packed context structure
- * @dest_ctx: pointer to memory for the packed structure
- * @ce_info: List of Rx context elements
- */
-int ice_set_ctx(struct ice_hw *hw, u8 *src_ctx, u8 *dest_ctx,
-		const struct ice_ctx_ele *ce_info)
-{
-	int f;
-
-	for (f = 0; ce_info[f].width; f++) {
-		/* We have to deal with each element of the FW response
-		 * using the correct size so that we are correct regardless
-		 * of the endianness of the machine.
-		 */
-		if (ce_info[f].width > (ce_info[f].size_of * BITS_PER_BYTE)) {
-			ice_debug(hw, ICE_DBG_QCTX, "Field %d width of %d bits larger than size of %d byte(s) ... skipping write\n",
-				  f, ce_info[f].width, ce_info[f].size_of);
-			continue;
-		}
-		switch (ce_info[f].size_of) {
-		case sizeof(u8):
-			ice_pack_ctx_byte(src_ctx, dest_ctx, &ce_info[f]);
-			break;
-		case sizeof(u16):
-			ice_pack_ctx_word(src_ctx, dest_ctx, &ce_info[f]);
-			break;
-		case sizeof(u32):
-			ice_pack_ctx_dword(src_ctx, dest_ctx, &ce_info[f]);
-			break;
-		case sizeof(u64):
-			ice_pack_ctx_qword(src_ctx, dest_ctx, &ce_info[f]);
-			break;
-		default:
-			return -EINVAL;
-		}
-	}
-
-	return 0;
-}
-
 /**
  * ice_get_lan_q_ctx - get the LAN queue context for the given VSI and TC
  * @hw: pointer to the HW struct

-- 
2.46.0.124.g2dc1a81c8933

