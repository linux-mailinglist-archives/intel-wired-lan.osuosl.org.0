Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E2E8684EE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Feb 2024 01:15:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E762B60B20;
	Tue, 27 Feb 2024 00:15:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tKq4tRpZmI0G; Tue, 27 Feb 2024 00:15:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E66C60B0B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708992911;
	bh=TgssAil9N4ZeHvn4JX5d+SdlvcJIGrRLYoM9s+Cp1QI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Se5fH7Z6k4Mzrmx9Tz/p8BMl4oBanPADrkACmM659aqBxuE8DuOXnX+/F1rKwsmE4
	 pXF5PUsTtWkyi1P4jZc+pPXQI/Ixf+RfeK/x4cvwao+PP7lo7mpz6FVAVC8E67USMx
	 xEYygDoRvtq/887sFbg6aEPDSbu2LPinrkOwshj1H7Ev/aNWR+Bc9Rd1i3CP23+ooT
	 y1IqKw/cA9XK1rsy49pajUieUzR+Ht0W2g7ZRLFJ3oTi6h4t51WgwW1Oj3vTtIvUl2
	 0/GuCGU1+SEGBQJHrr1HGCKTaTkrETJ3B+mGPg86qaLln6S8dK+uuNhgO7ukylr1J8
	 5Cf04K+mOU16w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E66C60B0B;
	Tue, 27 Feb 2024 00:15:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7932F1BF35D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 00:15:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B1EDF40497
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 00:15:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gH_WmKCzcJIv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Feb 2024 00:15:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 75D7B40B2E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 75D7B40B2E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 75D7B40B2E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 00:15:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="7128811"
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="7128811"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 16:15:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="6816128"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.1])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 16:15:00 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon, 26 Feb 2024 16:14:55 -0800
Message-ID: <20240227001456.3858886-3-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20240227001456.3858886-1-jacob.e.keller@intel.com>
References: <20240227001456.3858886-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708992903; x=1740528903;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Z2M4+X4p7bKiKkSTQyZjyJW22EvXQ9wyM9v65awwhDE=;
 b=WjNxnT8SWqXW/BCitPkkEKlLSs/ug2pnW15yk0sNdKE9oEJcMzeFZQPw
 yn7MLhDXa1mXm1HYIONcO4MBkjMgQPHsxGBOzJVa1emNdQqSsxxME0zv3
 Z1xaFPeyWMTZdDHMjjevA2QyXRyF0igLi2JpIg9x0CJMXyxzsx/QuBytU
 8jWGtNJhjKO98Yi7SIu+7+pmpfx+we4dEj0TBzrtULicMDqZdDUQ3d4X/
 d+nUWHPBxfvZ8N5lyvr5Ph5wgebyjKY/sKs/iR2g6P4kHnMb0nfWZ5zzA
 XhEnxDHKjGSSLvbqhmT5sI85nESvcN0IDJ7DLz8CgP0PRXXaHozZ401y8
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WjNxnT8S
Subject: [Intel-wired-lan] [PATCH iwl-next 2/3] ice: use GENMASK instead of
 BIT(n) - 1 in pack functions
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The functions used to pack the Tx and Rx context into the hardware format
rely on using BIT() and then subtracting 1 to get a bitmask. These
functions even have a comment about how x86 machines can't use this method
for certain widths because the SHL instructions will not work properly.

The Linux kernel already provides the GENMASK macro for generating a
suitable bitmask. Further, GENMASK is capable of generating the mask
including the shift_width. Since width is the total field width, take care
to subtract one to get the final bit position.

Since we now include the shifted bits as part of the mask, shift the source
value first before applying the mask.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 44 ++++-----------------
 1 file changed, 8 insertions(+), 36 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index d8bcc8bd91d8..ffe44f2d3dc5 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -4373,14 +4373,11 @@ static void ice_pack_ctx_byte(u8 *src_ctx, u8 *dest_ctx,
 
 	/* prepare the bits and mask */
 	shift_width = ce_info->lsb % 8;
-	mask = (u8)(BIT(ce_info->width) - 1);
+	mask = GENMASK(ce_info->width - 1 + shift_width, shift_width);
 
 	src_byte = *from;
-	src_byte &= mask;
-
-	/* shift to correct alignment */
-	mask <<= shift_width;
 	src_byte <<= shift_width;
+	src_byte &= mask;
 
 	/* get the current bits from the target bit string */
 	dest = dest_ctx + (ce_info->lsb / 8);
@@ -4413,17 +4410,14 @@ static void ice_pack_ctx_word(u8 *src_ctx, u8 *dest_ctx,
 
 	/* prepare the bits and mask */
 	shift_width = ce_info->lsb % 8;
-	mask = BIT(ce_info->width) - 1;
+	mask = GENMASK(ce_info->width - 1 + shift_width, shift_width);
 
 	/* don't swizzle the bits until after the mask because the mask bits
 	 * will be in a different bit position on big endian machines
 	 */
 	src_word = *(u16 *)from;
-	src_word &= mask;
-
-	/* shift to correct alignment */
-	mask <<= shift_width;
 	src_word <<= shift_width;
+	src_word &= mask;
 
 	/* get the current bits from the target bit string */
 	dest = dest_ctx + (ce_info->lsb / 8);
@@ -4456,25 +4450,14 @@ static void ice_pack_ctx_dword(u8 *src_ctx, u8 *dest_ctx,
 
 	/* prepare the bits and mask */
 	shift_width = ce_info->lsb % 8;
-
-	/* if the field width is exactly 32 on an x86 machine, then the shift
-	 * operation will not work because the SHL instructions count is masked
-	 * to 5 bits so the shift will do nothing
-	 */
-	if (ce_info->width < 32)
-		mask = BIT(ce_info->width) - 1;
-	else
-		mask = (u32)~0;
+	mask = GENMASK(ce_info->width - 1 + shift_width, shift_width);
 
 	/* don't swizzle the bits until after the mask because the mask bits
 	 * will be in a different bit position on big endian machines
 	 */
 	src_dword = *(u32 *)from;
-	src_dword &= mask;
-
-	/* shift to correct alignment */
-	mask <<= shift_width;
 	src_dword <<= shift_width;
+	src_dword &= mask;
 
 	/* get the current bits from the target bit string */
 	dest = dest_ctx + (ce_info->lsb / 8);
@@ -4507,25 +4490,14 @@ static void ice_pack_ctx_qword(u8 *src_ctx, u8 *dest_ctx,
 
 	/* prepare the bits and mask */
 	shift_width = ce_info->lsb % 8;
-
-	/* if the field width is exactly 64 on an x86 machine, then the shift
-	 * operation will not work because the SHL instructions count is masked
-	 * to 6 bits so the shift will do nothing
-	 */
-	if (ce_info->width < 64)
-		mask = BIT_ULL(ce_info->width) - 1;
-	else
-		mask = (u64)~0;
+	mask = GENMASK_ULL(ce_info->width - 1 + shift_width, shift_width);
 
 	/* don't swizzle the bits until after the mask because the mask bits
 	 * will be in a different bit position on big endian machines
 	 */
 	src_qword = *(u64 *)from;
-	src_qword &= mask;
-
-	/* shift to correct alignment */
-	mask <<= shift_width;
 	src_qword <<= shift_width;
+	src_qword &= mask;
 
 	/* get the current bits from the target bit string */
 	dest = dest_ctx + (ce_info->lsb / 8);
-- 
2.41.0

