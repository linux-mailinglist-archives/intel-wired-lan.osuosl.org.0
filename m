Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A13CB0FE91
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Jul 2025 04:00:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 935E2813E9;
	Thu, 24 Jul 2025 02:00:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v-a_AHhEXpIq; Thu, 24 Jul 2025 02:00:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C02B281319
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753322427;
	bh=IeBKQHu4REtoDiGxmR/wYFvgGjsPsH6vkGgdHIDgaKo=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CGZb650+vWJUuW3gUmo9hwczm9W1wkhM9EBdgjnmdEh+PBVY8C1jymFfKpOu1XOQz
	 eDTVGoL2nc/lM6juX6uRX7Gt81rLPDV1+/jaOn/Lc4hWyNi6Oc5yepnFMWOTZ9J1Pv
	 Z5l3dp65GywZQob/eZpFVyiGAyr1YnJc4XGDMEtq2KiYqunwM04yTnudsoFy5tiv5d
	 ebFn/blB4e8zR5MQukDMJzaAI01A7HIZlfpT3GzmMUF0jl1VBRQJKCgsedu7SMb+0a
	 Vz6f6yzhEQWa/gouy88fvoWSYHhJ+t9S9C9xSoY/jAKC1gZ8ttZ9gLLGegCnUil73h
	 VKGmNaHTk+OUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C02B281319;
	Thu, 24 Jul 2025 02:00:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2EBC7D3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 02:00:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 14DD140FEA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 02:00:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 48fJtCI04b9G for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Jul 2025 02:00:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 30F8C40FDB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 30F8C40FDB
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 30F8C40FDB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 02:00:25 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id C194B5C677D;
 Thu, 24 Jul 2025 02:00:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6749DC4CEE7;
 Thu, 24 Jul 2025 02:00:23 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 ADD9E383BF4E; Thu, 24 Jul 2025 02:00:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <175332244124.1844642.1793292791852018522.git-patchwork-notify@kernel.org>
Date: Thu, 24 Jul 2025 02:00:41 +0000
References: <20250721021835.63939-1-byungchul@sk.com>
In-Reply-To: <20250721021835.63939-1-byungchul@sk.com>
To: Byungchul Park <byungchul@sk.com>
Cc: willy@infradead.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-mm@kvack.org, kernel_team@skhynix.com, almasrymina@google.com,
 ilias.apalodimas@linaro.org, harry.yoo@oracle.com, akpm@linux-foundation.org, 
 andrew+netdev@lunn.ch, asml.silence@gmail.com, toke@redhat.com,
 david@redhat.com, Liam.Howlett@oracle.com, vbabka@suse.cz, rppt@kernel.org,
 surenb@google.com, mhocko@suse.com, linux-rdma@vger.kernel.org,
 bpf@vger.kernel.org, vishal.moola@gmail.com, hannes@cmpxchg.org,
 ziy@nvidia.com, jackmanb@google.com, wei.fang@nxp.com, shenwei.wang@nxp.com,
 xiaoning.wang@nxp.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, sgoutham@marvell.com, gakula@marvell.com,
 sbhatta@marvell.com, hkelam@marvell.com, bbhushan2@marvell.com,
 tariqt@nvidia.com, ast@kernel.org, daniel@iogearbox.net, hawk@kernel.org,
 john.fastabend@gmail.com, sdf@fomichev.me, saeedm@nvidia.com,
 leon@kernel.org, mbloch@nvidia.com, danishanwar@ti.com, rogerq@kernel.org,
 nbd@nbd.name, lorenzo@kernel.org, ryder.lee@mediatek.com,
 shayne.chen@mediatek.com, sean.wang@mediatek.com, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com, aleksander.lobakin@intel.com,
 horms@kernel.org, m-malladi@ti.com, krzysztof.kozlowski@linaro.org,
 matthias.schiffer@ew.tq-group.com, robh@kernel.org, imx@lists.linux.dev,
 intel-wired-lan@lists.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-wireless@vger.kernel.org, linux-mediatek@lists.infradead.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1753322423;
 bh=BpiBxoeu56d35+/JzOYrXKdHXbJJT/hxC16C6lp6gcA=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=FZpVLHS3icbEQYbRG1+helDdBFX+wQpCFSiakNNIv0ThNYsWN8+wKwU2x1N3sV8Gv
 DXyX6qd9uvS9jbrnH0u1AgyvOaQft9DZtNjlPlsDXjoox7TvcPgZF/8wxi/eoD80UI
 pIvFlEM4HcIYFB8rWvVJbTSH6/DXIoGZ9E25Df4gXS0SPlyC1AGBcuDyjGXIo4nkX8
 X35iuPt2DKaZYuJFYaIKvTAJD2ICgAWE1rhevidTMwzKKjRKBODq2DoqE4ZEKRvMtb
 TxPoHsoPDEoXYaEYxkkgSrElK9ZWMvipIX7CN8ER7eNLHuBZQez7JQAhtnpZdBVBWh
 97HvXJttZJJ3w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=FZpVLHS3
Subject: Re: [Intel-wired-lan] [PATCH net-next v12 00/12] Split netmem from
 struct page
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

On Mon, 21 Jul 2025 11:18:23 +0900 you wrote:
> Hi all,
> 
> The MM subsystem is trying to reduce struct page to a single pointer.
> See the following link for your information:
> 
>    https://kernelnewbies.org/MatthewWilcox/Memdescs/Path
> 
> [...]

Here is the summary with links:
  - [net-next,v12,01/12] netmem: introduce struct netmem_desc mirroring struct page
    https://git.kernel.org/netdev/net-next/c/f3d85c9ee510
  - [net-next,v12,02/12] netmem: use netmem_desc instead of page to access ->pp in __netmem_get_pp()
    https://git.kernel.org/netdev/net-next/c/38a436d4e264
  - [net-next,v12,03/12] netmem, mlx4: access ->pp_ref_count through netmem_desc instead of page
    https://git.kernel.org/netdev/net-next/c/89ade7c73065
  - [net-next,v12,04/12] netdevsim: access ->pp through netmem_desc instead of page
    https://git.kernel.org/netdev/net-next/c/6fd824342a57
  - [net-next,v12,05/12] mt76: access ->pp through netmem_desc instead of page
    https://git.kernel.org/netdev/net-next/c/87dda483e63f
  - [net-next,v12,06/12] net: fec: access ->pp through netmem_desc instead of page
    https://git.kernel.org/netdev/net-next/c/65589e860a80
  - [net-next,v12,07/12] octeontx2-pf: access ->pp through netmem_desc instead of page
    https://git.kernel.org/netdev/net-next/c/58831a178551
  - [net-next,v12,08/12] iavf: access ->pp through netmem_desc instead of page
    https://git.kernel.org/netdev/net-next/c/c8d6830e32eb
  - [net-next,v12,09/12] idpf: access ->pp through netmem_desc instead of page
    https://git.kernel.org/netdev/net-next/c/fc16f6a5877d
  - [net-next,v12,10/12] mlx5: access ->pp through netmem_desc instead of page
    https://git.kernel.org/netdev/net-next/c/5445a5f71209
  - [net-next,v12,11/12] net: ti: icssg-prueth: access ->pp through netmem_desc instead of page
    https://git.kernel.org/netdev/net-next/c/c0bcfabd7752
  - [net-next,v12,12/12] libeth: xdp: access ->pp through netmem_desc instead of page
    https://git.kernel.org/netdev/net-next/c/9dfd871a3e2e

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


