Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1152541C6F9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Sep 2021 16:39:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A5CCB60BED;
	Wed, 29 Sep 2021 14:39:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PFriUesTqhVK; Wed, 29 Sep 2021 14:39:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE0AF6060A;
	Wed, 29 Sep 2021 14:39:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C0A021BF426
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 14:39:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ACD5A4024A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 14:39:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hvuQGjK9aBm7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Sep 2021 14:39:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E1FC640015
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 14:39:43 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id D7FC061288;
 Wed, 29 Sep 2021 14:39:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632926383;
 bh=nnq87NutyIOGGif5N+QrkzjWO+6VWs0z6DZ46avoARs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=eqiziXnfY6Gb8Aqa7QR6beBqHy27XIjRrNUvvAZpBe8wAWCnLdAtcFyomIe7AQOpr
 4y5Asa4+B80UxnB1HHcJhWNrtHtO1xZ3wY/gSf+jYnf98cFaKFzj08VOrxUhrIW7Xl
 WhtES6XqwCW5MPr95wOLYo64luS6u1zSPfI8WRAF7ohJTYNANFQJlfrV9MLvFa+BQB
 qRGrx+33hqKztnR5yfNuHpe7tcbvP77g91NjW7WEy/hhDjv2PbU7F3vMSN5g+9a7XX
 6BT/cH+dKXao9KYoRKv24DJNK8fNaz/UswWiMxA+XjskLExRXFjir7NSfinIiFeJQq
 T9KesJYV0X2ng==
Date: Wed, 29 Sep 2021 07:39:40 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20210929073940.5d7ed022@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <YVR0iKIRYDXQbD+o@unreal>
References: <cover.1632916329.git.leonro@nvidia.com>
 <20210929064004.3172946e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <YVR0iKIRYDXQbD+o@unreal>
MIME-Version: 1.0
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

On Wed, 29 Sep 2021 17:13:28 +0300 Leon Romanovsky wrote:
> On Wed, Sep 29, 2021 at 06:40:04AM -0700, Jakub Kicinski wrote:
> > On Wed, 29 Sep 2021 15:00:41 +0300 Leon Romanovsky wrote:  
> > > This series starts from the fixing the bug introduced by implementing
> > > devlink delayed notifications logic, where I missed some of the
> > > notifications functions.
> > > 
> > > The rest series provides a way to dynamically set devlink ops that is
> > > needed for mlx5 multiport device and starts cleanup by removing
> > > not-needed logic.
> > > 
> > > In the next series, we will delete various publish API, drop general
> > > lock, annotate the code and rework logic around devlink->lock.
> > > 
> > > All this is possible because driver initialization is separated from the
> > > user input now.  
> > 
> > Swapping ops is a nasty hack in my book.
> > 
> > And all that to avoid having two op structures in one driver.
> > Or to avoid having counters which are always 0?  
> 
> We don't need to advertise counters for feature that is not supported.
> In multiport mlx5 devices, the reload functionality is not supported, so
> this change at least make that device to behave like all other netdev
> devices that don't support devlink reload.
> 
> The ops structure is set very early to make sure that internal devlink
> routines will be able access driver back during initialization (btw very
> questionable design choice)

Indeed, is this fixable? Or now that devlink_register() was moved to 
the end of probe netdev can call ops before instance is registered?

> and at that stage the driver doesn't know
> yet which device type it is going to drive.
> 
> So the answer is:
> 1. Can't have two structures.

I still don't understand why. To be clear - swapping full op structures
is probably acceptable if it's a pure upgrade (existing pointers match).
Poking new ops into a structure (in alphabetical order if I understand
your reply to Greg, not destructor-before-contructor) is what I deem
questionable.

> 2. Same behaviour across all netdev devices.

Unclear what this is referring to.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
