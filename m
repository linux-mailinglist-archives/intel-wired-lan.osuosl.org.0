Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C48241A9D1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Sep 2021 09:34:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 186344054A;
	Tue, 28 Sep 2021 07:34:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IktQLqviofXv; Tue, 28 Sep 2021 07:34:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CA28540544;
	Tue, 28 Sep 2021 07:34:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 60CB61BF27C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Sep 2021 07:34:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4ED4F403BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Sep 2021 07:34:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CUivqa_5KpDR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Sep 2021 07:34:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C4755403B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Sep 2021 07:34:37 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 55B3260F46;
 Tue, 28 Sep 2021 07:34:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632814477;
 bh=FXJERLSoyhfMGBS0Hs/ca2OK7+EwhV8+7CAGiyuQIzY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZSwnW/QW1ziVb2vzzIm0dinkQLg5zL3yk9PfEAZFaIEmOg226d2BPPpWXSaqORNNS
 5iMkLIFVYp91weFGz7NIiFMOmKgcnFxffLtJl11liVApDjMrdqMRVvT9QqoFkU3lTp
 d2wQVS/d/smxOIfP91V8Cn+NbJqxwFcY5x0irbvzigSS00/fCBmml+RjRVo7wS6c82
 5PBebINtZ63yzWPnrGihAiLXryw97K9WlZ4sBH+zxu0QHwXFC7OyOyvdYwYHPfwKuO
 vnJ2hsRiQIyufQ9c3HgNrKhM1G3rz8XHjfusYz69BxP/1Cr+muDTkBkK3yofoFZZu/
 zmgkPZnJOrU7A==
Date: Tue, 28 Sep 2021 10:34:33 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Eric Dumazet <eric.dumazet@gmail.com>
Message-ID: <YVLFiUQp03qzBMO5@unreal>
References: <cover.1632565508.git.leonro@nvidia.com>
 <0f7f201a059b24c96eac837e1f424e2483254e1c.1632565508.git.leonro@nvidia.com>
 <97c1ba9d-52b9-5689-19ab-ad4a82e55ae2@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <97c1ba9d-52b9-5689-19ab-ad4a82e55ae2@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 01/21] devlink: Notify
 users when objects are accessible
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
 Sergey Ryazanov <ryazanov.s.a@gmail.com>,
 Michael Guralnik <michaelgur@mellanox.com>, oss-drivers@corigine.com,
 netdev@vger.kernel.org, Jerin Jacob <jerinj@marvell.com>,
 GR-everest-linux-l2@marvell.com, Subbaraya Sundeep <sbhatta@marvell.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, UNGLinuxDriver@microchip.com,
 Michael Chan <michael.chan@broadcom.com>, Linu Cherian <lcherian@marvell.com>,
 Intel Corporation <linuxwwan@intel.com>, Tariq Toukan <tariqt@nvidia.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Manish Chopra <manishc@marvell.com>,
 linux-rdma@vger.kernel.org, linux-staging@lists.linux.dev,
 Shannon Nelson <snelson@pensando.io>, intel-wired-lan@lists.osuosl.org,
 Simon Horman <simon.horman@corigine.com>, Jakub Kicinski <kuba@kernel.org>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Sunil Goutham <sgoutham@marvell.com>, Ariel Elior <aelior@marvell.com>,
 Ido Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Satanand Burla <sburla@marvell.com>, Bin Luo <luobin9@huawei.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Loic Poulain <loic.poulain@linaro.org>, Jiri Pirko <jiri@nvidia.com>,
 drivers@pensando.io, linux-omap@vger.kernel.org,
 Felix Manlunas <fmanlunas@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
 Vadym Kochan <vkochan@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, linux-kernel@vger.kernel.org,
 Coiby Xu <coiby.xu@gmail.com>, "David S . Miller" <davem@davemloft.net>,
 Taras Chornyi <tchornyi@marvell.com>, hariprasad <hkelam@marvell.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 M Chetan Kumar <m.chetan.kumar@intel.com>,
 Derek Chickles <dchickles@marvell.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Geetha sowjanya <gakula@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Sep 27, 2021 at 07:49:18PM -0700, Eric Dumazet wrote:
> 
> 
> On 9/25/21 4:22 AM, Leon Romanovsky wrote:
> > From: Leon Romanovsky <leonro@nvidia.com>
> > 
> > The devlink core code notified users about add/remove objects without
> > relation if this object can be accessible or not. In this patch we unify
> > such user visible notifications in one place.
> > 
> > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > ---
> >  net/core/devlink.c | 107 +++++++++++++++++++++++++++++++++++++++------
> >  1 file changed, 93 insertions(+), 14 deletions(-)

<...>

> >  static void devlink_rate_notify(struct devlink_rate *devlink_rate,
> >  				enum devlink_command cmd)
> >  {
> > +	struct devlink *devlink = devlink_rate->devlink;
> >  	struct sk_buff *msg;
> >  	int err;
> >  
> >  	WARN_ON(cmd != DEVLINK_CMD_RATE_NEW && cmd != DEVLINK_CMD_RATE_DEL);
> > +	WARN_ON(!xa_get_mark(&devlinks, devlink->index, DEVLINK_REGISTERED));
> 
> 
> FYI, this new warning was triggered by syzbot :

Thanks for the report, it is combination of my rebase error and missing
loop of devlink_rate_notify in the devlink_notify_register() function.

I'll fix and resubmit.

Thanks
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
