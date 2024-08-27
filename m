Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 545C9961977
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Aug 2024 23:52:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A3F1140697;
	Tue, 27 Aug 2024 21:52:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AUq3eGWh26zI; Tue, 27 Aug 2024 21:52:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D8D6F40692
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724795573;
	bh=eUPSrePAFSl8nzDTu8KUBiqxZfvYG2ij28zqB/G9huE=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0ASEEYhVZdIO4mzhyZnUGUvNeIFa3h6ALAcHvfzvTu0KUOrRdPstyxOWVMEE4mNhh
	 VbaLPSXhgq7hMY9armIb+WDQeEzSLVKVnTNQ23qoZ8dZT1GCeF7KpRtC5gTNgEI0OY
	 x9Xj5D9lnwaSNu9j1okC1tgoTiWtEnXPyJ4MqEeTmFsRgkPz5snEtQicTXK/BtVuu6
	 B4T0GCshoqtirlXy0QQ6U7at45bjG6RTXXqkY2Amqy40rjAXHJ+PLqvZztMOPj7avo
	 FAs8CXMhQ2BFPfQms+SI0Qo999w0+33+6OhegFv8OR+PpuygD2tqVGAvIPfhPf3iIt
	 lkWCcbXBvdigg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D8D6F40692;
	Tue, 27 Aug 2024 21:52:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 650F21BF27E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 21:52:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 52C0240A86
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 21:52:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r6aq0oYxSkbL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2024 21:52:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1C98A40A82
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1C98A40A82
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1C98A40A82
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 21:52:50 +0000 (UTC)
X-CSE-ConnectionGUID: wi8/2kQ0RpCJDcwYzU12Dw==
X-CSE-MsgGUID: 5b2sciKTRKiV2x7CD/zmwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="27068830"
X-IronPort-AV: E=Sophos;i="6.10,181,1719903600"; d="scan'208";a="27068830"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 14:52:45 -0700
X-CSE-ConnectionGUID: 7d7we4/HRN21CUOitMc3gw==
X-CSE-MsgGUID: EmbBf55cRo6t1vjTXq79XA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,181,1719903600"; d="scan'208";a="63189499"
Received: from jekeller-desk.jf.intel.com ([10.166.241.20])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 14:52:44 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 27 Aug 2024 14:52:10 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240827-e810-live-migration-jk-prep-ctx-functions-v1-7-0442e2e42d32@intel.com>
References: <20240827-e810-live-migration-jk-prep-ctx-functions-v1-0-0442e2e42d32@intel.com>
In-Reply-To: <20240827-e810-live-migration-jk-prep-ctx-functions-v1-0-0442e2e42d32@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Vladimir Oltean <olteanv@gmail.com>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 "netdev netdev"@vger.kernel.org
X-Mailer: b4 0.14.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724795571; x=1756331571;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=cKwLF0J9q0vDA9YYJ+QIc63Rjjl530eUlT2CW8R8Ok4=;
 b=OLSvLb1VF8UX0RhvnmjPa8pLY80cq8zsx8YBPv1awKMWsttIKypcUBwO
 mCKuxBPT3KAt3zOww2Wp8FV8gpoatqTaFgyHRjz3U8vtNyHSM9V9pkAdS
 6nzmrro9PZWHpX4115nXfyOw9h9pRMWL34SGmAeK+DuWSvp2GWfVlA1q0
 BHR7vyEhNEAAk4KfKh032WGmc8w7lRRDV+Pu9jr8fJogcclMIPBJzCCs2
 hnRU6ZMvrFTmIGNNpygjgk9MOnXYBC4qMflBrDH+Xu8Cx2zYbkYUzzJbn
 +vfHW5h8VZYolpWKkM5MPX36ZlMDYDoRbni7R0NVWuhPEF/3xfTZ3Zrzk
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OLSvLb1V
Subject: [Intel-wired-lan] [PATCH iwl-next 07/13] lib: packing: add
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
index 52e039e2231b..6e68da980802 100644
--- a/lib/packing_test.c
+++ b/lib/packing_test.c
@@ -210,6 +210,88 @@ const struct packing_test_case cases[] = {
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

