Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0572CEC35
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Dec 2020 11:30:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 03FE22E2F2;
	Fri,  4 Dec 2020 10:30:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o7hSc46oJ31q; Fri,  4 Dec 2020 10:30:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E140F2E2E9;
	Fri,  4 Dec 2020 10:30:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4B9551BF391
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 10:30:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 430DB8788E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 10:30:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4AtuxZRIGsl0 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Dec 2020 10:30:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E025A87849
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 10:30:08 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id 142so5980179ljj.10
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Dec 2020 02:30:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Uvlu8DVmiHM5LldiM3Sj+vrND7t9AuD6a1TdugQe0Ps=;
 b=E0ImlY99mCDfxsnPflJXi/cbWygBLBAM1yaa2KUG3MVLBPBohyqayrU5z/mhL6zPTl
 uhR/zcyVlioxpXqzWsRcoYO5oXSn16+3Xnkjg0jIV70KnCtXM3UgBob8hM5klIh87wxP
 xN5NrpC+SpiIUuEUcDAKQ/qvgxIUlp8OJGb5vJmlOGNhA5tZpOgP7AwTc4XOXUFgMnMJ
 Ts6a6nTwN12S6f4IGvO3VnMfCbe1qzIxHDN4bgynTwSc4y2OHCRmjny6rigIU+qSO3g/
 Uq57ETHCJIXIeeP2ja5j+2P4FVx3dYNTVTPEIMQQVyYqApDiTEtPK5/nJfwCxfXrYQ6f
 nrzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Uvlu8DVmiHM5LldiM3Sj+vrND7t9AuD6a1TdugQe0Ps=;
 b=KoeWMJ6LcbXEfSoqk012jWtmXh92Ei9pXtSZUeACG4rbu6lKy0IdtfxyTrCQ189ojQ
 W9bYY+G3nVXHjhdteO7FEiBQNGctuz7Ig70Y2SAGJzT0SEY19xuBIfsSPJxZE6LogEV1
 LF9SXy/ISiyjzTLpBLf2XRV4Hv0l+7ftmoZsxECXRklB8GbhH+rIi0N3L+DzMOuOJAJl
 vFEBKsDQSfp9M/aMg2/Lj+fmlp+Xj4VSQU69BvrHtc7TZiWdiCeJTLk24Zs/t84dfOqB
 MwIPnZTfTHqKY91ExvNJUN+C04ZdYcTfrmPdUdKJ15BtdWj5xqdnrQUjmnKRQbmxGQrK
 79EQ==
X-Gm-Message-State: AOAM5307Vjd4bPYv+4w7AnMp/sZDcKqMRmRlget+Bykz34oJup8fsGIv
 HTgAZ4mfFyizFbXxulREm5M=
X-Google-Smtp-Source: ABdhPJwE9keJgFWAavozwghMGSbG70PKlHN+4SLFpuQS41hEbwbptQ2DFJnf7iqWWTjKxFwCQoaeCw==
X-Received: by 2002:a2e:9c51:: with SMTP id t17mr2971756ljj.302.1607077807064; 
 Fri, 04 Dec 2020 02:30:07 -0800 (PST)
Received: from localhost.localdomain (87-205-71-93.adsl.inetia.pl.
 [87.205.71.93])
 by smtp.gmail.com with ESMTPSA id d9sm62738lfj.228.2020.12.04.02.30.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Dec 2020 02:30:06 -0800 (PST)
From: alardam@gmail.com
X-Google-Original-From: marekx.majtyka@intel.com
To: magnus.karlsson@intel.com, bjorn.topel@intel.com,
 andrii.nakryiko@gmail.com, kuba@kernel.org, ast@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, davem@davemloft.net,
 john.fastabend@gmail.com, hawk@kernel.org, toke@redhat.com
Date: Fri,  4 Dec 2020 11:29:01 +0100
Message-Id: <20201204102901.109709-6-marekx.majtyka@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201204102901.109709-1-marekx.majtyka@intel.com>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 bpf 5/5] ethtool: provide xdp info with
 XDP_PROPERTIES_GET
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
Cc: maciejromanfijalkowski@gmail.com, Marek Majtyka <marekx.majtyka@intel.com>,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com,
 bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Marek Majtyka <marekx.majtyka@intel.com>

Implement XDP_PROPERTIES_GET request to get network device
information about supported xdp functionalities.

