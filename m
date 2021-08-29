Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E144B3FAD87
	for <lists+intel-wired-lan@lfdr.de>; Sun, 29 Aug 2021 19:55:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C200840198;
	Sun, 29 Aug 2021 17:55:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id obdAdConEwlZ; Sun, 29 Aug 2021 17:55:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B985440104;
	Sun, 29 Aug 2021 17:55:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 900791BF599
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Aug 2021 17:55:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8074180E21
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Aug 2021 17:55:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id df8W-oh1Hzu3 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 29 Aug 2021 17:55:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ABFCD80DF1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Aug 2021 17:55:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10091"; a="205384940"
X-IronPort-AV: E=Sophos;i="5.84,361,1620716400"; d="scan'208";a="205384940"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2021 10:55:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,361,1620716400"; d="scan'208";a="458779330"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.231])
 by fmsmga007.fm.intel.com with ESMTP; 29 Aug 2021 10:55:08 -0700
From: Maciej Machnikowski <maciej.machnikowski@intel.com>
To: maciej.machnikowski@intel.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Date: Sun, 29 Aug 2021 19:39:33 +0200
Message-Id: <20210829173934.3683561-2-maciej.machnikowski@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210829173934.3683561-1-maciej.machnikowski@intel.com>
References: <20210829173934.3683561-1-maciej.machnikowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC v3 net-next 1/2] rtnetlink: Add new
 RTM_GETEECSTATE message to get SyncE status
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
Cc: abyagowi@fb.com, richardcochran@gmail.com, linux-kselftest@vger.kernel.org,
 kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch series introduces basic interface for reading the Ethernet
Equipment Clock (EEC) state on a SyncE capable device. This state gives
information about the source of the syntonization signal and the state
of EEC. This interface is required to implement Synchronization Status
Messaging on upper layers.

Initial implementation returns:
 - SyncE EEC state
 - Source of signal driving SyncE EEC (SyncE, GNSS, PTP or External)
 - Current index of the pin driving the EEC to track multiple recovered
   clock paths

