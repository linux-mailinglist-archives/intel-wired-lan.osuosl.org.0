Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6359AB04E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 16:00:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DEBC540210;
	Tue, 22 Oct 2024 14:00:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oO-m4f4Ob1NP; Tue, 22 Oct 2024 14:00:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 881A24021C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729605628;
	bh=Nv4TWO0H7NSyk5e46vb1F9vfCwyXuDFx8rEfYOHxUDY=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1PSUVzcU/LQTfSPAdq6A6jZyvw+RGWb1l/bwwsE91P0V8bZ2H3BDpvrt9CCrPjpXj
	 ke+RSYf4yJunVoNQvXSNi05mIycJvtyDXZfzuynP/1vb//duGEzoRzogRaK/PWwSeA
	 HeYOQTwd/k8OwEEm8OIAfTJTPASdX7lXz1sf8JBYrabgE14ONCaMZwJTAd0iBSV29h
	 kiPJqn/fmP8qCczBVagYL6MdKuJ3CovnL+8GpwzLTKOPSje4usYlH/Bsp5qSSBBktc
	 Jq7jiU/gMJ3pvc+DdxpVmHV1DCunZU5MY1DcRxsyyj8u+CCDF0nOBwNt5gTkEiOP45
	 +zvzYHP980p1w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 881A24021C;
	Tue, 22 Oct 2024 14:00:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 162E22072
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 14:00:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EB16D60683
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 14:00:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SgE2wsYqZsan for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 14:00:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 301BE6058B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 301BE6058B
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 301BE6058B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 14:00:25 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id ED5DEA4371B;
 Tue, 22 Oct 2024 14:00:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF194C4CEC3;
 Tue, 22 Oct 2024 14:00:23 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 33E4B3822D22; Tue, 22 Oct 2024 14:00:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <172960562974.974582.9623036354367595333.git-patchwork-notify@kernel.org>
Date: Tue, 22 Oct 2024 14:00:29 +0000
References: <e45d1c9f17356d431b03b419f60b8b763d2ff768.1729000481.git.pabeni@redhat.com>
In-Reply-To: <e45d1c9f17356d431b03b419f60b8b763d2ff768.1729000481.git.pabeni@redhat.com>
To: Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, wenjun1.wu@intel.com, kuba@kernel.org,
 netdev@vger.kernel.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1729605623;
 bh=DJ05y4+CL7Xk9Iz7SQ2Q52C3cRHu4GYobG+lBZKNx9U=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=cA84KYE9514qfbM2q/kOdEZ/K3+RE4H3PfMntoFdrwPuSSFP5yA13qNmxzU/uU+mx
 KpDawtRbF5m+5wcTxEVkI1ejUyo1OuiQUaTJmAngV050ronDEg7yPNMlC+jkPYXCJx
 Cb+W8hi3etvC1dMpSO16vXHgWU2ZOem4gMQlZJWcAtXtKgNd1zUFcXUC+H1HG0Yoml
 DgEoYLIYsH5UCb+zI5Z2mGyddtc5BHsuD5UaSOelvw2LSDlfaI7e2xAhLQhGJ9K3n1
 sMRaVrfOXX7OY6KFcbiTUAqWv1/EWIEO/lMWBxfAo8HyIMfSH6Bh5l5HpsbLJA3bze
 VVIft97j/Glnw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=cA84KYE9
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] virtchnl: fix m68k build.
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
by Paolo Abeni <pabeni@redhat.com>:

On Tue, 15 Oct 2024 15:56:35 +0200 you wrote:
> The kernel test robot reported a build failure on m68k in the intel
> driver due to the recent shapers-related changes.
> 
> The mentioned arch has funny alignment properties, let's be explicit
> about the binary layout expectation introducing a padding field.
> 
> Fixes: 608a5c05c39b ("virtchnl: support queue rate limit and quanta size configuration")
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202410131710.71Wt6LKO-lkp@intel.com/
> Signed-off-by: Paolo Abeni <pabeni@redhat.com>
> 
> [...]

Here is the summary with links:
  - [iwl-next] virtchnl: fix m68k build.
    https://git.kernel.org/netdev/net-next/c/d811ac148f0a

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


