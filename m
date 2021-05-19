Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 33AD23896B5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 May 2021 21:30:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9EA5B60762;
	Wed, 19 May 2021 19:30:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5AwG72JYY-qV; Wed, 19 May 2021 19:30:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A13F0607B1;
	Wed, 19 May 2021 19:30:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E1BF31BF3E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 19:30:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CFA7A83AC4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 19:30:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 86CPUjZSIzxv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 May 2021 19:30:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2655A831E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 19:30:17 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id BAAC66135F;
 Wed, 19 May 2021 19:30:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621452616;
 bh=JfAU2s45ELoqRxZp7xQz2g0sSLbLmY/ipoKMOmtwuaE=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=KvBfOyKa9BaUakVwdNcLsNphaz/IN4iRUH/xUwWSuMh0J2zWUNkU4EnS9JAmH828p
 jjJtO5eAwuVy5Qod+1wAimWRjTOzTVjDbq+sZsv7ZSBnlojdzs/NBKC87LY0olm1nB
 fWmHHjFxVQg8zXJcKB+Dr0zOX6iNMiSinssbkRJh3lUKgtlA8PWkXYj6GpWdeDfCZg
 l2cb2wxEMT0RrslTR3qze6lqsbXQL+j/BmZJQkxBkRsE5Qe9BwRPUTAE8BwcUmgdC/
 NImpxVMivSjId0xPRnCu+qSXkYdpE0yTEnKsJ2XZVTQgmgSOEmb4cM8pw/FPURJnMh
 bnIUkAY0kN1YA==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id B013560CD2;
 Wed, 19 May 2021 19:30:16 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162145261671.25646.17755422977690306558.git-patchwork-notify@kernel.org>
Date: Wed, 19 May 2021 19:30:16 +0000
References: <1621404885-20075-1-git-send-email-huangguangbin2@huawei.com>
In-Reply-To: <1621404885-20075-1-git-send-email-huangguangbin2@huawei.com>
To: Guangbin Huang <huangguangbin2@huawei.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/5] net: intel: some cleanups
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 tanhuazhong@huawei.com, lipeng321@huawei.com, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (refs/heads/master):

On Wed, 19 May 2021 14:14:40 +0800 you wrote:
> This patchset adds some cleanups for intel e1000/e1000e ethernet driver.
> 
> Hao Chen (5):
>   net: e1000: remove repeated word "slot" for e1000_main.c
>   net: e1000: remove repeated words for e1000_hw.c
>   net: e1000e: remove repeated word "the" for ich8lan.c
>   net: e1000e: remove repeated word "slot" for netdev.c
>   net: e1000e: fix misspell word "retreived"
> 
> [...]

Here is the summary with links:
  - [net-next,1/5] net: e1000: remove repeated word "slot" for e1000_main.c
    https://git.kernel.org/netdev/net-next/c/4b63b27fc59a
  - [net-next,2/5] net: e1000: remove repeated words for e1000_hw.c
    https://git.kernel.org/netdev/net-next/c/e77471f1de0d
  - [net-next,3/5] net: e1000e: remove repeated word "the" for ich8lan.c
    https://git.kernel.org/netdev/net-next/c/59398afda176
  - [net-next,4/5] net: e1000e: remove repeated word "slot" for netdev.c
    https://git.kernel.org/netdev/net-next/c/800b74a57363
  - [net-next,5/5] net: e1000e: fix misspell word "retreived"
    https://git.kernel.org/netdev/net-next/c/0d27895bcbb4

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
