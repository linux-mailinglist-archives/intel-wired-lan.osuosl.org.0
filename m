Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8D145DDF8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Nov 2021 16:50:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8FA746070F;
	Thu, 25 Nov 2021 15:50:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tN20XHMqGiHH; Thu, 25 Nov 2021 15:50:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B7D8960708;
	Thu, 25 Nov 2021 15:50:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 056031BF27C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Nov 2021 15:50:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E6E4D40273
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Nov 2021 15:50:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6AnJEGEhnPk6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Nov 2021 15:50:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 23E6240129
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Nov 2021 15:50:10 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id C69D4610E8;
 Thu, 25 Nov 2021 15:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637855409;
 bh=4AhH5IjSthhf09dg3c+PkeJLOm+b8H9H9uVosand2Ns=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=PSY+HkDmZyn9rra+QsaXYAk0zyWSN9MDezGvSR/J8Bxakcdt1fGDre3PftE71TKXF
 sJGQO4lDeSmEiIvZgoIYKnsEcV2cFHUNtKifaDqAAxfEtOo2tJc1qmiJfludRtvrim
 dgyCKmWwgliScNH+vnubL7E1GJd5bI1yG6uRdKi7clpa1w4JZD/cvfZFZQ607WiqpK
 e1eFJtcsaPDMhDh6dIT9tPROD+e8Jh8ld4Z0LoioCGfZLTh4Mbkw3KLN1gfa4pxMvI
 azRrtsf8yiyvpHGA2/NhZdZ+nb3XEmuYsBskpWXra7KqlVcl8uPPEa8y/FxXJzHVJc
 OzPbq+LeIUnkg==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id BE26660A6C;
 Thu, 25 Nov 2021 15:50:09 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <163785540977.3411.335611194750877222.git-patchwork-notify@kernel.org>
Date: Thu, 25 Nov 2021 15:50:09 +0000
References: <20211123204000.1597971-1-jesse.brandeburg@intel.com>
In-Reply-To: <20211123204000.1597971-1-jesse.brandeburg@intel.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v2] igb: fix netpoll exit with
 traffic
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 oleksandr@natalenko.name, danieller@nvidia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net.git (master)
by Jakub Kicinski <kuba@kernel.org>:

On Tue, 23 Nov 2021 12:40:00 -0800 you wrote:
> Oleksandr brought a bug report where netpoll causes trace
> messages in the log on igb.
> 
> Danielle brought this back up as still occuring, so we'll try
> again.
> 
> [22038.710800] ------------[ cut here ]------------
> [22038.710801] igb_poll+0x0/0x1440 [igb] exceeded budget in poll
> [22038.710802] WARNING: CPU: 12 PID: 40362 at net/core/netpoll.c:155 netpoll_poll_dev+0x18a/0x1a0
> 
> [...]

Here is the summary with links:
  - [net,v2] igb: fix netpoll exit with traffic
    https://git.kernel.org/netdev/net/c/eaeace60778e

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
