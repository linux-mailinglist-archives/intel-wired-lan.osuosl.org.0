Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FA367C8D4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jan 2023 11:42:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CE52640A8E;
	Thu, 26 Jan 2023 10:42:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CE52640A8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674729741;
	bh=so66o+ElByXQqAy9dnrn4IETE/F6T+G1AOmUc2rlETc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tBqzD7CRl+q17sLv9qguUCTst5kEh1r3t3YbDu6dY99PnPavi3SqPTGsjZdn131Dk
	 G9vqH5aZ8EHXJNMn4Npm2oG9V176/NN5orz5je21qu82+4XlCfcapm9yO7ppaFvvUj
	 6YJwWn6jUBfZnthuRZfHDIoZ5y2dFmS2NLyqLX+erOFF0kD9OfYY5vz2VSwaGipdF6
	 GIXq6c9rkE9cdDE7fFbQhtoXGal6OIj7nD3GTUD4ljHn7ID+Ff3QUKjHzB9nkVSddH
	 XG0dVIffj/qKlEnHhe29wYcqR4l8sS5UE+xfEIDHbQX6dHcidp9y7aMjNCTrK4RpDB
	 lROu/4diZ3LTQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u3ehYb_dH45k; Thu, 26 Jan 2023 10:42:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A4CB44026E;
	Thu, 26 Jan 2023 10:42:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A4CB44026E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 864311BF357
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 10:42:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5DFF181F76
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 10:42:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5DFF181F76
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3cJk3ymLIkFg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Jan 2023 10:42:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8296481F28
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8296481F28
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 10:42:14 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 55CA1617A0;
 Thu, 26 Jan 2023 10:42:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F24A1C433D2;
 Thu, 26 Jan 2023 10:42:11 +0000 (UTC)
Date: Thu, 26 Jan 2023 12:42:08 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <Y9JZAEa6HkLMfs2P@unreal>
References: <cover.1674560845.git.leon@kernel.org>
 <c182cae29914fa19ce970859e74234d3de506853.1674560845.git.leon@kernel.org>
 <20230125110226.66dc7eeb@kernel.org> <Y9Irgrgf3uxOjwUm@unreal>
 <75f6e5d0e42a8b9895c1b2330c373da9ed7f41db.camel@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <75f6e5d0e42a8b9895c1b2330c373da9ed7f41db.camel@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674729732;
 bh=xW9HRR8a9oajieaxS1LWPtit9dg4vphLwBMUXfq8ERQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rV0Chr7piTtIcyMjMupZz/Sa/O2hbYSFnkfEMLSGpfXRWjQRUUsKAagGwfHGUu8m2
 2f7YsnHwth8dfOpc49W4iHIPfnf/nRNEZBDvkLcTlwhfqwVOKcb9nLuEBXEXYAmAy5
 ncBs/YZL/b9VDJTreShkTQtmF1LIurRaaxQDdmcWbPHB2+Lxu3RbchfURLdN6cnROr
 LqYu7yzvmuwKSQrq+jO5pwxelcSRU3q1ZHZrBVIcri6OFQHkLn+dWNngVEtJ/Elfzg
 R6WHtJ9NGq08qVxOD5TUxaXC2gIfLY9LJmkAYADp9ROB/Xs9XVLunX7h34jWts+GJW
 ORXa5mJ7q3GOg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=rV0Chr7p
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 01/10] xfrm: extend add
 policy callback to set failure reason
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
Cc: Steffen Klassert <steffen.klassert@secunet.com>,
 Veaceslav Falico <vfalico@gmail.com>, Herbert Xu <herbert@gondor.apana.org.au>,
 Jonathan Corbet <corbet@lwn.net>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jay Vosburgh <j.vosburgh@gmail.com>, oss-drivers@corigine.com,
 linux-doc@vger.kernel.org, Raju Rangoju <rajur@chelsio.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Ayush Sawal <ayush.sawal@chelsio.com>,
 Simon Horman <simon.horman@corigine.com>, Jakub Kicinski <kuba@kernel.org>,
 Saeed Mahameed <saeedm@nvidia.com>, "David S . Miller" <davem@davemloft.net>,
 Andy Gospodarek <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jan 26, 2023 at 10:45:50AM +0100, Paolo Abeni wrote:
