Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E18D772BB2D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jun 2023 10:50:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 80CBB41854;
	Mon, 12 Jun 2023 08:50:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 80CBB41854
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686559851;
	bh=xJwOLAY6wqoAHRjB9qmakhMOnYD4zQ/rQV3fJHKaOmE=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dljDRGmdvv+ERt9G2wE+J2xvP/Uc8ri5vfm0ZavKRkorOLjR/n2My1+p2TEAD7Ppp
	 RcbkUuDFJh9u9HHwJRDHqk/cjo5wM9RCbiQhEJOPLRt6JtB4/byIqKg2+aJCRF3hj0
	 SuVoSb7mYBJy4Ko6cqxe5/s/49iaiH/WjUNbltIawHLOjoyfhTkypdgZEsHj3jhiZA
	 Wh2/fO6dwu4IfO2b/bVcbgyv7BpSVw7KSmqvy1SicG9w86XZ0p/Cx+4Huo0CAVi4/7
	 MIj81nFm2U+Pn3dKAUqnX7gr/XuAR/coV2uRPzyzClDTbirChpQQQFEX9E6GMQXz95
	 ffj9aNeX6Zg+Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SW7F2-tkcDoc; Mon, 12 Jun 2023 08:50:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 73B654183B;
	Mon, 12 Jun 2023 08:50:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 73B654183B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C54E51BF34E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 08:50:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9DF0640122
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 08:50:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9DF0640122
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T_QutN52z7yo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jun 2023 08:50:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B6AF140012
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B6AF140012
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 08:50:42 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A6D7361D55;
 Mon, 12 Jun 2023 08:50:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 988B1C433EF;
 Mon, 12 Jun 2023 08:50:40 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 75965E29F37; Mon, 12 Jun 2023 08:50:40 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <168655984047.8602.3715939689092508081.git-patchwork-notify@kernel.org>
Date: Mon, 12 Jun 2023 08:50:40 +0000
References: <20230609135917.1084327-1-vladimir.oltean@nxp.com>
In-Reply-To: <20230609135917.1084327-1-vladimir.oltean@nxp.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1686559840;
 bh=b+bn7leRxDoiLBJRTdyK2xdyjGCVByaugJwrw4baSm8=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=ZtlT3oW6O+0aWyhdGUkxSbE2ij+9u7rDtrmftaiLjBAS+cxIXqTnwz2w25aYFFmAB
 Z4BL5BqUnT1oYE3HWF5nkWw4L8sBb7OYboeXQH5xJbrAfvcb8ooNJM3My+dyGlXEGf
 CMBko6iEZTc2MXLc3zg13pjvaFVRE8/6ygjk0lAhKGleOoAXra+u0rR3x8+Kz0tW/Q
 aXAu2ROwczNdF18UnhPXuTmsUAcVC49knZa/PlbGhABLkBBuoNhFKUVmlWfaewu4e/
 4pMNp5cIFK9FtOWhGVw1gldQpsu9/WIKtedR2Myqppgl4coeuQi0HQ1NdlN4h5gofu
 VzbwAk33h9l1w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ZtlT3oW6
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/2] Fixes for taprio xstats
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
Cc: jiri@resnulli.us, netdev@vger.kernel.org, xiaoliang.yang_1@nxp.com,
 kurt@linutronix.de, jhs@mojatatu.com, linux-kernel@vger.kernel.org,
 jesse.brandeburg@intel.com, edumazet@google.com,
 mohammad.athari.ismail@intel.com, anthony.l.nguyen@intel.com,
 xiyou.wangcong@gmail.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (main)
by David S. Miller <davem@davemloft.net>:

On Fri,  9 Jun 2023 16:59:15 +0300 you wrote:
> 1. Taprio classes correspond to TXQs, and thus, class stats are TXQ
>    stats not TC stats.
> 2. Drivers reporting taprio xstats should report xstats for *this*
>    taprio, not for a previous one.
> 
> Vladimir Oltean (2):
>   net/sched: taprio: report class offload stats per TXQ, not per TC
>   net: enetc: reset taprio stats when taprio is deleted
> 
> [...]

Here is the summary with links:
  - [net-next,1/2] net/sched: taprio: report class offload stats per TXQ, not per TC
    https://git.kernel.org/netdev/net-next/c/2b84960fc5dd
  - [net-next,2/2] net: enetc: reset taprio stats when taprio is deleted
    https://git.kernel.org/netdev/net-next/c/f1e668d29c57

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
