Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B71A4C832FB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 04:11:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 12044822F0;
	Tue, 25 Nov 2025 03:11:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ieCaRU81iQTe; Tue, 25 Nov 2025 03:11:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1486E8233B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764040263;
	bh=+g+qOh/8n+mT8IemB4yky0+U8Qv18RNiBCqh3hZ3zFM=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vupVo7mK1jRBt2LypcWa1XDS4oCJcyac9SLNzhFXPxPdeV8ipo0Ww924Km5MOPWBJ
	 4FxvWxOO5CwVJByIJpSwc0ESCEAgLelT+mp9NtS513HHLMM7fvmBzsdayVSI+j3uQP
	 BAZXC79yJ4eXuSGyF0EyDImmn44eOxRmr4Q53Zh+DgPOOL9vJeijAz4UF1BEnPIddQ
	 +bveLYX9JFw33PRdT/dXvO7yJvu9DFkMw8orLRruFQZtC+3xCUTDrQPvwMu1fMBbPP
	 hzQkomTso+uniDc1ilZwy75UICknAR63WGOVT+A+quY0UNhSCE96aaIsxf9U2h6k0h
	 BZTSM1Wma2n9Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1486E8233B;
	Tue, 25 Nov 2025 03:11:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6BC4DE4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 03:11:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 521D460C0D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 03:11:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Dsne2C-3bYQN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 03:11:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6F01060BB1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F01060BB1
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6F01060BB1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 03:11:00 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id F2E376017F;
 Tue, 25 Nov 2025 03:10:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A887CC4CEF1;
 Tue, 25 Nov 2025 03:10:58 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 ADF9B3A8A3CA; Tue, 25 Nov 2025 03:10:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <176404022124.167368.5823229144968982813.git-patchwork-notify@kernel.org>
Date: Tue, 25 Nov 2025 03:10:21 +0000
References: <aSBqjtA8oF25G1OG@stanley.mountain>
In-Reply-To: <aSBqjtA8oF25G1OG@stanley.mountain>
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: mheib@redhat.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1764040258;
 bh=9yTLMeCE6/5L2p8IaQYF/6/kfLa5biw61uFeneajF/I=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=homdYzWj5mRV/DLvH/Nc3ngLqF6GCQDCG6QNksYomnbwFcp7ELKwgDC9pxF6Naz2y
 GIdanGOEAXccbK5lVzhIGCyGZKuFMh7Tn0+lPY8CUIqZq5pKJYPWiQBwBPAnxmfCY2
 wgsktSTw8ojQFdsHLHasJPdzt/fyukdnt48u95l+pt/RH2qkV/rfP7gEGWHhy4iAVs
 xaz2+szqXWQ73mgVaZnmZznBwT2OVcks3BLJWaEwHIE1WHdefNK2W9SDUGva/GLd6q
 E5KL7knNZ81RBoZxgu15J74FzMYmiybHjruL9p+XDKacrlNErrwyaKP431XuzeV90+
 QH8q3/r2PNwJA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=homdYzWj
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: delete a stray tab
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

On Fri, 21 Nov 2025 16:35:10 +0300 you wrote:
> This return statement is indented one tab too far.  Delete a tab.
> 
> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Here is the summary with links:
  - [net-next] i40e: delete a stray tab
    https://git.kernel.org/netdev/net-next/c/ef0b78b5b6cb

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


