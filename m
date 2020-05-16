Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 357801D5DA5
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 03:30:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E0E7F890A9;
	Sat, 16 May 2020 01:30:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p1Cb8kH6JGwl; Sat, 16 May 2020 01:30:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9A1DA890B0;
	Sat, 16 May 2020 01:30:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9BD051BF861
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 01:30:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 949472284C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 01:30:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fycd0NZnXdoa for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 01:30:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id BA9EC2283A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 01:30:02 +0000 (UTC)
IronPort-SDR: U3tUHJxcctdWkrWHZjV1hHoKK1BhfEP5d3aEJv6QtdW8BhSCknKxIkX/JSp8OQX90AIh9qk2L0
 qWKzLksm598A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 18:30:02 -0700
IronPort-SDR: ubGvssz9qPtkmS1iGRCy0RUETkn5urebPSNU93/ZGaT2TN/5XwQP7LaHqQwbmxf5QVKgUjrM7O
 dK1DgPgRVOBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="307569152"
Received: from wkbertra-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.251.131.129])
 by FMSMGA003.fm.intel.com with ESMTP; 15 May 2020 18:30:01 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 18:29:46 -0700
Message-Id: <20200516012948.3173993-3-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200516012948.3173993-1-vinicius.gomes@intel.com>
References: <20200516012948.3173993-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue RFC 2/4] ethtool: Add support for
 configuring frame preemption via netlink
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
Cc: Jose.Abreu@synopsys.com, netdev@vger.kernel.org, po.liu@nxp.com,
 m-karicheri2@ti.com, vladimir.oltean@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ethtool is gaining support for using netlink as transport for its
messages, being an alternative to ioctl() calls.

Frame preemption, being new, makes a good target for being added to
the list of features that are also supported via the netlink
transport.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 include/uapi/linux/ethtool_netlink.h |  19 +++
 net/ethtool/Makefile                 |   3 +-
 net/ethtool/netlink.c                |  15 +++
 net/ethtool/netlink.h                |   2 +
 net/ethtool/preempt.c                | 181 +++++++++++++++++++++++++++
 5 files changed, 219 insertions(+), 1 deletion(-)
 create mode 100644 net/ethtool/preempt.c

