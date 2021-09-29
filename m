Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4100241C2E7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Sep 2021 12:43:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD69282F84;
	Wed, 29 Sep 2021 10:43:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id laFg80tIZgh3; Wed, 29 Sep 2021 10:43:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B0812825C6;
	Wed, 29 Sep 2021 10:43:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8CEDA1BF954
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 10:43:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 75CEE4013B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 10:43:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y2NNE5JbcWNx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Sep 2021 10:43:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ED7E340012
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 10:43:10 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A563161159;
 Wed, 29 Sep 2021 10:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632912190;
 bh=+dWbv6MK792jqAAiE3Iu+92XjoDmSSphFkEX4olyN/k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kkT0wJpXtOU1jKHLvTLEHDcFzyGsaTW2KbNFDDkSceiRF44orOxlmvEdUXPiAg1ne
 T9iBP5MvAqpqlvvpT2eQB5LUHDWmHoBVhcaxAgfyBZK3m0dp5WUM2VzbZTPT1Q2vDn
 TGpnO6rLO17kCzczJQTqNS6nN6cJkMUC9kAhjLV2CX+gL4IkIfAtJuTnHOB4GnObl5
 f6AOUTYLHsTOjT+xKpBB8WraodAp0Rvr8Ol2OtCxF+vGeaZ48SswJ/7MMLvV00Wto8
 70Uen1mLSDQS6ubpjqE94UZnhj+4JQMmVTwAgxMEhyVRUvZkuZ0qdZEMSs6jN352r7
 LTzEfohSacJDQ==
Date: Wed, 29 Sep 2021 13:43:06 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <YVRDOijPHji2vg82@unreal>
References: <cover.1632909221.git.leonro@nvidia.com>
 <4e99e3996118ce0e2da5367b8fc2a427095dfffd.1632909221.git.leonro@nvidia.com>
 <20210929103823.GK2048@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210929103823.GK2048@kadam>
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/5] devlink: Allow set
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
 netdev@vger.kernel.org, Jerin Jacob <jerinj@marvell.com>,
 GR-everest-linux-l2@marvell.com, Subbaraya Sundeep <sbhatta@marvell.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, UNGLinuxDriver@microchip.com,
 Michael Chan <michael.chan@broadcom.com>, Linu Cherian <lcherian@marvell.com>,
 Tariq Toukan <tariqt@nvidia.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Eric Dumazet <eric.dumazet@gmail.com>, linux-rdma@vger.kernel.org,
 Moshe Shemesh <moshe@nvidia.com>, linux-staging@lists.linux.dev,
 Shannon Nelson <snelson@pensando.io>, intel-wired-lan@lists.osuosl.org,
 Vadym Kochan <vkochan@marvell.com>, Jakub Kicinski <kuba@kernel.org>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
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

On Wed, Sep 29, 2021 at 01:38:23PM +0300, Dan Carpenter wrote:
> On Wed, Sep 29, 2021 at 01:16:37PM +0300, Leon Romanovsky wrote:
> > +void devlink_set_ops(struct devlink *devlink, struct devlink_ops *ops)
> > +{
> > +	struct devlink_ops *dev_ops = devlink->ops;
> > +
> > +	WARN_ON(!devlink_reload_actions_valid(ops));
> > +
> > +#define SET_DEVICE_OP(ptr, name)                                               \
> > +	do {                                                                   \
> > +		if (ops->name)                                                 \
> 
> Could you make "ops" a parameter of the macro instead of hard coding it?

Sure

> 
> regards,
> dan carpenter
> 
> > +			if (!((ptr)->name))				       \
> > +				(ptr)->name = ops->name;                       \
> > +	} while (0)
> > +
> > +	/* Keep sorted */
> > +	SET_DEVICE_OP(dev_ops, reload_actions);
> > +	SET_DEVICE_OP(dev_ops, reload_down);
> > +	SET_DEVICE_OP(dev_ops, reload_limits);
> > +	SET_DEVICE_OP(dev_ops, reload_up);
> > +
> > +#undef SET_DEVICE_OP
> > +}
> > +EXPORT_SYMBOL_GPL(devlink_set_ops);
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
