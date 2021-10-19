Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 241F0433510
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Oct 2021 13:50:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8EB7683C3E;
	Tue, 19 Oct 2021 11:50:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d88h-ysfWpkk; Tue, 19 Oct 2021 11:50:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4B2682503;
	Tue, 19 Oct 2021 11:50:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 135B81BF958
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 11:50:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 013814077A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 11:50:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w0bDiof46kjZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Oct 2021 11:50:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5EF604076A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 11:50:11 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id E92DC6137B;
 Tue, 19 Oct 2021 11:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634644211;
 bh=UHOGUKFhhRXbcfzVbtkZfqKIOunGDgIcbQYsQ7jgDwY=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=CLwEnXZU8oX37i8abkHJOflluMBY8GfBbaR/N0P1Pa85S9Vb2REp2QGCngphHVv5m
 126p7cJSVhdLx1CQCp5JDNbi5L0kPEzq5o4grkrsbj5gvTsBZU2KiIYmxmlGCGQJ8T
 RRI7cZfQxGvYqHsej/xn8MY4rlhCW6McenJhu7MesGTrhB2iOHEW72xLDk6204Aq7I
 867JEmZxh0kboRUxhN2rqWa8H/0TUJdxwEszThyHcTRTncp4LWV8T6EPLWSdzGs846
 x5Bn1wsxNR0/rdFi3D+ePpSpoRB0rebsSfzNYoEG0jLIYyxl+4TCdPCbCE0rB5ODrD
 kgXVw57aQ8+yg==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id DB1A160A4E;
 Tue, 19 Oct 2021 11:50:10 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <163464421089.25315.8858510384823584691.git-patchwork-notify@kernel.org>
Date: Tue, 19 Oct 2021 11:50:10 +0000
References: <20211018085154.853744-1-luo.penghao@zte.com.cn>
In-Reply-To: <20211018085154.853744-1-luo.penghao@zte.com.cn>
To: Ye Guojin <cgel.zte@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH linux-next] e1000e: Remove redundant
 statement
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
Cc: netdev@vger.kernel.org, zealci@zte.com.cn, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, luo.penghao@zte.com.cn,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net-next.git (master)
by David S. Miller <davem@davemloft.net>:

On Mon, 18 Oct 2021 08:51:54 +0000 you wrote:
> This assignment statement is meaningless, because the statement
> will execute to the tag "set_itr_now".
> 
> The clang_analyzer complains as follows:
> 
> drivers/net/ethernet/intel/e1000e/netdev.c:2552:3 warning:
> 
> [...]

Here is the summary with links:
  - [linux-next] e1000e: Remove redundant statement
    https://git.kernel.org/netdev/net-next/c/1bd297988b75

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
