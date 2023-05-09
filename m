Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 727896FC817
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 May 2023 15:39:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0EC57845FC;
	Tue,  9 May 2023 13:39:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0EC57845FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683639597;
	bh=1aBdvhzBUHYqG2T0hMd4sBR8u9eNaIvsyMtJaJuLmTs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RPlG8W9mCfCFfQ/YsD3O57Xk+Dhe419Ou0g53eHInxJ/eAw+222aU+CWS+ElLABxu
	 b0uetoOE9Y15mHN6OzFd/aKE518qsSxFgOl9h8D2QFqKHV6iqphD+W2Iz5RwfmRgb4
	 bMwK5RlK3fkEliYEGfDRZMThcXWtV4yFcQ48428BgyXUwCPQ3ue/qehCag+TecQuDW
	 cpS4WcoOVlHFzj7vSxb8iTebm/CfahWpk1y9bvJRTbEn/0r6Ar21UMHx8cRALeaqFD
	 XEI1lLAdfrU2ueo2AXVRMRBSmOyxvn7VRu4fDkWXsaYFlf0G6YLsgbfbRBnX3fetM/
	 TXJbN8agudJ1w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wv338vjM_qbh; Tue,  9 May 2023 13:39:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 922E683F76;
	Tue,  9 May 2023 13:39:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 922E683F76
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B3FD91BF867
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 13:39:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8B5EB408DD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 13:39:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8B5EB408DD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FRn1R1Qcyw0b for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 May 2023 13:39:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A9098403EA
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A9098403EA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 13:39:49 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 95A5762A62;
 Tue,  9 May 2023 13:39:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B726C4339B;
 Tue,  9 May 2023 13:39:47 +0000 (UTC)
Date: Tue, 9 May 2023 16:39:43 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Ding Hui <dinghui@sangfor.com.cn>
Message-ID: <20230509133943.GK38143@unreal>
References: <20230509111148.4608-1-dinghui@sangfor.com.cn>
 <20230509111148.4608-3-dinghui@sangfor.com.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230509111148.4608-3-dinghui@sangfor.com.cn>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1683639587;
 bh=vuwKSVknmbqrbSroyB/54JqQoWpBs///jXngNNDqRuY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QA5oKE+Z+aELa/glXqJhtH5uzmN/AqM5H7msLD6hdOgsJQIA1f7f6uxykW/pxyCDO
 eMmp/J6U3ACotT4HSFZ9CbfZ1KwxmM36rrjv3iZUK/BEcXk+lsDJA7AWini0s5/aFX
 MZgxfE+XqTs7GMYW/DDbwXh2i9vY1TC0/Kte4hHir8ExWbnnTjiTz1ioeQFUmYaJAY
 32mmzCLcK8CpUrBkzKF7UsjrkenClG9NaeTjQmGw/+yzO/dd3v6IyFBJVkt198NiXM
 /U2tz6Tn7zrSZA1pW3d7P27XJFHo0Dw2th5sZRML0HEbLFwGeb47lzkt0ZGXukdbnP
 yHVv7keI8W1Rw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=QA5oKE+Z
Subject: Re: [Intel-wired-lan] [PATCH net v5 2/2] iavf: Fix out-of-bounds
 when setting channels on remove
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
Cc: pengdonglin@sangfor.com.cn, keescook@chromium.org, gregory.v.rose@intel.com,
 anthony.l.nguyen@intel.com, mitch.a.williams@intel.com,
 jesse.brandeburg@intel.com, huangcun@sangfor.com.cn,
 linux-kernel@vger.kernel.org, grzegorzx.szczurek@intel.com,
 edumazet@google.com, michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 jeffrey.t.kirsher@intel.com, simon.horman@corigine.com, kuba@kernel.org,
 netdev@vger.kernel.org, pabeni@redhat.com, davem@davemloft.net,
 linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, May 09, 2023 at 07:11:48PM +0800, Ding Hui wrote:
