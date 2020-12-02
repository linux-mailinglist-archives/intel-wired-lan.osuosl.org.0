Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2162CB412
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Dec 2020 05:54:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 10D7887830;
	Wed,  2 Dec 2020 04:54:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R3UqcnuQs35W; Wed,  2 Dec 2020 04:54:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 04C348782C;
	Wed,  2 Dec 2020 04:54:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DA1AA1BF30A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 04:53:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D42822E1F3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 04:53:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1sTCIEODtrF5 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Dec 2020 04:53:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 8F82F2E1F4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 04:53:51 +0000 (UTC)
IronPort-SDR: +m4RnBPb6cSFioMie54Et0Fibkf4co27VYz0NCuZIN90ODd9HkccTozc53mZ9+zzbBh1B/OEVF
 Maxg1sXyCIqQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="234558815"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="234558815"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 20:53:47 -0800
IronPort-SDR: ZdGKKN3r6J/OH7/iRSHKmp9iVxlGzi+8kDwUUJGBhgtO4175dg7lYQxtwD/O8pGFMnQ7cJOGLa
 +Br4toXPu8Bw==
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="549888361"
Received: from shivanif-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.212.152.222])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 20:53:47 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: netdev@vger.kernel.org
Date: Tue,  1 Dec 2020 20:53:17 -0800
Message-Id: <20201202045325.3254757-2-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201202045325.3254757-1-vinicius.gomes@intel.com>
References: <20201202045325.3254757-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 1/9] ethtool: Add support for
 configuring frame preemption
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
Cc: Jose.Abreu@synopsys.com, jiri@resnulli.us, vladimir.oltean@nxp.com,
 po.liu@nxp.com, jhs@mojatatu.com, m-karicheri2@ti.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Frame preemption (described in IEEE 802.3br-2016) defines the concept
of preemptible and express queues. It allows traffic from express
queues to "interrupt" traffic from preemptible queues, which are
"resumed" after the express traffic has finished transmitting.

Frame preemption can only be used when both the local device and the
link partner support it.

Only parameters for enabling/disabling frame preemption and
configuring the minimum fragment size are included here. Expressing
which queues are marked as preemptible is left to mqprio/taprio, as
having that information there should be easier on the user.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 include/linux/ethtool.h              |  19 ++++
 include/uapi/linux/ethtool_netlink.h |  17 +++
 net/ethtool/Makefile                 |   2 +-
 net/ethtool/netlink.c                |  19 ++++
 net/ethtool/netlink.h                |   4 +
 net/ethtool/preempt.c                | 151 +++++++++++++++++++++++++++
 6 files changed, 211 insertions(+), 1 deletion(-)
 create mode 100644 net/ethtool/preempt.c

diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
index e3da25b51ae4..16d6ee29a6ac 100644
--- a/include/linux/ethtool.h
+++ b/include/linux/ethtool.h
@@ -263,6 +263,19 @@ struct ethtool_pause_stats {
 	u64 rx_pause_frames;
 };
 
+/**
+ * struct ethtool_fp - Frame Preemption information
+ *
+ * @enabled: Enable frame preemption.
+ *
+ * @min_frag_size_mult: Minimum size for all non-final fragment size,
+ * expressed in terms of X in '(1 + X)*64 + 4'
+ */
+struct ethtool_fp {
+	u8 enabled;
+	u8 min_frag_size_mult;
+};
+
 /**
  * struct ethtool_ops - optional netdev operations
  * @supported_coalesce_params: supported types of interrupt coalescing.
@@ -406,6 +419,8 @@ struct ethtool_pause_stats {
  * @get_ethtool_phy_stats: Return extended statistics about the PHY device.
  *	This is only useful if the device maintains PHY statistics and
  *	cannot use the standard PHY library helpers.
+ * @get_preempt: Get the network device Frame Preemption parameters.
+ * @set_preempt: Set the network device Frame Preemption parameters.
  *
  * All operations are optional (i.e. the function pointer may be set
  * to %NULL) and callers must take this into account.  Callers must
@@ -504,6 +519,10 @@ struct ethtool_ops {
 				      struct ethtool_fecparam *);
 	int	(*set_fecparam)(struct net_device *,
 				      struct ethtool_fecparam *);
+	int	(*get_preempt)(struct net_device *,
+			       struct ethtool_fp *);
+	int	(*set_preempt)(struct net_device *,
+			       struct ethtool_fp *);
 	void	(*get_ethtool_phy_stats)(struct net_device *,
 					 struct ethtool_stats *, u64 *);
 	int	(*get_phy_tunable)(struct net_device *,
diff --git a/include/uapi/linux/ethtool_netlink.h b/include/uapi/linux/ethtool_netlink.h
index e2bf36e6964b..0b3dc0c263a9 100644
--- a/include/uapi/linux/ethtool_netlink.h
+++ b/include/uapi/linux/ethtool_netlink.h
@@ -42,6 +42,8 @@ enum {
 	ETHTOOL_MSG_CABLE_TEST_ACT,
 	ETHTOOL_MSG_CABLE_TEST_TDR_ACT,
 	ETHTOOL_MSG_TUNNEL_INFO_GET,
+	ETHTOOL_MSG_PREEMPT_GET,
+	ETHTOOL_MSG_PREEMPT_SET,
 
 	/* add new constants above here */
 	__ETHTOOL_MSG_USER_CNT,
