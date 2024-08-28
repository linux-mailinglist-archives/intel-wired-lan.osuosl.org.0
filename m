Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 61261963329
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Aug 2024 22:57:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0182160DFE;
	Wed, 28 Aug 2024 20:57:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i8QJJwV8LjKo; Wed, 28 Aug 2024 20:57:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF84260E00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724878655;
	bh=nsBtgue7OVvDzg9wrWr2UMkMcogI9LikiZMWXPAEQ0A=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KK2edD5HH1WsqdSgGwl2lFGijpp20aSyl0LEIPK4/OIA3MTiwWTq5rnbdOmuCQgBW
	 5wM10gapHBg5nya6O0pOHwEMdCtvxvZzJGk+3dw4vS5vo1vLYjUa8ZibonPC7xiw3c
	 hGHyh5Rg4Yd48qSmtSapL5nc3YKsBbcMsd2QCBdEV4POoor4Bju4acVtVOFrMujaO1
	 533J+tOU6XtjbkVMtZfCQfeLWRWfOHUaTfQ7J9SF6a6Bevo1ycHUTqGjaBRlr/l2wm
	 H5pOD/HoJ/G5yqaH1QRxKzzNimejSGUcRbmq66lTkf9vzxLlDtpoDYdbhoHwXN8MWX
	 2nh0yC5GYhGCg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF84260E00;
	Wed, 28 Aug 2024 20:57:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8F1921BF409
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 77A9160D96
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FV-AXJSiaVx0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Aug 2024 20:57:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2F2F560ABA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2F2F560ABA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2F2F560ABA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:31 +0000 (UTC)
X-CSE-ConnectionGUID: Ft9XRMflSG601q1EQfI7gA==
X-CSE-MsgGUID: Cfynd4EqRreW7rUo8Rkr5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="34592601"
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="34592601"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 13:57:30 -0700
X-CSE-ConnectionGUID: ecUePHjcS0iPhEv9jru8bw==
X-CSE-MsgGUID: ICJTda+YSS6KmUCM4bTUOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="64049974"
Received: from jekeller-desk.jf.intel.com ([10.166.241.20])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 13:57:29 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 28 Aug 2024 13:57:22 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240828-e810-live-migration-jk-prep-ctx-functions-v2-6-558ab9e240f5@intel.com>
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
 bh=kdYDOqPsigClw2mBSqmUdNltXzbedVdZSiP7GdsnUmI=;
 b=jEKPtGzZiTGUmuav6U4pCDf0iwns4vb4cK9qSTC2XSeqlcS9lemBmA/g
 LbtVHOi752CXRaw2N1CALmDh1Hc1Vktn785BopJnWUxImcXU4fg7IJFBS
 nAcCsjIcbAd0RsApi/u7BOjiiiQ5YVRsy+HS8gRwyt1xf6p2pg+eapNuG
 CWTLUvcR7VoSiW0UJPfgpUb4W4mLkJ/fUzW4xLUMvJ4xEGpP70qihu04l
 ExpuGpVggG4S2nJjvZ/cLl6UD4LUuWeo5C7vk3mJYeEYWO8+iKtGfgO1i
 HQPGcjX/C8Fi2M6c4yOTR9ni+YOpm1H9y76jmVTLf8QJGl0pTNup4KNJv
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jEKPtGzZ
Subject: [Intel-wired-lan] [PATCH iwl-next v2 06/13] lib: packing: add KUnit
 tests adapted from selftests
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

Add 24 simple KUnit tests for the lib/packing.c pack() and unpack() APIs.

The first 16 tests exercise all combinations of quirks with a simple magic
number value on a 16-byte buffer. The remaining 8 tests cover
non-multiple-of-4 buffer sizes.

These tests were originally written by Vladimir as simple selftest
functions. I adapted them to KUnit, refactoring them into a table driven
approach. This will aid in adding additional tests in the future.

Co-developed-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 lib/packing_test.c | 258 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 MAINTAINERS        |   1 +
 lib/Kconfig        |  12 +++
 lib/Makefile       |   1 +
 4 files changed, 272 insertions(+)

