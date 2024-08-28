Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E34C963334
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Aug 2024 22:57:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E0CAB60E3A;
	Wed, 28 Aug 2024 20:57:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x6R32SQIYHD2; Wed, 28 Aug 2024 20:57:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B470860DEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724878664;
	bh=E3oqVfOSt6OwN4eSSde1+5MeJx0kNJPhqxJHLyLV7vI=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vNCQrlFJfeSNVZRenqyvDI4O8ayNKy7QfC4LJYdhjnk0ME8uRiKG6XI4zW3uxcNhl
	 7p1vakco1DKbqkqcrVKmPdMXyjuoJGbCIWfSZcmuLO7YHo3UUU6gsPqsuQkGsklSwZ
	 I77jMycfXLnc57TUsXR2tfga+ugjnEzIFQZg7rtIBYueJR3k511VGZDNHAXIqiNhG7
	 qYefZ8zWReZ7mUPK2QCj5o2LeskjA4AezUjkAnJ+ltCtC9DzMLKDh698qfTLPedu4p
	 ncQ7WwXd1vrEFXK/QJrH27xg2lBj6accaQyd9N6bg/50I3PmuPngkwM8uKojSAUHZx
	 GgwR6w0JCtM3g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B470860DEF;
	Wed, 28 Aug 2024 20:57:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 03FDE1BF409
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C18C181584
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X46Uj2iGiOQW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Aug 2024 20:57:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9CEED81521
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9CEED81521
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9CEED81521
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:31 +0000 (UTC)
X-CSE-ConnectionGUID: mPRhmLBOQfCbC2gOaWNVcw==
X-CSE-MsgGUID: JCdMbJlmRrW13/y7ozulxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="34592608"
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="34592608"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 13:57:30 -0700
X-CSE-ConnectionGUID: iqlICsHZTB6l9vEC9lwmCQ==
X-CSE-MsgGUID: KtYRFX3aQDWzxMXujnTzmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="64049980"
Received: from jekeller-desk.jf.intel.com ([10.166.241.20])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 13:57:29 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 28 Aug 2024 13:57:24 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240828-e810-live-migration-jk-prep-ctx-functions-v2-8-558ab9e240f5@intel.com>
References: <20240828-e810-live-migration-jk-prep-ctx-functions-v2-0-558ab9e240f5@intel.com>
In-Reply-To: <20240828-e810-live-migration-jk-prep-ctx-functions-v2-0-558ab9e240f5@intel.com>
To: Vladimir Oltean <olteanv@gmail.com>, netdev <netdev@vger.kernel.org>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
X-Mailer: b4 0.14.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724878652; x=1756414652;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=+/ieF3m9cyb6YmsPPZ4RUO2kGglCSV3sdOyom8RkNIc=;
 b=G1iQuEAc8YHtCuXXNja+dyj+64yKNwOBjB0qlkvQv0t3CogbAzCXevSk
 y87uQEcOCBUHXw563gz/Jryo5CDnqsXpakvXlwYchVGKJUdGdF3yX1ZAg
 LlHGS0PWxRzzI9PyYbjByImEBjCtT1GRsaQwZDpD8aMm0g00cof9ljPSP
 CdMs6Wq72yUDm/s1WeK7uBQ20YuYOgOnx/mPa2wxnsM2NTvI8Lw2FwkIA
 /BySDgih7LMj1rcXY270UacRMoI6n6F53w9O8kcGTUrEHCwAcK/4kJvO7
 xLQL/TGiOJVIJX1h5jTIiGVko9OnOXrWhH/NgoVa6pHjIFa4KxZX/Sbhr
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G1iQuEAc
Subject: [Intel-wired-lan] [PATCH iwl-next v2 08/13] lib: packing: fix
 QUIRK_MSB_ON_THE_RIGHT behavior
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

The QUIRK_MSB_ON_THE_RIGHT quirk is intended to modify pack() and unpack()
so that the most significant bit of each byte in the packed layout is on
the right.

The way the quirk is currently implemented is broken whenever the packing
code packs or unpacks any value that is not exactly a full byte.

The broken behavior can occur when packing any values smaller than one
byte, when packing any value that is not exactly a whole number of bytes,
or when the packing is not aligned to a byte boundary.

