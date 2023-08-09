Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A49E7776CAA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Aug 2023 01:10:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4ECD560B50;
	Wed,  9 Aug 2023 23:10:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4ECD560B50
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691622636;
	bh=w5fp70CcAtZC2JrT5T0ph4bHAeeSVAMMhbcusXe2HrA=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=74vESKst2/5oxQFiuxTU9f7lhyVVdLl+OQPmpiP3xwyyRxYMuE75vkUKuoIjGDr5n
	 o6X1tLxwufygoRBmsr6i8Psn62/FQh39LaDFAeRaZhcXnBZJcnD4fPQv2t6Zp2QF3d
	 1mOmYA/PK2GOz2aVbgdSWLMYbCGPG/52HY5sOldXiwehveE3kU27cmkEjJCi3/3B31
	 sGLKbsPxYGy7sWQKZ2PHvd4kLiTRyd/e5ZHWrUwSApw+Opk9JMtUi1Y6kA5WkfhMus
	 S4KWdTF5Y6NgG3JVilcfsfB7L+2tZhKK2cavfLY9vkj0lDEiqfWEkgWQKflgIaPsZ8
	 lL/7+iE3BItbg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F1EAemBlHm8b; Wed,  9 Aug 2023 23:10:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2570D60AE6;
	Wed,  9 Aug 2023 23:10:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2570D60AE6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C59491BF2A7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 23:10:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A85764087E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 23:10:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A85764087E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g9GItteDSNVb for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Aug 2023 23:10:29 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7448240878
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 23:10:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7448240878
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3CA2D63D00;
 Wed,  9 Aug 2023 23:10:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A382AC433C8;
 Wed,  9 Aug 2023 23:10:27 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 87E4BE3308F; Wed,  9 Aug 2023 23:10:27 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <169162262755.8257.7127331416998395436.git-patchwork-notify@kernel.org>
Date: Wed, 09 Aug 2023 23:10:27 +0000
References: <20230807193324.4128292-1-vladimir.oltean@nxp.com>
In-Reply-To: <20230807193324.4128292-1-vladimir.oltean@nxp.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1691622627;
 bh=GBjuHFL646u1lkFK2JAMT4bXgcXxV4RlWdIPaFhWsoY=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=UBNPRxzIdXsxTCndxX/ZUJuzq+IuL1fEZFx0Oba0f77z1jZzjnbQNUBNnhgS5q1/T
 NFlIE2qDMh3NBa6bEfi+5FPDsdPIjLbJVzJRQ5C2F8rb/a4lYs9B/Lmidy/B1V5wHB
 3PXiMk404NZrRDx/48hiAi5tGZ+B78QWxLaOUnQheX9g4TjURdawJWzUNM4SCjkCGy
 W6ydK/MAFGQPe7iFmJn2xaEbvIZ2/HauMj/wyMjfeAs3EVFSp1KcyjBzpGHVEkt1vC
 JvRjc83drygXihs70F1RfI9lO+ZvFhrjERjfUTJjMBcT9XFf4zv6kGzNVbXrdwg+S0
 adg14QcfswWig==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=UBNPRxzI
Subject: Re: [Intel-wired-lan] [PATCH v4 net-next 00/11] Improve the taprio
 qdisc's relationship with its children
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
Cc: jiri@resnulli.us, pctammela@mojatatu.com, netdev@vger.kernel.org,
 richardcochran@gmail.com, jhs@mojatatu.com, linux-kernel@vger.kernel.org,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, glipus@gmail.com,
 xiyou.wangcong@gmail.com, yepeilin.cs@gmail.com, kuba@kernel.org,
 shaozhengchao@huawei.com, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Mon,  7 Aug 2023 22:33:13 +0300 you wrote:
> Changes in v4:
> - Clean up some leftovers in the ptp_mock driver.
> - Add CONFIG_PTP_1588_CLOCK_MOCK to tools/testing/selftests/tc-testing/config
> - Wait for taprio schedule to become operational in the selftests
> 
> Changes in v3:
> Fix ptp_mock compilation as module, fix small mistakes in selftests.
> 
> [...]

Here is the summary with links:
  - [v4,net-next,01/11] net/sched: taprio: don't access q->qdiscs[] in unoffloaded mode during attach()
    https://git.kernel.org/netdev/net-next/c/09e0c3bbde90
  - [v4,net-next,02/11] net/sched: taprio: keep child Qdisc refcount elevated at 2 in offload mode
    https://git.kernel.org/netdev/net-next/c/25b0d4e4e41f
  - [v4,net-next,03/11] net/sched: taprio: try again to report q->qdiscs[] to qdisc_leaf()
    https://git.kernel.org/netdev/net-next/c/98766add2d55
  - [v4,net-next,04/11] net/sched: taprio: delete misleading comment about preallocating child qdiscs
    https://git.kernel.org/netdev/net-next/c/6e0ec800c174
  - [v4,net-next,05/11] net/sched: taprio: dump class stats for the actual q->qdiscs[]
    https://git.kernel.org/netdev/net-next/c/665338b2a7a0
  - [v4,net-next,06/11] net: ptp: create a mock-up PTP Hardware Clock driver
    https://git.kernel.org/netdev/net-next/c/40b0425f8ba1
  - [v4,net-next,07/11] net: netdevsim: use mock PHC driver
    https://git.kernel.org/netdev/net-next/c/b63e78fca889
  - [v4,net-next,08/11] net: netdevsim: mimic tc-taprio offload
    https://git.kernel.org/netdev/net-next/c/35da47fe1c47
  - [v4,net-next,09/11] selftests/tc-testing: add ptp_mock Kconfig dependency
    https://git.kernel.org/netdev/net-next/c/355adce3010b
  - [v4,net-next,10/11] selftests/tc-testing: test that taprio can only be attached as root
    https://git.kernel.org/netdev/net-next/c/1890cf08bd99
  - [v4,net-next,11/11] selftests/tc-testing: verify that a qdisc can be grafted onto a taprio class
    https://git.kernel.org/netdev/net-next/c/29c298d2bc82

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