diff --git a/lib/packing_test.c b/lib/packing_test.c
new file mode 100644
index 000000000000..4d07523dba29
--- /dev/null
+++ b/lib/packing_test.c
@@ -0,0 +1,258 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c) 2024, Vladimir Oltean <olteanv@gmail.com>
+ * Copyright (c) 2024, Intel Corporation.
+ */
+#include <kunit/test.h>
+#include <linux/packing.h>
+
+struct packing_test_case {
+	const char *desc;
+	const u8 *pbuf;
+	size_t pbuf_size;
+	u64 uval;
+	size_t start_bit;
+	size_t end_bit;
+	u8 quirks;
+};
+
+#define NO_QUIRKS	0
+
+/**
+ * PBUF - Initialize .pbuf and .pbuf_size
+ * @array: elements of constant physical buffer
+ *
+ * Initializes the .pbuf and .pbuf_size fields of a struct packing_test_case
+ * with a constant array of the specified elements.
+ */
+#define PBUF(array...)					\
+	.pbuf = (const u8[]){ array },			\
+	.pbuf_size = sizeof((const u8 []){ array })
+
+static const struct packing_test_case cases[] = {
+	/* These tests pack and unpack a magic 64-bit value
+	 * (0xcafedeadbeefcafe) at a fixed logical offset (32) within an
+	 * otherwise zero array of 128 bits (16 bytes). They test all possible
+	 * bit layouts of the 128 bit buffer.
+	 */
+	{
+		.desc = "no quirks, 16 bytes",
+		PBUF(0x00, 0x00, 0x00, 0x00, 0xca, 0xfe, 0xde, 0xad,
+		     0xbe, 0xef, 0xca, 0xfe, 0x00, 0x00, 0x00, 0x00),
+		.uval = 0xcafedeadbeefcafe,
+		.start_bit = 95,
+		.end_bit = 32,
+		.quirks = NO_QUIRKS,
+	},
+	{
+		.desc = "lsw32 first, 16 bytes",
+		PBUF(0x00, 0x00, 0x00, 0x00, 0xbe, 0xef, 0xca, 0xfe,
+		     0xca, 0xfe, 0xde, 0xad, 0x00, 0x00, 0x00, 0x00),
+		.uval = 0xcafedeadbeefcafe,
+		.start_bit = 95,
+		.end_bit = 32,
+		.quirks = QUIRK_LSW32_IS_FIRST,
+	},
+	{
+		.desc = "little endian words, 16 bytes",
+		PBUF(0x00, 0x00, 0x00, 0x00, 0xad, 0xde, 0xfe, 0xca,
+		     0xfe, 0xca, 0xef, 0xbe, 0x00, 0x00, 0x00, 0x00),
+		.uval = 0xcafedeadbeefcafe,
+		.start_bit = 95,
+		.end_bit = 32,
+		.quirks = QUIRK_LITTLE_ENDIAN,
+	},
+	{
+		.desc = "lsw32 first + little endian words, 16 bytes",
+		PBUF(0x00, 0x00, 0x00, 0x00, 0xfe, 0xca, 0xef, 0xbe,
+		     0xad, 0xde, 0xfe, 0xca, 0x00, 0x00, 0x00, 0x00),
+		.uval = 0xcafedeadbeefcafe,
+		.start_bit = 95,
+		.end_bit = 32,
+		.quirks = QUIRK_LSW32_IS_FIRST | QUIRK_LITTLE_ENDIAN,
+	},
+	{
+		.desc = "msb right, 16 bytes",
+		PBUF(0x00, 0x00, 0x00, 0x00, 0x53, 0x7f, 0x7b, 0xb5,
+		     0x7d, 0xf7, 0x53, 0x7f, 0x00, 0x00, 0x00, 0x00),
+		.uval = 0xcafedeadbeefcafe,
+		.start_bit = 95,
+		.end_bit = 32,
+		.quirks = QUIRK_MSB_ON_THE_RIGHT,
+	},
+	{
+		.desc = "msb right + lsw32 first, 16 bytes",
+		PBUF(0x00, 0x00, 0x00, 0x00, 0x7d, 0xf7, 0x53, 0x7f,
+		     0x53, 0x7f, 0x7b, 0xb5, 0x00, 0x00, 0x00, 0x00),
+		.uval = 0xcafedeadbeefcafe,
+		.start_bit = 95,
+		.end_bit = 32,
+		.quirks = QUIRK_MSB_ON_THE_RIGHT | QUIRK_LSW32_IS_FIRST,
+	},
+	{
+		.desc = "msb right + little endian words, 16 bytes",
+		PBUF(0x00, 0x00, 0x00, 0x00, 0xb5, 0x7b, 0x7f, 0x53,
+		     0x7f, 0x53, 0xf7, 0x7d, 0x00, 0x00, 0x00, 0x00),
+		.uval = 0xcafedeadbeefcafe,
+		.start_bit = 95,
+		.end_bit = 32,
+		.quirks = QUIRK_MSB_ON_THE_RIGHT | QUIRK_LITTLE_ENDIAN,
+	},
+	{
+		.desc = "msb right + lsw32 first + little endian words, 16 bytes",
+		PBUF(0x00, 0x00, 0x00, 0x00, 0x7f, 0x53, 0xf7, 0x7d,
+		     0xb5, 0x7b, 0x7f, 0x53, 0x00, 0x00, 0x00, 0x00),
+		.uval = 0xcafedeadbeefcafe,
+		.start_bit = 95,
+		.end_bit = 32,
+		.quirks = QUIRK_MSB_ON_THE_RIGHT | QUIRK_LSW32_IS_FIRST | QUIRK_LITTLE_ENDIAN,
+	},
+	/* These tests pack and unpack a magic 64-bit value
+	 * (0xcafedeadbeefcafe) at a fixed logical offset (32) within an
+	 * otherwise zero array of varying size from 18 bytes to 24 bytes.
+	 */
+	{
+		.desc = "no quirks, 18 bytes",
+		PBUF(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xca, 0xfe,
+		     0xde, 0xad, 0xbe, 0xef, 0xca, 0xfe, 0x00, 0x00,
+		     0x00, 0x00),
+		.uval = 0xcafedeadbeefcafe,
+		.start_bit = 95,
+		.end_bit = 32,
+		.quirks = NO_QUIRKS,
+	},
+	{
+		.desc = "no quirks, 19 bytes",
+		PBUF(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xca,
+		     0xfe, 0xde, 0xad, 0xbe, 0xef, 0xca, 0xfe, 0x00,
+		     0x00, 0x00, 0x00),
+		.uval = 0xcafedeadbeefcafe,
+		.start_bit = 95,
+		.end_bit = 32,
+		.quirks = NO_QUIRKS,
+	},
+	{
+		.desc = "no quirks, 20 bytes",
+		PBUF(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+		     0xca, 0xfe, 0xde, 0xad, 0xbe, 0xef, 0xca, 0xfe,
+		     0x00, 0x00, 0x00, 0x00),
+		.uval = 0xcafedeadbeefcafe,
+		.start_bit = 95,
+		.end_bit = 32,
+		.quirks = NO_QUIRKS,
+	},
+	{
+		.desc = "no quirks, 22 bytes",
+		PBUF(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+		     0x00, 0x00, 0xca, 0xfe, 0xde, 0xad, 0xbe, 0xef,
+		     0xca, 0xfe, 0x00, 0x00, 0x00, 0x00),
+		.uval = 0xcafedeadbeefcafe,
+		.start_bit = 95,
+		.end_bit = 32,
+		.quirks = NO_QUIRKS,
+	},
+	{
+		.desc = "no quirks, 24 bytes",
+		PBUF(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+		     0x00, 0x00, 0x00, 0x00, 0xca, 0xfe, 0xde, 0xad,
+		     0xbe, 0xef, 0xca, 0xfe, 0x00, 0x00, 0x00, 0x00),
+		.uval = 0xcafedeadbeefcafe,
+		.start_bit = 95,
+		.end_bit = 32,
+		.quirks = NO_QUIRKS,
+	},
+	{
+		.desc = "lsw32 first + little endian words, 18 bytes",
+		PBUF(0x00, 0x00, 0x00, 0x00, 0xfe, 0xca, 0xef, 0xbe,
+		     0xad, 0xde, 0xfe, 0xca, 0x00, 0x00, 0x00, 0x00,
+		     0x00, 0x00),
+		.uval = 0xcafedeadbeefcafe,
+		.start_bit = 95,
+		.end_bit = 32,
+		.quirks = QUIRK_LSW32_IS_FIRST | QUIRK_LITTLE_ENDIAN,
+	},
+	{
+		.desc = "lsw32 first + little endian words, 19 bytes",
+		PBUF(0x00, 0x00, 0x00, 0x00, 0xfe, 0xca, 0xef, 0xbe,
+		     0xad, 0xde, 0xfe, 0xca, 0x00, 0x00, 0x00, 0x00,
+		     0x00, 0x00, 0x00),
+		.uval = 0xcafedeadbeefcafe,
+		.start_bit = 95,
+		.end_bit = 32,
+		.quirks = QUIRK_LSW32_IS_FIRST | QUIRK_LITTLE_ENDIAN,
+	},
+	{
+		.desc = "lsw32 first + little endian words, 20 bytes",
+		PBUF(0x00, 0x00, 0x00, 0x00, 0xfe, 0xca, 0xef, 0xbe,
+		     0xad, 0xde, 0xfe, 0xca, 0x00, 0x00, 0x00, 0x00,
+		     0x00, 0x00, 0x00, 0x00),
+		.uval = 0xcafedeadbeefcafe,
+		.start_bit = 95,
+		.end_bit = 32,
+		.quirks = QUIRK_LSW32_IS_FIRST | QUIRK_LITTLE_ENDIAN,
+	},
+	{
+		.desc = "lsw32 first + little endian words, 22 bytes",
+		PBUF(0x00, 0x00, 0x00, 0x00, 0xfe, 0xca, 0xef, 0xbe,
+		     0xad, 0xde, 0xfe, 0xca, 0x00, 0x00, 0x00, 0x00,
+		     0x00, 0x00, 0x00, 0x00, 0x00, 0x00),
+		.uval = 0xcafedeadbeefcafe,
+		.start_bit = 95,
+		.end_bit = 32,
+		.quirks = QUIRK_LSW32_IS_FIRST | QUIRK_LITTLE_ENDIAN,
+	},
+	{
+		.desc = "lsw32 first + little endian words, 24 bytes",
+		PBUF(0x00, 0x00, 0x00, 0x00, 0xfe, 0xca, 0xef, 0xbe,
+		     0xad, 0xde, 0xfe, 0xca, 0x00, 0x00, 0x00, 0x00,
+		     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00),
+		.uval = 0xcafedeadbeefcafe,
+		.start_bit = 95,
+		.end_bit = 32,
+		.quirks = QUIRK_LSW32_IS_FIRST | QUIRK_LITTLE_ENDIAN,
+	},
+};
+
+KUNIT_ARRAY_PARAM_DESC(packing, cases, desc);
+
+static void packing_test_pack(struct kunit *test)
+{
+	const struct packing_test_case *params = test->param_value;
+	u8 *pbuf;
+	int err;
+
+	pbuf = kunit_kzalloc(test, params->pbuf_size, GFP_KERNEL);
+
+	err = pack(pbuf, params->uval, params->start_bit, params->end_bit,
+		   params->pbuf_size, params->quirks);
+
+	KUNIT_EXPECT_EQ_MSG(test, err, 0, "pack() returned %pe\n", ERR_PTR(err));
+	KUNIT_EXPECT_MEMEQ(test, pbuf, params->pbuf, params->pbuf_size);
+}
+
+static void packing_test_unpack(struct kunit *test)
+{
+	const struct packing_test_case *params = test->param_value;
+	u64 uval;
+	int err;
+
+	err = unpack(params->pbuf, &uval, params->start_bit, params->end_bit,
+		     params->pbuf_size, params->quirks);
+	KUNIT_EXPECT_EQ_MSG(test, err, 0, "unpack() returned %pe\n", ERR_PTR(err));
+	KUNIT_EXPECT_EQ(test, uval, params->uval);
+}
+
+static struct kunit_case packing_test_cases[] = {
+	KUNIT_CASE_PARAM(packing_test_pack, packing_gen_params),
+	KUNIT_CASE_PARAM(packing_test_unpack, packing_gen_params),
+	{},
+};
+
+static struct kunit_suite packing_test_suite = {
+	.name = "packing",
+	.test_cases = packing_test_cases,
+};
+
+kunit_test_suite(packing_test_suite);
+
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("KUnit tests for packing library");
diff --git a/MAINTAINERS b/MAINTAINERS
index 30a9b9450e11..8daa3b7d307a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17235,6 +17235,7 @@ S:	Supported
 F:	Documentation/core-api/packing.rst
 F:	include/linux/packing.h
 F:	lib/packing.c
