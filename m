Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AB499ADFB10
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jun 2025 03:59:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 33B8140328;
	Thu, 19 Jun 2025 01:59:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pwFGTc-pTPKG; Thu, 19 Jun 2025 01:59:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 535EA402D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750298395;
	bh=E8Yj3lcb9ME+3gjuompfJ9e/7b7343iaOhF25RqxaT4=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IObZyUa1iCNUuH5rY4rNloegPkAmxGHOXObDsA57LtoZrCsPCg56OM9KI/A4gfJd4
	 DJaKozsE2k8jo2GiviBqfoo/SZ2c1G6F1+SiQUjEuMcFlIrpB7r//lEE8DWxM9N2xI
	 8WC0yITfiLb2AY75Ec5uOJVa1wRT9uYNKKnEJratIh5p2CWKgbnJ8v84t+U0lWqBLr
	 tUkzaN3yKdjLYZLFhOkxIn4nUnYuEHuhzcGyTsThmuplbjph1HTUwzWBP0pyquMOgF
	 aWnjcjzOwsuOMVwzpTqcM9gbj1bbXcXfIBwZyrx7mKXNqI/h05v6wbYYSeIEl2eK4A
	 5XDJUMJoBWlVw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 535EA402D4;
	Thu, 19 Jun 2025 01:59:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 35AB5E2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 01:59:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 26CFE40791
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 01:59:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VEZgZvN98WsW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jun 2025 01:59:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6BE3040656
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6BE3040656
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6BE3040656
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 01:59:52 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id D5EB3A52B5E;
 Thu, 19 Jun 2025 01:59:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7AB1AC4CEE7;
 Thu, 19 Jun 2025 01:59:50 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 EAEDF3806649; Thu, 19 Jun 2025 02:00:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <175029841848.320658.9308379649509683113.git-patchwork-notify@kernel.org>
Date: Thu, 19 Jun 2025 02:00:18 +0000
References: <20250616162117.287806-1-stfomichev@gmail.com>
In-Reply-To: <20250616162117.287806-1-stfomichev@gmail.com>
To: Stanislav Fomichev <stfomichev@gmail.com>
Cc: netdev@vger.kernel.org, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, skalluru@marvell.com,
 manishc@marvell.com, andrew+netdev@lunn.ch, michael.chan@broadcom.com,
 pavan.chebbi@broadcom.com, ajit.khaparde@broadcom.com,
 sriharsha.basavapatna@broadcom.com, somnath.kotur@broadcom.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, tariqt@nvidia.com,
 saeedm@nvidia.com, louis.peens@corigine.com, shshaikh@marvell.com,
 GR-Linux-NIC-Dev@marvell.com, ecree.xilinx@gmail.com, horms@kernel.org,
 dsahern@kernel.org, shuah@kernel.org, tglx@linutronix.de, mingo@kernel.org,
 ruanjinjie@huawei.com, idosch@nvidia.com, razor@blackwall.org,
 petrm@nvidia.com, kuniyu@google.com, sdf@fomichev.me,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, oss-drivers@corigine.com,
 linux-net-drivers@amd.com, linux-kselftest@vger.kernel.org, leon@kernel.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1750298390;
 bh=94mN+2+g5h25MlO4Cl08JCW2RHY0uDyNmsYiIn2eS/0=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=CwK+zBVWd9Vt8zSivCtzR8ekuuA7p+dsyureeXvVPF4+kzM0iB0o/1GUz0svw6kVI
 ecIlNmV1yyU5D5c0ki3TBJZLgv4RvqL+M0MsMr20qQwj+mTQefW2ApQaGR8OiwZcCz
 J2225Ho4HJbQ7u/NeBzUI36iMMG6yJP56aLaYT9QJ4cI+KuAKoLT2LQmbysUD2FNre
 s8CNyHzFdJj7y6G74TxZclFFncO/ucFxgHG5HzljGsgtNNOca9D0/YkAuESlXpSZ4X
 S6ZuexGLDGU9jkptP+FYSEE9A0U7tA4xDX2/XYYNZkujBjuPGusUvkdX2hG/CqA1lS
 EOHj4+ALl+LbQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=CwK+zBVW
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 0/6] udp_tunnel: remove
 rtnl_lock dependency
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

On Mon, 16 Jun 2025 09:21:11 -0700 you wrote:
> Recently bnxt had to grow back a bunch of rtnl dependencies because
> of udp_tunnel's infra. Add separate (global) mutext to protect
> udp_tunnel state.
> 
> v5:
> - remove unused variable (lkp@intel.com)
> 
> [...]

Here is the summary with links:
  - [net-next,v5,1/6] geneve: rely on rtnl lock in geneve_offload_rx_ports
    https://git.kernel.org/netdev/net-next/c/3e14960f3bd2
  - [net-next,v5,2/6] vxlan: drop sock_lock
    https://git.kernel.org/netdev/net-next/c/df5425b3bd85
  - [net-next,v5,3/6] udp_tunnel: remove rtnl_lock dependency
    https://git.kernel.org/netdev/net-next/c/1ead7501094c
  - [net-next,v5,4/6] net: remove redundant ASSERT_RTNL() in queue setup functions
    https://git.kernel.org/netdev/net-next/c/3a321b6b1f76
  - [net-next,v5,5/6] netdevsim: remove udp_ports_sleep
    https://git.kernel.org/netdev/net-next/c/e054c8ba3bce
  - [net-next,v5,6/6] Revert "bnxt_en: bring back rtnl_lock() in the bnxt_open() path"
    https://git.kernel.org/netdev/net-next/c/850d9248d2ea

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


