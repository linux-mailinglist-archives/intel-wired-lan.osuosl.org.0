Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A1FAC1D90
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 May 2025 09:21:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 80AFF839D8;
	Fri, 23 May 2025 07:21:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UWDWGHzDW-LL; Fri, 23 May 2025 07:21:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE18F832B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747984904;
	bh=+dHDKX5k2r9BLQbrrTzX7okABsSVcJTuULmay78ohT4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=B/Wde67s1cU+sEbbS0QMv5mAS3BzSuLOikqVx8+bStP3QZme3Cao4Bc9MSNuvao3x
	 3jdxeeFlOO++Y+8IZvK8vV2y4Ezyg1ikejuN2CqO+s311x2T4WeTWsiZZKb4j2KTJZ
	 Z2dECkyEQ0pPnp2bJhyYBWqc18lRTIWJUiS5AwdzeJgxWKDAVH0w91iosz3wa2W9ql
	 cg/ZjgroAgZREnjwBfDzJBh7vdXn1u2N0z/tlA9x5ZmayayGVY6FKK/XJ/EDNQtZ6H
	 x7aFJsFtLBtF7PJFUOW7PA9dzGKv395aFrjQqykq6J2OoBdNev0DZqg2N9/ic+iypO
	 j55n9/ZWbUdUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DE18F832B0;
	Fri, 23 May 2025 07:21:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3F9B7119
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 07:21:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 31B5640217
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 07:21:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N2H6g_-SaBo9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 May 2025 07:21:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 966F1402A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 966F1402A4
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 966F1402A4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 07:21:42 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 45C6843BB4;
 Fri, 23 May 2025 07:21:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33E91C4CEE9;
 Fri, 23 May 2025 07:21:41 +0000 (UTC)
Date: Fri, 23 May 2025 08:21:39 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20250523072139.GQ365796@horms.kernel.org>
References: <20250522085206.1119209-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250522085206.1119209-1-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747984902;
 bh=HBcf+xUpn43sU+CtOz5tvzr69fg4W5j3vUJjnXR34/8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jJ6P0sgMpDmOtmSxwomcrKYQPUYp+SkYqm4dhnV28L3fvqqIyX+ma0rGLMBmmBwHU
 v1+VzZ32w9AnbILKzCjyBQn5dP5dw+zJPad6XE+/8hICXN+0B6aEHf7Vs9Hl4uFavi
 W92VfqyZeA2s4kxMf3z25n6cP6XLVB3OzJr6K/NeBYNWdx3Fv4VP1i3EB1q9gKICzj
 I9c1r5X42a5TBkZHTdGsZAekI7Gr9eXjX5x8kp2LEBLaEk/tzwK5CBfc0EIzCzvNdB
 CRyskRJ9hMRBvIkx7VwwRiLhEooFND0+7AJyrqGrBU3mHyiZi7hL9mWjDDK8bhdO6W
 r+7VoKuEtPFZw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=jJ6P0sgM
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] idpf: return 0 size for
 RSS key if not supported
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

On Thu, May 22, 2025 at 10:52:06AM +0200, Michal Swiatkowski wrote:
> Returning -EOPNOTSUPP from function returning u32 is leading to
> cast and invalid size value as a result.
> 
> -EOPNOTSUPP as a size probably will lead to allocation fail.
> 
> Command: ethtool -x eth0
> It is visible on all devices that don't have RSS caps set.
> 
> [  136.615917] Call Trace:
> [  136.615921]  <TASK>
> [  136.615927]  ? __warn+0x89/0x130
> [  136.615942]  ? __alloc_frozen_pages_noprof+0x322/0x330
> [  136.615953]  ? report_bug+0x164/0x190
> [  136.615968]  ? handle_bug+0x58/0x90
> [  136.615979]  ? exc_invalid_op+0x17/0x70
> [  136.615987]  ? asm_exc_invalid_op+0x1a/0x20
> [  136.616001]  ? rss_prepare_get.constprop.0+0xb9/0x170
> [  136.616016]  ? __alloc_frozen_pages_noprof+0x322/0x330
> [  136.616028]  __alloc_pages_noprof+0xe/0x20
> [  136.616038]  ___kmalloc_large_node+0x80/0x110
> [  136.616072]  __kmalloc_large_node_noprof+0x1d/0xa0
> [  136.616081]  __kmalloc_noprof+0x32c/0x4c0
> [  136.616098]  ? rss_prepare_get.constprop.0+0xb9/0x170
> [  136.616105]  rss_prepare_get.constprop.0+0xb9/0x170
> [  136.616114]  ethnl_default_doit+0x107/0x3d0
> [  136.616131]  genl_family_rcv_msg_doit+0x100/0x160
> [  136.616147]  genl_rcv_msg+0x1b8/0x2c0
> [  136.616156]  ? __pfx_ethnl_default_doit+0x10/0x10
> [  136.616168]  ? __pfx_genl_rcv_msg+0x10/0x10
> [  136.616176]  netlink_rcv_skb+0x58/0x110
> [  136.616186]  genl_rcv+0x28/0x40
> [  136.616195]  netlink_unicast+0x19b/0x290
> [  136.616206]  netlink_sendmsg+0x222/0x490
> [  136.616215]  __sys_sendto+0x1fd/0x210
> [  136.616233]  __x64_sys_sendto+0x24/0x30
> [  136.616242]  do_syscall_64+0x82/0x160
> [  136.616252]  ? __sys_recvmsg+0x83/0xe0
> [  136.616265]  ? syscall_exit_to_user_mode+0x10/0x210
> [  136.616275]  ? do_syscall_64+0x8e/0x160
> [  136.616282]  ? __count_memcg_events+0xa1/0x130
> [  136.616295]  ? count_memcg_events.constprop.0+0x1a/0x30
> [  136.616306]  ? handle_mm_fault+0xae/0x2d0
> [  136.616319]  ? do_user_addr_fault+0x379/0x670
> [  136.616328]  ? clear_bhb_loop+0x45/0xa0
> [  136.616340]  ? clear_bhb_loop+0x45/0xa0
> [  136.616349]  ? clear_bhb_loop+0x45/0xa0
> [  136.616359]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> [  136.616369] RIP: 0033:0x7fd30ba7b047
> [  136.616376] Code: 0c 00 f7 d8 64 89 02 48 c7 c0 ff ff ff ff eb b8 0f 1f 00 f3 0f 1e fa 80 3d bd d5 0c 00 00 41 89 ca 74 10 b8 2c 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 71 c3 55 48 83 ec 30 44 89 4c 24 2c 4c 89 44
> [  136.616381] RSP: 002b:00007ffde1796d68 EFLAGS: 00000202 ORIG_RAX: 000000000000002c
> [  136.616388] RAX: ffffffffffffffda RBX: 000055d7bd89f2a0 RCX: 00007fd30ba7b047
> [  136.616392] RDX: 0000000000000028 RSI: 000055d7bd89f3b0 RDI: 0000000000000003
> [  136.616396] RBP: 00007ffde1796e10 R08: 00007fd30bb4e200 R09: 000000000000000c
> [  136.616399] R10: 0000000000000000 R11: 0000000000000202 R12: 000055d7bd89f340
> [  136.616403] R13: 000055d7bd89f3b0 R14: 000055d78943f200 R15: 0000000000000000
> 
> Fixes: 02cbfba1add5 ("idpf: add ethtool callbacks")
> Reviewed-by: Ahmed Zaki <ahmed.zaki@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

