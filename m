Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A85949074
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Aug 2024 15:13:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 944D4405C7;
	Tue,  6 Aug 2024 13:13:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dKjXmda1Gr7y; Tue,  6 Aug 2024 13:13:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 89FEF40643
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722949994;
	bh=Nopj9uRDKUuSLlplWpL9smMIIKDnoAQas0Ql8lfVMA0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Q5H5M28AFP/6mCgUotFZH/qucJ6SrqUbZfuM44Q6Fr2jGjbKNzdriO+nSoSYVUcxi
	 nKsabqsNcQkT0N7b5joRV5DNL90OhfBQUsHPsge0dyyMTzyHylP8FZ7VHqSMzpBdpv
	 QxWf3I5q2OhMwPn+QRe6Pr1DcMLXuo66CN+/NuXcHYGkx8ypSoDmtep4ZI/EkQvR3J
	 38xu2ZvWzyBq5c99ZBmtmaUa+eO2PsgRnBzwjZofqtEz2I7Jxm1JJf4iIgRFPUnQuh
	 XorP+7BnYc8iV6X2UphKP7IDz/038oCWJZ1YUeW5weI8F5G4Rxb+L1oq2O1hc82nxP
	 dROpHXPhk3Tew==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 89FEF40643;
	Tue,  6 Aug 2024 13:13:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7A22F1BF300
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 13:13:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 73584403B2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 13:13:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id anK5wE4AMZ85 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Aug 2024 13:13:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7B75D40201
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B75D40201
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7B75D40201
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 13:13:10 +0000 (UTC)
X-CSE-ConnectionGUID: X2jakLpbSreywFkEFcLw8A==
X-CSE-MsgGUID: 1XQpDa8xRFqW/GFv/85wtA==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="20842077"
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="20842077"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 06:13:10 -0700
X-CSE-ConnectionGUID: 16IgqtC6SOargJEsfZV4Eg==
X-CSE-MsgGUID: f3BC7GwTS6q0dm8SundO3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="56475796"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa009.fm.intel.com with ESMTP; 06 Aug 2024 06:13:07 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  6 Aug 2024 15:12:32 +0200
Message-ID: <20240806131240.800259-2-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240806131240.800259-1-aleksander.lobakin@intel.com>
References: <20240806131240.800259-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722949990; x=1754485990;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lfliiD9dtcEG344A0Se/HN7jBzJiQBOpagRt04D+Nvw=;
 b=fBmV2dGD6jsKBGAcqNc7NMUOS/mIGjcINWm71jjF/cH0mtXh0eShzedw
 pH7ERVCJelxbCOyKJ504/ezxt1Qk0jfB/sqzuyLTr6d6mUCkoFGwbS7Wj
 FZEA8Q6Pt/Bl6MNFOxiwngF2ypxAqaPb7eCbvaQHv2UJB/cMoDQz8fL5S
 /Bw/yfBnrMGF8sOTuxb7Ofqcr9V4Pg6tw0mv+KU8GvqtON3MiigViljvN
 sl5V9r7dkj4oFPL3FEvVPvgrCpUZgwHgMlBi9dNrwb8pTeapRmHq/Sd+q
 2JZvYMoLZKcBQm9UTIpEDr/DsHraexxlnm3VZK0AptNFITi++h9VCw174
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fBmV2dGD
Subject: [Intel-wired-lan] [PATCH iwl-next 1/9] unroll: add generic loop
 unroll helpers
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
Cc: "Jose E . Marchesi" <jose.marchesi@oracle.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Joshua Hay <joshua.a.hay@intel.com>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There are cases when we need to explicitly unroll loops. For example,
cache operations, filling DMA descriptors on very high speeds etc.
Add compiler-specific attribute macros to give the compiler a hint
that we'd like to unroll a loop.
Example usage:

 #define UNROLL_BATCH 8

	unrolled_count(UNROLL_BATCH)
	for (u32 i = 0; i < UNROLL_BATCH; i++)
		op(priv, i);

Note that sometimes the compilers won't unroll loops if they think this
would have worse optimization and perf than without unrolling, and that
unroll attributes are available only starting GCC 8. For older compiler
versions, no hints/attributes will be applied.
For better unrolling/parallelization, don't have any variables that
interfere between iterations except for the iterator itself.

Co-developed-by: Jose E. Marchesi <jose.marchesi@oracle.com> # pragmas
Signed-off-by: Jose E. Marchesi <jose.marchesi@oracle.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/linux/unroll.h | 50 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 include/linux/unroll.h

diff --git a/include/linux/unroll.h b/include/linux/unroll.h
new file mode 100644
index 000000000000..e305d155faa6
--- /dev/null
+++ b/include/linux/unroll.h
@@ -0,0 +1,50 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2024 Intel Corporation */
+
+#ifndef _LINUX_UNROLL_H
+#define _LINUX_UNROLL_H
+
+#ifdef CONFIG_CC_IS_CLANG
+#define __pick_unrolled(x, y)	_Pragma(#x)
+#elif CONFIG_GCC_VERSION >= 80000
+#define __pick_unrolled(x, y)	_Pragma(#y)
+#else
+#define __pick_unrolled(x, y)	/* not supported */
+#endif
+
+/**
+ * unrolled - loop attributes to ask the compiler to unroll it
+ *
+ * Usage:
+ *
+ * #define BATCH 4
+ *	unrolled_count(BATCH)
+ *	for (u32 i = 0; i < BATCH; i++)
+ *		// loop body without cross-iteration dependencies
+ *
+ * This is only a hint and the compiler is free to disable unrolling if it
+ * thinks the count is suboptimal and may hurt performance and/or hugely
+ * increase object code size.
+ * Not having any cross-iteration dependencies (i.e. when iter x + 1 depends
+ * on what iter x will do with variables) is not a strict requirement, but
+ * provides best performance and object code size.
+ * Available only on Clang and GCC 8.x onwards.
+ */
+
+/* Ask the compiler to pick an optimal unroll count, Clang only */
+#define unrolled							    \
+	__pick_unrolled(clang loop unroll(enable), /* nothing */)
+
+/* Unroll each @n iterations of a loop */
+#define unrolled_count(n)						    \
+	__pick_unrolled(clang loop unroll_count(n), GCC unroll n)
+
+/* Unroll the whole loop */
+#define unrolled_full							    \
+	__pick_unrolled(clang loop unroll(full), GCC unroll 65534)
+
+/* Never unroll a loop */
+#define unrolled_none							    \
+	__pick_unrolled(clang loop unroll(disable), GCC unroll 1)
+
+#endif /* _LINUX_UNROLL_H */
-- 
2.45.2

