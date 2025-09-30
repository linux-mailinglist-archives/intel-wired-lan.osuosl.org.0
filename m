Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CAABAADBB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Sep 2025 03:21:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 50B99402E3;
	Tue, 30 Sep 2025 01:21:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7X9Kii9Ocgpc; Tue, 30 Sep 2025 01:21:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 64F54403A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759195266;
	bh=D3MPwz7+zSLevQlmL+zkJERZB5IU1M9axV0XVve6BzM=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=85XPhNHElUXTXCmlNuOVOOfy0i6k/RrYX8dwLjk7MV9LzEEZKAiVsO/JrIR0+vlDV
	 S6gwc8szVpFWkgc60EF7DCUx4T+ZY2DDDka7UWI5tm/xXGWkdJ+1z0d+woanQhLKqm
	 Gq1N3O8xkhBwqw2qk2PIqix/c4MAuZZqW9Rh3i1rZX5BIg7Q5h/ML2toxyu4CqNpkA
	 t5CAVPdjPqetUQsfBdKjsSgbABYXoD0T+LM5wAsEan3xMU/x2MbfOBnGdZ/lUFa7El
	 qWhM3J9VEnw1QZ2uIkKWrE+iDI3Q58pLaepgQNfli02qmO8DrgVcJpo2JRwYPNwnkg
	 TKlLY6NcS6vuw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 64F54403A7;
	Tue, 30 Sep 2025 01:21:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 84AC3B30
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Sep 2025 01:21:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6B23140295
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Sep 2025 01:21:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3xVn2vZk3ITb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Sep 2025 01:21:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=patchwork-bot+netdevbpf@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 740B1400CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 740B1400CA
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 740B1400CA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Sep 2025 01:21:03 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 5C625602E6;
 Tue, 30 Sep 2025 01:21:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C152C4CEF4;
 Tue, 30 Sep 2025 01:21:02 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 ADC1B39D0C1A; Tue, 30 Sep 2025 01:20:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <175919525524.1775912.18040158539252294729.git-patchwork-notify@kernel.org>
Date: Tue, 30 Sep 2025 01:20:55 +0000
References: <20250929124427.79219-1-alok.a.tiwari@oracle.com>
In-Reply-To: <20250929124427.79219-1-alok.a.tiwari@oracle.com>
To: Alok Tiwari <alok.a.tiwari@oracle.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, netdev@vger.kernel.org, horms@kernel.org, 
 intel-wired-lan@lists.osuosl.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1759195262;
 bh=fLUsM9GPDt1kKZtHy7PgFzrkLXKp0dB6S3Jcb2lSGow=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=TMvTJHUixeiCHwYeOsEkLHCXSygxsveFE3fzRd/Npmsn2Ti9qfBTIjp+IQbctQAkI
 BB8yAxyr0ZDJn0a15+z+NaCYktINYuLXoFgxUSrzhwnMrQQBOg2+H7YqbWvEtkrjB1
 B14U7oe8Laf/Rze8Zcn6W0PupP1uG/YpJh9x8wi//JC6SVEiPkhQdszlYak1jroGSh
 /Q8ItUMW8MNXsTi2oWg/PbcT2DdUKQfjNhIupDy6uCqc0TOuXaYUcJiQySsC6FkGGt
 Mcmpkf7yycqz0nLJOGJUKItZOCTRTVtKp6GOr9lvw9zCuFXVvwWoAgzSdKcS8iU/O6
 cHiKEHvv9g9Gw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=TMvTJHUi
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: fix typos and
 docstring inconsistencies
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

On Mon, 29 Sep 2025 05:44:01 -0700 you wrote:
> Corrected function and variable name typos in comments and docstrings:
>  ixgbe_write_ee_hostif_X550 -> ixgbe_write_ee_hostif_data_X550
>  ixgbe_get_lcd_x550em -> ixgbe_get_lcd_t_x550em
>  "Determime" -> "Determine"
>  "point to hardware structure" -> "pointer to hardware structure"
>  "To turn on the LED" -> "To turn off the LED"
> 
> [...]

Here is the summary with links:
  - [net-next] ixgbe: fix typos and docstring inconsistencies
    https://git.kernel.org/netdev/net-next/c/96ccc93744f8

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


