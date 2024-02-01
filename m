Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1FFC845773
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 13:24:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8BC764366B;
	Thu,  1 Feb 2024 12:24:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8BC764366B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706790293;
	bh=vuNRF8jlYYS2JRzR/WIq+7/Z9O8zoMGB9W9g8LjfE6s=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ikd6ztYGufPG+du3ZvsK4DAbLxL/Ui2lOHvM43FSsacIRkNdu1DaW8I5hGJbOt+Rc
	 TwSEJ0Mi1B9I9gC4sM2CfN+339H7mcxzlaPi8gWy9uomqvI1L0IvXQpqRZDdq6Bjb3
	 SwkVl9BTIHi8JmOit1T6yBlnGp0KkZczR2sZC1y7IOCp2viETUfdVc1dix5XT6k5KA
	 Ka99LSHqFSiC/z0ShzCAQeixMenRpkFh8UBw+WAGVTFA83y6j5RHn+XcwPYs4w7EfA
	 VyXYEsjstWyJ56jQrVktd7AXBOfkpVMc4rKSB3JUMP/ZJsijtCcH32REUrv/st9S4z
	 tUGCWcRfHn6LQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kvcVM2dlXW_n; Thu,  1 Feb 2024 12:24:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A4616405CE;
	Thu,  1 Feb 2024 12:24:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A4616405CE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0BC671BF98D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:24:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CAA63404D8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:24:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CAA63404D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rjI0An828J4C for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 12:24:44 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EEC394365E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:24:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EEC394365E
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="3747147"
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; 
   d="scan'208";a="3747147"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 04:24:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; 
   d="scan'208";a="4499131"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa004.jf.intel.com with ESMTP; 01 Feb 2024 04:24:39 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu,  1 Feb 2024 13:22:09 +0100
Message-ID: <20240201122216.2634007-15-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706790285; x=1738326285;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DRgXZrBDaQAbpijEzgcXIBhu1l6MEbkbQ32hkGqS4H4=;
 b=Mn2OEGCHYc8KfseculiWtahpO4NTD1xd+Z3ovEevTP2lx/s85CIf0uRe
 6AWzSfxcnRNUTn12kKZV3LVQl04vMR3OBpQx/0zYp/vEyCI3iEGtrLc0N
 sR8/JKwXzrQRnequHQfsbEYzw0/t4qyj8Mq5jjSLcD2KgtfvXEFTpkCzV
 Vwui/JUgMJHya9BdXl5RITTep8XPoDPtPiR5kVB+XXvMzOcF+UP3vdR9/
 e1wSJzdIaJNyM2lQ+NghnoWQJSloMjDMLpENKrJM/QsxC2i8upjvyKKuL
 HwuTsobZutkkKg44WmNaWVVysQk/TDVULq/2LCDpQCME2FDPG4WI2aPoW
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Mn2OEGCH
Subject: [Intel-wired-lan] [PATCH net-next v5 14/21] lib/bitmap: add
 compile-time test for __assign_bit() optimization
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

Commit dc34d5036692 ("lib: test_bitmap: add compile-time
optimization/evaluations assertions") initially missed __assign_bit(),
which led to that quite a time passed before I realized it doesn't get
optimized at compilation time. Now that it does, add test for that just
to make sure nothing will break one day.
To make things more interesting, use bitmap_complement() and
bitmap_full(), thus checking their compile-time evaluation as well. And
remove the misleading comment mentioning the workaround removed recently
in favor of adding the whole file to GCov exceptions.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 lib/test_bitmap.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/lib/test_bitmap.c b/lib/test_bitmap.c
index a6e92cf5266a..4ee1f8ceb51d 100644
--- a/lib/test_bitmap.c
+++ b/lib/test_bitmap.c
@@ -1204,14 +1204,7 @@ static void __init test_bitmap_const_eval(void)
 	 * in runtime.
 	 */
 
-	/*
-	 * Equals to `unsigned long bitmap[1] = { GENMASK(6, 5), }`.
-	 * Clang on s390 optimizes bitops at compile-time as intended, but at
-	 * the same time stops treating @bitmap and @bitopvar as compile-time
-	 * constants after regular test_bit() is executed, thus triggering the
-	 * build bugs below. So, call const_test_bit() there directly until
-	 * the compiler is fixed.
-	 */
+	/* Equals to `unsigned long bitmap[1] = { GENMASK(6, 5), }` */
 	bitmap_clear(bitmap, 0, BITS_PER_LONG);
 	if (!test_bit(7, bitmap))
 		bitmap_set(bitmap, 5, 2);
@@ -1243,6 +1236,15 @@ static void __init test_bitmap_const_eval(void)
 	/* ~BIT(25) */
 	BUILD_BUG_ON(!__builtin_constant_p(~var));
 	BUILD_BUG_ON(~var != ~BIT(25));
+
+	/* ~BIT(25) | BIT(25) == ~0UL */
+	bitmap_complement(&var, &var, BITS_PER_LONG);
+	__assign_bit(25, &var, true);
+
+	/* !(~(~0UL)) == 1 */
+	res = bitmap_full(&var, BITS_PER_LONG);
+	BUILD_BUG_ON(!__builtin_constant_p(res));
+	BUILD_BUG_ON(!res);
 }
 
 /*
-- 
2.43.0

