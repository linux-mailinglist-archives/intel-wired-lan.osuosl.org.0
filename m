Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D6D845765
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 13:24:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 835AA42F5A;
	Thu,  1 Feb 2024 12:24:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 835AA42F5A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706790252;
	bh=MrmaB1Vw2GH+mJsScl7fGNJfIBLxys4GTulPMUYoW2M=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=r0nVJHugy4TOHa1ZAOo5YpO9R2KTKya93oXq6fcR2kwpCrfzPQRr6PmDQzD0gqBRH
	 kHJaozuK50U3BTruPPQoOIwykoCGf5HHcF0WtAy83z7fKk1EWpu3QpE9zE9za5iONM
	 jzBkNpkhxprL7iQuUyt0lTYcMWowfILzePgLFSHZ82tmNYfl7gIyoi992dF8d07fXS
	 Xg8BIcQvXouCGvX55XG9TLjnIe7PHei9Zr8zg6qxHjGky3uNtG7BdT2/wK1/q2yS6y
	 Zo4lI9kqCvgcusZxESUPePxVi2Isbn2+nd230il6xkdnDGVIL/crv4rU7KSQo3CL/L
	 N549beiUPloEA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v5KvQE3w70oa; Thu,  1 Feb 2024 12:24:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6365E40442;
	Thu,  1 Feb 2024 12:24:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6365E40442
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D068E1BF98D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:24:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B72C183D5E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:24:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B72C183D5E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZCKYPKb3qA45 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 12:24:03 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DDAFE81951
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:24:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DDAFE81951
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="3746991"
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; 
   d="scan'208";a="3746991"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 04:24:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; 
   d="scan'208";a="4499104"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa004.jf.intel.com with ESMTP; 01 Feb 2024 04:23:57 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu,  1 Feb 2024 13:22:01 +0100
Message-ID: <20240201122216.2634007-7-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706790243; x=1738326243;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SoA/u9+ab8IWfX0PrdnuNf/ZyTjLUt7GJssFy85j9T4=;
 b=l1UCv6MO0PiwpAdzp5/SorOgiePRZVHc61Wg/ken5IRWJVuTc4rmrg5B
 TLkOMHh6o34ya9yNoAYeGZmTI3XRwJ+wxAwjKyQm3qAw89T/OigaGOFE/
 TjXt0o3f/qKYzVfHNpHrtq2ypvnslsBCgR1Gb9QBwbCbarUWpZMSOl7dJ
 bvWBfDmXUVx2xLCxeXbeeWH8tS+dcfv2zR9L7zu8PmrVmyTngJisUjOY9
 MrzHtTvv4USb8MLkQZE1tnidQZtyog4UPH8s9zTd/BXX2yS8gZXTgVaaD
 vh1fHJR8VUnaQGp+tz94IJYLgKOkKcxSmzkUstuwwbSHPUxDL1VIe874G
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l1UCv6MO
Subject: [Intel-wired-lan] [PATCH net-next v5 06/21] bitops: let the
 compiler optimize {__, }assign_bit()
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
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
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
on compile-time constants"), the compilers are able to expand inline
bitmap operations to compile-time initializers when possible.
However, during the round of replacement if-__set-else-__clear with
__assign_bit() as per Andy's advice, bloat-o-meter showed +1024 bytes
difference in object code size for one module (even one function),
where the pattern:

	DECLARE_BITMAP(foo) = { }; // on the stack, zeroed

	if (a)
		__set_bit(const_bit_num, foo);
	if (b)
		__set_bit(another_const_bit_num, foo);
	...

is heavily used, although there should be no difference: the bitmap is
zeroed, so the second half of __assign_bit() should be compiled-out as
a no-op.
I either missed the fact that __assign_bit() has bitmap pointer marked
as `volatile` (as we usually do for bitops) or was hoping that the
compilers would at least try to look past the `volatile` for
__always_inline functions. Anyhow, due to that attribute, the compilers
were always compiling the whole expression and no mentioned compile-time
optimizations were working.

Convert __assign_bit() to a macro since it's a very simple if-else and
all of the checks are performed inside __set_bit() and __clear_bit(),
thus that wrapper has to be as transparent as possible. After that
change, despite it showing only -20 bytes change for vmlinux (due to
that it's still relatively unpopular), no drastic code size changes
happen when replacing if-set-else-clear for onstack bitmaps with
__assign_bit(), meaning the compiler now expands them to the actual
operations will all the expected optimizations.

Atomic assign_bit() is less affected due to its nature, but let's
convert it to a macro as well to keep the code consistent and not
leave a place for possible suboptimal codegen. Moreover, with certain
kernel configuration it actually gives some saves (x86):

do_ip_setsockopt    4154    4099     -55

Suggested-by: Yury Norov <yury.norov@gmail.com> # assign_bit(), too
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/linux/bitops.h | 20 ++++----------------
 1 file changed, 4 insertions(+), 16 deletions(-)

diff --git a/include/linux/bitops.h b/include/linux/bitops.h
index e0cd09eb91cd..b25dc8742124 100644
--- a/include/linux/bitops.h
+++ b/include/linux/bitops.h
@@ -275,23 +275,11 @@ static inline unsigned long fns(unsigned long word, unsigned int n)
  * @addr: the address to start counting from
  * @value: the value to assign
  */
-static __always_inline void assign_bit(long nr, volatile unsigned long *addr,
-				       bool value)
-{
-	if (value)
-		set_bit(nr, addr);
-	else
-		clear_bit(nr, addr);
-}
+#define assign_bit(nr, addr, value)					\
+	((value) ? set_bit((nr), (addr)) : clear_bit((nr), (addr)))
 
-static __always_inline void __assign_bit(long nr, volatile unsigned long *addr,
-					 bool value)
-{
-	if (value)
-		__set_bit(nr, addr);
-	else
-		__clear_bit(nr, addr);
-}
+#define __assign_bit(nr, addr, value)					\
+	((value) ? __set_bit((nr), (addr)) : __clear_bit((nr), (addr)))
 
 /**
  * __ptr_set_bit - Set bit in a pointer's value
-- 
2.43.0

