Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CE444504A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Nov 2021 09:27:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E71CC81092;
	Thu,  4 Nov 2021 08:27:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1aLo2v8fhCaN; Thu,  4 Nov 2021 08:27:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C10BF8105C;
	Thu,  4 Nov 2021 08:27:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7ED6D1BF870
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Nov 2021 08:27:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6AED440128
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Nov 2021 08:27:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U7xumuEPrnUF for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Nov 2021 08:27:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 48E33400D4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Nov 2021 08:27:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="218857424"
X-IronPort-AV: E=Sophos;i="5.87,208,1631602800"; d="scan'208";a="218857424"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 01:27:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,208,1631602800"; d="scan'208";a="501438423"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.231])
 by orsmga008.jf.intel.com with ESMTP; 04 Nov 2021 01:27:42 -0700
From: Maciej Machnikowski <maciej.machnikowski@intel.com>
To: maciej.machnikowski@intel.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Date: Thu,  4 Nov 2021 09:12:29 +0100
Message-Id: <20211104081231.1982753-5-maciej.machnikowski@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20211104081231.1982753-1-maciej.machnikowski@intel.com>
References: <20211104081231.1982753-1-maciej.machnikowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 4/6] rtnetlink: Add support for
 SyncE recovered clock configuration
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
Cc: mkubecek@suse.cz, abyagowi@fb.com, saeed@kernel.org,
 richardcochran@gmail.com, idosch@idosch.org, linux-kselftest@vger.kernel.org,
 kuba@kernel.org, michael.chan@broadcom.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add support for RTNL messages for reading/configuring SyncE recovered
clocks.
The messages are:
RTM_GETRCLKRANGE: Reads the allowed pin index range for the recovered
		  clock outputs. This can be aligned to PHY outputs or
		  to EEC inputs, whichever is better for a given
		  application

RTM_GETRCLKSTATE: Read the state of recovered pins that output recovered
		  clock from a given port. The message will contain the
		  number of assigned clocks (IFLA_RCLK_STATE_COUNT) and
		  a N pin inexes in IFLA_RCLK_STATE_OUT_IDX

RTM_SETRCLKSTATE: Sets the redirection of the recovered clock for
		  a given pin

Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
---
 include/linux/netdevice.h      |   9 ++
 include/uapi/linux/if_link.h   |  26 +++++
 include/uapi/linux/rtnetlink.h |   7 ++
 net/core/rtnetlink.c           | 174 +++++++++++++++++++++++++++++++++
 security/selinux/nlmsgtab.c    |   3 +
 5 files changed, 219 insertions(+)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index ef2b381dae0c..708bd8336155 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -1576,6 +1576,15 @@ struct net_device_ops {
 	int			(*ndo_get_eec_src)(struct net_device *dev,
 						   u32 *src,
 						   struct netlink_ext_ack *extack);
+	int			(*ndo_get_rclk_range)(struct net_device *dev,
+						      u32 *min_idx, u32 *max_idx,
+						      struct netlink_ext_ack *extack);
+	int			(*ndo_set_rclk_out)(struct net_device *dev,
+						    u32 out_idx, bool ena,
+						    struct netlink_ext_ack *extack);
+	int			(*ndo_get_rclk_state)(struct net_device *dev,
+						      u32 out_idx, bool *ena,
+						      struct netlink_ext_ack *extack);
 };
 
 /**
diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
index 8eae80f287e9..e27c153cfba3 100644
--- a/include/uapi/linux/if_link.h
+++ b/include/uapi/linux/if_link.h
@@ -1304,4 +1304,30 @@ enum {
 
 #define IFLA_EEC_MAX (__IFLA_EEC_MAX - 1)
 
+struct if_rclk_range_msg {
+	__u32 ifindex;
+};
+
+enum {
+	IFLA_RCLK_RANGE_UNSPEC,
+	IFLA_RCLK_RANGE_MIN_PIN,
+	IFLA_RCLK_RANGE_MAX_PIN,
+	__IFLA_RCLK_RANGE_MAX,
+};
+
+struct if_set_rclk_msg {
+	__u32 ifindex;
+	__u32 out_idx;
+	__u32 flags;
+};
+
+#define SET_RCLK_FLAGS_ENA	(1U << 0)
+
+enum {
+	IFLA_RCLK_STATE_UNSPEC,
+	IFLA_RCLK_STATE_OUT_IDX,
+	IFLA_RCLK_STATE_COUNT,
+	__IFLA_RCLK_STATE_MAX,
+};
+
 #endif /* _UAPI_LINUX_IF_LINK_H */
