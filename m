Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A746945D6A6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Nov 2021 10:02:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 22F54408D3;
	Thu, 25 Nov 2021 09:02:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZLl7J5_wpQnQ; Thu, 25 Nov 2021 09:02:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0AA0408CF;
	Thu, 25 Nov 2021 09:02:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 609371BF33B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Nov 2021 09:02:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 43081408CF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Nov 2021 09:02:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FX-ETaNztWGG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Nov 2021 09:02:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 56438408CD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Nov 2021 09:02:25 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 466C660E0B;
 Thu, 25 Nov 2021 09:02:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637830944;
 bh=V0wRQBAcYmUdNiotf98WOmDxtsRPBnPWu1gQjB+IIbU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bTdWouWhrEHIX0DJQfJ9Jq7H74xB2MJMqDskA9RDtR+oIrDO7mb5bsO16af1I4wUC
 6Ct+YxcfkeHNRsZuvc9ACSEzq7IQPIB/3eFvowh/Et4z1a3VPLRHrAf9V4fZuOEPIC
 ro6wcuNR04ImwOJNWigPT2lXmqWZuMaqipH7OzzrG4tnj23qMRUfIZIkq75BFW1Ktw
 tr+l02VmKD754YsjNDWHhmJ6GchO2yNeUjC9XhXHV2j5pxtSVbSNERPdlJIymhVQLO
 zqXaROjyy8oaLgnYFrA8M2Uj+f1G+/tZGxqYvOidPIUvbM1ShQmlFo+Sn5lIoizFIN
 QEK+QQ7Zs+HpA==
Date: Thu, 25 Nov 2021 11:02:21 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <YZ9RHX8CbIMbP55t@unreal>
References: <6176a137a4ded48501e8a06fda0e305f9cfc787c.1637173517.git.leonro@nvidia.com>
 <20211117204956.6a36963b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <YZYFvIK9mkP107tD@unreal>
 <20211118174813.54c3731f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <YZfFDSnnjOG+wSyK@unreal>
 <20211119081017.6676843b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <YZoHGKqLz6UBk2Sx@unreal>
 <20211122182728.370889f2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <YZynSa6s8kBKtSYB@unreal>
 <20211123153312.4eecb490@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211123153312.4eecb490@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 5/6] devlink: Reshuffle
 resource registration logic
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Simon Horman <simon.horman@corigine.com>, oss-drivers@corigine.com,
 Ioana Ciornei <ioana.ciornei@nxp.com>, drivers@pensando.io,
 Florian Fainelli <f.fainelli@gmail.com>, linux-rdma@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Vladimir Oltean <vladimir.oltean@nxp.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Jiri Pirko <jiri@nvidia.com>,
 Michael Chan <michael.chan@broadcom.com>, Aya Levin <ayal@mellanox.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>, UNGLinuxDriver@microchip.com,
 Taras Chornyi <tchornyi@marvell.com>, Shannon Nelson <snelson@pensando.io>,
 Saeed Mahameed <saeedm@nvidia.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Nov 23, 2021 at 03:33:12PM -0800, Jakub Kicinski wrote:
> On Tue, 23 Nov 2021 10:33:13 +0200 Leon Romanovsky wrote:
> > > > You can do it with my approach too. We incremented reference counter
> > > > of devlink instance when devlink_nl_cmd_port_split_doit() was called,
> > > > and we can safely take devlink->port_list_lock lock before returning
> > > > from pre_doit.  
> > > 
> > > Wait, I thought you'd hold devlink->lock around split/unsplit.  
> > 
> > I'm holding.
> > 
> >     519 static int devlink_nl_pre_doit(const struct genl_ops *ops,
> >     520                                struct sk_buff *skb, struct genl_info *info)
> >     521 {
> >     ...
> >     529
> >     530         mutex_lock(&devlink->lock);
> 
> Then I'm confused why you said you need to hold a ref count on devlink.

This was an example to your sentence "I can start passing a pointer
to a devlink_port to split/unsplit functions, which is a great improvement
to the devlink driver API."
https://lore.kernel.org/all/20211119081017.6676843b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com/

In my view, it is complete over-engineering and not needed at all. In
current driver model, you can pass devlink_port pointer pretty safely
without worries that "->devlink" disappear.

> Is it devlink_unregister() that's not taking devlink->lock?

Maybe, but my rationale for devlink_get in my example was slightly different.
We need to use it when the ->devlink structure and sub-object are
managed completely independent with different lifetimes and sub-object
can over-live the devlink structure.

All devlink_*_register() calls require valid devlink structure, so as I
wrote above, devlink_get is not needed really needed.

However you used that example so many times that I started to fear that
I'm missing something very basic.

> 
> > > Please look at the port splitting case, mlx5 doesn't implement it
> > > but it's an important feature.  
> > 
> > I'll, but please don't forget that it was RFC, just to present that
> > devlink can be changed internally without exposing internals.
> > 
> > > Either way, IDK how ref count on devlink helps with lifetime of a
> > > subobject. You must assume the sub-objects can only be created outside
> > > of the time devlink instance is visible or under devlink->lock?  
> > 
> > The devlink lifetime is:
> > stages:        I                   II                   III   
> >  devlink_alloc -> devlink_register -> devlink_unregister -> devlink_free.
> > 
> > All sub-objects should be created between devlink_alloc and devlink_free.
> > It will ensure that ->devlink pointer is always valid.
> > 
> > Stage I:
> >  * There is no need to hold any devlink locks or increase reference counter.
> >    If driver doesn't do anything crazy during its init, nothing in devlink
> >    land will run in parallel. 
> > Stage II:
> >  * There is a need to hold devlink->lock and/or play with reference counter
> >    and/or use fine-grained locks. Users can issue "devlink ..." commands.
> 
> So sub-objects can (dis)appear only in I/III or under devlink->lock.
> Why did you add the per-sub object list locks, then?

There are number of reasons and not all of them are technical.

I wanted to do that, my initial plan was to cleanly separate user-visible
API vs. in-kernel API and use one lock or no locks at all.

But at some point of time, I recalculated my path, when I saw that
I'm failing to explain even simple devlink lifetime model, together
with warm feedback from the community and need to have this patch:

[RFC PATCH 14/16] devlink: Require devlink lock during device reload
https://lore.kernel.org/netdev/ad7f5f275bcda1ee058d7bd3020b7d85cd44b9f6.1636390483.git.leonro@nvidia.com/

That patch is super-important in the devlink_reload puzzle, it closes the hack
used in devlink_reload flow to allow to call to same devlink_*_register() calls
without taking devlink->lock, so they can take it. In order to do it, I
used list locks, because only for this that devlink->lock was needed in
these calls.

However, there is a way to avoid list locks. It can be achieved if we start
to manage devlink state machine (at least for reload) internally and add
something like that in devlink_*_register() calls:

 if (devlink->not_in_reload)
    mutex_lock(&devlink->lock);

It doesn't look nice, and invites immediate question: "why don't we
provide two APIs? locked and unlocked? Locked for reload, and unlocked
for all other parts". Unfortunately, this will require major changes in
the drivers and in offline conversation I was told "do whatever you need
in devlink as long as it doesn't require change in the driver, we want
same drver flow for probe and reload.".

Thanks
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
