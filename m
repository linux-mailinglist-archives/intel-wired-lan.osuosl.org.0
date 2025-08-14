Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B111B25931
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Aug 2025 03:38:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA86C84573;
	Thu, 14 Aug 2025 01:38:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id frNur3IA_VPV; Thu, 14 Aug 2025 01:38:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F3E6B84576
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755135522;
	bh=Riamt2VqDPYAJd784pIfR9ukAjUIwpOKLq7/AFrugr4=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EFqlkjW7v5A0sgHFoWrgLooK2vdOKRlsLLo4wjlrvmLjwD9ob4cobCTwyweWAxR36
	 xyy0YqWYxpj7msEHhm+MOZ6wGu/+jt29SFe4lD0ime+3svsfLuR43yjavpDDNnqEHT
	 gaK2iJodgaM6cXiePZJWf2RC7gI5vEXTx0tnxWuzEeujZSp2V92Lx1TZ9Qzs70c68d
	 JtldPf9Q39iGBE6rmOji+vCWlnAGL+jPRNJnJBKZUEXSmHHPFw4aEEZPkJnJKRAae9
	 hhlH1SaZ4iHYXk/RqfeeqL5dAwvh7RsuEajfq7RFediaLgFx2kptYBUpZqAWfc577+
	 67tkR2gwG1Qzg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3E6B84576;
	Thu, 14 Aug 2025 01:38:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0B50E1BA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Aug 2025 01:38:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EFC7040C9A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Aug 2025 01:38:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pn9RmEXqbYQ5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Aug 2025 01:38:40 +0000 (UTC)
X-Greylist: delayed 514 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 14 Aug 2025 01:38:40 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 21F21403E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 21F21403E9
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=patchwork-bot+netdevbpf@kernel.org; receiver=<UNKNOWN> 
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 21F21403E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Aug 2025 01:38:39 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 54E1144E66;
 Thu, 14 Aug 2025 01:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30637C4CEEB;
 Thu, 14 Aug 2025 01:30:06 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 EB09039D0C38; Thu, 14 Aug 2025 01:30:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <175513501748.3846704.2653284504088460874.git-patchwork-notify@kernel.org>
Date: Thu, 14 Aug 2025 01:30:17 +0000
References: <20250811-restricted-pointers-net-v5-0-2e2fdc7d3f2c@linutronix.de>
In-Reply-To: <20250811-restricted-pointers-net-v5-0-2e2fdc7d3f2c@linutronix.de>
To: =?utf-8?q?Thomas_Wei=C3=9Fschuh_=3Cthomas=2Eweissschuh=40linutronix=2Ede=3E?=@aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, saeedm@nvidia.com, leon@kernel.org,
 tariqt@nvidia.com, mbloch@nvidia.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rdma@vger.kernel.org, aleksandr.loktionov@intel.com, horms@kernel.org,
 pmenzel@molgen.mpg.de
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1755135006;
 bh=P+It4k3Z3whbPaKl6RWbBy8Vkp87xIILFiRgerpR/1A=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=TN9BTB8Md7oeWbpnSfTIjNTZR6D5CVUotSIvHxdUc4aCZ15ng9ga9f0jnm7IhaKze
 wY35f+SIB2xlOt6SwICuldTZ4QNjMV60Qc2shZOYwvDGyawEI1GYnaLH3m3w9vZPo6
 uImYuI/ia+fm+rVz+VFNgDeF+0D05M2BBPnQQAtVic9bnt6LNPSeZ/wPQChyvzRbhS
 sQK3C9992E/T+xMmKeDfF0j0kSwZTgAOVC6K4yPgAN8kj2Vhn2VB5Okt7Rsvttf2LG
 d8aK8X20nU5TgvoSWSvTGItdIVCwgYiXQXrxag5g0pYksfqMUvTb+4Bhvnr7krd5Nx
 mzRiGf7VqkKZQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=TN9BTB8M
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 0/2] net: Don't use %pK
 through printk or tracepoints
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Mon, 11 Aug 2025 11:43:17 +0200 you wrote:
> In the past %pK was preferable to %p as it would not leak raw pointer
> values into the kernel log.
> Since commit ad67b74d2469 ("printk: hash addresses printed with %p")
> the regular %p has been improved to avoid this issue.
> Furthermore, restricted pointers ("%pK") were never meant to be used
> through printk(). They can still unintentionally leak raw pointers or
> acquire sleeping locks in atomic contexts.
> 
> [...]

Here is the summary with links:
  - [net-next,v5,1/2] ice: Don't use %pK through printk or tracepoints
    https://git.kernel.org/netdev/net-next/c/66ceb45b7d7e
  - [net-next,v5,2/2] net/mlx5: Don't use %pK through tracepoints
    https://git.kernel.org/netdev/net-next/c/e2068f74b976

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


