Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E832E845760
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 13:23:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7A1EE40640;
	Thu,  1 Feb 2024 12:23:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A1EE40640
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706790237;
	bh=Ib5ZoWYDygos7YBY+UxOO5bWBWa1qUchnDN/btRIAGY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sZH9TPQjX4213m0ge2p4zJ4dEkQZehoeWg62lZk+H8XcpowgWkGQGmRNxrpvJaWlK
	 onp4yLX3g1m2K071kfXXFdJNqlP5mTUtagrg5OAYhkgbSD1RHG4nt/zNy4QbrXerYt
	 tyPv55mhYl+I+cDcDBxO4Vj8ceIn09L/LzIzlzgvcs8/7kWUQZqt7eSzT2XsQhfHtT
	 lYWNDhrvSHHF0HIrCA6tRnBPhCuwv6KvhEIj4nVz6EPg9WwuceZiTg5ixWRwn/HAQR
	 jEuqVV3Swvp9nJ9XFKJPCizuebvboJStVWWnf3hvhGtg5Lyru/ePFWLo9m371umCm7
	 eA4jSST1CipTg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6tb1t_W3J8RZ; Thu,  1 Feb 2024 12:23:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5A8804013F;
	Thu,  1 Feb 2024 12:23:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A8804013F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EE5F41BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:23:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C7D3681916
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:23:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C7D3681916
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S40eI4l_Cgde for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 12:23:47 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1BB32818AC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:23:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1BB32818AC
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="3746907"
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; 
   d="scan'208";a="3746907"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 04:23:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; 
   d="scan'208";a="4499090"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa004.jf.intel.com with ESMTP; 01 Feb 2024 04:23:42 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu,  1 Feb 2024 13:21:58 +0100
Message-ID: <20240201122216.2634007-4-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706790228; x=1738326228;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C0jCnN2niwUwVCK3xrfR+OUG4g6M8f7iVWlMtJ0aO34=;
 b=aaNBGkGq+afEERKaz3UwE7bUdbbWjDIlqT7FMjAbi81mrY8nGA8wM6cv
 IOivIF+CrYDPII3YRSOMQO+vGKX89LCjP6qFsMWJjPsdk70C31rzyIFdX
 BA6YOb6f0JQDBZ2SzMjIrDq9pDizZf4FLah74LRszmLdXW2UiThm3RzYk
 Eq6ZHp/5rYEwi61O/DQwAqpQqV2j8z9rx9/23bSmxoIRbGHWmEp/Xmvwe
 Jt41xnbcO1K/2TWeyfZgILv+EgU9Wu/ytkpFi3B6rMpqRa+iZVlOhaKzU
 Y0EK1JUUA9XfhILegbWOE0CUXhrpOqYgLmhkL46XrUNOGwCEnR852tRKQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aaNBGkGq
Subject: [Intel-wired-lan] [PATCH net-next v5 03/21] lib/test_bitmap: use
 pr_info() for non-error messages
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

From: Alexander Potapenko <glider@google.com>

pr_err() messages may be treated as errors by some log readers, so let
us only use them for test failures. For non-error messages, replace them
with pr_info().

Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Alexander Potapenko <glider@google.com>
Acked-by: Yury Norov <yury.norov@gmail.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 lib/test_bitmap.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/lib/test_bitmap.c b/lib/test_bitmap.c
index 46c015468077..a6e92cf5266a 100644
--- a/lib/test_bitmap.c
+++ b/lib/test_bitmap.c
@@ -507,7 +507,7 @@ static void __init test_bitmap_parselist(void)
 		}
 
 		if (ptest.flags & PARSE_TIME)
-			pr_err("parselist: %d: input is '%s' OK, Time: %llu\n",
+			pr_info("parselist: %d: input is '%s' OK, Time: %llu\n",
 					i, ptest.in, time);
 
 #undef ptest
@@ -546,7 +546,7 @@ static void __init test_bitmap_printlist(void)
 		goto out;
 	}
 
-	pr_err("bitmap_print_to_pagebuf: input is '%s', Time: %llu\n", buf, time);
+	pr_info("bitmap_print_to_pagebuf: input is '%s', Time: %llu\n", buf, time);
 out:
 	kfree(buf);
 	kfree(bmap);
@@ -624,7 +624,7 @@ static void __init test_bitmap_parse(void)
 		}
 
 		if (test.flags & PARSE_TIME)
-			pr_err("parse: %d: input is '%s' OK, Time: %llu\n",
+			pr_info("parse: %d: input is '%s' OK, Time: %llu\n",
 					i, test.in, time);
 	}
 }
@@ -1380,7 +1380,7 @@ static void __init test_bitmap_read_perf(void)
 		}
 	}
 	time = ktime_get() - time;
-	pr_err("Time spent in %s:\t%llu\n", __func__, time);
+	pr_info("Time spent in %s:\t%llu\n", __func__, time);
 }
 
 static void __init test_bitmap_write_perf(void)
@@ -1402,7 +1402,7 @@ static void __init test_bitmap_write_perf(void)
 		}
 	}
 	time = ktime_get() - time;
-	pr_err("Time spent in %s:\t%llu\n", __func__, time);
+	pr_info("Time spent in %s:\t%llu\n", __func__, time);
 }
 
 #undef TEST_BIT_LEN
-- 
2.43.0

