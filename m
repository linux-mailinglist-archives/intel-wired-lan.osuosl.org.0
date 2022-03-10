Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 576A94D5561
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Mar 2022 00:30:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B2CA3847E2;
	Thu, 10 Mar 2022 23:30:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s28scbOBM2-9; Thu, 10 Mar 2022 23:30:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BAFBB84386;
	Thu, 10 Mar 2022 23:30:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 925761BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 23:30:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7FF5784386
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 23:30:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7wsLu4SnDg9b for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Mar 2022 23:30:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A2DD58436E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 23:30:12 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 82E2E60F7C;
 Thu, 10 Mar 2022 23:30:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80C7EC340F9;
 Thu, 10 Mar 2022 23:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646955010;
 bh=OmiH1rkkwDE4MvdTK+ueV6th3KQ1rH29do+nnexNmeM=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=ZIBNW1cIk0srYcw20shDMZxPiSx7n2DNC1oZF9TPp/bjBXUN+4aEHZn8G6UlZBxxe
 1OPIXaekuHJhkz4i2fbg2ebFIvkK/MmCp0GkBwvD5cZgDptuFLrBN93cuA9m9uW783
 khSYVo8WULzi40Apccxg663pOgfbs5opKnyeTa+z4EDGPahLn3xX8PypOW7ZkMhJfC
 LYJvjpoKuvoSYJ0tj+Dc4e7eTDDDmyYkaYmUphCEw19vE/NSSOF/x7jf8gireqIfLf
 hyye3h1IvPlRbnQmlQKl/lIbqU+/oYd7MXyBkYTvKy7QsogvSqxyxxLGKDcgvLoLAT
 tg5c3o4YAe+Mg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 6D119EAC095; Thu, 10 Mar 2022 23:30:10 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <164695501044.21304.15926630200023275833.git-patchwork-notify@kernel.org>
Date: Thu, 10 Mar 2022 23:30:10 +0000
References: <20220310171641.3863659-1-ivecera@redhat.com>
In-Reply-To: <20220310171641.3863659-1-ivecera@redhat.com>
To: Ivan Vecera <ivecera@redhat.com>
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix race condition during
 interface enslave
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, poros@redhat.com,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net.git (master)
by Jakub Kicinski <kuba@kernel.org>:

On Thu, 10 Mar 2022 18:16:41 +0100 you wrote:
> Commit 5dbbbd01cbba83 ("ice: Avoid RTNL lock when re-creating
> auxiliary device") changes a process of re-creation of aux device
> so ice_plug_aux_dev() is called from ice_service_task() context.
> This unfortunately opens a race window that can result in dead-lock
> when interface has left LAG and immediately enters LAG again.
> 
> Reproducer:
> ```
> #!/bin/sh
> 
> [...]

Here is the summary with links:
  - [net] ice: Fix race condition during interface enslave
    https://git.kernel.org/netdev/net/c/5cb1ebdbc434

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
