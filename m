Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C4688E8DA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 16:25:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4435382061;
	Wed, 27 Mar 2024 15:25:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YeDFlL9ro7KF; Wed, 27 Mar 2024 15:25:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 54F9E8208C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711553133;
	bh=4fMzrLwqHUy6QI33RrEDw9KlVZZqoQ0ix77eXi18aUM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=S56PVbhrF16qOwx51xeUUDUo2wPW5mpOYdvpgswisy8twwyOOmhMjpJzoATn4oTv0
	 u0m+yNJcs01xjl0pmuJydSptU9EsUcdqxmslz5jpby9NOBFICcRdCSBjngjlG94+1/
	 sxLUfFQOSK30w6U+CHTWeUvQ6qFL3BEcvqhinCtzQ7w3bbs6uOszNSWmNha5+as1LE
	 5FbjjhfK48LtPzSVLFYnaUrCFINKsISgZby86FMED6X4kI0xugpRwY2m98m8qltPSw
	 O7gRL/u0DlTqt2kM20ELfxlQVoCFQJbE1rZoLqutXe729aKVTL6zsoPK6z7u25s7xF
	 EpCOIL5UCVckQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 54F9E8208C;
	Wed, 27 Mar 2024 15:25:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 949E71BF418
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 15:25:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8B8BD605D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 15:25:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AeDpSDHB2fSG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 15:25:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 898D16061F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 898D16061F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 898D16061F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 15:25:28 +0000 (UTC)
X-CSE-ConnectionGUID: 8wCqY1HATrS5/WfXY/rKbg==
X-CSE-MsgGUID: A84+7NCFR0OzIoBxZol7GA==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6518264"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="6518264"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 08:25:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="16414381"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa008.fm.intel.com with ESMTP; 27 Mar 2024 08:25:25 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Wed, 27 Mar 2024 16:23:54 +0100
Message-ID: <20240327152358.2368467-18-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240327152358.2368467-1-aleksander.lobakin@intel.com>
References: <20240327152358.2368467-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711553128; x=1743089128;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XijAiJr8ED45Yq86XEpAzxGAIQnSHo95M8Ili6sTQNI=;
 b=FBJiziguaDb4L4ZPiuoua1JoksSQDDxl++jv4OnPWI9BYOFkNBk/TtGQ
 Cz+US6kYtIymc7ynBaLcl1PYt1kXVKuuvu+cdJaHxsv+1jaUTG+YtPV/R
 sV7oFpIjth7nuYC1sYGaMFF2Y/+sjdTdXJX/QQZvpIrOpPDOmkJT4H5uC
 tv8bv7hNr7fPO0fZc9vMAz2ICEIddH/xCcZO1Rwvu43xFJISN+6RhsJ1n
 yeaddsX4kyxlj+iV2PaJFZqNduKgm1gLQda1wDkODoXp2rcB3XskYXsh6
 Ba7wuZlVKZRn4aIPztMWu4IaWs1iPSbQK1r46jIwZ1GIUJp2lZg9HgcwF
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FBJizigu
Subject: [Intel-wired-lan] [PATCH net-next v6 17/21] net: net_test: add
 tests for IP tunnel flags conversion helpers
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
 Alexander Potapenko <glider@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Now that there are helpers for converting IP tunnel flags between the
old __be16 format and the bitmap format, make sure they work as expected
by adding a couple of tests to the networking testing suite. The helpers
are all inline, so no dependencies on the related CONFIG_* (or a
standalone module) are needed.

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
 net/core/Makefile                   |   2 +-
 net/core/{gso_test.c => net_test.c} | 132 ++++++++++++++++++++++++++--
 2 files changed, 125 insertions(+), 9 deletions(-)
 rename net/core/{gso_test.c => net_test.c} (67%)

diff --git a/net/core/Makefile b/net/core/Makefile
index 6e6548011fae..21d6fbc7e884 100644
--- a/net/core/Makefile
+++ b/net/core/Makefile
@@ -41,4 +41,4 @@ obj-$(CONFIG_NET_SOCK_MSG) += skmsg.o
 obj-$(CONFIG_BPF_SYSCALL) += sock_map.o
 obj-$(CONFIG_BPF_SYSCALL) += bpf_sk_storage.o
 obj-$(CONFIG_OF)	+= of_net.o
-obj-$(CONFIG_NET_TEST) += gso_test.o
+obj-$(CONFIG_NET_TEST) += net_test.o
diff --git a/net/core/gso_test.c b/net/core/net_test.c
similarity index 67%
rename from net/core/gso_test.c
rename to net/core/net_test.c
index 358c44680d91..30062b9621e4 100644
--- a/net/core/gso_test.c
+++ b/net/core/net_test.c
@@ -1,6 +1,9 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 
 #include <kunit/test.h>
+
+/* GSO */
+
 #include <linux/skbuff.h>
 
 static const char hdr[] = "abcdefgh";
@@ -258,17 +261,130 @@ static void gso_test_func(struct kunit *test)
 	consume_skb(skb);
 }
 
