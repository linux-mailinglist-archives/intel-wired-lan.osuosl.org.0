Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1CD67DAF1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jan 2023 01:50:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AF67281EBA;
	Fri, 27 Jan 2023 00:50:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF67281EBA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674780627;
	bh=vEdz1BqgS/ylknQY78kG2AjTabwukQPVxQgF2fA0q84=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FCtA4jFQPZSxi/gjIjPePKNT5sWQQ2xgaoJ/hyWerBiOJRorIHY5ZIVqz2Bt718s9
	 87S0kDBNTsp5OETFdVaQCbxZ+s/Q4KZaMeZO36QAqtoViVSBlGTky3wtwB9SLpbwl+
	 37nx7vwl2hqskx/KvJRROoMzujqBQ6Cy8ilt5cdUs6HbqhzXN0GnuYBYCeSyXq3b36
	 xsk9HilUMco0VjOI2dU9Y0mkwXhZplyLg3II8cS9Xi4pBpGDs9Jdi6uQqPa6iTr3Ek
	 Ts/hi1bw43pxI3h+panOhHU8OpYASSBziyr3ftMVr83MsCAfoYMdmen0Q4AejNsbsv
	 QGa+JX8Pz3dlw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rXhoJKPswx08; Fri, 27 Jan 2023 00:50:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9D47181EB7;
	Fri, 27 Jan 2023 00:50:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D47181EB7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E8D851BF2F3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 00:50:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C51AC81EB7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 00:50:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C51AC81EB7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IAvXXnTK34XB for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jan 2023 00:50:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 701FC81E2B
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 701FC81E2B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 00:50:20 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 21EE6619E4;
 Fri, 27 Jan 2023 00:50:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F6EEC4339B;
 Fri, 27 Jan 2023 00:50:18 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 68D3EF83ED2; Fri, 27 Jan 2023 00:50:18 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <167478061842.17988.12550218546200310016.git-patchwork-notify@kernel.org>
Date: Fri, 27 Jan 2023 00:50:18 +0000
References: <cover.1674560845.git.leon@kernel.org>
In-Reply-To: <cover.1674560845.git.leon@kernel.org>
To: Leon Romanovsky <leon@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674780618;
 bh=8+PlQ5dRXgotElxfcj/CEkKeon4B3RXjfPbboiV1eQE=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=HRfM7PoZtcACs73ZnVIPMnM7YJjzRr+XAh20Z2UzQBIsXL8Ek6HSgC85T8PMzRY60
 n7w6O5UbQT4PtE/wW3lttDAZBcCBoXY8SXQ2kwjHVZbWWq91lDkvJEBKR6q1ctQtDU
 3CAqgpUWA25PEmn4ofSM/TBgDw2zuU/S6PlRpuL0nV5wyt6UixT8u64DpOJfU+KCla
 j7YlD0H7bvx3m6jACJRx72LVHnXe+x8+jEO6ybhwevTLYAGnYJ1k8XFFALJE8tMScS
 sQTgXvtje6R/V6mJXq80Y77m/joPzYTZn+P+1yJpwVf4Zq4FpYteIFuDdmnwgIv/QH
 HUSQQAGrplwkw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=HRfM7PoZ
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 00/10] Convert drivers to
 return XFRM configuration errors through extack
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
Cc: steffen.klassert@secunet.com, vfalico@gmail.com,
 herbert@gondor.apana.org.au, corbet@lwn.net, anthony.l.nguyen@intel.com,
 j.vosburgh@gmail.com, oss-drivers@corigine.com, linux-doc@vger.kernel.org,
 rajur@chelsio.com, jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org,
 edumazet@google.com, netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 ayush.sawal@chelsio.com, simon.horman@corigine.com, kuba@kernel.org,
 pabeni@redhat.com, saeedm@nvidia.com, davem@davemloft.net, andy@greyhouse.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (master)
by Jakub Kicinski <kuba@kernel.org>:

On Tue, 24 Jan 2023 13:54:56 +0200 you wrote:
> Changelog
> v1:
>  * Fixed rebase errors in mlx5 and cxgb4 drivers
>  * Fixed previously existed typo in nfp driver
>  * Added Simon's ROB
>  * Removed my double SOB tags
> v0: https://lore.kernel.org/all/cover.1674481435.git.leon@kernel.org
> 
> [...]

Here is the summary with links:
  - [net-next,v1,01/10] xfrm: extend add policy callback to set failure reason
    https://git.kernel.org/netdev/net-next/c/3089386db090
  - [net-next,v1,02/10] net/mlx5e: Fill IPsec policy validation failure reason
    https://git.kernel.org/netdev/net-next/c/1bb70c5ab6ec
  - [net-next,v1,03/10] xfrm: extend add state callback to set failure reason
    https://git.kernel.org/netdev/net-next/c/7681a4f58fb9
  - [net-next,v1,04/10] net/mlx5e: Fill IPsec state validation failure reason
    https://git.kernel.org/netdev/net-next/c/902812b81604
  - [net-next,v1,05/10] netdevsim: Fill IPsec state validation failure reason
    https://git.kernel.org/netdev/net-next/c/6c4869795568
  - [net-next,v1,06/10] nfp: fill IPsec state validation failure reason
    https://git.kernel.org/netdev/net-next/c/05ddf5f8cb6c
  - [net-next,v1,07/10] ixgbevf: fill IPsec state validation failure reason
    https://git.kernel.org/netdev/net-next/c/c068ec5c964d
  - [net-next,v1,08/10] ixgbe: fill IPsec state validation failure reason
    https://git.kernel.org/netdev/net-next/c/505c500cfcb4
  - [net-next,v1,09/10] bonding: fill IPsec state validation failure reason
    https://git.kernel.org/netdev/net-next/c/3fe57986271a
  - [net-next,v1,10/10] cxgb4: fill IPsec state validation failure reason
    https://git.kernel.org/netdev/net-next/c/8c284ea429d2

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
