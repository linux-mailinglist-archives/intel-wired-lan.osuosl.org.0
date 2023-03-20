Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EACF46C1131
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Mar 2023 12:51:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8865141687;
	Mon, 20 Mar 2023 11:51:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8865141687
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679313093;
	bh=EDvs3EgFYB5xSOhZPiVpJ37ADaXPmVs5gOWFiiyusKY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HK6hJBCYF145VaPDQW7aPwLSZGxIP3ueSyejPUdgdcvYRuUo5kG/ybucDvlsaDWKO
	 dss0q57nPIa5PVpBU5LQlrW3jpyBQqHZguRzAJZcTZlmWfzfytg6xO7x7pVvF7rEHF
	 EKcmEji5RBb4j5l2AI4JNJ5UdXn0K0hES22xL4KEzM+35DW1Z9qAvxdsYNB6gqLvZ0
	 0GTtKgORFqtcvn7BTvGKDBwYpBY2Qs5FlIT6PlpKBl2afckxDPl+lPDiG1wIRxjvTr
	 QEdvEAnyF1odWjdOp8kqRAxglVRQE1eTMhNU8q5DLHH3UbuFpTAUgKiBR1SqkEp9iR
	 AEGHotJOMC5Qw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i4Ufk-CsJB9I; Mon, 20 Mar 2023 11:51:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E84540088;
	Mon, 20 Mar 2023 11:51:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E84540088
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5BF451BF3FC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Mar 2023 11:51:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3485E81764
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Mar 2023 11:51:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3485E81764
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8b2QIZRDfgni for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Mar 2023 11:51:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E1DD81769
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1E1DD81769
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Mar 2023 11:51:26 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 47BAFB80E65;
 Mon, 20 Mar 2023 11:51:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76E33C433A0;
 Mon, 20 Mar 2023 11:51:21 +0000 (UTC)
Date: Mon, 20 Mar 2023 13:51:17 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20230320115117.GK36557@unreal>
References: <20230320112347.117363-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230320112347.117363-1-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1679313082;
 bh=Q3eLx56qniX4p7+ge9xiy+Qz1QIkVfwRpikDTrgQZpM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BE0wrmLjKtv8PpOlM6kvr5O/JP5g0t6njdukTaftrpIGS45TL0WkDQY5lruyURHM/
 +45w562cSBUaicGjVyl4c1lF3DnDjOcSThbcJ7QleFwzuTvMQJIts0DEtd1euAonqT
 ghyINvysOMViFzy/kOzcVmYPcLVd4HkpsIFvJq6vSmtfDZznLQl8vs0XAZk00n8H4j
 GS3fepi12wJlvwv1DFHmqWiMqkcj6EEaGL24IGZPSKJb/cOEwLfr+2wrkXfjjW/irU
 +uv5UwmK/ByKsHI/kYPAVg602jyc4XIYi1k7jAnBHh/qVW2NHu5LE4PjO5r3mpiOt+
 WTezeI2eXP1oQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=BE0wrmLj
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: clear number of qs when
 rings are free
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Mar 20, 2023 at 12:23:47PM +0100, Michal Swiatkowski wrote:
> In case rebuild fails not clearing this field can lead to call trace.
> 
> [  +0.009792] BUG: kernel NULL pointer dereference, address: 0000000000000000
> [  +0.000009] #PF: supervisor read access in kernel mode
> [  +0.000006] #PF: error_code(0x0000) - not-present page
> [  +0.000005] PGD 0 P4D 0
> [  +0.000009] Oops: 0000 [#1] PREEMPT SMP PTI
> [  +0.000009] CPU: 45 PID: 77867 Comm: ice-ptp-0000:60 Kdump: loaded Tainted: G S         OE      6.2.0-rc6+ #110
> [  +0.000010] Hardware name: Dell Inc. PowerEdge R740/0JMK61, BIOS 2.11.2 004/21/2021
> [  +0.000005] RIP: 0010:ice_ptp_update_cached_phctime+0xb0/0x130 [ice]
> [  +0.000145] Code: fa 7e 55 48 8b 93 48 01 00 00 48 8b 0c fa 48 85 c9 74 e1 8b 51 68 85 d2 75 da 66 83 b9 86 04 00 00 00 74 d0 31 d2 48 8b 71 20 <48> 8b 34 d6 48 85 f6 74 07 48 89 86 d8 00 00 00 0f b7 b1 86 04 00
> [  +0.000008] RSP: 0018:ffffa036cf7c7ea8 EFLAGS: 00010246
> [  +0.000008] RAX: 174ab1a8ab400f43 RBX: ffff937cda2c01a0 RCX: ffff937cdca9b028
> [  +0.000005] RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000
> [  +0.000005] RBP: ffffa036cf7c7eb8 R08: 0000000000000000 R09: 0000000000000000
> [  +0.000005] R10: 0000000000000080 R11: 0000000000000001 R12: ffff937cdc971f40
> [  +0.000006] R13: ffff937cdc971f44 R14: 0000000000000001 R15: ffffffffc13f3210
> [  +0.000005] FS:  0000000000000000(0000) GS:ffff93826f980000(0000) knlGS:0000000000000000
> [  +0.000006] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  +0.000006] CR2: 0000000000000000 CR3: 00000004b7310002 CR4: 00000000007726e0
> [  +0.000006] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [  +0.000004] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [  +0.000005] PKRU: 55555554
> [  +0.000004] Call Trace:
> [  +0.000004]  <TASK>
> [  +0.000007]  ice_ptp_periodic_work+0x2a/0x60 [ice]
> [  +0.000126]  kthread_worker_fn+0xa6/0x250
> [  +0.000014]  ? __pfx_kthread_worker_fn+0x10/0x10
> [  +0.000010]  kthread+0xfc/0x130
> [  +0.000009]  ? __pfx_kthread+0x10/0x10
> [  +0.000010]  ret_from_fork+0x29/0x50
> 
> ice_ptp_update_cached_phctime() is calling ice_for_each_rxq macro, in
> case of rebuild fail the rx_ring is NULL and there is NULL pointer
> dereference.
> 
> Also for future safety it is better to clear the size values for tx and
> rx ring when they are cleared.
> 
> Fixes: 6624e780a577 ("ice: split ice_vsi_setup into smaller functions")
> Reported-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> v1 --> v2:
>  * change subject to net and add fixes tag
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 2 ++
>  1 file changed, 2 insertions(+)
> 

It will be so great if all these ice_for_each_*(*, i) macros will go.
They do nothing except hide basic for-loop.

Thanks,
Reviewed-by: Leon Romanovsky <leonro@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