diff --git a/include/uapi/linux/rtnetlink.h b/include/uapi/linux/rtnetlink.h
index 1d8662afd6bd..6c0d96d56ec7 100644
--- a/include/uapi/linux/rtnetlink.h
+++ b/include/uapi/linux/rtnetlink.h
@@ -185,6 +185,13 @@ enum {
 	RTM_GETNEXTHOPBUCKET,
 #define RTM_GETNEXTHOPBUCKET	RTM_GETNEXTHOPBUCKET
 
+	RTM_GETRCLKRANGE = 120,
+#define RTM_GETRCLKRANGE	RTM_GETRCLKRANGE
+	RTM_GETRCLKSTATE = 121,
+#define RTM_GETRCLKSTATE	RTM_GETRCLKSTATE
+	RTM_SETRCLKSTATE = 122,
+#define RTM_SETRCLKSTATE	RTM_SETRCLKSTATE
+
 	RTM_GETEECSTATE = 124,
 #define RTM_GETEECSTATE	RTM_GETEECSTATE
 
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index 03bc773d0e69..bc1e050f6d38 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -5544,6 +5544,176 @@ static int rtnl_eec_state_get(struct sk_buff *skb, struct nlmsghdr *nlh,
 	return err;
 }
 
+static int rtnl_fill_rclk_range(struct sk_buff *skb, struct net_device *dev,
+				u32 portid, u32 seq,
+				struct netlink_callback *cb, int flags,
+				struct netlink_ext_ack *extack)
+{
+	const struct net_device_ops *ops = dev->netdev_ops;
+	struct if_rclk_range_msg *state_msg;
+	struct nlmsghdr *nlh;
+	u32 min_idx, max_idx;
+	int err;
+
+	ASSERT_RTNL();
+
+	if (!ops->ndo_get_rclk_range)
+		return -EOPNOTSUPP;
+
+	err = ops->ndo_get_rclk_range(dev, &min_idx, &max_idx, extack);
+	if (err)
+		return err;
+
+	nlh = nlmsg_put(skb, portid, seq, RTM_GETRCLKRANGE, sizeof(*state_msg),
+			flags);
+	if (!nlh)
+		return -EMSGSIZE;
+
+	state_msg = nlmsg_data(nlh);
+	state_msg->ifindex = dev->ifindex;
+
+	if (nla_put_u32(skb, IFLA_RCLK_RANGE_MIN_PIN, min_idx) ||
+	    nla_put_u32(skb, IFLA_RCLK_RANGE_MAX_PIN, max_idx))
+		return -EMSGSIZE;
+
+	nlmsg_end(skb, nlh);
+	return 0;
+}
+
+static int rtnl_rclk_range_get(struct sk_buff *skb, struct nlmsghdr *nlh,
+			       struct netlink_ext_ack *extack)
+{
+	struct net *net = sock_net(skb->sk);
+	struct if_eec_state_msg *state;
+	struct net_device *dev;
+	struct sk_buff *nskb;
+	int err;
+
+	state = nlmsg_data(nlh);
+	dev = __dev_get_by_index(net, state->ifindex);
+	if (!dev) {
+		NL_SET_ERR_MSG(extack, "unknown ifindex");
+		return -ENODEV;
+	}
+
+	nskb = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
+	if (!nskb)
+		return -ENOBUFS;
+
+	err = rtnl_fill_rclk_range(nskb, dev, NETLINK_CB(skb).portid,
+				   nlh->nlmsg_seq, NULL, nlh->nlmsg_flags,
+				   extack);
+	if (err < 0)
+		kfree_skb(nskb);
+	else
+		err = rtnl_unicast(nskb, net, NETLINK_CB(skb).portid);
+
+	return err;
+}
+
+static int rtnl_fill_rclk_state(struct sk_buff *skb, struct net_device *dev,
+				u32 portid, u32 seq,
+				struct netlink_callback *cb, int flags,
+				struct netlink_ext_ack *extack)
+{
+	const struct net_device_ops *ops = dev->netdev_ops;
+	u32 min_idx, max_idx, src_idx, count = 0;
+	struct if_eec_state_msg *state_msg;
+	struct nlmsghdr *nlh;
+	bool ena;
+	int err;
+
+	ASSERT_RTNL();
+
+	if (!ops->ndo_get_rclk_state || !ops->ndo_get_rclk_range)
+		return -EOPNOTSUPP;
+
+	err = ops->ndo_get_rclk_range(dev, &min_idx, &max_idx, extack);
+	if (err)
+		return err;
+
+	nlh = nlmsg_put(skb, portid, seq, RTM_GETRCLKSTATE, sizeof(*state_msg),
+			flags);
+	if (!nlh)
+		return -EMSGSIZE;
+
+	state_msg = nlmsg_data(nlh);
+	state_msg->ifindex = dev->ifindex;
+
+	for (src_idx = min_idx; src_idx <= max_idx; src_idx++) {
+		ops->ndo_get_rclk_state(dev, src_idx, &ena, extack);
+		if (!ena)
+			continue;
+
+		if (nla_put_u32(skb, IFLA_RCLK_STATE_OUT_IDX, src_idx))
+			return -EMSGSIZE;
+		count++;
+	}
+
+	if (nla_put_u32(skb, IFLA_RCLK_STATE_COUNT, count))
+		return -EMSGSIZE;
+
+	nlmsg_end(skb, nlh);
+	return 0;
+}
+
+static int rtnl_rclk_state_get(struct sk_buff *skb, struct nlmsghdr *nlh,
+			       struct netlink_ext_ack *extack)
+{
+	struct net *net = sock_net(skb->sk);
+	struct if_eec_state_msg *state;
+	struct net_device *dev;
+	struct sk_buff *nskb;
+	int err;
+
+	state = nlmsg_data(nlh);
+	dev = __dev_get_by_index(net, state->ifindex);
+	if (!dev) {
+		NL_SET_ERR_MSG(extack, "unknown ifindex");
+		return -ENODEV;
+	}
+
+	nskb = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
+	if (!nskb)
+		return -ENOBUFS;
+
+	err = rtnl_fill_rclk_state(nskb, dev, NETLINK_CB(skb).portid,
+				   nlh->nlmsg_seq, NULL, nlh->nlmsg_flags,
+				   extack);
+	if (err < 0)
+		kfree_skb(nskb);
+	else
+		err = rtnl_unicast(nskb, net, NETLINK_CB(skb).portid);
+
+	return err;
+}
+
+static int rtnl_rclk_set(struct sk_buff *skb, struct nlmsghdr *nlh,
+			 struct netlink_ext_ack *extack)
+{
+	struct net *net = sock_net(skb->sk);
+	struct if_set_rclk_msg *state;
+	struct net_device *dev;
+	bool ena;
+	int err;
+
+	state = nlmsg_data(nlh);
+	dev = __dev_get_by_index(net, state->ifindex);
+	if (!dev) {
+		NL_SET_ERR_MSG(extack, "unknown ifindex");
+		return -ENODEV;
+	}
+
+	if (!dev->netdev_ops->ndo_set_rclk_out)
+		return -EOPNOTSUPP;
+
+	ena = !!(state->flags & SET_RCLK_FLAGS_ENA);
+	err = dev->netdev_ops->ndo_set_rclk_out(dev, state->out_idx, ena,
+						extack);
+
+	return err;
+}
+
 /* Process one rtnetlink message. */
 
 static int rtnetlink_rcv_msg(struct sk_buff *skb, struct nlmsghdr *nlh,
@@ -5770,5 +5940,9 @@ void __init rtnetlink_init(void)
 	rtnl_register(PF_UNSPEC, RTM_GETSTATS, rtnl_stats_get, rtnl_stats_dump,
 		      0);
 
+	rtnl_register(PF_UNSPEC, RTM_GETRCLKRANGE, rtnl_rclk_range_get, NULL, 0);
+	rtnl_register(PF_UNSPEC, RTM_GETRCLKSTATE, rtnl_rclk_state_get, NULL, 0);
+	rtnl_register(PF_UNSPEC, RTM_SETRCLKSTATE, rtnl_rclk_set, NULL, 0);
+
 	rtnl_register(PF_UNSPEC, RTM_GETEECSTATE, rtnl_eec_state_get, NULL, 0);
 }
diff --git a/security/selinux/nlmsgtab.c b/security/selinux/nlmsgtab.c
index 2c66e722ea9c..57c7c85edd4d 100644
--- a/security/selinux/nlmsgtab.c
+++ b/security/selinux/nlmsgtab.c
@@ -91,6 +91,9 @@ static const struct nlmsg_perm nlmsg_route_perms[] =
 	{ RTM_NEWNEXTHOPBUCKET,	NETLINK_ROUTE_SOCKET__NLMSG_WRITE },
 	{ RTM_DELNEXTHOPBUCKET,	NETLINK_ROUTE_SOCKET__NLMSG_WRITE },
 	{ RTM_GETNEXTHOPBUCKET,	NETLINK_ROUTE_SOCKET__NLMSG_READ  },
+	{ RTM_GETRCLKRANGE,	NETLINK_ROUTE_SOCKET__NLMSG_READ  },
+	{ RTM_GETRCLKSTATE,	NETLINK_ROUTE_SOCKET__NLMSG_READ  },
+	{ RTM_SETRCLKSTATE,	NETLINK_ROUTE_SOCKET__NLMSG_WRITE },
 	{ RTM_GETEECSTATE,	NETLINK_ROUTE_SOCKET__NLMSG_READ  },
 };
 
-- 
2.26.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
