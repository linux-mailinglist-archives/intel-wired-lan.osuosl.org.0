Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F81F845779
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 13:25:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2847A4366B;
	Thu,  1 Feb 2024 12:25:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2847A4366B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706790310;
	bh=vez3iEbUjml7sKIB+YP3HQxWKvPju6FEy/gDopCf2TQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dG7QxjYo6U/rNFC+OjAqFzycvXvsOG0JbELWSioFuaZ+TvAzNCYY1Aq8xsMrRVu4A
	 3tRClREk/hkFtRmD1qNwpS/QnBlrOMeQ1L9yRCDjj3sNh3vosoASkHAZ0zSxVOGZAb
	 MhmJ+oBCmI0b8W3w7AVewDBsi1E+lWOhk1ZhJFdYZ/yfxo9HVQjAyvKBj8HA5jD0k6
	 T8eoQ4m1VM8aAomxKjVfkrIbnxwie4Y1RrIuYm8kX/Fx6To+AF99klUnc9ZlbYJUIb
	 79rwlczR3hMXpwUo7WbZE7imI5cgfgBmT3+KDXFy2QlH/zG7C6iSK4lBoVcjq4AdZy
	 BAZbI6Rv40Wfg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aNazuh8Q6i3t; Thu,  1 Feb 2024 12:25:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9A205403AC;
	Thu,  1 Feb 2024 12:25:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A205403AC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3B82E1BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:25:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 129CE42F00
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:25:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 129CE42F00
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l_WZg09ugHh2 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 12:25:01 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2161743675
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:25:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2161743675
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="3747189"
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; 
   d="scan'208";a="3747189"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 04:25:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; 
   d="scan'208";a="4499170"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa004.jf.intel.com with ESMTP; 01 Feb 2024 04:24:56 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu,  1 Feb 2024 13:22:12 +0100
Message-ID: <20240201122216.2634007-18-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706790302; x=1738326302;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tciizGYemdvBRZOCIgw7Jb9cIFJ+BUDzQuABjrAFCx8=;
 b=P7xPW30T7pn46dndW/IS2HTjbxD4S2/IRxeLvCidyKxdMj2wm/8McZE5
 6nk31UoVknHvqJWiFBaoShMTpeBi9Sn0h0Gi697onWE0EezkFhzvzujYz
 as1lw/OmYFYayYmn5HcptJI5sNrRATkzq36ZtKTrUq9MSij6QAMGK9j9L
 ClJfhoBvjHynAvVBpiLS8g2w/rv+CFOirvnC/lagJb6ZzVJRRcwHOIElW
 yeaGHcR7kefRDH9YPxEs2pUCFHQy3xmDJ2E7YX/JQQoOqom0bOId7jmMh
 cDlucZxfdTjxVvZQwsjcNP0OjXwyg6BPjyPXw2QiMQfy6r9ZhJp3W4JHh
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=P7xPW30T
Subject: [Intel-wired-lan] [PATCH net-next v5 17/21] lib/bitmap: add tests
 for IP tunnel flags conversion helpers
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

Now that there are helpers for converting IP tunnel flags between the
old __be16 format and the bitmap format, make sure they work as expected
by adding a couple of tests to the bitmap testing suite. The helpers are
all inline, so no dependencies on the related CONFIG_* (or a standalone
module) are needed.

Cover three possible cases:

1. No bits past BIT(15) are set, VTI/SIT bits are not set. This
   conversion is almost a direct assignment.
2. No bits past BIT(15) are set, but VTI/SIT bit is set. During the
   conversion, it must be transformed into BIT(16) in the bitmap,
   but still compatible with the __be16 format.
3. The bitmap has bits past BIT(15) set (not the VTI/SIT one). The
   result will be truncated.
   Note that currently __IP_TUNNEL_FLAG_NUM is 17 (incl. special),
   which means that the result of this case is currently
   semi-false-positive. When BIT(17) is finally here, it will be
   adjusted accordingly.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 lib/test_bitmap.c | 105 ++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 105 insertions(+)

diff --git a/lib/test_bitmap.c b/lib/test_bitmap.c
index 4ee1f8ceb51d..270afc0cba5c 100644
--- a/lib/test_bitmap.c
+++ b/lib/test_bitmap.c
@@ -14,6 +14,8 @@
 #include <linux/string.h>
 #include <linux/uaccess.h>
 
+#include <net/ip_tunnels.h>
+
 #include "../tools/testing/selftests/kselftest_module.h"
 
 #define EXP1_IN_BITS	(sizeof(exp1) * 8)
@@ -1409,6 +1411,108 @@ static void __init test_bitmap_write_perf(void)
 
 #undef TEST_BIT_LEN
 
