Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CCE9459E22
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Nov 2021 09:33:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 947BA605EE;
	Tue, 23 Nov 2021 08:33:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gf-Ink66yyy1; Tue, 23 Nov 2021 08:33:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 77642605EB;
	Tue, 23 Nov 2021 08:33:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3C7F91BF4DB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Nov 2021 08:33:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 28A73605EB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Nov 2021 08:33:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VfEL9xC-jDDV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Nov 2021 08:33:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 21ECB605DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Nov 2021 08:33:16 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id DB6C1608FB;
 Tue, 23 Nov 2021 08:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637656396;
 bh=DShymrwjT8suOFERzKZ8RSxp06h7hl6MKSGRjFp0dLg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=q59DBGYSmDaBwa7sPPUjvRJjpQG1eJKGUt7sLDriH3yrdEXyDpjqkA9IvTlTlVTZ/
 ewrz2G8bQlhYVwM5HL2QbJJ4gxwb3ODIgoiNDo1A5pLJFUms4+zvWQPjFpntswlZfS
 CBbmEV6/a7YS+Azy6/Is/4wFsOXRd97C0Cpwx/PLjyTB6F5+mIwTFPrs8ERdU8Oif2
 5yesb4yX7yYi/Fm/QVlSeqd0V1C+PrbZ6IuVl2tDCJgJz5VznKLWizENLhrfQVeS2O
 /H6yIXtDXIeDsA3Wg2dCeXt46nJfjTE6FZXeZT8gtGJj64ySaj6m0KfyNhDT/X/K09
 sPIVP0r6tdEjA==
Date: Tue, 23 Nov 2021 10:33:13 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <YZynSa6s8kBKtSYB@unreal>
References: <cover.1637173517.git.leonro@nvidia.com>
 <6176a137a4ded48501e8a06fda0e305f9cfc787c.1637173517.git.leonro@nvidia.com>
 <20211117204956.6a36963b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <YZYFvIK9mkP107tD@unreal>
 <20211118174813.54c3731f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <YZfFDSnnjOG+wSyK@unreal>
 <20211119081017.6676843b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <YZoHGKqLz6UBk2Sx@unreal>
 <20211122182728.370889f2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211122182728.370889f2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
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

On Mon, Nov 22, 2021 at 06:27:28PM -0800, Jakub Kicinski wrote:
> On Sun, 21 Nov 2021 10:45:12 +0200 Leon Romanovsky wrote:
> > On Fri, Nov 19, 2021 at 08:10:17AM -0800, Jakub Kicinski wrote:
> > > On Fri, 19 Nov 2021 17:38:53 +0200 Leon Romanovsky wrote:  
> > > > My approach works, exactly like it works in other subsystems.
> > > > https://lore.kernel.org/netdev/cover.1636390483.git.leonro@nvidia.com/  
> > > 
> > > What "other subsystems"? I'm aware of the RFC version of these patches.  
> > 
> > Approach to have fine-grained locking scheme, instead of having one big lock.
> > This was done in MM for mmap_sem, we did it for RDMA too.
> 
> You're breaking things up to avoid lock ordering issues. The user can
> still only run a single write command at a time.
> 
> > > Breaking up the locks to to protect sub-objects only is fine for
> > > protecting internal lists but now you can't guarantee that the object
> > > exists when driver is called.  
> > 
> > I can only guess about which objects you are talking.
> 
> It obviously refers to the port splitting I mentioned below.
> 
> > If you are talking about various devlink sub-objects (ports, traps,
> > e.t.c), they created by the drivers and as such should be managed by them.
> > Also they are connected to devlink which is guaranteed to exist. At the end,
> > they called to devlink_XXX->devlink pointer without any existence check.
> > 
> > If you are talking about devlink instance itself, we guarantee that it
> > exists between devlink_alloc() and devlink_free(). It seems to me pretty
> > reasonable request from drivers do not access devlink before devlink_alloc()
> > or after devlink_free(),
> > 
> > > I'm sure you'll utter your unprovable "in real drivers.." but the fact
> > > is my approach does not suffer from any such issues. Or depends on
> > > drivers registering devlink last.  
> > 
> > Registration of devlink doesn't do anything except opening it to the world.
> > The lifetime is controlled with alloc and free. My beloved sentence "in
> > real drivers ..." belongs to use of devlink_put and devlink_locks outside
> > of devlink.c and nothing more.
> 
> As soon as there is a inter-dependency between two subsystems "must 
> be last" breaks down.

"Must be last" is better to be changed "when the device is ready".

-----------------------------------------------------------------
> The real question is whether you now require devlink_register()
> to go last in general? 

No, it is not requirement, but my suggestion. You need to be aware that
after call to devlink_register(), the device will be fully open for devlink
netlink access. So it is strongly advised to put devlink_register to be the
last command in PCI initialization sequence.

https://lore.kernel.org/netdev/YXhVd16heaHCegL1@unreal/
--------------------------------------------------------------------

> 
> > > I can start passing a pointer to a devlink_port to split/unsplit
> > > functions, which is a great improvement to the devlink driver API.  
> > 
> > You can do it with my approach too. We incremented reference counter
> > of devlink instance when devlink_nl_cmd_port_split_doit() was called,
> > and we can safely take devlink->port_list_lock lock before returning
> > from pre_doit.
> 
> Wait, I thought you'd hold devlink->lock around split/unsplit.

I'm holding.

    519 static int devlink_nl_pre_doit(const struct genl_ops *ops,
    520                                struct sk_buff *skb, struct genl_info *info)
    521 {
    ...
    529
    530         mutex_lock(&devlink->lock);


> 
> Please look at the port splitting case, mlx5 doesn't implement it
> but it's an important feature.

I'll, but please don't forget that it was RFC, just to present that
devlink can be changed internally without exposing internals.

> 
> Either way, IDK how ref count on devlink helps with lifetime of a
> subobject. You must assume the sub-objects can only be created outside
> of the time devlink instance is visible or under devlink->lock?

The devlink lifetime is:
stages:        I                   II                   III   
 devlink_alloc -> devlink_register -> devlink_unregister -> devlink_free.

All sub-objects should be created between devlink_alloc and devlink_free.
It will ensure that ->devlink pointer is always valid.

Stage I:
 * There is no need to hold any devlink locks or increase reference counter.
   If driver doesn't do anything crazy during its init, nothing in devlink
   land will run in parallel. 
Stage II:
 * There is a need to hold devlink->lock and/or play with reference counter
   and/or use fine-grained locks. Users can issue "devlink ..." commands.
Stage III:

Thanks
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
