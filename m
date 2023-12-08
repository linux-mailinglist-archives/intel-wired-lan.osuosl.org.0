Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6B980A1B0
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Dec 2023 12:00:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F52341BE0;
	Fri,  8 Dec 2023 11:00:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F52341BE0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702033239;
	bh=i9EEo6V/mArWu5rFvWjOsxYWwyPl20u8rxFFxp9K4mk=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M97P5N9+OeIE95Zr8Y889zwy3qlfE+UgW6rEUsg1xq3X3QaJcVKDIKuhxI2Ty8CLs
	 GbqjddrZ9JdI0XtRXGLq9c+A5pIjQC5QQqPF4JQ0hfQZ1xwg7Yq5iRn83ibD7ZplcS
	 t1eL1yNLlkPX05cR/z1aehU0gxtQHtSpjr21p1L1bSHLQdaXUaGczSeWVmsbwC6a/M
	 2DcsTican496Ros1wh4V5cYOMQV3lGU/nItOrMHiu2rJCubft3GJGsk3GTxH63pDrt
	 L54HG3kiah4TPR+fbQyq9ujS6ZCitGiGoz3rv12dp8TV4PgmyjHZgYovmI+2vRrkjb
	 ZP6g57LRqpU5g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LWTexrNqZaKy; Fri,  8 Dec 2023 11:00:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D0CA41B55;
	Fri,  8 Dec 2023 11:00:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D0CA41B55
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DB9501BF34A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 11:00:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B0F7843603
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 11:00:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B0F7843603
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BltqhHd96Fga for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Dec 2023 11:00:31 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DCCB541A08
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 11:00:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DCCB541A08
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 28E11CE26CE;
 Fri,  8 Dec 2023 11:00:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 54E74C433C8;
 Fri,  8 Dec 2023 11:00:25 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 30F8DDD4F1E; Fri,  8 Dec 2023 11:00:25 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <170203322519.25632.13162024419836426102.git-patchwork-notify@kernel.org>
Date: Fri, 08 Dec 2023 11:00:25 +0000
References: <20231206-ethtool_puts_impl-v5-0-5a2528e17bf8@google.com>
In-Reply-To: <20231206-ethtool_puts_impl-v5-0-5a2528e17bf8@google.com>
To: Justin Stitt <justinstitt@google.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1702033225;
 bh=1L3W0Olv+R+kHzOLiJnr1tgIjD7V5hrXUJRJcLy2Pb8=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=VEzPH/rCT0ANk+4UUjvCU1rO1UprgeFQBr0nGUZP1RWomNYrfR8kgoFGuq04gfnqW
 0ydoitXLAhaANSZQQhMEpVgvAj0n9PFVJ27TXSw6o0bxn980ZNTbu8PdD8ZguRFSXh
 O47aTfET1burDw4ZGz9Fu9f32nVVNGoY7vyFXl7YChbkCPFlSeOXmUW2wQEE29xXbw
 NyAMkTsXQVCRNum1prPdPUDNkEZu6tSU7YY50aS7XfiTa3goiime8PYZ40zhjUUmTf
 6qVTycbXIuTvn8oghp4WgPu6nz1XSp4ElOvhqdpP0Xep7yVbPjeIHGY7Bb49tmMaUo
 tyqWXix93P1VA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=VEzPH/rC
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 0/3] ethtool: Add
 ethtool_puts()
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
Cc: andrew@lunn.ch, linux-hyperv@vger.kernel.org, brett.creeley@amd.com,
 doshir@vmware.com, pv-drivers@vmware.com, john.fastabend@gmail.com,
 linus.walleij@linaro.org, ast@kernel.org, linux@armlinux.org.uk,
 matthias.bgg@gmail.com, edumazet@google.com, olteanv@gmail.com,
 anthony.l.nguyen@intel.com, mengyuanlou@net-swift.com, netdev@vger.kernel.org,
 akiyano@amazon.com, linux-kernel@vger.kernel.org, hawk@kernel.org,
 louis.peens@corigine.com, wei.liu@kernel.org, f.fainelli@gmail.com,
 daniel@iogearbox.net, Steen.Hegelund@microchip.com, decui@microsoft.com,
 jesse.brandeburg@intel.com, ndagan@amazon.com, hkallweit1@gmail.com,
 shenwei.wang@nxp.com, xiaoning.wang@nxp.com, linux-imx@nxp.com,
 kuba@kernel.org, pabeni@redhat.com, yisen.zhuang@huawei.com,
 Landen.Chao@mediatek.com, shayagr@amazon.com, daniel.machon@microchip.com,
 alsi@bang-olufsen.dk, hauke@hauke-m.de, haiyangz@microsoft.com,
 sean.wang@mediatek.com, nathan@kernel.org, joe@perches.com,
 jiawenwu@trustnetic.com, wei.fang@nxp.com, lukas.bulwahn@gmail.com,
 apw@canonical.com, drivers@pensando.io, intel-wired-lan@lists.osuosl.org,
 lars.povlsen@microchip.com, angelogioacchino.delregno@collabora.com,
 linux-arm-kernel@lists.infradead.org, salil.mehta@huawei.com,
 GR-Linux-NIC-Dev@marvell.com, dqfext@gmail.com, keescook@chromium.org,
 arinc.unal@arinc9.com, rmody@marvell.com, darinzon@amazon.com,
 oss-drivers@corigine.com, ndesaulniers@google.com, daniel@makrotopia.org,
 davem@davemloft.net, dwaipayanray1@gmail.com, saeedb@amazon.com,
 linux-mediatek@lists.infradead.org, bpf@vger.kernel.org, dmichail@fungible.com,
 skalluru@marvell.com, UNGLinuxDriver@microchip.com, shannon.nelson@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (main)
by David S. Miller <davem@davemloft.net>:

On Wed, 06 Dec 2023 23:16:09 +0000 you wrote:
> Hi,
> 
> This series aims to implement ethtool_puts() and send out a wave 1 of
> conversions from ethtool_sprintf(). There's also a checkpatch patch
> included to check for the cases listed below.
> 
> This was sparked from recent discussion here [1]
> 
> [...]

Here is the summary with links:
  - [net-next,v5,1/3] ethtool: Implement ethtool_puts()
    https://git.kernel.org/netdev/net-next/c/2a48c635fd9a
  - [net-next,v5,2/3] checkpatch: add ethtool_sprintf rules
    https://git.kernel.org/netdev/net-next/c/9b5f621cea6e
  - [net-next,v5,3/3] net: Convert some ethtool_sprintf() to ethtool_puts()
    https://git.kernel.org/netdev/net-next/c/e403cffff1a4

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
