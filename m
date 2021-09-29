Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0F941C6CA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Sep 2021 16:36:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 06AB74024B;
	Wed, 29 Sep 2021 14:36:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HvSfrJ8ZIftz; Wed, 29 Sep 2021 14:35:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D0032403D2;
	Wed, 29 Sep 2021 14:35:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AEEDE1BF426
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 14:35:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A4D6B81B70
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 14:35:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f90v8HrmePJq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Sep 2021 14:35:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2FDA681B25
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 14:35:54 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0FB27613CE;
 Wed, 29 Sep 2021 14:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632926153;
 bh=c2z5RikRkWc79lNu5V12ksP4gbK0MSOCGyzavGzUgOU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=CB+pgkC8GS0awLozfiCqGuWzrfQ4/5Ly6BzLnykAmBTxGsFusXpzzR20GjxhGi7sx
 X0mEfe/YNQpUwtPq4/WeSaWZIJr1mtxs5C8HSHbMmtH6D6rL5R+24DLfFCZxR9+kiV
 5kL/80cyjQeN1U+2tNrgb12+CkD9O2ZKaMtEw90mN6eXroR3Aj99dQwPqhO7KjHKKm
 m8jOeYzlX63uBTd1Gh1M7SYpbqrdBt1FTMOZmBPlP1qFR38NOqg/xOIiJ9jOFHOvSt
 JV6WkTMUJFlHPg8pz0c2Ih12wfe0VHYO/sNp/q70yp/ySorb0gGC8cPU869lXmoDu6
 OFRv+Ndrj3Z/Q==
Date: Wed, 29 Sep 2021 07:35:51 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20210929073551.16dd2267@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <YVR4qDxiQw95jaWK@unreal>
References: <cover.1632916329.git.leonro@nvidia.com>
 <a8bf9a036fe0a590df830a77a31cc81c355f525d.1632916329.git.leonro@nvidia.com>
 <20210929065549.43b13203@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <YVR1PKQjsBfvUTPU@unreal>
 <20210929072631.437ffad9@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <YVR4qDxiQw95jaWK@unreal>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 4/5] net/mlx5: Register
 separate reload devlink ops for multiport device
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
 netdev@vger.kernel.org, Jerin Jacob <jerinj@marvell.com>,
 GR-everest-linux-l2@marvell.com, Subbaraya Sundeep <sbhatta@marvell.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, UNGLinuxDriver@microchip.com,
 Michael Chan <michael.chan@broadcom.com>, Linu Cherian <lcherian@marvell.com>,
 Tariq Toukan <tariqt@nvidia.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Eric Dumazet <eric.dumazet@gmail.com>, linux-rdma@vger.kernel.org,
 Moshe Shemesh <moshe@nvidia.com>, linux-staging@lists.linux.dev,
 Shannon Nelson <snelson@pensando.io>, intel-wired-lan@lists.osuosl.org,
 Vadym Kochan <vkochan@marvell.com>, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Sunil Goutham <sgoutham@marvell.com>, Ariel Elior <aelior@marvell.com>,
 Ido Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Satanand Burla <sburla@marvell.com>, Bin Luo <luobin9@huawei.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Jiri Pirko <jiri@nvidia.com>,
 drivers@pensando.io, linux-omap@vger.kernel.org,
 Felix Manlunas <fmanlunas@marvell.com>, Salil Mehta <salil.mehta@huawei.com>,
 GR-Linux-NIC-Dev@marvell.com, Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, linux-kernel@vger.kernel.org,
 Coiby Xu <coiby.xu@gmail.com>, "David S . Miller" <davem@davemloft.net>,
 Taras Chornyi <tchornyi@marvell.com>, hariprasad <hkelam@marvell.com>,
 Shay Drory <shayd@nvidia.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Derek Chickles <dchickles@marvell.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Geetha sowjanya <gakula@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 29 Sep 2021 17:31:04 +0300 Leon Romanovsky wrote:
> On Wed, Sep 29, 2021 at 07:26:31AM -0700, Jakub Kicinski wrote:
> > On Wed, 29 Sep 2021 17:16:28 +0300 Leon Romanovsky wrote:  
> > > devlink_ops pointer is not constant at this stage, so why can't I copy
> > > reload_* pointers to the "main" devlink ops?
> > > 
> > > I wanted to avoid to copy all pointers.  
> > 
> > Hm. I must be missing a key piece here. IIUC you want to have different
> > ops based on some device property. But there is only one
> > 
> > static struct devlink_ops mlx5_devlink_ops;
> > 
> > so how can two devlink instances in the system use that and have
> > different ops without a copy?  
> 
> No, I have two:
> * Base ops - mlx5_devlink_ops
> * Extra reload commands - mlx5_devlink_reload

Still those are global for the driver, no?

What if you have multiple NICs or whatever.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
