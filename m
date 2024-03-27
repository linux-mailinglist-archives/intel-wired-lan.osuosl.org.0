Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB2E88E8D3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 16:25:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 69DED81F0F;
	Wed, 27 Mar 2024 15:25:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gZ0XMDaw22lE; Wed, 27 Mar 2024 15:25:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE5CA82073
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711553113;
	bh=TaWdVeqTP7T3fI/dtr926X8Z1QQ65ofzmdGiBY69Sc8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UM8XuFGYx0HME2jeK7LJSSrP8HKjOSuQrokTX0cCFQbikaWEiyTSgSzWHa9zf3oGo
	 aYFfZN/N8sOzE+2CGrWxu698hugWCWASemAm/U0SRyKDRjCytiKym8lsXBSPj9uvBP
	 ihCtG778rHmzdwoAbyAaNt0NRd/QZnvANDv1TQU7JhM61bsgFLALjY3+NF3L0T3Ymp
	 rn8kpLrzPaDp7WGhDRuYTriUoZX0KeYlCwlCqCUyS2FqTzlQ2LkGqmpfMCF43dlUMn
	 PfnPqYXM6znmhqTpxGm2stGcajgBVgfBMPSWXuOT020FX6Vo+9utmLC+ORF4HkaXA0
	 Ea9+CtEekJPxw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BE5CA82073;
	Wed, 27 Mar 2024 15:25:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CE2641BF418
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 15:25:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BABB16061F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 15:25:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iWUol86V_2-Z for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 15:25:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DC4A0605D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DC4A0605D7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DC4A0605D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 15:25:09 +0000 (UTC)
X-CSE-ConnectionGUID: gK0uut+GRpWl6prIssdbFA==
X-CSE-MsgGUID: rS8J+B2eRyeTyUTvNpgQsg==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6518208"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="6518208"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 08:25:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="16414270"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa008.fm.intel.com with ESMTP; 27 Mar 2024 08:25:07 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Wed, 27 Mar 2024 16:23:48 +0100
Message-ID: <20240327152358.2368467-12-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240327152358.2368467-1-aleksander.lobakin@intel.com>
References: <20240327152358.2368467-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711553110; x=1743089110;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7aqDMG3jXWM6P9Y6VUwEci4LhL45xGo7CgLld4wLHOc=;
 b=hzJ1AF/U9qnizza8DO/smL/UeCBJLQ4EQs9qz3mRGQCF+v0lFmynweIv
 o3ISX/9eF7am6jb7N/euw2Efoy4JqWizcAhHQMyHd9Nz+YElZ2GZPaEdS
 zPMjMZR0SUZr/WMRVjj2NDQvFcuJo4bglECWZM0/x7TbPSLKhiSwIsPse
 oDSkhYyI7MSZ1KikOJstpkC/dZ2TNP9nFKW5z8Xiu5fuY70JtyiXV2mkG
 gemGQ73IzeN7HM/wl+IgmGA1K0hmqWoPZsNzgcG+vMKO9e3wpanxC9yZH
 Zx8v4qVpPliizmhAFh+Vie8BwX7IFGFuM6Ri72woX6gPPLoT8y1ew10ei
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hzJ1AF/U
Subject: [Intel-wired-lan] [PATCH net-next v6 11/21] tools: move
 alignment-related macros to new <linux/align.h>
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
Cc: Yury Norov <yury.norov@gmail.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Alexander Potapenko <glider@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently, tools have *ALIGN*() macros scattered across the unrelated
headers, as there are only 3 of them and they were added separately
each time on an as-needed basis.
Anyway, let's make it more consistent with the kernel headers and allow
using those macros outside of the mentioned headers. Create
<linux/align.h> inside the tools/ folder and include it where needed.

Signed-off-by: Yury Norov <yury.norov@gmail.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 tools/include/linux/align.h  | 12 ++++++++++++
 tools/include/linux/bitmap.h |  2 +-
 tools/include/linux/mm.h     |  5 +----
 3 files changed, 14 insertions(+), 5 deletions(-)
 create mode 100644 tools/include/linux/align.h

diff --git a/tools/include/linux/align.h b/tools/include/linux/align.h
new file mode 100644
index 000000000000..14e34ace80dd
--- /dev/null
+++ b/tools/include/linux/align.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef _TOOLS_LINUX_ALIGN_H
+#define _TOOLS_LINUX_ALIGN_H
+
+#include <uapi/linux/const.h>
+
+#define ALIGN(x, a)		__ALIGN_KERNEL((x), (a))
+#define ALIGN_DOWN(x, a)	__ALIGN_KERNEL((x) - ((a) - 1), (a))
+#define IS_ALIGNED(x, a)	(((x) & ((typeof(x))(a) - 1)) == 0)
+
+#endif /* _TOOLS_LINUX_ALIGN_H */
diff --git a/tools/include/linux/bitmap.h b/tools/include/linux/bitmap.h
index f3566ea0f932..8c6852dba04f 100644
--- a/tools/include/linux/bitmap.h
+++ b/tools/include/linux/bitmap.h
@@ -3,6 +3,7 @@
 #define _TOOLS_LINUX_BITMAP_H
 
 #include <string.h>
+#include <linux/align.h>
 #include <linux/bitops.h>
 #include <linux/find.h>
 #include <stdlib.h>
@@ -126,7 +127,6 @@ static inline bool bitmap_and(unsigned long *dst, const unsigned long *src1,
 #define BITMAP_MEM_ALIGNMENT (8 * sizeof(unsigned long))
 #endif
 #define BITMAP_MEM_MASK (BITMAP_MEM_ALIGNMENT - 1)
-#define IS_ALIGNED(x, a) (((x) & ((typeof(x))(a) - 1)) == 0)
 
 static inline bool bitmap_equal(const unsigned long *src1,
 				const unsigned long *src2, unsigned int nbits)
diff --git a/tools/include/linux/mm.h b/tools/include/linux/mm.h
index f3c82ab5b14c..7a6b98f4e579 100644
--- a/tools/include/linux/mm.h
+++ b/tools/include/linux/mm.h
@@ -2,8 +2,8 @@
 #ifndef _TOOLS_LINUX_MM_H
 #define _TOOLS_LINUX_MM_H
 
+#include <linux/align.h>
 #include <linux/mmzone.h>
-#include <uapi/linux/const.h>
 
 #define PAGE_SHIFT		12
 #define PAGE_SIZE		(_AC(1, UL) << PAGE_SHIFT)
@@ -11,9 +11,6 @@
 
 #define PHYS_ADDR_MAX	(~(phys_addr_t)0)
 
-#define ALIGN(x, a)			__ALIGN_KERNEL((x), (a))
-#define ALIGN_DOWN(x, a)		__ALIGN_KERNEL((x) - ((a) - 1), (a))
-
 #define PAGE_ALIGN(addr) ALIGN(addr, PAGE_SIZE)
 
 #define __va(x) ((void *)((unsigned long)(x)))
-- 
2.44.0

