Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 48500963335
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Aug 2024 22:57:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F71B60B1E;
	Wed, 28 Aug 2024 20:57:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6gm557aBRYJn; Wed, 28 Aug 2024 20:57:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2B76560DFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724878666;
	bh=uWSxhqaYxTdERvj0vRuazEKL5sYnj+V2VTb09Hk5h4E=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=E/iZuqdFNwcLXDob6CmzEKk/0+OZr8Ub1AId0LzR9wV04KynAx4TZvIQHyyFen9N8
	 wSVSgjD3ZStCo8xQ5uWfMWgbeWjRdieqFntxmUNh+9dquUdrqndPbgSIvu6iRknbrN
	 +NlW5wonG57PxDpZBMe7pTWcG7FvfjkNHCLM2w0WjEm4eQJ3IrhKhkvkBBYcjuHkEk
	 FyooYLCPUtzHC2xP23WJ8RiwjUMIDa38dE+vRze67v1wkSa3ww35uSp8wHoKPladYC
	 MOO9sXsFLesC92n3h8JHjyC/pPwIIrITL+wMsvs1voNu9wCoQDomm0O9tU9ccuBd9D
	 HES63/bGzRD1Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B76560DFD;
	Wed, 28 Aug 2024 20:57:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 14A841BF980
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B428460DFA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CJX9R82bztHY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Aug 2024 20:57:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 57A9560D77
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57A9560D77
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 57A9560D77
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:32 +0000 (UTC)
X-CSE-ConnectionGUID: WESzwl1WQESQMLu6BBpLWg==
X-CSE-MsgGUID: 2aXBv3dvRTWw1lsRgRdsFg==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="34592627"
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="34592627"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 13:57:31 -0700
X-CSE-ConnectionGUID: vZoZT4A6RS2M1P2VmPJePA==
X-CSE-MsgGUID: G0+piHboRmeCzWLLXLhfhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="64049962"
Received: from jekeller-desk.jf.intel.com ([10.166.241.20])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 13:57:29 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 28 Aug 2024 13:57:18 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240828-e810-live-migration-jk-prep-ctx-functions-v2-2-558ab9e240f5@intel.com>
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
 bh=LJ2/XogKd6xxjDycjrUE60+Ij4Tay/e1ClvfXq33y0g=;
 b=a7kei0ywigSIisoa2V6p4DOnKksS9HEgVuGJsUTijXuMJPfBCc0SVhry
 73B06f/cBYItlybAfYKIJt2Lwd16cjD7Q90azyH4S72pP3sRvXvkCl5Ln
 9al1OWxqF49RWDqB6gOBNDa7U/P3Bl/IN6yaiivyH2PMG734PZ4I9wdKe
 bCg9f7XAXr0ivdbMrnq07/Sd7i+hIPlDh8mXkyweZnI8KPKjyYlABIL9y
 JSetMp6GN3KYkEGNF+mLenB5YgUE9s+XOCudvFj2H3feIp66vMTG64Kwu
 w/C4Jmaki5D8IIWyF/2jifnclDTsYs5nSu1rG0nhxGkE0YcHDKDur4U6+
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=a7kei0yw
Subject: [Intel-wired-lan] [PATCH iwl-next v2 02/13] lib: packing: adjust
 definitions and implementation for arbitrary buffer lengths
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

Jacob Keller has a use case for packing() in the intel/ice networking
driver, but it cannot be used as-is.

Simply put, the API quirks for LSW32_IS_FIRST and LITTLE_ENDIAN are
naively implemented with the undocumented assumption that the buffer
length must be a multiple of 4. All calculations of group offsets and
offsets of bytes within groups assume that this is the case. But in the
ice case, this does not hold true. For example, packing into a buffer
of 22 bytes would yield wrong results, but pretending it was a 24 byte
buffer would work.

Rather than requiring such hacks, and leaving a big question mark when
it comes to discontinuities in the accessible bit fields of such buffer,
we should extend the packing API to support this use case.

