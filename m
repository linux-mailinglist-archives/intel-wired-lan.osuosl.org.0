Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC77808DC6
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 17:48:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 089C783D1D;
	Thu,  7 Dec 2023 16:48:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 089C783D1D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701967734;
	bh=093WBrLY4EC9BIxyy4XH0arJqr6hdppvkLOj/C/ej+w=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zj8P0R4s1GE/bbJG/Lwy6i1qI4xpD9Euw+nzwkoo2XmG8NPTWQbN3mO94ceOq9/aX
	 vaR4RWd0inFMAnFP1Ckr8XqVAXiI3NK4t9p9AkQYevJ1GSKT2Lk91FCOBISxGmK2F3
	 fYsBJBKTWIGXIebskZo0R3R2QVhZwV/Iy73MOPc+6Cz0y+iI7WpuOyUrnsJgO9g287
	 01UnwKscrBMG9+hfBoeRIQ1+kONJ/8MWAqpqLh/hA0WV7LUinKgtuWW0jM2BCB8pgh
	 V9Iblb+zAqg0g8MSesyqTI/Q9uUfswCucE6oZDLL8MxwHdDwMsGdHg/A7Uq9GVpX/N
	 MR3WzrHb3ZyoA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JAeSrJUBoaWr; Thu,  7 Dec 2023 16:48:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BD09E83CED;
	Thu,  7 Dec 2023 16:48:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD09E83CED
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 30F7E1BF5B3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 16:48:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 174B0420F6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 16:48:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 174B0420F6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EB_XZIWgjNQ1 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 16:48:40 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5747B4210F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 16:48:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5747B4210F
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="373759551"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="373759551"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 08:48:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="775477346"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="775477346"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga007.fm.intel.com with ESMTP; 07 Dec 2023 08:48:36 -0800
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 887C035421;
 Thu,  7 Dec 2023 16:48:34 +0000 (GMT)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 Dec 2023 17:49:07 +0100
Message-ID: <20231207164911.14330-4-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231207164911.14330-1-marcin.szycik@linux.intel.com>
References: <20231207164911.14330-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701967720; x=1733503720;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Tcfof3p2SdMyC/I9/NODJl/Zso9o6Drv+FFhug0NgsM=;
 b=VnWU6fwF9xAsC06oJeOf1KU9G0+sfYGNzEN3jyzjkkFtCb+SGEFq3136
 k179nT5jAVu9wP7ldRm76Dic974ba164SH4rw/PR4A/+yN33yvZ/eaILi
 TOSw6i0ySDDdSlBnif86+LbtS+3iYi1odUcqM+CAIzV4jJc2SrKEAq0xB
 ws2/yA570iceVXbWpI2hZLW5EcmKZlzIxbyqsLWVssJcO2PO2QNGEtDmp
 qTkI1eZr6R9QGHrKPRaY7tpVVF6RLRrLFlJA3QuvFStDMGzc82pnKfubK
 IXyuU11yJNCSBbHcucN5mJKNNeXEaRnRnjjkCjg01f7ebJSAh22Buqd4U
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VnWU6fwF
Subject: [Intel-wired-lan] [PATCH iwl-next v4 3/7] lib/bitmap: add tests for
 IP tunnel flags conversion helpers
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
Cc: jiri@resnulli.us, andy@kernel.org, wojciech.drewek@intel.com,
 netdev@vger.kernel.org, idosch@nvidia.com, jesse.brandeburg@intel.com,
 aleksander.lobakin@intel.com, Marcin Szycik <marcin.szycik@linux.intel.com>,
 michal.swiatkowski@linux.intel.com, simon.horman@corigine.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Lobakin <aleksander.lobakin@intel.com>

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
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
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
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