This quirk is documented in the following way:

  1. Normally (no quirks), we would do it like this:

  ::

    63 62 61 60 59 58 57 56 55 54 53 52 51 50 49 48 47 46 45 44 43 42 41 40 39 38 37 36 35 34 33 32
    7                       6                       5                        4
    31 30 29 28 27 26 25 24 23 22 21 20 19 18 17 16 15 14 13 12 11 10  9  8  7  6  5  4  3  2  1  0
    3                       2                       1                        0

  <snip>

  2. If QUIRK_MSB_ON_THE_RIGHT is set, we do it like this:

  ::

    56 57 58 59 60 61 62 63 48 49 50 51 52 53 54 55 40 41 42 43 44 45 46 47 32 33 34 35 36 37 38 39
    7                       6                        5                       4
    24 25 26 27 28 29 30 31 16 17 18 19 20 21 22 23  8  9 10 11 12 13 14 15  0  1  2  3  4  5  6  7
    3                       2                        1                       0

  That is, QUIRK_MSB_ON_THE_RIGHT does not affect byte positioning, but
  inverts bit offsets inside a byte.

Essentially, the mapping for physical bit offsets should be reserved for a
given byte within the payload. This reversal should be fixed to the bytes
in the packing layout.

The logic to implement this quirk is handled within the
adjust_for_msb_right_quirk() function. This function does not work properly
when dealing with the bytes that contain only a partial amount of data.

In particular, consider trying to pack or unpack the range 53-44. We should
always be mapping the bits from the logical ordering to their physical
ordering in the same way, regardless of what sequence of bits we are
unpacking.

This, we should grab the following logical bits:

  Logical: 55 54 53 52 51 50 49 48 47 45 44 43 42 41 40 39
                  ^  ^  ^  ^  ^  ^  ^  ^  ^

And pack them into the physical bits:

   Physical: 48 49 50 51 52 53 54 55 40 41 42 43 44 45 46 47
    Logical: 48 49 50 51 52 53                   44 45 46 47
              ^  ^  ^  ^  ^  ^                    ^  ^  ^  ^

The current logic in adjust_for_msb_right_quirk is broken. I believe it is
intending to map according to the following:

  Physical: 48 49 50 51 52 53 54 55 40 41 42 43 44 45 46 47
   Logical:       48 49 50 51 52 53 44 45 46 47
                   ^  ^  ^  ^  ^  ^  ^  ^  ^  ^

That is, it tries to keep the bits at the start and end of a packing
together. This is wrong, as it makes the packing change what bit is being
mapped to what based on which bits you're currently packing or unpacking.

Worse, the actual calculations within adjust_for_msb_right_quirk don't make
sense.

Consider the case when packing the last byte of an unaligned packing. It
might have a start bit of 7 and an end bit of 5. This would have a width of
3 bits. The new_start_bit will be calculated as the width - the box_end_bit
- 1. This will underflow and produce a negative value, which will
ultimate result in generating a new box_mask of all 0s.

For any other values, the result of the calculations of the
new_box_end_bit, new_box_start_bit, and the new box_mask will result in the
exact same values for the box_end_bit, box_start_bit, and box_mask. This
makes the calculations completely irrelevant.

If box_end_bit is 0, and box_start_bit is 7, then the entire function of
adjust_for_msb_right_quirk will boil down to just:

    *to_write = bitrev8(*to_write)

The other adjustments are attempting (incorrectly) to keep the bits in the
same place but just reversed. This is not the right behavior even if
implemented correctly, as it leaves the mapping dependent on the bit values
being packed or unpacked.

Remove adjust_for_msb_right_quirk() and just use bitrev8 to reverse the
byte order when interacting with the packed data.

In particular, for packing, we need to reverse both the box_mask and the
physical value being packed. This is done after shifting the value by
box_end_bit so that the reversed mapping is always aligned to the physical
buffer byte boundary. The box_mask is reversed as we're about to use it to
clear any stale bits in the physical buffer at this block.

For unpacking, we need to reverse the contents of the physical buffer
*before* masking with the box_mask. This is critical, as the box_mask is a
logical mask of the bit layout before handling the QUIRK_MSB_ON_THE_RIGHT.

