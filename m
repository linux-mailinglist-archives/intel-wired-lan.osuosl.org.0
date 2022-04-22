Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 182EF50BEEA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Apr 2022 19:43:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B2A9A61035;
	Fri, 22 Apr 2022 17:43:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0M1sGUTpL42c; Fri, 22 Apr 2022 17:43:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 744F46102F;
	Fri, 22 Apr 2022 17:43:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CCAFF1BF3D0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Apr 2022 17:43:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C7215416ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Apr 2022 17:43:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V3nYrXWtW5dy for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Apr 2022 17:43:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8ADC5415F0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Apr 2022 17:43:23 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6343960C0A;
 Fri, 22 Apr 2022 17:43:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18754C385A9;
 Fri, 22 Apr 2022 17:43:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650649401;
 bh=78vekOif5h0AQRVGTonAepebkBfhWINFWbKphNKFsC8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=K9IBNyyXRIgGSN7wGgcT0qkGBFMKJHJe8CgdLozejJGvcCGnX+VDDlnDsjCJJl6A0
 YktriXM12lFeYWJZ7NdZUwUmRV5XSH99dOByD9D63JiP9Jjz42FW1binCQ2s0q6VIC
 u6j9PjD1KPlebtUuW2huA/GvDDv0Co9yLnix6luwH86+zQONQlkJLKD8jZ0V+psHRj
 HOXr9Lim4KKntCHO19xiyeGjUIJA0nIfkaq7QcKwWE5gYA+nAKvaeD7XFTtd9Qg/LV
 gl+mBAP2ZciKeQHZqNzB8wvMKMdFz9Q2JJsXN6zYptZf2a/Vsfmv+Z2aVbrXtOYu1s
 5e/62FibhdQSQ==
Date: Fri, 22 Apr 2022 20:43:17 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <YmLpNd6PdaJp+Tg5@unreal>
References: <20220421060906.1902576-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220421060906.1902576-1-ivecera@redhat.com>
Subject: Re: [Intel-wired-lan] [PATCH net v3] ice: Fix race during aux
 device (un)plugging
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
Cc: netdev@vger.kernel.org, mschmidt@redhat.com,
 open list <linux-kernel@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Shiraz Saleem <shiraz.saleem@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Apr 21, 2022 at 08:09:05AM +0200, Ivan Vecera wrote:
