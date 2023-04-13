Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0676E15DD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Apr 2023 22:30:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3248A616BC;
	Thu, 13 Apr 2023 20:30:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3248A616BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681417832;
	bh=eIKWTgHsLKWgBrqUDKjbElA73IMFhXmkbMspnZmVIsY=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QuVhXgbl/Hy+AMfSKiD/01Kvgwa0Ssb7sbhsUNcDl2etsOCHqNbNVCn8ND0rbtRo4
	 IOw6NKPgRyxd+h5q0a6QNRmm0unnBjKQx8D4loAoWNKQHhcqEGd3Yosh2mPGXEJly7
	 YYhXvx4hYP1WpWY0Iihp/uLmHJRIcCBn6MTatTH1GAOoG3hrkPW+Sj/1UfcZIfSgdA
	 AFeRaiDEm9ojP/lkFlX+Ms0adYbvEAW25s/0Vn9SGpyvPzOx1j7EomOOPn75y6wQrA
	 Y7RKRD7PsoR1Fl13rdezpTwxNOCkOWU8u/o+7C3xxKJpKnEMSyTdApXpwH21vyfFfl
	 PJOWkL7HAoKZg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qz9cUIZfJh4v; Thu, 13 Apr 2023 20:30:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2939B60E90;
	Thu, 13 Apr 2023 20:30:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2939B60E90
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 539FC1C3E22
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 20:30:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 38BE140516
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 20:30:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 38BE140516
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id krKIDdJOhohS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Apr 2023 20:30:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 26AC64031E
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 26AC64031E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 20:30:22 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 5CEF564195;
 Thu, 13 Apr 2023 20:30:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 881F2C4339B;
 Thu, 13 Apr 2023 20:30:20 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 623F1C395C5; Thu, 13 Apr 2023 20:30:20 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <168141782039.3934.14068721419146167788.git-patchwork-notify@kernel.org>
Date: Thu, 13 Apr 2023 20:30:20 +0000
References: <168132888942.340624.2449617439220153267.stgit@firesoul>
In-Reply-To: <168132888942.340624.2449617439220153267.stgit@firesoul>
To: Jesper Dangaard Brouer <brouer@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1681417820;
 bh=a5x9QYPzlYjC4i+/VEC2vZQfe2RMRXQEQDfiHLDCWFo=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=auIO1C7gXvnGtH4b2N2YW5M1F0eUvtXzAfCN1Y+9u9xE+lUEgq8i/YpbL/mnA4gH+
 Gpt+I1vw/I9M8wM6q/j4bN1df6DtzmdBGIG7/NwEQW0KSNGkqDKmNDoBeKqstYCsZo
 5P49dLS01tW3goqHt0FmJMF3V0WznPmy1zfreHprkiY9y1WhcvBY8Xeswfs6UJPw6E
 v3tz4gv1vsZkPb4nawItMoeI5MKM4rSJtruasojm3LB9A6vlSCbfkwO6eqVoHs9L3p
 zmqh+wiDybyjmAPZQb6upro8/Ytg4SK0tDVGuI8V6QdlSBqS1z1OB0rcNJ4r/JOTLZ
 nBsx6VK/X5w3g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=auIO1C7g
Subject: Re: [Intel-wired-lan] [PATCH bpf V10 0/6] XDP-hints: API change for
 RX-hash kfunc bpf_xdp_metadata_rx_hash
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
Cc: ast@kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 sdf@google.com, boon.leong.ong@intel.com, hawk@kernel.org,
 xdp-hints@xdp-project.net, daniel@iogearbox.net, linux-rdma@vger.kernel.org,
 john.fastabend@gmail.com, jesse.brandeburg@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 martin.lau@kernel.org, larysa.zaremba@intel.com, leon@kernel.org,
 netdev@vger.kernel.org, toke@redhat.com, linux-kernel@vger.kernel.org,
 tariqt@nvidia.com, yoong.siang.song@intel.com, bpf@vger.kernel.org,
 saeedm@nvidia.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net.git (main)
by Alexei Starovoitov <ast@kernel.org>:

On Wed, 12 Apr 2023 21:48:30 +0200 you wrote:
> Current API for bpf_xdp_metadata_rx_hash() returns the raw RSS hash value,
> but doesn't provide information on the RSS hash type (part of 6.3-rc).
> 
> This patchset proposal is to change the function call signature via adding
> a pointer value argument for providing the RSS hash type.
> 
> Patchset also removes all bpf_printk's from xdp_hw_metadata program
> that we expect driver developers to use. Instead counters are introduced
> for relaying e.g. skip and fail info.
> 
> [...]

Here is the summary with links:
  - [bpf,V10,1/6] selftests/bpf: xdp_hw_metadata remove bpf_printk and add counters
    https://git.kernel.org/netdev/net/c/e8163b98d96c
  - [bpf,V10,2/6] xdp: rss hash types representation
    https://git.kernel.org/netdev/net/c/0cd917a4a8ac
  - [bpf,V10,3/6] mlx5: bpf_xdp_metadata_rx_hash add xdp rss hash type
    https://git.kernel.org/netdev/net/c/67f245c2ec0a
  - [bpf,V10,4/6] veth: bpf_xdp_metadata_rx_hash add xdp rss hash type
    https://git.kernel.org/netdev/net/c/96b1a098f3db
  - [bpf,V10,5/6] mlx4: bpf_xdp_metadata_rx_hash add xdp rss hash type
    https://git.kernel.org/netdev/net/c/9123397aeeb4
  - [bpf,V10,6/6] selftests/bpf: Adjust bpf_xdp_metadata_rx_hash for new arg
    https://git.kernel.org/netdev/net/c/0f26b74e7d07

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
