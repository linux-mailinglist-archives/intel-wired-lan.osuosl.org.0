Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AAB567D53A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jan 2023 20:17:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 050CB4047C;
	Thu, 26 Jan 2023 19:17:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 050CB4047C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674760640;
	bh=kFbu6tRqeGJ49XhHT9Oc7sSYJZrQsWuirK+SLInqpTo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=H3vf96I6Qz77lqLO67R7kOlZYsC/tFxl9FlaeaNg9YH02hAjcBX2nCJ3wWQtIGhX+
	 TtbyBpovo8x5L297SYIAtQP9U+mn8VFdlULWcXYFUz1yCROgNzgMeT3jD1gRPcsboI
	 Pv8ulm7LsdPCBHRB3QN+ySdvAHm0/17SD/e6zeEgAvjzZ1SrvJRrxEvjY+2NHGpwh1
	 URT5lTIuoGqT+YpSFkm6Xy3/r5Hm0lgCJcJf1UMOYCHMcYgu0EvFlsJOKZmzLJZZB6
	 AcZK1tNzSV4Jx//TBmGhFBZVXqaqRHylWaSLvNPvmSJp8Thcj4ASeDUZXPFGr0RO8o
	 v0I9Isod/NaUA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v-Dn1UcowQfO; Thu, 26 Jan 2023 19:17:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D8627402F7;
	Thu, 26 Jan 2023 19:17:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D8627402F7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E6B921BF427
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 19:17:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CC8CD40140
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 19:17:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CC8CD40140
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FPutCbmEfbyr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Jan 2023 19:17:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A82FD40439
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A82FD40439
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 19:17:12 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 412B2B81EBC;
 Thu, 26 Jan 2023 19:17:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34C50C433EF;
 Thu, 26 Jan 2023 19:17:07 +0000 (UTC)
Date: Thu, 26 Jan 2023 21:17:04 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>, Jakub Kicinski <kuba@kernel.org>
Message-ID: <Y9LRsNmI2anlwdNP@unreal>
References: <cover.1674560845.git.leon@kernel.org>
 <c182cae29914fa19ce970859e74234d3de506853.1674560845.git.leon@kernel.org>
 <20230125110226.66dc7eeb@kernel.org> <Y9Irgrgf3uxOjwUm@unreal>
 <75f6e5d0e42a8b9895c1b2330c373da9ed7f41db.camel@redhat.com>
 <Y9JZAEa6HkLMfs2P@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y9JZAEa6HkLMfs2P@unreal>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674760629;
 bh=qZW5kvveXCZHcR/ZqTwrsTUv+BB2nwUSCg4zBsaJH9s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tAGSAWglttIMy99bfGZPzoDW6BfVFKVp/OJ9p9TL6bhcyHUAIWnaDEY1ck7ENRKBK
 Bv/w78fimWKWPySQLNdB9hcVRlNaXgjBmIyYLPNgoxd6yXMqSXsNH1yqsrQoG3wd+o
 MByT21tYwiwZLGCte0wRAtKRx+INlOTm9OjK0twjvj7KbXISBb2g+2z4MNqBD3ufnw
 GhYvvNYc1yd2yP0ndzzR5MCWbeT5Kp8zM9mIkOkvPfwVIFxLcIHQ8y4W0sZYId9gYC
 HK0PSHekWJqMor8pOGBMYH0o+l4xP3VMbSSDCMTZQJC3HXqggvS/kMtfyjEZ90NMK3
 nF9VXFNdu0RPg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=tAGSAWgl
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
 Jonathan Corbet <corbet@lwn.net>, Jay Vosburgh <j.vosburgh@gmail.com>,
 oss-drivers@corigine.com, linux-doc@vger.kernel.org,
 Raju Rangoju <rajur@chelsio.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Ayush Sawal <ayush.sawal@chelsio.com>,
 Simon Horman <simon.horman@corigine.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S . Miller" <davem@davemloft.net>, Andy Gospodarek <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jan 26, 2023 at 12:42:08PM +0200, Leon Romanovsky wrote:
