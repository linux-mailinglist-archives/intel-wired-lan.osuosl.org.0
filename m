Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 197EC3FC891
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Aug 2021 15:44:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 26F484052A;
	Tue, 31 Aug 2021 13:44:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dSmOSGO_JRey; Tue, 31 Aug 2021 13:44:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9C4CB4053B;
	Tue, 31 Aug 2021 13:44:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E35C21BF271
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 13:44:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DF7AC404A0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 13:44:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TT12G2fbfRfV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Aug 2021 13:44:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6025E40466
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 13:44:12 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B6ADB60462;
 Tue, 31 Aug 2021 13:44:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1630417452;
 bh=h6DAOLijRRRPp+4qBDSQVAxRn9bfcUHoqG05ZY+yI3k=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=cwdf6iKYBXZL38Ji/H6ZR41aiwoZcZVuVdo5Ch0IGS80ml1WQscGxuI3VZdY5xAwd
 dQzs6fDxy10JlaBuCIXzO0uBUBmuYLfawbanaJtzvvkcf0ZJvbAOn6n0DC7X5RcHEL
 ezzbMyNUvs+LYWLbEnlG4cVnIXYTW9O6kDmOLRo08SqAJsraa7gWADto5w5z3cQ24/
 6aV5iMYl2IV5qZJX67mEAHj9/gMT/aLmAoZ5+5dsoM9vXwWuOZad339DaGRlSsJEKs
 bESgQoDuxyyIHPIUS1lnaPRpczg+Yqnnr6cZvnTQ2TkA0VUF+A7RyfI7K/PktU3Rqg
 WKVluewP60yaA==
Date: Tue, 31 Aug 2021 06:44:10 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Maciej Machnikowski <maciej.machnikowski@intel.com>
Message-ID: <20210831064410.635eb329@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210831115233.239720-2-maciej.machnikowski@intel.com>
References: <20210831115233.239720-1-maciej.machnikowski@intel.com>
 <20210831115233.239720-2-maciej.machnikowski@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] rtnetlink: Add new
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

On Tue, 31 Aug 2021 13:52:32 +0200 Maciej Machnikowski wrote:
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

> +#define EEC_FLAG_STATE_VAL	(1 << 0)
> +#define EEC_FLAG_SRC_VAL	(1 << 1)
> +#define EEC_FLAG_PIN_VAL	(1 << 2)
> +
> +struct if_eec_state_msg {
> +	__u8 flags;
> +	__u8 state;
> +	__u8 src;
> +	__u8 pin;
> +	__u32 ifindex;
> +};

Break it up into attributes, please. It's the idiomatic way of dealing
with multiple values these days in netlink. Makes validation,
extensiblility, feature discover etc. etc. much easier down the line.

> +static int rtnl_fill_eec_state(struct sk_buff *msg, struct net_device *dev,
> +			       u32 portid, u32 seq, struct netlink_callback *cb,
> +			       int flags, struct netlink_ext_ack *extack)
> +{
> +	const struct net_device_ops *ops = dev->netdev_ops;
> +	struct if_eec_state_msg *state;
> +	struct nlmsghdr *nlh;
> +	int err;
> +
> +	ASSERT_RTNL();
> +
> +	if (!ops->ndo_get_eec_state)
> +		return -EOPNOTSUPP;
> +
> +	nlh = nlmsg_put(msg, portid, seq, RTM_GETEECSTATE,
> +			sizeof(*state), flags);
> +	if (!nlh)
> +		return -EMSGSIZE;
> +
> +	state = nlmsg_data(nlh);
> +
> +	memset(state, 0, sizeof(*state));
> +	err = ops->ndo_get_eec_state(dev, state, extack);
> +	if (err)
> +		return err;

return ops->ndo_get_eec_state(dev, state, extack);

Even tho it's perfectly fine as is IMO there are bots out there
matching on this pattern so let's not feed them.

> +	return 0;
> +}
> +
> +static int rtnl_eec_state_get(struct sk_buff *skb, struct nlmsghdr *nlh,
> +			      struct netlink_ext_ack *extack)
> +{
> +	struct net *net = sock_net(skb->sk);
> +	struct if_eec_state_msg *state;
> +	struct net_device *dev;
> +	struct sk_buff *nskb;
> +	int err;
> +
> +	state = nlmsg_data(nlh);
> +	if (state->ifindex > 0)
> +		dev = __dev_get_by_index(net, state->ifindex);
> +	else
> +		return -EINVAL;

Keep the expected path unindented:

	if (state->ifindex <= 0)
		return -EINVAL;

	dev = __dev_get_by_index(net, state->ifindex);
	if (!dev)
		return -ENODEV;

That said I'm not sure why rtnl_stats_get() checks the ifindex is
positive in the first place (which is what I assumed inspired you).
We can just call __dev_get_by_index() and have it fail AFAICS.

> +	if (!dev)
> +		return -ENODEV;
> +
> +	nskb = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
> +	if (!nskb)
> +		return -ENOBUFS;
> +
> +	err = rtnl_fill_eec_state(nskb, dev, NETLINK_CB(skb).portid,
> +				  nlh->nlmsg_seq, NULL, nlh->nlmsg_flags,
> +				  extack);
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
