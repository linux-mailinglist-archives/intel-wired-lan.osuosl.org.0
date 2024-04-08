Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C814989BCB2
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Apr 2024 12:10:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 14EDE81EDD;
	Mon,  8 Apr 2024 10:10:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id znoSTIzIVNAO; Mon,  8 Apr 2024 10:10:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 215AC81EDE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712571036;
	bh=/huYobYq5KCE4csYMJA/WWSJl9IQXHyYAxE17DSw7c8=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EXDl3sKaxo+OKzzxoy/spFCtgTwiD2vFLoAfGjyy0Tqq+JTl7R22K6/AlMZQTiuLf
	 Unk+LW9bTtui8nCakEfg7E5RXCNoJB8j0YfQTgwSfx60eTVmUfTsA5DEdPnXZW19Uh
	 3TpcclBk5z//CP0eVQJp1WAkHeTJlMDLEfjIPNnvBBuu4vRkvGOPsYqkYQ0kvH5J97
	 DKf+nZaFh2HWzAoRd5V+7lyOixgota157HSzYULCObYXYZsSvE96lZm54QoUaT1oo6
	 q3o9rBue7cwrddJIgBDjYzodc48K8L91IxKCx++sX7EXKCPW+VGYJcGi6xQaKIR2k7
	 uCzBhZrpeIqcA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 215AC81EDE;
	Mon,  8 Apr 2024 10:10:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DC7911BF3CD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 10:10:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C734E40732
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 10:10:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oUVPOt5kuPsu for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Apr 2024 10:10:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7CDE840721
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7CDE840721
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7CDE840721
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 10:10:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 08099CE0F8F;
 Mon,  8 Apr 2024 10:10:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2BE3AC43394;
 Mon,  8 Apr 2024 10:10:27 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 212C4C54BD9; Mon,  8 Apr 2024 10:10:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <171257102713.30740.3149927029161291551.git-patchwork-notify@kernel.org>
Date: Mon, 08 Apr 2024 10:10:27 +0000
References: <20240404160302.3585661-1-aleksander.lobakin@intel.com>
In-Reply-To: <20240404160302.3585661-1-aleksander.lobakin@intel.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1712571027;
 bh=x+XrOol6yWyCizxrCWOJ4+a0py0a9Q0xvIdnby2O6R0=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=qlp4k2VDn9EuhCEJk7K3FBy3HYyssjwc6Q8Z6TIDwXjvRWs8iEtjO8rtbGlclPSSW
 lyiHMiLP6hYzFvOL0oJ5QKSTNTWmnfH5dKpu+A9oAJcLIxzvVp/KZvMkLT9UvjnK6A
 ymVtTiu81lybfdx0DhYxq3h9orjun1qP1LgpD9VXlXo8whpqXOrI+54W/CDI0Zdu6y
 CClsuWCjtzn+dWR+HgM76Kvu1nplipakS2h8Y8Ypj2OUQaQj3lPWvpv1HCi8l/6jhI
 TG75Zya/QxSLXpW22pdQpxI0f7QVDu4lhouQz4GIL5Pl9q//g/u7plnfHKRaUztIJL
 1ebsv50Ml6aBA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=qlp4k2VD
Subject: Re: [Intel-wired-lan] [PATCH net-next] ip_tunnel: harden copying IP
 tunnel params to userspace
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
Cc: netdev@vger.kernel.org, dsahern@kernel.org, linux-kernel@vger.kernel.org,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, dan.carpenter@linaro.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net-next.git (main)
by David S. Miller <davem@davemloft.net>:

On Thu,  4 Apr 2024 18:03:02 +0200 you wrote:
> Structures which are about to be copied to userspace shouldn't have
> uninitialized fields or paddings.
> memset() the whole &ip_tunnel_parm in ip_tunnel_parm_to_user() before
> filling it with the kernel data. The compilers will hopefully combine
> writes to it.
> 
> Fixes: 117aef12a7b1 ("ip_tunnel: use a separate struct to store tunnel params in the kernel")
> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> Closes: https://lore.kernel.org/netdev/5f63dd25-de94-4ca3-84e6-14095953db13@moroto.mountain
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> 
> [...]

Here is the summary with links:
  - [net-next] ip_tunnel: harden copying IP tunnel params to userspace
    https://git.kernel.org/netdev/net-next/c/5a66cda52d7d

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