> On Thu, Jan 26, 2023 at 10:45:50AM +0100, Paolo Abeni wrote:
> > On Thu, 2023-01-26 at 09:28 +0200, Leon Romanovsky wrote:
> > > On Wed, Jan 25, 2023 at 11:02:26AM -0800, Jakub Kicinski wrote:
> > > > On Tue, 24 Jan 2023 13:54:57 +0200 Leon Romanovsky wrote:
> > > > > -	err = dev->xfrmdev_ops->xdo_dev_policy_add(xp);
> > > > > +	err = dev->xfrmdev_ops->xdo_dev_policy_add(xp, extack);
> > > > >  	if (err) {
> > > > >  		xdo->dev = NULL;
> > > > >  		xdo->real_dev = NULL;
> > > > >  		xdo->type = XFRM_DEV_OFFLOAD_UNSPECIFIED;
> > > > >  		xdo->dir = 0;
> > > > >  		netdev_put(dev, &xdo->dev_tracker);
> > > > > -		NL_SET_ERR_MSG(extack, "Device failed to offload this policy");
> > > > 
> > > > In a handful of places we do:
> > > > 
> > > > if (!extack->msg)
> > > > 	NL_SET_ERR_MSG(extack, "Device failed to offload this policy");
> > > > 
> > > > in case the device did not provide the extack.
> > > > Dunno if it's worth doing here.
> > > 
> > > Honestly, I followed devlink.c which didn't do that, but looked again
> > > and found that devlink can potentially overwrite messages :)
> > > 
> > > For example in this case:
> > >     997         err = ops->port_fn_state_get(port, &state, &opstate, extack);
> > >     998         if (err) {
> > >     999                 if (err == -EOPNOTSUPP)
> > >    1000                         return 0;
> > >    1001                 return err;
> > >    1002         }
> > >    1003         if (!devlink_port_fn_state_valid(state)) {
> > >    1004                 WARN_ON_ONCE(1);
> > >    1005                 NL_SET_ERR_MSG_MOD(extack, "Invalid state read from driver");
> > >    1006                 return -EINVAL;
> > >    1007         }
> > > 
> > > 
> > > So what do you think about the following change, so we can leave
> > > NL_SET_ERR_MSG_MOD() in devlink and xfrm intact? 
> > > 
> > > diff --git a/include/linux/netlink.h b/include/linux/netlink.h
> > > index 38f6334f408c..d6f3a958e30b 100644
> > > --- a/include/linux/netlink.h
> > > +++ b/include/linux/netlink.h
> > > @@ -101,7 +101,7 @@ struct netlink_ext_ack {
> > >                                                         \
> > >         do_trace_netlink_extack(__msg);                 \
> > >                                                         \
> > > -       if (__extack)                                   \
> > > +       if (__extack && !__extack->msg)                 \
> > >                 __extack->_msg = __msg;                 \
> > >  } while (0)
> > > 
> > > @@ -111,7 +111,7 @@ struct netlink_ext_ack {
> > >  #define NL_SET_ERR_MSG_FMT(extack, fmt, args...) do {                         \
> > >         struct netlink_ext_ack *__extack = (extack);                           \
> > >                                                                                \
> > > -       if (!__extack)                                                         \
> > > +       if (!__extack || __extack->msg)                                        \
> > >                 break;                                                         \
> > >         if (snprintf(__extack->_msg_buf, NETLINK_MAX_FMTMSG_LEN,               \
> > >                      "%s" fmt "%s", "", ##args, "") >=                         \
> > > 
> > 
> > I think it makes sense. With the above patch 3/10 should be updated to
> > preserve the 'catch-all' error message, I guess.
> 
> Great, thanks
> 
> > 
> > Let's see what Jakub thinks ;)

https://lore.kernel.org/netdev/2919eb55e2e9b92265a3ba600afc8137a901ae5f.1674760340.git.leon@kernel.org/T/#u

> > 
> > Cheers,
> > 
> > Paolo
> > 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
