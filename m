Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6C1698B1D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Feb 2023 04:20:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2038F81FDF;
	Thu, 16 Feb 2023 03:20:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2038F81FDF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676517632;
	bh=qunBo1OU5WcBCsWmL1wLX48P1ZCcZ8HYXIVgYQQvuB4=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=s7pQ6xC//0QxeagkyqSBydxYU7aex3FAc+ZDYJMwMb0P0id6YsW5EZ3wQWZr3Urmt
	 /cEfXa1k06XT72P8mKhHiScpv6br30yynzyun6EPceZpu4THmI+0TlTUFL7ZwVXfPm
	 8k3/UxF5bQBd2Hwd59xufwKn8nY/tSaGfN6n/3YnUqs+OVMaFPNvCkdy5G9nEW/2lq
	 CNOHwdFnTjXjB44WbKbOC9ThcU8pMhqA5P+djfkkW8RD7V2i/AvlUUvCvlAkY8FMjO
	 e9qAUM0b6NQn/8Vgyk//ycXAspjLFlRFpAL6hPfxtCSwmNOfqiCxY+cj1ta8wkfnKp
	 mtNRFlMV3uhAg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wr9PbtrBAbQd; Thu, 16 Feb 2023 03:20:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 113A281FE4;
	Thu, 16 Feb 2023 03:20:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 113A281FE4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 224C81BF96B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 03:20:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 09801417CF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 03:20:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 09801417CF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XC3iZOpCN-EP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Feb 2023 03:20:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF7DC4176B
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EF7DC4176B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 03:20:18 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3613861C55;
 Thu, 16 Feb 2023 03:20:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C289C433EF;
 Thu, 16 Feb 2023 03:20:17 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 71292E68D2E; Thu, 16 Feb 2023 03:20:17 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <167651761745.25163.6662453649144442284.git-patchwork-notify@kernel.org>
Date: Thu, 16 Feb 2023 03:20:17 +0000
References: <f2b537f86b34fc176fbc6b3d249b46a20a87a2f3.1676405131.git.lorenzo@kernel.org>
In-Reply-To: <f2b537f86b34fc176fbc6b3d249b46a20a87a2f3.1676405131.git.lorenzo@kernel.org>
To: Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1676517617;
 bh=yfqzy3EU2KiH1d0N1+Ms3rlY626BGZ1PQE/BDfIiaog=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=qZpKVw5mKJD5eZyxvJgxFtGpo6nrsHsiY9n3ziO5kr5tKEmEIgxJnR9uUGp1BNYsD
 4ozTy9I1R2HqDfvoemSX8TzxwZ2orzEeOlSxtlLVPJUph1oylIppplJhW8hmtvV2vn
 C8OZ9eRpiprKdD+b1IuDSsKQOQLGTN2ljY4jTeY27oQiSXUz00cTfxPR209RfCkJGR
 5/IWOaAW6nv88gVdXK9fINsBpbHjKN8gojp7WFK+CxVVNzp/WuISk4nVSDDDMpsSmR
 Ybszik6tja9Io+DsocjH3JDuOFXuMDpAJg6pEQG0FlPtgS9YqxF86IB0AiAORiJQ1S
 a/PdzWyCsZ1zA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=qZpKVw5m
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: check vsi type before
 setting xdp_features flag
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
Cc: netdev@vger.kernel.org, jesse.brandeburg@intel.com, edumazet@google.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net-next.git (master)
by Jakub Kicinski <kuba@kernel.org>:

On Tue, 14 Feb 2023 21:07:33 +0100 you wrote:
> Set xdp_features flag just for I40E_VSI_MAIN vsi type since XDP is
> supported just in this configuration.
> 
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)

Here is the summary with links:
  - [net-next] i40e: check vsi type before setting xdp_features flag
    https://git.kernel.org/netdev/net-next/c/9dd6e53ef63d

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
