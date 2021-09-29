Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E25641C672
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Sep 2021 16:13:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8F195406FC;
	Wed, 29 Sep 2021 14:13:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y5FYngnDU7j5; Wed, 29 Sep 2021 14:13:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4CE9A402DD;
	Wed, 29 Sep 2021 14:13:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 95C481BF426
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 14:13:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8E14C402DD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 14:13:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v5CuX61wsIcp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Sep 2021 14:13:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CE38840015
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 14:13:32 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 89A87613A5;
 Wed, 29 Sep 2021 14:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632924812;
 bh=eTAv1pPSQ34h7VzKpHo4amccmSX8My0viltKfGFPAcs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=a0WROnPxlwaBTjZsiibH7NJovqQtTcIp/K8ms+STDcB0ptV8A0iGu7jLOLUA/zrUB
 INOdkTNqEr+HXCsQa1FZU+yqpPcoGYOARxzTUh4ePsGKUBDxazH19ImM81Ssee+Mva
 nxmG8NM2AaOVNzG/J2UsGMAVksZFTUppR7ziA8M1mXemH97Vk+d8qoG0kYGWYdGish
 B9Qy4lryafOY6AelPhxlIm1cVnoVDb/CTbTE2vOsJMA/xb1kJPJdpk1+5jbmmd2KC3
 vu3OyQvXaUDO9c51VtuIqQLJ54Y/7pkwRb/Ky5I0hyfeuWwgf9qtylbgp9JyDEXnTB
 kSVVs8i8WEI2Q==
Date: Wed, 29 Sep 2021 17:13:28 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <YVR0iKIRYDXQbD+o@unreal>
References: <cover.1632916329.git.leonro@nvidia.com>
 <20210929064004.3172946e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210929064004.3172946e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 0/5] Devlink reload and
 missed notifications fix
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

On Wed, Sep 29, 2021 at 06:40:04AM -0700, Jakub Kicinski wrote:
> On Wed, 29 Sep 2021 15:00:41 +0300 Leon Romanovsky wrote:
> > This series starts from the fixing the bug introduced by implementing
> > devlink delayed notifications logic, where I missed some of the
> > notifications functions.
> > 
> > The rest series provides a way to dynamically set devlink ops that is
> > needed for mlx5 multiport device and starts cleanup by removing
> > not-needed logic.
> > 
> > In the next series, we will delete various publish API, drop general
> > lock, annotate the code and rework logic around devlink->lock.
> > 
> > All this is possible because driver initialization is separated from the
> > user input now.
> 
> Swapping ops is a nasty hack in my book.
> 
> And all that to avoid having two op structures in one driver.
> Or to avoid having counters which are always 0?

We don't need to advertise counters for feature that is not supported.
In multiport mlx5 devices, the reload functionality is not supported, so
this change at least make that device to behave like all other netdev
devices that don't support devlink reload.

The ops structure is set very early to make sure that internal devlink
routines will be able access driver back during initialization (btw very
questionable design choice), and at that stage the driver doesn't know
yet which device type it is going to drive.

So the answer is:
1. Can't have two structures.
2. Same behaviour across all netdev devices.

> 
> Sorry, at the very least you need better explanation for this.

Was it better explained now?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
