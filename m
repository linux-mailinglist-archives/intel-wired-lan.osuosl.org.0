Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 871B3355BAB
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Apr 2021 20:48:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 26AA184AD4;
	Tue,  6 Apr 2021 18:48:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k1_bLW3A26ch; Tue,  6 Apr 2021 18:48:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 141C284AE2;
	Tue,  6 Apr 2021 18:48:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6C5781C1127
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Apr 2021 18:48:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4E6894017C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Apr 2021 18:48:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xLK_WlgtCOjN for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Apr 2021 18:48:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6F41540121
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Apr 2021 18:48:04 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9456A61168;
 Tue,  6 Apr 2021 18:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617734883;
 bh=qLWeHLnTY3ZEk14P+6cEmbojbbUBjCyOF0hWAT+phu4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=P1TYoXRjS02Quo2dt97RJiqSiCC/C+rJ5OEk7dIEQAe511zeq9jvd0+LPHLTExF+C
 KPwotqrOSmRySisGpYzRrTOcT6CYGYRihvSAxl3i1Ust2CM17UYu6A7+QhZyxJ7f/u
 1Avqhungjq53xTWHnKttaOp5k6eGwYNoBptdCCDoy3UFeukoP54+Ecr/EcSgk1N2uf
 8iVIMxELKlg/3j2EjF4dXAQVDA1OjnBH+bYaGECJzEWBpcBq0g5ePvlryUwoe37MwV
 ReE7j9Lu9Xn+D1TA0oxATNfz3Beys0uidBng2OB61OWc9Y5VCOp/OCG6+74TKinG9S
 fEWf2OqTy4uwA==
