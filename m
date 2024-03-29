Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 168F889108D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Mar 2024 02:50:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A31B38278F;
	Fri, 29 Mar 2024 01:50:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nirbPABng7gX; Fri, 29 Mar 2024 01:50:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B7CE7824A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711677035;
	bh=iPAKIEjvU3VCr37SleVfOBe5jogZgCI8GkjqRtVPpHM=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TivwlQyheKFBl1jt9g9oaT7Q9pkgfEfwfGi5t2u+YAtpk3CGT0t6uSsiIbh4j9MaL
	 ePmnCgYg6k16rde5/iAc24CIBx6nMTH+RViF+fIhUfzGq+ZWc4GmXiyGJkLk5MAYWS
	 nRNKuzpOsbS/NV0m7UP4PQCvLL9+8r01FgfxTfw2kZmVhzFI5xEVFykrw9zrEJK/an
	 O8SAF73qzhH+kiP+NCjZrmSG+DliLbSt2PmfV+5y3d7uNEXCur2hawBa7LT36IIKQ5
	 6dclImJTb6yqIIq1T9eFrTx3ckqJWysK39QCvaaDf/bh2HeDHVKF6E5INkwslMxduy
	 06LfLY4DcyMeA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B7CE7824A4;
	Fri, 29 Mar 2024 01:50:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 751581BF83C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 01:50:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 599828248C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 01:50:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GA4nnOv54Arx for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Mar 2024 01:50:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5828482451
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5828482451
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5828482451
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 01:50:31 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 97C5C618BF;
 Fri, 29 Mar 2024 01:50:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6F79C43394;
 Fri, 29 Mar 2024 01:50:29 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 CE6E2D95064; Fri, 29 Mar 2024 01:50:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <171167702984.13430.7602410766409441835.git-patchwork-notify@kernel.org>
Date: Fri, 29 Mar 2024 01:50:29 +0000
References: <20240327040213.3153864-1-kuba@kernel.org>
In-Reply-To: <20240327040213.3153864-1-kuba@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711677030;
 bh=LadFdNAs2gpLM+Z83RwB1YgHe33AxmBjBG1qdF9v/KE=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=nE0v6JjoY/LFuCnfpSDV7ZHt278ZCYBN+PU/uw02W6pWrVBW9aDwsIuP2TOPC6bhV
 FqSPdVxE7o4WWujh1RTsKe3f3JzVHQJ6VgjFGqOLdI/tKGHkYW6E3n6Au7s5HglENk
 BTWJv6XYrtFDbPg0m77yapwSfBkcVqgsBkVAS+ZgbDPif+10B1elw9SdFbEt5fVg6b
 +qXHbD2IERxu7K4njn3nxTaXyJzbS6Vn5B/mfLP83i4hxgfhUr/MLHLCBHlIiubsm1
 A1Xlzgui7+jhbwmBZPtugw469ia5/eAKnF8wXEtE2uJbK9+CDWnzYZj9gD76SHSuzg
 /+xUZ11adfNZw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=nE0v6Jjo
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] net: remove gfp_mask from
 napi_alloc_skb()
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
Cc: siyanteng@loongson.cn, netdev@vger.kernel.org, alexandre.torgue@foss.st.com,
 aleksander.lobakin@intel.com, edumazet@google.com, joabreu@synopsys.com,
 anthony.l.nguyen@intel.com, mcoquelin.stm32@gmail.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net,
 alexs@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Tue, 26 Mar 2024 21:02:12 -0700 you wrote:
> __napi_alloc_skb() is napi_alloc_skb() with the added flexibility
> of choosing gfp_mask. This is a NAPI function, so GFP_ATOMIC is
> implied. The only practical choice the caller has is whether to
> set __GFP_NOWARN. But that's a false choice, too, allocation failures
> in atomic context will happen, and printing warnings in logs,
> effectively for a packet drop, is both too much and very likely
> non-actionable.
> 
> [...]

Here is the summary with links:
  - [net-next,v2] net: remove gfp_mask from napi_alloc_skb()
    https://git.kernel.org/netdev/net-next/c/6e9b01909a81

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


