Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AEF7963327
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Aug 2024 22:57:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7879F60DED;
	Wed, 28 Aug 2024 20:57:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2TlBHoItAenu; Wed, 28 Aug 2024 20:57:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A73EE60B1E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724878653;
	bh=3e0BoTvKT6c0nsGoYWIw6YV8KWLW46Qr5LFOKegp3+k=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0tGzX4gLpIx6bebPFNoks7q9wx8LcRN3ySboQ8LDCQlHVtOtUL0JScO+I17Hg+kxy
	 pFHulPsnrQUvwSFxz8ESC0I3/eYURixwqYqrLIzn3b+SGUS2twDWph/m7Oo+3Nuc19
	 8lkcuwAAn+1LF5aFmVM/QjlhQWojy1imMtClzaSWTrbqiIn1XmooWMX1UF+V7IQXXv
	 V8SIHcd9733eaVWdOw47ThDgvANdwPvOMyBcCIAGFYiZPvnxPN1UrpntWvEk5y4I4V
	 +mzvoB2dUop4eyKSEHE7tlwXF5iQHyQQ4GC4hluAJpRWgFbeloLlxYfUi2RI71b0QO
	 TrBEK0rMhay7Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A73EE60B1E;
	Wed, 28 Aug 2024 20:57:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2CB001BF409
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 17B8581584
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HW06HAjoIwYH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Aug 2024 20:57:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 36A198151E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 36A198151E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 36A198151E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:31 +0000 (UTC)
X-CSE-ConnectionGUID: vupC36lBRGaGPBrr6wK86g==
X-CSE-MsgGUID: OwTGC4xcQgW93u5DWok6YA==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="34592604"
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="34592604"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 13:57:30 -0700
X-CSE-ConnectionGUID: jw4S+9bhRxeGGiLcYCoePA==
X-CSE-MsgGUID: d1fpVscGTD2xxQFBt6fRXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="64049977"
Received: from jekeller-desk.jf.intel.com ([10.166.241.20])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 13:57:29 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 28 Aug 2024 13:57:23 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240828-e810-live-migration-jk-prep-ctx-functions-v2-7-558ab9e240f5@intel.com>
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
 bh=I2Ah6OCzfIAMXv+oJczbNi/gLe6ti7p3coLoZXILxRg=;
 b=nN1e5LvDPvLJ44e5Mdmvgx61grkWw8h5wfyxMxLNBZdYcvvzXuwdj6SP
 3rd39jnG4fwR+h22fc6GU/eL+zzVt+kWz3qLXnCbAVv/KJuGbSdnjvEYp
 bIeamtjOd8LAmIHXEz3fWFHZ8RUji0DVfDLjnM7enoT5t12Ms2xV4i0e1
 wgWOWvZWHBsaCVChMSayUgWd9XlzqoUIwjK6kA46IMhxIjQH5TxcWzyRM
 v01cveUzvZoCXiA4OrQkqnzi9S3NJO+jEssAd5RDLEi75Ck4NYxCxpVlz
 Swo+QuX8ftBetQQo3QbfDmLSmTLAlx6LUrkGQwf1rzXbkWy687+yukDPS
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nN1e5LvD
Subject: [Intel-wired-lan] [PATCH iwl-next v2 07/13] lib: packing: add
 additional KUnit tests
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

While reviewing the initial KUnit tests for lib/packing, Przemek pointed
out that the test values have duplicate bytes in the input sequence.

In addition, I noticed that the unit tests pack and unpack on a byte
boundary, instead of crossing bytes. Thus, we lack good coverage of the
corner cases of the API.

Add additional unit tests to cover packing and unpacking byte buffers which
do not have duplicate bytes in the unpacked value, and which pack and
unpack to an unaligned offset.

A careful reviewer may note the lack tests for QUIRK_MSB_ON_THE_RIGHT. This
is because I found issues with that quirk during test implementation. This
quirk will be fixed and the tests will be included in a future change.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 lib/packing_test.c | 82 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 82 insertions(+)

diff --git a/lib/packing_test.c b/lib/packing_test.c
index 4d07523dba29..5d533e633e06 100644
--- a/lib/packing_test.c
+++ b/lib/packing_test.c
@@ -210,6 +210,88 @@ static const struct packing_test_case cases[] = {
 		.end_bit = 32,
 		.quirks = QUIRK_LSW32_IS_FIRST | QUIRK_LITTLE_ENDIAN,
 	},