+struct ip_tunnel_flags_test {
+	const u16	*src_bits;
+	const u16	*exp_bits;
+	u8		src_num;
+	u8		exp_num;
+	__be16		exp_val;
+	bool		exp_comp:1;
+};
+
+#define IP_TUNNEL_FLAGS_TEST(src, comp, eval, exp) {	\
+	.src_bits	= (src),			\
+	.src_num	= ARRAY_SIZE(src),		\
+	.exp_comp	= (comp),			\
+	.exp_val	= (eval),			\
+	.exp_bits	= (exp),			\
+	.exp_num	= ARRAY_SIZE(exp),		\
+}
+
+/* These are __be16-compatible and can be compared as is */
+static const u16 ip_tunnel_flags_1[] __initconst = {
+	IP_TUNNEL_KEY_BIT,
+	IP_TUNNEL_STRICT_BIT,
+	IP_TUNNEL_ERSPAN_OPT_BIT,
+};
+
+/*
+ * Due to the previous flags design limitation, setting either
+ * ``IP_TUNNEL_CSUM_BIT`` (on Big Endian) or ``IP_TUNNEL_DONT_FRAGMENT_BIT``
+ * (on Little) also sets VTI/ISATAP bit. In the bitmap implementation, they
+ * correspond to ``BIT(16)``, which is bigger than ``U16_MAX``, but still is
+ * backward-compatible.
+ */
+#ifdef __BIG_ENDIAN
+#define IP_TUNNEL_CONFLICT_BIT	IP_TUNNEL_CSUM_BIT
+#else
+#define IP_TUNNEL_CONFLICT_BIT	IP_TUNNEL_DONT_FRAGMENT_BIT
+#endif
+
+static const u16 ip_tunnel_flags_2_src[] __initconst = {
+	IP_TUNNEL_CONFLICT_BIT,
+};
+
+static const u16 ip_tunnel_flags_2_exp[] __initconst = {
+	IP_TUNNEL_CONFLICT_BIT,
+	IP_TUNNEL_SIT_ISATAP_BIT,
+};
+
+/* Bits 17 and higher are not compatible with __be16 flags */
+static const u16 ip_tunnel_flags_3_src[] __initconst = {
+	IP_TUNNEL_VXLAN_OPT_BIT,
+	17,
+	18,
+	20,
+};
+
+static const u16 ip_tunnel_flags_3_exp[] __initconst = {
+	IP_TUNNEL_VXLAN_OPT_BIT,
+};
+
+static const struct ip_tunnel_flags_test ip_tunnel_flags_test[] __initconst = {
+	IP_TUNNEL_FLAGS_TEST(ip_tunnel_flags_1, true,
+			     cpu_to_be16(BIT(IP_TUNNEL_KEY_BIT) |
+					 BIT(IP_TUNNEL_STRICT_BIT) |
+					 BIT(IP_TUNNEL_ERSPAN_OPT_BIT)),
+			     ip_tunnel_flags_1),
+	IP_TUNNEL_FLAGS_TEST(ip_tunnel_flags_2_src, true, VTI_ISVTI,
+			     ip_tunnel_flags_2_exp),
+	IP_TUNNEL_FLAGS_TEST(ip_tunnel_flags_3_src,
+			     /*
+			      * This must be set to ``false`` once
+			      * ``__IP_TUNNEL_FLAG_NUM`` goes above 17.
+			      */
+			     true,
+			     cpu_to_be16(BIT(IP_TUNNEL_VXLAN_OPT_BIT)),
+			     ip_tunnel_flags_3_exp),
+};
+
+static void __init test_ip_tunnel_flags(void)
+{
+	for (u32 i = 0; i < ARRAY_SIZE(ip_tunnel_flags_test); i++) {
+		typeof(*ip_tunnel_flags_test) *test = &ip_tunnel_flags_test[i];
+		IP_TUNNEL_DECLARE_FLAGS(src) = { };
+		IP_TUNNEL_DECLARE_FLAGS(exp) = { };
+		IP_TUNNEL_DECLARE_FLAGS(out);
+
+		for (u32 j = 0; j < test->src_num; j++)
+			__set_bit(test->src_bits[j], src);
+
+		for (u32 j = 0; j < test->exp_num; j++)
+			__set_bit(test->exp_bits[j], exp);
+
+		ip_tunnel_flags_from_be16(out, test->exp_val);
+
+		expect_eq_uint(test->exp_comp,
+			       ip_tunnel_flags_is_be16_compat(src));
+		expect_eq_uint((__force u16)test->exp_val,
+			       (__force u16)ip_tunnel_flags_to_be16(src));
+
+		__ipt_flag_op(expect_eq_bitmap, exp, out);
+	}
+}
+
 static void __init selftest(void)
 {
 	test_zero_clear();
@@ -1428,6 +1532,7 @@ static void __init selftest(void)
 	test_bitmap_read_write();
 	test_bitmap_read_perf();
 	test_bitmap_write_perf();
+	test_ip_tunnel_flags();
 
 	test_find_nth_bit();
 	test_for_each_set_bit();
-- 
2.43.0

