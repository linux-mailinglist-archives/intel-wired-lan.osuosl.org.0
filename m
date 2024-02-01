Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E78845762
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 13:24:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0A15C41D59;
	Thu,  1 Feb 2024 12:24:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0A15C41D59
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706790247;
	bh=A6ed4ZCnthg7H5zksJplhCnPki0CElvRiUR+4yXcZMI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CIv1j9aHJEmUq/IFuK6fLSh7nllWhjttUr7qygfKUuMoVqJm2rYetlmfWsEAih4mj
	 U769lMeXyCnQhhlSAPKLCcTMm9R3ocnKjUu8ipgj4etlk/ThoVxriZBuXFzO66ok31
	 ALwahNABIcF60P3DyFUsS/GPzOtxF9yvxlROTkovJT2GHxJ6BOQX8ZChvdF2/lSGz1
	 zscR82sK9YLXjUM2h9V4h+bEO25uxJJZHgV5KRjLW1qNEZOnC8T1nPuatDopiD9k9E
	 uQPG7Ic89SPTnWeYdnxHcVxgPYvSJj5PNYOjgC4gqOAYtdEu3WgGcHZ7MumnnxQ60l
	 /7b03WtIQ5VzQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1bXIdnW5-5wG; Thu,  1 Feb 2024 12:24:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CD3674011C;
	Thu,  1 Feb 2024 12:24:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD3674011C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CB89B1BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:23:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A48DC83D5E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:23:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A48DC83D5E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V9G0Zt9CVGJ6 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 12:23:58 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F228581951
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:23:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F228581951
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="3746979"
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; 
   d="scan'208";a="3746979"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 04:23:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; 
   d="scan'208";a="4499098"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa004.jf.intel.com with ESMTP; 01 Feb 2024 04:23:52 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu,  1 Feb 2024 13:22:00 +0100
Message-ID: <20240201122216.2634007-6-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706790239; x=1738326239;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HprukPdQXTcNr0Y7BiRuIS1YVLmvP2/8dsePu0XWy8Q=;
 b=lrMgA58TCVuiG2DjZgGBzZ1iXnB/niFxeMF7s3sS00n0Vw2uggMhpRCv
 rCap0P6/8lYvRDhYPeOxKgdCdd8iqF8JtZECefFIS/4l3E0v+sT3gghjr
 XRxfz8eXGhiqwYFSSc//W3ByZkUyhr8QTpRIYSJ+xTqMy8gH1o+Mn6iJq
 qK/gPs/tJyAMGmnjOJn6VeklG/uZgOWI/pQHgl8+MHpjCxUjSYrie32cR
 F5mttJQKCXIJ2KsTENUxXxT4jz0Mu378+cNdCZfNXffIFVyjwBUTkJOtC
 RcjUT3SLwgjxM//mye77sJxK5PdQJoniQ8AWlecBcYq/BOWZ9mnhKoxoV
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lrMgA58T
Subject: [Intel-wired-lan] [PATCH net-next v5 05/21] bitops: make
 BYTES_TO_BITS() treewide-available
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

Avoid open-coding that simple expression each time by moving
BYTES_TO_BITS() from the probes code to <linux/bitops.h> to export
it to the rest of the kernel.
Simplify the macro while at it. `BITS_PER_LONG / sizeof(long)` always
equals to %BITS_PER_BYTE, regardless of the target architecture.
Do the same for the tools ecosystem as well (incl. its version of
bitops.h). The previous implementation had its implicit type of long,
while the new one is int, so adjust the format literal accordingly in
the perf code.

Suggested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/linux/bitops.h         | 2 ++
 tools/include/linux/bitops.h   | 2 ++
 kernel/trace/trace_probe.c     | 2 --
 tools/perf/util/probe-finder.c | 4 +---
 4 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/include/linux/bitops.h b/include/linux/bitops.h
index f7f5a783da2a..e0cd09eb91cd 100644
--- a/include/linux/bitops.h
+++ b/include/linux/bitops.h
@@ -21,6 +21,8 @@
 #define BITS_TO_U32(nr)		__KERNEL_DIV_ROUND_UP(nr, BITS_PER_TYPE(u32))
 #define BITS_TO_BYTES(nr)	__KERNEL_DIV_ROUND_UP(nr, BITS_PER_TYPE(char))
 
+#define BYTES_TO_BITS(nb)	((nb) * BITS_PER_BYTE)
+
 extern unsigned int __sw_hweight8(unsigned int w);
 extern unsigned int __sw_hweight16(unsigned int w);
 extern unsigned int __sw_hweight32(unsigned int w);
diff --git a/tools/include/linux/bitops.h b/tools/include/linux/bitops.h
index f18683b95ea6..bc6600466e7b 100644
--- a/tools/include/linux/bitops.h
+++ b/tools/include/linux/bitops.h
@@ -20,6 +20,8 @@
 #define BITS_TO_U32(nr)		DIV_ROUND_UP(nr, BITS_PER_TYPE(u32))
 #define BITS_TO_BYTES(nr)	DIV_ROUND_UP(nr, BITS_PER_TYPE(char))
 
+#define BYTES_TO_BITS(nb)	((nb) * BITS_PER_BYTE)
+
 extern unsigned int __sw_hweight8(unsigned int w);
 extern unsigned int __sw_hweight16(unsigned int w);
 extern unsigned int __sw_hweight32(unsigned int w);
diff --git a/kernel/trace/trace_probe.c b/kernel/trace/trace_probe.c
index 4dc74d73fc1d..2b743c1e37db 100644
--- a/kernel/trace/trace_probe.c
+++ b/kernel/trace/trace_probe.c
@@ -1053,8 +1053,6 @@ parse_probe_arg(char *arg, const struct fetch_type *type,
 	return ret;
 }
 
-#define BYTES_TO_BITS(nb)	((BITS_PER_LONG * (nb)) / sizeof(long))
-
 /* Bitfield type needs to be parsed into a fetch function */
 static int __parse_bitfield_probe_arg(const char *bf,
 				      const struct fetch_type *t,
diff --git a/tools/perf/util/probe-finder.c b/tools/perf/util/probe-finder.c
index c8923375e30d..630e16c54ed5 100644
--- a/tools/perf/util/probe-finder.c
+++ b/tools/perf/util/probe-finder.c
@@ -186,8 +186,6 @@ static int convert_variable_location(Dwarf_Die *vr_die, Dwarf_Addr addr,
 	return ret2;
 }
 
-#define BYTES_TO_BITS(nb)	((nb) * BITS_PER_LONG / sizeof(long))
-
 static int convert_variable_type(Dwarf_Die *vr_die,
 				 struct probe_trace_arg *tvar,
 				 const char *cast, bool user_access)
@@ -217,7 +215,7 @@ static int convert_variable_type(Dwarf_Die *vr_die,
 		total = dwarf_bytesize(vr_die);
 		if (boffs < 0 || total < 0)
 			return -ENOENT;
-		ret = snprintf(buf, 16, "b%d@%d/%zd", bsize, boffs,
+		ret = snprintf(buf, 16, "b%d@%d/%d", bsize, boffs,
 				BYTES_TO_BITS(total));
 		goto formatted;
 	}
-- 
2.43.0