+	/* These tests pack and unpack a magic 64-bit value
+	 * (0x1122334455667788) at an odd starting bit (43) within an
+	 * otherwise zero array of 128 bits (16 bytes). They test all possible
+	 * bit layouts of the 128 bit buffer.
+	 */
+	{
+		.desc = "no quirks, 16 bytes, non-aligned",
+		PBUF(0x00, 0x00, 0x00, 0x89, 0x11, 0x9a, 0x22, 0xab,
+		     0x33, 0xbc, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00),
+		.uval = 0x1122334455667788,
+		.start_bit = 106,
+		.end_bit = 43,
+		.quirks = NO_QUIRKS,
+	},
+	{
+		.desc = "lsw32 first, 16 bytes, non-aligned",
+		PBUF(0x00, 0x00, 0x00, 0x00, 0x33, 0xbc, 0x40, 0x00,
+		     0x11, 0x9a, 0x22, 0xab, 0x00, 0x00, 0x00, 0x89),
+		.uval = 0x1122334455667788,
+		.start_bit = 106,
+		.end_bit = 43,
+		.quirks = QUIRK_LSW32_IS_FIRST,
+	},
+	{
+		.desc = "little endian words, 16 bytes, non-aligned",
+		PBUF(0x89, 0x00, 0x00, 0x00, 0xab, 0x22, 0x9a, 0x11,
+		     0x00, 0x40, 0xbc, 0x33, 0x00, 0x00, 0x00, 0x00),
+		.uval = 0x1122334455667788,
+		.start_bit = 106,
+		.end_bit = 43,
+		.quirks = QUIRK_LITTLE_ENDIAN,
+	},
+	{
+		.desc = "lsw32 first + little endian words, 16 bytes, non-aligned",
+		PBUF(0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0xbc, 0x33,
+		     0xab, 0x22, 0x9a, 0x11, 0x89, 0x00, 0x00, 0x00),
+		.uval = 0x1122334455667788,
+		.start_bit = 106,
+		.end_bit = 43,
+		.quirks = QUIRK_LSW32_IS_FIRST | QUIRK_LITTLE_ENDIAN,
+	},
+	/* These tests pack and unpack a u64 with all bits set
+	 * (0xffffffffffffffff) at an odd starting bit (43) within an
+	 * otherwise zero array of 128 bits (16 bytes). They test all possible
+	 * bit layouts of the 128 bit buffer.
+	 */
+	{
+		.desc = "no quirks, 16 bytes, non-aligned, 0xff",
+		PBUF(0x00, 0x00, 0x07, 0xff, 0xff, 0xff, 0xff, 0xff,
+		     0xff, 0xff, 0xf8, 0x00, 0x00, 0x00, 0x00, 0x00),
+		.uval = 0xffffffffffffffff,
+		.start_bit = 106,
+		.end_bit = 43,
+		.quirks = NO_QUIRKS,
+	},
+	{
+		.desc = "lsw32 first, 16 bytes, non-aligned, 0xff",
+		PBUF(0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0xf8, 0x00,
+		     0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0x07, 0xff),
+		.uval = 0xffffffffffffffff,
+		.start_bit = 106,
+		.end_bit = 43,
+		.quirks = QUIRK_LSW32_IS_FIRST,
+	},
+	{
+		.desc = "little endian words, 16 bytes, non-aligned, 0xff",
+		PBUF(0xff, 0x07, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff,
+		     0x00, 0xf8, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00),
+		.uval = 0xffffffffffffffff,
+		.start_bit = 106,
+		.end_bit = 43,
+		.quirks = QUIRK_LITTLE_ENDIAN,
+	},
+	{
+		.desc = "lsw32 first + little endian words, 16 bytes, non-aligned, 0xff",
+		PBUF(0x00, 0x00, 0x00, 0x00, 0x00, 0xf8, 0xff, 0xff,
+		     0xff, 0xff, 0xff, 0xff, 0xff, 0x07, 0x00, 0x00),
+		.uval = 0xffffffffffffffff,
+		.start_bit = 106,
+		.end_bit = 43,
+		.quirks = QUIRK_LSW32_IS_FIRST | QUIRK_LITTLE_ENDIAN,
+	},
 };
 
 KUNIT_ARRAY_PARAM_DESC(packing, cases, desc);

-- 
2.46.0.124.g2dc1a81c8933

