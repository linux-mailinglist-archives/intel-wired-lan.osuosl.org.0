Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0AE7D05E4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Oct 2023 02:40:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E87308448B;
	Fri, 20 Oct 2023 00:40:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E87308448B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697762436;
	bh=if9ZDaM6V9912WNaIPp0MOHOqqI7oG9Xs1VRsD68lAQ=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xLKJX3CVoNXI9vLpcIDGNM3+6uqPQlm+LM5oXjK+sfG9tePi4dePUTqnjqN30a/f4
	 H4kynRxAUGmbaIfB5aqlYG/J+CrPrMzjYp8uOwtiAyP1aTTbUnzi4f9mMSGk2EfYGt
	 s7l9D7WYCcH9gmJNyOHSDnktmVmoq/iAA0aOYLbPIWDMv3n7u26ocJ4FI+OaQBe4uf
	 PzgAAFb0lzgqjnwGLVxr6E+JSPRGlAWhJHFhxwneRnBYvvKceZRVclYKn4OdYRZwuv
	 FRXHLXpjCzE+f94MuDnLGBW2xFyBuB4HKfQfFsJRBsO5xz07/ICr+N70uGAecBDVoY
	 Z1wp/vCYgOzWg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jeA6oKS2v4sW; Fri, 20 Oct 2023 00:40:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D718483F6C;
	Fri, 20 Oct 2023 00:40:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D718483F6C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BA7A11BF368
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 00:40:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8D6AE60F40
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 00:40:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D6AE60F40
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rmd45OUGyq21 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Oct 2023 00:40:27 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3CB4560EFC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 00:40:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3CB4560EFC
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 16540B82932;
 Fri, 20 Oct 2023 00:40:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3F9A1C433CA;
 Fri, 20 Oct 2023 00:40:23 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 1D8C7C595CE; Fri, 20 Oct 2023 00:40:23 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <169776242311.19903.7725017864610807952.git-patchwork-notify@kernel.org>
Date: Fri, 20 Oct 2023 00:40:23 +0000
References: <20231018163908.40841-1-maciej.fijalkowski@intel.com>
In-Reply-To: <20231018163908.40841-1-maciej.fijalkowski@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1697762423;
 bh=H3/cGCGm5Lcth5PGgrinf5iAWAJdIj6emJBvsWuPRVg=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=tMoUkk/abpGKzLpfHr6ADL7K9dmJ1jz7PoeVcwmZ0odPLjJs7EkOLI6IiX1EJUZLP
 vuvdq/PMylDLihCSjZ/AlOtILqehjKoR5jPLqfWZ439o7EUQN3g8t5B+oyJhlOC+rR
 aHNAB9tpEYcTB+S6/gmtgvg2G5n3QnxQioCJFQK97r/BqOyJo5/ZhQviZyxclciAZH
 ttQo3V4HHrogUj5udfewhevy1vb4F7T01YLtkYNRq1zacTAaJuCzExo3Hs6a7dffT9
 FjwmoFwurWfMuoD1kmq87+TFp7W3uYuuqDqrBj+q5m/dGpoJk7rOQ5SPW3qymx2V/r
 KmGTEFZccYlow==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=tMoUkk/a
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: xsk: remove count_mask
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
Cc: netdev@vger.kernel.org, tushar.vyavahare@intel.com,
 anthony.l.nguyen@intel.com, jacob.e.keller@intel.com,
 intel-wired-lan@lists.osuosl.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Wed, 18 Oct 2023 18:39:08 +0200 you wrote:
> Cited commit introduced a neat way of updating next_to_clean that does
> not require boundary checks on each increment. This was done by masking
> the new value with (ring length - 1) mask. Problem is that this is
> applicable only for power of 2 ring sizes, for every other size this
> assumption can not be made. In turn, it leads to cleaning descriptors
> out of order as well as splats:
> 
> [...]

Here is the summary with links:
  - [net] i40e: xsk: remove count_mask
    https://git.kernel.org/netdev/net/c/913eda2b08cc

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
