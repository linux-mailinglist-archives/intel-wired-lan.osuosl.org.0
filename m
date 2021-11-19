Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC554571C7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Nov 2021 16:39:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E4F2941295;
	Fri, 19 Nov 2021 15:39:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EtScaUWQNJGf; Fri, 19 Nov 2021 15:39:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EE512409F3;
	Fri, 19 Nov 2021 15:39:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 698731BF346
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Nov 2021 15:38:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6479960699
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Nov 2021 15:38:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 64UYarmwZjo9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Nov 2021 15:38:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BED4A60681
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Nov 2021 15:38:57 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 34B9A6112E;
 Fri, 19 Nov 2021 15:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637336337;
 bh=SiDyJ/VKAeOoI+SIN4+qGK8ta2JLIbvMWVnitDoSmOg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SHoopEN12ABnOJrQbGs8O4BbaND7QMXx48wiMBfW/8wzoXRR2ZcjeK7A1l1VuChGU
 Fuvl9doTKs+BETnCb+vWs32+C6Is7JnTr00XR3VcWVsnMd1DtxETI4xwPJgPbtzNo3
 pW4hnUxqvm5DJDMd6QDv+KL0OJpRdwOkNW1HZ4NilDKCcLoT963XPkoicDMbI/pDR9
 PYZML153hA+AxUyOvmTwJNfnBVfUfcebUttiMN6eaCN2WZ4kCbfTM9hMWoC8bUER3V
 ZXeBu1SjuFEwMAWoe8ghOZ+MbxJZhwjCGWB2YnA8Wzwn0z0vOjPI/tgdVSzjCf2sHp
 ruRiK3XHBQl2A==
Date: Fri, 19 Nov 2021 17:38:53 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <YZfFDSnnjOG+wSyK@unreal>
References: <cover.1637173517.git.leonro@nvidia.com>
 <6176a137a4ded48501e8a06fda0e305f9cfc787c.1637173517.git.leonro@nvidia.com>
 <20211117204956.6a36963b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <YZYFvIK9mkP107tD@unreal>
 <20211118174813.54c3731f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211118174813.54c3731f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
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

On Thu, Nov 18, 2021 at 05:48:13PM -0800, Jakub Kicinski wrote:
> On Thu, 18 Nov 2021 09:50:20 +0200 Leon Romanovsky wrote:
> > And it shouldn't. devlink_resource_find() will return valid resource only
> > if there driver is completely bogus with races or incorrect allocations of
> > resource_id.
> > 
> > devlink_*_register(..)
> >  mutex_lock(&devlink->lock);
> >  if (devlink_*_find(...)) {
> >     mutex_unlock(&devlink->lock);
> >     return ....;
> >  }
> >  .....
> > 
> > It is almost always wrong from locking and layering perspective the pattern above,
> > as it is racy by definition if not protected by top layer.
> > 
> > There are exceptions from the rule above, but devlink is clearly not the
> > one of such exceptions.
> 
> Just drop the unnecessary "cleanup" patches and limit the amount 
> of driver code we'll have to revert if your approach fails.

My approach works, exactly like it works in other subsystems.
https://lore.kernel.org/netdev/cover.1636390483.git.leonro@nvidia.com/

We are waiting to see your proposal extended to support parallel devlink
execution and to be applied to real drivers.
https://lore.kernel.org/netdev/20211030231254.2477599-1-kuba@kernel.org/

Anyway, you are maintainer, you want half work, you will get half work.

> 
> I spent enough time going back and forth with you.
> 
> Please.

Disagreements are hard for everyone, not only for you.

Thanks
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
