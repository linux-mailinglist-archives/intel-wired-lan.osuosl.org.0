Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 41444BAADAF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Sep 2025 03:20:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9FC740BE1;
	Tue, 30 Sep 2025 01:20:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V0-hnb4jBnfQ; Tue, 30 Sep 2025 01:20:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A71D940BDD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759195217;
	bh=4+t45f0lsOPN61oLS9SqKqGQt4yEw0pLPIG9qQsf3mg=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=K9Jp/8otorc10prnOvq9Fz9dpZwVBDG+zfqQWB+XMpp3OjPpAqi8QyRGpK4T4xTBq
	 6csN43ath4UB+oio9gD3UQyRPUhVuIyKWuAc6ApoCreK9zaPN74wZwxWp6sSfguMFB
	 +J2xNAIq94ANNa4r+HBTJvSW7mg3EnTQihHNBzZIYqdsEP0WdsmrJc8t9tiH/p8ir+
	 xWExodQmMByiAQpwRTX8TwysvK6S3WuNtJzT6KsY4gRCzzUiqK4lRUVBUCKVrcrWBx
	 JyuOpdYWO16WUAZPY2hD4dNDj6bNOA/ca4u+Ix6w8R4L3yAVb5IKhdoxMUVYw6vRWF
	 nrOZzJVpQEqqw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A71D940BDD;
	Tue, 30 Sep 2025 01:20:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id CB26DFBC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Sep 2025 01:20:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C83EA60DE1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Sep 2025 01:20:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SH2QohVagqR9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Sep 2025 01:20:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=patchwork-bot+netdevbpf@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1533B60DC4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1533B60DC4
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1533B60DC4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Sep 2025 01:20:14 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 638A160205;
 Tue, 30 Sep 2025 01:20:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13244C4CEF4;
 Tue, 30 Sep 2025 01:20:13 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 ADE3B39D0C1A; Tue, 30 Sep 2025 01:20:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <175919520650.1775912.18298480194325200871.git-patchwork-notify@kernel.org>
Date: Tue, 30 Sep 2025 01:20:06 +0000
References: <20250925180212.415093-1-alok.a.tiwari@oracle.com>
In-Reply-To: <20250925180212.415093-1-alok.a.tiwari@oracle.com>
To: Alok Tiwari <alok.a.tiwari@oracle.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1759195213;
 bh=vW/qv32iV6ZzB2NB6kl4fH250rO7rw+BNVLWzFarPPA=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=nPg4yJBfdRTytISjvdFTweEJD4B5wwCYwJMS7dSBi6E84IM036cMS1FmfmXpGQNTB
 1vnn2b4vjP9bplivwzck4hax7p5KbbITQJJ+qqAc7CdsoFX7iLe83oHuhsKzbOcQ18
 CAYK7ig9pV3ydEfkbOIx80zAg4qLf9NnD9kju3jw2X0y571g/nADP474Y2+wpapmSX
 s9pmqO0btvGsFF4q0rwjwc9OE2/5Apm1mibiVqRCWa0KSIsvN4+PmicfgqSflNa+xR
 BSzEJ6Eug+VHSjgRfcgJmMDjh9Lym+rMXBvEJRXrHf3PgIWib7J1h/7J2Wf4NVh2E6
 RLCQhCszqjjlw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=nPg4yJBf
Subject: Re: [Intel-wired-lan] [PATCH net] idpf: fix mismatched free
 function for dma_alloc_coherent
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
Cc: andrew+netdev@lunn.ch, przemyslaw.kitszel@intel.com,
 aleksander.lobakin@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 alan.brady@intel.com, horms@kernel.org, netdev@vger.kernel.org,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Thu, 25 Sep 2025 11:02:10 -0700 you wrote:
> The mailbox receive path allocates coherent DMA memory with
> dma_alloc_coherent(), but frees it with dmam_free_coherent().
> This is incorrect since dmam_free_coherent() is only valid for
> buffers allocated with dmam_alloc_coherent().
> 
> Fix the mismatch by using dma_free_coherent() instead of
> dmam_free_coherent
> 
> [...]

Here is the summary with links:
  - [net] idpf: fix mismatched free function for dma_alloc_coherent
    https://git.kernel.org/netdev/net/c/b9bd25f47eb7

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


