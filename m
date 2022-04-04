Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D5B4F1913
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Apr 2022 18:01:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B610682A29;
	Mon,  4 Apr 2022 16:01:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jYL-lQxsEnLf; Mon,  4 Apr 2022 16:01:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 539AF827C9;
	Mon,  4 Apr 2022 16:01:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0AD541BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Apr 2022 16:00:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EB4EC41528
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Apr 2022 16:00:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gc-aqPJG72bH for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Apr 2022 16:00:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 62E03409A0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Apr 2022 16:00:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1649088055;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Xf7ciNc+ah8Y+65MgTp6eTpST3NOk0LPrXu3arCTzYc=;
 b=PS09nWrGQrMwcqgIv8vzew7G0H/p4NSQIbndETlrqKgR5Q/Xx9JJBVBFYBZsln6Lux70KY
 J/bDrE/K+elBZTXwWXT9ttUzqIx4T06GdennLZbEJfXJi9uZWYyq5VXmv7MuEkpFtL46zg
 hBdpNHVTZVKuLz8Z5+hy44nr81kyTUk=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-637-7IKOsY0tNeq_1-3XVpk94Q-1; Mon, 04 Apr 2022 12:00:51 -0400
X-MC-Unique: 7IKOsY0tNeq_1-3XVpk94Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 39DE73C13A06;
 Mon,  4 Apr 2022 16:00:50 +0000 (UTC)
Received: from ceranb (unknown [10.40.193.122])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5240340CFD01;
 Mon,  4 Apr 2022 16:00:48 +0000 (UTC)
Date: Mon, 4 Apr 2022 18:00:47 +0200
From: Ivan Vecera <ivecera@redhat.com>
To: Alexander Lobakin <alexandr.lobakin@intel.com>
Message-ID: <20220404180047.2f84f2ac@ceranb>
In-Reply-To: <20220404132832.1936529-1-alexandr.lobakin@intel.com>
References: <20220404132832.1936529-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Subject: Re: [Intel-wired-lan] [PATCH net] ice: arfs: fix use-after-free
 when freeing @rx_cpu_rmap
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
Cc: intel-wired-lan@lists.osuosl.org, Brett Creeley <brett@pensando.io>,
 linux-kernel@vger.kernel.org, Madhu Chittim <madhu.chittim@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon,  4 Apr 2022 15:28:32 +0200
Alexander Lobakin <alexandr.lobakin@intel.com> wrote:

