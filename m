Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D98F1455611
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Nov 2021 08:50:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 557EB81013;
	Thu, 18 Nov 2021 07:50:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CHNSYi5WgWJ4; Thu, 18 Nov 2021 07:50:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 60FB980F42;
	Thu, 18 Nov 2021 07:50:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BA83D1BF5DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Nov 2021 07:50:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B3CF6400CD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Nov 2021 07:50:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id io_9TFShfcrx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Nov 2021 07:50:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0952F400CB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Nov 2021 07:50:24 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id D7D6C61AF0;
 Thu, 18 Nov 2021 07:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637221824;
 bh=KAG7SN0Nsukz5N3+M2JeOStH3aani0FQz1yVYpMxlI4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=U/rCN1F5P7OJGKozjYIbfysxd1GNoJ7r2XbViuikvAKkPDKKnksCbzJa2IlbHnRax
 GoWEfisdL0drlW2opov+3kvSMtdymX3KwC9CSx24ibrIoE2wHpH/c7irksbGH7gCXW
 Q0h6qL7SSdphsv4RS+Mfpa5oRKD4q0K89KOfSTE4myt5TH3/fTYkWlEfO4FLCP3sP+
 0zdH/5WvExcVwBbWzxoMWRPvlXY+fKCPsUn24Llx2zkf79eennDsgYutbug/fZ1agB
 KhkNMnssPhXu7tzV+BBf3QYXcyhYEGTax+k0QCz2kH4UZ+pBEFmZQ+Et0intFBkLWn
 4KRAyyeFsgTjA==
Date: Thu, 18 Nov 2021 09:50:20 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <YZYFvIK9mkP107tD@unreal>
References: <cover.1637173517.git.leonro@nvidia.com>
 <6176a137a4ded48501e8a06fda0e305f9cfc787c.1637173517.git.leonro@nvidia.com>
 <20211117204956.6a36963b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211117204956.6a36963b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
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

On Wed, Nov 17, 2021 at 08:49:56PM -0800, Jakub Kicinski wrote:
> On Wed, 17 Nov 2021 20:26:21 +0200 Leon Romanovsky wrote:
> > -	top_hierarchy = parent_resource_id == DEVLINK_RESOURCE_ID_PARENT_TOP;
> > -
> > -	mutex_lock(&devlink->lock);
> > -	resource = devlink_resource_find(devlink, NULL, resource_id);
> > -	if (resource) {
> > -		err = -EINVAL;
> > -		goto out;
> > -	}
> > +	WARN_ON(devlink_resource_find(devlink, NULL, resource_id));
> 
> This is not atomic with the add now.

And it shouldn't. devlink_resource_find() will return valid resource only
if there driver is completely bogus with races or incorrect allocations of
resource_id.

devlink_*_register(..)
 mutex_lock(&devlink->lock);
 if (devlink_*_find(...)) {
    mutex_unlock(&devlink->lock);
    return ....;
 }
 .....

It is almost always wrong from locking and layering perspective the pattern above,
as it is racy by definition if not protected by top layer.

There are exceptions from the rule above, but devlink is clearly not the
one of such exceptions.

Thanks
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
