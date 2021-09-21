Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9349E41336F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Sep 2021 14:40:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DAB24402DF;
	Tue, 21 Sep 2021 12:40:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vSQebMbAIOVK; Tue, 21 Sep 2021 12:40:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8E49540114;
	Tue, 21 Sep 2021 12:40:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7C4401BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Sep 2021 12:40:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 69C02827A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Sep 2021 12:40:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p_u-z3OGl_iE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Sep 2021 12:39:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E595A82716
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Sep 2021 12:39:59 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id D5F6E60EE4;
 Tue, 21 Sep 2021 12:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632227999;
 bh=dX+cwcBtXlRU2Cy6ZCzeR+J9bsOcN6ZcV8RsSQI80Tc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=rJfygDD0FiSpM1F9bZSz6k8lJNpdXjVV2EP4sEnWe2jlXIdydFW86nrMr7EMBdLn0
 VWUFpgURddaCHdZSmTuyThkPIKs4v5M3/nSjv2NtgJ0Q2EisX/IzpbfOdYoNQhXlGP
 BvboNEPiV/Cl74u4hOvdBQUUujkkjhscfoMU9uBCmmovD2/Aa4jQoZzDodvGtqvFNN
 Sbb7MOM33wcHSi77wrnJBq7vXX/ETS/jqTbRsLrSh1zb46dQNXL//zQ7L2USoT4Iew
 dXNVdc83dt+NKtv3XktQnVk5aa3olkrpsrqy7sojj9EGjavU0zRo2xS9BcfsclKPMR
 9zlABopkzywKA==
Date: Tue, 21 Sep 2021 05:39:56 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20210921053956.11ac7156@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <YUlBGk2Mq3iYhtku@unreal>
References: <2e089a45e03db31bf451d768fc588c02a2f781e8.1632148852.git.leonro@nvidia.com>
 <20210920133915.59ddfeef@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20210920140407.0732b3d0@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <YUlBGk2Mq3iYhtku@unreal>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next] devlink: Make
 devlink_register to be void
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
 Manish Chopra <manishc@marvell.com>, linux-rdma@vger.kernel.org,
 linux-staging@lists.linux.dev, Shannon Nelson <snelson@pensando.io>,
 intel-wired-lan@lists.osuosl.org, Vadym Kochan <vkochan@marvell.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Sunil Goutham <sgoutham@marvell.com>, Ariel Elior <aelior@marvell.com>,
 Ido Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Satanand Burla <sburla@marvell.com>, Bin Luo <luobin9@huawei.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Jiri Pirko <jiri@nvidia.com>,
 drivers@pensando.io, linux-omap@vger.kernel.org,
 Felix Manlunas <fmanlunas@marvell.com>, Salil Mehta <salil.mehta@huawei.com>,
 GR-Linux-NIC-Dev@marvell.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, linux-kernel@vger.kernel.org,
 Coiby Xu <coiby.xu@gmail.com>, "David S . Miller" <davem@davemloft.net>,
 Taras Chornyi <tchornyi@marvell.com>, hariprasad <hkelam@marvell.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Derek Chickles <dchickles@marvell.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Geetha sowjanya <gakula@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 21 Sep 2021 05:19:06 +0300 Leon Romanovsky wrote:
> On Mon, Sep 20, 2021 at 02:04:07PM -0700, Jakub Kicinski wrote:
> > On Mon, 20 Sep 2021 13:39:15 -0700 Jakub Kicinski wrote:  
> > > On Mon, 20 Sep 2021 17:41:44 +0300 Leon Romanovsky wrote:  
>  [...]  
> > > 
> > > Unlike unused functions bringing back error handling may be
> > > non-trivial. I'd rather you deferred such cleanups until you're 
> > > ready to post your full rework and therefore give us some confidence 
> > > the revert will not be needed.  
> > 
> > If you disagree you gotta repost, new devlink_register call got added
> > in the meantime.  
> 
> This is exactly what I afraid, new devlink API users are added faster
> than I can cleanup them.
> 
> For example, let's take a look on newly added ipc_devlink_init(), it is
> called conditionally "if (stage == IPC_MEM_EXEC_STAGE_BOOT) {". How can
> it be different stage if we are in driver .probe() routine?
> 
> They also introduced devlink_sio.devlink_read_pend and
> devlink_sio.read_sem to protect from something that right position of
> devlink_register() will fix. I also have serious doubts that their
> current protection is correct, once they called to devlink_params_publish()
> the user can crash the system, because he can access the parameters before
> they initialized their protection.
> 
> So yes, I disagree. We will need to make sure that devlink_register()
> can't fail and it will make life easier for everyone (no need to unwind)
> while we put that command  being last in probe sequence.

Remains to be seen if return type makes people follow correct ordering.

> If I repost, will you take it? I don't want to waste anyone time if it
> is not.

Yeah, go for it.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
