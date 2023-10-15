Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B87D7C99B0
	for <lists+intel-wired-lan@lfdr.de>; Sun, 15 Oct 2023 17:10:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F253F40E46;
	Sun, 15 Oct 2023 15:10:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F253F40E46
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697382636;
	bh=M7fp3S5iT9QCNLSNFX6tj8+sWjBz/aKxYScGr/PqSW8=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xYXd1Nsl0GALfYAM4JQHPZXW4Fl/5fdnNO6brgENloVKSwQeOLOMcJYc9p8dR/rhk
	 f6Aro/qVMxYWdBNrR8acIVVs//4pvPZf19UUb9bcWSf9lBrJveeW0om6T6VGtONut8
	 EpvpcTqkJ3XIENs92iPit69+EbtMOW3b4IrGWEzwVjYMfGwM7qjo3dMnBqjBWHarrr
	 GdQtNQGjoL3RVEh2RgsaBCPfpt1AumG7QIHk1/cvTWT/LGmlgKM1I3Oivdu2xDI4pr
	 oOOEN7JpJ7IuEv0hA0cV9mSa5R8RWD1g431y6VHWme6TvmIcgLH8GMpboKm2uL/EIA
	 mr2msjG2OQ1Fg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 89CySWg77ipc; Sun, 15 Oct 2023 15:10:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 227564092A;
	Sun, 15 Oct 2023 15:10:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 227564092A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5DE9E1BF2BD
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Oct 2023 15:10:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 34D4160640
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Oct 2023 15:10:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 34D4160640
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yOA5I_xOV45B for <intel-wired-lan@lists.osuosl.org>;
 Sun, 15 Oct 2023 15:10:28 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 48290605E3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Oct 2023 15:10:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 48290605E3
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 85F1FCE0F22;
 Sun, 15 Oct 2023 15:10:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F91C433C8;
 Sun, 15 Oct 2023 15:10:22 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 9BB3EC595D0; Sun, 15 Oct 2023 15:10:22 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <169738262262.5861.8707654384088164012.git-patchwork-notify@kernel.org>
Date: Sun, 15 Oct 2023 15:10:22 +0000
References: <20231011101236.23160-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20231011101236.23160-1-arkadiusz.kubalewski@intel.com>
To: Kubalewski@ci.codeaurora.org,
	Arkadiusz <arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1697382622;
 bh=xBmMMUeTqGOtCCswkqoAJy4I1gBJ/lCa3dC+0Fr59Ok=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=DezLhnJv3oCrxZUHf9nDGv5AnznxqLJTwIERuZQ3RYmbdN0bdzHny5t29MS/CSblO
 ORqVPF9whdlUKBSVPDeazmStfTKPUomDkwuj/Z3VDxHn5OvbschVYhrnb/+p2mYqGK
 Td/DkkgFZZ2hTi6mrq091ooPMHp9ihothgR/Wd7SNfaXWYXEEWrOdUGRyyPeGIf2h1
 L5Kb0IUJnewEHdcIdCjKlaQ/8FDwLfh/0xuCmOVcfrQylEyRodxJ5O2PN64vSJJZy8
 Qub27xyAj4uJIWtDA+hKJ+IE7vJfNQTOwr3im+nlWfXZSTBh8Gx9TWixKOShJTzCOZ
 nma3TJ8xUGwYA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=DezLhnJv
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 0/5] dpll: add
 phase-offset and phase-adjust
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
Cc: jiri@resnulli.us, corbet@lwn.net, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, kuba@kernel.org, vadim.fedorenko@linux.dev,
 pabeni@redhat.com, davem@davemloft.net, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (main)
by David S. Miller <davem@davemloft.net>:

On Wed, 11 Oct 2023 12:12:31 +0200 you wrote:
> Improve monitoring and control over dpll devices.
> Allow user to receive measurement of phase difference between signals
> on pin and dpll (phase-offset).
> Allow user to receive and control adjustable value of pin's signal
> phase (phase-adjust).
> 
> v4->v5:
> - rebase series on top of net-next/main, fix conflict - remove redundant
>   attribute type definition in subset definition
> 
> [...]

Here is the summary with links:
  - [net-next,v5,1/5] dpll: docs: add support for pin signal phase offset/adjust
    https://git.kernel.org/netdev/net-next/c/27ed30d1f861
  - [net-next,v5,2/5] dpll: spec: add support for pin-dpll signal phase offset/adjust
    https://git.kernel.org/netdev/net-next/c/c3c6ab95c397
  - [net-next,v5,3/5] dpll: netlink/core: add support for pin-dpll signal phase offset/adjust
    https://git.kernel.org/netdev/net-next/c/d7fbc0b7e846
  - [net-next,v5,4/5] ice: dpll: implement phase related callbacks
    https://git.kernel.org/netdev/net-next/c/90e1c90750d7
  - [net-next,v5,5/5] dpll: netlink/core: change pin frequency set behavior
    https://git.kernel.org/netdev/net-next/c/20f6677234d8

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