Date: Tue, 6 Apr 2021 11:48:02 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Oleksandr Natalenko <oleksandr@natalenko.name>
Message-ID: <20210406114734.0e00cb2f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210406123619.rhvtr73xwwlbu2ll@spock.localdomain>
References: <20210406123619.rhvtr73xwwlbu2ll@spock.localdomain>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [igb] netconsole triggers warning in
 netpoll_poll_dev
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 6 Apr 2021 14:36:19 +0200 Oleksandr Natalenko wrote:
> Hello.
> 
> I've raised this here [1] first, but was suggested to engage igb devs,
> so here we are.
> 
> I'm experiencing the following woes while using netconsole regularly:
> 
> ```
> [22038.710800] ------------[ cut here ]------------
> [22038.710801] igb_poll+0x0/0x1440 [igb] exceeded budget in poll
> [22038.710802] WARNING: CPU: 12 PID: 40362 at net/core/netpoll.c:155 netpoll_poll_dev+0x18a/0x1a0
> [22038.710802] Modules linked in: ...
> [22038.710835] CPU: 12 PID: 40362 Comm: systemd-sleep Not tainted 5.11.0-pf7 #1
> [22038.710836] Hardware name: ASUS System Product Name/Pro WS X570-ACE, BIOS 3302 03/05/2021
> [22038.710836] RIP: 0010:netpoll_poll_dev+0x18a/0x1a0
> [22038.710837] Code: 6e ff 80 3d d2 9d f8 00 00 0f 85 5c ff ff ff 48 8b 73 28 48 c7 c7 0c b8 21 84 89 44 24 04 c6 05 b6 9d f8 00 01 e8 84 21 1c 00 <0f> 0b 8b 54 24 04 e9 36 ff ff ff 66 66 2e 0f 1f 84 00 00 00 00 00
> [22038.710838] RSP: 0018:ffffb24106e37ba0 EFLAGS: 00010086
> [22038.710838] RAX: 0000000000000000 RBX: ffff9599d2929c50 RCX: ffff959f8ed1ac30
> [22038.710839] RDX: 0000000000000000 RSI: 0000000000000023 RDI: ffff959f8ed1ac28
> [22038.710839] RBP: ffff9598981d4058 R08: 0000000000000019 R09: ffffb24206e3796d
> [22038.710839] R10: ffffffffffffffff R11: ffffb24106e37968 R12: ffff959887e51ec8
> [22038.710840] R13: 000000000000000c R14: 00000000ffffffff R15: ffff9599d2929c60
> [22038.710840] FS:  00007f3ade370a40(0000) GS:ffff959f8ed00000(0000) knlGS:0000000000000000
> [22038.710841] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [22038.710841] CR2: 0000000000000000 CR3: 00000003017b0000 CR4: 0000000000350ee0
> [22038.710841] Call Trace:
> [22038.710842]  netpoll_send_skb+0x185/0x240
> [22038.710842]  write_msg+0xe5/0x100 [netconsole]
> [22038.710842]  console_unlock+0x37d/0x640
> [22038.710842]  ? __schedule+0x2e5/0xc90
> [22038.710843]  suspend_devices_and_enter+0x2ac/0x7f0
> [22038.710843]  pm_suspend.cold+0x321/0x36c
> [22038.710843]  state_store+0xa6/0x140
> [22038.710844]  kernfs_fop_write_iter+0x124/0x1b0
> [22038.710844]  new_sync_write+0x16a/0x200
> [22038.710844]  vfs_write+0x21c/0x2e0
> [22038.710844]  __x64_sys_write+0x6d/0xf0
> [22038.710845]  do_syscall_64+0x33/0x40
> [22038.710845]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> [22038.710845] RIP: 0033:0x7f3adece10f7
> [22038.710846] Code: 0d 00 f7 d8 64 89 02 48 c7 c0 ff ff ff ff eb b7 0f 1f 00 f3 0f 1e fa 64 8b 04 25 18 00 00 00 85 c0 75 10 b8 01 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 51 c3 48 83 ec 28 48 89 54 24 18 48 89 74 24
> [22038.710847] RSP: 002b:00007ffc51c555b8 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
> [22038.710847] RAX: ffffffffffffffda RBX: 0000000000000004 RCX: 00007f3adece10f7
> [22038.710848] RDX: 0000000000000004 RSI: 00007ffc51c556a0 RDI: 0000000000000004
> [22038.710848] RBP: 00007ffc51c556a0 R08: 000055ea374302a0 R09: 00007f3aded770c0
> [22038.710849] R10: 00007f3aded76fc0 R11: 0000000000000246 R12: 0000000000000004
> [22038.710849] R13: 000055ea3742c430 R14: 0000000000000004 R15: 00007f3adedb3700
> [22038.710849] ---[ end trace 6eae54fbf23807f8 ]---
> ```
> 
> This one happened during suspend/resume cycle (on resume), followed by:
> 
> ```
> [22038.868669] igb 0000:05:00.0 enp5s0: Reset adapter
> [22040.998673] igb 0000:05:00.0 enp5s0: Reset adapter
> [22043.819198] igb 0000:05:00.0 enp5s0: igb: enp5s0 NIC Link is Up 1000 Mbps Full Duplex, Flow Control: RX
> ```
> 
> I've bumped into a similar issue in BZ 211911 [2] (see c#16),
> and in c#17 it was suggested it was a separate unrelated issue,
> hence I'm raising a new concern.
> 
> Please help in finding out why this woe happens and in fixing it.
> 
> Thanks.
> 
> [1] https://bugzilla.kernel.org/show_bug.cgi?id=212573
> [2] https://bugzilla.kernel.org/show_bug.cgi?id=211911

Looks like igb_clean_tx_irq() should not return true if budget is 0,
ever, otherwise we risk hitting the min(work, budget - 1) which may
go negative.

So something like this? 

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index c9e8c65a3cfe..7a237b5311ca 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -8028,7 +8028,7 @@ static bool igb_clean_tx_irq(struct igb_q_vector *q_vector, int napi_budget)
        unsigned int i = tx_ring->next_to_clean;
 
        if (test_bit(__IGB_DOWN, &adapter->state))
-               return true;
+               goto out;
 
        tx_buffer = &tx_ring->tx_buffer_info[i];
        tx_desc = IGB_TX_DESC(tx_ring, i);
@@ -8157,7 +8157,7 @@ static bool igb_clean_tx_irq(struct igb_q_vector *q_vector, int napi_budget)
                                            tx_ring->queue_index);
 
                        /* we are about to reset, no point in enabling stuff */
-                       return true;
+                       goto out;
                }
        }
 
@@ -8180,7 +8180,7 @@ static bool igb_clean_tx_irq(struct igb_q_vector *q_vector, int napi_budget)
                        u64_stats_update_end(&tx_ring->tx_syncp);
                }
        }
-
+out:
        return !!budget;
 }
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