Add several new tests which cover this behavior. These tests will fail
without the fix and pass afterwards. Note that no current drivers make use
of QUIRK_MSB_ON_THE_RIGHT. I suspect this is why there have been no reports
of this inconsistency before.

Fixes: 554aae35007e ("lib: Add support for generic packing operations")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 lib/packing.c      | 39 +++++++++--------------------
 lib/packing_test.c | 72 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 83 insertions(+), 28 deletions(-)

diff --git a/lib/packing.c b/lib/packing.c
index 500184530d07..9efe57d347c7 100644
--- a/lib/packing.c
+++ b/lib/packing.c
@@ -9,23 +9,6 @@
 #include <linux/types.h>
 #include <linux/bitrev.h>
 
-static void adjust_for_msb_right_quirk(u64 *to_write, size_t *box_start_bit,
-				       size_t *box_end_bit, u8 *box_mask)
-{
-	size_t box_bit_width = *box_start_bit - *box_end_bit + 1;
-	size_t new_box_start_bit, new_box_end_bit;
-
-	*to_write >>= *box_end_bit;
-	*to_write = bitrev8(*to_write) >> (8 - box_bit_width);
-	*to_write <<= *box_end_bit;
-
-	new_box_end_bit   = box_bit_width - *box_start_bit - 1;
-	new_box_start_bit = box_bit_width - *box_end_bit - 1;
-	*box_mask = GENMASK_ULL(new_box_start_bit, new_box_end_bit);
-	*box_start_bit = new_box_start_bit;
-	*box_end_bit   = new_box_end_bit;
-}
-
 /**
  * calculate_box_addr - Determine physical location of byte in buffer
  * @box: Index of byte within buffer seen as a logical big-endian big number
@@ -170,13 +153,13 @@ int pack(void *pbuf, u64 uval, size_t startbit, size_t endbit, size_t pbuflen,
 		/* Write to pbuf, read from uval */
 		pval = uval & proj_mask;
 		pval >>= proj_end_bit;
-		if (quirks & QUIRK_MSB_ON_THE_RIGHT)
-			adjust_for_msb_right_quirk(&pval,
-						   &box_start_bit,
-						   &box_end_bit,
-						   &box_mask);
-
 		pval <<= box_end_bit;
+
+		if (quirks & QUIRK_MSB_ON_THE_RIGHT) {
+			pval = bitrev8(pval);
+			box_mask = bitrev8(box_mask);
+		}
+
 		((u8 *)pbuf)[box_addr] &= ~box_mask;
 		((u8 *)pbuf)[box_addr] |= pval;
 	}
