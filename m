Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3113E5C0F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Aug 2021 15:45:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C9D7D402E3;
	Tue, 10 Aug 2021 13:45:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZWF_Xf0-T2_k; Tue, 10 Aug 2021 13:45:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 26C40402EE;
	Tue, 10 Aug 2021 13:45:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6114A1BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Aug 2021 13:45:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4E26A60672
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Aug 2021 13:45:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6LtJq78-V3s6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Aug 2021 13:45:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 22365605A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Aug 2021 13:45:25 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0AEC561075;
 Tue, 10 Aug 2021 13:45:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628603124;
 bh=Glql89CKaEO2bKO5D0IqlIuTd5q4oxJ9Hn2ZSRZr+6k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W3pWCgta7DCxFxMKzABYUZSAlENjwlFpfuHFoXXv2Eit9eMl2Z+UCcO5Dc43YQQMt
 WTVNyQ8MROBG3w8rJQO0Vcp2otFrz65A5789N/iQ/b/3s13ylFpmZfF1fcAyaedt3N
 ovC4qeJXiHZ331CjANyr3NzVzEvoZfFX9lJQHWfWjQT7fe/rRrKM6xabrSL4pAwcGO
 WAsrZtoEL2msoqVQ9ZFYcuNKnb/5PkDkqbuYEJEXJF/iG5535KgIcyS7mmOTgv7IMD
 CA0tzZ8OzXMMcuEEsgbziGo3jbol8i+tLifnzLmNjQRUT3CMMibJPFoNQ8K7rON1B/
 /tR/laAwFJygA==
Date: Tue, 10 Aug 2021 16:45:20 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Message-ID: <YRKC8NKClMyaQOmt@unreal>
References: <6859503f7e3e6cd706bf01ef06f1cae8c0b0970b.1628449004.git.leonro@nvidia.com>
 <CAJ2QiJLJk73RDS_XwQ0FY0ODq9qXbmiEZ2Y8Fkz9vVheK4he8g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ2QiJLJk73RDS_XwQ0FY0ODq9qXbmiEZ2Y8Fkz9vVheK4he8g@mail.gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next] devlink: Set device as early
 as possible
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
 Jerin Jacob <jerinj@marvell.com>, GR-everest-linux-l2@marvell.com,
 Subbaraya Sundeep <sbhatta@marvell.com>, Ioana Ciornei <ioana.ciornei@nxp.com>,
 UNGLinuxDriver@microchip.com, Michael Chan <michael.chan@broadcom.com>,
 Linu Cherian <lcherian@marvell.com>, Tariq Toukan <tariqt@nvidia.com>,
 Shai Malin <smalin@marvell.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Manish Chopra <manishc@marvell.com>, linux-staging@lists.linux.dev,
 rtoshniwal@marvell.com, Shannon Nelson <snelson@pensando.io>,
 intel-wired-lan@lists.osuosl.org, Vadym Kochan <vkochan@marvell.com>,
 Jakub Kicinski <kuba@kernel.org>, Prabhakar Kushwaha <pkushwaha@marvell.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Sunil Goutham <sgoutham@marvell.com>, Ariel Elior <aelior@marvell.com>,
 Ido Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Satanand Burla <sburla@marvell.com>, Shai Malin <malin1024@gmail.com>,
 Bin Luo <luobin9@huawei.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Jiri Pirko <jiri@nvidia.com>, drivers@pensando.io, linux-omap@vger.kernel.org,
 Omkar Kulkarni <okulkarni@marvell.com>, Felix Manlunas <fmanlunas@marvell.com>,
 Salil Mehta <salil.mehta@huawei.com>, GR-Linux-NIC-Dev@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Coiby Xu <coiby.xu@gmail.com>, "David S . Miller" <davem@davemloft.net>,
 Taras Chornyi <tchornyi@marvell.com>, hariprasad <hkelam@marvell.com>,
 netdev@vger.kernel.org, Derek Chickles <dchickles@marvell.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Geetha sowjanya <gakula@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 10, 2021 at 06:08:51PM +0530, Prabhakar Kushwaha wrote:
> Hi Leon,

<...>

> >  struct devlink *devlink_alloc_ns(const struct devlink_ops *ops,
> > -                                size_t priv_size, struct net *net)
> > +                                size_t priv_size, struct net *net,
> > +                                struct device *dev)
> >  {
> >         struct devlink *devlink;
> >
> > -       if (WARN_ON(!ops))
> > -               return NULL;
> > -
> > +       WARN_ON(!ops || !dev);
> >         if (!devlink_reload_actions_valid(ops))
> >                 return NULL;
> >
> >         devlink = kzalloc(sizeof(*devlink) + priv_size, GFP_KERNEL);
> >         if (!devlink)
> >                 return NULL;
> > +
> > +       devlink->dev = dev;
> >         devlink->ops = ops;
> >         xa_init_flags(&devlink->snapshot_ids, XA_FLAGS_ALLOC);
> >         write_pnet(&devlink->_net, net);
> > @@ -8810,12 +8812,9 @@ EXPORT_SYMBOL_GPL(devlink_alloc_ns);
> >   *     devlink_register - Register devlink instance
> >   *
> >   *     @devlink: devlink
> > - *     @dev: parent device
> >   */
> 
> This patch is converting devlink_alloc() to devlink_alloc_register().
> 
> There are 2 APIs: devlink_alloc() and devlink_register().
> Both APIs can be used in a scenario,
>               Where devlink_alloc() can be done by code written around
> one struct dev and used by another struct dev.
> or
> This scenario is not even a valid scenario?

devlink_alloc() is used to allocated netdev structures for newly
initialized device, it is not possible to share same devlink instance
between different devices.

> 
> > -int devlink_register(struct devlink *devlink, struct device *dev)
> > +int devlink_register(struct devlink *devlink)
> >  {
> > -       WARN_ON(devlink->dev);
> > -       devlink->dev = dev;
> >         mutex_lock(&devlink_mutex);
> >         list_add_tail(&devlink->list, &devlink_list);
> >         devlink_notify(devlink, DEVLINK_CMD_NEW);
> 
> Considering device registration has been moved to devlink_alloc().
> Can the remaining code of devlink_register() be also moved in devlink_alloc()?

The line "list_add_tail(&devlink->list, &devlink_list);" makes the
devlink instance visible to the devlink netlink users. We need to be
sure that it is happening when the device is already initialized, while
devlink_alloc() is performed usually as first line in .probe() routine.

This means that we can't combine alloc an register and
devlink_alloc_register() can't be valid scenario.

Thanks

> 
> --pk
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
