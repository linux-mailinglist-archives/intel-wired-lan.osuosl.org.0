Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA8F456797
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Nov 2021 02:48:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7698281B36;
	Fri, 19 Nov 2021 01:48:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q4wQecWc7l8Z; Fri, 19 Nov 2021 01:48:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 74CD081B26;
	Fri, 19 Nov 2021 01:48:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EB87D1BF427
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Nov 2021 01:48:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D07C481B26
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Nov 2021 01:48:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IuV9WY75xGna for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Nov 2021 01:48:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5D6EE81AAB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Nov 2021 01:48:16 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id E54A761401;
 Fri, 19 Nov 2021 01:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637286495;
 bh=4d92tHYFCLa5amrWHWA76Kj8uMX5dGltn+NbKmez1tU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=d0ewhYM2pOC/SgWaoIHlstPfakFQuTIfgMjCvqYt8IA4Ry0RWvoRa2wQ21EebHMwg
 2dzonFBqs8HDNANLbTRKjzTGNTLjs+25PJuReseLTgdIlGV/H/TEM1DRvcsmzKFoCy
 uyJAOjRB6MVBnPH29MEXFkqA+IWlBHp2eou4zEzEkdlnyZAC7ETqVuJOJfoiKcAVrf
 eAnT5wbHq3p/ovYz4OgsLfAbgr4WZ9J0MqDCekPrf/U8LNpUYdf4NlCxLRmbsQJghn
 d8lJuVUfdbw5d5p+Hv8sLFgQsisbblajIACHMjfmlM38qxhi/78duZ6cnMOVt82mzv
 DjpXRH9pxl6Og==
Date: Thu, 18 Nov 2021 17:48:13 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20211118174813.54c3731f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <YZYFvIK9mkP107tD@unreal>
References: <cover.1637173517.git.leonro@nvidia.com>
 <6176a137a4ded48501e8a06fda0e305f9cfc787c.1637173517.git.leonro@nvidia.com>
 <20211117204956.6a36963b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <YZYFvIK9mkP107tD@unreal>
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

On Thu, 18 Nov 2021 09:50:20 +0200 Leon Romanovsky wrote:
> And it shouldn't. devlink_resource_find() will return valid resource only
> if there driver is completely bogus with races or incorrect allocations of
> resource_id.
> 
> devlink_*_register(..)
>  mutex_lock(&devlink->lock);
>  if (devlink_*_find(...)) {
>     mutex_unlock(&devlink->lock);
>     return ....;
>  }
>  .....
> 
> It is almost always wrong from locking and layering perspective the pattern above,
> as it is racy by definition if not protected by top layer.
> 
> There are exceptions from the rule above, but devlink is clearly not the
> one of such exceptions.

Just drop the unnecessary "cleanup" patches and limit the amount 
of driver code we'll have to revert if your approach fails.

I spent enough time going back and forth with you.

Please.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
