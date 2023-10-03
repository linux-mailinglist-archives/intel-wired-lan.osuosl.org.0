Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8247B7312
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Oct 2023 23:10:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F3D7F611BC;
	Tue,  3 Oct 2023 21:10:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F3D7F611BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696367435;
	bh=HTda6OXo6L0J/x/zuL/+95b+L9nLLpn307be/i+Px2M=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Gf5RongOmXcuQQQXsDM3yi7+Vk6mlJhQlkKvU1kTdwnkKHVAIHehTkDgnaEQqUBhe
	 ixM7GPdmRvIjhv3R2LraqZZBNrLfYbisNYmgbCTLAA4uGbsdrkpIrSL6TqzG9czUKX
	 ykQd7QBa3YNC44aMGWLH9fsmdTgJuZ0lQjWuJUTOz568kM+Vr6Sk5opLymR+A0LFUg
	 vgkpvyYduWFGBMK7pHNVe+mcRW0hQcT4XzcCC/7sIRH7/0IXsftLh0UTv/VL3C4Kq5
	 Y62P675UnVW1NnQovhM8gsC2sCuTcKT8JsOK20cLwzeOoNhRl32ZtMBwclirYNeagX
	 KtZ+T+NPtUrPA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GUoNqVXqGywL; Tue,  3 Oct 2023 21:10:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE3AD611AA;
	Tue,  3 Oct 2023 21:10:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE3AD611AA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6E5CE1BF4E7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 21:10:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 534A3611AA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 21:10:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 534A3611AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id htVW2N3lRPpR for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Oct 2023 21:10:27 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 803FA6119A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 21:10:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 803FA6119A
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id A15E56139D;
 Tue,  3 Oct 2023 21:10:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 46A15C433C8;
 Tue,  3 Oct 2023 21:10:26 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 276F6C595D2; Tue,  3 Oct 2023 21:10:26 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <169636742615.22161.7688987075875689506.git-patchwork-notify@kernel.org>
Date: Tue, 03 Oct 2023 21:10:26 +0000
References: <20230912115937.1645707-1-przemyslaw.kitszel@intel.com>
In-Reply-To: <20230912115937.1645707-1-przemyslaw.kitszel@intel.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1696367426;
 bh=a2OQUcE+ISQtj09ENLHvNyZpLnb2mGbhv6CIImC0Y1o=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=EWUGiwUg1CL/Zl4/IfF+fn0PrMvK6Q/i6OxqLQd937mJN7vNibUdpXWmmkrDaWkyP
 EVM0Ke/cKhjfTzrCLBJTFKzhJ7cGnjl/w5M1ADgK71MxjUQDoMaH0WqxtEdhCpJYl6
 jxRCLyK7+r8EE2NL0sAANqCtlXCr6Tfaq7YQY9lIJe3SIuzSpDv6I1cSoSTxWukRnD
 Dbuc9hhgVrutDG0VC7rlLT+PfGmXvw3yQK9vWeZSqEwZd/8ahPFf+amatJh42G46jZ
 h/grImG00zjg3Nn0pXJkJh6djfHV3JKt9MLgES8W4gOfXpoyg0c5tnWCgSPVVRFO2p
 9cNjhSUQwPh9A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=EWUGiwUg
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 0/7] introduce
 DEFINE_FLEX() macro
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
Cc: keescook@chromium.org, anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 steven.zou@intel.com, aleksander.lobakin@intel.com, edumazet@google.com,
 David.Laight@ACULAB.COM, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, jacob.e.keller@intel.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Tue, 12 Sep 2023 07:59:30 -0400 you wrote:
> Add DEFINE_FLEX() macro, that helps on-stack allocation of structures
> with trailing flex array member.
> Expose __struct_size() macro which reads size of data allocated
> by DEFINE_FLEX().
> 
> Accompany new macros introduction with actual usage,
> in the ice driver - hence targeting for netdev tree.
> 
> [...]

Here is the summary with links:
  - [net-next,v5,1/7] overflow: add DEFINE_FLEX() for on-stack allocs
    https://git.kernel.org/netdev/net-next/c/26dd68d293fd
  - [net-next,v5,2/7] ice: ice_sched_remove_elems: replace 1 elem array param by u32
    https://git.kernel.org/netdev/net-next/c/ece285af77d0
  - [net-next,v5,3/7] ice: drop two params of ice_aq_move_sched_elems()
    https://git.kernel.org/netdev/net-next/c/a034fcdbeaf7
  - [net-next,v5,4/7] ice: make use of DEFINE_FLEX() in ice_ddp.c
    https://git.kernel.org/netdev/net-next/c/230064baa43d
  - [net-next,v5,5/7] ice: make use of DEFINE_FLEX() for struct ice_aqc_add_tx_qgrp
    https://git.kernel.org/netdev/net-next/c/43bba3b1664d
  - [net-next,v5,6/7] ice: make use of DEFINE_FLEX() for struct ice_aqc_dis_txq_item
    https://git.kernel.org/netdev/net-next/c/11dee3d611dd
  - [net-next,v5,7/7] ice: make use of DEFINE_FLEX() in ice_switch.c
    https://git.kernel.org/netdev/net-next/c/e268b9722705

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
