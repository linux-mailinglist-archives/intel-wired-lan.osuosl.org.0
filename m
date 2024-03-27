Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 50ECF88E8D8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 16:25:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 73D2F82086;
	Wed, 27 Mar 2024 15:25:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5qsO--8J7Qco; Wed, 27 Mar 2024 15:25:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCAC682085
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711553121;
	bh=ZIRUiJ5eD1gqsxJM4qdKhtwmUr6760BaZYo9uvaDW1U=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VmJgY/psu9jeUahH1uCMK33cdbeD566Oys8Cu8ZRgQTwpWb03/Dx5Hc6x9K8VKSwi
	 EHuvEwT76Yqcs/38GUsTNjvAkPS7UI8hv9FUfb0LdxyuvWP2/Z0aME24NJw/J0Dq7N
	 tnOSRJv+Js748GQhZ64No3TvftAtHiRJgqmNL3B4whchsVIWwTcZV9AD/MCHfYhdVQ
	 zbaQ1ktK6hhH6FX8cGbpxJ+9jnAsqw09X+qDCgLKGPe7ryREbWEKeZbSkXBIrKK2Gh
	 eaGhmAW9bsLOCr5jm9RI7yztzxyVIo1wb/DD3FTkCKWLnfnO1DWGHKaYbGS1aRHE17
	 CIIm0eMkhv+nA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BCAC682085;
	Wed, 27 Mar 2024 15:25:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6DDAA1BF418
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 15:25:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5AA9B6061F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 15:25:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TnFWt6701b6D for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 15:25:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6391A605D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6391A605D7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6391A605D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 15:25:18 +0000 (UTC)
X-CSE-ConnectionGUID: vyz4cME8QkChpncqM6j3KQ==
X-CSE-MsgGUID: WCwWv5uHTV6gma/4EtdVnw==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6518239"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="6518239"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 08:25:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="16414328"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa008.fm.intel.com with ESMTP; 27 Mar 2024 08:25:15 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Wed, 27 Mar 2024 16:23:51 +0100
Message-ID: <20240327152358.2368467-15-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240327152358.2368467-1-aleksander.lobakin@intel.com>
References: <20240327152358.2368467-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711553118; x=1743089118;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Jo3SS7pOBr6YTSNduTI90cZyGI5oQuDzhLIxEvLUPuo=;
 b=H9R7pl3tPY63cNBkfIAihPbwlU4dOffYvyB3Y0QXy/nZ9slOUbHmNzsL
 HgOQU4WWUr8aCvdJxRPP2KCChlX4KN8cVFJf/qqIe0ptJy1eEy8dDht5g
 E2aPteZRjqH+HgQXh5WzVMP8j+eoCeyy+X+Cwc7gjL0imGI4dz2bysdpi
 v6jhOZ11bcDq4sUvMUPEE7wK0+3syvtHEHjL/mDZDVz5FNFhziQVXoeFI
 Tz7beWU5JhGbe9YiDkcWsPMPVrOkRytEDSC7/uuWPYWktx7W2h5uSbYpK
 e9J4cR6E26l5Ue8JFb/LQGN3MRiNVKV6SV/Dsd2SbpZB8UxaHuj5Q9Al6
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H9R7pl3t
Subject: [Intel-wired-lan] [PATCH net-next v6 14/21] lib/bitmap: add
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
Cc: Yury Norov <yury.norov@gmail.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Alexander Potapenko <glider@google.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
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
Signed-off-by: Yury Norov <yury.norov@gmail.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 lib/test_bitmap.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/lib/test_bitmap.c b/lib/test_bitmap.c
index 2870373d94d0..83019beabce4 100644
--- a/lib/test_bitmap.c
+++ b/lib/test_bitmap.c
@@ -1245,14 +1245,7 @@ static void __init test_bitmap_const_eval(void)
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
@@ -1284,6 +1277,15 @@ static void __init test_bitmap_const_eval(void)
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
2.44.0

