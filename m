Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A59A6A0FF34
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jan 2025 04:30:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25C15820BD;
	Tue, 14 Jan 2025 03:30:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WMsM0g2D1fmO; Tue, 14 Jan 2025 03:30:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 36B728144F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736825428;
	bh=99WTmg4p0on7kFIknxyS9ljzGTRTs7FGbAU9In1ntfM=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=445dC2x2vbaMz4+5SSBLiLjLeT+NNns/5iialS2Ppf4h/aZCabvQXKj140u6pSQ1b
	 62TrLb9i2Y033x38ohAWsY3rxDD5auGCP5RC8QBX+TiXD4hfesCd0u1Dziw1BfpHTA
	 x5IaVJ8uAwDMfHI5LDQPdJJ8waSbPQ+wtcKxIpjYU3u6G5sfJP/RyLYh6S37m2Nu0z
	 VIh4+q6fpvKsJvB8pdF7ftGcWVfJbIyWGTl8RE3lIm5/bT9B0r9FNAOQcLz5UwsQJu
	 ZOsiUO2aRBh5d5LLEZsoUFVEGvH1JfTc/NPXbAW++SyCfGVJGtOjmPd9fXglR6USXy
	 5HbXR9WYRVu2Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 36B728144F;
	Tue, 14 Jan 2025 03:30:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id CDC77B8B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 03:30:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BB3E840168
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 03:30:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pcVvNxbIERoL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jan 2025 03:30:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=patchwork-bot+netdevbpf@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A85E8400DD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A85E8400DD
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A85E8400DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 03:30:25 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 03E4F5C4B20;
 Tue, 14 Jan 2025 03:29:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94B3CC4CEDF;
 Tue, 14 Jan 2025 03:30:24 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 70DE7380AA5F; Tue, 14 Jan 2025 03:30:48 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <173682544724.3721274.8703534117396404103.git-patchwork-notify@kernel.org>
Date: Tue, 14 Jan 2025 03:30:47 +0000
References: <20250111071339.3709071-1-kuba@kernel.org>
In-Reply-To: <20250111071339.3709071-1-kuba@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Cc: davem@davemloft.net, netdev@vger.kernel.org, edumazet@google.com,
 pabeni@redhat.com, andrew+netdev@lunn.ch, horms@kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 intel-wired-lan@lists.osuosl.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1736825424;
 bh=4MDDEGmPI966bF2QJAgwdnq8j7a3S5wwXg8hLSHwCJ4=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=QbOFkANRaoBN2XWyrFefJp/gGcme3idfg1CkejSrRIhT698wZIkqsfg0dNnh8S9J0
 l81cMaZCBBPGKVaxnpXC26bi+8j6pQZUUuj/EsgYMRmi9GuvC0iWpfnj29ydVOyeN7
 rCl86HrF1wj0eQXQiUOrDm95v4bCYmaislLC7jC9MA4AspmQZiupcFQ5km+YC9HL2f
 UlCmOqbRvaB7moRPC6dO38FQNKDppifLWRZhCfigGiAY7waqY+Fmo/aGXzsM54aQTF
 eadBovtZNa3n+olHqv0eZTm+X7wEnWcA70h7os9poTtnDomHXglea3fwxUN9zda+ZL
 bjZ433HjszdJw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=QbOFkANR
Subject: Re: [Intel-wired-lan] [PATCH net-next] eth: iavf: extend the
 netdev_lock usage
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

This patch was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Fri, 10 Jan 2025 23:13:39 -0800 you wrote:
> iavf uses the netdev->lock already to protect shapers.
> In an upcoming series we'll try to protect NAPI instances
> with netdev->lock.
> 
> We need to modify the protection a bit. All NAPI related
> calls in the driver need to be consistently under the lock.
> This will allow us to easily switch to a "we already hold
> the lock" NAPI API later.
> 
> [...]

Here is the summary with links:
  - [net-next] eth: iavf: extend the netdev_lock usage
    https://git.kernel.org/netdev/net-next/c/afc664987ab3

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