> Function ice_plug_aux_dev() assigns pf->adev field too early prior
> aux device initialization and on other side ice_unplug_aux_dev()
> starts aux device deinit and at the end assigns NULL to pf->adev.
> This is wrong because pf->adev should always be non-NULL only when
> aux device is fully initialized and ready. This wrong order causes
> a crash when ice_send_event_to_aux() call occurs because that function
> depends on non-NULL value of pf->adev and does not assume that
> aux device is half-initialized or half-destroyed.
> After order correction the race window is tiny but it is still there,
> as Leon mentioned and manipulation with pf->adev needs to be protected
> by mutex.
> 
> Fix (un-)plugging functions so pf->adev field is set after aux device
> init and prior aux device destroy and protect pf->adev assignment by
> new mutex. This mutex is also held during ice_send_event_to_aux()
> call to ensure that aux device is valid during that call. Device
> lock used ice_send_event_to_aux() to avoid its concurrent run can
> be removed as this is secured by that mutex.
> 
> Reproducer:
> cycle=1
> while :;do
>         echo "#### Cycle: $cycle"
> 
>         ip link set ens7f0 mtu 9000
>         ip link add bond0 type bond mode 1 miimon 100
>         ip link set bond0 up
>         ifenslave bond0 ens7f0
>         ip link set bond0 mtu 9000
>         ethtool -L ens7f0 combined 1
>         ip link del bond0
>         ip link set ens7f0 mtu 1500
>         sleep 1
> 
>         let cycle++
> done
> 
> In short when the device is added/removed to/from bond the aux device
> is unplugged/plugged. When MTU of the device is changed an event is
> sent to aux device asynchronously. This can race with (un)plugging
> operation and because pf->adev is set too early (plug) or too late
> (unplug) the function ice_send_event_to_aux() can touch uninitialized
> or destroyed fields. In the case of crash below pf->adev->dev.mutex.
> 
> Crash:
> [   53.372066] bond0: (slave ens7f0): making interface the new active one
> [   53.378622] bond0: (slave ens7f0): Enslaving as an active interface with an u
> p link
> [   53.386294] IPv6: ADDRCONF(NETDEV_CHANGE): bond0: link becomes ready
> [   53.549104] bond0: (slave ens7f1): Enslaving as a backup interface with an up
>  link
> [   54.118906] ice 0000:ca:00.0 ens7f0: Number of in use tx queues changed inval
> idating tc mappings. Priority traffic classification disabled!
> [   54.233374] ice 0000:ca:00.1 ens7f1: Number of in use tx queues changed inval
> idating tc mappings. Priority traffic classification disabled!
> [   54.248204] bond0: (slave ens7f0): Releasing backup interface
> [   54.253955] bond0: (slave ens7f1): making interface the new active one
> [   54.274875] bond0: (slave ens7f1): Releasing backup interface
> [   54.289153] bond0 (unregistering): Released all slaves
> [   55.383179] MII link monitoring set to 100 ms
> [   55.398696] bond0: (slave ens7f0): making interface the new active one
> [   55.405241] BUG: kernel NULL pointer dereference, address: 0000000000000080
> [   55.405289] bond0: (slave ens7f0): Enslaving as an active interface with an u
> p link
> [   55.412198] #PF: supervisor write access in kernel mode
> [   55.412200] #PF: error_code(0x0002) - not-present page
> [   55.412201] PGD 25d2ad067 P4D 0
> [   55.412204] Oops: 0002 [#1] PREEMPT SMP NOPTI
> [   55.412207] CPU: 0 PID: 403 Comm: kworker/0:2 Kdump: loaded Tainted: G S
>            5.17.0-13579-g57f2d6540f03 #1
> [   55.429094] bond0: (slave ens7f1): Enslaving as a backup interface with an up
>  link
> [   55.430224] Hardware name: Dell Inc. PowerEdge R750/06V45N, BIOS 1.4.4 10/07/
> 2021
> [   55.430226] Workqueue: ice ice_service_task [ice]
> [   55.468169] RIP: 0010:mutex_unlock+0x10/0x20
> [   55.472439] Code: 0f b1 13 74 96 eb e0 4c 89 ee eb d8 e8 79 54 ff ff 66 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 65 48 8b 04 25 40 ef 01 00 31 d2 <f0> 48 0f b1 17 75 01 c3 e9 e3 fe ff ff 0f 1f 00 0f 1f 44 00 00 48
> [   55.491186] RSP: 0018:ff4454230d7d7e28 EFLAGS: 00010246
> [   55.496413] RAX: ff1a79b208b08000 RBX: ff1a79b2182e8880 RCX: 0000000000000001
> [   55.503545] RDX: 0000000000000000 RSI: ff4454230d7d7db0 RDI: 0000000000000080
> [   55.510678] RBP: ff1a79d1c7e48b68 R08: ff4454230d7d7db0 R09: 0000000000000041
> [   55.517812] R10: 00000000000000a5 R11: 00000000000006e6 R12: ff1a79d1c7e48bc0
> [   55.524945] R13: 0000000000000000 R14: ff1a79d0ffc305c0 R15: 0000000000000000
> [   55.532076] FS:  0000000000000000(0000) GS:ff1a79d0ffc00000(0000) knlGS:0000000000000000
> [   55.540163] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [   55.545908] CR2: 0000000000000080 CR3: 00000003487ae003 CR4: 0000000000771ef0
> [   55.553041] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [   55.560173] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [   55.567305] PKRU: 55555554
> [   55.570018] Call Trace:
> [   55.572474]  <TASK>
> [   55.574579]  ice_service_task+0xaab/0xef0 [ice]
> [   55.579130]  process_one_work+0x1c5/0x390
> [   55.583141]  ? process_one_work+0x390/0x390
> [   55.587326]  worker_thread+0x30/0x360
> [   55.590994]  ? process_one_work+0x390/0x390
> [   55.595180]  kthread+0xe6/0x110
> [   55.598325]  ? kthread_complete_and_exit+0x20/0x20
> [   55.603116]  ret_from_fork+0x1f/0x30
> [   55.606698]  </TASK>
> 
> Fixes: f9f5301e7e2d ("ice: Register auxiliary device to provide RDMA")
> Cc: Leon Romanovsky <leon@kernel.org>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h      |  1 +
>  drivers/net/ethernet/intel/ice/ice_idc.c  | 33 ++++++++++++++---------
>  drivers/net/ethernet/intel/ice/ice_main.c |  2 ++
>  3 files changed, 23 insertions(+), 13 deletions(-)
> 

Thanks,
Reviewed-by: Leon Romanovsky <leonro@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
