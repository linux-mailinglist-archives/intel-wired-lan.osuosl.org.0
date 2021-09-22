Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EFBE414A65
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Sep 2021 15:20:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E58DB407C7;
	Wed, 22 Sep 2021 13:20:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nfxjYqWpYQna; Wed, 22 Sep 2021 13:20:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 702E840715;
	Wed, 22 Sep 2021 13:20:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 737861BF2EB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 13:20:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 61CD084231
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 13:20:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 15J4U1o-fzgV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Sep 2021 13:20:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B3EF98429F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 13:20:07 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 53AC4611B0;
 Wed, 22 Sep 2021 13:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632316807;
 bh=e629AuGefhJIdNjI5mU4FtRRKzsoCkMCGvZj9iUO1/Q=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=uCTJ6JSLYDlQIH1ID+doV82pPqQ2TIQE9AICXyFKkO1xsCfKxWYZbneTZ83/7Rixb
 DkJlLSsFTDVX8ojjWa08gRjAHp7Ej2Q42dsqWCsTlmh67sc1386kXvQuDJ3sGUdHCi
 Xnuz7T5mxdOLVP7q64d5gdR9UT6MDOdCjBBkgIGXRg0QLFxu1RofORurf+ZJ/SoLxS
 cinA9x1EJzTrOZ1R2TxM/BAm3LYjrgS/Y0FDqV9kwcZFYb5tdko0QSHJZf0Zio72p2
 Alva7PGmjxIAFzTyZG2meD4RddnhmDpwRA8BTbiKaP6duFVeP3m8kLuN9gF7trjZ1h
 T7irIwp/55+TQ==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 401F660A7C;
 Wed, 22 Sep 2021 13:20:07 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <163231680725.16453.13582291901349669974.git-patchwork-notify@kernel.org>
Date: Wed, 22 Sep 2021 13:20:07 +0000
References: <311a6c7e74ad612474446890a12c9d310b9507ed.1632300324.git.leonro@nvidia.com>
In-Reply-To: <311a6c7e74ad612474446890a12c9d310b9507ed.1632300324.git.leonro@nvidia.com>
To: Leon Romanovsky <leon@kernel.org>
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
Cc: andrew@lunn.ch, alexandre.belloni@bootlin.com, ryazanov.s.a@gmail.com,
 simon.horman@corigine.com, oss-drivers@corigine.com, netdev@vger.kernel.org,
 jerinj@marvell.com, GR-everest-linux-l2@marvell.com, sbhatta@marvell.com,
 ioana.ciornei@nxp.com, UNGLinuxDriver@microchip.com, leonro@nvidia.com,
 michael.chan@broadcom.com, lcherian@marvell.com, linuxwwan@intel.com,
 tariqt@nvidia.com, f.fainelli@gmail.com, manishc@marvell.com,
 linux-rdma@vger.kernel.org, linux-staging@lists.linux.dev, snelson@pensando.io,
 intel-wired-lan@lists.osuosl.org, vkochan@marvell.com, kuba@kernel.org,
 yisen.zhuang@huawei.com, vivien.didelot@gmail.com, sgoutham@marvell.com,
 aelior@marvell.com, idosch@nvidia.com, richardcochran@gmail.com,
 sburla@marvell.com, fmanlunas@marvell.com, claudiu.manoil@nxp.com,
 loic.poulain@linaro.org, jiri@nvidia.com, drivers@pensando.io,
 linux-omap@vger.kernel.org, luobin9@huawei.com, salil.mehta@huawei.com,
 GR-Linux-NIC-Dev@marvell.com, gregkh@linuxfoundation.org,
 vladimir.oltean@nxp.com, linux-kernel@vger.kernel.org, coiby.xu@gmail.com,
 davem@davemloft.net, tchornyi@marvell.com, hkelam@marvell.com,
 jonathan.lemon@gmail.com, m.chetan.kumar@intel.com, dchickles@marvell.com,
 saeedm@nvidia.com, gakula@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net-next.git (refs/heads/master):

On Wed, 22 Sep 2021 11:58:03 +0300 you wrote:
> From: Leon Romanovsky <leonro@nvidia.com>
> 
> devlink_register() can't fail and always returns success, but all drivers
> are obligated to check returned status anyway. This adds a lot of boilerplate
> code to handle impossible flow.
> 
> Make devlink_register() void and simplify the drivers that use that
> API call.
> 
> [...]

Here is the summary with links:
  - [net-next,v1] devlink: Make devlink_register to be void
    https://git.kernel.org/netdev/net-next/c/db4278c55fa5

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
