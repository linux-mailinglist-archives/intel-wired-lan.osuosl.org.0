Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B69E3813C8
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 May 2021 00:30:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C91E860605;
	Fri, 14 May 2021 22:30:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y9jA8ebRG80q; Fri, 14 May 2021 22:30:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD7CE605FD;
	Fri, 14 May 2021 22:30:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D70951BF31E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 22:30:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D17BE4186B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 22:30:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9BtG0Vdr_v2o for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 May 2021 22:30:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EB0AA41869
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 22:30:10 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 864A561453;
 Fri, 14 May 2021 22:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621031410;
 bh=qrJLP/r3A3y/0MyfEURktG+DB4zmp3lLFDGbBMOKB8A=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=P0zgoaprDJvd98bH2YsY9oRsUbNpX6X8rgv/5veHPFVbyZwKiayQ+lnPqhh61onti
 /qgzqCR38fonvkdjL5sUGDu2+AaxoIKOXMHXvG+q91G5ZwsLOu9QuvS8gOKseqEoa3
 z+j6b7QjwOBdcIG9bzVNluyZQdJux6OLi8vkxm4MLMCTm9UIzH1AAdtgAvaBTo4nSv
 hQ+1vvNZrSlA75KQ7SJ39pc3U2qCIIWPc2M+mHWXdka1QFkfvnRxKEGL4xqNVJVFfy
 ysPhyEIXgQa/RHfOIy2Bzug07IMfmVNyvc6h8nsBhO0+MK64/mbSpbRNFHk76WQPnt
 CNBQlmO82/NXg==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 788F260A02;
 Fri, 14 May 2021 22:30:10 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162103141048.10202.7043185141593053010.git-patchwork-notify@kernel.org>
Date: Fri, 14 May 2021 22:30:10 +0000
References: <20210514183954.7129-1-mcroce@linux.microsoft.com>
In-Reply-To: <20210514183954.7129-1-mcroce@linux.microsoft.com>
To: Matteo Croce <mcroce@linux.microsoft.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] net: use XDP helpers
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
Cc: kvm@vger.kernel.org, davem@davemloft.net, alexandre.torgue@foss.st.com,
 netdev@vger.kernel.org, peppe.cavallaro@st.com, mst@redhat.com,
 linux-kernel@vger.kernel.org, virtualization@lists.linux-foundation.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, bpf@vger.kernel.org,
 jasowang@redhat.com, linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (refs/heads/master):

On Fri, 14 May 2021 20:39:51 +0200 you wrote:
> From: Matteo Croce <mcroce@microsoft.com>
> 
> The commit 43b5169d8355 ("net, xdp: Introduce xdp_init_buff utility
> routine") and commit be9df4aff65f ("net, xdp: Introduce xdp_prepare_buff
> utility routine") introduces two useful helpers to populate xdp_buff.
> Use it in drivers which still open codes that routines.
> 
> [...]

Here is the summary with links:
  - [net-next,1/3] stmmac: use XDP helpers
    https://git.kernel.org/netdev/net-next/c/d172268f93cf
  - [net-next,2/3] igc: use XDP helpers
    https://git.kernel.org/netdev/net-next/c/082294f294f6
  - [net-next,3/3] vhost_net: use XDP helpers
    https://git.kernel.org/netdev/net-next/c/224bf7db5518

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
