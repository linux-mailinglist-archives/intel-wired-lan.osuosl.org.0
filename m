Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 516CE774E6E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Aug 2023 00:40:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D94E682123;
	Tue,  8 Aug 2023 22:40:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D94E682123
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691534430;
	bh=qvyU/dtD3vYvs3cVVqQhQ1UbvcUo2ElyBkybPtaa42E=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8lv4brcXG3hflu9KXCDy+X1VGxf/2xdDckShYBjS2mhyTJ9ZHIHmpvcvjyzdEPXMm
	 xMQxfT7oqOZ8YtunWzwU4omdVkrptxTNef3eqWyA9x2wM7Thh1mzRzfcRL2WaMNs6V
	 7KdWKAKuq/OlIbRdiZQLbxvYJ6u378gIRdf+XcoUqaRsavtYt/xfimIa03kYO3/0ee
	 jfXsmFPW+c8c+4iZxCqG2sn5y3UaKG1OP52j65DKRVan+06ANv9BzNT9sDLqIrZvpW
	 uZR4QYbXr475U6WoydYSvUn4quwbkQkv9ZC2rQ+RW954cKWq1PQssIlsm+eGpKCRYq
	 U/qHhJwoElgeQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cLaoSYjkBAnD; Tue,  8 Aug 2023 22:40:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CEC2682121;
	Tue,  8 Aug 2023 22:40:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CEC2682121
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3EFB31BF3A3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 22:40:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 14BAB40301
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 22:40:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14BAB40301
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O1D3Kyt0OXrq for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Aug 2023 22:40:24 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1D039402C2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 22:40:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D039402C2
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 5B29062DDD;
 Tue,  8 Aug 2023 22:40:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 47D6AC433CB;
 Tue,  8 Aug 2023 22:40:22 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 1C1A9E270C1; Tue,  8 Aug 2023 22:40:22 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <169153442210.29360.11186424124562731879.git-patchwork-notify@kernel.org>
Date: Tue, 08 Aug 2023 22:40:22 +0000
References: <20230807091347.3804523-1-linma@zju.edu.cn>
In-Reply-To: <20230807091347.3804523-1-linma@zju.edu.cn>
To: Lin Ma <linma@zju.edu.cn>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1691534422;
 bh=mJG5rpnaod2qIsDUv4+1eWd5VxYuF2zZBjEDf6ZWRbw=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=EdOiOQeay6hxzk8+2LdvXnESSsYM3tpL224doupU/hg1gYF03WYrrBOWSt2yPf/sl
 q8UIoLMroC2aQ4uKbO3sfRd9UmiFBVvYuUQNm7fr6yll2yE0rNPO6WV0uPTIAxChby
 DjmvswUZ7IbxuRNRbPRYxA3se1gEIt/Drl6wQvTXDCvAcZdIgnbly9+EuT6ZN+UYZZ
 wlunJORpuy9/YXRbbxqzKO6hHFToh2zwYNrDPK/5tHEon8ONkOnyZkhkNiXAYkw7gT
 5Lr1K6trXmud9GjNe1ggyYUhw2QhkXSWzaYGPeCx+Ab9IAl+mvxDhxp/eb2iBgjNUU
 lsFGAIdNzR71g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=EdOiOQea
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] rtnetlink: remove
 redundant checks for nlattr IFLA_BRIDGE_MODE
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
Cc: ajit.khaparde@broadcom.com, simon.horman@corigine.com,
 somnath.kotur@broadcom.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 michael.chan@broadcom.com, louis.peens@corigine.com, leon@kernel.org,
 linux-rdma@vger.kernel.org, jesse.brandeburg@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 huanhuan.wang@corigine.com, tglx@linutronix.de, yinjun.zhang@corigine.com,
 na.wang@corigine.com, sriharsha.basavapatna@broadcom.com,
 netdev@vger.kernel.org, oss-drivers@corigine.com, linux-kernel@vger.kernel.org,
 saeedm@nvidia.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Mon,  7 Aug 2023 17:13:47 +0800 you wrote:
> The commit d73ef2d69c0d ("rtnetlink: let rtnl_bridge_setlink checks
> IFLA_BRIDGE_MODE length") added the nla_len check in rtnl_bridge_setlink,
> which is the only caller for ndo_bridge_setlink handlers defined in
> low-level driver codes. Hence, this patch cleanups the redundant checks in
> each ndo_bridge_setlink handler function.
> 
> Suggested-by: Hangbin Liu <liuhangbin@gmail.com>
> Signed-off-by: Lin Ma <linma@zju.edu.cn>
> 
> [...]

Here is the summary with links:
  - [net-next,v2] rtnetlink: remove redundant checks for nlattr IFLA_BRIDGE_MODE
    https://git.kernel.org/netdev/net-next/c/f1d152eb66a3

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