@@ -80,6 +82,8 @@ enum {
 	ETHTOOL_MSG_CABLE_TEST_NTF,
 	ETHTOOL_MSG_CABLE_TEST_TDR_NTF,
 	ETHTOOL_MSG_TUNNEL_INFO_GET_REPLY,
+	ETHTOOL_MSG_PREEMPT_GET_REPLY,
+	ETHTOOL_MSG_PREEMPT_NTF,
 
 	/* add new constants above here */
 	__ETHTOOL_MSG_KERNEL_CNT,
@@ -628,6 +632,19 @@ enum {
 	ETHTOOL_A_TUNNEL_INFO_MAX = (__ETHTOOL_A_TUNNEL_INFO_CNT - 1)
 };
 
+/* FRAME PREEMPTION */
+
+enum {
+	ETHTOOL_A_PREEMPT_UNSPEC,
+	ETHTOOL_A_PREEMPT_HEADER,			/* nest - _A_HEADER_* */
+	ETHTOOL_A_PREEMPT_ENABLED,			/* u8 */
+	ETHTOOL_A_PREEMPT_MIN_FRAG_SIZE_MULT,		/* u8 */
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
index 7a849ff22dad..4e584903e3ef 100644
--- a/net/ethtool/Makefile
+++ b/net/ethtool/Makefile
@@ -7,4 +7,4 @@ obj-$(CONFIG_ETHTOOL_NETLINK)	+= ethtool_nl.o
 ethtool_nl-y	:= netlink.o bitset.o strset.o linkinfo.o linkmodes.o \
 		   linkstate.o debug.o wol.o features.o privflags.o rings.o \
 		   channels.o coalesce.o pause.o eee.o tsinfo.o cabletest.o \
-		   tunnels.o
+		   tunnels.o preempt.o
diff --git a/net/ethtool/netlink.c b/net/ethtool/netlink.c
index 50d3c8896f91..bc7d66e3ba38 100644
--- a/net/ethtool/netlink.c
+++ b/net/ethtool/netlink.c
@@ -245,6 +245,7 @@ ethnl_default_requests[__ETHTOOL_MSG_USER_CNT] = {
 	[ETHTOOL_MSG_PAUSE_GET]		= &ethnl_pause_request_ops,
 	[ETHTOOL_MSG_EEE_GET]		= &ethnl_eee_request_ops,
 	[ETHTOOL_MSG_TSINFO_GET]	= &ethnl_tsinfo_request_ops,
+	[ETHTOOL_MSG_PREEMPT_GET]	= &ethnl_preempt_request_ops,
 };
 
 static struct ethnl_dump_ctx *ethnl_dump_context(struct netlink_callback *cb)
@@ -551,6 +552,7 @@ ethnl_default_notify_ops[ETHTOOL_MSG_KERNEL_MAX + 1] = {
 	[ETHTOOL_MSG_COALESCE_NTF]	= &ethnl_coalesce_request_ops,
 	[ETHTOOL_MSG_PAUSE_NTF]		= &ethnl_pause_request_ops,
 	[ETHTOOL_MSG_EEE_NTF]		= &ethnl_eee_request_ops,
+	[ETHTOOL_MSG_PREEMPT_NTF]	= &ethnl_preempt_request_ops,
 };
 
 /* default notification handler */
@@ -643,6 +645,7 @@ static const ethnl_notify_handler_t ethnl_notify_handlers[] = {
 	[ETHTOOL_MSG_COALESCE_NTF]	= ethnl_default_notify,
 	[ETHTOOL_MSG_PAUSE_NTF]		= ethnl_default_notify,
 	[ETHTOOL_MSG_EEE_NTF]		= ethnl_default_notify,
+	[ETHTOOL_MSG_PREEMPT_NTF]	= ethnl_default_notify,
 };
 
 void ethtool_notify(struct net_device *dev, unsigned int cmd, const void *data)
@@ -912,6 +915,22 @@ static const struct genl_ops ethtool_genl_ops[] = {
 		.policy = ethnl_tunnel_info_get_policy,
 		.maxattr = ARRAY_SIZE(ethnl_tunnel_info_get_policy) - 1,
 	},
+	{
+		.cmd	= ETHTOOL_MSG_PREEMPT_GET,
+		.doit	= ethnl_default_doit,
+		.start	= ethnl_default_start,
+		.dumpit	= ethnl_default_dumpit,
+		.done	= ethnl_default_done,
+		.policy = ethnl_preempt_get_policy,
+		.maxattr = ARRAY_SIZE(ethnl_preempt_get_policy) - 1,
+	},
+	{
+		.cmd	= ETHTOOL_MSG_PREEMPT_SET,
+		.flags	= GENL_UNS_ADMIN_PERM,
+		.doit	= ethnl_set_preempt,
+		.policy = ethnl_preempt_set_policy,
+		.maxattr = ARRAY_SIZE(ethnl_preempt_set_policy) - 1,
+	},
 };
 
 static const struct genl_multicast_group ethtool_nl_mcgrps[] = {
diff --git a/net/ethtool/netlink.h b/net/ethtool/netlink.h
index d8efec516d86..8f65e53ccd59 100644
--- a/net/ethtool/netlink.h
+++ b/net/ethtool/netlink.h
@@ -344,6 +344,7 @@ extern const struct ethnl_request_ops ethnl_coalesce_request_ops;
 extern const struct ethnl_request_ops ethnl_pause_request_ops;
 extern const struct ethnl_request_ops ethnl_eee_request_ops;
 extern const struct ethnl_request_ops ethnl_tsinfo_request_ops;
+extern const struct ethnl_request_ops ethnl_preempt_request_ops;
 
 extern const struct nla_policy ethnl_header_policy[ETHTOOL_A_HEADER_FLAGS + 1];
 extern const struct nla_policy ethnl_header_policy_stats[ETHTOOL_A_HEADER_FLAGS + 1];
@@ -375,6 +376,8 @@ extern const struct nla_policy ethnl_tsinfo_get_policy[ETHTOOL_A_TSINFO_HEADER +
 extern const struct nla_policy ethnl_cable_test_act_policy[ETHTOOL_A_CABLE_TEST_HEADER + 1];
 extern const struct nla_policy ethnl_cable_test_tdr_act_policy[ETHTOOL_A_CABLE_TEST_TDR_CFG + 1];
 extern const struct nla_policy ethnl_tunnel_info_get_policy[ETHTOOL_A_TUNNEL_INFO_HEADER + 1];
+extern const struct nla_policy ethnl_preempt_get_policy[ETHTOOL_A_PREEMPT_MAX + 1];
+extern const struct nla_policy ethnl_preempt_set_policy[ETHTOOL_A_PREEMPT_MAX + 1];
 
 int ethnl_set_linkinfo(struct sk_buff *skb, struct genl_info *info);
 int ethnl_set_linkmodes(struct sk_buff *skb, struct genl_info *info);
@@ -392,5 +395,6 @@ int ethnl_act_cable_test_tdr(struct sk_buff *skb, struct genl_info *info);
 int ethnl_tunnel_info_doit(struct sk_buff *skb, struct genl_info *info);
 int ethnl_tunnel_info_start(struct netlink_callback *cb);
 int ethnl_tunnel_info_dumpit(struct sk_buff *skb, struct netlink_callback *cb);
+int ethnl_set_preempt(struct sk_buff *skb, struct genl_info *info);
 
 #endif /* _NET_ETHTOOL_NETLINK_H */
diff --git a/net/ethtool/preempt.c b/net/ethtool/preempt.c
new file mode 100644
index 000000000000..4d97d1180a65
--- /dev/null
+++ b/net/ethtool/preempt.c
@@ -0,0 +1,151 @@
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
+const struct nla_policy
+ethnl_preempt_get_policy[ETHTOOL_A_PREEMPT_MAX + 1] = {
+	[ETHTOOL_A_PREEMPT_UNSPEC]		= { .type = NLA_REJECT },
+	[ETHTOOL_A_PREEMPT_HEADER]		= { .type = NLA_NESTED },
+	[ETHTOOL_A_PREEMPT_ENABLED]		= { .type = NLA_REJECT },
+	[ETHTOOL_A_PREEMPT_MIN_FRAG_SIZE_MULT]	= { .type = NLA_REJECT },
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
+	len += nla_total_size(sizeof(u8)); /* _PREEMPT_ENABLED */
+	len += nla_total_size(sizeof(u8)); /* _PREEMPT_MIN_FRAG_SIZE */
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
+	if (nla_put_u8(skb, ETHTOOL_A_PREEMPT_ENABLED, preempt->enabled))
+		return -EMSGSIZE;
+
+	if (nla_put_u8(skb, ETHTOOL_A_PREEMPT_MIN_FRAG_SIZE_MULT,
+		       preempt->min_frag_size_mult))
+		return -EMSGSIZE;
+
+	return 0;
+}
+
+const struct ethnl_request_ops ethnl_preempt_request_ops = {
+	.request_cmd		= ETHTOOL_MSG_PREEMPT_GET,
+	.reply_cmd		= ETHTOOL_MSG_PREEMPT_GET_REPLY,
+	.hdr_attr		= ETHTOOL_A_PREEMPT_HEADER,
+	.req_info_size		= sizeof(struct preempt_req_info),
+	.reply_data_size	= sizeof(struct preempt_reply_data),
+
+	.prepare_data		= preempt_prepare_data,
+	.reply_size		= preempt_reply_size,
+	.fill_reply		= preempt_fill_reply,
+};
+
+const struct nla_policy
+ethnl_preempt_set_policy[ETHTOOL_A_PREEMPT_MAX + 1] = {
+	[ETHTOOL_A_PREEMPT_UNSPEC]			= { .type = NLA_REJECT },
+	[ETHTOOL_A_PREEMPT_HEADER]			= { .type = NLA_NESTED },
+	[ETHTOOL_A_PREEMPT_ENABLED]			= { .type = NLA_U8 },
+	[ETHTOOL_A_PREEMPT_MIN_FRAG_SIZE_MULT]		= { .type = NLA_U8 },
+};
+
+int ethnl_set_preempt(struct sk_buff *skb, struct genl_info *info)
+{
+	struct ethnl_req_info req_info = {};
+	struct nlattr **tb = info->attrs;
+	struct ethtool_fp preempt = {};
+	struct net_device *dev;
+	bool mod = false;
+	int ret;
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
+		GENL_SET_ERR_MSG(info, "failed to retrieve frame preemption settings");
+		goto out_ops;
+	}
+
+	ethnl_update_u8(&preempt.enabled,
+			tb[ETHTOOL_A_PREEMPT_ENABLED], &mod);
+	ethnl_update_u8(&preempt.min_frag_size_mult,
+			tb[ETHTOOL_A_PREEMPT_MIN_FRAG_SIZE_MULT], &mod);
+
+	ret = 0;
+	if (!mod)
+		goto out_ops;
+
+	ret = dev->ethtool_ops->set_preempt(dev, &preempt);
+	if (ret < 0) {
+		GENL_SET_ERR_MSG(info, "frame preemption settings update failed");
+		goto out_ops;
+	}
+
+	ethtool_notify(dev, ETHTOOL_MSG_PREEMPT_NTF, NULL);
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
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
