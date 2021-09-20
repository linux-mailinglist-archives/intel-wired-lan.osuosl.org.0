Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BAA1412760
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Sep 2021 22:39:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 46ABD40364;
	Mon, 20 Sep 2021 20:39:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TzhQHUX2UmEK; Mon, 20 Sep 2021 20:39:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1E7DC400CC;
	Mon, 20 Sep 2021 20:39:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F0B481BF383
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Sep 2021 20:39:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EA68E4039D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Sep 2021 20:39:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4PxHyKjnLaOZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Sep 2021 20:39:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6FD8E40389
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Sep 2021 20:39:18 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2E215604DC;
 Mon, 20 Sep 2021 20:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632170358;
 bh=HSGus3tms+/naFCRfd2OqZSYp0GX+lVXfRB0c7xZaaE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=VOyWXLhIjft27gGpCqTFtBF9Lad4X9qm6BBibJf/CTf+N7LjMSljUrew/M6TLGR7r
 995V8mfqkgdxuO+JzwcfwJUpf7n886+Z1UwpCQSWcuePUzg1jHnnMC1MQqJWszFNaI
 b5jWc3vH5Ll8FL+zizrkKWFquAZ6Jelv9JXVuYcpDifuC56KUXEV0S/ryQdzVKIHH5
 Kb0Nd7b0Z4hBVJuMbEeTpWASjbFsfMFt0QotnAxqpEmiCjoIG3VTYi9Gnn1tWtYPY8
 QWvxlVLr5N4MSYEVTo+J3DCgZzIZxBV/14Fm0a6kZwIGOC8niagziQNAmuSpPkxCZ3
 SmHf4AEdMHqXQ==
Date: Mon, 20 Sep 2021 13:39:15 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20210920133915.59ddfeef@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <2e089a45e03db31bf451d768fc588c02a2f781e8.1632148852.git.leonro@nvidia.com>
References: <2e089a45e03db31bf451d768fc588c02a2f781e8.1632148852.git.leonro@nvidia.com>
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
 Leon Romanovsky <leonro@nvidia.com>, Michael Chan <michael.chan@broadcom.com>,
 Linu Cherian <lcherian@marvell.com>, Tariq Toukan <tariqt@nvidia.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Manish Chopra <manishc@marvell.com>,
 linux-rdma@vger.kernel.org, linux-staging@lists.linux.dev,
 Shannon Nelson <snelson@pensando.io>, intel-wired-lan@lists.osuosl.org,
 Vadym Kochan <vkochan@marvell.com>, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Sunil Goutham <sgoutham@marvell.com>, Ariel Elior <aelior@marvell.com>,
 Ido Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Satanand Burla <sburla@marvell.com>, Felix Manlunas <fmanlunas@marvell.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Jiri Pirko <jiri@nvidia.com>,
 drivers@pensando.io, linux-omap@vger.kernel.org, Bin Luo <luobin9@huawei.com>,
 Salil Mehta <salil.mehta@huawei.com>, GR-Linux-NIC-Dev@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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

On Mon, 20 Sep 2021 17:41:44 +0300 Leon Romanovsky wrote:
> From: Leon Romanovsky <leonro@nvidia.com>
> 
> devlink_register() can't fail and always returns success, but all drivers
> are obligated to check returned status anyway. This adds a lot of boilerplate
> code to handle impossible flow.
> 
> Make devlink_register() void and simplify the drivers that use that
> API call.

Unlike unused functions bringing back error handling may be
non-trivial. I'd rather you deferred such cleanups until you're 
ready to post your full rework and therefore give us some confidence 
the revert will not be needed.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
