Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C019A845772
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 13:24:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 490B14365E;
	Thu,  1 Feb 2024 12:24:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 490B14365E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706790288;
	bh=n5HcvItoLtNtV2tRoN4qbfvnYFQSx7Pm/R4/zzyldig=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=z9Y+u+XusvvFUWwH0TtMEzQVYTuefcgiEDGpFJZ1t1S+ErRFP+YZCxkOtbRFfCS8+
	 LH9HYH1wvFv4SY9uluCaYSbzd3qle3BdoDAaYTHkXnYdju81057ANw8zDxhqcpr5Uc
	 16CeJ2DY5Q4AXgeDFZWqjOpm5zMeqisjMNGtf713hrsK0sMV+mKcq2h2d9SPngTHlD
	 sSS0inQrUT7lPk6nnHdANmBOGh4/PXdm2Zh1+hTEJZQhed6TNIEqybsTl8OSXgK1aV
	 /lQS0LKSYpy4AHPNW5ism440msukmGWrdwJi2W1nuN0Jbw0i8+7V8527syj9CEWYEI
	 y5hlXVO5jHx1g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bn0b7mBB29iT; Thu,  1 Feb 2024 12:24:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 250954047B;
	Thu,  1 Feb 2024 12:24:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 250954047B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AE4451BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:24:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 80953405C7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:24:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 80953405C7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FawZzU1VTyrW for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 12:24:39 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 77D0A404D8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:24:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 77D0A404D8
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="3747130"
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; 
   d="scan'208";a="3747130"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 04:24:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; 
   d="scan'208";a="4499128"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa004.jf.intel.com with ESMTP; 01 Feb 2024 04:24:34 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu,  1 Feb 2024 13:22:08 +0100
Message-ID: <20240201122216.2634007-14-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706790280; x=1738326280;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6P+IyUknljgPeM0LGZKzZ3a8q7uN5OUI3RLSrY33oAY=;
 b=KfZM5k3TDIOaWxinl6wDl77TYY9gxnjc1wQ4fjf88LQkWcKEOSN66Pha
 piu1RxBBPD18IQzxCMsXUTvHHjoRJP5NOpaaEF6IJvT3xMCP6oebXkxAl
 ODdjz4OvOdpdfa+1yaUq+cEBflJpHvFNFTUtI13ZYpSL6xjtD4okBWzBB
 DborzWdcB19oX9ZZbCREgOPvrvNO0m0+re3OsDjnKGj8/t6OQtSJbxiuA
 y7rts5osEUqj7ASnqMQFm56tNszGwCPJM/pGL+jop1jubcbXs/8XT6ASP
 qqDSm5jTTrsmVOGOq120s74YMSBX9Y21vSVAqKxX3ir9nx8Uv8yPHusVc
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KfZM5k3T
Subject: [Intel-wired-lan] [PATCH net-next v5 13/21] bitmap: make
 bitmap_{get, set}_value8() use bitmap_{read, write}()
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

Now that we have generic bitmap_read() and bitmap_write(), which are
inline and try to take care of non-bound-crossing and aligned cases
to keep them optimized, collapse bitmap_{get,set}_value8() into
simple wrappers around the former ones.
bloat-o-meter shows no difference in vmlinux and -2 bytes for
gpio-pca953x.ko, which says the optimization didn't suffer due to
that change. The converted helpers have the value width embedded
and always compile-time constant and that helps a lot.

Suggested-by: Yury Norov <yury.norov@gmail.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/linux/bitmap.h | 38 +++++---------------------------------
 1 file changed, 5 insertions(+), 33 deletions(-)

diff --git a/include/linux/bitmap.h b/include/linux/bitmap.h
index 9a6a27a7f675..f80e116b8f60 100644
--- a/include/linux/bitmap.h
+++ b/include/linux/bitmap.h
@@ -609,39 +609,6 @@ static inline void bitmap_from_u64(unsigned long *dst, u64 mask)
 	bitmap_from_arr64(dst, &mask, 64);
 }
 
-/**
- * bitmap_get_value8 - get an 8-bit value within a memory region
- * @map: address to the bitmap memory region
- * @start: bit offset of the 8-bit value; must be a multiple of 8
- *
- * Returns the 8-bit value located at the @start bit offset within the @src
- * memory region.
- */
-static inline unsigned long bitmap_get_value8(const unsigned long *map,
-					      unsigned long start)
-{
-	const size_t index = BIT_WORD(start);
-	const unsigned long offset = start % BITS_PER_LONG;
-
-	return (map[index] >> offset) & 0xFF;
-}
-
-/**
- * bitmap_set_value8 - set an 8-bit value within a memory region
- * @map: address to the bitmap memory region
- * @value: the 8-bit value; values wider than 8 bits may clobber bitmap
- * @start: bit offset of the 8-bit value; must be a multiple of 8
- */
-static inline void bitmap_set_value8(unsigned long *map, unsigned long value,
-				     unsigned long start)
-{
-	const size_t index = BIT_WORD(start);
-	const unsigned long offset = start % BITS_PER_LONG;
-
-	map[index] &= ~(0xFFUL << offset);
-	map[index] |= value << offset;
-}
-
 /**
  * bitmap_read - read a value of n-bits from the memory region
  * @map: address to the bitmap memory region
@@ -715,6 +682,11 @@ static inline void bitmap_write(unsigned long *map, unsigned long value,
 	map[index + 1] |= (value >> space);
 }
 
+#define bitmap_get_value8(map, start)			\
+	bitmap_read(map, start, BITS_PER_BYTE)
+#define bitmap_set_value8(map, value, start)		\
+	bitmap_write(map, value, start, BITS_PER_BYTE)
+
 #endif /* __ASSEMBLY__ */
 
 #endif /* __LINUX_BITMAP_H */
-- 
2.43.0

