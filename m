Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C935C3FBB8B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Aug 2021 20:14:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 40DD34038D;
	Mon, 30 Aug 2021 18:14:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qR1MALB667-1; Mon, 30 Aug 2021 18:14:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9C9CF403BE;
	Mon, 30 Aug 2021 18:14:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 41F9A1BF4D7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Aug 2021 18:14:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3085480C6C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Aug 2021 18:14:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mSE5DqU5arts for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Aug 2021 18:14:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 797C580C6A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Aug 2021 18:14:18 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A65F460E98;
 Mon, 30 Aug 2021 18:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1630347257;
 bh=2YmyvACxA5CW5EC1ENt7kH+extPZ+HyxavPOt831e6E=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=uqyJ3hUzKKMsdRB7WmL3ChnKjsGUforM3qa3LWcn8AhgFymCfco7BuGqt+La06m08
 fYNsepgSSJjumLUlxUIUouBeQU16p+VBLHRS1wFMkxd/og1T5ssLa8VOMD3HMSlORd
 MCSSxoQ3j3fNQUVkAE1eFw7L81w+xFaIXPjMBZXfXUMHuyoESuwefW2Q3iaU7sDk0Z
 xdmbBSnEiaheVNKAkVlKA97afha1U8wlKHRgCBbCtKIToogpMRSLOgzm2qw90DcvQX
 sYJLF6w5V9xswvnCSPQ9UPXOwmusGfr30z9zqQ8Em6uzKicUPNgNlAPcwiD/BANIke
 C8A4eTf4igbfA==
Date: Mon, 30 Aug 2021 11:14:16 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Maciej Machnikowski <maciej.machnikowski@intel.com>
Message-ID: <20210830111416.34a8362d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210829173934.3683561-2-maciej.machnikowski@intel.com>
References: <20210829173934.3683561-1-maciej.machnikowski@intel.com>
 <20210829173934.3683561-2-maciej.machnikowski@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [RFC v3 net-next 1/2] rtnetlink: Add new
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
Cc: abyagowi@fb.com, netdev@vger.kernel.org, richardcochran@gmail.com,
 linux-kselftest@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, 29 Aug 2021 19:39:33 +0200 Maciej Machnikowski wrote:
> This patch series introduces basic interface for reading the Ethernet
> Equipment Clock (EEC) state on a SyncE capable device. This state gives
> information about the source of the syntonization signal and the state
> of EEC. This interface is required to implement Synchronization Status
> Messaging on upper layers.
> 
> Initial implementation returns:
>  - SyncE EEC state
>  - Source of signal driving SyncE EEC (SyncE, GNSS, PTP or External)
>  - Current index of the pin driving the EEC to track multiple recovered
>    clock paths
> 
> SyncE EEC state read needs to be implemented as ndo_get_eec_state
> function.
> 
> Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>

> diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
> index 6fd3a4d42668..afb4b6d513b2 100644
> --- a/include/linux/netdevice.h
> +++ b/include/linux/netdevice.h
> @@ -1344,6 +1344,8 @@ struct netdev_net_notifier {
>   *	The caller must be under RCU read context.
>   * int (*ndo_fill_forward_path)(struct net_device_path_ctx *ctx, struct net_device_path *path);
>   *     Get the forwarding path to reach the real device from the HW destination address
> + * int (*ndo_get_synce_state)(struct net_device *dev, struct if_eec_state_msg *state)
> + *	Get state of physical layer frequency syntonization (SyncE)
>   */
>  struct net_device_ops {
>  	int			(*ndo_init)(struct net_device *dev);
> @@ -1563,6 +1565,10 @@ struct net_device_ops {
>  	struct net_device *	(*ndo_get_peer_dev)(struct net_device *dev);
>  	int                     (*ndo_fill_forward_path)(struct net_device_path_ctx *ctx,
>                                                           struct net_device_path *path);
> +	int			(*ndo_get_eec_state)(struct net_device *dev,
> +						     enum if_eec_state *state,
> +						     enum if_eec_src *src,
> +						     u8 *pin_idx);

Why not pass all the args as a struct? That way we won't have to modify
all drivers when new argument is needed.

Please also pass the extack pointer to the drivers.

>  /**
> diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
> index eebd3894fe89..4622bf3f937b 100644
> --- a/include/uapi/linux/if_link.h
> +++ b/include/uapi/linux/if_link.h
> @@ -1273,4 +1273,47 @@ enum {
>  
>  #define IFLA_MCTP_MAX (__IFLA_MCTP_MAX - 1)
>  
> +/* SyncE section */
> +
> +enum if_eec_state {
> +	IF_EEC_STATE_INVALID = 0,
> +	IF_EEC_STATE_FREERUN,
> +	IF_EEC_STATE_LOCKACQ,
> +	IF_EEC_STATE_LOCKREC,
> +	IF_EEC_STATE_LOCKED,
> +	IF_EEC_STATE_HOLDOVER,
> +	IF_EEC_STATE_OPEN_LOOP,
> +	__IF_EEC_STATE_MAX,
> +};
> +
> +#define IF_EEC_STATE_MAX (__IF_EEC_STATE_MAX - 1)
> +
> +enum if_eec_src {
> +	IF_EEC_SRC_INVALID = 0,
> +	IF_EEC_SRC_UNKNOWN,
> +	IF_EEC_SRC_SYNCE,
> +	IF_EEC_SRC_GNSS,
> +	IF_EEC_SRC_PTP,
> +	IF_EEC_SRC_EXT,
> +	__IF_EEC_SRC_MAX,
> +};
> +
> +#define IF_EEC_PIN_UNKNOWN	0xFF
> +
> +struct if_eec_state_msg {
> +	__u32 ifindex;
> +	__u8 state;
> +	__u8 src;
> +	__u8 pin;
> +	__u8 pad;
> +};

Please break this structure up into individual attributes.

This way you won't have to expose the special PIN_UNKNOWN value to user
space (skip the invalid attrs instead).

> +enum {
> +	IFLA_EEC_UNSPEC,
> +	IFLA_EEC_STATE,
> +	__IFLA_EEC_MAX,
> +};
> +
> +#define IFLA_EEC_MAX (__IFLA_EEC_MAX - 1)
> +
>  #endif /* _UAPI_LINUX_IF_LINK_H */

> +static int rtnl_fill_eec_state(struct sk_buff *msg, struct net_device *dev,
> +			       u32 portid, u32 seq, struct netlink_callback *cb,
> +			       int flags)
> +{
> +	const struct net_device_ops *ops = dev->netdev_ops;
> +	struct if_eec_state_msg *state;
> +	struct nlmsghdr *nlh;
> +
> +	ASSERT_RTNL();
> +
> +	nlh = nlmsg_put(msg, portid, seq, RTM_GETEECSTATE,
> +			sizeof(*state), flags);
> +	if (!nlh)
> +		return -EMSGSIZE;
> +
> +	state = nlmsg_data(nlh);
> +
> +	if (ops->ndo_get_eec_state) {

Check this early and return, primary code path of the function should
not be indented.

> +		enum if_eec_state sync_state;
> +		enum if_eec_src src;
> +		int err;
> +		u8 pin;
> +
> +		err = ops->ndo_get_eec_state(dev, &sync_state, &src, &pin);
> +		if (err)
> +			return err;
> +
> +		memset(state, 0, sizeof(*state));
> +
> +		state->ifindex = dev->ifindex;
> +		state->state = (u8)sync_state;
> +		state->pin = pin;
> +		state->src = (u8)src;
> +
> +		return 0;
> +	}
> +
> +	return -EOPNOTSUPP;
> +}
> +
> +static int rtnl_eec_state_get(struct sk_buff *skb, struct nlmsghdr *nlh,
> +			      struct netlink_ext_ack *extack)
> +{
> +	struct net *net = sock_net(skb->sk);
> +	struct if_eec_state_msg *state;
> +	struct net_device *dev = NULL;

No need to init dev.

> +	struct sk_buff *nskb;
> +	int err;
> +
> +	state = nlmsg_data(nlh);
> +	if (state->ifindex > 0)
> +		dev = __dev_get_by_index(net, state->ifindex);
> +	else
> +		return -EINVAL;
> +
> +	nskb = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
> +	if (!nskb)
> +		return -ENOBUFS;
> +
> +	if (!dev)
> +		return -ENODEV;

Why is this _after_ the nskb allocation? Looks like a leak.

> +	err = rtnl_fill_eec_state(nskb, dev, NETLINK_CB(skb).portid,
> +				  nlh->nlmsg_seq, NULL, nlh->nlmsg_flags);
> +	if (err < 0)
> +		kfree_skb(nskb);
> +	else
> +		err = rtnl_unicast(nskb, net, NETLINK_CB(skb).portid);
> +
> +	return err;
> +}

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
