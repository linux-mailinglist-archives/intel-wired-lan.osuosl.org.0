Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C6709580050
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Jul 2022 16:01:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 60F5241A3E;
	Mon, 25 Jul 2022 14:01:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 60F5241A3E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658757714;
	bh=2ZVRqeIFph6nSWj4D/w/sCKgMdmFHvytmzOFNnzeEpE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YDKqOCmlw9VU/m1UXiCMQofJAT6arre6JTcZlHSe+708ZJgB2NhH21xrSJgof9ZbE
	 I5FszYqM22CEQrVg2XFCg3HjNVILiJBYBIW9lnKHAmKPzEIONh2nvdvcNfuq081NO2
	 f3uLHRKZw9BHRt0mkI+RxIY8CI1/g7B7i4k4O2YCmGYNoDyz844WxF7H1fvULrk2wt
	 bLv8ZwZjkq9N56PjXXsvRN+wM3iUDq5x5LD7AyQX8uQviI3OOv4R1F6czQxRh5bqX5
	 IbXNjba+SMOVXhrjoi5gvoOzEXMdiu7XGlRCmZbF+lLO2lNx25l1tOZ2SOT5MNUsly
	 gmRivG7MVF9Ng==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Im4Ys5beXAPW; Mon, 25 Jul 2022 14:01:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 879ED41A0D;
	Mon, 25 Jul 2022 14:01:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 879ED41A0D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7DC161BF46A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Jul 2022 15:53:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 52EEC4031D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Jul 2022 15:53:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 52EEC4031D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cytPPkawM_OI for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Jul 2022 15:52:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1A7F7402B1
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1A7F7402B1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Jul 2022 15:52:59 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E196B60DB4;
 Sat, 23 Jul 2022 15:52:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D143C341C0;
 Sat, 23 Jul 2022 15:52:56 +0000 (UTC)
From: James Hogan <jhogan@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Date: Sat, 23 Jul 2022 16:52:52 +0100
Message-ID: <5843458.lOV4Wx5bFT@saruman>
In-Reply-To: <4773114.31r3eYUQgx@saruman>
References: <4752347.31r3eYUQgx@saruman> <875yjv5x3r.fsf@intel.com>
 <4773114.31r3eYUQgx@saruman>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 25 Jul 2022 14:01:46 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1658591577;
 bh=ftoYQmL9PBmbsFUePTp28L14RTp9Kc6/RVyThy5ZVvQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KCEOq9wE5K+IIcX41mr5gM5GYHhB7dzizOFyEsmLDGVXxkhJNu8TmzYjhXh9UX+7z
 e1amPItbkiG/cUvPhlub0La7cUjy4Xu3c5QSz0nYL6XEkWU6c8z135LIQ7z2Kbd4SG
 ECdTKjzvvA+io+pGzRfUqHkYsHoNIDh6L8G2gyHUbqdTAKPAtHQ1EUuIbCoOaual21
 nkTV9Z0z1CcYqP8ltZwyA5fjEjU9yMESVoVK/zl17uw8qZY2FLy3TyhZgsXEtwX04m
 GpqprT3C4j6FhE+TcCXJhS3EdsusJtQdhFCkYVYK1LcAYbzq4/P1IS9bsIkfRbm5g7
 6nKDbH5PL2PJw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=KCEOq9wE
