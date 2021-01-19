Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 059E72FC4EB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Jan 2021 00:40:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BDEC5854C9;
	Tue, 19 Jan 2021 23:40:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aO-DvL8XW5I3; Tue, 19 Jan 2021 23:40:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 23775854E0;
	Tue, 19 Jan 2021 23:40:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 081A21BF5D7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 23:40:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 03901864F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 23:40:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ajsF5HxaexPp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Jan 2021 23:40:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6143284EED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 23:40:09 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 1D83323104;
 Tue, 19 Jan 2021 23:40:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611099609;
 bh=MssI9+vwhZGCSP3/2VaSQwrblQaQ4nMnm3sP6p6ESjA=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=sJjxlJZNbTzHFKr5aZMdBcHqRPI0x6H3O+w+Ckn3a69NsLYEgEI3eVSMxs2e4exLh
 j0myakPrLIjZwPjpO+TUMRLlZyoxB50et6SuJUGO1rFvVdh0yFuf16TBO+xFLSYtGU
 FgprJw5zJ7vb78pLo5eribzPFF7gdL4ZMeYmbOR7ZNOf6U0/ajvJd0Ze8/Ze4VvF/y
 4TZJwaf3w5yNo9PPJFoSpGNRjm39sFVeiVAvnwquAILIKfBRRO7OijpM+K4f0WDdQT
 9uq3qqW91cwrwse4HUSPUqGo9n1QOY8zwNMbJSsgNBVhzKDAU00ezzj8IvbyyJyhZY
 10GtUueOdoZZA==
Received: from pdx-korg-docbuild-1.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-1.ci.codeaurora.org (Postfix) with ESMTP id 02C34604FC;
 Tue, 19 Jan 2021 23:40:09 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <161109960900.4067.12876636834749313206.git-patchwork-notify@kernel.org>
Date: Tue, 19 Jan 2021 23:40:09 +0000
References: <cover.1610777159.git.lucien.xin@gmail.com>
In-Reply-To: <cover.1610777159.git.lucien.xin@gmail.com>
To: Xin Long <lucien.xin@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/6] net: support SCTP CRC
 csum offload for tunneling packets in some drivers
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
Cc: marcelo.leitner@gmail.com, nhorman@tuxdriver.com, netdev@vger.kernel.org,
 linux-sctp@vger.kernel.org, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (refs/heads/master):

On Sat, 16 Jan 2021 14:13:36 +0800 you wrote:
> This patchset introduces inline function skb_csum_is_sctp(), and uses it
> to validate it's a sctp CRC csum offload packet, to make SCTP CRC csum
> offload for tunneling packets supported in some HW drivers.
> 
> Xin Long (6):
>   net: add inline function skb_csum_is_sctp
>   net: igb: use skb_csum_is_sctp instead of protocol check
>   net: igbvf: use skb_csum_is_sctp instead of protocol check
>   net: igc: use skb_csum_is_sctp instead of protocol check
>   net: ixgbe: use skb_csum_is_sctp instead of protocol check
>   net: ixgbevf: use skb_csum_is_sctp instead of protocol check
> 
> [...]

Here is the summary with links:
  - [net-next,1/6] net: add inline function skb_csum_is_sctp
    https://git.kernel.org/netdev/net-next/c/fa8211701043
  - [net-next,2/6] net: igb: use skb_csum_is_sctp instead of protocol check
    https://git.kernel.org/netdev/net-next/c/8bcf02035bd5
  - [net-next,3/6] net: igbvf: use skb_csum_is_sctp instead of protocol check
    https://git.kernel.org/netdev/net-next/c/d2de44443caf
  - [net-next,4/6] net: igc: use skb_csum_is_sctp instead of protocol check
    https://git.kernel.org/netdev/net-next/c/609d29a9d242
  - [net-next,5/6] net: ixgbe: use skb_csum_is_sctp instead of protocol check
    https://git.kernel.org/netdev/net-next/c/f8c4b01d3a68
  - [net-next,6/6] net: ixgbevf: use skb_csum_is_sctp instead of protocol check
    https://git.kernel.org/netdev/net-next/c/fc186d0a4ef8

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
