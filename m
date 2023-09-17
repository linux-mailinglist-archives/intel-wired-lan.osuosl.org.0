Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A297A3544
	for <lists+intel-wired-lan@lfdr.de>; Sun, 17 Sep 2023 13:00:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 98BB141687;
	Sun, 17 Sep 2023 11:00:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 98BB141687
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694948437;
	bh=Ys2OJuIu7IDVDRlz8tMZFWzo4X48y4iPJAponDbjkks=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Hlkrg+YQORC2udmdT2OcMS65qS6zttp8FCr5clXBsaTIXvAvBCM6lR9gr3JwF2/7F
	 ZifqlduLrG8+QA61Th5z+DqYMVqlaa8PdTgCG5gcnnIPwzabwSDuRALhKqwyxKMZtZ
	 Pho3jjCj+Rt6Ui8hpgVBD8pUQaRJDXhAlynmYsKOcuHN1SfmWu7OY8SGUU5dp/SHn0
	 ZBBNcDD0DfAzpBvJj0tSnlbRqea2frs3J5OKXBIbJia6sSsFMs4M5vS+N6hlYiYjcL
	 kva7Df2tNXaA9rKzhJFG3P+6cnNfJP0pswtfOsuCRlFA93PnB0SM3BqadZ0u2utoy9
	 13VCoJviaqWCw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9cqVzj-3gxnD; Sun, 17 Sep 2023 11:00:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 47A3E41686;
	Sun, 17 Sep 2023 11:00:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 47A3E41686
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D1CE91BF423
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Sep 2023 11:00:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A8F7A40B47
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Sep 2023 11:00:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A8F7A40B47
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NPImV1dAttCY for <intel-wired-lan@lists.osuosl.org>;
 Sun, 17 Sep 2023 11:00:29 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A4981401CA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Sep 2023 11:00:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A4981401CA
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 67EEE60B58;
 Sun, 17 Sep 2023 11:00:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B459C433C8;
 Sun, 17 Sep 2023 11:00:27 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 5A962E26888; Sun, 17 Sep 2023 11:00:27 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <169494842736.21621.10730860855645661664.git-patchwork-notify@kernel.org>
Date: Sun, 17 Sep 2023 11:00:27 +0000
References: <20230913204943.1051233-1-vadim.fedorenko@linux.dev>
In-Reply-To: <20230913204943.1051233-1-vadim.fedorenko@linux.dev>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1694948427;
 bh=s08oDzPuNzSJeFX6h/ScM9J80V2nEYO6YkYo4nxEPCE=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=nritynd2YmYUlN1ie5Ol4kmiqCoZ5YuAdBaqB1rdW9DyUzY5ckHaIv3mlVt52W+Ze
 CkVyNPkKEA0HggjJK7WTDYR+3afmh9aobqqy7H3YnB1Ezsx70YW4ca9y2eJAT8w1x3
 PjDJGUp5NWF6rbMJlTMVaT1cL240EHZqLkchK6JhyZK4IfUhQjnwAS3dnSfOR0i/w5
 PoJfvWfc/cf77esp/YA2sM5hOv88kUAFW5RKvL6CsIdl3nQiILPgkwiwqMSCgF6R54
 fnaMzKOPkuVXNx+PGFTJiBCvQpYzNAqWIQZwOCTOs85sSdkHZiM+PgFtPE1x/lr8MR
 c++vLi1xox62w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=nritynd2
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 0/9] Create common DPLL
 configuration API
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
Cc: jiri@resnulli.us, bvanassche@acm.org, michal.michalik@intel.com,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-arm-kernel@lists.infradead.org, jonathan.lemon@gmail.com,
 kuba@kernel.org, pabeni@redhat.com, linux-clk@vger.kernel.org,
 milena.olech@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (main)
by David S. Miller <davem@davemloft.net>:

On Wed, 13 Sep 2023 21:49:34 +0100 you wrote:
> Implement common API for DPLL configuration and status reporting.
> The API utilises netlink interface as transport for commands and event
> notifications. This API aims to extend current pin configuration
> provided by PTP subsystem and make it flexible and easy to cover
> complex configurations.
> 
> Netlink interface is based on ynl spec, it allows use of in-kernel
> tools/net/ynl/cli.py application to control the interface with properly
> formated command and json attribute strings. Here are few command
> examples of how it works with `ice` driver on supported NIC:
> 
> [...]

Here is the summary with links:
  - [net-next,v8,1/9] dpll: documentation on DPLL subsystem interface
    https://git.kernel.org/netdev/net-next/c/dbb291f19393
  - [net-next,v8,2/9] dpll: spec: Add Netlink spec in YAML
    https://git.kernel.org/netdev/net-next/c/3badff3a25d8
  - [net-next,v8,3/9] dpll: core: Add DPLL framework base functions
    https://git.kernel.org/netdev/net-next/c/9431063ad323
  - [net-next,v8,4/9] dpll: netlink: Add DPLL framework base functions
    https://git.kernel.org/netdev/net-next/c/9d71b54b65b1
  - [net-next,v8,5/9] netdev: expose DPLL pin handle for netdevice
    https://git.kernel.org/netdev/net-next/c/5f1842692880
  - [net-next,v8,6/9] ice: add admin commands to access cgu configuration
    https://git.kernel.org/netdev/net-next/c/8a3a565ff210
  - [net-next,v8,7/9] ice: implement dpll interface to control cgu
    https://git.kernel.org/netdev/net-next/c/d7999f5ea64b
  - [net-next,v8,8/9] ptp_ocp: implement DPLL ops
    https://git.kernel.org/netdev/net-next/c/09eeb3aecc6c
  - [net-next,v8,9/9] mlx5: Implement SyncE support using DPLL infrastructure
    https://git.kernel.org/netdev/net-next/c/496fd0a26bbf

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
