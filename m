Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D79E88E8C8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 16:25:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5F34F82045;
	Wed, 27 Mar 2024 15:25:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z6X4zPGuP7zG; Wed, 27 Mar 2024 15:25:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D2E081095
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711553102;
	bh=WFFFpYUy8YH1KZ1/CKj0274wR2f3ZdEdr4/xWK9GmzM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=E1uoaphzQlGUvN2yLlPSQyTu4Pe/qZFefwSjaIx/v3Ct2u1PSRpQxYCsm5Dzw5uww
	 pmocXYTznkX4TOcprkDk5HWXsILfN7FxpG87Qh2iYsGS0/t8RisiO2i1aaPiW/zeqC
	 7jyXRmP/RdGEf1KssAnG1p0PSymW5BdtYwSKMtpJlX0mk5bEp1fzJ+wLeMbn4NN+H9
	 Ldk0GYUn4GfXjsgqjIzoNiQO6SLb10VXDG1KDmf+BbwpxLBwnRPM+S2T26SNoAm88S
	 9m2BqB+ojO4FeH88uM9H8JI2lK06lldgpYsGfrqYrbuhwCb5YibVd3Z6QvQV4mmMb3
	 ok4konfKrOs9A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5D2E081095;
	Wed, 27 Mar 2024 15:25:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5F39E1BF418
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 15:24:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5A12B605D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 15:24:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 05yj-Lmd-Ddr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 15:24:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 890DC60B9C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 890DC60B9C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 890DC60B9C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 15:24:54 +0000 (UTC)
X-CSE-ConnectionGUID: Kk/dE90OTYOPVMjFVSkIbw==
X-CSE-MsgGUID: 4MOcOO40RQeQ46RJtnpvNA==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6518145"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="6518145"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 08:24:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="16414168"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa008.fm.intel.com with ESMTP; 27 Mar 2024 08:24:51 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Wed, 27 Mar 2024 16:23:43 +0100
Message-ID: <20240327152358.2368467-7-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240327152358.2368467-1-aleksander.lobakin@intel.com>
References: <20240327152358.2368467-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711553094; x=1743089094;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AjC3bYJ69IG/k83edT1SGLXaLYwzTvFtmxenQQc9rVU=;
 b=PWhuNDWfJctHg+ANIIrkXbCaCJff3mGPHO/9wCH5aboX+w3OtklPrP1T
 /03ccU4dmJFvuNUolLW+HC2M+ut6flTLcbrWiad352jVHa/a+pX6oPpwl
 e6iRsnwVDKc0z5zBUlZXnFkcWFKRTU+s3RbvdWEofNEALpgKLcK3vT50C
 rn7G36yrOfAK6OxC24/uBe9dOk7eOFvVNF+dO8f4Y7DwZhhfvPWmdctvK
 HwmIYYtmg4nDKFq6Ppz976JqqJaIhYuZ6k4DOPUD2gKgTHvRzYPAZ5k1Z
 lmZnJZ61M2ShSbHBWLvhicJIiStjZVZ/F7IwJOWldiYVnejXkNLWrOvMb
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PWhuNDWf
Subject: [Intel-wired-lan] [PATCH net-next v6 06/21] bitops: let the
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
Cc: Yury Norov <yury.norov@gmail.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Alexander Potapenko <glider@google.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
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
Acked-by: Yury Norov <yury.norov@gmail.com>
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
2.44.0

