Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BA0361445
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Apr 2021 23:40:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D90440624;
	Thu, 15 Apr 2021 21:40:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DD81RqfCXv0L; Thu, 15 Apr 2021 21:40:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A5FE405B4;
	Thu, 15 Apr 2021 21:40:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E47021BF379
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 21:40:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C2DEF41843
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 21:40:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jys-6lXPb8Pw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Apr 2021 21:40:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 46F1E40603
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 21:40:10 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 84BF5610CC;
 Thu, 15 Apr 2021 21:40:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1618522809;
 bh=AinOT/YfM148cjBjj0Zpcr1i5gy+AuLqehfsOo+NC3A=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=eqhJ5h6+enisF74bb2ZZMthC2/RSsplIavkxwxoiQsACtRBStW8Z7gREnSLIfWu69
 adjtinmBpXkG+x/I/eX9Aw1FPo85J+lrgtyMhv+ye+qRS/ITy0GREByx+f8QeU5Fk8
 yoN6YbTCAMZxI4/QR/LXvapTl4s3qr+w6yY5/U96HFrUNqi8fVSNvEwB/MDq0cNaJn
 slJ36qKvOHps4V7h5mqygD/QfTeWGNwIZ0tTGLQ5jpjpop6ShTOeRKEU/qF4PXyHA0
 muSW7/m038uNipAR4WhcPaDsrO/CNw9csArcuO9jnQsz8jkxJjLo4Schjk7+Q+PclS
 29YgeoLdzY1yw==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 70FFE60CD6;
 Thu, 15 Apr 2021 21:40:09 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <161852280945.6246.15751888474800396126.git-patchwork-notify@kernel.org>
Date: Thu, 15 Apr 2021 21:40:09 +0000
References: <20210414023428.10121-1-kerneljasonxing@gmail.com>
In-Reply-To: <20210414023428.10121-1-kerneljasonxing@gmail.com>
To: Jason Xing <kerneljasonxing@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH net v3] i40e: fix the panic when
 running bpf in xdpdrv mode
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
Cc: songliubraving@fb.com, kafai@fb.com, hawk@kernel.org, daniel@iogearbox.net,
 netdev@vger.kernel.org, ast@kernel.org, andrii@kernel.org,
 lishujin@kuaishou.com, yhs@fb.com, kpsingh@kernel.org, kuba@kernel.org,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org, davem@davemloft.net,
 linux-kernel@vger.kernel.org, xingwanli@kuaishou.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net.git (refs/heads/master):

On Wed, 14 Apr 2021 10:34:28 +0800 you wrote:
> From: Jason Xing <xingwanli@kuaishou.com>
> 
> Fix this panic by adding more rules to calculate the value of @rss_size_max
> which could be used in allocating the queues when bpf is loaded, which,
> however, could cause the failure and then trigger the NULL pointer of
> vsi->rx_rings. Prio to this fix, the machine doesn't care about how many
> cpus are online and then allocates 256 queues on the machine with 32 cpus
> online actually.
> 
> [...]

Here is the summary with links:
  - [net,v3] i40e: fix the panic when running bpf in xdpdrv mode
    https://git.kernel.org/netdev/net/c/4e39a072a6a0

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