diff --git a/include/uapi/linux/ethtool_netlink.h b/include/uapi/linux/ethtool_netlink.h
index 2881af4..21afba1 100644
--- a/include/uapi/linux/ethtool_netlink.h
+++ b/include/uapi/linux/ethtool_netlink.h
@@ -40,6 +40,8 @@ enum {
 	ETHTOOL_MSG_EEE_SET,
 	ETHTOOL_MSG_TSINFO_GET,
 	ETHTOOL_MSG_CABLE_TEST_ACT,
+	ETHTOOL_MSG_PREEMPT_GET,
+	ETHTOOL_MSG_PREEMPT_SET,
 
 	/* add new constants above here */
 	__ETHTOOL_MSG_USER_CNT,
@@ -76,6 +78,8 @@ enum {
 	ETHTOOL_MSG_EEE_NTF,
 	ETHTOOL_MSG_TSINFO_GET_REPLY,
 	ETHTOOL_MSG_CABLE_TEST_NTF,
+	ETHTOOL_MSG_PREEMPT_GET_REPLY,
+	ETHTOOL_MSG_PREEMPT_NTF,
 
 	/* add new constants above here */
 	__ETHTOOL_MSG_KERNEL_CNT,
@@ -476,6 +480,21 @@ enum {
 	ETHTOOL_A_CABLE_TEST_NTF_MAX = (__ETHTOOL_A_CABLE_TEST_NTF_CNT - 1)
 };
 
+/* FRAME PREEMPTION */
+enum {
+	ETHTOOL_A_PREEMPT_UNSPEC,
+	ETHTOOL_A_PREEMPT_HEADER,			/* nest - _A_HEADER_* */
+	ETHTOOL_A_PREEMPT_SUPPORTED,			/* u8 */
+	ETHTOOL_A_PREEMPT_ACTIVE,			/* u8 */
+	ETHTOOL_A_PREEMPT_MIN_FRAG_SIZE,		/* u32 */
+	ETHTOOL_A_PREEMPT_QUEUES_SUPPORTED,		/* u32 */
+	ETHTOOL_A_PREEMPT_QUEUES_PREEMPTIBLE,		/* u32 */
+
+	/* add new constants above here */
+	__ETHTOOL_A_PREEMPT_CNT,
+	ETHTOOL_A_PREEMPT_MAX = (__ETHTOOL_A_PREEMPT_CNT - 1)
+};
+
 /* generic netlink info */
 #define ETHTOOL_GENL_NAME "ethtool"
 #define ETHTOOL_GENL_VERSION 1
diff --git a/net/ethtool/Makefile b/net/ethtool/Makefile
index 0c2b94f..11661d1 100644
--- a/net/ethtool/Makefile
+++ b/net/ethtool/Makefile
@@ -6,4 +6,5 @@ obj-$(CONFIG_ETHTOOL_NETLINK)	+= ethtool_nl.o
 
 ethtool_nl-y	:= netlink.o bitset.o strset.o linkinfo.o linkmodes.o \
 		   linkstate.o debug.o wol.o features.o privflags.o rings.o \
-		   channels.o coalesce.o pause.o eee.o tsinfo.o cabletest.o
+		   channels.o coalesce.o pause.o eee.o tsinfo.o cabletest.o \
+		   preempt.o
diff --git a/net/ethtool/netlink.c b/net/ethtool/netlink.c
index 87bc02d..308653f 100644
--- a/net/ethtool/netlink.c
+++ b/net/ethtool/netlink.c
@@ -231,6 +231,7 @@ ethnl_default_requests[__ETHTOOL_MSG_USER_CNT] = {
 	[ETHTOOL_MSG_PAUSE_GET]		= &ethnl_pause_request_ops,
 	[ETHTOOL_MSG_EEE_GET]		= &ethnl_eee_request_ops,
 	[ETHTOOL_MSG_TSINFO_GET]	= &ethnl_tsinfo_request_ops,
+	[ETHTOOL_MSG_PREEMPT_GET]	= &ethnl_preempt_request_ops,
 };
 
 static struct ethnl_dump_ctx *ethnl_dump_context(struct netlink_callback *cb)
@@ -550,6 +551,7 @@ ethnl_default_notify_ops[ETHTOOL_MSG_KERNEL_MAX + 1] = {
 	[ETHTOOL_MSG_COALESCE_NTF]	= &ethnl_coalesce_request_ops,
 	[ETHTOOL_MSG_PAUSE_NTF]		= &ethnl_pause_request_ops,
 	[ETHTOOL_MSG_EEE_NTF]		= &ethnl_eee_request_ops,
+	[ETHTOOL_MSG_PREEMPT_NTF]	= &ethnl_preempt_request_ops,
 };
 
 /* default notification handler */
@@ -642,6 +644,7 @@ static const ethnl_notify_handler_t ethnl_notify_handlers[] = {
 	[ETHTOOL_MSG_COALESCE_NTF]	= ethnl_default_notify,
 	[ETHTOOL_MSG_PAUSE_NTF]		= ethnl_default_notify,
 	[ETHTOOL_MSG_EEE_NTF]		= ethnl_default_notify,
+	[ETHTOOL_MSG_PREEMPT_NTF]	= ethnl_default_notify,
 };
 
 void ethtool_notify(struct net_device *dev, unsigned int cmd, const void *data)
@@ -844,6 +847,18 @@ static const struct genl_ops ethtool_genl_ops[] = {
 		.flags	= GENL_UNS_ADMIN_PERM,
 		.doit	= ethnl_act_cable_test,
 	},
+	{
+		.cmd	= ETHTOOL_MSG_PREEMPT_GET,
+		.doit	= ethnl_default_doit,
+		.start	= ethnl_default_start,
+		.dumpit	= ethnl_default_dumpit,
+		.done	= ethnl_default_done,
+	},
+	{
+		.cmd	= ETHTOOL_MSG_PREEMPT_SET,
+		.flags	= GENL_UNS_ADMIN_PERM,
+		.doit	= ethnl_set_preempt,
+	},
 };
 
 static const struct genl_multicast_group ethtool_nl_mcgrps[] = {
diff --git a/net/ethtool/netlink.h b/net/ethtool/netlink.h
index b0eb5d9..d22dac6 100644
--- a/net/ethtool/netlink.h
+++ b/net/ethtool/netlink.h
@@ -347,6 +347,7 @@ extern const struct ethnl_request_ops ethnl_coalesce_request_ops;
 extern const struct ethnl_request_ops ethnl_pause_request_ops;
 extern const struct ethnl_request_ops ethnl_eee_request_ops;
 extern const struct ethnl_request_ops ethnl_tsinfo_request_ops;
+extern const struct ethnl_request_ops ethnl_preempt_request_ops;
 
 int ethnl_set_linkinfo(struct sk_buff *skb, struct genl_info *info);
 int ethnl_set_linkmodes(struct sk_buff *skb, struct genl_info *info);
@@ -360,5 +361,6 @@ int ethnl_set_coalesce(struct sk_buff *skb, struct genl_info *info);
 int ethnl_set_pause(struct sk_buff *skb, struct genl_info *info);
 int ethnl_set_eee(struct sk_buff *skb, struct genl_info *info);
 int ethnl_act_cable_test(struct sk_buff *skb, struct genl_info *info);
+int ethnl_set_preempt(struct sk_buff *skb, struct genl_info *info);
 
 #endif /* _NET_ETHTOOL_NETLINK_H */
diff --git a/net/ethtool/preempt.c b/net/ethtool/preempt.c
new file mode 100644
index 0000000..9c8df6f
--- /dev/null
+++ b/net/ethtool/preempt.c
@@ -0,0 +1,181 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include "netlink.h"
+#include "common.h"
+
+struct preempt_req_info {
+	struct ethnl_req_info		base;
+};
+
+struct preempt_reply_data {
+	struct ethnl_reply_data		base;
+	struct ethtool_fp		fp;
+};
+
+#define PREEMPT_REPDATA(__reply_base) \
+	container_of(__reply_base, struct preempt_reply_data, base)
+
+static const struct nla_policy
+preempt_get_policy[ETHTOOL_A_PREEMPT_MAX + 1] = {
+	[ETHTOOL_A_PREEMPT_UNSPEC]		= { .type = NLA_REJECT },
+	[ETHTOOL_A_PREEMPT_HEADER]		= { .type = NLA_NESTED },
+	[ETHTOOL_A_PREEMPT_SUPPORTED]		= { .type = NLA_REJECT },
+	[ETHTOOL_A_PREEMPT_ACTIVE]		= { .type = NLA_REJECT },
+	[ETHTOOL_A_PREEMPT_MIN_FRAG_SIZE]	= { .type = NLA_REJECT },
+	[ETHTOOL_A_PREEMPT_QUEUES_SUPPORTED]	= { .type = NLA_REJECT },
+	[ETHTOOL_A_PREEMPT_QUEUES_PREEMPTIBLE]	= { .type = NLA_REJECT },
+};
+
+static int preempt_prepare_data(const struct ethnl_req_info *req_base,
+				struct ethnl_reply_data *reply_base,
+				struct genl_info *info)
+{
+	struct preempt_reply_data *data = PREEMPT_REPDATA(reply_base);
+	struct net_device *dev = reply_base->dev;
+	int ret;
+
+	if (!dev->ethtool_ops->get_preempt)
+		return -EOPNOTSUPP;
+
+	ret = ethnl_ops_begin(dev);
+	if (ret < 0)
+		return ret;
+
+	ret = dev->ethtool_ops->get_preempt(dev, &data->fp);
+	ethnl_ops_complete(dev);
+
+	return ret;
+}
+
+static int preempt_reply_size(const struct ethnl_req_info *req_base,
+			      const struct ethnl_reply_data *reply_base)
+{
+	int len = 0;
+
+	len += nla_total_size(sizeof(u8)); /* _PREEMPT_SUPPORTED */
+	len += nla_total_size(sizeof(u8)); /* _PREEMPT_ACTIVE */
+	len += nla_total_size(sizeof(u32)); /* _PREEMPT_QUEUES_SUPPORTED */
+	len += nla_total_size(sizeof(u32)); /* _PREEMPT_QUEUES_PREEMPTIBLE */
+	len += nla_total_size(sizeof(u32)); /* _PREEMPT_MIN_FRAG_SIZE */
+
+	return len;
+}
+
+static int preempt_fill_reply(struct sk_buff *skb,
+			      const struct ethnl_req_info *req_base,
+			      const struct ethnl_reply_data *reply_base)
+{
+	const struct preempt_reply_data *data = PREEMPT_REPDATA(reply_base);
+	const struct ethtool_fp *preempt = &data->fp;
+
+	if (nla_put_u32(skb, ETHTOOL_A_PREEMPT_QUEUES_SUPPORTED,
+			  preempt->supported_queues_mask))
+		return -EMSGSIZE;
+
+	if (nla_put_u32(skb, ETHTOOL_A_PREEMPT_QUEUES_PREEMPTIBLE,
+			  preempt->preemptible_queues_mask))
+		return -EMSGSIZE;
+
+	if (nla_put_u8(skb, ETHTOOL_A_PREEMPT_ACTIVE, preempt->fp_enabled))
+		return -EMSGSIZE;
+
+	if (nla_put_u8(skb, ETHTOOL_A_PREEMPT_SUPPORTED,
+		       preempt->fp_supported))
+		return -EMSGSIZE;
+
+	if (nla_put_u32(skb, ETHTOOL_A_PREEMPT_MIN_FRAG_SIZE,
+			preempt->min_frag_size))
+		return -EMSGSIZE;
+
+	return 0;
+}
+
+const struct ethnl_request_ops ethnl_preempt_request_ops = {
+	.request_cmd		= ETHTOOL_MSG_PREEMPT_GET,
+	.reply_cmd		= ETHTOOL_MSG_PREEMPT_GET_REPLY,
+	.hdr_attr		= ETHTOOL_A_PREEMPT_HEADER,
+	.max_attr		= ETHTOOL_A_PREEMPT_MAX,
+	.req_info_size		= sizeof(struct preempt_req_info),
+	.reply_data_size	= sizeof(struct preempt_reply_data),
+	.request_policy		= preempt_get_policy,
+
+	.prepare_data		= preempt_prepare_data,
+	.reply_size		= preempt_reply_size,
+	.fill_reply		= preempt_fill_reply,
+};
+
+static const struct nla_policy
+preempt_set_policy[ETHTOOL_A_PREEMPT_MAX + 1] = {
+	[ETHTOOL_A_PREEMPT_UNSPEC]			= { .type = NLA_REJECT },
+	[ETHTOOL_A_PREEMPT_HEADER]			= { .type = NLA_NESTED },
+	[ETHTOOL_A_PREEMPT_SUPPORTED]			= { .type = NLA_REJECT },
+	[ETHTOOL_A_PREEMPT_ACTIVE]			= { .type = NLA_U8 },
+	[ETHTOOL_A_PREEMPT_MIN_FRAG_SIZE]		= { .type = NLA_U32 },
+	[ETHTOOL_A_PREEMPT_QUEUES_SUPPORTED]		= { .type = NLA_REJECT },
+	[ETHTOOL_A_PREEMPT_QUEUES_PREEMPTIBLE]		= { .type = NLA_U32 },
+};
+
+int ethnl_set_preempt(struct sk_buff *skb, struct genl_info *info)
+{
+	struct nlattr *tb[ETHTOOL_A_LINKINFO_MAX + 1];
+	struct ethtool_fp preempt = {};
+	struct ethnl_req_info req_info = {};
+	struct net_device *dev;
+	bool mod = false;
+	int ret;
+
+	ret = nlmsg_parse(info->nlhdr, GENL_HDRLEN, tb,
+			  ETHTOOL_A_PREEMPT_MAX, preempt_set_policy,
+			  info->extack);
+	if (ret < 0)
+		return ret;
+
+	ret = ethnl_parse_header_dev_get(&req_info,
+					 tb[ETHTOOL_A_PREEMPT_HEADER],
+					 genl_info_net(info), info->extack,
+					 true);
+	if (ret < 0)
+		return ret;
+	dev = req_info.dev;
+	ret = -EOPNOTSUPP;
+	if (!dev->ethtool_ops->get_preempt ||
+	    !dev->ethtool_ops->set_preempt)
+		goto out_dev;
+
+	rtnl_lock();
+	ret = ethnl_ops_begin(dev);
+	if (ret < 0)
+		goto out_rtnl;
+
+	ret = dev->ethtool_ops->get_preempt(dev, &preempt);
+	if (ret < 0) {
+		if (info)
+			GENL_SET_ERR_MSG(info, "failed to retrieve frame preemption settings");
+		goto out_ops;
+	}
+
+	ethnl_update_u8(&preempt.fp_enabled,
+			tb[ETHTOOL_A_PREEMPT_ACTIVE], &mod);
+	ethnl_update_u32(&preempt.min_frag_size,
+			 tb[ETHTOOL_A_PREEMPT_MIN_FRAG_SIZE], &mod);
+	ethnl_update_u32(&preempt.preemptible_queues_mask,
+			 tb[ETHTOOL_A_PREEMPT_QUEUES_PREEMPTIBLE], &mod);
+
+	ret = 0;
+	if (!mod)
+		goto out_ops;
+
+	ret = dev->ethtool_ops->set_preempt(dev, &preempt);
+	if (ret < 0)
+		GENL_SET_ERR_MSG(info, "frame preemption settings update failed");
+	else
+		ethtool_notify(dev, ETHTOOL_MSG_PREEMPT_NTF, NULL);
+
+out_ops:
+	ethnl_ops_complete(dev);
+out_rtnl:
+	rtnl_unlock();
+out_dev:
+	dev_put(dev);
+	return ret;
+}
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
