Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD6FBA56B9
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Sep 2025 02:30:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ADD3D8486B;
	Sat, 27 Sep 2025 00:30:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KUO9of8QjWFo; Sat, 27 Sep 2025 00:30:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E8C0E84516
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758933023;
	bh=/9UZ5rIwtHNlH7OdOR+J9jHeFbzXgw7atfgJrr29boY=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ewDYKltMdfNu8k1yBRs59FTL2nl1z/8wuRKZGX6UoiPQQafKSkjK7OWGoa48NkkPv
	 didgdWBSW9NZy7XtMHJGNKg6otKVJlPHLubz7+usF+SEFlP8gy6HY10w1mGkWVUeFF
	 ndHaUz3dAupzjrSiwC6UZcfeSyiDz69QIiyV9R3mddyAn8ma9DDdWxfcBRfs5wvAG9
	 LPHzDOabBXVnxSmlCzfiQbYZSwFaRRO9Cln7NM3ijTITkDUEhQtXu+vtsEtKGpVtIG
	 E2gtZFMnYaNGLt2R3kTfxpcsCsBKPzQpTIBN0WKoPjZ5rbDLYsuRN5I+OCw/l+dsIe
	 BjBCq7cbq/MOA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E8C0E84516;
	Sat, 27 Sep 2025 00:30:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E3E8D198
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Sep 2025 00:30:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D4FF441F8B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Sep 2025 00:30:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W7WV1DkyrQxu for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 Sep 2025 00:30:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0B6F141942
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B6F141942
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0B6F141942
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Sep 2025 00:30:19 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 6A92E61FAB;
 Sat, 27 Sep 2025 00:30:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1512DC4CEF4;
 Sat, 27 Sep 2025 00:30:18 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 70E1939D0C3F; Sat, 27 Sep 2025 00:30:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <175893301325.104870.1559335505983005241.git-patchwork-notify@kernel.org>
Date: Sat, 27 Sep 2025 00:30:13 +0000
References: <20250924124037.1508846-1-vadim.fedorenko@linux.dev>
In-Reply-To: <20250924124037.1508846-1-vadim.fedorenko@linux.dev>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Cc: kuba@kernel.org, andrew@lunn.ch, michael.chan@broadcom.com,
 pavan.chebbi@broadcom.com, tariqt@nvidia.com, gal@nvidia.com,
 intel-wired-lan@lists.osuosl.org, donald.hunter@gmail.com,
 cjubran@nvidia.com, aleksandr.loktionov@intel.com, pabeni@redhat.com,
 horms@kernel.org, netdev@vger.kernel.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758933018;
 bh=6EiJYD1fzmZHH30HLXdNxSDvlWGhXwaTFNLrNBgc5qc=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=hS66Wh6i90h4B72SausFbqs1e/hVEJEpJBQvtnDWbOO2VfUSwznLfrWGbCfzOPBLu
 Q4JSYHaSSLItMWxBJuiW0Xk48vE5ngicvzmtS+Ai2rUTcYTr5XM+W4S2BY9eaaEVap
 /0VsurqLY1pwZTpAI7MLHteEcnt/ok/1zLJC24OrmthowpYOmCYRJ8fHWCXJYcG1xW
 3pzo8GtPCWZm2vbV19+anj+gcCcjQy+2rMJTjTgh5IFym1FQkA6D8UKKMuUCdGSmEH
 HgL6S7gUQAZDv++XobNczHkJw4LhqOUZc4NZHPSqxqbFJTTYGr3hIUzon7bEycNBgV
 NDKgQyggNclDA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=hS66Wh6i
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 0/5] add FEC bins
 histogram report via ethtool
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

On Wed, 24 Sep 2025 12:40:32 +0000 you wrote:
> IEEE 802.3ck-2022 defines counters for FEC bins and 802.3df-2024
> clarifies it a bit further. Implement reporting interface through as
> addition to FEC stats available in ethtool. NetDevSim driver has simple
> implementation as an example while mlx5 has much more complex solution.
> 
> The example query is the same as usual FEC statistics while the answer
> is a bit more verbose:
> 
> [...]

Here is the summary with links:
  - [net-next,v6,1/5] ethtool: add FEC bins histogram report
    https://git.kernel.org/netdev/net-next/c/cc2f08129925
  - [net-next,v6,2/5] net/mlx5e: Don't query FEC statistics when FEC is disabled
    https://git.kernel.org/netdev/net-next/c/6b81b8a0b197
  - [net-next,v6,3/5] net/mlx5e: Add logic to read RS-FEC histogram bin ranges from PPHCR
    https://git.kernel.org/netdev/net-next/c/44907e7c8fd0
  - [net-next,v6,4/5] net/mlx5e: Report RS-FEC histogram statistics via ethtool
    https://git.kernel.org/netdev/net-next/c/ca80036839eb
  - [net-next,v6,5/5] selftests: net-drv: stats: sanity check FEC histogram
    https://git.kernel.org/netdev/net-next/c/ed3d74a75411

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