It turns out that we can keep the design in terms of groups of 4 bytes,
but also make it work if the total length is not a multiple of 4.
Just like before, imagine the buffer as a big number, and its most
significant bytes (the ones that would make up to a multiple of 4) are
missing. Thus, with a big endian (no quirks) interpretation of the
buffer, those most significant bytes would be absent from the beginning
of the buffer, and with a LSW32_IS_FIRST interpretation, they would be
absent from the end of the buffer. The LITTLE_ENDIAN quirk, in the
packing() API world, only affects byte ordering within groups of 4.
Thus, it does not change which bytes are missing. Only the significance
of the remaining bytes within the (smaller) group.

No change intended for buffer sizes which are multiples of 4. Tested
with the sja1105 driver and with downstream unit tests.

Fixes: 554aae35007e ("lib: Add support for generic packing operations")
Link: https://lore.kernel.org/netdev/a0338310-e66c-497c-bc1f-a597e50aa3ff@intel.com/
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Tested-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 lib/packing.c                      | 70 ++++++++++++++++++++++---------------
 Documentation/core-api/packing.rst | 71 ++++++++++++++++++++++++++++++++++++++
 2 files changed, 114 insertions(+), 27 deletions(-)

diff --git a/lib/packing.c b/lib/packing.c
index 439125286d2b..435236a914fe 100644
--- a/lib/packing.c
+++ b/lib/packing.c
@@ -9,27 +9,6 @@
 #include <linux/types.h>
 #include <linux/bitrev.h>
 