-static struct kunit_case gso_test_cases[] = {
-	KUNIT_CASE_PARAM(gso_test_func, gso_test_gen_params),
-	{}
+/* IP tunnel flags */
+
+#include <net/ip_tunnels.h>
+
+struct ip_tunnel_flags_test {
+	const char	*name;
+
+	const u16	*src_bits;
+	const u16	*exp_bits;
+	u8		src_num;
+	u8		exp_num;
+
+	__be16		exp_val;
+	bool		exp_comp;
+};
+
+#define IP_TUNNEL_FLAGS_TEST(n, src, comp, eval, exp) {	\
+	.name		= (n),				\
+	.src_bits	= (src),			\
+	.src_num	= ARRAY_SIZE(src),		\
+	.exp_comp	= (comp),			\
+	.exp_val	= (eval),			\
+	.exp_bits	= (exp),			\
+	.exp_num	= ARRAY_SIZE(exp),		\
+}
+
+/* These are __be16-compatible and can be compared as is */
+static const u16 ip_tunnel_flags_1[] = {
+	IP_TUNNEL_KEY_BIT,
+	IP_TUNNEL_STRICT_BIT,
+	IP_TUNNEL_ERSPAN_OPT_BIT,
+};
+
+/* Due to the previous flags design limitation, setting either
+ * ``IP_TUNNEL_CSUM_BIT`` (on Big Endian) or ``IP_TUNNEL_DONT_FRAGMENT_BIT``
+ * (on Little) also sets VTI/ISATAP bit. In the bitmap implementation, they
+ * correspond to ``BIT(16)``, which is bigger than ``U16_MAX``, but still is
+ * backward-compatible.
+ */
+#ifdef __LITTLE_ENDIAN
+#define IP_TUNNEL_CONFLICT_BIT	IP_TUNNEL_DONT_FRAGMENT_BIT
+#else
+#define IP_TUNNEL_CONFLICT_BIT	IP_TUNNEL_CSUM_BIT
+#endif
+
+static const u16 ip_tunnel_flags_2_src[] = {
+	IP_TUNNEL_CONFLICT_BIT,
+};
+
+static const u16 ip_tunnel_flags_2_exp[] = {
+	IP_TUNNEL_CONFLICT_BIT,
+	IP_TUNNEL_SIT_ISATAP_BIT,
 };
 
-static struct kunit_suite gso_test_suite = {
-	.name = "net_core_gso",
-	.test_cases = gso_test_cases,
+/* Bits 17 and higher are not compatible with __be16 flags */
+static const u16 ip_tunnel_flags_3_src[] = {
+	IP_TUNNEL_VXLAN_OPT_BIT,
+	17,
+	18,
+	20,
 };
 
-kunit_test_suite(gso_test_suite);
+static const u16 ip_tunnel_flags_3_exp[] = {
+	IP_TUNNEL_VXLAN_OPT_BIT,
+};
+
+static const struct ip_tunnel_flags_test ip_tunnel_flags_test[] = {
+	IP_TUNNEL_FLAGS_TEST("compat", ip_tunnel_flags_1, true,
+			     cpu_to_be16(BIT(IP_TUNNEL_KEY_BIT) |
+					 BIT(IP_TUNNEL_STRICT_BIT) |
+					 BIT(IP_TUNNEL_ERSPAN_OPT_BIT)),
+			     ip_tunnel_flags_1),
+	IP_TUNNEL_FLAGS_TEST("conflict", ip_tunnel_flags_2_src, true,
+			     VTI_ISVTI, ip_tunnel_flags_2_exp),
+	IP_TUNNEL_FLAGS_TEST("new", ip_tunnel_flags_3_src,
+			     /* This must be set to ``false`` once
+			      * ``__IP_TUNNEL_FLAG_NUM`` goes above 17.
+			      */
+			     true, cpu_to_be16(BIT(IP_TUNNEL_VXLAN_OPT_BIT)),
+			     ip_tunnel_flags_3_exp),
+};
+
+static void
+ip_tunnel_flags_test_case_to_desc(const struct ip_tunnel_flags_test *t,
+				  char *desc)
+{
+	strscpy(desc, t->name, KUNIT_PARAM_DESC_SIZE);
+}
+KUNIT_ARRAY_PARAM(ip_tunnel_flags_test, ip_tunnel_flags_test,
+		  ip_tunnel_flags_test_case_to_desc);
+
+static void ip_tunnel_flags_test_run(struct kunit *test)
+{
+	const struct ip_tunnel_flags_test *t = test->param_value;
+	IP_TUNNEL_DECLARE_FLAGS(src) = { };
+	IP_TUNNEL_DECLARE_FLAGS(exp) = { };
+	IP_TUNNEL_DECLARE_FLAGS(out);
+
+	for (u32 j = 0; j < t->src_num; j++)
+		__set_bit(t->src_bits[j], src);
+	for (u32 j = 0; j < t->exp_num; j++)
+		__set_bit(t->exp_bits[j], exp);
+
+	KUNIT_ASSERT_EQ(test, t->exp_comp,
+			ip_tunnel_flags_is_be16_compat(src));
+	KUNIT_ASSERT_EQ(test, (__force u16)t->exp_val,
+			(__force u16)ip_tunnel_flags_to_be16(src));
+
+	ip_tunnel_flags_from_be16(out, t->exp_val);
+	KUNIT_ASSERT_TRUE(test, __ipt_flag_op(bitmap_equal, exp, out));
+}
+
+static struct kunit_case net_test_cases[] = {
+	KUNIT_CASE_PARAM(gso_test_func, gso_test_gen_params),
+	KUNIT_CASE_PARAM(ip_tunnel_flags_test_run,
+			 ip_tunnel_flags_test_gen_params),
+	{ },
+};
+
+static struct kunit_suite net_test_suite = {
+	.name		= "net_core",
+	.test_cases	= net_test_cases,
+};
+kunit_test_suite(net_test_suite);
 
+MODULE_DESCRIPTION("KUnit tests for networking core");
 MODULE_LICENSE("GPL");
-MODULE_DESCRIPTION("KUnit tests for segmentation offload");
-- 
2.44.0

