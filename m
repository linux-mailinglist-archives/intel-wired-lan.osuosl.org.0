Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DFF33F879
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 19:51:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E1F6743098;
	Wed, 17 Mar 2021 18:51:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GebRXQp8mb6n; Wed, 17 Mar 2021 18:51:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E103C43074;
	Wed, 17 Mar 2021 18:51:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 36A9D1BF330
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 18:50:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1C1FA43045
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 18:50:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2ckFcLtHrcv9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 18:50:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EED0D4303F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 18:50:09 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 8B30564F51;
 Wed, 17 Mar 2021 18:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1616007009;
 bh=16bY4Q9L91OTPdgdNxgxLVnLRs6fDvle7jzwH1pV4Tk=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=KUiPkmTO49BfebMM4e2Q4/RPZBF/y+p7v0HPEVf9OizLrHrow208m941u3hzr8OkM
 yWWvL1nJyytqNMfTUonN2V4hbdiJmLtGwiEeJQfeuC7ew3ddydyJe7IgL6KUJHTgni
 oT2xijLszEeuDiD0WAg8bMfKdijPZ7fItSGU/2SYxb8wg2FHQK8H0ZHpe8NjRQEv+l
 vMw/EZdPYyIekCsHyXwy7J1a8qryKGwNdyAO0wTva6ol8Pv2p3Gf/graBXLZmikIoQ
 MfUhKHdr5Jh7aiFeYhdGVTmmZpjIvwt5XBIXXGS9ggfpuMzftOoX08cRbe8O3ALX+K
 TYUEQcaz2+zFg==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 7397B60A60;
 Wed, 17 Mar 2021 18:50:09 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <161600700946.1265.8041343414246655720.git-patchwork-notify@kernel.org>
Date: Wed, 17 Mar 2021 18:50:09 +0000
References: <161594093708.5644.11391417312031401152.stgit@localhost.localdomain>
In-Reply-To: <161594093708.5644.11391417312031401152.stgit@localhost.localdomain>
To: Alexander Duyck <alexander.duyck@gmail.com>
X-Mailman-Approved-At: Wed, 17 Mar 2021 18:51:30 +0000
Subject: Re: [Intel-wired-lan] [net-next PATCH v2 00/10] ethtool: Factor out
 common code related to writing ethtool strings
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
Cc: doshir@vmware.com, mst@redhat.com, oss-drivers@netronome.com,
 jasowang@redhat.com, alexanderduyck@fb.com, akiyano@amazon.com,
 wei.liu@kernel.org, sthemmin@microsoft.com, pv-drivers@vmware.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, Kernel-team@fb.com,
 yisen.zhuang@huawei.com, gtzalik@amazon.com, simon.horman@netronome.com,
 haiyangz@microsoft.com, drivers@pensando.io, salil.mehta@huawei.com,
 GR-Linux-NIC-Dev@marvell.com, rmody@marvell.com, netdev@vger.kernel.org,
 davem@davemloft.net, netanel@amazon.com, saeedb@amazon.com,
 snelson@pensando.io, skalluru@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (refs/heads/master):

On Tue, 16 Mar 2021 17:30:26 -0700 you wrote:
> This patch set is meant to be a cleanup and refactoring of common code bits
> from several drivers. Specificlly a number of drivers engage in a pattern
> where they will use some variant on an sprintf or memcpy to write a string
> into the ethtool string array and then they will increment their pointer by
> ETH_GSTRING_LEN.
> 
> Instead of having each driver implement this independently I am refactoring
> the code so that we have one central function, ethtool_sprintf that does
> all this and takes a double pointer to access the data, a formatted string
> to print, and the variable arguments that are associated with the string.
> 
> [...]

Here is the summary with links:
  - [net-next,v2,01/10] ethtool: Add common function for filling out strings
    https://git.kernel.org/netdev/net-next/c/7888fe53b706
  - [net-next,v2,02/10] intel: Update drivers to use ethtool_sprintf
    https://git.kernel.org/netdev/net-next/c/c8d4725e985d
  - [net-next,v2,03/10] nfp: Replace nfp_pr_et with ethtool_sprintf
    https://git.kernel.org/netdev/net-next/c/6a143a7cf947
  - [net-next,v2,04/10] hisilicon: Update drivers to use ethtool_sprintf
    https://git.kernel.org/netdev/net-next/c/83cd23974a73
  - [net-next,v2,05/10] ena: Update driver to use ethtool_sprintf
    https://git.kernel.org/netdev/net-next/c/efbbe4fb5976
  - [net-next,v2,06/10] netvsc: Update driver to use ethtool_sprintf
    https://git.kernel.org/netdev/net-next/c/3ae0ed376d1c
  - [net-next,v2,07/10] virtio_net: Update driver to use ethtool_sprintf
    https://git.kernel.org/netdev/net-next/c/d7a9a01b4e21
  - [net-next,v2,08/10] vmxnet3: Update driver to use ethtool_sprintf
    https://git.kernel.org/netdev/net-next/c/3b78b3067f38
  - [net-next,v2,09/10] bna: Update driver to use ethtool_sprintf
    https://git.kernel.org/netdev/net-next/c/b82e8118c540
  - [net-next,v2,10/10] ionic: Update driver to use ethtool_sprintf
    https://git.kernel.org/netdev/net-next/c/acebe5b6107c

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
