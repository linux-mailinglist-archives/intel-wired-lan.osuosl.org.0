Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFD169A365
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Feb 2023 02:29:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F30AA60B98;
	Fri, 17 Feb 2023 01:29:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F30AA60B98
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676597346;
	bh=FWaGTm7GRIvaEdPgdz7yGO7HgVUkgexZbv0J4x+ATHc=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xKDvb6/zI1UyaMGKSZS22ZmNJAJqW3COEj85V09yYnF83rddtXy2P1DQLrGi32QcM
	 2xOu9j3TG7P+yT/vrhpxVe8n9YpEupgpepcJR0Y2PfngTGf5s5v4JfSdKuZOaGjoP7
	 f7jMvZeCIhhfjArJykyP+cqeQIULTWnU65zjGMhPQhx+0UnlDkOIUQzDeanmPj3SXj
	 Cy6SWcYTvEUmy2KW7JJex/GsDNci5dHIET8/he53hBVvV7+892gQIT3zeCa8xhLL0w
	 AQN3bXWcWSJvte9NYFkuycoVuAljmirvfa5tgjcn/A3tzUnao5qcIJWxLnXffo2AHt
	 seZavS33fhDRg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id heP0zzQS_TFn; Fri, 17 Feb 2023 01:29:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC87160B6A;
	Fri, 17 Feb 2023 01:29:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC87160B6A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AF8311BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 17:34:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 941F1418E7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 17:34:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 941F1418E7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ok7IqYWTDaNP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Feb 2023 17:34:38 +0000 (UTC)
X-Greylist: delayed 00:10:04 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68C68418D4
Received: from sosiego.soundray.org (sosiego.soundray.org [116.203.207.114])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 68C68418D4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 17:34:38 +0000 (UTC)
From: Linus Heckemann <git@sphalerite.org>
To: Dave Ertman <david.m.ertman@intel.com>, intel-wired-lan@lists.osuosl.org
In-Reply-To: <20230215191757.1826508-1-david.m.ertman@intel.com>
References: <20230215191757.1826508-1-david.m.ertman@intel.com>
Date: Thu, 16 Feb 2023 18:24:27 +0100
Message-ID: <ygay1oxikvo.fsf@localhost>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 17 Feb 2023 01:29:00 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sphalerite.org; s=sosiego; t=1676568270;
 bh=PQJWdxW8rwW3CHVFEtW1DGtCx9pDl9vXMX4p3rHUfs0=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date;
 b=ueuoOXex9ZtoQgIMBPafod3IUg64n8lIXHNvPFe78NxF68eu6R3Co2mOoJnWcv7kF
 SuC2piu7UKQ0bSocbBwpoQYhab+A0wiY3iG34Igp2ymNdd9DZQhneTi2jaJtjSzLyr
 d+9RMiFQApmyYRYpwVcyBe2pCcR2wDrpb5AXCA94=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=sphalerite.org header.i=@sphalerite.org
 header.a=rsa-sha256 header.s=sosiego header.b=ueuoOXex
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: avoid bonding causing
 auxiliary plug/unplug under RTNL lock
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
Cc: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dave Ertman <david.m.ertman@intel.com> writes:
> RDMA is not supported in ice on a PF that has been added to a bonded
> interface. To enforce this, when an interface enters a bond, we unplug
> the auxiliary device that supports RDMA functionality.  This unplug
> currently happens in the context of handling the netdev bonding event.
> This event is sent to the ice driver under RTNL context.  This is causing
> a deadlock where the RDMA driver is waiting for the RTNL lock to complete
> the removal.
>
> Defer the unplugging/re-plugging of the auxiliary device to the service
> task so that it is not performed under the RTNL lock context.
>
> Reported-by: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
> Link: https://lore.kernel.org/linux-rdma/68b14b11-d0c7-65c9-4eeb-0487c95e395d@leemhuis.info/
> Fixes: 5cb1ebdbc434 ("ice: Fix race condition during interface enslave")
> Fixes: 425c9bd06b7a ("RDMA/irdma: Report the correct link speed")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
> Changes since v1:
> Reversed order of bit processing in ice_service_task for PLUG/UNPLUG

Hi Dave,

Thanks for your continued work on this! We've tested this on a system
affected by the original issue (with 8086:1593 cards) and, unlike v1 of
the patch, it appears not to resolve it:

[  250.826308] INFO: task kworker/0:0:7 blocked for more than 122 seconds.
[  250.832925]       Not tainted 5.15.86 #1-NixOS
[  250.837370] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
[  250.845195] task:kworker/0:0     state:D stack:    0 pid:    7 ppid:     2 flags:0x00004000
[  250.845200] Workqueue: infiniband ib_cache_event_task [ib_core]
[  250.845227] Call Trace:
[  250.845228]  <TASK>
[  250.845230]  __schedule+0x2e6/0x13a0
[  250.845238]  ? dev_vprintk_emit+0x171/0x199
[  250.845242]  schedule+0x5b/0xd0
[  250.845244]  schedule_preempt_disabled+0xa/0x10
[  250.845247]  __mutex_lock.constprop.0+0x216/0x400
[  250.845249]  ib_get_eth_speed+0x65/0x190 [ib_core]
[  250.845262]  ? update_load_avg+0x7a/0x5c0
[  250.845265]  ? newidle_balance+0x121/0x400
[  250.845268]  irdma_query_port+0xac/0x110 [irdma]
[  250.845283]  ib_query_port+0x16f/0x1f0 [ib_core]
[  250.845301]  ib_cache_update.part.0+0x5e/0x280 [ib_core]
[  250.845313]  ? __schedule+0x2ee/0x13a0
[  250.845316]  ib_cache_event_task+0x53/0x70 [ib_core]
[  250.845327]  process_one_work+0x1ee/0x390
[  250.845330]  worker_thread+0x53/0x3e0
[  250.845332]  ? process_one_work+0x390/0x390
[  250.845334]  kthread+0x124/0x150
[  250.845336]  ? set_kthread_struct+0x50/0x50
[  250.845339]  ret_from_fork+0x1f/0x30
[  250.845344]  </TASK>
[  250.845418] INFO: task kworker/19:1:750 blocked for more than 122 seconds.
[  250.852294]       Not tainted 5.15.86 #1-NixOS
[  250.856739] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
[  250.864565] task:kworker/19:1    state:D stack:    0 pid:  750 ppid:     2 flags:0x00004000
[  250.864567] Workqueue: events linkwatch_event
[  250.864571] Call Trace:
[  250.864572]  <TASK>
[  250.864573]  __schedule+0x2e6/0x13a0
[  250.864576]  ? newidle_balance+0x121/0x400
[  250.864578]  schedule+0x5b/0xd0
[  250.864581]  schedule_preempt_disabled+0xa/0x10
[  250.864583]  __mutex_lock.constprop.0+0x216/0x400
[  250.864585]  linkwatch_event+0xa/0x30
[  250.864588]  process_one_work+0x1ee/0x390
[  250.864589]  worker_thread+0x53/0x3e0
[  250.864591]  ? process_one_work+0x390/0x390
[  250.864592]  kthread+0x124/0x150
[  250.864594]  ? set_kthread_struct+0x50/0x50
[  250.864597]  ret_from_fork+0x1f/0x30
[  250.864600]  </TASK>
[  250.864621] INFO: task kworker/119:1:946 blocked for more than 122 seconds.
[  250.871578]       Not tainted 5.15.86 #1-NixOS
[  250.876025] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
[  250.883848] task:kworker/119:1   state:D stack:    0 pid:  946 ppid:     2 flags:0x00004000
[  250.883851] Workqueue: events_power_efficient reg_check_chans_work [cfg80211]
[  250.883890] Call Trace:
[  250.883891]  <TASK>
[  250.883892]  __schedule+0x2e6/0x13a0
[  250.883895]  ? ttwu_do_wakeup+0x17/0x150
[  250.883898]  ? try_to_wake_up+0x1d1/0x420
[  250.883901]  schedule+0x5b/0xd0
[  250.883903]  schedule_preempt_disabled+0xa/0x10
[  250.883905]  __mutex_lock.constprop.0+0x216/0x400
[  250.883907]  reg_check_chans_work+0x2d/0x390 [cfg80211]
[  250.883925]  ? add_timer_on+0xe9/0x120
[  250.883928]  process_one_work+0x1ee/0x390
[  250.883930]  worker_thread+0x53/0x3e0
[  250.883931]  ? process_one_work+0x390/0x390
[  250.883932]  kthread+0x124/0x150
[  250.883935]  ? set_kthread_struct+0x50/0x50
[  250.883937]  ret_from_fork+0x1f/0x30
[  250.883940]  </TASK>
[  250.883943] INFO: task kworker/0:3:1082 blocked for more than 122 seconds.
[  250.890817]       Not tainted 5.15.86 #1-NixOS
[  250.895262] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
[  250.903088] task:kworker/0:3     state:D stack:    0 pid: 1082 ppid:     2 flags:0x00004000
[  250.903090] Workqueue: infiniband ib_cache_event_task [ib_core]
[  250.903104] Call Trace:
[  250.903105]  <TASK>
[  250.903106]  __schedule+0x2e6/0x13a0
[  250.903109]  schedule+0x5b/0xd0
[  250.903111]  schedule_preempt_disabled+0xa/0x10
[  250.903114]  __mutex_lock.constprop.0+0x216/0x400
[  250.903115]  ib_get_eth_speed+0x65/0x190 [ib_core]
[  250.903127]  ? raw_spin_rq_lock_nested+0x12/0x70
[  250.903129]  ? newidle_balance+0x2ee/0x400
[  250.903131]  irdma_query_port+0xac/0x110 [irdma]
[  250.903144]  ib_query_port+0x16f/0x1f0 [ib_core]
[  250.903155]  ib_cache_update.part.0+0x5e/0x280 [ib_core]
[  250.903166]  ? __schedule+0x2ee/0x13a0
[  250.903169]  ib_cache_event_task+0x53/0x70 [ib_core]
[  250.903178]  process_one_work+0x1ee/0x390
[  250.903180]  worker_thread+0x53/0x3e0
[  250.903181]  ? process_one_work+0x390/0x390
[  250.903183]  kthread+0x124/0x150
[  250.903185]  ? set_kthread_struct+0x50/0x50
[  250.903187]  ret_from_fork+0x1f/0x30
[  250.903190]  </TASK>
[  250.903195] INFO: task systemd-network:2679 blocked for more than 122 seconds.
[  250.910414]       Not tainted 5.15.86 #1-NixOS
[  250.914858] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
[  250.922685] task:systemd-network state:D stack:    0 pid: 2679 ppid:     1 flags:0x00004226
[  250.922687] Call Trace:
[  250.922688]  <TASK>
[  250.922688]  ? usleep_range_state+0x90/0x90
[  250.922690]  __schedule+0x2e6/0x13a0
[  250.922693]  ? __wake_up_common+0x7d/0x190
[  250.922695]  ? usleep_range_state+0x90/0x90
[  250.922696]  schedule+0x5b/0xd0
[  250.922699]  schedule_timeout+0x104/0x140
[  250.922700]  ? __prepare_to_swait+0x4f/0x70
[  250.922702]  __wait_for_common+0xac/0x160
[  250.922704]  flush_workqueue+0x13a/0x3f0
[  250.922706]  ib_cache_cleanup_one+0x1c/0xe0 [ib_core]
[  250.922719]  __ib_unregister_device+0x6a/0xb0 [ib_core]
[  250.922730]  ib_unregister_device+0x22/0x30 [ib_core]
[  250.922742]  irdma_remove+0x1a/0x60 [irdma]
[  250.922752]  auxiliary_bus_remove+0x18/0x30
[  250.922754]  __device_release_driver+0x17b/0x250
[  250.922758]  device_release_driver+0x24/0x30
[  250.922760]  bus_remove_device+0xd8/0x150
[  250.922762]  device_del+0x18b/0x400
[  250.922765]  ice_unplug_aux_dev+0x42/0x60 [ice]
[  250.922786]  ice_lag_event_handler+0x4c9/0x580 [ice]
[  250.922800]  raw_notifier_call_chain+0x41/0x60
[  250.922802]  __netdev_upper_dev_link+0x1a0/0x370
[  250.922806]  netdev_master_upper_dev_link+0x3d/0x60
[  250.922809]  bond_enslave+0xbe3/0x1620 [bonding]
[  250.922819]  ? __nla_parse+0x22/0x30
[  250.922822]  ? inet6_set_link_af+0x6a/0x3d0
[  250.922825]  do_setlink+0x28e/0x1050
[  250.922828]  ? select_task_rq_fair+0x131/0x1090
[  250.922830]  ? select_task_rq_fair+0x131/0x1090
[  250.922832]  ? __nla_validate_parse+0x5f/0xc10
[  250.922834]  ? sched_clock_cpu+0x9/0xa0
[  250.922835]  ? __smp_call_single_queue+0x23/0x40
[  250.922837]  ? ttwu_queue_wakelist+0xf4/0x110
[  250.922840]  rtnl_setlink+0xe5/0x180
[  250.922844]  ? security_capable+0x33/0x60
[  250.922846]  rtnetlink_rcv_msg+0x12e/0x380
[  250.922849]  ? rtnl_calcit.isra.0+0x130/0x130
[  250.922851]  netlink_rcv_skb+0x4e/0x100
[  250.922854]  netlink_unicast+0x204/0x2e0
[  250.922855]  netlink_sendmsg+0x24e/0x4b0
[  250.922857]  sock_sendmsg+0x5f/0x70
[  250.922861]  __sys_sendto+0xf0/0x160
[  250.922862]  ? __seccomp_filter+0x389/0x580
[  250.922867]  __x64_sys_sendto+0x20/0x30
[  250.922868]  do_syscall_64+0x38/0x90
[  250.922872]  entry_SYSCALL_64_after_hwframe+0x61/0xcb
[  250.922876] RIP: 0033:0x7f4340b8befa
[  250.922894] RSP: 002b:00007ffd17815b68 EFLAGS: 00000246 ORIG_RAX: 000000000000002c
[  250.922896] RAX: ffffffffffffffda RBX: 00005603231d29a8 RCX: 00007f4340b8befa
[  250.922897] RDX: 0000000000000028 RSI: 00005603231d2930 RDI: 0000000000000003
[  250.922898] RBP: 00005603231aade0 R08: 00007ffd17815b70 R09: 0000000000000080
[  250.922899] R10: 0000000000000000 R11: 0000000000000246 R12: 00005603231d24a0
[  250.922900] R13: 00005603231d2960 R14: 0000000000000000 R15: 0000560323063140
[  250.922902]  </TASK>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