Subject: Re: [Intel-wired-lan] I225-V (igc driver) hangs after resume in
 igc_resume/igc_tsn_reset
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
Cc: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sunday, 17 July 2022 22:40:59 BST James Hogan wrote:
> On Sunday, 17 July 2022 20:59:36 BST you wrote:
> > Hi James,
> > 
> > James Hogan <jhogan@kernel.org> writes:
> > > Hi,
> > > 
> > > I'm getting regular hangs after resume from suspend with the igc driver,
> > > for an I225-V (rev 3) on an MSI Pro Z690-A, with version 5.18.11 on
> > > archlinux. A few stable versions ago it was possible to get the network
> > > back up by removing and reloading the igc driver, however now I get the
> > > following, and only a reboot works (which itself hangs before actually
> > > restarting the machine, and requires a hard reset).
> > 
> > Sorry for the delay. I was travelling.
> 
> No worries
> 
> > I remember seeing some weird behaviors with PCIe PTM and suspend/resume.
> > Specially with onboard controllers.
> 
> It appears that the hardware got itself into a funny state such that
> NetworkManager hung as described more often than not on resume, however
> without changing kernel it has now settled back into the previous behaviour
> of usually working, but occasionally (maybe 1 in 5) the network wouldn't
> come back up on resume, with network related things hung until I unload and
> reload the igc module.
> 
> > Can you see if disabling CONFIG_PCIE_PTM in your kernel config changes
> > anything? (assuming it's enabled)
> 
> It is enabled yes. Okay I'll give it a go when I get the chance. I'll likely
> have to do a bunch of boot and suspend cycles to try and get it back into
> either failure condition.

(sorry somehow dropped others off cc the other day, now adding back)...

I've been running most of this week with 5.18.12-arch1-1, rebuilt with
CONFIG_PCIE_PTM=n, however I have now observed both cases.

It failed to bring up the network link a couple of times after resume from
suspend, and i managed to remove the igc module and reload it to get it going
again.

Another time it failed to come back up, but reloading module didn't help.

I also hit the igc_tsn_reset hang, but this time it was immediately after boot
(possibly a warm reset), where it failed to bring up the network at all. I'll
paste the full backtraces of hung tasks below.

I'm wondering whether, since most of the tasks are stuck trying to acquire a
mutex, the issue is elsewhere. In some past cases though all the tasks that
are dumped are at a mutex_lock...

Cheers
James



INFO: task kworker/u40:13:659 blocked for more than 122 seconds.
      Not tainted 5.18.12-arch1-1 #1  
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:kworker/u40:13  state:D stack:    0 pid:  659 ppid:     2 flags:0x00004000
Workqueue: netns cleanup_net
Call Trace:
 <TASK>
 __schedule+0x37c/0x11f0
 ? schedule+0x4f/0xb0
 ? wq_worker_running+0xe/0x50
 ? schedule_timeout+0x72/0x150
 schedule+0x4f/0xb0
 schedule_preempt_disabled+0x15/0x20
 __mutex_lock.constprop.0+0x2d0/0x480
 default_device_exit_batch+0x38/0x270
 ? synchronize_rcu+0x8b/0xa0
 ? rcu_gp_kthread+0x140/0x140
 cleanup_net+0x221/0x3b0
 process_one_work+0x1c4/0x380
 worker_thread+0x51/0x380
 ? rescuer_thread+0x3a0/0x3a0
 kthread+0xdb/0x110
 ? kthread_complete_and_exit+0x20/0x20
 ret_from_fork+0x1f/0x30
 </TASK>
INFO: task NetworkManager:876 blocked for more than 122 seconds.
      Not tainted 5.18.12-arch1-1 #1  
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:NetworkManager  state:D stack:    0 pid:  876 ppid:     1 flags:0x00004002
Call Trace:
 <TASK>
 __schedule+0x37c/0x11f0
 ? asm_sysvec_apic_timer_interrupt+0x16/0x20
 schedule+0x4f/0xb0
 schedule_preempt_disabled+0x15/0x20
 __mutex_lock.constprop.0+0x2d0/0x480
 ? igc_tsn_reset+0x64/0x100 [igc 9c97d54db6c7f40531170f2b5af74f206f34f4f1]
 igc_resume+0xf6/0x1d0 [igc 9c97d54db6c7f40531170f2b5af74f206f34f4f1]
 pci_pm_runtime_resume+0xab/0xd0 
 ? pci_pm_freeze_noirq+0xe0/0xe0 
 __rpm_callback+0x41/0x160
 rpm_callback+0x35/0x70
 ? pci_pm_freeze_noirq+0xe0/0xe0 
 rpm_resume+0x5e6/0x820
 __pm_runtime_resume+0x4b/0x80
 dev_ethtool+0x128/0x3060
 ? refill_stock+0x1a/0x30
 ? try_charge_memcg+0x779/0x7c0
 ? xa_load+0x8b/0xe0
 ? inet_ioctl+0xdc/0x1e0
 dev_ioctl+0x157/0x520
 sock_do_ioctl+0xd7/0x120
 ? kmem_cache_free+0x189/0x380
 sock_ioctl+0xee/0x330
 ? call_rcu+0xa1/0x290
 __x64_sys_ioctl+0x8e/0xc0
 do_syscall_64+0x5c/0x90
 ? do_syscall_64+0x6b/0x90
 ? syscall_exit_to_user_mode+0x26/0x50
 ? do_syscall_64+0x6b/0x90
 ? syscall_exit_to_user_mode+0x26/0x50
 ? do_syscall_64+0x6b/0x90
 ? syscall_exit_to_user_mode+0x26/0x50
 ? do_syscall_64+0x6b/0x90
 ? do_syscall_64+0x6b/0x90
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x7f128f3077af
RSP: 002b:00007ffc5fc81710 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
RAX: ffffffffffffffda RBX: 00007ffc5fc81a00 RCX: 00007f128f3077af
RDX: 00007ffc5fc81830 RSI: 0000000000008946 RDI: 0000000000000012
RBP: 00007ffc5fc819b0 R08: 0000000000000000 R09: 00007ffc5fc81a08
R10: 0000000000000011 R11: 0000000000000246 R12: 0000000000000000
R13: 00007ffc5fc81830 R14: 00007ffc5fc81810 R15: 00007ffc5fc81810
 </TASK>
INFO: task kdeconnectd:1578 blocked for more than 122 seconds.
      Not tainted 5.18.12-arch1-1 #1
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:kdeconnectd     state:D stack:    0 pid: 1578 ppid:  1351 flags:0x00000006
Call Trace:
 <TASK>
 __schedule+0x37c/0x11f0
 schedule+0x4f/0xb0
 schedule_preempt_disabled+0x15/0x20
 __mutex_lock.constprop.0+0x2d0/0x480
 __netlink_dump_start+0xc5/0x2f0
 ? rtnl_fill_ifinfo+0x1300/0x1300
 rtnetlink_rcv_msg+0x264/0x370
 ? rtnl_fill_ifinfo+0x1300/0x1300
 ? rtnl_calcit.isra.0+0x140/0x140
 netlink_rcv_skb+0x52/0x100
 netlink_unicast+0x240/0x390
 netlink_sendmsg+0x254/0x4b0
 sock_sendmsg+0x5d/0x70
 __sys_sendto+0x117/0x160
 __x64_sys_sendto+0x24/0x30
 do_syscall_64+0x5c/0x90
 ? handle_mm_fault+0xb2/0x280
 ? do_user_addr_fault+0x1db/0x680
 ? exc_page_fault+0x74/0x170
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x7f2f46d136ac
RSP: 002b:00007ffdb8440c00 EFLAGS: 00000246 ORIG_RAX: 000000000000002c
RAX: ffffffffffffffda RBX: 000000000000000b RCX: 00007f2f46d136ac
RDX: 0000000000000020 RSI: 00007ffdb8440cb0 RDI: 000000000000000b
RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00007ffdb8440c80
R13: 00007f2f473ff3b0 R14: 0000564103b1d230 R15: 00007ffdb8440d40
 </TASK>
INFO: task DiscoverNotifie:1603 blocked for more than 122 seconds.
      Not tainted 5.18.12-arch1-1 #1
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:DiscoverNotifie state:D stack:    0 pid: 1603 ppid:  1351 flags:0x00000002
Call Trace:
 <TASK>
 __schedule+0x37c/0x11f0
 schedule+0x4f/0xb0
 schedule_preempt_disabled+0x15/0x20
 __mutex_lock.constprop.0+0x2d0/0x480
 __netlink_dump_start+0xc5/0x2f0
 ? rtnl_fill_ifinfo+0x1300/0x1300
 rtnetlink_rcv_msg+0x264/0x370
 ? rtnl_fill_ifinfo+0x1300/0x1300
 ? rtnl_calcit.isra.0+0x140/0x140
 netlink_rcv_skb+0x52/0x100
 netlink_unicast+0x240/0x390
 netlink_sendmsg+0x254/0x4b0
 sock_sendmsg+0x5d/0x70
 __sys_sendto+0x117/0x160
 __x64_sys_sendto+0x24/0x30
 do_syscall_64+0x5c/0x90
 ? do_user_addr_fault+0x1db/0x680
 ? exc_page_fault+0x74/0x170
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x7f93d55136ac
RSP: 002b:00007ffd2dceece0 EFLAGS: 00000246 ORIG_RAX: 000000000000002c
RAX: ffffffffffffffda RBX: 000000000000000d RCX: 00007f93d55136ac
RDX: 0000000000000020 RSI: 00007ffd2dceed90 RDI: 000000000000000d
RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00007ffd2dceed60
R13: 00007f93d75a43b0 R14: 00007f93c400ae20 R15: 00007ffd2dceee20
 </TASK>
INFO: task packagekitd:1621 blocked for more than 122 seconds.
      Not tainted 5.18.12-arch1-1 #1
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:packagekitd     state:D stack:    0 pid: 1621 ppid:     1 flags:0x00000006
Call Trace:
 <TASK>
 __schedule+0x37c/0x11f0
 schedule+0x4f/0xb0
 schedule_preempt_disabled+0x15/0x20
 __mutex_lock.constprop.0+0x2d0/0x480
 __netlink_dump_start+0xc5/0x2f0
 ? validate_linkmsg+0x130/0x130
 rtnetlink_rcv_msg+0x264/0x370
 ? validate_linkmsg+0x130/0x130
 ? rtnl_calcit.isra.0+0x140/0x140
 netlink_rcv_skb+0x52/0x100
 netlink_unicast+0x240/0x390
 netlink_sendmsg+0x254/0x4b0
 sock_sendmsg+0x5d/0x70
 __sys_sendto+0x117/0x160
 __x64_sys_sendto+0x24/0x30
 do_syscall_64+0x5c/0x90
 ? do_syscall_64+0x6b/0x90
 ? syscall_exit_to_user_mode+0x26/0x50
 ? do_syscall_64+0x6b/0x90
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x7fa7add13660
RSP: 002b:00007ffc2b9d5728 EFLAGS: 00000246 ORIG_RAX: 000000000000002c
RAX: ffffffffffffffda RBX: 0000560775332130 RCX: 00007fa7add13660
RDX: 0000000000000014 RSI: 00007ffc2b9d5780 RDI: 0000000000000005
RBP: 00007ffc2b9d5780 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000004000 R11: 0000000000000246 R12: 0000000000000014
R13: 00007ffc2b9d5950 R14: 0000000000000000 R15: 0000000000000001
 </TASK>
INFO: task vulkaninfo:1756 blocked for more than 122 seconds.
      Not tainted 5.18.12-arch1-1 #1
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:vulkaninfo      state:D stack:    0 pid: 1756 ppid:  1679 flags:0x00000006
Call Trace:
 <TASK>
 __schedule+0x37c/0x11f0
 ? mntput_no_expire+0x4a/0x280
 schedule+0x4f/0xb0
 __pm_runtime_barrier+0xa1/0x160
 ? cpuacct_percpu_seq_show+0x20/0x20
 pm_runtime_barrier+0x4c/0x90
 pci_config_pm_runtime_get+0x3a/0x60
 pci_read_config+0x99/0x2e0
 ? __kmalloc+0x171/0x380
 kernfs_fop_read_iter+0xa7/0x1a0
 new_sync_read+0x137/0x1c0
 vfs_read+0x145/0x190
 ksys_read+0x6f/0xf0
 do_syscall_64+0x5c/0x90
 ? exit_to_user_mode_prepare+0x111/0x140
 ? syscall_exit_to_user_mode+0x26/0x50
 ? do_syscall_64+0x6b/0x90
 ? do_syscall_64+0x6b/0x90
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x7f9b3e301b82
RSP: 002b:00007fff32951908 EFLAGS: 00000246 ORIG_RAX: 0000000000000000
RAX: ffffffffffffffda RBX: 00007fff32951a90 RCX: 00007f9b3e301b82
RDX: 0000000000000030 RSI: 00007fff32951a90 RDI: 0000000000000008
RBP: 0000000000000008 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000030
R13: 0000000000000000 R14: 0000000000000030 R15: 0000000000000030
 </TASK>
INFO: task firefox:1757 blocked for more than 122 seconds.
      Not tainted 5.18.12-arch1-1 #1
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:firefox         state:D stack:    0 pid: 1757 ppid:  1422 flags:0x00000002
Call Trace:
 <TASK>
 __schedule+0x37c/0x11f0
 schedule+0x4f/0xb0
 schedule_preempt_disabled+0x15/0x20
 __mutex_lock.constprop.0+0x2d0/0x480
 ? memcg_slab_post_alloc_hook+0x19e/0x230
 __netlink_dump_start+0xc5/0x2f0
 ? inet_valid_dump_ifaddr_req.constprop.0+0x1d0/0x1d0
 rtnetlink_rcv_msg+0x264/0x370
 ? inet_valid_dump_ifaddr_req.constprop.0+0x1d0/0x1d0
 ? rtnl_calcit.isra.0+0x140/0x140
 netlink_rcv_skb+0x52/0x100
 netlink_unicast+0x240/0x390
 netlink_sendmsg+0x254/0x4b0
 sock_sendmsg+0x5d/0x70
 __sys_sendto+0x117/0x160
 __x64_sys_sendto+0x24/0x30
 do_syscall_64+0x5c/0x90
 ? syscall_exit_to_user_mode+0x26/0x50
 ? do_syscall_64+0x6b/0x90
 ? syscall_exit_to_user_mode+0x26/0x50
 ? do_syscall_64+0x6b/0x90
 ? do_syscall_64+0x6b/0x90
 ? do_syscall_64+0x6b/0x90
 ? exc_page_fault+0x74/0x170
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x7fbcbb513814
RSP: 002b:00007fff67d31230 EFLAGS: 00000293 ORIG_RAX: 000000000000002c
RAX: ffffffffffffffda RBX: 00007fbcabc52b80 RCX: 00007fbcbb513814
RDX: 0000000000000018 RSI: 00007fbcabc82e60 RDI: 000000000000000b
RBP: 0000000000000000 R08: 00007fff67d312e0 R09: 0000000000000080
R10: 0000000000000000 R11: 0000000000000293 R12: 000000000367d10b
R13: 0000000000000001 R14: 00007fbcabc17100 R15: 0000000000000000
 </TASK>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
