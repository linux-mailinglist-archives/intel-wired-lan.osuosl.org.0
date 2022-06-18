Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB1D550263
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Jun 2022 05:20:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32E6A60EB2;
	Sat, 18 Jun 2022 03:20:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 32E6A60EB2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1655522424;
	bh=4bthW+DVpb1sfXApVwTwtsYt2QQemruDpXVOxFN7h3A=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tHHdGw3V41GmiOQpYSPS+Ci8CdRcdHVRnYX1DxMKw1Dlnj5djv1u0+PElmTNZbDsQ
	 nLo5lSjlcwweI31FGQ5E8eH11T1IvnejLP1FWtX/V0G4c6puor9snS0n9pQh7MiNFp
	 9NWbhR+RddWKjfBlsFxzix04firfuM8N06R2eAcxTp61KbmleK1KgLXFAGNS3ARghT
	 jyvgDC62+7o8SoCKhfTZGCNdDhdgYRLGJWp1zvo3U3r2ZNNpu++JL8QBowRZ3K1W7L
	 8NF5isTOO53KMlhxidbpy/XILbn+XhEkzBH1xqlEECkAlZj49D0AM0suBhNAO0HokK
	 mzC5C89fAlZIw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kct3_v2appTW; Sat, 18 Jun 2022 03:20:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20FD560EA5;
	Sat, 18 Jun 2022 03:20:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 20FD560EA5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B5CCA1BF9CB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Jun 2022 03:20:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 85C4960EA5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Jun 2022 03:20:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 85C4960EA5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R8P3B-K_-6Qk for <intel-wired-lan@lists.osuosl.org>;
 Sat, 18 Jun 2022 03:20:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 41C0360E5B
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 41C0360E5B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Jun 2022 03:20:17 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 6B713B82D19;
 Sat, 18 Jun 2022 03:20:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 29B9EC3411E;
 Sat, 18 Jun 2022 03:20:14 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 0D992E73856; Sat, 18 Jun 2022 03:20:14 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <165552241405.3144.272408240886449319.git-patchwork-notify@kernel.org>
Date: Sat, 18 Jun 2022 03:20:14 +0000
References: <e5c01d549dc37bff18e46aeabd6fb28a7bcf84be.1655388571.git.lorenzo@kernel.org>
In-Reply-To: <e5c01d549dc37bff18e46aeabd6fb28a7bcf84be.1655388571.git.lorenzo@kernel.org>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Subject: Re: [Intel-wired-lan] [PATCH net] igb: fix a use-after-free issue
 in igb_clean_tx_ring
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
Cc: netdev@vger.kernel.org, jbrouer@redhat.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net.git (master)
by Jakub Kicinski <kuba@kernel.org>:

On Thu, 16 Jun 2022 16:13:20 +0200 you wrote:
> Fix the following use-after-free bug in igb_clean_tx_ring routine when
> the NIC is running in XDP mode. The issue can be triggered redirecting
> traffic into the igb NIC and then closing the device while the traffic
> is flowing.
> 
> [   73.322719] CPU: 1 PID: 487 Comm: xdp_redirect Not tainted 5.18.3-apu2 #9
> [   73.330639] Hardware name: PC Engines APU2/APU2, BIOS 4.0.7 02/28/2017
> [   73.337434] RIP: 0010:refcount_warn_saturate+0xa7/0xf0
> [   73.362283] RSP: 0018:ffffc9000081f798 EFLAGS: 00010282
> [   73.367761] RAX: 0000000000000000 RBX: ffffc90000420f80 RCX: 0000000000000000
> [   73.375200] RDX: ffff88811ad22d00 RSI: ffff88811ad171e0 RDI: ffff88811ad171e0
> [   73.382590] RBP: 0000000000000900 R08: ffffffff82298f28 R09: 0000000000000058
> [   73.390008] R10: 0000000000000219 R11: ffffffff82280f40 R12: 0000000000000090
> [   73.397356] R13: ffff888102343a40 R14: ffff88810359e0e4 R15: 0000000000000000
> [   73.404806] FS:  00007ff38d31d740(0000) GS:ffff88811ad00000(0000) knlGS:0000000000000000
> [   73.413129] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [   73.419096] CR2: 000055cff35f13f8 CR3: 0000000106391000 CR4: 00000000000406e0
> [   73.426565] Call Trace:
> [   73.429087]  <TASK>
> [   73.431314]  igb_clean_tx_ring+0x43/0x140 [igb]
> [   73.436002]  igb_down+0x1d7/0x220 [igb]
> [   73.439974]  __igb_close+0x3c/0x120 [igb]
> [   73.444118]  igb_xdp+0x10c/0x150 [igb]
> [   73.447983]  ? igb_pci_sriov_configure+0x70/0x70 [igb]
> [   73.453362]  dev_xdp_install+0xda/0x110
> [   73.457371]  dev_xdp_attach+0x1da/0x550
> [   73.461369]  do_setlink+0xfd0/0x10f0
> [   73.465166]  ? __nla_validate_parse+0x89/0xc70
> [   73.469714]  rtnl_setlink+0x11a/0x1e0
> [   73.473547]  rtnetlink_rcv_msg+0x145/0x3d0
> [   73.477709]  ? rtnl_calcit.isra.0+0x130/0x130
> [   73.482258]  netlink_rcv_skb+0x8d/0x110
> [   73.486229]  netlink_unicast+0x230/0x340
> [   73.490317]  netlink_sendmsg+0x215/0x470
> [   73.494395]  __sys_sendto+0x179/0x190
> [   73.498268]  ? move_addr_to_user+0x37/0x70
> [   73.502547]  ? __sys_getsockname+0x84/0xe0
> [   73.506853]  ? netlink_setsockopt+0x1c1/0x4a0
> [   73.511349]  ? __sys_setsockopt+0xc8/0x1d0
> [   73.515636]  __x64_sys_sendto+0x20/0x30
> [   73.519603]  do_syscall_64+0x3b/0x80
> [   73.523399]  entry_SYSCALL_64_after_hwframe+0x44/0xae
> [   73.528712] RIP: 0033:0x7ff38d41f20c
> [   73.551866] RSP: 002b:00007fff3b945a68 EFLAGS: 00000246 ORIG_RAX: 000000000000002c
> [   73.559640] RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007ff38d41f20c
> [   73.567066] RDX: 0000000000000034 RSI: 00007fff3b945b30 RDI: 0000000000000003
> [   73.574457] RBP: 0000000000000003 R08: 0000000000000000 R09: 0000000000000000
> [   73.581852] R10: 0000000000000000 R11: 0000000000000246 R12: 00007fff3b945ab0
> [   73.589179] R13: 0000000000000000 R14: 0000000000000003 R15: 00007fff3b945b30
> [   73.596545]  </TASK>
> [   73.598842] ---[ end trace 0000000000000000 ]---
> 
> [...]

Here is the summary with links:
  - [net] igb: fix a use-after-free issue in igb_clean_tx_ring
    https://git.kernel.org/netdev/net/c/3f6a57ee8544

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
