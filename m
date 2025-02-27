Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 97513A473F5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Feb 2025 05:10:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 07AE460735;
	Thu, 27 Feb 2025 04:10:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id upgHNEPaK-Lt; Thu, 27 Feb 2025 04:10:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C21660751
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740629406;
	bh=we0+ERIaI0y3ubyS2KG2pNvJgGnwiNDRsf8ankKQym8=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lYyP3PPEDe0iY9ks3lQUXr+7kzpwv2jyll/1rxaJwk4uzTYf7Qd+ojv6gFJQyXV5F
	 gzVvy7QNbJFiJh/XOHXk1ZRod2M5L/3huSgf3B0CPwfDB4JEqS0uA5gkPUvzbw3aOP
	 D8M+SKxpquZrI/oUBP8uwJOP0ydnIK+sgd/PLPot6RZqh5rETDLgleapdSJTMqs5FD
	 mlk5hh/Gxr0s4G9BpmCCqMbsfrIAdIY4J3D4eIrJciInMH3+Lc1ajIYFL1B1wgYvWc
	 gMhGhmueaF3SeB8Y0tk5z2Kx2SaUBUs/ANzsr4eycxvU+XperBu2nYg9XQ0L5P5+fM
	 FS4edC/vurUeg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C21660751;
	Thu, 27 Feb 2025 04:10:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id B96A669
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 04:10:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A0E1D404C9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 04:10:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gLLnigyflskA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Feb 2025 04:10:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 43F4C40503
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43F4C40503
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 43F4C40503
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 04:10:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 90FA5611F1;
 Thu, 27 Feb 2025 04:09:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48107C4CEDD;
 Thu, 27 Feb 2025 04:10:00 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 711AE380CFE6; Thu, 27 Feb 2025 04:10:33 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <174062943228.962704.4253431175547388927.git-patchwork-notify@kernel.org>
Date: Thu, 27 Feb 2025 04:10:32 +0000
References: <20250224232228.990783-1-ahmed.zaki@intel.com>
In-Reply-To: <20250224232228.990783-1-ahmed.zaki@intel.com>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 andrew+netdev@lunn.ch, edumazet@google.com, kuba@kernel.org,
 horms@kernel.org, pabeni@redhat.com, davem@davemloft.net,
 michael.chan@broadcom.com, tariqt@nvidia.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jdamato@fastly.com, shayd@nvidia.com,
 akpm@linux-foundation.org, shayagr@amazon.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1740629400;
 bh=WAdmwBZ0V6ZdykWz+pq5qA+k3XZ6teOjGJ+kJy5JSuI=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=hqCaDBSDPq9AeYQs062IXcOC364kvX8rT/TPPPVSYCNR/8uSojUHYxhosbU5K83oz
 kROeKFKeWeslOdi5MDODdYsDOxKAu8voP1nX08Ob3He3cOBrmMLurOLFcihQpL42h0
 kU/1+3345EfGkPwyAejHOYeVCXQ0ETEJ1PSCvO65mFWRokWqtW0BPG061PwClUGJOG
 pUrgdBV00dmFUMbAWVdTx6asJNzX1Y/29wbxQvTu11228L29MB2Abg5zb7ISVyOnJM
 Ml2r/mX4lU6rKChcNU1h+cjbfWZWfUnMgkl3Hc3Qsf8/zX6r9Rw+3pir70EdYZkrzs
 FDkjMKhhj1NjQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=hqCaDBSD
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 0/6] net: napi: add CPU
 affinity to napi->config
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

On Mon, 24 Feb 2025 16:22:21 -0700 you wrote:
> Drivers usually need to re-apply the user-set IRQ affinity to their IRQs
> after reset. However, since there can be only one IRQ affinity notifier
> for each IRQ, registering IRQ notifiers conflicts with the ARFS rmap
> management in the core (which also registers separate IRQ affinity
> notifiers).
> 
> Move the IRQ affinity management to the napi struct. This way we can have
> a unified IRQ notifier to re-apply the user-set affinity and also manage
> the ARFS rmaps.
> 
> [...]

Here is the summary with links:
  - [net-next,v9,1/6] net: move aRFS rmap management and CPU affinity to core
    https://git.kernel.org/netdev/net-next/c/bd7c00605ee0
  - [net-next,v9,2/6] net: ena: use napi's aRFS rmap notifers
    https://git.kernel.org/netdev/net-next/c/de340d8206bf
  - [net-next,v9,3/6] ice: clear NAPI's IRQ numbers in ice_vsi_clear_napi_queues()
    https://git.kernel.org/netdev/net-next/c/30b78ba3d4fe
  - [net-next,v9,4/6] ice: use napi's irq affinity and rmap IRQ notifiers
    https://git.kernel.org/netdev/net-next/c/4063af296762
  - [net-next,v9,5/6] idpf: use napi's irq affinity
    https://git.kernel.org/netdev/net-next/c/deab38f8f011
  - [net-next,v9,6/6] selftests: drv-net: add tests for napi IRQ affinity notifiers
    https://git.kernel.org/netdev/net-next/c/185646a8a0a8

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