-static int get_le_offset(int offset)
-{
-	int closest_multiple_of_4;
-
-	closest_multiple_of_4 = (offset / 4) * 4;
-	offset -= closest_multiple_of_4;
-	return closest_multiple_of_4 + (3 - offset);
-}
-
-static int get_reverse_lsw32_offset(int offset, size_t len)
-{
-	int closest_multiple_of_4;
-	int word_index;
-
-	word_index = offset / 4;
-	closest_multiple_of_4 = word_index * 4;
-	offset -= closest_multiple_of_4;
-	word_index = (len / 4) - word_index - 1;
-	return word_index * 4 + offset;
-}
-
 static void adjust_for_msb_right_quirk(u64 *to_write, int *box_start_bit,
 				       int *box_end_bit, u8 *box_mask)
 {
@@ -47,6 +26,48 @@ static void adjust_for_msb_right_quirk(u64 *to_write, int *box_start_bit,
 	*box_end_bit   = new_box_end_bit;
 }
 
+/**
+ * calculate_box_addr - Determine physical location of byte in buffer
+ * @box: Index of byte within buffer seen as a logical big-endian big number
+ * @len: Size of buffer in bytes
+ * @quirks: mask of QUIRK_LSW32_IS_FIRST and QUIRK_LITTLE_ENDIAN
+ *
+ * Function interprets the buffer as a @len byte sized big number, and returns
+ * the physical offset of the @box logical octet within it. Internally, it
+ * treats the big number as groups of 4 bytes. If @len is not a multiple of 4,
+ * the last group may be shorter.
+ *
+ * @QUIRK_LSW32_IS_FIRST gives the ordering of groups of 4 octets relative to
+ * each other. If set, the most significant group of 4 octets is last in the
+ * buffer (and may be truncated if @len is not a multiple of 4).
+ *
+ * @QUIRK_LITTLE_ENDIAN gives the ordering of bytes within each group of 4.
+ * If set, the most significant byte is last in the group. If @len takes the
+ * form of 4k+3, the last group will only be able to represent 24 bits, and its
+ * most significant octet is byte 2.
+ *
+ * Return: the physical offset into the buffer corresponding to the logical box.
+ */
+static int calculate_box_addr(int box, size_t len, u8 quirks)
+{
+	size_t offset_of_group, offset_in_group, this_group = box / 4;
+	size_t group_size;
+
+	if (quirks & QUIRK_LSW32_IS_FIRST)
+		offset_of_group = this_group * 4;
+	else
+		offset_of_group = len - ((this_group + 1) * 4);
+
+	group_size = min(4, len - offset_of_group);
+
+	if (quirks & QUIRK_LITTLE_ENDIAN)
+		offset_in_group = box - this_group * 4;
+	else
+		offset_in_group = group_size - (box - this_group * 4) - 1;
+
+	return offset_of_group + offset_in_group;
+}
+
 /**
  * packing - Convert numbers (currently u64) between a packed and an unpacked
  *	     format. Unpacked means laid out in memory in the CPU's native
@@ -157,12 +178,7 @@ int packing(void *pbuf, u64 *uval, int startbit, int endbit, size_t pbuflen,
 		 * effective addressing inside the pbuf (so it's not
 		 * logical any longer).
 		 */
-		box_addr = pbuflen - box - 1;
-		if (quirks & QUIRK_LITTLE_ENDIAN)
-			box_addr = get_le_offset(box_addr);
-		if (quirks & QUIRK_LSW32_IS_FIRST)
-			box_addr = get_reverse_lsw32_offset(box_addr,
-							    pbuflen);
+		box_addr = calculate_box_addr(box, pbuflen, quirks);
 
 		if (op == UNPACK) {
 			u64 pval;
diff --git a/Documentation/core-api/packing.rst b/Documentation/core-api/packing.rst
index 3ed13bc9a195..821691f23c54 100644
--- a/Documentation/core-api/packing.rst
+++ b/Documentation/core-api/packing.rst
@@ -151,6 +151,77 @@ the more significant 4-byte word.
 We always think of our offsets as if there were no quirk, and we translate
 them afterwards, before accessing the memory region.
 
+Note on buffer lengths not multiple of 4
+----------------------------------------
+
+To deal with memory layout quirks where groups of 4 bytes are laid out "little
+endian" relative to each other, but "big endian" within the group itself, the
+concept of groups of 4 bytes is intrinsic to the packing API (not to be
+confused with the memory access, which is performed byte by byte, though).
+
+With buffer lengths not multiple of 4, this means one group will be incomplete.
+Depending on the quirks, this may lead to discontinuities in the bit fields
+accessible through the buffer. The packing API assumes discontinuities were not
+the intention of the memory layout, so it avoids them by effectively logically
+shortening the most significant group of 4 octets to the number of octets
+actually available.
+
+Example with a 31 byte sized buffer given below. Physical buffer offsets are
+implicit, and increase from left to right within a group, and from top to
+bottom within a column.
+
+No quirks:
+
+::
+
+            31         29         28        |   Group 7 (most significant)
+ 27         26         25         24        |   Group 6
+ 23         22         21         20        |   Group 5
+ 19         18         17         16        |   Group 4
+ 15         14         13         12        |   Group 3
+ 11         10          9          8        |   Group 2
+  7          6          5          4        |   Group 1
+  3          2          1          0        |   Group 0 (least significant)
+
+QUIRK_LSW32_IS_FIRST:
+
+::
+
+  3          2          1          0        |   Group 0 (least significant)
+  7          6          5          4        |   Group 1
+ 11         10          9          8        |   Group 2
+ 15         14         13         12        |   Group 3
+ 19         18         17         16        |   Group 4
+ 23         22         21         20        |   Group 5
+ 27         26         25         24        |   Group 6
+ 30         29         28                   |   Group 7 (most significant)
+
+QUIRK_LITTLE_ENDIAN:
+
+::
+
+            30         28         29        |   Group 7 (most significant)
+ 24         25         26         27        |   Group 6
+ 20         21         22         23        |   Group 5
+ 16         17         18         19        |   Group 4
+ 12         13         14         15        |   Group 3
+  8          9         10         11        |   Group 2
+  4          5          6          7        |   Group 1
+  0          1          2          3        |   Group 0 (least significant)
+
+QUIRK_LITTLE_ENDIAN | QUIRK_LSW32_IS_FIRST:
+
+::
+
+  0          1          2          3        |   Group 0 (least significant)
+  4          5          6          7        |   Group 1
+  8          9         10         11        |   Group 2
+ 12         13         14         15        |   Group 3
+ 16         17         18         19        |   Group 4
+ 20         21         22         23        |   Group 5
+ 24         25         26         27        |   Group 6
+ 28         29         30                   |   Group 7 (most significant)
+
 Intended use
 ------------
 

-- 
2.46.0.124.g2dc1a81c8933