> The CI testing bots triggered the following splat:
> 
> [  718.203054] BUG: KASAN: use-after-free in free_irq_cpu_rmap+0x53/0x80
> [  718.206349] Read of size 4 at addr ffff8881bd127e00 by task sh/20834
> [  718.212852] CPU: 28 PID: 20834 Comm: sh Kdump: loaded Tainted: G S      W IOE     5.17.0-rc8_nextqueue-devqueue-02643-g23f3121aca93 #1
> [  718.219695] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS SE5C620.86B.02.01.0012.070720200218 07/07/2020
> [  718.223418] Call Trace:
> [  718.227139]
> [  718.230783]  dump_stack_lvl+0x33/0x42
> [  718.234431]  print_address_description.constprop.9+0x21/0x170
> [  718.238177]  ? free_irq_cpu_rmap+0x53/0x80
> [  718.241885]  ? free_irq_cpu_rmap+0x53/0x80
> [  718.245539]  kasan_report.cold.18+0x7f/0x11b
> [  718.249197]  ? free_irq_cpu_rmap+0x53/0x80
> [  718.252852]  free_irq_cpu_rmap+0x53/0x80
> [  718.256471]  ice_free_cpu_rx_rmap.part.11+0x37/0x50 [ice]
> [  718.260174]  ice_remove_arfs+0x5f/0x70 [ice]
> [  718.263810]  ice_rebuild_arfs+0x3b/0x70 [ice]
> [  718.267419]  ice_rebuild+0x39c/0xb60 [ice]
> [  718.270974]  ? asm_sysvec_apic_timer_interrupt+0x12/0x20
> [  718.274472]  ? ice_init_phy_user_cfg+0x360/0x360 [ice]
> [  718.278033]  ? delay_tsc+0x4a/0xb0
> [  718.281513]  ? preempt_count_sub+0x14/0xc0
> [  718.284984]  ? delay_tsc+0x8f/0xb0
> [  718.288463]  ice_do_reset+0x92/0xf0 [ice]
> [  718.292014]  ice_pci_err_resume+0x91/0xf0 [ice]
> [  718.295561]  pci_reset_function+0x53/0x80
> <...>
> [  718.393035] Allocated by task 690:
> [  718.433497] Freed by task 20834:
> [  718.495688] Last potentially related work creation:
> [  718.568966] The buggy address belongs to the object at ffff8881bd127e00
>                 which belongs to the cache kmalloc-96 of size 96
> [  718.574085] The buggy address is located 0 bytes inside of
>                 96-byte region [ffff8881bd127e00, ffff8881bd127e60)
> [  718.579265] The buggy address belongs to the page:
> [  718.598905] Memory state around the buggy address:
> [  718.601809]  ffff8881bd127d00: fa fb fb fb fb fb fb fb fb fb fb fb fc fc fc fc
> [  718.604796]  ffff8881bd127d80: 00 00 00 00 00 00 00 00 00 00 fc fc fc fc fc fc
> [  718.607794] >ffff8881bd127e00: fa fb fb fb fb fb fb fb fb fb fb fb fc fc fc fc
> [  718.610811]                    ^
> [  718.613819]  ffff8881bd127e80: 00 00 00 00 00 00 00 00 00 00 00 00 fc fc fc fc
> [  718.617107]  ffff8881bd127f00: fa fb fb fb fb fb fb fb fb fb fb fb fc fc fc fc
> 
> This is due to that free_irq_cpu_rmap() is always being called
> *after* (devm_)free_irq() and thus it tries to work with IRQ descs
> already freed. For example, on device reset the driver frees the
> rmap right before allocating a new one (the splat above).
> Make rmap creation and freeing function symmetrical with
> {request,free}_irq() calls i.e. do that on ifup/ifdown instead
> of device probe/remove/resume. These operations can be performed
> independently from the actual device aRFS configuration.
> Also, make sure ice_vsi_free_irq() clears IRQ affinity notifiers
> only when aRFS is disabled -- otherwise, CPU rmap sets and clears
> its own and they must not be touched manually.
> 
> Fixes: 28bf26724fdb0 ("ice: Implement aRFS")
> Co-developed-by: Ivan Vecera <ivecera@redhat.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
> ---
> Netdev folks, some more urgent stuff, would like to have this in
> -net directly.
> 
> Ivan, I probably should've waited for your response regarding
> signatures, hope you'll approve this one :p Feel free to review
> and/or test.
> ---
>  drivers/net/ethernet/intel/ice/ice_arfs.c |  7 +------
>  drivers/net/ethernet/intel/ice/ice_lib.c  |  5 ++++-
>  drivers/net/ethernet/intel/ice/ice_main.c | 18 ++++++++----------
>  3 files changed, 13 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_arfs.c b/drivers/net/ethernet/intel/ice/ice_arfs.c
> index 5daade32ea62..97347b796066 100644
> --- a/drivers/net/ethernet/intel/ice/ice_arfs.c
> +++ b/drivers/net/ethernet/intel/ice/ice_arfs.c
> @@ -599,7 +599,7 @@ int ice_set_cpu_rx_rmap(struct ice_vsi *vsi)
>  	int base_idx, i;
>  
>  	if (!vsi || vsi->type != ICE_VSI_PF)
> -		return -EINVAL;
> +		return 0;
>  
>  	pf = vsi->back;
>  	netdev = vsi->netdev;
> @@ -636,7 +636,6 @@ void ice_remove_arfs(struct ice_pf *pf)
>  	if (!pf_vsi)
>  		return;
>  
> -	ice_free_cpu_rx_rmap(pf_vsi);
>  	ice_clear_arfs(pf_vsi);
>  }
>  
> @@ -653,9 +652,5 @@ void ice_rebuild_arfs(struct ice_pf *pf)
>  		return;
>  
>  	ice_remove_arfs(pf);
> -	if (ice_set_cpu_rx_rmap(pf_vsi)) {
> -		dev_err(ice_pf_to_dev(pf), "Failed to rebuild aRFS\n");
> -		return;
> -	}
>  	ice_init_arfs(pf_vsi);
>  }
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 6d6233204388..7fe4bfd7882a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -2688,6 +2688,8 @@ void ice_vsi_free_irq(struct ice_vsi *vsi)
>  		return;
>  
>  	vsi->irqs_ready = false;
> +	ice_free_cpu_rx_rmap(vsi);
> +
>  	ice_for_each_q_vector(vsi, i) {
>  		u16 vector = i + base;
>  		int irq_num;
> @@ -2701,7 +2703,8 @@ void ice_vsi_free_irq(struct ice_vsi *vsi)
>  			continue;
>  
>  		/* clear the affinity notifier in the IRQ descriptor */
> -		irq_set_affinity_notifier(irq_num, NULL);
> +		if (!IS_ENABLED(CONFIG_RFS_ACCEL))
> +			irq_set_affinity_notifier(irq_num, NULL);
>  
>  		/* clear the affinity_mask in the IRQ descriptor */
>  		irq_set_affinity_hint(irq_num, NULL);
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 1d2ca39add95..24d3279df231 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -2510,6 +2510,13 @@ static int ice_vsi_req_irq_msix(struct ice_vsi *vsi, char *basename)
>  		irq_set_affinity_hint(irq_num, &q_vector->affinity_mask);
>  	}
>  
> +	err = ice_set_cpu_rx_rmap(vsi);
> +	if (err) {
> +		netdev_err(vsi->netdev, "Failed to setup CPU RMAP on VSI %u: %pe\n",
> +			   vsi->vsi_num, ERR_PTR(err));
> +		goto free_q_irqs;
> +	}
> +
>  	vsi->irqs_ready = true;
>  	return 0;
>  
> @@ -3690,20 +3697,12 @@ static int ice_setup_pf_sw(struct ice_pf *pf)
>  	 */
>  	ice_napi_add(vsi);
>  
> -	status = ice_set_cpu_rx_rmap(vsi);
> -	if (status) {
> -		dev_err(dev, "Failed to set CPU Rx map VSI %d error %d\n",
> -			vsi->vsi_num, status);
> -		goto unroll_napi_add;
> -	}
>  	status = ice_init_mac_fltr(pf);
>  	if (status)
> -		goto free_cpu_rx_map;
> +		goto unroll_napi_add;
>  
>  	return 0;
>  
> -free_cpu_rx_map:
> -	ice_free_cpu_rx_rmap(vsi);
>  unroll_napi_add:
>  	ice_tc_indir_block_unregister(vsi);
>  unroll_cfg_netdev:
> @@ -5165,7 +5164,6 @@ static int __maybe_unused ice_suspend(struct device *dev)
>  			continue;
>  		ice_vsi_free_q_vectors(pf->vsi[v]);
>  	}
> -	ice_free_cpu_rx_rmap(ice_get_main_vsi(pf));
>  	ice_clear_interrupt_scheme(pf);
>  
>  	pci_save_state(pdev);

