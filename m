Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8E37FDD33
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Nov 2023 17:36:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 76FC3821D9;
	Wed, 29 Nov 2023 16:36:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 76FC3821D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701275796;
	bh=nHjuwWGYX0uiV+w+8gMz3WwJujZeRSaJcP2dG+F+f8g=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=woBlVZVgtuhX8b8o67USi4A97472ouSFkfydEluLgfdGD0eT/sbiQejDbFeDK6fcK
	 TMmU25NKS/Zx78sp9Z4JeT6WYMPdV9Sl7b/Bq2V7SRmsCTajedOfHc8sgqhcWkOvTJ
	 7jsJWXngslhUdewAYLHj7I9AqD0YwjRvi9T3fsz/PPLGE0far2yciKWFkHlbgCi3Zr
	 wmqbaF+6Ge84Q2JdlkLEjph7jyricxCDjJEhyKbOm6ez7gBWkrOwKbqg4VUfkhG7MJ
	 JTnOy4OM2BuFPIha1tOCUNYbngYLeD+cWAj6GXnep8PIAxygTTc19A8uGFfsA8aONE
	 c79jCsXIXPFfw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6Ydqovz7bEia; Wed, 29 Nov 2023 16:36:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 00454821C8;
	Wed, 29 Nov 2023 16:36:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 00454821C8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9D6351BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 16:36:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7AC2541A63
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 16:36:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7AC2541A63
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PVyYfKYSaJ0k for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Nov 2023 16:36:29 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C15E84032C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 16:36:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C15E84032C
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id A1CE0CE1F43;
 Wed, 29 Nov 2023 16:36:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25C80C433CD;
 Wed, 29 Nov 2023 16:36:20 +0000 (UTC)