Signed-off-by: Marek Majtyka <marekx.majtyka@intel.com>
---
 include/uapi/linux/ethtool_netlink.h | 14 +++++
 net/ethtool/Makefile                 |  2 +-
 net/ethtool/netlink.c                | 38 +++++++++-----
 net/ethtool/netlink.h                |  2 +
 net/ethtool/xdp.c                    | 76 ++++++++++++++++++++++++++++
 5 files changed, 117 insertions(+), 15 deletions(-)
 create mode 100644 net/ethtool/xdp.c

diff --git a/include/uapi/linux/ethtool_netlink.h b/include/uapi/linux/ethtool_netlink.h
index e2bf36e6964b..764d6edc2862 100644
--- a/include/uapi/linux/ethtool_netlink.h
+++ b/include/uapi/linux/ethtool_netlink.h
@@ -42,6 +42,7 @@ enum {
 	ETHTOOL_MSG_CABLE_TEST_ACT,
 	ETHTOOL_MSG_CABLE_TEST_TDR_ACT,
 	ETHTOOL_MSG_TUNNEL_INFO_GET,
+	ETHTOOL_MSG_XDP_PROPERTIES_GET,
 
 	/* add new constants above here */
 	__ETHTOOL_MSG_USER_CNT,
@@ -80,6 +81,7 @@ enum {
 	ETHTOOL_MSG_CABLE_TEST_NTF,
 	ETHTOOL_MSG_CABLE_TEST_TDR_NTF,
 	ETHTOOL_MSG_TUNNEL_INFO_GET_REPLY,
+	ETHTOOL_MSG_XDP_PROPERTIES_GET_REPLY,
 
 	/* add new constants above here */
 	__ETHTOOL_MSG_KERNEL_CNT,
@@ -628,6 +630,18 @@ enum {
 	ETHTOOL_A_TUNNEL_INFO_MAX = (__ETHTOOL_A_TUNNEL_INFO_CNT - 1)
 };
 
+/* XDP_PROPERTIES */
+
+enum {
+	ETHTOOL_A_XDP_PROPERTIES_UNSPEC,
+	ETHTOOL_A_XDP_PROPERTIES_HEADER,			/* nest - _A_HEADER_* */
+	ETHTOOL_A_XDP_PROPERTIES_DATA,				/* bitset */
+
+	/* add new constants above here */
+	__ETHTOOL_A_XDP_PROPERTIES_CNT,
+	ETHTOOL_A_XDP_PROPERTIES_MAX = __ETHTOOL_A_XDP_PROPERTIES_CNT - 1
+};
+
 /* generic netlink info */
 #define ETHTOOL_GENL_NAME "ethtool"
 #define ETHTOOL_GENL_VERSION 1
diff --git a/net/ethtool/Makefile b/net/ethtool/Makefile
index 7a849ff22dad..23d49eb07a7f 100644
--- a/net/ethtool/Makefile
+++ b/net/ethtool/Makefile
@@ -7,4 +7,4 @@ obj-$(CONFIG_ETHTOOL_NETLINK)	+= ethtool_nl.o
 ethtool_nl-y	:= netlink.o bitset.o strset.o linkinfo.o linkmodes.o \
 		   linkstate.o debug.o wol.o features.o privflags.o rings.o \
 		   channels.o coalesce.o pause.o eee.o tsinfo.o cabletest.o \
-		   tunnels.o
+		   tunnels.o xdp.o
diff --git a/net/ethtool/netlink.c b/net/ethtool/netlink.c
index 50d3c8896f91..06c943c78a11 100644
--- a/net/ethtool/netlink.c
+++ b/net/ethtool/netlink.c
@@ -231,20 +231,21 @@ struct ethnl_dump_ctx {
 
 static const struct ethnl_request_ops *
 ethnl_default_requests[__ETHTOOL_MSG_USER_CNT] = {
-	[ETHTOOL_MSG_STRSET_GET]	= &ethnl_strset_request_ops,
-	[ETHTOOL_MSG_LINKINFO_GET]	= &ethnl_linkinfo_request_ops,
-	[ETHTOOL_MSG_LINKMODES_GET]	= &ethnl_linkmodes_request_ops,
-	[ETHTOOL_MSG_LINKSTATE_GET]	= &ethnl_linkstate_request_ops,
-	[ETHTOOL_MSG_DEBUG_GET]		= &ethnl_debug_request_ops,
-	[ETHTOOL_MSG_WOL_GET]		= &ethnl_wol_request_ops,
-	[ETHTOOL_MSG_FEATURES_GET]	= &ethnl_features_request_ops,
-	[ETHTOOL_MSG_PRIVFLAGS_GET]	= &ethnl_privflags_request_ops,
-	[ETHTOOL_MSG_RINGS_GET]		= &ethnl_rings_request_ops,
-	[ETHTOOL_MSG_CHANNELS_GET]	= &ethnl_channels_request_ops,
-	[ETHTOOL_MSG_COALESCE_GET]	= &ethnl_coalesce_request_ops,
-	[ETHTOOL_MSG_PAUSE_GET]		= &ethnl_pause_request_ops,
-	[ETHTOOL_MSG_EEE_GET]		= &ethnl_eee_request_ops,
-	[ETHTOOL_MSG_TSINFO_GET]	= &ethnl_tsinfo_request_ops,
+	[ETHTOOL_MSG_STRSET_GET]		= &ethnl_strset_request_ops,
+	[ETHTOOL_MSG_LINKINFO_GET]		= &ethnl_linkinfo_request_ops,
+	[ETHTOOL_MSG_LINKMODES_GET]		= &ethnl_linkmodes_request_ops,
+	[ETHTOOL_MSG_LINKSTATE_GET]		= &ethnl_linkstate_request_ops,
+	[ETHTOOL_MSG_DEBUG_GET]			= &ethnl_debug_request_ops,
+	[ETHTOOL_MSG_WOL_GET]			= &ethnl_wol_request_ops,
+	[ETHTOOL_MSG_FEATURES_GET]		= &ethnl_features_request_ops,
+	[ETHTOOL_MSG_PRIVFLAGS_GET]		= &ethnl_privflags_request_ops,
+	[ETHTOOL_MSG_RINGS_GET]			= &ethnl_rings_request_ops,
+	[ETHTOOL_MSG_CHANNELS_GET]		= &ethnl_channels_request_ops,
+	[ETHTOOL_MSG_COALESCE_GET]		= &ethnl_coalesce_request_ops,
+	[ETHTOOL_MSG_PAUSE_GET]			= &ethnl_pause_request_ops,
+	[ETHTOOL_MSG_EEE_GET]			= &ethnl_eee_request_ops,
+	[ETHTOOL_MSG_TSINFO_GET]		= &ethnl_tsinfo_request_ops,
+	[ETHTOOL_MSG_XDP_PROPERTIES_GET]	= &ethnl_xdp_request_ops,
 };
 
 static struct ethnl_dump_ctx *ethnl_dump_context(struct netlink_callback *cb)
@@ -912,6 +913,15 @@ static const struct genl_ops ethtool_genl_ops[] = {
 		.policy = ethnl_tunnel_info_get_policy,
 		.maxattr = ARRAY_SIZE(ethnl_tunnel_info_get_policy) - 1,
 	},
+	{
+		.cmd	= ETHTOOL_MSG_XDP_PROPERTIES_GET,
+		.doit	= ethnl_default_doit,
+		.start	= ethnl_default_start,
+		.dumpit	= ethnl_default_dumpit,
+		.done	= ethnl_default_done,
+		.policy = ethnl_properties_get_policy,
+		.maxattr = ARRAY_SIZE(ethnl_properties_get_policy) - 1,
+	},
 };
 
 static const struct genl_multicast_group ethtool_nl_mcgrps[] = {
diff --git a/net/ethtool/netlink.h b/net/ethtool/netlink.h
index d8efec516d86..c5875e97b707 100644
--- a/net/ethtool/netlink.h
+++ b/net/ethtool/netlink.h
@@ -344,6 +344,7 @@ extern const struct ethnl_request_ops ethnl_coalesce_request_ops;
 extern const struct ethnl_request_ops ethnl_pause_request_ops;
 extern const struct ethnl_request_ops ethnl_eee_request_ops;
 extern const struct ethnl_request_ops ethnl_tsinfo_request_ops;
+extern const struct ethnl_request_ops ethnl_xdp_request_ops;
 
 extern const struct nla_policy ethnl_header_policy[ETHTOOL_A_HEADER_FLAGS + 1];
 extern const struct nla_policy ethnl_header_policy_stats[ETHTOOL_A_HEADER_FLAGS + 1];
@@ -375,6 +376,7 @@ extern const struct nla_policy ethnl_tsinfo_get_policy[ETHTOOL_A_TSINFO_HEADER +
 extern const struct nla_policy ethnl_cable_test_act_policy[ETHTOOL_A_CABLE_TEST_HEADER + 1];
 extern const struct nla_policy ethnl_cable_test_tdr_act_policy[ETHTOOL_A_CABLE_TEST_TDR_CFG + 1];
 extern const struct nla_policy ethnl_tunnel_info_get_policy[ETHTOOL_A_TUNNEL_INFO_HEADER + 1];
+extern const struct nla_policy ethnl_properties_get_policy[ETHTOOL_A_XDP_PROPERTIES_HEADER + 1];
 
 int ethnl_set_linkinfo(struct sk_buff *skb, struct genl_info *info);
 int ethnl_set_linkmodes(struct sk_buff *skb, struct genl_info *info);
diff --git a/net/ethtool/xdp.c b/net/ethtool/xdp.c
new file mode 100644
index 000000000000..fc0e87b6ed80
--- /dev/null
+++ b/net/ethtool/xdp.c
@@ -0,0 +1,76 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include "netlink.h"
+#include "common.h"
+#include "bitset.h"
+
+struct properties_req_info {
+	struct ethnl_req_info	base;
+};
+
+struct properties_reply_data {
+	struct ethnl_reply_data	base;
+	u32			properties[ETHTOOL_XDP_PROPERTIES_WORDS];
+};
+
+const struct nla_policy ethnl_properties_get_policy[] = {
+	[ETHTOOL_A_XDP_PROPERTIES_HEADER]	=
+		NLA_POLICY_NESTED(ethnl_header_policy),
+};
+
+#define PROPERTIES_REPDATA(__reply_base) \
+	container_of(__reply_base, struct properties_reply_data, base)
+
+static void ethnl_properties_to_bitmap32(u32 *dest, xdp_properties_t src)
+{
+	unsigned int i;
+
+	for (i = 0; i < ETHTOOL_XDP_PROPERTIES_WORDS; i++)
+		dest[i] = src >> (32 * i);
+}
+
+static int properties_prepare_data(const struct ethnl_req_info *req_base,
+				   struct ethnl_reply_data *reply_base,
+				   struct genl_info *info)
+{
+	struct properties_reply_data *data = PROPERTIES_REPDATA(reply_base);
+	struct net_device *dev = reply_base->dev;
+
+	ethnl_properties_to_bitmap32(data->properties, dev->xdp_properties);
+
+	return 0;
+}
+
+static int properties_reply_size(const struct ethnl_req_info *req_base,
+				 const struct ethnl_reply_data *reply_base)
+{
+	const struct properties_reply_data *data = PROPERTIES_REPDATA(reply_base);
+	bool compact = req_base->flags & ETHTOOL_FLAG_COMPACT_BITSETS;
+
+	return ethnl_bitset32_size(data->properties, NULL, XDP_PROPERTIES_COUNT,
+				   xdp_properties_strings, compact);
+}
+
+static int properties_fill_reply(struct sk_buff *skb,
+				 const struct ethnl_req_info *req_base,
+				 const struct ethnl_reply_data *reply_base)
+{
+	const struct properties_reply_data *data = PROPERTIES_REPDATA(reply_base);
+	bool compact = req_base->flags & ETHTOOL_FLAG_COMPACT_BITSETS;
+
+	return ethnl_put_bitset32(skb, ETHTOOL_A_XDP_PROPERTIES_DATA, data->properties,
+				  NULL, XDP_PROPERTIES_COUNT,
+				  xdp_properties_strings, compact);
+}
+
+const struct ethnl_request_ops ethnl_xdp_request_ops = {
+	.request_cmd		= ETHTOOL_MSG_XDP_PROPERTIES_GET,
+	.reply_cmd		= ETHTOOL_MSG_XDP_PROPERTIES_GET_REPLY,
+	.hdr_attr		= ETHTOOL_A_XDP_PROPERTIES_HEADER,
+	.req_info_size		= sizeof(struct properties_req_info),
+	.reply_data_size	= sizeof(struct properties_reply_data),
+
+	.prepare_data		= properties_prepare_data,
+	.reply_size		= properties_reply_size,
+	.fill_reply		= properties_fill_reply,
+};
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