SyncE EEC state read needs to be implemented as ndo_get_eec_state
function.

Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
---
 include/linux/netdevice.h      |  6 +++
 include/uapi/linux/if_link.h   | 43 ++++++++++++++++++++
 include/uapi/linux/rtnetlink.h |  3 ++
 net/core/rtnetlink.c           | 74 ++++++++++++++++++++++++++++++++++
 security/selinux/nlmsgtab.c    |  3 +-
 5 files changed, 128 insertions(+), 1 deletion(-)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 6fd3a4d42668..afb4b6d513b2 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -1344,6 +1344,8 @@ struct netdev_net_notifier {
  *	The caller must be under RCU read context.
  * int (*ndo_fill_forward_path)(struct net_device_path_ctx *ctx, struct net_device_path *path);
  *     Get the forwarding path to reach the real device from the HW destination address
+ * int (*ndo_get_synce_state)(struct net_device *dev, struct if_eec_state_msg *state)
+ *	Get state of physical layer frequency syntonization (SyncE)
  */
 struct net_device_ops {
 	int			(*ndo_init)(struct net_device *dev);
@@ -1563,6 +1565,10 @@ struct net_device_ops {
 	struct net_device *	(*ndo_get_peer_dev)(struct net_device *dev);
 	int                     (*ndo_fill_forward_path)(struct net_device_path_ctx *ctx,
                                                          struct net_device_path *path);
+	int			(*ndo_get_eec_state)(struct net_device *dev,
+						     enum if_eec_state *state,
+						     enum if_eec_src *src,
+						     u8 *pin_idx);
 };
 
 /**
diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
index eebd3894fe89..4622bf3f937b 100644
--- a/include/uapi/linux/if_link.h
+++ b/include/uapi/linux/if_link.h
@@ -1273,4 +1273,47 @@ enum {
 
 #define IFLA_MCTP_MAX (__IFLA_MCTP_MAX - 1)
 
+/* SyncE section */
+
+enum if_eec_state {
+	IF_EEC_STATE_INVALID = 0,
+	IF_EEC_STATE_FREERUN,
+	IF_EEC_STATE_LOCKACQ,
+	IF_EEC_STATE_LOCKREC,
+	IF_EEC_STATE_LOCKED,
+	IF_EEC_STATE_HOLDOVER,
+	IF_EEC_STATE_OPEN_LOOP,
+	__IF_EEC_STATE_MAX,
+};
+
+#define IF_EEC_STATE_MAX (__IF_EEC_STATE_MAX - 1)
+
+enum if_eec_src {
+	IF_EEC_SRC_INVALID = 0,
+	IF_EEC_SRC_UNKNOWN,
+	IF_EEC_SRC_SYNCE,
+	IF_EEC_SRC_GNSS,
+	IF_EEC_SRC_PTP,
+	IF_EEC_SRC_EXT,
+	__IF_EEC_SRC_MAX,
+};
+
+#define IF_EEC_PIN_UNKNOWN	0xFF
+
+struct if_eec_state_msg {
+	__u32 ifindex;
+	__u8 state;
+	__u8 src;
+	__u8 pin;
+	__u8 pad;
+};
+
+enum {
+	IFLA_EEC_UNSPEC,
+	IFLA_EEC_STATE,
+	__IFLA_EEC_MAX,
+};
+
+#define IFLA_EEC_MAX (__IFLA_EEC_MAX - 1)
+
 #endif /* _UAPI_LINUX_IF_LINK_H */
diff --git a/include/uapi/linux/rtnetlink.h b/include/uapi/linux/rtnetlink.h
index 5888492a5257..642ac18a09d9 100644
--- a/include/uapi/linux/rtnetlink.h
+++ b/include/uapi/linux/rtnetlink.h
@@ -185,6 +185,9 @@ enum {
 	RTM_GETNEXTHOPBUCKET,
 #define RTM_GETNEXTHOPBUCKET	RTM_GETNEXTHOPBUCKET
 
+	RTM_GETEECSTATE = 120,
+#define RTM_GETEECSTATE	RTM_GETEECSTATE
+
 	__RTM_MAX,
 #define RTM_MAX		(((__RTM_MAX + 3) & ~3) - 1)
 };
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index 972c8cb303a5..5ee6529a6f57 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -5468,6 +5468,78 @@ static int rtnl_stats_dump(struct sk_buff *skb, struct netlink_callback *cb)
 	return skb->len;
 }
 
+static int rtnl_fill_eec_state(struct sk_buff *msg, struct net_device *dev,
+			       u32 portid, u32 seq, struct netlink_callback *cb,
+			       int flags)
+{
+	const struct net_device_ops *ops = dev->netdev_ops;
+	struct if_eec_state_msg *state;
+	struct nlmsghdr *nlh;
+
+	ASSERT_RTNL();
+
+	nlh = nlmsg_put(msg, portid, seq, RTM_GETEECSTATE,
+			sizeof(*state), flags);
+	if (!nlh)
+		return -EMSGSIZE;
+
+	state = nlmsg_data(nlh);
+
+	if (ops->ndo_get_eec_state) {
+		enum if_eec_state sync_state;
+		enum if_eec_src src;
+		int err;
+		u8 pin;
+
+		err = ops->ndo_get_eec_state(dev, &sync_state, &src, &pin);
+		if (err)
+			return err;
+
+		memset(state, 0, sizeof(*state));
+
+		state->ifindex = dev->ifindex;
+		state->state = (u8)sync_state;
+		state->pin = pin;
+		state->src = (u8)src;
+
+		return 0;
+	}
+
+	return -EOPNOTSUPP;
+}
+
+static int rtnl_eec_state_get(struct sk_buff *skb, struct nlmsghdr *nlh,
+			      struct netlink_ext_ack *extack)
+{
+	struct net *net = sock_net(skb->sk);
+	struct if_eec_state_msg *state;
+	struct net_device *dev = NULL;
+	struct sk_buff *nskb;
+	int err;
+
+	state = nlmsg_data(nlh);
+	if (state->ifindex > 0)
+		dev = __dev_get_by_index(net, state->ifindex);
+	else
+		return -EINVAL;
+
+	nskb = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
+	if (!nskb)
+		return -ENOBUFS;
+
+	if (!dev)
+		return -ENODEV;
+
+	err = rtnl_fill_eec_state(nskb, dev, NETLINK_CB(skb).portid,
+				  nlh->nlmsg_seq, NULL, nlh->nlmsg_flags);
+	if (err < 0)
+		kfree_skb(nskb);
+	else
+		err = rtnl_unicast(nskb, net, NETLINK_CB(skb).portid);
+
+	return err;
+}
+
 /* Process one rtnetlink message. */
 
 static int rtnetlink_rcv_msg(struct sk_buff *skb, struct nlmsghdr *nlh,
@@ -5693,4 +5765,6 @@ void __init rtnetlink_init(void)
 
 	rtnl_register(PF_UNSPEC, RTM_GETSTATS, rtnl_stats_get, rtnl_stats_dump,
 		      0);
+
+	rtnl_register(PF_UNSPEC, RTM_GETEECSTATE, rtnl_eec_state_get, NULL, 0);
 }
diff --git a/security/selinux/nlmsgtab.c b/security/selinux/nlmsgtab.c
index d59276f48d4f..0e2d84d6045f 100644
--- a/security/selinux/nlmsgtab.c
+++ b/security/selinux/nlmsgtab.c
@@ -91,6 +91,7 @@ static const struct nlmsg_perm nlmsg_route_perms[] =
 	{ RTM_NEWNEXTHOPBUCKET,	NETLINK_ROUTE_SOCKET__NLMSG_WRITE },
 	{ RTM_DELNEXTHOPBUCKET,	NETLINK_ROUTE_SOCKET__NLMSG_WRITE },
 	{ RTM_GETNEXTHOPBUCKET,	NETLINK_ROUTE_SOCKET__NLMSG_READ  },
+	{ RTM_GETEECSTATE,	NETLINK_ROUTE_SOCKET__NLMSG_READ  },
 };
 
 static const struct nlmsg_perm nlmsg_tcpdiag_perms[] =
@@ -174,7 +175,7 @@ int selinux_nlmsg_lookup(u16 sclass, u16 nlmsg_type, u32 *perm)
 		 * structures at the top of this file with the new mappings
 		 * before updating the BUILD_BUG_ON() macro!
 		 */
-		BUILD_BUG_ON(RTM_MAX != (RTM_NEWNEXTHOPBUCKET + 3));
+		BUILD_BUG_ON(RTM_MAX != (RTM_GETEECSTATE + 3));
 		err = nlmsg_perm(nlmsg_type, perm, nlmsg_route_perms,
 				 sizeof(nlmsg_route_perms));
 		break;
-- 
2.26.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
