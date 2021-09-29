Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD38441C62C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Sep 2021 15:56:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ABC8A41966;
	Wed, 29 Sep 2021 13:56:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w3YM-ZjqaWyM; Wed, 29 Sep 2021 13:56:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B034B41964;
	Wed, 29 Sep 2021 13:56:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 703271BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 13:56:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6AA9F60663
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 13:56:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SXuwWwu-kzpD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Sep 2021 13:56:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 00100606DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 13:56:23 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id D2CB8613D1;
 Wed, 29 Sep 2021 13:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632923783;
 bh=idflF2E8/Ly1lOVFC+hy6dMOJPOrXijkr0KQryGJPgc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Fib9ZNHSBUhUAKcgkZuZOnEuDljdRL8P/uoCMGRKwG46UqHSo4HD5ngmYXsjAGs2r
 bSm1F3ewUqSNpQu3GQgoOz7X9Yz7HqnI2qHtReyaLwqo1IGu2KL3q23PVgu8NYOcEV
 Jv1Q4JJ3zP18LY4zSq/bYM1pWth/qPgyLLwFqqewCfbRtg20enKZPzcn5pE69aMjUT
 EGxtNnS+u04nA8ovrmD+q4M4VvKpHefh0JUwR2ngjt1oTkbHiPxzR5rjQ+3+I6P/xI
 xBx6iOtiTYStQUdyfGgY2Sep/suFOxURUeSRYpbnUQpSJ/BOVZ0JUFf2Zv46brq8d+
 oR9yLP9KSppzg==
Date: Wed, 29 Sep 2021 06:56:21 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <20210929065621.20cb08ad@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210929134637.4wlbd5ehbgc55cuo@skbuf>
References: <cover.1632916329.git.leonro@nvidia.com>
 <20210929064004.3172946e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20210929134637.4wlbd5ehbgc55cuo@skbuf>
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
 Simon Horman <simon.horman@corigine.com>,
 "oss-drivers@corigine.com" <oss-drivers@corigine.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jerin Jacob <jerinj@marvell.com>,
 "GR-everest-linux-l2@marvell.com" <GR-everest-linux-l2@marvell.com>,
 Subbaraya Sundeep <sbhatta@marvell.com>, Ioana Ciornei <ioana.ciornei@nxp.com>,
 "UNGLinuxDriver@microchip.com" <UNGLinuxDriver@microchip.com>,
 Leon Romanovsky <leonro@nvidia.com>, Michael Chan <michael.chan@broadcom.com>,
 Linu Cherian <lcherian@marvell.com>, Tariq Toukan <tariqt@nvidia.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Eric Dumazet <eric.dumazet@gmail.com>,
 Manish Chopra <manishc@marvell.com>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 Moshe Shemesh <moshe@nvidia.com>,
 "linux-staging@lists.linux.dev" <linux-staging@lists.linux.dev>,
 Shannon Nelson <snelson@pensando.io>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Vadym Kochan <vkochan@marvell.com>, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Sunil Goutham <sgoutham@marvell.com>, Ariel Elior <aelior@marvell.com>,
 Ido Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Satanand Burla <sburla@marvell.com>, Felix Manlunas <fmanlunas@marvell.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Jiri Pirko <jiri@nvidia.com>,
 "drivers@pensando.io" <drivers@pensando.io>,
 "linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>,
 Bin Luo <luobin9@huawei.com>, Salil Mehta <salil.mehta@huawei.com>,
 "GR-Linux-NIC-Dev@marvell.com" <GR-Linux-NIC-Dev@marvell.com>,
 Leon Romanovsky <leon@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Coiby Xu <coiby.xu@gmail.com>, "David S . Miller" <davem@davemloft.net>,
 Taras Chornyi <tchornyi@marvell.com>, hariprasad <hkelam@marvell.com>,
 Shay Drory <shayd@nvidia.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Derek Chickles <dchickles@marvell.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Geetha sowjanya <gakula@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 29 Sep 2021 13:46:38 +0000 Vladimir Oltean wrote:
> On Wed, Sep 29, 2021 at 06:40:04AM -0700, Jakub Kicinski wrote:
> > Swapping ops is a nasty hack in my book.
> >
> > And all that to avoid having two op structures in one driver.
> > Or to avoid having counters which are always 0?
> >
> > Sorry, at the very least you need better explanation for this.  
> 
> Leon, while the discussion about this unfolds, can you please repost
> patch 1 separately? :)

Yes, please and thanks! :)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
