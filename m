Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB413102E4
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Feb 2021 03:40:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B0D3D2E0F8;
	Fri,  5 Feb 2021 02:40:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rQwEu2aNFPQ4; Fri,  5 Feb 2021 02:40:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 006FC2E0F6;
	Fri,  5 Feb 2021 02:40:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D14EE1BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Feb 2021 02:40:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CC216869BB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Feb 2021 02:40:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dLV_6EQNqtwr for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Feb 2021 02:40:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6650186940
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Feb 2021 02:40:08 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 8F47364FB3;
 Fri,  5 Feb 2021 02:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612492807;
 bh=s3mrUTF85e0lkblvyy5bYFWLYge2WF7tbsn6bJvLuS0=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=X0BKqaPpFTfJ0lSgzu4TKG3CcgL8NeL0YjiM6SROz7PeKVrPijP6rZMnkHA0iG2rQ
 m6LdkqHRvol1BeAxGz64eQ59UFKiXMP5fVnNxp1gX0a+939QQANNi1DoghK//fTkT2
 Pydz9emUZ5H6SiD6A+FZs8uDL/2nxpTiuEy7FgjcTJonf12M3k7XBAHnpq/Nbbm3/r
 80Ke6zJhpqZMMNx/dd0Sq6bNYubhptPpHLDKt1+/0t0tks01lVR/FxQQoy0x8tJff/
 rwE1z4uviUcCOri+VTWvhtr2xR3Na/L7ak3Lwvv8xhtsABYB8aIphGdH4K7VMFbTQw
 ZRs21jg4sYoTA==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 727A2609F1;
 Fri,  5 Feb 2021 02:40:07 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <161249280746.9463.15568343687164067943.git-patchwork-notify@kernel.org>
Date: Fri, 05 Feb 2021 02:40:07 +0000
References: <20210202133030.5760-1-alobakin@pm.me>
In-Reply-To: <20210202133030.5760-1-alobakin@pm.me>
To: Alexander Lobakin <alobakin@pm.me>
Subject: Re: [Intel-wired-lan] [PATCH RESEND v3 net-next 0/5] net:
 consolidate page_is_pfmemalloc() usage
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
Cc: rdunlap@infradead.org, linux-mm@kvack.org, jakub@cloudflare.com,
 leon@kernel.org, linux-rdma@vger.kernel.org, decui@microsoft.com,
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com, kuba@kernel.org,
 pabeni@redhat.com, yisen.zhuang@huawei.com, pablo@netfilter.org,
 elver@google.com, jhubbard@nvidia.com, rientjes@google.com, willemb@google.com,
 salil.mehta@huawei.com, netdev@vger.kernel.org, ilias.apalodimas@linaro.org,
 linux-kernel@vger.kernel.org, jonathan.lemon@gmail.com,
 akpm@linux-foundation.org, saeedm@nvidia.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (refs/heads/master):

On Tue, 02 Feb 2021 13:30:43 +0000 you wrote:
> page_is_pfmemalloc() is used mostly by networking drivers to test
> if a page can be considered for reusing/recycling.
> It doesn't write anything to the struct page itself, so its sole
> argument can be constified, as well as the first argument of
> skb_propagate_pfmemalloc().
> In Page Pool core code, it can be simply inlined instead.
> Most of the callers from NIC drivers were just doppelgangers of
> the same condition tests. Derive them into a new common function
> do deduplicate the code.
> 
> [...]

Here is the summary with links:
  - [RESEND,v3,net-next,1/5] mm: constify page_is_pfmemalloc() argument
    https://git.kernel.org/netdev/net-next/c/1d7bab6a9445
  - [RESEND,v3,net-next,2/5] skbuff: constify skb_propagate_pfmemalloc() "page" argument
    https://git.kernel.org/netdev/net-next/c/48f971c9c80a
  - [RESEND,v3,net-next,3/5] net: introduce common dev_page_is_reusable()
    https://git.kernel.org/netdev/net-next/c/bc38f30f8dbc
  - [RESEND,v3,net-next,4/5] net: use the new dev_page_is_reusable() instead of private versions
    https://git.kernel.org/netdev/net-next/c/a79afa78e625
  - [RESEND,v3,net-next,5/5] net: page_pool: simplify page recycling condition tests
    https://git.kernel.org/netdev/net-next/c/05656132a874

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
