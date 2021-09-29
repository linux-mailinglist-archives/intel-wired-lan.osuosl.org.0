Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C7941C50F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Sep 2021 14:58:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E73D60BC6;
	Wed, 29 Sep 2021 12:58:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1TBwUtoOyf4v; Wed, 29 Sep 2021 12:58:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B59860BCB;
	Wed, 29 Sep 2021 12:58:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3019E1BF333
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 12:58:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1E4294020F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 12:58:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1TXgVAidkVgb for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Sep 2021 12:58:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 87A4040133
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 12:58:32 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3A9B661211;
 Wed, 29 Sep 2021 12:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632920312;
 bh=j2Wb33as6mzdBS3YhKeavZz4SfbOKLPsDU6YQXmeqwo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SaKUa75ehCfoIF0ddeLIUF8v+AG+MGe8xIP1UF82TZq9Zhr8OiGNBT4OWN1arr0Wo
 HXdbxucj0JELyLM6WgOgi0QnGFaPrKBFAdbLTMcABabCcAmv/BbcSkOpEcZOpw5rbn
 yepoi2ngSz4JdfabJCC1QdWw7qIShD+f5xZIBNdMzO4r6y8wNW24kYxkt7m1J70MbV
 vip1XtOWNXBDrjfMr6hzHPMBExjy7c2Fo4g54lbP3ZxJfPoX0sd+9RIFKXgbKLx4wv
 VxoveKPIqj3dkPR9vyfrom4xKSP64IlJ/+Ykph9Uyd/pOaMDDog2Q0WveAlEflJZ65
 mZVaPXMg79IxA==
Date: Wed, 29 Sep 2021 15:58:28 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <YVRi9B4bxR/jZrug@unreal>
References: <cover.1632916329.git.leonro@nvidia.com>
 <aac64d4861d6207a90a6d45245ee5ed59114659a.1632916329.git.leonro@nvidia.com>
 <YVRbHMODzcciHa2p@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YVRbHMODzcciHa2p@kroah.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 3/5] devlink: Allow set
 specific ops callbacks dynamically
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
 Florian Fainelli <f.fainelli@gmail.com>, Eric Dumazet <eric.dumazet@gmail.com>,
 linux-rdma@vger.kernel.org, Moshe Shemesh <moshe@nvidia.com>,
 linux-staging@lists.linux.dev, Shannon Nelson <snelson@pensando.io>,
 intel-wired-lan@lists.osuosl.org, Vadym Kochan <vkochan@marvell.com>,
 Jakub Kicinski <kuba@kernel.org>, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Sunil Goutham <sgoutham@marvell.com>, Ariel Elior <aelior@marvell.com>,
 Ido Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Satanand Burla <sburla@marvell.com>, Bin Luo <luobin9@huawei.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Jiri Pirko <jiri@nvidia.com>,
 drivers@pensando.io, linux-omap@vger.kernel.org,
 Felix Manlunas <fmanlunas@marvell.com>, Salil Mehta <salil.mehta@huawei.com>,
 GR-Linux-NIC-Dev@marvell.com, Manish Chopra <manishc@marvell.com>,
 netdev@vger.kernel.org, Vladimir Oltean <vladimir.oltean@nxp.com>,
 linux-kernel@vger.kernel.org, Coiby Xu <coiby.xu@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, Taras Chornyi <tchornyi@marvell.com>,
 hariprasad <hkelam@marvell.com>, Shay Drory <shayd@nvidia.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Derek Chickles <dchickles@marvell.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Geetha sowjanya <gakula@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Sep 29, 2021 at 02:25:00PM +0200, Greg Kroah-Hartman wrote:
> On Wed, Sep 29, 2021 at 03:00:44PM +0300, Leon Romanovsky wrote:
> > +void devlink_set_ops(struct devlink *devlink, struct devlink_ops *ops)
> > +{
> > +	struct devlink_ops *dev_ops = devlink->ops;
> > +
> > +	WARN_ON(!devlink_reload_actions_valid(ops));
> > +
> > +#define SET_DEVICE_OP(ptr, op, name)                                           \
> > +	do {                                                                   \
> > +		if ((op)->name)                                                \
> > +			if (!((ptr)->name))                                    \
> > +				(ptr)->name = (op)->name;                      \
> > +	} while (0)
> > +
> > +	/* Keep sorted */
> > +	SET_DEVICE_OP(dev_ops, ops, reload_actions);
> > +	SET_DEVICE_OP(dev_ops, ops, reload_down);
> > +	SET_DEVICE_OP(dev_ops, ops, reload_limits);
> > +	SET_DEVICE_OP(dev_ops, ops, reload_up);
> 
> Keep sorted in what order?  And why?

Sorted by name.

It simplifies future addition of new commands and removes useless fraction
where place new line.

Thanks

> 
> thanks,
> 
> greg k-h
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
