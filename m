Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 45931963338
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Aug 2024 22:58:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A7A960E19;
	Wed, 28 Aug 2024 20:57:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NMJhDqflkOlo; Wed, 28 Aug 2024 20:57:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F20D60B65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724878671;
	bh=0pFRsItO2bTveBfVrunmlU3Hp8Z0usjSLUArydwW+iw=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OkGnCAmpQN7KEd+/gKo6cvp0SyNI8lP8DmCvvn0a0ET8dlKV0oNatGPMwNgZmrX2z
	 3GyqZMtoqZMSqKYmRmJEmSbN7F3zSF8Z42qQVrcLTH6ZCooueWfpPkzThScNqvwWNP
	 0p+h1uLyYJxQuHAarpLMMwYj5P181OlKaOFavU9ZYencX/1BdXMt+3sI+0QJEai2/Z
	 T0NrIPqlOgdERI2GezDBHyigyoxxF7LLsaTi+VtZYoZiTWKDlOS/coHykR3SIxztf2
	 DeKz0nxq1Phh9dbxhD9BOLW4apy/faGYezTRtt851x7LlxjtWe/My+XF1VXI4SgPOA
	 RQ+L3sI2AjgVw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9F20D60B65;
	Wed, 28 Aug 2024 20:57:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 292F11BF409
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3E60A60D5C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wSRrnubg9-B2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Aug 2024 20:57:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AF6D460D96
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF6D460D96
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AF6D460D96
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:32 +0000 (UTC)
X-CSE-ConnectionGUID: PD2e0ehtSqeQTTNIAyWiWQ==
X-CSE-MsgGUID: EhyVm6FWS3Omnr8rz26kfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="34592638"
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="34592638"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 13:57:31 -0700
X-CSE-ConnectionGUID: 1Abefo0TSA+iBk9YFBi1zA==
X-CSE-MsgGUID: BEC6IF5JRvuLvNfvsNvJvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="64049971"
Received: from jekeller-desk.jf.intel.com ([10.166.241.20])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 13:57:29 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 28 Aug 2024 13:57:21 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240828-e810-live-migration-jk-prep-ctx-functions-v2-5-558ab9e240f5@intel.com>
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
 bh=CSIC7wjXzvZOqpiIyQbbSlbLWWd9LJnyAAx1DY5uhm8=;
 b=bz416Xb3/MxKoG5GHCAnvfLp6LgWwd6gxpFvJJoyj8B+0ECwJN0cqaHf
 QKYNbfm8rDxdne1Acc7XVEJxyAcxYGSt3ts04oRtfjMBVz1cEsOWEec2G
 jXKdi+lQdrAdZBI7IY8j2YGZPXTqd8B5aeB0HnwrttaHWiye2AR62LtPx
 bpvjfuOq+T9yEA1YeGEMCkL5DznOALYZVU321/q6kWZFCJkMPZ0ydoHpG
 8Hv6SY1POCZpziHJAq9UCWmS2/ctM7gKSt+L76Sqype8x5Oc7d5XM9CdJ
 I9ddreJh3+pqR7nc90+6TYXAj19/BpNBEWWVeEbKcOWJMdKGTkZJFsP2L
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bz416Xb3
Subject: [Intel-wired-lan] [PATCH iwl-next v2 05/13] lib: packing: duplicate
 pack() and unpack() implementations
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

From: Vladimir Oltean <vladimir.oltean@nxp.com>

packing() is now used in some hot paths, and it would be good to get rid
of some ifs and buts that depend on "op", to speed things up a little bit.

With the main implementations now taking size_t endbit, we no longer
have to check for negative values. Update the local integer variables to
also be size_t to match.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 include/linux/packing.h |   4 +-
 lib/packing.c           | 243 ++++++++++++++++++++++++++++++------------------
 2 files changed, 154 insertions(+), 93 deletions(-)

