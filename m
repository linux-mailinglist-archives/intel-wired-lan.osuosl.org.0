Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C64A44D9D9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Nov 2021 17:07:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 954DF403E7;
	Thu, 11 Nov 2021 16:07:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id onsTkLnWhET4; Thu, 11 Nov 2021 16:07:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6962840172;
	Thu, 11 Nov 2021 16:07:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DC1A51BF342
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Nov 2021 16:07:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BE2ED81B58
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Nov 2021 16:07:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3U4KvmRwxZ4V for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Nov 2021 16:07:33 +0000 (UTC)
X-Greylist: delayed 00:06:18 by SQLgrey-1.8.0
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B3FAA80D6B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Nov 2021 16:07:32 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-282-qMVe2BLbM32ATq7CSvPpIQ-1; Thu, 11 Nov 2021 11:01:10 -0500
X-MC-Unique: qMVe2BLbM32ATq7CSvPpIQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CD013100C660;
 Thu, 11 Nov 2021 16:01:06 +0000 (UTC)
Received: from hog (unknown [10.39.192.210])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D20485DA61;
 Thu, 11 Nov 2021 16:01:03 +0000 (UTC)
Date: Thu, 11 Nov 2021 17:01:02 +0100
From: Sabrina Dubroca <sd@queasysnail.net>
To: Maciej Machnikowski <maciej.machnikowski@intel.com>
Message-ID: <YY0+PmNU4MSGfgqA@hog>
References: <20211110114448.2792314-1-maciej.machnikowski@intel.com>
 <20211110114448.2792314-3-maciej.machnikowski@intel.com>
MIME-Version: 1.0
In-Reply-To: <20211110114448.2792314-3-maciej.machnikowski@intel.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sd@queasysnail.net
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: queasysnail.net
Content-Disposition: inline
Subject: Re: [Intel-wired-lan] [PATCH v3 net-next 2/6] rtnetlink: Add new
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
Cc: mkubecek@suse.cz, petrm@nvidia.com, abyagowi@fb.com, saeed@kernel.org,
 netdev@vger.kernel.org, richardcochran@gmail.com, idosch@idosch.org,
 linux-kselftest@vger.kernel.org, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, michael.chan@broadcom.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello Maciej,

2021-11-10, 12:44:44 +0100, Maciej Machnikowski wrote:
> diff --git a/include/uapi/linux/rtnetlink.h b/include/uapi/linux/rtnetlink.h
> index 5888492a5257..1d8662afd6bd 100644
> --- a/include/uapi/linux/rtnetlink.h
> +++ b/include/uapi/linux/rtnetlink.h
> @@ -185,6 +185,9 @@ enum {
>  	RTM_GETNEXTHOPBUCKET,
>  #define RTM_GETNEXTHOPBUCKET	RTM_GETNEXTHOPBUCKET
>  
> +	RTM_GETEECSTATE = 124,
> +#define RTM_GETEECSTATE	RTM_GETEECSTATE

I'm not sure about this. All the other RTM_GETxxx are such that
RTM_GETxxx % 4 == 2. Following the current pattern, 124 should be
reserved for RTM_NEWxxx, and RTM_GETEECSTATE would be 126.

Also, why are you leaving a gap (which you end up filling in patch
4/6)?

> +
>  	__RTM_MAX,
>  #define RTM_MAX		(((__RTM_MAX + 3) & ~3) - 1)
>  };
> diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
> index 2af8aeeadadf..03bc773d0e69 100644
> --- a/net/core/rtnetlink.c
> +++ b/net/core/rtnetlink.c
> @@ -5467,6 +5467,83 @@ static int rtnl_stats_dump(struct sk_buff *skb, struct netlink_callback *cb)
>  	return skb->len;
>  }
>  
> +static int rtnl_fill_eec_state(struct sk_buff *skb, struct net_device *dev,
> +			       u32 portid, u32 seq, struct netlink_callback *cb,
> +			       int flags, struct netlink_ext_ack *extack)
> +{
[...]
> +	nlh = nlmsg_put(skb, portid, seq, RTM_GETEECSTATE, sizeof(*state_msg),
> +			flags);
> +	if (!nlh)
> +		return -EMSGSIZE;
> +
> +	state_msg = nlmsg_data(nlh);
> +	state_msg->ifindex = dev->ifindex;

Why stuff this in a struct instead of using an attribute?

> +
> +	if (nla_put_u32(skb, IFLA_EEC_STATE, state))
> +		return -EMSGSIZE;
> +
> +	if (!ops->ndo_get_eec_src)
> +		goto end_msg;
> +
> +	err = ops->ndo_get_eec_src(dev, &src_idx, extack);
> +	if (err)
> +		return err;
> +
> +	if (nla_put_u32(skb, IFLA_EEC_SRC_IDX, src_idx))
> +		return -EMSGSIZE;
> +
> +end_msg:
> +	nlmsg_end(skb, nlh);
> +	return 0;
> +}
> +

Thanks,

-- 
Sabrina

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
