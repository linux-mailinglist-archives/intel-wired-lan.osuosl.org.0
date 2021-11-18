Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3354555BA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Nov 2021 08:32:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1333960733;
	Thu, 18 Nov 2021 07:32:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fZJeDv_RxLrm; Thu, 18 Nov 2021 07:32:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1BD466072F;
	Thu, 18 Nov 2021 07:32:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E535C1BF5DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Nov 2021 07:32:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CB1B380C89
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Nov 2021 07:32:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FSVQpMjxuuVI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Nov 2021 07:32:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4D41680C84
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Nov 2021 07:32:25 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 33D7261269;
 Thu, 18 Nov 2021 07:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637220744;
 bh=2VdstZWq6DPnEC6DxQBReel0V2k00OcC7KSNTUSs0UM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=L5+VP4Ka3rsFmALNqTLemtiG0EWqk+dRJRopAI2LWM6KvO3vHptMPQgscHsM3zQWO
 5uvHosaFkH4jIr0zwZ+asDr75n2vrU+231CRqcF+Pw5Sk4EzkPvagD0ZGdC7jiCVuv
 0jXJzMu6YS2U3syEpyvfhPMcnf9lJbLIFEtTGvTjk6ds8oBFjqKC4u1/mPLmspKR/W
 lWyISppbmOhxIE9Ng6ScATnvTBGadUU3KUAiGDXivu/0aCpCbVL86uzYh/sj2nVFuH
 IMPEsOt7MxJ/hTkBPnZcQAmjYxu3Y0epF+vD1ebs2tgLfoVt2x41iaJWw9HrENEdGs
 bQAAsrgAD9Rpg==
Date: Thu, 18 Nov 2021 09:32:20 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <YZYBhArHOAbLfOUb@unreal>
References: <cover.1637173517.git.leonro@nvidia.com>
 <9c3eb77a90a2be10d5c637981a8047160845f60f.1637173517.git.leonro@nvidia.com>
 <20211117204929.4bd24597@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211117204929.4bd24597@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 4/6] devlink: Clean
 registration of devlink port
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

On Wed, Nov 17, 2021 at 08:49:29PM -0800, Jakub Kicinski wrote:
> On Wed, 17 Nov 2021 20:26:20 +0200 Leon Romanovsky wrote:
> > From: Leon Romanovsky <leonro@nvidia.com>
> > 
> > devlink_port_register() is in-kernel API and as such can't really fail
> > as long as driver author didn't make a mistake by providing already existing
> > port index. Instead of relying on various error prints from the driver,
> > convert the existence check to be WARN_ON(), so such a mistake will be
> > caught easier.
> > 
> > As an outcome of this conversion, it was made clear that this function
> > should be void and devlink->lock was intended to protect addition to
> > port_list.
> 
> Leave this error checking in please.

Are you referring to error checks in the drivers or the below section
from devlink_port_register()?

       mutex_lock(&devlink->lock);
       if (devlink_port_index_exists(devlink, port_index)) {
               mutex_unlock(&devlink->lock);
               return -EEXIST;
       }

Because if it is latter, any driver (I didn't find any) that will rely
on this -EEXIST field should have some sort of locking in top level.
Otherwise nothing will prevent from doing port unregister right
before "return --EXEEXIST".

So change to WARN_ON() will be much more effective in finding wrong
drivers, because they manage port_index and not devlink.

And because this function can't fail, the drivers have a plenty of dead
code.

Thanks
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