diff --git a/include/linux/packing.h b/include/linux/packing.h
index ea25cb93cc70..5d36dcd06f60 100644
--- a/include/linux/packing.h
+++ b/include/linux/packing.h
@@ -20,8 +20,8 @@ enum packing_op {
 int packing(void *pbuf, u64 *uval, int startbit, int endbit, size_t pbuflen,
 	    enum packing_op op, u8 quirks);
 
-int pack(void *pbuf, const u64 *uval, size_t startbit, size_t endbit,
-	 size_t pbuflen, u8 quirks);
+int pack(void *pbuf, u64 uval, size_t startbit, size_t endbit, size_t pbuflen,
+	 u8 quirks);
 
 int unpack(const void *pbuf, u64 *uval, size_t startbit, size_t endbit,
 	   size_t pbuflen, u8 quirks);
diff --git a/lib/packing.c b/lib/packing.c
index 2922db8a528c..500184530d07 100644
--- a/lib/packing.c
+++ b/lib/packing.c
@@ -9,11 +9,11 @@
 #include <linux/types.h>
 #include <linux/bitrev.h>
 
-static void adjust_for_msb_right_quirk(u64 *to_write, int *box_start_bit,
-				       int *box_end_bit, u8 *box_mask)
+static void adjust_for_msb_right_quirk(u64 *to_write, size_t *box_start_bit,
+				       size_t *box_end_bit, u8 *box_mask)
 {
-	int box_bit_width = *box_start_bit - *box_end_bit + 1;
-	int new_box_start_bit, new_box_end_bit;
+	size_t box_bit_width = *box_start_bit - *box_end_bit + 1;
+	size_t new_box_start_bit, new_box_end_bit;
 
 	*to_write >>= *box_end_bit;
 	*to_write = bitrev8(*to_write) >> (8 - box_bit_width);
@@ -48,7 +48,7 @@ static void adjust_for_msb_right_quirk(u64 *to_write, int *box_start_bit,
  *
  * Return: the physical offset into the buffer corresponding to the logical box.
  */
-static int calculate_box_addr(int box, size_t len, u8 quirks)
+static size_t calculate_box_addr(size_t box, size_t len, u8 quirks)
 {
 	size_t offset_of_group, offset_in_group, this_group = box / 4;
 	size_t group_size;
@@ -69,13 +69,10 @@ static int calculate_box_addr(int box, size_t len, u8 quirks)
 }
 
 /**
- * packing - Convert numbers (currently u64) between a packed and an unpacked
- *	     format. Unpacked means laid out in memory in the CPU's native
- *	     understanding of integers, while packed means anything else that
- *	     requires translation.
+ * pack - Pack u64 number into bitfield of buffer.
  *
  * @pbuf: Pointer to a buffer holding the packed value.
- * @uval: Pointer to an u64 holding the unpacked value.
+ * @uval: CPU-readable unpacked value to pack.
  * @startbit: The index (in logical notation, compensated for quirks) where
  *	      the packed value starts within pbuf. Must be larger than, or
  *	      equal to, endbit.
@@ -83,58 +80,45 @@ static int calculate_box_addr(int box, size_t len, u8 quirks)
  *	    the packed value ends within pbuf. Must be smaller than, or equal
  *	    to, startbit.
  * @pbuflen: The length in bytes of the packed buffer pointed to by @pbuf.
- * @op: If PACK, then uval will be treated as const pointer and copied (packed)
- *	into pbuf, between startbit and endbit.
- *	If UNPACK, then pbuf will be treated as const pointer and the logical
- *	value between startbit and endbit will be copied (unpacked) to uval.
  * @quirks: A bit mask of QUIRK_LITTLE_ENDIAN, QUIRK_LSW32_IS_FIRST and
  *	    QUIRK_MSB_ON_THE_RIGHT.
  *
- * Note: this is deprecated, prefer to use pack() or unpack() in new code.
- *
  * Return: 0 on success, EINVAL or ERANGE if called incorrectly. Assuming
- *	   correct usage, return code may be discarded.
- *	   If op is PACK, pbuf is modified.
- *	   If op is UNPACK, uval is modified.
+ *	   correct usage, return code may be discarded. The @pbuf memory will
+ *	   be modified on success.
  */
-int packing(void *pbuf, u64 *uval, int startbit, int endbit, size_t pbuflen,
-	    enum packing_op op, u8 quirks)
+int pack(void *pbuf, u64 uval, size_t startbit, size_t endbit, size_t pbuflen,
+	 u8 quirks)
 {
-	/* Number of bits for storing "uval"
-	 * also width of the field to access in the pbuf
-	 */
-	u64 value_width;
 	/* Logical byte indices corresponding to the
 	 * start and end of the field.
 	 */
 	int plogical_first_u8, plogical_last_u8, box;
+	/* width of the field to access in the pbuf */
+	u64 value_width;
 
 	/* startbit is expected to be larger than endbit, and both are
 	 * expected to be within the logically addressable range of the buffer.
 	 */
-	if (unlikely(startbit < endbit || startbit >= 8 * pbuflen || endbit < 0))
+	if (unlikely(startbit < endbit || startbit >= 8 * pbuflen))
 		/* Invalid function call */
 		return -EINVAL;
 
 	value_width = startbit - endbit + 1;
-	if (value_width > 64)
+	if (unlikely(value_width > 64))
 		return -ERANGE;
 
 	/* Check if "uval" fits in "value_width" bits.
 	 * If value_width is 64, the check will fail, but any
 	 * 64-bit uval will surely fit.
 	 */
-	if (op == PACK && value_width < 64 && (*uval >= (1ull << value_width)))
+	if (unlikely(value_width < 64 && uval >= (1ull << value_width)))
 		/* Cannot store "uval" inside "value_width" bits.
 		 * Truncating "uval" is most certainly not desirable,
 		 * so simply erroring out is appropriate.
 		 */
 		return -ERANGE;
 
-	/* Initialize parameter */
-	if (op == UNPACK)
-		*uval = 0;
-
 	/* Iterate through an idealistic view of the pbuf as an u64 with
 	 * no quirks, u8 by u8 (aligned at u8 boundaries), from high to low
 	 * logical bit significance. "box" denotes the current logical u8.
@@ -144,11 +128,12 @@ int packing(void *pbuf, u64 *uval, int startbit, int endbit, size_t pbuflen,
 
 	for (box = plogical_first_u8; box >= plogical_last_u8; box--) {
 		/* Bit indices into the currently accessed 8-bit box */
-		int box_start_bit, box_end_bit, box_addr;
+		size_t box_start_bit, box_end_bit, box_addr;
 		u8  box_mask;
 		/* Corresponding bits from the unpacked u64 parameter */
-		int proj_start_bit, proj_end_bit;
+		size_t proj_start_bit, proj_end_bit;
 		u64 proj_mask;
+		u64 pval;
 
 		/* This u8 may need to be accessed in its entirety
 		 * (from bit 7 to bit 0), or not, depending on the
@@ -182,66 +167,21 @@ int packing(void *pbuf, u64 *uval, int startbit, int endbit, size_t pbuflen,
 		 */
 		box_addr = calculate_box_addr(box, pbuflen, quirks);
 
-		if (op == UNPACK) {
-			u64 pval;
+		/* Write to pbuf, read from uval */
+		pval = uval & proj_mask;
+		pval >>= proj_end_bit;
+		if (quirks & QUIRK_MSB_ON_THE_RIGHT)
+			adjust_for_msb_right_quirk(&pval,
+						   &box_start_bit,
+						   &box_end_bit,
+						   &box_mask);
 
-			/* Read from pbuf, write to uval */
-			pval = ((u8 *)pbuf)[box_addr] & box_mask;
-			if (quirks & QUIRK_MSB_ON_THE_RIGHT)
-				adjust_for_msb_right_quirk(&pval,
-							   &box_start_bit,
-							   &box_end_bit,
-							   &box_mask);
-
-			pval >>= box_end_bit;
-			pval <<= proj_end_bit;
-			*uval &= ~proj_mask;
-			*uval |= pval;
-		} else {
-			u64 pval;
-
-			/* Write to pbuf, read from uval */
-			pval = (*uval) & proj_mask;
-			pval >>= proj_end_bit;
-			if (quirks & QUIRK_MSB_ON_THE_RIGHT)
-				adjust_for_msb_right_quirk(&pval,
-							   &box_start_bit,
-							   &box_end_bit,
-							   &box_mask);
-
-			pval <<= box_end_bit;
-			((u8 *)pbuf)[box_addr] &= ~box_mask;
-			((u8 *)pbuf)[box_addr] |= pval;
-		}
+		pval <<= box_end_bit;
+		((u8 *)pbuf)[box_addr] &= ~box_mask;
+		((u8 *)pbuf)[box_addr] |= pval;
 	}
 	return 0;
 }
-EXPORT_SYMBOL(packing);
-
-/**
- * pack - Pack u64 number into bitfield of buffer.
- *
- * @pbuf: Pointer to a buffer holding the packed value.
- * @uval: Pointer to an u64 holding the unpacked value.
- * @startbit: The index (in logical notation, compensated for quirks) where
- *	      the packed value starts within pbuf. Must be larger than, or
- *	      equal to, endbit.
- * @endbit: The index (in logical notation, compensated for quirks) where
- *	    the packed value ends within pbuf. Must be smaller than, or equal
- *	    to, startbit.
- * @pbuflen: The length in bytes of the packed buffer pointed to by @pbuf.
- * @quirks: A bit mask of QUIRK_LITTLE_ENDIAN, QUIRK_LSW32_IS_FIRST and
- *	    QUIRK_MSB_ON_THE_RIGHT.
- *
- * Return: 0 on success, EINVAL or ERANGE if called incorrectly. Assuming
- *	   correct usage, return code may be discarded. The @pbuf memory will
- *	   be modified on success.
- */
-int pack(void *pbuf, const u64 *uval, size_t startbit, size_t endbit,
-	 size_t pbuflen, u8 quirks)
-{
-	return packing(pbuf, (u64 *)uval, startbit, endbit, pbuflen, PACK, quirks);
-}
 EXPORT_SYMBOL(pack);
 
 /**
@@ -266,8 +206,129 @@ EXPORT_SYMBOL(pack);
 int unpack(const void *pbuf, u64 *uval, size_t startbit, size_t endbit,
 	   size_t pbuflen, u8 quirks)
 {
-	return packing((void *)pbuf, uval, startbit, endbit, pbuflen, UNPACK, quirks);
+	/* Logical byte indices corresponding to the
+	 * start and end of the field.
+	 */
+	int plogical_first_u8, plogical_last_u8, box;
+	/* width of the field to access in the pbuf */
+	u64 value_width;
+
+	/* startbit is expected to be larger than endbit, and both are
+	 * expected to be within the logically addressable range of the buffer.
+	 */
+	if (unlikely(startbit < endbit || startbit >= 8 * pbuflen))
+		/* Invalid function call */
+		return -EINVAL;
+
+	value_width = startbit - endbit + 1;
+	if (unlikely(value_width > 64))
+		return -ERANGE;
+
+	/* Initialize parameter */
+	*uval = 0;
+
+	/* Iterate through an idealistic view of the pbuf as an u64 with
+	 * no quirks, u8 by u8 (aligned at u8 boundaries), from high to low
+	 * logical bit significance. "box" denotes the current logical u8.
+	 */
+	plogical_first_u8 = startbit / 8;
+	plogical_last_u8  = endbit / 8;
+
+	for (box = plogical_first_u8; box >= plogical_last_u8; box--) {
+		/* Bit indices into the currently accessed 8-bit box */
+		size_t box_start_bit, box_end_bit, box_addr;
+		u8  box_mask;
+		/* Corresponding bits from the unpacked u64 parameter */
+		size_t proj_start_bit, proj_end_bit;
+		u64 proj_mask;
+		u64 pval;
+
+		/* This u8 may need to be accessed in its entirety
+		 * (from bit 7 to bit 0), or not, depending on the
+		 * input arguments startbit and endbit.
+		 */
+		if (box == plogical_first_u8)
+			box_start_bit = startbit % 8;
+		else
+			box_start_bit = 7;
+		if (box == plogical_last_u8)
+			box_end_bit = endbit % 8;
+		else
+			box_end_bit = 0;
+
+		/* We have determined the box bit start and end.
+		 * Now we calculate where this (masked) u8 box would fit
+		 * in the unpacked (CPU-readable) u64 - the u8 box's
+		 * projection onto the unpacked u64. Though the
+		 * box is u8, the projection is u64 because it may fall
+		 * anywhere within the unpacked u64.
+		 */
+		proj_start_bit = ((box * 8) + box_start_bit) - endbit;
+		proj_end_bit   = ((box * 8) + box_end_bit) - endbit;
+		proj_mask = GENMASK_ULL(proj_start_bit, proj_end_bit);
+		box_mask  = GENMASK_ULL(box_start_bit, box_end_bit);
+
+		/* Determine the offset of the u8 box inside the pbuf,
+		 * adjusted for quirks. The adjusted box_addr will be used for
+		 * effective addressing inside the pbuf (so it's not
+		 * logical any longer).
+		 */
+		box_addr = calculate_box_addr(box, pbuflen, quirks);
+
+		/* Read from pbuf, write to uval */
+		pval = ((u8 *)pbuf)[box_addr] & box_mask;
+		if (quirks & QUIRK_MSB_ON_THE_RIGHT)
+			adjust_for_msb_right_quirk(&pval,
+						   &box_start_bit,
+						   &box_end_bit,
+						   &box_mask);
+
+		pval >>= box_end_bit;
+		pval <<= proj_end_bit;
+		*uval &= ~proj_mask;
+		*uval |= pval;
+	}
+	return 0;
 }
 EXPORT_SYMBOL(unpack);
 
+/**
+ * packing - Convert numbers (currently u64) between a packed and an unpacked
+ *	     format. Unpacked means laid out in memory in the CPU's native
+ *	     understanding of integers, while packed means anything else that
+ *	     requires translation.
+ *
+ * @pbuf: Pointer to a buffer holding the packed value.
+ * @uval: Pointer to an u64 holding the unpacked value.
+ * @startbit: The index (in logical notation, compensated for quirks) where
+ *	      the packed value starts within pbuf. Must be larger than, or
+ *	      equal to, endbit.
+ * @endbit: The index (in logical notation, compensated for quirks) where
+ *	    the packed value ends within pbuf. Must be smaller than, or equal
+ *	    to, startbit.
+ * @pbuflen: The length in bytes of the packed buffer pointed to by @pbuf.
+ * @op: If PACK, then uval will be treated as const pointer and copied (packed)
+ *	into pbuf, between startbit and endbit.
+ *	If UNPACK, then pbuf will be treated as const pointer and the logical
+ *	value between startbit and endbit will be copied (unpacked) to uval.
+ * @quirks: A bit mask of QUIRK_LITTLE_ENDIAN, QUIRK_LSW32_IS_FIRST and
+ *	    QUIRK_MSB_ON_THE_RIGHT.
+ *
+ * Note: this is deprecated, prefer to use pack() or unpack() in new code.
+ *
+ * Return: 0 on success, EINVAL or ERANGE if called incorrectly. Assuming
+ *	   correct usage, return code may be discarded.
+ *	   If op is PACK, pbuf is modified.
+ *	   If op is UNPACK, uval is modified.
+ */
+int packing(void *pbuf, u64 *uval, int startbit, int endbit, size_t pbuflen,
+	    enum packing_op op, u8 quirks)
+{
+	if (op == PACK)
+		return pack(pbuf, *uval, startbit, endbit, pbuflen, quirks);
+
+	return unpack(pbuf, uval, startbit, endbit, pbuflen, quirks);
+}
+EXPORT_SYMBOL(packing);
+
 MODULE_DESCRIPTION("Generic bitfield packing and unpacking");

-- 
2.46.0.124.g2dc1a81c8933