Date: Wed, 29 Nov 2023 16:36:18 +0000
From: Simon Horman <horms@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20231129163618.GD43811@kernel.org>
References: <20231124164233.86691-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231124164233.86691-1-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1701275783;
 bh=A7BJ51eiIq0oseXAXQNOdBOnkeZz+OdO53eDCW5R7a8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rL07mS8k2km6o+L9eBym7jYJReNZiTGLInC/lcQf6rKvzupd5XM/gKjazZFymUbdd
 tSdARz1U0x5v+7Hki0KJ9eXqh3J7vWYCgart2MKtzWs2jOhTowndCsN1y9ZgOlU+Go
 pLuyMwSWh7doF+HMFKmiWTbuZZbU/GrVKa7NvJNlUSBU1ORwU9Tifcv03tMlrrWECB
 juUaHIJ9z4nPDSuFPpX6V6jiqUN0sF/6MGVhrXv5z5GgmY7491mclNGThhrcXmKcA9
 tn4rOjJmQzUUWDA28jNyHS49oYokCSeStoE9XGH6nnyzUrUH24hUcp4mKtbR/Ww7wG
 vprbZOHCYp/zQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=rL07mS8k
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: Fix kernel crash during
 macvlan offloading setup
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
Cc: Harshitha Ramamurthy <harshitha.ramamurthy@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Nov 24, 2023 at 05:42:33PM +0100, Ivan Vecera wrote:
> Function i40e_fwd_add() computes num of created channels and
> num of queues per channel according value of pf->num_lan_msix.
> 
> This is wrong because the channels are used for subordinated net
> devices that reuse existing queues from parent net device and
> number of existing queue pairs (pf->num_queue_pairs) should be
> used instead.
> 
> E.g.:
> Let's have (pf->num_lan_msix == 32)... Then we reduce number of
> combined queues by ethtool to 8 (so pf->num_queue_pairs == 8).
> i40e_fwd_add() called by macvlan then computes number of macvlans
> channels to be 16 and queues per channel 1 and calls
> i40e_setup_macvlans(). This computes new number of queue pairs
> for PF as:
> 
> num_qps = vsi->num_queue_pairs - (macvlan_cnt * qcnt);
> 
> This is evaluated in this case as:
> num_qps = (8 - 16 * 1) = (u16)-8 = 0xFFF8
> 
> ...and this number is stored vsi->next_base_queue that is used
> during channel creation. This leads to kernel crash.
> 
> Fix this bug by computing the number of offloaded macvlan devices
> and no. their queues according the current number of queues instead
> of maximal one.
> 
> Reproducer:
> 1) Enable l2-fwd-offload
> 2) Reduce number of queues
> 3) Create macvlan device
> 4) Make it up
> 
> Result:
> [root@cnb-03 ~]# ethtool -K enp2s0f0np0 l2-fwd-offload on
> [root@cnb-03 ~]# ethtool -l enp2s0f0np0 | grep Combined
> Combined:       32
> Combined:       32
> [root@cnb-03 ~]# ethtool -L enp2s0f0np0 combined 8
> [root@cnb-03 ~]# ip link add link enp2s0f0np0 mac0 type macvlan mode bridge
> [root@cnb-03 ~]# ip link set mac0 up
> ...
> [ 1225.686698] i40e 0000:02:00.0: User requested queue count/HW max RSS count:  8/32
> [ 1242.399103] BUG: kernel NULL pointer dereference, address: 0000000000000118
> [ 1242.406064] #PF: supervisor write access in kernel mode
> [ 1242.411288] #PF: error_code(0x0002) - not-present page
> [ 1242.416417] PGD 0 P4D 0
> [ 1242.418950] Oops: 0002 [#1] PREEMPT SMP NOPTI
> [ 1242.423308] CPU: 26 PID: 2253 Comm: ip Kdump: loaded Not tainted 6.7.0-rc1+ #20
> [ 1242.430607] Hardware name: Abacus electric, s.r.o. - servis@abacus.cz Super Server/H12SSW-iN, BIOS 2.4 04/13/2022
> [ 1242.440850] RIP: 0010:i40e_channel_config_tx_ring.constprop.0+0xd9/0x180 [i40e]
> [ 1242.448165] Code: 48 89 b3 80 00 00 00 48 89 bb 88 00 00 00 74 3c 31 c9 0f b7 53 16 49 8b b4 24 f0 0c 00 00 01 ca 83 c1 01 0f b7 d2 48 8b 34 d6 <48> 89 9e 18 01 00 00 49 8b b4 24 e8 0c 00 00 48 8b 14 d6 48 89 9a
> [ 1242.466902] RSP: 0018:ffffa4d52cd2f610 EFLAGS: 00010202
> [ 1242.472121] RAX: 0000000000000000 RBX: ffff9390a4ba2e40 RCX: 0000000000000001
> [ 1242.479244] RDX: 000000000000fff8 RSI: 0000000000000000 RDI: ffffffffffffffff
> [ 1242.486370] RBP: ffffa4d52cd2f650 R08: 0000000000000020 R09: 0000000000000000
> [ 1242.493494] R10: 0000000000000000 R11: 0000000100000001 R12: ffff9390b861a000
> [ 1242.500626] R13: 00000000000000a0 R14: 0000000000000010 R15: ffff9390b861a000
> [ 1242.507751] FS:  00007efda536b740(0000) GS:ffff939f4ec80000(0000) knlGS:0000000000000000
> [ 1242.515826] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [ 1242.521564] CR2: 0000000000000118 CR3: 000000010bd48002 CR4: 0000000000770ef0
> [ 1242.528699] PKRU: 55555554
> [ 1242.531400] Call Trace:
> [ 1242.533846]  <TASK>
> [ 1242.535943]  ? __die+0x20/0x70
> [ 1242.539004]  ? page_fault_oops+0x76/0x170
> [ 1242.543018]  ? exc_page_fault+0x65/0x150
> [ 1242.546942]  ? asm_exc_page_fault+0x22/0x30
> [ 1242.551131]  ? i40e_channel_config_tx_ring.constprop.0+0xd9/0x180 [i40e]
> [ 1242.557847]  i40e_setup_channel.part.0+0x5f/0x130 [i40e]
> [ 1242.563167]  i40e_setup_macvlans.constprop.0+0x256/0x420 [i40e]
> [ 1242.569099]  i40e_fwd_add+0xbf/0x270 [i40e]
> [ 1242.573300]  macvlan_open+0x16f/0x200 [macvlan]
> [ 1242.577831]  __dev_open+0xe7/0x1b0
> [ 1242.581236]  __dev_change_flags+0x1db/0x250
> ...
> 
> Fixes: 1d8d80b4e4ff ("i40e: Add macvlan support on i40e")
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Thanks Ivan,

I agree with the analysis and that the problem was introduced by the cited
patch.

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