@@ -276,12 +259,12 @@ int unpack(const void *pbuf, u64 *uval, size_t startbit, size_t endbit,
 		box_addr = calculate_box_addr(box, pbuflen, quirks);
 
 		/* Read from pbuf, write to uval */
-		pval = ((u8 *)pbuf)[box_addr] & box_mask;
+		pval = ((u8 *)pbuf)[box_addr];
+
 		if (quirks & QUIRK_MSB_ON_THE_RIGHT)
-			adjust_for_msb_right_quirk(&pval,
-						   &box_start_bit,
-						   &box_end_bit,
-						   &box_mask);
+			pval = bitrev8(pval);
+
+		pval &= box_mask;
 
 		pval >>= box_end_bit;
 		pval <<= proj_end_bit;
diff --git a/lib/packing_test.c b/lib/packing_test.c
index 5d533e633e06..015ad1180d23 100644
--- a/lib/packing_test.c
+++ b/lib/packing_test.c
@@ -251,6 +251,42 @@ static const struct packing_test_case cases[] = {
 		.end_bit = 43,
 		.quirks = QUIRK_LSW32_IS_FIRST | QUIRK_LITTLE_ENDIAN,
 	},
+	{
+		.desc = "msb right, 16 bytes, non-aligned",
+		PBUF(0x00, 0x00, 0x00, 0x91, 0x88, 0x59, 0x44, 0xd5,
+		     0xcc, 0x3d, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00),
+		.uval = 0x1122334455667788,
+		.start_bit = 106,
+		.end_bit = 43,
+		.quirks = QUIRK_MSB_ON_THE_RIGHT,
+	},
+	{
+		.desc = "msb right + lsw32 first, 16 bytes, non-aligned",
+		PBUF(0x00, 0x00, 0x00, 0x00, 0xcc, 0x3d, 0x02, 0x00,
+		     0x88, 0x59, 0x44, 0xd5, 0x00, 0x00, 0x00, 0x91),
+		.uval = 0x1122334455667788,
+		.start_bit = 106,
+		.end_bit = 43,
+		.quirks = QUIRK_MSB_ON_THE_RIGHT | QUIRK_LSW32_IS_FIRST,
+	},
+	{
+		.desc = "msb right + little endian words, 16 bytes, non-aligned",
+		PBUF(0x91, 0x00, 0x00, 0x00, 0xd5, 0x44, 0x59, 0x88,
+		     0x00, 0x02, 0x3d, 0xcc, 0x00, 0x00, 0x00, 0x00),
+		.uval = 0x1122334455667788,
+		.start_bit = 106,
+		.end_bit = 43,
+		.quirks = QUIRK_MSB_ON_THE_RIGHT | QUIRK_LITTLE_ENDIAN,
+	},
+	{
+		.desc = "msb right + lsw32 first + little endian words, 16 bytes, non-aligned",
+		PBUF(0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x3d, 0xcc,
+		     0xd5, 0x44, 0x59, 0x88, 0x91, 0x00, 0x00, 0x00),
+		.uval = 0x1122334455667788,
+		.start_bit = 106,
+		.end_bit = 43,
+		.quirks = QUIRK_MSB_ON_THE_RIGHT | QUIRK_LSW32_IS_FIRST | QUIRK_LITTLE_ENDIAN,
+	},
 	/* These tests pack and unpack a u64 with all bits set
 	 * (0xffffffffffffffff) at an odd starting bit (43) within an
 	 * otherwise zero array of 128 bits (16 bytes). They test all possible
@@ -292,6 +328,42 @@ static const struct packing_test_case cases[] = {
 		.end_bit = 43,
 		.quirks = QUIRK_LSW32_IS_FIRST | QUIRK_LITTLE_ENDIAN,
 	},
+	{
+		.desc = "msb right, 16 bytes, non-aligned, 0xff",
+		PBUF(0x00, 0x00, 0xe0, 0xff, 0xff, 0xff, 0xff, 0xff,
+		     0xff, 0xff, 0x1f, 0x00, 0x00, 0x00, 0x00, 0x00),
+		.uval = 0xffffffffffffffff,
+		.start_bit = 106,
+		.end_bit = 43,
+		.quirks = QUIRK_MSB_ON_THE_RIGHT,
+	},
+	{
+		.desc = "msb right + lsw32 first, 16 bytes, non-aligned, 0xff",
+		PBUF(0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0x1f, 0x00,
+		     0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0xe0, 0xff),
+		.uval = 0xffffffffffffffff,
+		.start_bit = 106,
+		.end_bit = 43,
+		.quirks = QUIRK_MSB_ON_THE_RIGHT | QUIRK_LSW32_IS_FIRST,
+	},
+	{
+		.desc = "msb right + little endian words, 16 bytes, non-aligned, 0xff",
+		PBUF(0xff, 0xe0, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff,
+		     0x00, 0x1f, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00),
+		.uval = 0xffffffffffffffff,
+		.start_bit = 106,
+		.end_bit = 43,
+		.quirks = QUIRK_MSB_ON_THE_RIGHT | QUIRK_LITTLE_ENDIAN,
+	},
+	{
+		.desc = "msb right + lsw32 first + little endian words, 16 bytes, non-aligned, 0xff",
+		PBUF(0x00, 0x00, 0x00, 0x00, 0x00, 0x1f, 0xff, 0xff,
+		     0xff, 0xff, 0xff, 0xff, 0xff, 0xe0, 0x00, 0x00),
+		.uval = 0xffffffffffffffff,
+		.start_bit = 106,
+		.end_bit = 43,
+		.quirks = QUIRK_MSB_ON_THE_RIGHT | QUIRK_LSW32_IS_FIRST | QUIRK_LITTLE_ENDIAN,
+	},
 };
 
 KUNIT_ARRAY_PARAM_DESC(packing, cases, desc);

-- 
2.46.0.124.g2dc1a81c8933

