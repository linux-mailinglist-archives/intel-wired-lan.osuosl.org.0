Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D7E31C43F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Feb 2021 00:20:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F0F36F56B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Feb 2021 23:20:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QViZVtMplBB6 for <lists+intel-wired-lan@lfdr.de>;
	Mon, 15 Feb 2021 23:20:27 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 9BB8B6F565; Mon, 15 Feb 2021 23:20:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A9B066ED1C;
	Mon, 15 Feb 2021 23:20:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 400291BF362
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Feb 2021 23:20:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3AC256F4E0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Feb 2021 23:20:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5lW5qf-9Ch8b for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Feb 2021 23:20:11 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 37BBF6F4F3; Mon, 15 Feb 2021 23:20:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B783A6F4E0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Feb 2021 23:20:09 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 0D75964E07;
 Mon, 15 Feb 2021 23:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1613431209;
 bh=y2FO7J8OAZm/P3cKF2FxDZTTkePflXehKcvsU8ZacMc=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=DYmNMoLV73Z0bvSMx9sz1kTGtNpJsgAvdAa1qNG9Mr0el4iZq+L7X05ygzZO2mspf
 +1RSP55JQ7J3QtOv+kEZ3qczNDwTmAyoBreKljwIHl63m2AECzCIFl3simCNy2kShb
 9NMzbKVzHxrIsETofB+UHtVx1Zhk3g9ItIQVlKsMI2qswzFivsS4eTiCGm/wKlvZFL
 RuL7uOYfxmeGV1RT8UYCxYKkTT/mpuwI/MQsozGzDMXVihRC320gmxTefCk5yTLUTZ
 DDz7h9QemBy9KDra0I7za7GjLBHeIX7ixYfDJoTAnKrxxeAtVX9UQg4ExW6fwSW/6g
 sAfmls3rW2epw==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 06445609ED;
 Mon, 15 Feb 2021 23:20:09 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <161343120902.10830.1258291646017278044.git-patchwork-notify@kernel.org>
Date: Mon, 15 Feb 2021 23:20:09 +0000
References: <20210215161923.83682-1-colin.king@canonical.com>
In-Reply-To: <20210215161923.83682-1-colin.king@canonical.com>
To: Colin King <colin.king@canonical.com>
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Fix incorrect use of ip6src due
 to copy-paste coding error
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
Cc: przemyslawx.patynowski@intel.com, netdev@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net-next.git (refs/heads/master):

On Mon, 15 Feb 2021 16:19:23 +0000 you wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> It appears that the call of ipv6_add_any for the destination address
> is using ip6src instead of ip6dst, this looks like a copy-paste
> coding error. Fix this by replacing ip6src with ip6dst.
> 
> Addresses-Coverity: ("Copy-paste error")
> Fixes: efca91e89b67 ("i40e: Add flow director support for IPv6")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> 
> [...]

Here is the summary with links:
  - i40e: Fix incorrect use of ip6src due to copy-paste coding error
    https://git.kernel.org/netdev/net-next/c/7f76963b692d

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
