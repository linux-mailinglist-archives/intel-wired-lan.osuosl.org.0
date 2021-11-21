Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B3E45828F
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 Nov 2021 09:45:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B82BB40430;
	Sun, 21 Nov 2021 08:45:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XC1_CWsVdXMd; Sun, 21 Nov 2021 08:45:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 89BD740383;
	Sun, 21 Nov 2021 08:45:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6EE121BF2F4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Nov 2021 08:45:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5C732605D1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Nov 2021 08:45:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N6brtuFt3TfG for <intel-wired-lan@lists.osuosl.org>;
 Sun, 21 Nov 2021 08:45:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 67055605B2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Nov 2021 08:45:16 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4E01C60555;
 Sun, 21 Nov 2021 08:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637484316;
 bh=oIzTeQ8dWAqf5/wiroWk46ZDKNRp9gwSpRMBo2v6U34=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LMvUbGy4dpaXt/9MkfEvTpXXzKfVEU7u1KfV0iD7HtBVSRJq1rdnPkgxj3e9DzDI+
 1yjjzFlTUaQnALRouTEiWI2jCkp0rcEIpzL4Qu+0wpntZAqZ/8lTP+BAu+ZpiWesqb
 6Qw/Q4VD1Vt8xFrkWehtozTxZAsYb/4OXr7gZZM+zY+FBYudZuYdtkit4xEG+RNxnL
 sIQMQyFuzItDxRm4iNyXPBusEgniI6M+yH+AB2eES5GS0E2NiVEKjWadDwD34o7aZc
 gycj1JeqS8h1/vPbc1+VpjNqcka6gZ0jNy+998KYW5lYW7AuJQkU3mKl0L+Z1tAiIQ
 Y36AogvhKIMIA==
Date: Sun, 21 Nov 2021 10:45:12 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <YZoHGKqLz6UBk2Sx@unreal>
References: <cover.1637173517.git.leonro@nvidia.com>
 <6176a137a4ded48501e8a06fda0e305f9cfc787c.1637173517.git.leonro@nvidia.com>
 <20211117204956.6a36963b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <YZYFvIK9mkP107tD@unreal>
 <20211118174813.54c3731f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <YZfFDSnnjOG+wSyK@unreal>
 <20211119081017.6676843b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211119081017.6676843b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
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

On Fri, Nov 19, 2021 at 08:10:17AM -0800, Jakub Kicinski wrote:
> On Fri, 19 Nov 2021 17:38:53 +0200 Leon Romanovsky wrote:
> > On Thu, Nov 18, 2021 at 05:48:13PM -0800, Jakub Kicinski wrote:
> > > On Thu, 18 Nov 2021 09:50:20 +0200 Leon Romanovsky wrote:  
> > > > And it shouldn't. devlink_resource_find() will return valid resource only
> > > > if there driver is completely bogus with races or incorrect allocations of
> > > > resource_id.
> > > > 
> > > > devlink_*_register(..)
> > > >  mutex_lock(&devlink->lock);
> > > >  if (devlink_*_find(...)) {
> > > >     mutex_unlock(&devlink->lock);
> > > >     return ....;
> > > >  }
> > > >  .....
> > > > 
> > > > It is almost always wrong from locking and layering perspective the pattern above,
> > > > as it is racy by definition if not protected by top layer.
> > > > 
> > > > There are exceptions from the rule above, but devlink is clearly not the
> > > > one of such exceptions.  
> > > 
> > > Just drop the unnecessary "cleanup" patches and limit the amount 
> > > of driver code we'll have to revert if your approach fails.  
> > 
> > My approach works, exactly like it works in other subsystems.
> > https://lore.kernel.org/netdev/cover.1636390483.git.leonro@nvidia.com/
> 
> What "other subsystems"? I'm aware of the RFC version of these patches.

Approach to have fine-grained locking scheme, instead of having one big lock.
This was done in MM for mmap_sem, we did it for RDMA too.

> 
> Breaking up the locks to to protect sub-objects only is fine for
> protecting internal lists but now you can't guarantee that the object
> exists when driver is called.

I can only guess about which objects you are talking.

If you are talking about various devlink sub-objects (ports, traps,
e.t.c), they created by the drivers and as such should be managed by them.
Also they are connected to devlink which is guaranteed to exist. At the end,
they called to devlink_XXX->devlink pointer without any existence check.

If you are talking about devlink instance itself, we guarantee that it
exists between devlink_alloc() and devlink_free(). It seems to me pretty
reasonable request from drivers do not access devlink before devlink_alloc()
or after devlink_free(),

> 
> I'm sure you'll utter your unprovable "in real drivers.." but the fact
> is my approach does not suffer from any such issues. Or depends on
> drivers registering devlink last.

Registration of devlink doesn't do anything except opening it to the world.
The lifetime is controlled with alloc and free. My beloved sentence "in
real drivers ..." belongs to use of devlink_put and devlink_locks outside
of devlink.c and nothing more.

> 
> I can start passing a pointer to a devlink_port to split/unsplit
> functions, which is a great improvement to the devlink driver API.

You can do it with my approach too. We incremented reference counter
of devlink instance when devlink_nl_cmd_port_split_doit() was called,
and we can safely take devlink->port_list_lock lock before returning
from pre_doit.

> 
> > We are waiting to see your proposal extended to support parallel devlink
> > execution and to be applied to real drivers.
> > https://lore.kernel.org/netdev/20211030231254.2477599-1-kuba@kernel.org/
> 
> The conversion to xarray you have done is a great improvement, I don't
> disagree with the way you convert to allow parallel calls either.
> 
> I already told you that real drivers can be converted rather easily,
> even if it's not really necessary.
> 
> But I'm giving you time to make your proposal. If I spend time
> polishing my patches I'll be even more eager to put this behind me.

I see exposure of devlink internals to the driver as last resort, so I
stopped to make proposals after your responses:

"I prefer my version."
https://lore.kernel.org/netdev/20211108101646.0a4e5ca4@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com/

"If by "fixed first" you mean it needs 5 locks to be added and to remove
any guarantees on sub-object lifetime then no thanks."
https://lore.kernel.org/netdev/20211108104608.378c106e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com/

> 
> > Anyway, you are maintainer, you want half work, you will get half work.
> 
> What do you mean half work? You have a record of breaking things 
> in the area and changing directions. How is my request to limit
> unnecessary "cleanups" affecting drivers until the work is finished
> not perfectly reasonable?!?!

I don't know what made you think so. My end goals (parallel execution
and safe devlink reload) and solutions didn't changes:
 * Devlink instance is safe to access by kernel between devlink_alloc() and devlink_free().
 * Devlink instance is visible for users between devlink_register() and devlink_unregister().
 * Locks should be fine-grained and limited.

By saying, half work, I mean that attempt to limit locks leave many
functions to be such that can't fail and as such should be void and not
"return 0".

And regarding "breaking things", I'm not doing it for fun, but with real
desire to improve kernel for everyone, not only for our driver.

> 
> > > I spent enough time going back and forth with you.
> > 
> > Disagreements are hard for everyone, not only for you.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
