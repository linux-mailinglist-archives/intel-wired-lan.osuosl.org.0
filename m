Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CC5845767
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 13:24:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 57E58405EB;
	Thu,  1 Feb 2024 12:24:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 57E58405EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706790257;
	bh=XZOpbUnsbtRePmg1TceY2O3lEdM8KQ2pZ30iHF9h8SE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WLaoI5Ob6DO2MUTIEoewVRk38i6UwKSQO4Z+HyDbZVdDyrwMD1kBU5nM0dpK8AcaK
	 tu7zpaSRUYGXu4p0w5Fw58hVsBDJcBDn2fGtiiBSr8I+tvhjDw/QLNJv7RYVAPQ5i6
	 PXClpJxCoAahPSgGSJBbvz4mbPtkSWiEs6bvUfmrW+LKq/ymTLQttEfRDAxn3ifU71
	 2BjjAXBznnn7frdUkIsX2SlvXJi/tm5ytnpIwzNom9dTmiOrsKj40smrvzMetQ+K5p
	 4F0Pn510VxpWQguTrXoT+voCYgigbst+DqPrPgXFoyytEGYfxIQZ3Kfc2fnhrhvlgg
	 pXM9xlJy0O75g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZNdbJlYovn8Z; Thu,  1 Feb 2024 12:24:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2C06040571;
	Thu,  1 Feb 2024 12:24:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C06040571
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BBC2E1BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:24:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 928CF83E80
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:24:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 928CF83E80
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sPUx0yqegvmP for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 12:24:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DAD7583DF7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:24:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DAD7583DF7
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="3747017"
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; 
   d="scan'208";a="3747017"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 04:24:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; 
   d="scan'208";a="4499108"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa004.jf.intel.com with ESMTP; 01 Feb 2024 04:24:03 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu,  1 Feb 2024 13:22:02 +0100
Message-ID: <20240201122216.2634007-8-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706790248; x=1738326248;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7hQbTbBHJUnj59SwHJFVRJ8NAAFr11mdikwNORShsF0=;
 b=dhIqul19FerNAfAYtVb3TDX5ktN5m0+m6dEMr545ATqSf8XqCF/+pAL9
 i7ywq3Fuw75Dm9hSUBWY7Vce9JfgkXoHZIi/MW9SU1rrUClCwPdsBr8tS
 xAObjbgygrlfr83pixDlIy93rqxxr0QtvkEwXSXehTbc7HnpiZkfO2WnR
 MMvz1uAfgYAdzePHB9Q1JM2HlrBY7UPBBLCyTpFkW1qavISUVV41KvLsD
 Njfew4vafXNUjuhY5oGX59SBX5zADHcHYnlCQwd2epyULQW/jz1a8TJVw
 2Mp/3dwaqYc7wp5/nncrSzhGvm4T7n2mo7lF9ESlJ0lMMFw4y0yAo5wI1
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dhIqul19
Subject: [Intel-wired-lan] [PATCH net-next v5 07/21] linkmode: convert
 linkmode_{test, set, clear, mod}_bit() to macros
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

Since commit b03fc1173c0c ("bitops: let optimize out non-atomic bitops
on compile-time constants"), the non-atomic bitops are macros which can
be expanded by the compilers into compile-time expressions, which will
result in better optimized object code. Unfortunately, turned out that
passing `volatile` to those macros discards any possibility of
optimization, as the compilers then don't even try to look whether
the passed bitmap is known at compilation time. In addition to that,
the mentioned linkmode helpers are marked with `inline`, not
`__always_inline`, meaning that it's not guaranteed some compiler won't
uninline them for no reason, which will also effectively prevent them
from being optimized (it's a well-known thing the compilers sometimes
uninline `2 + 2`).
Convert linkmode_*_bit() from inlines to macros. Their calling
convention are 1:1 with the corresponding bitops, so that it's not even
needed to enumerate and map the arguments, only the names. No changes in
vmlinux' object code (compiled by LLVM for x86_64) whatsoever, but that
doesn't necessarily means the change is meaningless.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Acked-by: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/linux/linkmode.h | 27 ++++-----------------------
 1 file changed, 4 insertions(+), 23 deletions(-)

diff --git a/include/linux/linkmode.h b/include/linux/linkmode.h
index 287f590ed56b..d94bfd9ac8cc 100644
--- a/include/linux/linkmode.h
+++ b/include/linux/linkmode.h
@@ -43,29 +43,10 @@ static inline int linkmode_andnot(unsigned long *dst, const unsigned long *src1,
 	return bitmap_andnot(dst, src1, src2,  __ETHTOOL_LINK_MODE_MASK_NBITS);
 }
 
-static inline void linkmode_set_bit(int nr, volatile unsigned long *addr)
-{
-	__set_bit(nr, addr);
-}
-
-static inline void linkmode_clear_bit(int nr, volatile unsigned long *addr)
-{
-	__clear_bit(nr, addr);
-}
-
-static inline void linkmode_mod_bit(int nr, volatile unsigned long *addr,
-				    int set)
-{
-	if (set)
-		linkmode_set_bit(nr, addr);
-	else
-		linkmode_clear_bit(nr, addr);
-}
-
-static inline int linkmode_test_bit(int nr, const volatile unsigned long *addr)
-{
-	return test_bit(nr, addr);
-}
+#define linkmode_test_bit	test_bit
+#define linkmode_set_bit	__set_bit
+#define linkmode_clear_bit	__clear_bit
+#define linkmode_mod_bit	__assign_bit
 
 static inline void linkmode_set_bit_array(const int *array, int array_size,
 					  unsigned long *addr)
-- 
2.43.0

