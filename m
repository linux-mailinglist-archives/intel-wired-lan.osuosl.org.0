Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EEF44841BC
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jan 2022 13:40:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2BA2A410A2;
	Tue,  4 Jan 2022 12:40:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IqF_eeURIF5C; Tue,  4 Jan 2022 12:40:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 446EF409C3;
	Tue,  4 Jan 2022 12:40:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 02C251BF288
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jan 2022 12:40:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EFDA540640
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jan 2022 12:40:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6871bpemhmGe for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jan 2022 12:40:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9948240643
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jan 2022 12:40:15 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 1D47AB80E59;
 Tue,  4 Jan 2022 12:40:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5843CC36AFC;
 Tue,  4 Jan 2022 12:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1641300011;
 bh=DpqUB/vLHizCTNeIdtS8+PMqCOosmOKzrv0hvCCBznY=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=ilaHJALwF7QJcaIkeTJdOidggSeUjlE5NyswhYtZxjpa5Dro3cgbpayRpD8QhU9xC
 RBd6opxhSzHcFGYCBIhHUqk0elwyhxiEF6vocfvbOU6+nN/Ah/aLX1vR65cfE/HgBR
 t+6c7cTdI4+h0ICqMISeZ49Zouqx9M6gobLNcAROb0Ucea1KWUGSZ5nx385ku4ormG
 TsMPfiBoGrNtpPrhX9lTeCqwUVYdYFQN0nFwDyD0QQ9ZuSZl96dDYxIyrEvQJDf5ce
 piYPLSG0fPvjscwzwAkkelTeeBvXcT+J/abbGcfUaoPfsKJEsKc5gXpckhSRQ5egm5
 6vm9dcglJBRAQ==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 45B5AF79407; Tue,  4 Jan 2022 12:40:11 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <164130001127.24992.5502128028484482791.git-patchwork-notify@kernel.org>
Date: Tue, 04 Jan 2022 12:40:11 +0000
References: <20220104034827.1564167-1-kuba@kernel.org>
In-Reply-To: <20220104034827.1564167-1-kuba@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Subject: Re: [Intel-wired-lan] [PATCH net-next] net: fixup build after bpf
 header changes
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
Cc: leon@kernel.org, linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 abdhalee@linux.vnet.ibm.com, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, saeedm@nvidia.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net-next.git (master)
by David S. Miller <davem@davemloft.net>:

On Mon,  3 Jan 2022 19:48:27 -0800 you wrote:
> Recent bpf-next merge brought in header changes which uncovered
> includes missing in net-next which were not present in bpf-next.
> Build problems happen only on less-popular arches like hppa,
> sparc, alpha etc.
> 
> I could repro the build problem with ice but not the mlx5 problem
> Abdul was reporting. mlx5 does look like it should include filter.h,
> anyway.
> 
> [...]

Here is the summary with links:
  - [net-next] net: fixup build after bpf header changes
    https://git.kernel.org/netdev/net-next/c/7d714ff14d64

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
