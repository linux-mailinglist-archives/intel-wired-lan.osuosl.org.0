Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4506AB7DC61
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Sep 2025 14:34:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8B6628398E;
	Tue, 16 Sep 2025 23:38:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5-y6KMKnsaVj; Tue, 16 Sep 2025 23:38:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E0E3A83BDA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758065910;
	bh=MdTwm6cKg3HpsUkvqzKOVSIJX2poAHiTahY/O8vULoE=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DGFhI88/Q0KgTJoN0xRaZrAo68lZpuxrOzWS4Bq7g5bb3mfJEmVbHjjbL3s8U82ko
	 BUIBROdwvaigr91365LAYYAfCcvzWf6SKxbE9XWjTLugtgwFwIvmrB0n4HexaDh4J/
	 lFH87GQGHx9K6R47bO2tI10f8+txJAMq7yu8CTizj5l3Ql/5RLJWwsrTUi7X0pSRdk
	 /LC+TUufpePEemstYrgs5veGqVSNcV7/YwF6c7XpLW3XMX/6VUx4DFOweJDCibxdW+
	 ZWngFWoUPCuESSXuRABfliVhjjFTYLZNbzOtpvaps9w0Sg76GkhvY1DPOi2m/OL4wE
	 77MPn+wrIcmug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E0E3A83BDA;
	Tue, 16 Sep 2025 23:38:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 97016279
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 23:38:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 859F44082C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 23:38:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BPMd1RqfAprv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Sep 2025 23:38:27 +0000 (UTC)
X-Greylist: delayed 501 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 16 Sep 2025 23:38:27 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 91C6B40721
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91C6B40721
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 91C6B40721
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 23:38:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 41B2F601B3;
 Tue, 16 Sep 2025 23:30:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E18F1C4CEEB;
 Tue, 16 Sep 2025 23:30:04 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 33EFF39D0C1A; Tue, 16 Sep 2025 23:30:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <175806540601.1398896.2078220430438993284.git-patchwork-notify@kernel.org>
Date: Tue, 16 Sep 2025 23:30:06 +0000
References: <20250916160118.2209412-1-aleksander.lobakin@intel.com>
In-Reply-To: <20250916160118.2209412-1-aleksander.lobakin@intel.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758065404;
 bh=wwoRB0fhTfnwm2gFJfdD/R3aUgzoy/lof/7kSxL/U6c=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=t6JxHlfpPSQLiGsk6QnBgKsN5u/ytoIJ8bIwHyePWHR0Fbfb3BHKEl0/zqtfrT0sZ
 5HXh+YLsxwLMpTVPMuw8aIwlfq5H63kK6NajricJMHjtSwmArga4DrGgM71XwOM7TC
 QBAE7bl3wanAGZbKRlZt19+CqNQ0Hva0opoi4QAywPCXapwMCMZwpXa6plY58Bh5m+
 /Zot2luB8IwwvpgfU6iOFI1PIYiiSUpUrarRBOo1iYQx+hSPc9LnBzLRlZNnY8h2yr
 2Lw+1Ayh1Ai4h+T9aGqX2sKgMZ2Bmhg8+cvu9+q4JeGZq1rdZtIjZxWGlNh7v6awgn
 47oH0UxMhvRgw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=t6JxHlfp
Subject: Re: [Intel-wired-lan] [PATCH net-next] libie: fix linking with
 libie_{adminq, fwlog} when CONFIG_LIBIE=n
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
Cc: przemyslaw.kitszel@intel.com, naresh.kamboju@linaro.org,
 linux-kernel@vger.kernel.org, nxne.cnse.osdt.itp.upstreaming@intel.com,
 andrew+netdev@lunn.ch, edumazet@google.com, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, horms@kernel.org, kuba@kernel.org,
 michal.swiatkowski@linux.intel.com, pabeni@redhat.com, davem@davemloft.net,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Tue, 16 Sep 2025 18:01:18 +0200 you wrote:
> Initially, libie contained only 1 module and I assumed that new modules
> in its folder would depend on it.
> However, Michał did a good job and libie_{adminq,fwlog} are completely
> independent, but libie/ is still traversed by Kbuild only under
> CONFIG_LIBIE != n.
> This results in undefined references with certain kernel configs.
> 
> [...]

Here is the summary with links:
  - [net-next] libie: fix linking with libie_{adminq,fwlog} when CONFIG_LIBIE=n
    https://git.kernel.org/netdev/net-next/c/5ed994dd0b7b

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


