Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A53BA3EA55
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Feb 2025 02:49:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BA0160852;
	Fri, 21 Feb 2025 01:49:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8yXDxgZp--zC; Fri, 21 Feb 2025 01:49:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D0C060876
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740102577;
	bh=Vl7GrqTUxAdpjfit1u0CjWV9fmGAo2pFRZY+IFh5+NU=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aLCsN1lEqT8W+7KkrVGl9N8cnyI0Hbiw2DT+a7Iln/LKDzwBOHxtJfbPev1FkmMex
	 h1qY7uvdsJszLY0ARkpLeRWrhQmqF5+61/ntwcuvDcEP5x7GXVQJcHoHcrVMDab1R2
	 vVeHT6x2q3i1zapkVYgcPYt9kCvzsiISxCl2LHBBnbNSMKa8Z2FhfsZRSqTarLgXiW
	 nEWKx/O8IkujvT3cWe8IyFZ6wZKgXKMgXgPy+viSIImyb3kseVqktCeCuysAu0uU22
	 EoY4Kfe/SEr8v9wXUQMn6deaThJ1iYpcnmHRTt/EP19McXe6VjMvLRvrq6mnHrGyNh
	 qfwMzVgvQo1qA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D0C060876;
	Fri, 21 Feb 2025 01:49:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 02DD0D92
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 01:49:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E5D63607FD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 01:49:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2So5S0wVMy9X for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2025 01:49:34 +0000 (UTC)
X-Greylist: delayed 562 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 21 Feb 2025 01:49:33 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D347660758
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D347660758
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D347660758
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 01:49:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 31A1A683B5;
 Fri, 21 Feb 2025 01:40:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72347C4CED1;
 Fri, 21 Feb 2025 01:40:09 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 71AB6380CEE2; Fri, 21 Feb 2025 01:40:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <174010204026.1539943.5735764109259382582.git-patchwork-notify@kernel.org>
Date: Fri, 21 Feb 2025 01:40:40 +0000
References: <20250216093430.957880-1-yoong.siang.song@intel.com>
In-Reply-To: <20250216093430.957880-1-yoong.siang.song@intel.com>
To: Song Yoong Siang <yoong.siang.song@intel.com>
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, horms@kernel.org, willemb@google.com,
 florian.bezdeka@siemens.com, donald.hunter@gmail.com, corbet@lwn.net,
 bjorn@kernel.org, magnus.karlsson@intel.com, maciej.fijalkowski@intel.com,
 jonathan.lemon@gmail.com, andrew+netdev@lunn.ch, ast@kernel.org,
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com,
 jdamato@fastly.com, sdf@fomichev.me, xuanzhuo@linux.alibaba.com,
 almasrymina@google.com, danielj@nvidia.com, andrii@kernel.org,
 eddyz87@gmail.com, mykolal@fb.com, martin.lau@linux.dev, song@kernel.org,
 yonghong.song@linux.dev, kpsingh@kernel.org, haoluo@google.com,
 jolsa@kernel.org, shuah@kernel.org, alexandre.torgue@foss.st.com,
 joabreu@synopsys.com, mcoquelin.stm32@gmail.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, faizal.abdul.rahim@linux.intel.com,
 yong.liang.choong@linux.intel.com, zdenek.bouska@siemens.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, bpf@vger.kernel.org,
 linux-kselftest@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, intel-wired-lan@lists.osuosl.org,
 xdp-hints@xdp-project.net
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1740102009;
 bh=btDMxeNfHBPNti2EoCCt/T314QWXygFwMOmYrLNf9ro=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=MXepqXaRM4dVPsZFOEB7ouyCJSGm2Meq4q/xIOE+jd15D6NGJv5MlJ11lOtELov26
 vb6Qo/vCHwGaWuM6j+aECkThrTXqJuj9n4Co8AF/jGKjsrhioPuVmOveu2YTkIbu8Q
 wk8fBvXTzPE9xVv3mHz9ZKEHZsm4VYbRYMV3C/tftMDf4OyJPnoTk9+/nJmJOcmIN5
 qTPKkOO8pMG98R/rr+JkAKcE2wHkRz5SR+PgOMhg28NxWpGz07teN/RQ+DsvRHUrxj
 JHI03CieeTQBe9pXC9MrKEU1Ekw0EKKEd1dz/sbBXjosAXPCXyksjvP1fO+R97RMjj
 Gwyk8ilUJvQFA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=MXepqXaR
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v12 0/5] xsk: TX metadata
 Launch Time support
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

This series was applied to bpf/bpf-next.git (net)
by Martin KaFai Lau <martin.lau@kernel.org>:

On Sun, 16 Feb 2025 17:34:25 +0800 you wrote:
> This series expands the XDP TX metadata framework to allow user
> applications to pass per packet 64-bit launch time directly to the kernel
> driver, requesting launch time hardware offload support. The XDP TX
> metadata framework will not perform any clock conversion or packet
> reordering.
> 
> Please note that the role of Tx metadata is just to pass the launch time,
> not to enable the offload feature. Users will need to enable the launch
> time hardware offload feature of the device by using the respective
> command, such as the tc-etf command.
> 
> [...]

Here is the summary with links:
  - [bpf-next,v12,1/5] xsk: Add launch time hardware offload support to XDP Tx metadata
    https://git.kernel.org/bpf/bpf-next/c/ca4419f15abd
  - [bpf-next,v12,2/5] selftests/bpf: Add launch time request to xdp_hw_metadata
    https://git.kernel.org/bpf/bpf-next/c/6164847e5403
  - [bpf-next,v12,3/5] net: stmmac: Add launch time support to XDP ZC
    https://git.kernel.org/bpf/bpf-next/c/04f64dea1364
  - [bpf-next,v12,4/5] igc: Refactor empty frame insertion for launch time support
    https://git.kernel.org/bpf/bpf-next/c/f9b53bb13923
  - [bpf-next,v12,5/5] igc: Add launch time support to XDP ZC
    https://git.kernel.org/bpf/bpf-next/c/d7c3a7ff7502

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


