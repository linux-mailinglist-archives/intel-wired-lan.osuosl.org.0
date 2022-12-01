Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3808963E9A2
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Dec 2022 07:10:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8FE0A40C53;
	Thu,  1 Dec 2022 06:10:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8FE0A40C53
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669875026;
	bh=F6y/xQwi0zKN2hBKzVEum7qxXfnZP/MegN+3xeujgMw=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aq7+rt4vEo8s41uXLwCqijW6VS8EoHrhklWjRP1esjZrOMEd6Dfc3Sq+YEcEGUn7s
	 /TTy492Un9a/0HfaNLvwDEI03wxZhbrq7e0MLHHahvvQ0tGoNnKbYIxOTkjMifDuBi
	 mD+aXdyqyllrc6D9AcKPlr+LiAvLucHjzldda2f6juOKYzCj4a9oihoqJSqONMvtU5
	 hhH2OogVSxzDVgMKCPVeoWaQIrgBSCtYt/oqS+5YZyGhmw7ZKHfGUPqkcGdS5YeQvo
	 BwWW6fdhpF+vyrQVG/oKAT51tAEr9oZiomSx1fs57UgDaw/YZFDYWsThvyh7ChBRz/
	 OnYq80Hsy+2jA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EaVYtlkuluvV; Thu,  1 Dec 2022 06:10:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0681940514;
	Thu,  1 Dec 2022 06:10:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0681940514
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1D2F71BF846
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 06:10:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 04FF360D88
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 06:10:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04FF360D88
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VvOwULBM-prY for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Dec 2022 06:10:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C74760C04
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3C74760C04
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 06:10:19 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6475561EAB;
 Thu,  1 Dec 2022 06:10:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4876AC43141;
 Thu,  1 Dec 2022 06:10:17 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 2B4F0E29F38; Thu,  1 Dec 2022 06:10:17 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <166987501717.18933.6140637869420910519.git-patchwork-notify@kernel.org>
Date: Thu, 01 Dec 2022 06:10:17 +0000
References: <20221129095140.3913303-1-mailhol.vincent@wanadoo.fr>
In-Reply-To: <20221129095140.3913303-1-mailhol.vincent@wanadoo.fr>
To: Vincent MAILHOL <mailhol.vincent@wanadoo.fr>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1669875017;
 bh=hozUH6T6PH3Y6/hM/gJcrV49l5jrvVEfOsr88QDqV4A=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=NMlv2kIdOXXpsxwO6wWMg0z/dfV3LoKJzOMbEvoBJjUIP3ajugPonUv1iXUVq1Za3
 JHmzOGYQTDkKOcrjgfC12ngt1+qLyDtjSP9+0VEMYEiHzWXEl5Rb7AIWp4vYfSv+Vv
 lquFGjUBrqCB4h5U06a5UbC3rzJZFVLWf8hTmZdokwK1l1rF/aIpPjoNGLtBFnXY37
 AaDqGt2RZBdG2tx5Wbg+OH1ik76+BN7jbL40VS8YW7u7l5JT8KBBRQlfyRVhj68bQy
 4sp5pIdNM5Vrsq20UR1LJu/3iCQ0J2YOi0WcmJzXrscYxQ4yeOaCWxejmyI0MumfM+
 Z0uiwAXegZgJQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=NMlv2kId
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 0/3] net: devlink: return
 the driver name in devlink_nl_info_fill
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
Cc: andrew@lunn.ch, sthotton@marvell.com, simon.horman@corigine.com,
 kurt@linutronix.de, edumazet@google.com, sbhatta@marvell.com,
 ioana.ciornei@nxp.com, drivers@pensando.io, lcherian@marvell.com,
 f.fainelli@gmail.com, herbert@gondor.apana.org.au, leon@kernel.org,
 linux-rdma@vger.kernel.org, shalomt@mellanox.com, schalla@marvell.com,
 chi.minghao@zte.com.cn, chenhao288@hisilicon.com, huangguangbin2@huawei.com,
 snelson@pensando.io, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 vadfed@fb.com, pabeni@redhat.com, yisen.zhuang@huawei.com,
 sgoutham@marvell.com, aelior@marvell.com, idosch@nvidia.com,
 richardcochran@gmail.com, arno@natisbad.org, jiri@mellanox.com,
 jiri@nvidia.com, michael.chan@broadcom.com, petrm@nvidia.com,
 salil.mehta@huawei.com, dmichail@fungible.com, manishc@marvell.com,
 bbrezillon@kernel.org, netdev@vger.kernel.org, oss-drivers@corigine.com,
 vadimp@mellanox.com, linux-kernel@vger.kernel.org, gakula@marvell.com,
 tchornyi@marvell.com, hkelam@marvell.com, linux-crypto@vger.kernel.org,
 jonathan.lemon@gmail.com, jerinj@marvell.com, olteanv@gmail.com,
 saeedm@nvidia.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (master)
by Jakub Kicinski <kuba@kernel.org>:

On Tue, 29 Nov 2022 18:51:37 +0900 you wrote:
> The driver name is available in device_driver::name. Right now,
> drivers still have to report this piece of information themselves in
> their devlink_ops::info_get callback function.
> 
> The goal of this series is to have the devlink core to report this
> information instead of the drivers.
> 
> [...]

Here is the summary with links:
  - [net-next,v6,1/3] net: devlink: let the core report the driver name instead of the drivers
    https://git.kernel.org/netdev/net-next/c/226bf9805506
  - [net-next,v6,2/3] net: devlink: make the devlink_ops::info_get() callback optional
    https://git.kernel.org/netdev/net-next/c/c5cd7c86847c
  - [net-next,v6,3/3] net: devlink: clean-up empty devlink_ops::info_get()
    https://git.kernel.org/netdev/net-next/c/cf4590b91db4

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
