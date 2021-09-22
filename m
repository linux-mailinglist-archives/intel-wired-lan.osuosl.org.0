Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F079C414A76
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Sep 2021 15:22:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1103940576;
	Wed, 22 Sep 2021 13:22:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jEgCPskP_dQA; Wed, 22 Sep 2021 13:22:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F190940480;
	Wed, 22 Sep 2021 13:22:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 80EF41BF2EB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 13:22:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6B1B7613D0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 13:22:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ANx0NVtFml3d for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Sep 2021 13:22:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 00C1160BC7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 13:22:49 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A880760FC1;
 Wed, 22 Sep 2021 13:22:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632316969;
 bh=RMLmKC2ffOq6sR/gzS529nDFxhd9wlS77MVexpDzG6E=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=lkWzjNglpdHkDPCl+AybxJ57pkPgALNx9aV/Fy7QfdVVqQdxl3S9IifKmtR6bzPUm
 sX0M6EVDQzdO/i1jX/kIjYrSlMhO3q2UFV3UOH5i56st5JIMfJ2fBmD9YzmUFV6qxO
 ci39RgUEQ5V/AsXiKRYf1m6ECWmF6BSrN+cGtMMq7atGke9nHXLXmAeIz/xL2gWY7V
 3bMA6Hc74s/osrSr5a2NocRFZq6W5fp9wNJrkzLeS6kpvj+Ag2GurH/Nzd3ddQPqV0
 YNDFc+U1kLBFE75PKv4+2Wy5cE1s0/n2YI5SsKYoRpR1X9ziVH0w++LaLJHHhKrBTG
 CyN3i7ALKNH7A==
Date: Wed, 22 Sep 2021 06:22:46 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20210922062246.26e38305@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <311a6c7e74ad612474446890a12c9d310b9507ed.1632300324.git.leonro@nvidia.com>
References: <311a6c7e74ad612474446890a12c9d310b9507ed.1632300324.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] devlink: Make
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
 Sergey Ryazanov <ryazanov.s.a@gmail.com>,
 Simon Horman <simon.horman@corigine.com>, oss-drivers@corigine.com,
 netdev@vger.kernel.org, Jerin Jacob <jerinj@marvell.com>,
 GR-everest-linux-l2@marvell.com, Subbaraya Sundeep <sbhatta@marvell.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, UNGLinuxDriver@microchip.com,
 Leon Romanovsky <leonro@nvidia.com>, Michael Chan <michael.chan@broadcom.com>,
 Linu Cherian <lcherian@marvell.com>, Intel Corporation <linuxwwan@intel.com>,
 Tariq Toukan <tariqt@nvidia.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Manish Chopra <manishc@marvell.com>, linux-rdma@vger.kernel.org,
 linux-staging@lists.linux.dev, Shannon Nelson <snelson@pensando.io>,
 intel-wired-lan@lists.osuosl.org, Vadym Kochan <vkochan@marvell.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Sunil Goutham <sgoutham@marvell.com>, Ariel Elior <aelior@marvell.com>,
 Ido Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Satanand Burla <sburla@marvell.com>, Felix Manlunas <fmanlunas@marvell.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Loic Poulain <loic.poulain@linaro.org>, Jiri Pirko <jiri@nvidia.com>,
 drivers@pensando.io, linux-omap@vger.kernel.org, Bin Luo <luobin9@huawei.com>,
 Salil Mehta <salil.mehta@huawei.com>, GR-Linux-NIC-Dev@marvell.com,
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

On Wed, 22 Sep 2021 11:58:03 +0300 Leon Romanovsky wrote:
> From: Leon Romanovsky <leonro@nvidia.com>
> 
> devlink_register() can't fail and always returns success, but all drivers
> are obligated to check returned status anyway. This adds a lot of boilerplate
> code to handle impossible flow.
> 
> Make devlink_register() void and simplify the drivers that use that
> API call.
> 
> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>

Acked-by: Jakub Kicinski <kuba@kernel.org>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