Nacked-by: Ivan Vecera <ivecera@redhat.com>

Alex, the patch leads to the trace below. Function ice_free_cpu_rx_rmap() does
not clear affinity notifiers at all so the WARN from free_irq().

Function ice_remove() calls first ice_remove_arfs() that effectively NULLs
vsi->arfs_fltr_list. Then ice_vsi_free_irq() is called through
ice_vsi_release_all() [see call stack] but ice_vsi_free_irq() does not anything
because vsi->arfs_fltr_list == NULL. This later leads to WARN.

Could you please apply the following and add to your patch? That check does not
make sense there.

<code>
diff --git a/drivers/net/ethernet/intel/ice/ice_arfs.c b/drivers/net/ethernet/intel/ice/ice_arfs.c
index 97347b796066..fba178e07600 100644
--- a/drivers/net/ethernet/intel/ice/ice_arfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_arfs.c
@@ -577,7 +577,7 @@ void ice_free_cpu_rx_rmap(struct ice_vsi *vsi)
 {
        struct net_device *netdev;
 
-       if (!vsi || vsi->type != ICE_VSI_PF || !vsi->arfs_fltr_list)
+       if (!vsi || vsi->type != ICE_VSI_PF)
                return;
 
        netdev = vsi->netdev;
</code>

Call trace:
[  383.375869] ------------[ cut here ]------------
[  383.380874] WARNING: CPU: 22 PID: 16430 at kernel/irq/manage.c:2002 free_irq0
[  383.388966] Modules linked in: ice(E-) rfkill intel_rapl_msr intel_rapl_commd
[  383.458741] CPU: 22 PID: 16430 Comm: rmmod Tainted: G S      W   E     5.17.4
[  383.466227] Hardware name: Dell Inc. PowerEdge R750/06V45N, BIOS 1.4.4 10/071
[  383.473709] RIP: 0010:free_irq+0x784/0xb30
[  383.477816] Code: 0f 85 3a 03 00 00 49 8b 46 78 48 85 c0 0f 84 40 fe ff ff 41
[  383.496560] RSP: 0018:ff11000118787788 EFLAGS: 00010282
[  383.501787] RAX: dffffc0000000000 RBX: ff11002209fe6028 RCX: 1fe220044136f718
[  383.508919] RDX: 0000000000000000 RSI: 0000000000000373 RDI: ff110023d0c74ec0
[  383.516054] RBP: ff11002209b7b878 R08: 0000000000000000 R09: 0000000000000040
[  383.523187] R10: ffffffff8d843c3e R11: ffe21c00230f0e93 R12: ff11002209b7b8c0
[  383.530317] R13: ff11002209b7b800 R14: ff110023160681a0 R15: dffffc0000000000
[  383.537451] FS:  00007fc0d666a740(0000) GS:ff110017f1780000(0000) knlGS:00000
[  383.545536] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  383.551285] CR2: 00007eff211ef000 CR3: 000000024fea4001 CR4: 0000000000771ee0
[  383.558425] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[  383.565556] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[  383.572695] PKRU: 55555554
[  383.575413] Call Trace:
[  383.577864]  <TASK>
[  383.583126]  devm_free_irq+0x8c/0xc0
[  383.599905]  ice_vsi_free_irq+0x76d/0xac0 [ice]
[  383.604464]  ice_vsi_close+0x28/0xa0 [ice]
[  383.608588]  ice_stop+0x6a/0x80 [ice]
[  383.612281]  __dev_close_many+0x180/0x290
[  383.625566]  dev_close_many+0x1ca/0x570
[  383.677108]  unregister_netdevice_many+0x713/0x1210
[  383.716741]  unregister_netdevice_queue+0x277/0x340
[  383.726769]  unregister_netdev+0x18/0x20
[  383.730701]  ice_vsi_release+0xbd5/0x1250 [ice]
[  383.742862]  ice_vsi_release_all.part.48+0xea/0x2a0 [ice]
[  383.748286]  ice_remove+0x346/0x660 [ice]
[  383.752328]  pci_device_remove+0x9f/0x1f0
[  383.756346]  device_release_driver_internal+0x153/0x280
[  383.761575]  driver_detach+0xbb/0x170
[  383.765249]  bus_remove_driver+0x15d/0x2d0
[  383.769357]  pci_unregister_driver+0x2d/0x220
[  383.777911]  ice_module_exit+0xc/0x32 [ice]
[  383.782121]  __x64_sys_delete_module+0x2c7/0x480
[  383.800599]  do_syscall_64+0x37/0x80

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
