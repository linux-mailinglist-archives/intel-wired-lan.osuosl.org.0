Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 242F3AEC34C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Jun 2025 01:49:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5AD6661073;
	Fri, 27 Jun 2025 23:49:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G5D0xZgTQLxS; Fri, 27 Jun 2025 23:49:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 809806107B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751068188;
	bh=GbtC/q5CcpjlMg3mdKE2ISq9hb3kMY8rQug2J4K17eA=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sNoyBarzwJta7OZ2m2w4+X4UV3Geq1HYDdPqmV+SaBdjMZZOncJI124O8kwmHFo0A
	 OAyqZk1/1gfmJUOtDzLDWRuC9l31JoAbhkvbj7Wb3xwia2bWrv925ikYX114vMEvD1
	 dO7AIPYAI/Hzs4JwUTsScDq12JGfcAJawHDqrkRnzGkZu0gm+Jy3gPWS2vR2BLWT/p
	 9fk6ORj7FofG4Pz5dJmh5BS0wbjbteJhsdV79ceMZw1K0MUWu3T6jNV9TdWgkLUbjJ
	 //BImud5liPEhIgcpFmN8NN0aa8CJ7kLLDymbMs8CNT0gwbsAXMP59JhlsOBE1gSNc
	 h09WG+EkERmlw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 809806107B;
	Fri, 27 Jun 2025 23:49:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B1BAFAF7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 23:49:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A2BA261059
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 23:49:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 48ZAjNEUfMbm for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jun 2025 23:49:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E2EAF61027
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E2EAF61027
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E2EAF61027
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 23:49:45 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id DC858A53064;
 Fri, 27 Jun 2025 23:49:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47CCCC4CEE3;
 Fri, 27 Jun 2025 23:49:44 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 70E9938111CE; Fri, 27 Jun 2025 23:50:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <175106821026.2091805.3166945763972558199.git-patchwork-notify@kernel.org>
Date: Fri, 27 Jun 2025 23:50:10 +0000
References: <20250626135219.1769350-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20250626135219.1769350-1-arkadiusz.kubalewski@intel.com>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: donald.hunter@gmail.com, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 vadim.fedorenko@linux.dev, jiri@resnulli.us, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 aleksandr.loktionov@intel.com, corbet@lwn.net, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, linux-doc@vger.kernel.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1751068184;
 bh=mlmZEjXG7JbeCyDnmaOEUzGlG9f+Aalt/BuH5agK3xQ=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=Yh1yIhKfhuWBncSI/r9zubrT7sZsms2KKYD0++g4aSKqVLr4cb6akeoC7FSShF+/u
 pz/bmqgsZt4hjyClp0S4ysIstnMCgxmJXc49gcN9RAjJN1AgRSt+lxLcxNEi+ravfo
 PpvWVyTUI/QfpLZtFTCk2JAQOyx2GcRPdz9DTY6Y7LKx9JGlK/nQz9IRM7jjQYKECy
 ol0e0ByVk6SjtvTKVPLEGUn/KPFskSCRg9cuDVNzJQ/yuQHiW2fXNSI5mx4l7hWbXn
 eTmutLw4H3DmPxHeCmWhWgUvWQBrDmdM0tplcgtbRjlyhnxYcSBAd+/2r+ZjmZ8Ah+
 RLVF4Fb3h1j+A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Yh1yIhKf
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 0/3] dpll: add Reference
 SYNC feature
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

On Thu, 26 Jun 2025 15:52:16 +0200 you wrote:
> The device may support the Reference SYNC feature, which allows the
> combination of two inputs into a input pair. In this configuration,
> clock signals from both inputs are used to synchronize the DPLL device.
> The higher frequency signal is utilized for the loop bandwidth of the DPLL,
> while the lower frequency signal is used to syntonize the output signal of
> the DPLL device. This feature enables the provision of a high-quality loop
> bandwidth signal from an external source.
> 
> [...]

Here is the summary with links:
  - [net-next,v7,1/3] dpll: add reference-sync netlink attribute
    https://git.kernel.org/netdev/net-next/c/7f15ee35972d
  - [net-next,v7,2/3] dpll: add reference sync get/set
    https://git.kernel.org/netdev/net-next/c/58256a26bfb3
  - [net-next,v7,3/3] ice: add ref-sync dpll pins
    https://git.kernel.org/netdev/net-next/c/5bcea241335b

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


