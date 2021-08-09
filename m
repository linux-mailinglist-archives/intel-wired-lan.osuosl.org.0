Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C70BA3E42A8
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Aug 2021 11:30:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C4F17401E7;
	Mon,  9 Aug 2021 09:30:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YOIpLBr_vsdY; Mon,  9 Aug 2021 09:30:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8BB6A4014B;
	Mon,  9 Aug 2021 09:30:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 71BDE1BF3EE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Aug 2021 09:30:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5E55860644
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Aug 2021 09:30:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TJHF7__9jvzx for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Aug 2021 09:30:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B8BDB6062F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Aug 2021 09:30:05 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 576F56101D;
 Mon,  9 Aug 2021 09:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628501405;
 bh=nOXYxYQLW5zR6aM4Cmr6nujW0ijsZafmxUDF+RZWAMY=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=emzl5ThEFQTkQ+mmgehTGVj65FmnpQTe9RYyjHCPh361pv5kj2fz/z6Bhp3U2YGS+
 ZoItmmKoKrCxAgeySofsNiyn50bHWRA7+Y+bVQwqoAo0xznxfiUGb4YU9VvE+h4UXM
 AYow2Vmc0kokIgc1EzcfqKv8Ls8gzN0nfy33LHSCjLVNIjh9Zloc5r9/U6aMPdHffM
 CEmSZo+udGe8buqiIrrz8lDk/Cwf+fycgnr3l/BrSlz6sIBDDw1KgVCJVoJbLsTMh3
 qt6icx9m92+823p6zQ3pk/t1Go7K6qNuPTuKF0jqY6vNNbtDO4lWTqNShv4q4vBOLs
 jO7ubl68Mq09g==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 4346660A14;
 Mon,  9 Aug 2021 09:30:05 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162850140527.16932.1083737685938240617.git-patchwork-notify@kernel.org>
Date: Mon, 09 Aug 2021 09:30:05 +0000
References: <6859503f7e3e6cd706bf01ef06f1cae8c0b0970b.1628449004.git.leonro@nvidia.com>
In-Reply-To: <6859503f7e3e6cd706bf01ef06f1cae8c0b0970b.1628449004.git.leonro@nvidia.com>
To: Leon Romanovsky <leon@kernel.org>
Subject: Re: [Intel-wired-lan] [PATCH net-next] devlink: Set device as early
 as possible
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
Cc: andrew@lunn.ch, alexandre.belloni@bootlin.com, simon.horman@corigine.com,
 oss-drivers@corigine.com, jerinj@marvell.com, GR-everest-linux-l2@marvell.com,
 sbhatta@marvell.com, ioana.ciornei@nxp.com, UNGLinuxDriver@microchip.com,
 leonro@nvidia.com, michael.chan@broadcom.com, lcherian@marvell.com,
 tariqt@nvidia.com, f.fainelli@gmail.com, manishc@marvell.com,
 linux-staging@lists.linux.dev, snelson@pensando.io,
 intel-wired-lan@lists.osuosl.org, vkochan@marvell.com, kuba@kernel.org,
 yisen.zhuang@huawei.com, vivien.didelot@gmail.com, sgoutham@marvell.com,
 aelior@marvell.com, idosch@nvidia.com, richardcochran@gmail.com,
 sburla@marvell.com, fmanlunas@marvell.com, claudiu.manoil@nxp.com,
 jiri@nvidia.com, drivers@pensando.io, linux-omap@vger.kernel.org,
 luobin9@huawei.com, salil.mehta@huawei.com, GR-Linux-NIC-Dev@marvell.com,
 gregkh@linuxfoundation.org, vladimir.oltean@nxp.com,
 linux-kernel@vger.kernel.org, coiby.xu@gmail.com, davem@davemloft.net,
 tchornyi@marvell.com, hkelam@marvell.com, netdev@vger.kernel.org,
 dchickles@marvell.com, saeedm@nvidia.com, gakula@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net-next.git (refs/heads/master):

On Sun,  8 Aug 2021 21:57:43 +0300 you wrote:
> From: Leon Romanovsky <leonro@nvidia.com>
> 
> All kernel devlink implementations call to devlink_alloc() during
> initialization routine for specific device which is used later as
> a parent device for devlink_register().
> 
> Such late device assignment causes to the situation which requires us to
> call to device_register() before setting other parameters, but that call
> opens devlink to the world and makes accessible for the netlink users.
> 
> [...]

Here is the summary with links:
  - [net-next] devlink: Set device as early as possible
    https://git.kernel.org/netdev/net-next/c/919d13a7e455

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
