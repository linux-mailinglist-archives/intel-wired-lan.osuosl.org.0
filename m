Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C9941C4A2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Sep 2021 14:25:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6FCF60BC9;
	Wed, 29 Sep 2021 12:25:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lS4ScAWP9U9g; Wed, 29 Sep 2021 12:25:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C64A0608C9;
	Wed, 29 Sep 2021 12:25:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B1D3F1BF333
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 12:25:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AB3B241601
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 12:25:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HWZbeZF1q1iB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Sep 2021 12:25:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 942D6415D0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 12:25:04 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id F09DB6134F;
 Wed, 29 Sep 2021 12:25:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1632918304;
 bh=wWhYoJmf5o0goYtd67yiGvYSKB/JovKlR7TP3Zqi99g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FOgYB8oD4xLYiT0MCbtWOdRGH09IaQNPSb9EOFkBWsnpoxLHGflJa7ENoq5BBegTA
 /idNuAQ88djuyX6GEANEa3D9oBEdUuEjGy3rDzcd4GQcWFa+2U/Gw+KtNXffW4v0Ud
 7oDuoKWmOB12QpwjmS0H8zNQahoQsoL0nRw6FaFU=
Date: Wed, 29 Sep 2021 14:25:00 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <YVRbHMODzcciHa2p@kroah.com>
References: <cover.1632916329.git.leonro@nvidia.com>
 <aac64d4861d6207a90a6d45245ee5ed59114659a.1632916329.git.leonro@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aac64d4861d6207a90a6d45245ee5ed59114659a.1632916329.git.leonro@nvidia.com>
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
 UNGLinuxDriver@microchip.com, Leon Romanovsky <leonro@nvidia.com>,
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
 Satanand Burla <sburla@marvell.com>, Felix Manlunas <fmanlunas@marvell.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Jiri Pirko <jiri@nvidia.com>,
 drivers@pensando.io, linux-omap@vger.kernel.org, Bin Luo <luobin9@huawei.com>,
 Salil Mehta <salil.mehta@huawei.com>, GR-Linux-NIC-Dev@marvell.com,
 Manish Chopra <manishc@marvell.com>, netdev@vger.kernel.org,
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

On Wed, Sep 29, 2021 at 03:00:44PM +0300, Leon Romanovsky wrote:
> +void devlink_set_ops(struct devlink *devlink, struct devlink_ops *ops)
> +{
> +	struct devlink_ops *dev_ops = devlink->ops;
> +
> +	WARN_ON(!devlink_reload_actions_valid(ops));
> +
> +#define SET_DEVICE_OP(ptr, op, name)                                           \
> +	do {                                                                   \
> +		if ((op)->name)                                                \
> +			if (!((ptr)->name))                                    \
> +				(ptr)->name = (op)->name;                      \
> +	} while (0)
> +
> +	/* Keep sorted */
> +	SET_DEVICE_OP(dev_ops, ops, reload_actions);
> +	SET_DEVICE_OP(dev_ops, ops, reload_down);
> +	SET_DEVICE_OP(dev_ops, ops, reload_limits);
> +	SET_DEVICE_OP(dev_ops, ops, reload_up);

Keep sorted in what order?  And why?

thanks,

greg k-h
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