> If we set channels greater during iavf_remove(), and waiting reset done
> would be timeout, then returned with error but changed num_active_queues
> directly, that will lead to OOB like the following logs. Because the
> num_active_queues is greater than tx/rx_rings[] allocated actually.
> 
> Reproducer:
> 
>   [root@host ~]# cat repro.sh
>   #!/bin/bash
> 
>   pf_dbsf="0000:41:00.0"
>   vf0_dbsf="0000:41:02.0"
>   g_pids=()
> 
>   function do_set_numvf()
>   {
>       echo 2 >/sys/bus/pci/devices/${pf_dbsf}/sriov_numvfs
>       sleep $((RANDOM%3+1))
>       echo 0 >/sys/bus/pci/devices/${pf_dbsf}/sriov_numvfs
>       sleep $((RANDOM%3+1))
>   }
> 
>   function do_set_channel()
>   {
>       local nic=$(ls -1 --indicator-style=none /sys/bus/pci/devices/${vf0_dbsf}/net/)
>       [ -z "$nic" ] && { sleep $((RANDOM%3)) ; return 1; }
>       ifconfig $nic 192.168.18.5 netmask 255.255.255.0
>       ifconfig $nic up
>       ethtool -L $nic combined 1
>       ethtool -L $nic combined 4
>       sleep $((RANDOM%3))
>   }
> 
>   function on_exit()
>   {
>       local pid
>       for pid in "${g_pids[@]}"; do
>           kill -0 "$pid" &>/dev/null && kill "$pid" &>/dev/null
>       done
>       g_pids=()
>   }
> 
>   trap "on_exit; exit" EXIT
> 
>   while :; do do_set_numvf ; done &
>   g_pids+=($!)
>   while :; do do_set_channel ; done &
>   g_pids+=($!)
> 
>   wait
> 
> Result:
> 
> [ 3506.152887] iavf 0000:41:02.0: Removing device
> [ 3510.400799] ==================================================================
> [ 3510.400820] BUG: KASAN: slab-out-of-bounds in iavf_free_all_tx_resources+0x156/0x160 [iavf]
> [ 3510.400823] Read of size 8 at addr ffff88b6f9311008 by task repro.sh/55536
> [ 3510.400823]
> [ 3510.400830] CPU: 101 PID: 55536 Comm: repro.sh Kdump: loaded Tainted: G           O     --------- -t - 4.18.0 #1
> [ 3510.400832] Hardware name: Powerleader PR2008AL/H12DSi-N6, BIOS 2.0 04/09/2021
> [ 3510.400835] Call Trace:
> [ 3510.400851]  dump_stack+0x71/0xab
> [ 3510.400860]  print_address_description+0x6b/0x290
> [ 3510.400865]  ? iavf_free_all_tx_resources+0x156/0x160 [iavf]
> [ 3510.400868]  kasan_report+0x14a/0x2b0
> [ 3510.400873]  iavf_free_all_tx_resources+0x156/0x160 [iavf]
> [ 3510.400880]  iavf_remove+0x2b6/0xc70 [iavf]
> [ 3510.400884]  ? iavf_free_all_rx_resources+0x160/0x160 [iavf]
> [ 3510.400891]  ? wait_woken+0x1d0/0x1d0
> [ 3510.400895]  ? notifier_call_chain+0xc1/0x130
> [ 3510.400903]  pci_device_remove+0xa8/0x1f0
> [ 3510.400910]  device_release_driver_internal+0x1c6/0x460
> [ 3510.400916]  pci_stop_bus_device+0x101/0x150
> [ 3510.400919]  pci_stop_and_remove_bus_device+0xe/0x20
> [ 3510.400924]  pci_iov_remove_virtfn+0x187/0x420
> [ 3510.400927]  ? pci_iov_add_virtfn+0xe10/0xe10
> [ 3510.400929]  ? pci_get_subsys+0x90/0x90
> [ 3510.400932]  sriov_disable+0xed/0x3e0
> [ 3510.400936]  ? bus_find_device+0x12d/0x1a0
> [ 3510.400953]  i40e_free_vfs+0x754/0x1210 [i40e]
> [ 3510.400966]  ? i40e_reset_all_vfs+0x880/0x880 [i40e]
> [ 3510.400968]  ? pci_get_device+0x7c/0x90
> [ 3510.400970]  ? pci_get_subsys+0x90/0x90
> [ 3510.400982]  ? pci_vfs_assigned.part.7+0x144/0x210
> [ 3510.400987]  ? __mutex_lock_slowpath+0x10/0x10
> [ 3510.400996]  i40e_pci_sriov_configure+0x1fa/0x2e0 [i40e]
> [ 3510.401001]  sriov_numvfs_store+0x214/0x290
> [ 3510.401005]  ? sriov_totalvfs_show+0x30/0x30
> [ 3510.401007]  ? __mutex_lock_slowpath+0x10/0x10
> [ 3510.401011]  ? __check_object_size+0x15a/0x350
> [ 3510.401018]  kernfs_fop_write+0x280/0x3f0
> [ 3510.401022]  vfs_write+0x145/0x440
> [ 3510.401025]  ksys_write+0xab/0x160
> [ 3510.401028]  ? __ia32_sys_read+0xb0/0xb0
> [ 3510.401031]  ? fput_many+0x1a/0x120
> [ 3510.401032]  ? filp_close+0xf0/0x130
> [ 3510.401038]  do_syscall_64+0xa0/0x370
> [ 3510.401041]  ? page_fault+0x8/0x30
> [ 3510.401043]  entry_SYSCALL_64_after_hwframe+0x65/0xca
> [ 3510.401073] RIP: 0033:0x7f3a9bb842c0
> [ 3510.401079] Code: 73 01 c3 48 8b 0d d8 cb 2c 00 f7 d8 64 89 01 48 83 c8 ff c3 66 0f 1f 44 00 00 83 3d 89 24 2d 00 00 75 10 b8 01 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 31 c3 48 83 ec 08 e8 fe dd 01 00 48 89 04 24
> [ 3510.401080] RSP: 002b:00007ffc05f1fe18 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
> [ 3510.401083] RAX: ffffffffffffffda RBX: 0000000000000002 RCX: 00007f3a9bb842c0
> [ 3510.401085] RDX: 0000000000000002 RSI: 0000000002327408 RDI: 0000000000000001
> [ 3510.401086] RBP: 0000000002327408 R08: 00007f3a9be53780 R09: 00007f3a9c8a4700
> [ 3510.401086] R10: 0000000000000001 R11: 0000000000000246 R12: 0000000000000002
> [ 3510.401087] R13: 0000000000000001 R14: 00007f3a9be52620 R15: 0000000000000001
> [ 3510.401090]
> [ 3510.401093] Allocated by task 76795:
> [ 3510.401098]  kasan_kmalloc+0xa6/0xd0
> [ 3510.401099]  __kmalloc+0xfb/0x200
> [ 3510.401104]  iavf_init_interrupt_scheme+0x26f/0x1310 [iavf]
> [ 3510.401108]  iavf_watchdog_task+0x1d58/0x4050 [iavf]
> [ 3510.401114]  process_one_work+0x56a/0x11f0
> [ 3510.401115]  worker_thread+0x8f/0xf40
> [ 3510.401117]  kthread+0x2a0/0x390
> [ 3510.401119]  ret_from_fork+0x1f/0x40
> [ 3510.401122]  0xffffffffffffffff
> [ 3510.401123]
> 
> In timeout handling, we should keep the original num_active_queues
> and reset num_req_queues to 0.
> 
> Fixes: 4e5e6b5d9d13 ("iavf: Fix return of set the new channel count")
> Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
> Cc: Donglin Peng <pengdonglin@sangfor.com.cn>
> Cc: Huang Cun <huangcun@sangfor.com.cn>
> ---
> v4 to v5:
>   - remove testing __IAVF_IN_REMOVE_TASK condition
>   - update commit message
>   - remove Reviewed-by tags to review again
> 
> v3 to v4:
>   - nothing changed
> 
> v2 to v3:
>   - fix review tag
> 
> v1 to v2:
>   - add reproduction script
> 
> ---
>  drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Thanks,
Reviewed-by: Leon Romanovsky <leonro@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