> On Thu, 2023-01-26 at 09:28 +0200, Leon Romanovsky wrote:
> > On Wed, Jan 25, 2023 at 11:02:26AM -0800, Jakub Kicinski wrote:
> > > On Tue, 24 Jan 2023 13:54:57 +0200 Leon Romanovsky wrote:
> > > > -	err = dev->xfrmdev_ops->xdo_dev_policy_add(xp);
> > > > +	err = dev->xfrmdev_ops->xdo_dev_policy_add(xp, extack);
> > > >  	if (err) {
> > > >  		xdo->dev = NULL;
> > > >  		xdo->real_dev = NULL;
> > > >  		xdo->type = XFRM_DEV_OFFLOAD_UNSPECIFIED;
> > > >  		xdo->dir = 0;
> > > >  		netdev_put(dev, &xdo->dev_tracker);
> > > > -		NL_SET_ERR_MSG(extack, "Device failed to offload this policy");
> > > 
> > > In a handful of places we do:
> > > 
> > > if (!extack->msg)
> > > 	NL_SET_ERR_MSG(extack, "Device failed to offload this policy");
> > > 
> > > in case the device did not provide the extack.
> > > Dunno if it's worth doing here.
> > 
> > Honestly, I followed devlink.c which didn't do that, but looked again
> > and found that devlink can potentially overwrite messages :)
> > 
> > For example in this case:
> >     997         err = ops->port_fn_state_get(port, &state, &opstate, extack);
> >     998         if (err) {
> >     999                 if (err == -EOPNOTSUPP)
> >    1000                         return 0;
> >    1001                 return err;
> >    1002         }
> >    1003         if (!devlink_port_fn_state_valid(state)) {
> >    1004                 WARN_ON_ONCE(1);
> >    1005                 NL_SET_ERR_MSG_MOD(extack, "Invalid state read from driver");
> >    1006                 return -EINVAL;
> >    1007         }
> > 
> > 
> > So what do you think about the following change, so we can leave
> > NL_SET_ERR_MSG_MOD() in devlink and xfrm intact? 
> > 
> > diff --git a/include/linux/netlink.h b/include/linux/netlink.h
> > index 38f6334f408c..d6f3a958e30b 100644
> > --- a/include/linux/netlink.h
> > +++ b/include/linux/netlink.h
> > @@ -101,7 +101,7 @@ struct netlink_ext_ack {
> >                                                         \
> >         do_trace_netlink_extack(__msg);                 \
> >                                                         \
> > -       if (__extack)                                   \
> > +       if (__extack && !__extack->msg)                 \
> >                 __extack->_msg = __msg;                 \
> >  } while (0)
> > 
> > @@ -111,7 +111,7 @@ struct netlink_ext_ack {
> >  #define NL_SET_ERR_MSG_FMT(extack, fmt, args...) do {                         \
> >         struct netlink_ext_ack *__extack = (extack);                           \
> >                                                                                \
> > -       if (!__extack)                                                         \
> > +       if (!__extack || __extack->msg)                                        \
> >                 break;                                                         \
> >         if (snprintf(__extack->_msg_buf, NETLINK_MAX_FMTMSG_LEN,               \
> >                      "%s" fmt "%s", "", ##args, "") >=                         \
> > 
> 
> I think it makes sense. With the above patch 3/10 should be updated to
> preserve the 'catch-all' error message, I guess.

Great, thanks

> 
> Let's see what Jakub thinks ;)
> 
> Cheers,
> 
> Paolo
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
