Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C8E44C08C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Nov 2021 13:00:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5794640141;
	Wed, 10 Nov 2021 12:00:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vrxC39hZCSFG; Wed, 10 Nov 2021 12:00:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C3A6F400AF;
	Wed, 10 Nov 2021 12:00:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 386A71BF312
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Nov 2021 12:00:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1AC3340178
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Nov 2021 12:00:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OXqcwP1KAJBm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Nov 2021 12:00:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1948940167
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Nov 2021 12:00:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10163"; a="293484865"
X-IronPort-AV: E=Sophos;i="5.87,223,1631602800"; d="scan'208";a="293484865"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2021 04:00:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,223,1631602800"; d="scan'208";a="452276631"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.231])
 by orsmga003.jf.intel.com with ESMTP; 10 Nov 2021 04:00:05 -0800
From: Maciej Machnikowski <maciej.machnikowski@intel.com>
To: maciej.machnikowski@intel.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Date: Wed, 10 Nov 2021 12:44:46 +0100
Message-Id: <20211110114448.2792314-5-maciej.machnikowski@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20211110114448.2792314-1-maciej.machnikowski@intel.com>
References: <20211110114448.2792314-1-maciej.machnikowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v3 net-next 4/6] rtnetlink: Add support
 for SyncE recovered clock configuration
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
Cc: mkubecek@suse.cz, petrm@nvidia.com, abyagowi@fb.com, saeed@kernel.org,
 richardcochran@gmail.com, idosch@idosch.org, linux-kselftest@vger.kernel.org,
 kuba@kernel.org, michael.chan@broadcom.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add support for RTNL messages for reading/configuring SyncE recovered
clocks.
The messages are:

RTM_GETRCLKSTATE: Read the state of recovered pins that output recovered
		  clock from a given port. The message will contain the
		  number of assigned clocks (IFLA_RCLK_STATE_COUNT) and
		  a N pin inexes in IFLA_RCLK_STATE_OUT_IDX

RTM_SETRCLKSTATE: Sets the redirection of the recovered clock for
		  a given pin

Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
---
 include/linux/netdevice.h      |   9 +++
 include/uapi/linux/if_link.h   |  22 +++++++
 include/uapi/linux/rtnetlink.h |  13 ++--
 net/core/rtnetlink.c           | 110 +++++++++++++++++++++++++++++++++
 security/selinux/nlmsgtab.c    |   2 +
 5 files changed, 152 insertions(+), 4 deletions(-)

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
index 3628a55fdd10..8a708cbd3c6d 100644
--- a/include/uapi/linux/if_link.h
+++ b/include/uapi/linux/if_link.h
@@ -1300,4 +1300,26 @@ enum {
 
 #define IFLA_EEC_MAX (__IFLA_EEC_MAX - 1)
 
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
+	IFLA_RCLK_STATE_OUT_STATE,
+	IFLA_RCLK_STATE_COUNT,
+	__IFLA_RCLK_STATE_MAX,
+};
+
+struct if_get_rclk_msg {
+	__u32 out_idx;
+	__u32 flags;
+};
+
+#define GET_RCLK_FLAGS_ENA	(1U << 0)
+
 #endif /* _UAPI_LINUX_IF_LINK_H */
diff --git a/include/uapi/linux/rtnetlink.h b/include/uapi/linux/rtnetlink.h
index 1d8662afd6bd..b02fcbfc7b5e 100644
--- a/include/uapi/linux/rtnetlink.h
+++ b/include/uapi/linux/rtnetlink.h
@@ -185,6 +185,11 @@ enum {
 	RTM_GETNEXTHOPBUCKET,
 #define RTM_GETNEXTHOPBUCKET	RTM_GETNEXTHOPBUCKET
 
+	RTM_GETRCLKSTATE = 120,
+#define RTM_GETRCLKSTATE	RTM_GETRCLKSTATE
+	RTM_SETRCLKSTATE = 121,
+#define RTM_SETRCLKSTATE	RTM_SETRCLKSTATE
+
 	RTM_GETEECSTATE = 124,
 #define RTM_GETEECSTATE	RTM_GETEECSTATE
 
@@ -196,7 +201,7 @@ enum {
 #define RTM_NR_FAMILIES	(RTM_NR_MSGTYPES >> 2)
 #define RTM_FAM(cmd)	(((cmd) - RTM_BASE) >> 2)
 
-/* 
+/*
    Generic structure for encapsulation of optional route information.
    It is reminiscent of sockaddr, but with sa_family replaced
    with attribute type.
@@ -236,7 +241,7 @@ struct rtmsg {
 
 	unsigned char		rtm_table;	/* Routing table id */
 	unsigned char		rtm_protocol;	/* Routing protocol; see below	*/
-	unsigned char		rtm_scope;	/* See below */	
+	unsigned char		rtm_scope;	/* See below */
 	unsigned char		rtm_type;	/* See below	*/
 
 	unsigned		rtm_flags;
@@ -558,7 +563,7 @@ struct ifinfomsg {
 };
 
 /********************************************************************
- *		prefix information 
+ *		prefix information
  ****/
 
 struct prefixmsg {
@@ -572,7 +577,7 @@ struct prefixmsg {
 	unsigned char	prefix_pad3;
 };
 
-enum 
+enum
 {
 	PREFIX_UNSPEC,
 	PREFIX_ADDRESS,
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index 03bc773d0e69..5d69cbb7fc50 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -5544,6 +5544,113 @@ static int rtnl_eec_state_get(struct sk_buff *skb, struct nlmsghdr *nlh,
 	return err;
 }
 
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
+		struct if_get_rclk_msg rclk_state;
+
+		ops->ndo_get_rclk_state(dev, src_idx, &ena, extack);
+
+		rclk_state.out_idx = src_idx;
+		rclk_state.flags = ena ? GET_RCLK_FLAGS_ENA : 0;
+
+		if (nla_put(skb, IFLA_RCLK_STATE_OUT_STATE, sizeof(rclk_state),
+			    &rclk_state))
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
@@ -5770,5 +5877,8 @@ void __init rtnetlink_init(void)
 	rtnl_register(PF_UNSPEC, RTM_GETSTATS, rtnl_stats_get, rtnl_stats_dump,
 		      0);
 
+	rtnl_register(PF_UNSPEC, RTM_GETRCLKSTATE, rtnl_rclk_state_get, NULL, 0);
+	rtnl_register(PF_UNSPEC, RTM_SETRCLKSTATE, rtnl_rclk_set, NULL, 0);
+
 	rtnl_register(PF_UNSPEC, RTM_GETEECSTATE, rtnl_eec_state_get, NULL, 0);
 }
diff --git a/security/selinux/nlmsgtab.c b/security/selinux/nlmsgtab.c
index 2c66e722ea9c..1899c86694ff 100644
--- a/security/selinux/nlmsgtab.c
+++ b/security/selinux/nlmsgtab.c
@@ -91,6 +91,8 @@ static const struct nlmsg_perm nlmsg_route_perms[] =
 	{ RTM_NEWNEXTHOPBUCKET,	NETLINK_ROUTE_SOCKET__NLMSG_WRITE },
 	{ RTM_DELNEXTHOPBUCKET,	NETLINK_ROUTE_SOCKET__NLMSG_WRITE },
 	{ RTM_GETNEXTHOPBUCKET,	NETLINK_ROUTE_SOCKET__NLMSG_READ  },
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
