Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1329145B03F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Nov 2021 00:33:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5E778403CE;
	Tue, 23 Nov 2021 23:33:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GQ-hxjMc8hXH; Tue, 23 Nov 2021 23:33:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2BA01403B0;
	Tue, 23 Nov 2021 23:33:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9F7281BF317
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Nov 2021 23:33:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 84AF88175B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Nov 2021 23:33:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UyratAwF9qOr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Nov 2021 23:33:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F41A180D06
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Nov 2021 23:33:14 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9D28A60FE6;
 Tue, 23 Nov 2021 23:33:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637710394;
 bh=kG8n/02UM0CjGGDvJB4iPJ9K02MPrvmSl94Egqf9ZVw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=skemYkfAQOvf20rppso/nQxkkV8H9HKEwDnPlnSg7RXovNYceEX070AP68QuXeQXh
 TroMsQx4Yy0W6E70/bLP+A9lTLUV6B4P0dOXaGPm4YHd6mVEG4uU224vrSVRt69cAv
 T4LFsKq3gVS+q5y/9Dyx4Rl5Ld9UQ5OKWd3dv3ykbiRsHL0t/cxivq0y2F+Pve7j3c
 /AHQ6h5bAKduQdEc86h0mfsWjnJ2MS5FVFeO41QelqcU5KPcju8TObPSX4b5SIxJjD
 3CpXbRF3C4AAs+iGZW5PnfzSEtWu/lfgQgI7Tik01HbUbS+1/1ZbF9Kltnhiy59VEW
 PR1hVF3CO9Ngg==
Date: Tue, 23 Nov 2021 15:33:12 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20211123153312.4eecb490@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <YZynSa6s8kBKtSYB@unreal>
References: <cover.1637173517.git.leonro@nvidia.com>
 <6176a137a4ded48501e8a06fda0e305f9cfc787c.1637173517.git.leonro@nvidia.com>
 <20211117204956.6a36963b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <YZYFvIK9mkP107tD@unreal>
 <20211118174813.54c3731f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <YZfFDSnnjOG+wSyK@unreal>
 <20211119081017.6676843b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <YZoHGKqLz6UBk2Sx@unreal>
 <20211122182728.370889f2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <YZynSa6s8kBKtSYB@unreal>
MIME-Version: 1.0
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

On Tue, 23 Nov 2021 10:33:13 +0200 Leon Romanovsky wrote:
> > > You can do it with my approach too. We incremented reference counter
> > > of devlink instance when devlink_nl_cmd_port_split_doit() was called,
> > > and we can safely take devlink->port_list_lock lock before returning
> > > from pre_doit.  
> > 
> > Wait, I thought you'd hold devlink->lock around split/unsplit.  
> 
> I'm holding.
> 
>     519 static int devlink_nl_pre_doit(const struct genl_ops *ops,
>     520                                struct sk_buff *skb, struct genl_info *info)
>     521 {
>     ...
>     529
>     530         mutex_lock(&devlink->lock);

Then I'm confused why you said you need to hold a ref count on devlink.
Is it devlink_unregister() that's not taking devlink->lock?

> > Please look at the port splitting case, mlx5 doesn't implement it
> > but it's an important feature.  
> 
> I'll, but please don't forget that it was RFC, just to present that
> devlink can be changed internally without exposing internals.
> 
> > Either way, IDK how ref count on devlink helps with lifetime of a
> > subobject. You must assume the sub-objects can only be created outside
> > of the time devlink instance is visible or under devlink->lock?  
> 
> The devlink lifetime is:
> stages:        I                   II                   III   
>  devlink_alloc -> devlink_register -> devlink_unregister -> devlink_free.
> 
> All sub-objects should be created between devlink_alloc and devlink_free.
> It will ensure that ->devlink pointer is always valid.
> 
> Stage I:
>  * There is no need to hold any devlink locks or increase reference counter.
>    If driver doesn't do anything crazy during its init, nothing in devlink
>    land will run in parallel. 
> Stage II:
>  * There is a need to hold devlink->lock and/or play with reference counter
>    and/or use fine-grained locks. Users can issue "devlink ..." commands.

So sub-objects can (dis)appear only in I/III or under devlink->lock.
Why did you add the per-sub object list locks, then?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
