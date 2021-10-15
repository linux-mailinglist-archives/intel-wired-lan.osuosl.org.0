Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8C642E694
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Oct 2021 04:30:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 600FC83440;
	Fri, 15 Oct 2021 02:30:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ikv65wTpzghr; Fri, 15 Oct 2021 02:30:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6AF218331B;
	Fri, 15 Oct 2021 02:30:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2533E1BF48D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Oct 2021 02:30:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1252540012
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Oct 2021 02:30:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7Q2UbZbg5XK1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Oct 2021 02:30:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D734E40001
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Oct 2021 02:30:08 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 609A6611C8;
 Fri, 15 Oct 2021 02:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634265008;
 bh=15UENu5nbar5CfBfiiflqMOoq3UrkgZsIwBjCFi825E=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=h92Qh8GjCK+j6DafuOKDprvTwmYcS4+HN3nzn8zD3J+Tgf4l+bHuQhBohJvVANuob
 OOsVViuxcm4UPoNipCcDHVv+ElAP5BxzJ7Iz85IjAhBIFz2nslhnaEkMbVV5LKQSeg
 BempBpraRu3M1NzXJNNxj/SkvZvCsmZSKFISDCBaEh929PI49l4f0B/F1wHtcP4wNv
 W2nvnr/ZG3VDXIFeO0jwQ187Mbl5SFXtjkLQc5W97hZQBpxA5xdEDU6VRL0RGoXOrt
 5JqKbK/p1aPULZK6hInwPHU3nLUCQly8iRlgOrKV69SRIAK1EDP6ZknhWPw+BaCUvz
 579xlOcQPp8GQ==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 5506B60A39;
 Fri, 15 Oct 2021 02:30:08 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <163426500834.31820.14758482906938638216.git-patchwork-notify@kernel.org>
Date: Fri, 15 Oct 2021 02:30:08 +0000
References: <20211014050516.6846-1-rdunlap@infradead.org>
In-Reply-To: <20211014050516.6846-1-rdunlap@infradead.org>
To: Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [Intel-wired-lan] [PATCH net-next] net: intel: igc_ptp: fix
 build for UML
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
Cc: netdev@vger.kernel.org, jdike@addtoit.com, linux-um@lists.infradead.org,
 richard@nod.at, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net-next.git (master)
by Jakub Kicinski <kuba@kernel.org>:

On Wed, 13 Oct 2021 22:05:16 -0700 you wrote:
> On a UML build, the igc_ptp driver uses CONFIG_X86_TSC for timestamp
> conversion. The function that is used is not available on UML builds,
> so have the function use the default system_counterval_t timestamp
> instead for UML builds.
> 
> Prevents this build error on UML:
> 
> [...]

Here is the summary with links:
  - [net-next] net: intel: igc_ptp: fix build for UML
    https://git.kernel.org/netdev/net-next/c/523994ba3ad1

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
