Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F6D41C84B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Sep 2021 17:24:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 83B3A83372;
	Wed, 29 Sep 2021 15:24:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tMYt10KtWkLO; Wed, 29 Sep 2021 15:24:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 795B28336F;
	Wed, 29 Sep 2021 15:24:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 100CE1BF21A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 15:24:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0A53F60624
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 15:24:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PrUj4jbsApmt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Sep 2021 15:24:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 74A59605B2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 15:24:48 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 604FF61440;
 Wed, 29 Sep 2021 15:24:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632929088;
 bh=xBRRX1rYjiTzPEoPMHw1rL24TvrnK+689UnwZagbnsQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aP/SzhecYqJ59hW7NpP/05VpI6etnlUtWV51qr4Sjrsj7iIglusLMXx2XNaO0fT0M
 RyFp76HRYmy1cib0bH0hsp/eVZnogcmCelT/ZwaymqsJegIyZJRgdg5tNKJsghh0RX
 h735xxlR9XptIYNPpeHPeVEIWeiC9Q4ek0t3XMoih4QzIJ1mz04rG59BZZLxMrAzht
 MHpF9eFzGaB22t5a325IB+YbBszRNGWukMKfRmsCWK+zMzKR3DD/rQmxK4ETBnoB+G
 hvBLRT6RtSXZYMSVRvFbB12XrLiTkxZUMC0ZQ7vldriFuDLP8cPBDmDxWn6bw8TPTP
 TWgYqiOk6HtYQ==
Date: Wed, 29 Sep 2021 18:24:44 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <YVSFPNq+IDUlZAeI@unreal>
References: <cover.1632916329.git.leonro@nvidia.com>
 <a8bf9a036fe0a590df830a77a31cc81c355f525d.1632916329.git.leonro@nvidia.com>
 <20210929065549.43b13203@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <YVR1PKQjsBfvUTPU@unreal>
 <20210929072631.437ffad9@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <YVR4qDxiQw95jaWK@unreal>
 <20210929073551.16dd2267@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210929073551.16dd2267@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
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

On Wed, Sep 29, 2021 at 07:35:51AM -0700, Jakub Kicinski wrote:
> On Wed, 29 Sep 2021 17:31:04 +0300 Leon Romanovsky wrote:
> > On Wed, Sep 29, 2021 at 07:26:31AM -0700, Jakub Kicinski wrote:
> > > On Wed, 29 Sep 2021 17:16:28 +0300 Leon Romanovsky wrote:  
> > > > devlink_ops pointer is not constant at this stage, so why can't I copy
> > > > reload_* pointers to the "main" devlink ops?
> > > > 
> > > > I wanted to avoid to copy all pointers.  
> > > 
> > > Hm. I must be missing a key piece here. IIUC you want to have different
> > > ops based on some device property. But there is only one
> > > 
> > > static struct devlink_ops mlx5_devlink_ops;
> > > 
> > > so how can two devlink instances in the system use that and have
> > > different ops without a copy?  
> > 
> > No, I have two:
> > * Base ops - mlx5_devlink_ops
> > * Extra reload commands - mlx5_devlink_reload
> 
> Still those are global for the driver, no?

Ugh, yes

> 
> What if you have multiple NICs or whatever.

I missed it and always tested with one device L(.

I'll add copy-all-ops code.

Thanks
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
