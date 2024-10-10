Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D7433998CE3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Oct 2024 18:10:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1995A81BCF;
	Thu, 10 Oct 2024 16:10:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o9dlT5ihAUrM; Thu, 10 Oct 2024 16:10:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E91BE81BD4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728576645;
	bh=NSzCZoqHvlrwRMbQ2mAG5ERUjRe5z8yUx9fJeDJu6sA=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EDWh0/zSk1w56RyS5DkJpACU7VjVofkcGcST/bbLttiI7xFoBFJNosIJXJVql1oRv
	 fxKeEB2DmFZSBC0mxEyu1vHMzeZnVMomB0jnXRJ544uTgTmTUTYcRQmZSNIQ/X7qyD
	 JLecu7oj3s1f8iLXCl23Ord1UDd3PFFjOCc4s59Sold5I4KZS6d302D+5ZxZoPmuja
	 GFWpYH9ztjVhrdh0infPkVAeidpmQCDVLjHQ5XH2+AuC21cfY0uUanPCc7O1jZCBTz
	 HTUtzSC/rpSZ8GNhV8LRja7aLhxJLVIMIhnRWQFvZWF17yzpkDauaRZKuMuqCLzhEK
	 cOd3frhHVcAFA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E91BE81BD4;
	Thu, 10 Oct 2024 16:10:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3B3C81BF4D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2024 16:10:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 361AC608E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2024 16:10:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BnIheOfYsVwe for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Oct 2024 16:10:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2342B607DE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2342B607DE
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2342B607DE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2024 16:10:41 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 912AE5C5E99;
 Thu, 10 Oct 2024 16:10:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9059CC4CEC5;
 Thu, 10 Oct 2024 16:10:40 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 33AC33803263; Thu, 10 Oct 2024 16:10:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <172857664473.2081951.14668843585548257303.git-patchwork-notify@kernel.org>
Date: Thu, 10 Oct 2024 16:10:44 +0000
References: <cover.1728460186.git.pabeni@redhat.com>
In-Reply-To: <cover.1728460186.git.pabeni@redhat.com>
To: Paolo Abeni <pabeni@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1728576640;
 bh=3j3BdPgK6Vd/vnSvVA35LlyZ2UhPlFthr12ffk6o9is=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=ubyGNQq1I2v0BQXSGgk6D6COJZZjh6wo2zDWaPuyMJUpIWyv7MvagP/L0mxAxRqCs
 QP95BH0983imVR6JyToy2/rNIEFvO1laaPHuer8fwE72lZqXVZBVbp8eX8C6rGvzfy
 fAAA9Z+IzT1hLhtVw2uNI6z0YxFgS1KItyIXG+wd/CrWV6QBsvGLlgi50WiISBjHRQ
 YoMstZhvG1FP331rMbrnQqmO2VvkzM9N3JN2jVxhzQEn5Y1qpwXP1QefMicr1Jmhtf
 WE5Qr2poGfRtqk+njRaoEE1iSr6Kc6MLXWw6jE4tdpulR9iXne3Zg0dLSglF/+Ncaf
 0NPgk85JIz/0w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ubyGNQq1
Subject: Re: [Intel-wired-lan] [PATCH v9 net-next 00/15] net: introduce TX
 H/W shaping API
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
Cc: jiri@resnulli.us, sridhar.samudrala@intel.com, donald.hunter@gmail.com,
 john.fastabend@gmail.com, jhs@mojatatu.com, edumazet@google.com,
 madhu.chittim@intel.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 netdev@vger.kernel.org, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, sgoutham@marvell.com, stfomichev@gmail.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Wed,  9 Oct 2024 10:09:46 +0200 you wrote:
> We have a plurality of shaping-related drivers API, but none flexible
> enough to meet existing demand from vendors[1].
> 
> This series introduces new device APIs to configure in a flexible way
> TX H/W shaping. The new functionalities are exposed via a newly
> defined generic netlink interface and include introspection
> capabilities. Some self-tests are included, on top of a dummy
> netdevsim implementation. Finally a basic implementation for the iavf
> driver is provided.
> 
> [...]

Here is the summary with links:
  - [v9,net-next,01/15] genetlink: extend info user-storage to match NL cb ctx
    https://git.kernel.org/netdev/net-next/c/13d68a164303
  - [v9,net-next,02/15] netlink: spec: add shaper YAML spec
    https://git.kernel.org/netdev/net-next/c/04e65df94b31
  - [v9,net-next,03/15] net-shapers: implement NL get operation
    https://git.kernel.org/netdev/net-next/c/4b623f9f0f59
  - [v9,net-next,04/15] net-shapers: implement NL set and delete operations
    https://git.kernel.org/netdev/net-next/c/93954b40f6a4
  - [v9,net-next,05/15] net-shapers: implement NL group operation
    https://git.kernel.org/netdev/net-next/c/5d5d4700e75d
  - [v9,net-next,06/15] net-shapers: implement delete support for NODE scope shaper
    https://git.kernel.org/netdev/net-next/c/bf230c497d31
  - [v9,net-next,07/15] net-shapers: implement shaper cleanup on queue deletion
    https://git.kernel.org/netdev/net-next/c/ff7d4deb1f3e
  - [v9,net-next,08/15] netlink: spec: add shaper introspection support
    https://git.kernel.org/netdev/net-next/c/14bba9285aed
  - [v9,net-next,09/15] net: shaper: implement introspection support
    https://git.kernel.org/netdev/net-next/c/553ea9f1efd6
  - [v9,net-next,10/15] net-shapers: implement cap validation in the core
    https://git.kernel.org/netdev/net-next/c/ecd82cfee355
  - [v9,net-next,11/15] testing: net-drv: add basic shaper test
    https://git.kernel.org/netdev/net-next/c/b3ea416419c8
  - [v9,net-next,12/15] virtchnl: support queue rate limit and quanta size configuration
    https://git.kernel.org/netdev/net-next/c/608a5c05c39b
  - [v9,net-next,13/15] ice: Support VF queue rate limit and quanta size configuration
    https://git.kernel.org/netdev/net-next/c/015307754a19
  - [v9,net-next,14/15] iavf: Add net_shaper_ops support
    https://git.kernel.org/netdev/net-next/c/ef490bbb2267
  - [v9,net-next,15/15] iavf: add support to exchange qos capabilities
    https://git.kernel.org/netdev/net-next/c/4c1a457cb8b0

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