+F:	lib/packing_test.c
 
 PADATA PARALLEL EXECUTION MECHANISM
 M:	Steffen Klassert <steffen.klassert@secunet.com>
diff --git a/lib/Kconfig b/lib/Kconfig
index b38849af6f13..50d85f38b569 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -40,6 +40,18 @@ config PACKING
 
 	  When in doubt, say N.
 
+config PACKING_KUNIT_TEST
+	tristate "KUnit tests for packing library" if !KUNIT_ALL_TESTS
+	depends on PACKING && KUNIT
+	default KUNIT_ALL_TESTS
+	help
+	  This builds KUnit tests for the packing library.
+
+	  For more information on KUnit and unit tests in general,
+	  please refer to the KUnit documentation in Documentation/dev-tools/kunit/.
+
+	  When in doubt, say N.
+
 config BITREVERSE
 	tristate
 
diff --git a/lib/Makefile b/lib/Makefile
index 322bb127b4dc..69db48a89cf5 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -153,6 +153,7 @@ obj-$(CONFIG_DEBUG_OBJECTS) += debugobjects.o
 obj-$(CONFIG_BITREVERSE) += bitrev.o
 obj-$(CONFIG_LINEAR_RANGES) += linear_ranges.o
 obj-$(CONFIG_PACKING)	+= packing.o
+obj-$(CONFIG_PACKING_KUNIT_TEST) += packing_test.o
 obj-$(CONFIG_CRC_CCITT)	+= crc-ccitt.o
 obj-$(CONFIG_CRC16)	+= crc16.o
 obj-$(CONFIG_CRC_T10DIF)+= crc-t10dif.o

-- 
2.46.0.124.g2dc1a81c8933

