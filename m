Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85CAE84576E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 13:24:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 134B943656;
	Thu,  1 Feb 2024 12:24:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 134B943656
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706790278;
	bh=RIR5HCUngIYTQa0AyZsQpkqinTPn6ZwNdC2IHzSe3Ao=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2VEx106bgBSZnRCfhB+nC7chuJ47N0jd0w/PLsGf8bL4gsijtlS8frSDXjvqRMabB
	 xUqAxnUvGD6dvuV7RSnVDl+8NnL/HIOoXFw5MFzRiQs95a7XLzvdVOrcnnVM9XT+cQ
	 1k55Inxqy1NOXKNokToCkyQQx7fubr0Vw2t35h7oHTWLuWo5uqmer+KYsc0CE4kJwy
	 0tLnwOB9S3ktWYNa5p0fzzqbMmnNee5vQkqjGdsz/bOuWV1HCKugI/hajcJEFYjj8M
	 IQ2wvGSl9t4bDhk5bjOPzdtF3R6sBXLTTkl24Ab9Fa7U43AVm06FpGtRZrUHujzVIK
	 z+2kZhCsACp2A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nLlsUBu-3Atr; Thu,  1 Feb 2024 12:24:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E057B405CE;
	Thu,  1 Feb 2024 12:24:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E057B405CE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 69F641BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:24:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5094060B74
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:24:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5094060B74
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uNEhw-OVAw9W for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 12:24:28 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9985760B3F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:24:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9985760B3F
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="3747099"
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; 
   d="scan'208";a="3747099"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 04:24:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; 
   d="scan'208";a="4499122"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa004.jf.intel.com with ESMTP; 01 Feb 2024 04:24:23 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu,  1 Feb 2024 13:22:06 +0100
Message-ID: <20240201122216.2634007-12-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706790269; x=1738326269;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EhaxBT+fJeccFTGgUfkWLIZtD5dU/gVhB4d84ScaJSA=;
 b=By9K1243/TuJz0dBaMixGFK7x0LSHOQmG2J/2ZhPpgiPH78HoVEDyHlf
 gGFpHAYqJbux4AhUMe3yehwoRQeih1UxBNe3fZzF7D3nVVQMpWck7mS70
 W7LmQKQySHqTcMthahbVg4w3Ardk4/ikhxClM0EU4ak4Ee/GhN5BQ5Cn/
 hEf8nJlG224RadlgA358Ha+waxB056v8PewmTHq/vuD9l3dF9+K4xgCSz
 iYai/VsjR3uXcOT9RTBrY+pUQKhRVGY+KXOwpGCx4aC8h9NMkI8fnYFzs
 lMpSuV5uglCu0+8HpA7mgoQl6XgtMgLjcCbqYtMEsVh5BMQ5eQZtmysXQ
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=By9K1243
Subject: [Intel-wired-lan] [PATCH net-next v5 11/21] tools: move
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
Cc: Andy Shevchenko <andy@kernel.org>, linux-s390@vger.kernel.org,
 Wojciech Drewek <wojciech.drewek@intel.com>, Yury Norov <yury.norov@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 dm-devel@redhat.com, Marcin Szycik <marcin.szycik@linux.intel.com>,
 Alexander Potapenko <glider@google.com>, Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 netdev@vger.kernel.org, ntfs3@lists.linux.dev, Jiri Pirko <jiri@resnulli.us>,
 linux-btrfs@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently, tools have *ALIGN*() macros scattered across the unrelated
headers, as there are only 3 of them and they were added separately
each time on an as-needed basis.
Anyway, let's make it more consistent with the kernel headers and allow
using those macros outside of the mentioned headers. Create
<linux/align.h> inside the tools/ folder and include it where needed.

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
2.43.0

