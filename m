Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A3980410A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Dec 2023 22:41:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 56BB940354;
	Mon,  4 Dec 2023 21:41:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 56BB940354
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701726092;
	bh=XaccIYyozSawOtM808k+ZVRsNaUP6qcIt5zgDbzZkLQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=opNypiWuHIUBSU2ARKqFi2yTkurJG5JywPRaN5ik0KyiZNPxww1fBS0r0hXUOA32b
	 jjS08XaHNV1DM7uzXH8LoOBXI+IgtjIE88XokdzTLii8uOipJS5f/+t2CfK9C5cfnH
	 rHUie/wyKm1RI4wy5N9WwfZuzRTMBNAvbUc5sgZ9oidmCZNKeFx2sep6kUPgQCLWb2
	 lre1D19a87JW1choP29zvPW1S05LB2oXypgC03fyZB/jC20H6k5hSOEwvY0iR89oP1
	 MFkSjNJTMMmrtS9nAqIorQom0UJvdlf/hVf2nWLpjLjjGwFNgqt/KY0rrwRyUX+5s9
	 BYF1GzpI9E8JQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id txJfGHfTqVRh; Mon,  4 Dec 2023 21:41:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0076040151;
	Mon,  4 Dec 2023 21:41:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0076040151
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 58FE71BF30E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 21:17:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3C2226100C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 21:17:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C2226100C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y6IiFlVz2XqI for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Dec 2023 21:17:15 +0000 (UTC)
Received: from mail1.merlins.org (magic.merlins.org [209.81.13.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 98EC261056
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 21:17:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 98EC261056
Received: from c-76-132-34-178.hsd1.ca.comcast.net ([76.132.34.178]:38464
 helo=sauron.svh.merlins.org) by mail1.merlins.org with esmtpsa 
 (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim
 4.94.2 #2)
 id 1rAFfy-0000Vr-60 by authid <merlins.org> with srv_auth_plain;
 Mon, 04 Dec 2023 12:36:22 -0800
Received: from merlin by sauron.svh.merlins.org with local (Exim 4.92)
 (envelope-from <marc@merlins.org>)
 id 1rAFfy-000W2T-0u; Mon, 04 Dec 2023 12:36:22 -0800
Date: Mon, 4 Dec 2023 12:36:22 -0800
From: Marc MERLIN <marc@merlins.org>
To: Johannes Berg <johannes@sipsolutions.net>
Message-ID: <20231204203622.GB9330@merlins.org>
References: <20231204200710.40c291e60cea.I2deb5804ef1739a2af307283d320ef7d82456494@changeid>
 <20231204200038.GA9330@merlins.org>
 <a6ac887f7ce8af0235558752d0c781b817f1795a.camel@sipsolutions.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a6ac887f7ce8af0235558752d0c781b817f1795a.camel@sipsolutions.net>
X-Sysadmin: BOFH
X-URL: http://marc.merlins.org/
X-SA-Exim-Connect-IP: 76.132.34.178
X-SA-Exim-Mail-From: marc@merlins.org
X-Mailman-Approved-At: Mon, 04 Dec 2023 21:41:23 +0000
Subject: Re: [Intel-wired-lan] [RFC PATCH] net: ethtool: do runtime PM
 outside RTNL
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
Cc: Johannes Berg <johannes.berg@intel.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

I'll re-add the list since I'm adding details that may matter to others

On Mon, Dec 04, 2023 at 09:01:58PM +0100, Johannes Berg wrote:
> On Mon, 2023-12-04 at 12:00 -0800, Marc MERLIN wrote:
> > Thanks for that, will try this now instead of the 2 line patch you
> > suggested in the list. I can repro this quickly so I'll let you know if
> > it helps.
> 
> You can probably just do any ethtool command instead of waiting for
> powertop to do it ... :)
 
powertop is indeed one of the triggers, but things do hang without me
running powertop.  I suppose I could also remove the ethtool binary
as a dirty workaround, at least for testing.
I'll try that after testing your patch if it does not help.

> > I do have ethernet on that laptop, I only use it rarely, so I can live
> > if it's broken for now as long as wifi works.
> 
> Then you can just blacklist igc I guess, and if you have wifi problems
> I'm actually the right person ;-)

So, ipc is not a module for me
sauron:/usr/src/linux-6.6.4-amd64-preempt-sysrq-20231203# lsmod | grep ipc
sauron:/usr/src/linux-6.6.4-amd64-preempt-sysrq-20231203# 

Is that a build config option I can reaonably turn off without breaking
networking altogether?

Previous boot, before your patch that I just compiled and will test now, 
it ended with this. I also see ethtool lower down, maybe run randomly by network manager
but isn't the hang happening before in these loglines, or the order of the logs is not
the actual sequence order of the problem?

[ 4230.596282] INFO: task kworker/0:2:132 blocked for more than 120 seconds.
[ 4230.596288]       Tainted: G     U             6.6.4-amd64-preempt-sysrq-20231203 #5
[ 4230.596289] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
[ 4230.596291] task:kworker/0:2     state:D stack:0     pid:132   ppid:2      flags:0x00004000
[ 4230.596294] Workqueue: ipv6_addrconf addrconf_verify_work
[ 4230.596305] Call Trace:
[ 4230.596310]  <TASK>
[ 4230.596317]  __schedule+0x6c3/0x727
[ 4230.596330]  ? update_load_avg+0x43/0x3ba
[ 4230.596340]  schedule+0x8b/0xbc
[ 4230.596349]  schedule_preempt_disabled+0x11/0x1d
[ 4230.596359]  __mutex_lock.constprop.0+0x18b/0x291
[ 4230.596367]  addrconf_verify_work+0xe/0x20
[ 4230.596375]  process_scheduled_works+0x1da/0x2e0
[ 4230.596387]  worker_thread+0x1ca/0x224
[ 4230.596397]  ? __pfx_worker_thread+0x40/0x40
[ 4230.596407]  kthread+0xe9/0xf4
[ 4230.596415]  ? __pfx_kthread+0x40/0x40
[ 4230.596422]  ret_from_fork+0x21/0x38
[ 4230.596431]  ? __pfx_kthread+0x40/0x40
[ 4230.596438]  ret_from_fork_asm+0x1b/0x80
[ 4230.596446]  </TASK>
[ 4230.596450] INFO: task kworker/9:2:389 blocked for more than 120 seconds.
[ 4230.596451]       Tainted: G     U             6.6.4-amd64-preempt-sysrq-20231203 #5
[ 4230.596452] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
[ 4230.596453] task:kworker/9:2     state:D stack:0     pid:389   ppid:2      flags:0x00004000
[ 4230.596455] Workqueue: ipv6_addrconf addrconf_verify_work
[ 4230.596457] Call Trace:
[ 4230.596458]  <TASK>
[ 4230.596459]  __schedule+0x6c3/0x727
[ 4230.596461]  ? update_load_avg+0x392/0x3ba
[ 4230.596462]  schedule+0x8b/0xbc
[ 4230.596464]  schedule_preempt_disabled+0x11/0x1d
[ 4230.596466]  __mutex_lock.constprop.0+0x18b/0x291
[ 4230.596467]  addrconf_verify_work+0xe/0x20
[ 4230.596469]  process_scheduled_works+0x1da/0x2e0
[ 4230.596471]  worker_thread+0x1ca/0x224
[ 4230.596473]  ? __pfx_worker_thread+0x40/0x40
[ 4230.596475]  kthread+0xe9/0xf4
[ 4230.596477]  ? __pfx_kthread+0x40/0x40
[ 4230.596478]  ret_from_fork+0x21/0x38
[ 4230.596480]  ? __pfx_kthread+0x40/0x40
[ 4230.596481]  ret_from_fork_asm+0x1b/0x80
[ 4230.596483]  </TASK>
[ 4230.596506] INFO: task NetworkManager:3153 blocked for more than 120 seconds.
[ 4230.596507]       Tainted: G     U             6.6.4-amd64-preempt-sysrq-20231203 #5
[ 4230.596508] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
[ 4230.596509] task:NetworkManager  state:D stack:0     pid:3153  ppid:1      flags:0x00000002
[ 4230.596511] Call Trace:
[ 4230.596512]  <TASK>
[ 4230.596513]  __schedule+0x6c3/0x727
[ 4230.596515]  schedule+0x8b/0xbc
[ 4230.596517]  schedule_preempt_disabled+0x11/0x1d
[ 4230.596519]  __mutex_lock.constprop.0+0x18b/0x291
[ 4230.596521]  nl80211_prepare_wdev_dump+0x8b/0x19f [cfg80211 7e4322db9148b7482d4806580d3e58073444690f]
[ 4230.596563]  nl80211_dump_station+0x49/0x1d0 [cfg80211 7e4322db9148b7482d4806580d3e58073444690f]
[ 4230.596589]  ? __alloc_pages+0x131/0x1e8
[ 4230.596592]  ? __mod_lruvec_page_state+0x4c/0x86
[ 4230.596595]  ? mod_lruvec_page_state.constprop.0+0x1c/0x2e
[ 4230.596597]  ? __kmalloc_large_node+0xd5/0xfb
[ 4230.596599]  ? __alloc_skb+0xad/0x148
[ 4230.596602]  ? __kmalloc_node_track_caller+0x5b/0xb2
[ 4230.596604]  ? kmalloc_reserve+0xab/0xe6
[ 4230.596605]  genl_dumpit+0x32/0x4d
[ 4230.596608]  netlink_dump+0x143/0x2b2
[ 4230.596611]  __netlink_dump_start+0x145/0x197
[ 4230.596613]  genl_family_rcv_msg_dumpit+0xa3/0xd1
[ 4230.596615]  ? __pfx_genl_start+0x40/0x40
[ 4230.596617]  ? __pfx_genl_dumpit+0x40/0x40
[ 4230.596619]  ? __pfx_genl_done+0x40/0x40
[ 4230.596621]  genl_rcv_msg+0x1a0/0x1f2
[ 4230.596623]  ? __pfx_nl80211_dump_station+0x40/0x40 [cfg80211 7e4322db9148b7482d4806580d3e58073444690f]
[ 4230.596651]  ? __pfx_genl_rcv_msg+0x40/0x40
[ 4230.596653]  netlink_rcv_skb+0x89/0xe3
[ 4230.596655]  genl_rcv+0x24/0x31
[ 4230.596657]  netlink_unicast+0x114/0x1b4
[ 4230.596659]  netlink_sendmsg+0x321/0x361
[ 4230.596661]  sock_sendmsg_nosec+0x46/0x70
[ 4230.596664]  ____sys_sendmsg+0x144/0x1f5
[ 4230.596666]  ___sys_sendmsg+0x76/0xb3
[ 4230.596668]  ? __pfx_pollwake+0x40/0x40
[ 4230.596671]  ? __fget+0x38/0x47
[ 4230.596673]  __sys_sendmsg+0x60/0x97
[ 4230.596675]  do_syscall_64+0x7e/0xa7
[ 4230.596678]  ? __x64_sys_epoll_wait+0x45/0x69
[ 4230.596681]  ? syscall_exit_to_user_mode+0x26/0x2c
[ 4230.596682]  ? do_syscall_64+0x9d/0xa7
[ 4230.596684]  ? exit_to_user_mode_prepare+0xef/0x11c
[ 4230.596687]  ? syscall_exit_to_user_mode+0x26/0x2c
[ 4230.596688]  ? do_syscall_64+0x9d/0xa7
[ 4230.596690]  ? do_syscall_64+0x9d/0xa7
[ 4230.596692]  ? __x64_sys_epoll_wait+0x45/0x69
[ 4230.596694]  ? syscall_exit_to_user_mode+0x26/0x2c
[ 4230.596695]  ? do_syscall_64+0x9d/0xa7
[ 4230.596697]  ? do_syscall_64+0x9d/0xa7
[ 4230.596699]  ? do_syscall_64+0x9d/0xa7
[ 4230.596701]  entry_SYSCALL_64_after_hwframe+0x6e/0xd8
[ 4230.596703] RIP: 0033:0x7f5d1754d9bd
[ 4230.596705] RSP: 002b:00007ffffdfefb50 EFLAGS: 00000293 ORIG_RAX: 000000000000002e
[ 4230.596707] RAX: ffffffffffffffda RBX: 000055948809bdc0 RCX: 00007f5d1754d9bd
[ 4230.596708] RDX: 0000000000000000 RSI: 00007ffffdfefba0 RDI: 000000000000000b
[ 4230.596709] RBP: 00007ffffdfefba0 R08: 0000000000000000 R09: 0000000000000300
[ 4230.596710] R10: 0000000000000000 R11: 0000000000000293 R12: 00007ffffdfefc80
[ 4230.596711] R13: 00007f5d0c0038a0 R14: 00007ffffdfefeb0 R15: 00005594882d0180
[ 4230.596713]  </TASK>
[ 4230.596743] INFO: task ThreadPoolForeg:9425 blocked for more than 120 seconds.
[ 4230.596745]       Tainted: G     U             6.6.4-amd64-preempt-sysrq-20231203 #5
[ 4230.596745] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
[ 4230.596746] task:ThreadPoolForeg state:D stack:0     pid:9425  ppid:9416   flags:0x00000002
[ 4230.596748] Call Trace:
[ 4230.596749]  <TASK>
[ 4230.596750]  __schedule+0x6c3/0x727
[ 4230.596752]  schedule+0x8b/0xbc
[ 4230.596754]  schedule_preempt_disabled+0x11/0x1d
[ 4230.596756]  __mutex_lock.constprop.0+0x18b/0x291
[ 4230.596758]  ? __pfx_ioctl_standard_call+0x40/0x40
[ 4230.596760]  ? __pfx_ioctl_private_call+0x40/0x40
[ 4230.596762]  wext_ioctl_dispatch+0x4b/0x1a7
[ 4230.596764]  wext_handle_ioctl+0x6f/0xbd
[ 4230.596766]  sock_ioctl+0xc2/0x2c4
[ 4230.596767]  ? alloc_file_pseudo+0xba/0x103
[ 4230.596769]  vfs_ioctl+0x23/0x38
[ 4230.596772]  __do_sys_ioctl+0x63/0x8a
[ 4230.596774]  do_syscall_64+0x7e/0xa7
[ 4230.596776]  ? syscall_exit_to_user_mode+0x26/0x2c
[ 4230.596777]  ? do_syscall_64+0x9d/0xa7
[ 4230.596779]  ? vfs_ioctl+0x23/0x38
[ 4230.596780]  ? __do_sys_ioctl+0x75/0x8a
[ 4230.596782]  ? syscall_exit_to_user_mode+0x26/0x2c
[ 4230.596783]  ? do_syscall_64+0x9d/0xa7
[ 4230.596785]  ? __sys_socket+0xa8/0xdb
[ 4230.596787]  ? syscall_exit_to_user_mode+0x26/0x2c
[ 4230.596788]  ? do_syscall_64+0x9d/0xa7
[ 4230.596790]  ? do_syscall_64+0x9d/0xa7
[ 4230.596792]  ? exc_page_fault+0x122/0x146
[ 4230.596794]  entry_SYSCALL_64_after_hwframe+0x6e/0xd8
[ 4230.596795] RIP: 0033:0x7fe7d4f2dbab
[ 4230.596796] RSP: 002b:00007fe7d0bfb8d0 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
[ 4230.596798] RAX: ffffffffffffffda RBX: 00001e3005e47740 RCX: 00007fe7d4f2dbab
[ 4230.596799] RDX: 00007fe7d0bfbac0 RSI: 0000000000008b01 RDI: 000000000000002d
[ 4230.596800] RBP: 00007fe7d0bfbb10 R08: 0000000000000008 R09: 00001e30000212b8
[ 4230.596801] R10: 0000000000000011 R11: 0000000000000246 R12: 00007fe7d0bfb990
[ 4230.596801] R13: 00007fe7d0bfbac0 R14: 00001e3001692600 R15: 000000000000002d
[ 4230.596803]  </TASK>
[ 4230.596890] INFO: task ethtool:20272 blocked for more than 120 seconds.
[ 4230.596891]       Tainted: G     U             6.6.4-amd64-preempt-sysrq-20231203 #5
[ 4230.596892] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
[ 4230.596893] task:ethtool         state:D stack:0     pid:20272 ppid:1      flags:0x00004006
[ 4230.596894] Call Trace:
[ 4230.596895]  <TASK>
[ 4230.596896]  __schedule+0x6c3/0x727
[ 4230.596899]  schedule+0x8b/0xbc
[ 4230.596900]  schedule_preempt_disabled+0x11/0x1d
[ 4230.596902]  __mutex_lock.constprop.0+0x18b/0x291
[ 4230.596904]  ? __pfx_pci_pm_runtime_resume+0x40/0x40
[ 4230.596908]  igc_resume+0x18b/0x1ca [igc 33cdaa7f35d000f01945bed5e87cab1e358c8327]
[ 4230.596916]  __rpm_callback+0x7a/0xe7
[ 4230.596919]  rpm_callback+0x35/0x64
[ 4230.596921]  ? __pfx_pci_pm_runtime_resume+0x40/0x40
[ 4230.596922]  rpm_resume+0x342/0x44a
[ 4230.596924]  ? dev_get_by_name_rcu+0x25/0x41
[ 4230.596926]  ? dev_get_by_name+0x3c/0x4a
[ 4230.596928]  __pm_runtime_resume+0x5a/0x7a
[ 4230.596930]  ethnl_ops_begin+0x2c/0x8d
[ 4230.596932]  ethnl_default_set_doit+0xdf/0x160
[ 4230.596934]  genl_family_rcv_msg_doit+0xc7/0x132
[ 4230.596936]  genl_rcv_msg+0x1b9/0x1f2
[ 4230.596938]  ? __pfx_ethnl_default_set_doit+0x40/0x40
[ 4230.596940]  ? __pfx_genl_rcv_msg+0x40/0x40
[ 4230.596942]  netlink_rcv_skb+0x89/0xe3
[ 4230.596944]  genl_rcv+0x24/0x31
[ 4230.596946]  netlink_unicast+0x114/0x1b4
[ 4230.596947]  netlink_sendmsg+0x321/0x361
[ 4230.596949]  sock_sendmsg_nosec+0x46/0x70
[ 4230.596951]  __sys_sendto+0xe7/0x126
[ 4230.596954]  ? syscall_trace_enter.constprop.0+0x58/0x110
[ 4230.596956]  ? __handle_mm_fault+0x4e9/0x5ba
[ 4230.596958]  __x64_sys_sendto+0x25/0x2c
[ 4230.596959]  do_syscall_64+0x7e/0xa7
[ 4230.596961]  ? cgroup_rstat_updated+0x21/0xa5
[ 4230.596964]  ? memcg_rstat_updated+0x16/0x62
[ 4230.596966]  ? count_memcg_event_mm+0x44/0x5e
[ 4230.596968]  ? handle_mm_fault+0x1f0/0x275
[ 4230.596969]  ? do_user_addr_fault+0x28f/0x4fb
[ 4230.596972]  ? exc_page_fault+0x122/0x146
[ 4230.596974]  entry_SYSCALL_64_after_hwframe+0x6e/0xd8
[ 4230.596976] RIP: 0033:0x7f0252929a23
[ 4230.596977] RSP: 002b:00007ffc839efeb8 EFLAGS: 00000202 ORIG_RAX: 000000000000002c
[ 4230.596978] RAX: ffffffffffffffda RBX: 0000559002fc1430 RCX: 00007f0252929a23
[ 4230.596979] RDX: 0000000000000030 RSI: 0000559002fc3510 RDI: 0000000000000003
[ 4230.596980] RBP: 0000000000000002 R08: 00007f0252a03be0 R09: 000000000000000c
[ 4230.596981] R10: 0000000000000000 R11: 0000000000000202 R12: 0000559002fb1340
[ 4230.596982] R13: 0000559002fc34d0 R14: 000055900242d400 R15: 0000559002fb1330
[ 4230.596983]  </TASK>
[ 4230.596984] INFO: task ifconfig:20322 blocked for more than 120 seconds.
[ 4230.596985]       Tainted: G     U             6.6.4-amd64-preempt-sysrq-20231203 #5
[ 4230.596986] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
[ 4230.596987] task:ifconfig        state:D stack:0     pid:20322 ppid:20310  flags:0x00000002
[ 4230.596989] Call Trace:
[ 4230.596990]  <TASK>
[ 4230.596990]  __schedule+0x6c3/0x727
[ 4230.596992]  ? dput+0x45/0x13f
[ 4230.596995]  schedule+0x8b/0xbc
[ 4230.596996]  schedule_preempt_disabled+0x11/0x1d
[ 4230.596998]  __mutex_lock.constprop.0+0x18b/0x291
[ 4230.597000]  ? security_capable+0x3b/0x59
[ 4230.597003]  devinet_ioctl+0xfe/0x5dd
[ 4230.597005]  inet_ioctl+0x158/0x1b7
[ 4230.597007]  ? dev_get_flags+0x4a/0x6f
[ 4230.597009]  ? dev_ioctl+0x330/0x464
[ 4230.597011]  ? _copy_to_user+0x15/0x3c
[ 4230.597013]  ? put_user_ifreq+0x2a/0x3d
[ 4230.597015]  sock_do_ioctl+0x39/0xd8
[ 4230.597018]  sock_ioctl+0x29b/0x2c4
[ 4230.597019]  ? exit_to_user_mode_prepare+0xb5/0x11c
[ 4230.597021]  vfs_ioctl+0x23/0x38
[ 4230.597023]  __do_sys_ioctl+0x63/0x8a
[ 4230.597025]  do_syscall_64+0x7e/0xa7
[ 4230.597027]  ? exit_to_user_mode_prepare+0xb5/0x11c
[ 4230.597029]  ? syscall_exit_to_user_mode+0x26/0x2c
[ 4230.597030]  ? do_syscall_64+0x9d/0xa7
[ 4230.597032]  ? exc_page_fault+0x122/0x146
[ 4230.597034]  entry_SYSCALL_64_after_hwframe+0x6e/0xd8
[ 4230.597036] RIP: 0033:0x7fd707153bab
[ 4230.597037] RSP: 002b:00007ffe0cbee900 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
[ 4230.597038] RAX: ffffffffffffffda RBX: 00007ffe0cbeea40 RCX: 00007fd707153bab
[ 4230.597039] RDX: 00007ffe0cbee960 RSI: 0000000000008914 RDI: 0000000000000003
[ 4230.597040] RBP: 0000000000000003 R08: 000000000000000a R09: 0000000000000000
[ 4230.597041] R10: 00007fd70706d358 R11: 0000000000000246 R12: 00000000fffffffe
[ 4230.597042] R13: 0000000000000000 R14: 00007ffe0cbeeed0 R15: 0000000000000064
[ 4230.597043]  </TASK>
[ 4342.824939] snd_hda_intel 0000:00:1f.3: power state changed by ACPI to D0
[ 4342.824946] snd_hda_intel 0000:00:1f.3: ACPI _REG connect evaluation failed (5)
[ 4342.836199] snd_hda_intel 0000:00:1f.3: PME# disabled
[ 4342.836260] i915 0000:00:02.0: vgaarb: __vga_tryget: 1
[ 4342.836263] i915 0000:00:02.0: vgaarb: __vga_tryget: owns: 3
[ 4342.836266] i915 0000:00:02.0: vgaarb: __vga_put
[ 4351.428130] INFO: task kworker/0:2:132 blocked for more than 241 seconds.
[ 4351.428136]       Tainted: G     U             6.6.4-amd64-preempt-sysrq-20231203 #5
[ 4351.428138] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
[ 4351.428139] task:kworker/0:2     state:D stack:0     pid:132   ppid:2      flags:0x00004000
[ 4351.428142] Workqueue: ipv6_addrconf addrconf_verify_work
[ 4351.428148] Call Trace:
[ 4351.428150]  <TASK>
[ 4351.428152]  __schedule+0x6c3/0x727
[ 4351.428156]  ? update_load_avg+0x43/0x3ba
[ 4351.428159]  schedule+0x8b/0xbc
[ 4351.428161]  schedule_preempt_disabled+0x11/0x1d
[ 4351.428163]  __mutex_lock.constprop.0+0x18b/0x291
[ 4351.428165]  addrconf_verify_work+0xe/0x20
[ 4351.428167]  process_scheduled_works+0x1da/0x2e0
[ 4351.428171]  worker_thread+0x1ca/0x224
[ 4351.428173]  ? __pfx_worker_thread+0x40/0x40
[ 4351.428175]  kthread+0xe9/0xf4
[ 4351.428177]  ? __pfx_kthread+0x40/0x40
[ 4351.428179]  ret_from_fork+0x21/0x38
[ 4351.428182]  ? __pfx_kthread+0x40/0x40
[ 4351.428183]  ret_from_fork_asm+0x1b/0x80
[ 4351.428187]  </TASK>
[ 4351.428191] INFO: task kworker/9:2:389 blocked for more than 241 seconds.
[ 4351.428192]       Tainted: G     U             6.6.4-amd64-preempt-sysrq-20231203 #5
[ 4351.428193] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
[ 4351.428194] task:kworker/9:2     state:D stack:0     pid:389   ppid:2      flags:0x00004000
[ 4351.428196] Workqueue: ipv6_addrconf addrconf_verify_work
[ 4351.428198] Call Trace:
[ 4351.428199]  <TASK>
[ 4351.428200]  __schedule+0x6c3/0x727
[ 4351.428201]  ? update_load_avg+0x392/0x3ba
[ 4351.428203]  schedule+0x8b/0xbc
[ 4351.428205]  schedule_preempt_disabled+0x11/0x1d
[ 4351.428207]  __mutex_lock.constprop.0+0x18b/0x291
[ 4351.428208]  addrconf_verify_work+0xe/0x20
[ 4351.428210]  process_scheduled_works+0x1da/0x2e0
[ 4351.428212]  worker_thread+0x1ca/0x224
[ 4351.428214]  ? __pfx_worker_thread+0x40/0x40
[ 4351.428216]  kthread+0xe9/0xf4
[ 4351.428218]  ? __pfx_kthread+0x40/0x40
[ 4351.428219]  ret_from_fork+0x21/0x38
[ 4351.428221]  ? __pfx_kthread+0x40/0x40
[ 4351.428222]  ret_from_fork_asm+0x1b/0x80
[ 4351.428224]  </TASK>
[ 4351.428247] INFO: task NetworkManager:3153 blocked for more than 241 seconds.
[ 4351.428248]       Tainted: G     U             6.6.4-amd64-preempt-sysrq-20231203 #5
[ 4351.428249] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
[ 4351.428250] task:NetworkManager  state:D stack:0     pid:3153  ppid:1      flags:0x00000002
[ 4351.428252] Call Trace:
[ 4351.428253]  <TASK>
[ 4351.428253]  __schedule+0x6c3/0x727
[ 4351.428256]  schedule+0x8b/0xbc
[ 4351.428257]  schedule_preempt_disabled+0x11/0x1d
[ 4351.428259]  __mutex_lock.constprop.0+0x18b/0x291
[ 4351.428262]  nl80211_prepare_wdev_dump+0x8b/0x19f [cfg80211 7e4322db9148b7482d4806580d3e58073444690f]
[ 4351.428301]  nl80211_dump_station+0x49/0x1d0 [cfg80211 7e4322db9148b7482d4806580d3e58073444690f]
[ 4351.428328]  ? __alloc_pages+0x131/0x1e8
[ 4351.428330]  ? __mod_lruvec_page_state+0x4c/0x86
[ 4351.428333]  ? mod_lruvec_page_state.constprop.0+0x1c/0x2e
[ 4351.428335]  ? __kmalloc_large_node+0xd5/0xfb
[ 4351.428337]  ? __alloc_skb+0xad/0x148
[ 4351.428340]  ? __kmalloc_node_track_caller+0x5b/0xb2
[ 4351.428342]  ? kmalloc_reserve+0xab/0xe6
[ 4351.428344]  genl_dumpit+0x32/0x4d
[ 4351.428347]  netlink_dump+0x143/0x2b2
[ 4351.428349]  __netlink_dump_start+0x145/0x197
[ 4351.428351]  genl_family_rcv_msg_dumpit+0xa3/0xd1
[ 4351.428353]  ? __pfx_genl_start+0x40/0x40
[ 4351.428355]  ? __pfx_genl_dumpit+0x40/0x40
[ 4351.428357]  ? __pfx_genl_done+0x40/0x40
[ 4351.428359]  genl_rcv_msg+0x1a0/0x1f2
[ 4351.428361]  ? __pfx_nl80211_dump_station+0x40/0x40 [cfg80211 7e4322db9148b7482d4806580d3e58073444690f]
[ 4351.428387]  ? __pfx_genl_rcv_msg+0x40/0x40
[ 4351.428389]  netlink_rcv_skb+0x89/0xe3
[ 4351.428391]  genl_rcv+0x24/0x31
[ 4351.428393]  netlink_unicast+0x114/0x1b4
[ 4351.428395]  netlink_sendmsg+0x321/0x361
[ 4351.428397]  sock_sendmsg_nosec+0x46/0x70
[ 4351.428400]  ____sys_sendmsg+0x144/0x1f5
[ 4351.428402]  ___sys_sendmsg+0x76/0xb3
[ 4351.428404]  ? __pfx_pollwake+0x40/0x40
[ 4351.428407]  ? __fget+0x38/0x47
[ 4351.428409]  __sys_sendmsg+0x60/0x97
[ 4351.428411]  do_syscall_64+0x7e/0xa7
[ 4351.428414]  ? __x64_sys_epoll_wait+0x45/0x69
[ 4351.428416]  ? syscall_exit_to_user_mode+0x26/0x2c
[ 4351.428418]  ? do_syscall_64+0x9d/0xa7
[ 4351.428420]  ? exit_to_user_mode_prepare+0xef/0x11c
[ 4351.428423]  ? syscall_exit_to_user_mode+0x26/0x2c
[ 4351.428424]  ? do_syscall_64+0x9d/0xa7
[ 4351.428426]  ? do_syscall_64+0x9d/0xa7
[ 4351.428428]  ? __x64_sys_epoll_wait+0x45/0x69
[ 4351.428430]  ? syscall_exit_to_user_mode+0x26/0x2c
[ 4351.428431]  ? do_syscall_64+0x9d/0xa7
[ 4351.428433]  ? do_syscall_64+0x9d/0xa7
[ 4351.428434]  ? do_syscall_64+0x9d/0xa7
[ 4351.428436]  entry_SYSCALL_64_after_hwframe+0x6e/0xd8
[ 4351.428439] RIP: 0033:0x7f5d1754d9bd
[ 4351.428441] RSP: 002b:00007ffffdfefb50 EFLAGS: 00000293 ORIG_RAX: 000000000000002e
[ 4351.428443] RAX: ffffffffffffffda RBX: 000055948809bdc0 RCX: 00007f5d1754d9bd
[ 4351.428444] RDX: 0000000000000000 RSI: 00007ffffdfefba0 RDI: 000000000000000b
[ 4351.428445] RBP: 00007ffffdfefba0 R08: 0000000000000000 R09: 0000000000000300
[ 4351.428446] R10: 0000000000000000 R11: 0000000000000293 R12: 00007ffffdfefc80
[ 4351.428447] R13: 00007f5d0c0038a0 R14: 00007ffffdfefeb0 R15: 00005594882d0180
[ 4351.428449]  </TASK>
[ 4351.428478] INFO: task ThreadPoolForeg:9425 blocked for more than 241 seconds.
[ 4351.428479]       Tainted: G     U             6.6.4-amd64-preempt-sysrq-20231203 #5
[ 4351.428480] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
[ 4351.428481] task:ThreadPoolForeg state:D stack:0     pid:9425  ppid:9416   flags:0x00000002
[ 4351.428483] Call Trace:
[ 4351.428484]  <TASK>
[ 4351.428485]  __schedule+0x6c3/0x727
[ 4351.428487]  schedule+0x8b/0xbc
[ 4351.428489]  schedule_preempt_disabled+0x11/0x1d
[ 4351.428491]  __mutex_lock.constprop.0+0x18b/0x291
[ 4351.428492]  ? __pfx_ioctl_standard_call+0x40/0x40
[ 4351.428495]  ? __pfx_ioctl_private_call+0x40/0x40
[ 4351.428497]  wext_ioctl_dispatch+0x4b/0x1a7
[ 4351.428499]  wext_handle_ioctl+0x6f/0xbd
[ 4351.428501]  sock_ioctl+0xc2/0x2c4
[ 4351.428503]  ? alloc_file_pseudo+0xba/0x103
[ 4351.428504]  vfs_ioctl+0x23/0x38
[ 4351.428507]  __do_sys_ioctl+0x63/0x8a
[ 4351.428509]  do_syscall_64+0x7e/0xa7
[ 4351.428511]  ? syscall_exit_to_user_mode+0x26/0x2c
[ 4351.428512]  ? do_syscall_64+0x9d/0xa7
[ 4351.428514]  ? vfs_ioctl+0x23/0x38
[ 4351.428516]  ? __do_sys_ioctl+0x75/0x8a
[ 4351.428517]  ? syscall_exit_to_user_mode+0x26/0x2c
[ 4351.428519]  ? do_syscall_64+0x9d/0xa7
[ 4351.428521]  ? __sys_socket+0xa8/0xdb
[ 4351.428522]  ? syscall_exit_to_user_mode+0x26/0x2c
[ 4351.428523]  ? do_syscall_64+0x9d/0xa7
[ 4351.428525]  ? do_syscall_64+0x9d/0xa7
[ 4351.428527]  ? exc_page_fault+0x122/0x146
[ 4351.428529]  entry_SYSCALL_64_after_hwframe+0x6e/0xd8
[ 4351.428531] RIP: 0033:0x7fe7d4f2dbab
[ 4351.428531] RSP: 002b:00007fe7d0bfb8d0 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
[ 4351.428533] RAX: ffffffffffffffda RBX: 00001e3005e47740 RCX: 00007fe7d4f2dbab
[ 4351.428534] RDX: 00007fe7d0bfbac0 RSI: 0000000000008b01 RDI: 000000000000002d
[ 4351.428535] RBP: 00007fe7d0bfbb10 R08: 0000000000000008 R09: 00001e30000212b8
[ 4351.428536] R10: 0000000000000011 R11: 0000000000000246 R12: 00007fe7d0bfb990
[ 4351.428537] R13: 00007fe7d0bfbac0 R14: 00001e3001692600 R15: 000000000000002d
[ 4351.428538]  </TASK>
[ 4351.428539] Future hung task reports are suppressed, see sysctl kernel.hung_task_warnings

If that helps, 2 boots ago, before your patch, things ended up in a loop
of these:
[36019.307346] xhci_hcd 0000:00:0d.0: ACPI _REG connect evaluation failed (5)
[36019.320969] xhci_hcd 0000:00:0d.0: PME# disabled
[36019.322001] xhci_hcd 0000:00:0d.0: enabling bus mastering
[36019.349811] xhci_hcd 0000:00:0d.0: save config 0x00: 0x9a178086
[36019.350822] xhci_hcd 0000:00:0d.0: save config 0x04: 0x02900402
[36019.351812] xhci_hcd 0000:00:0d.0: save config 0x08: 0x0c033005
[36019.352807] xhci_hcd 0000:00:0d.0: save config 0x0c: 0x00800000
[36019.353820] xhci_hcd 0000:00:0d.0: save config 0x10: 0x4d170004
[36019.354820] xhci_hcd 0000:00:0d.0: save config 0x14: 0x00000064
[36019.355815] xhci_hcd 0000:00:0d.0: save config 0x18: 0x00000000
[36019.356808] xhci_hcd 0000:00:0d.0: save config 0x1c: 0x00000000
[36019.357830] xhci_hcd 0000:00:0d.0: save config 0x20: 0x00000000
[36019.358828] xhci_hcd 0000:00:0d.0: save config 0x24: 0x00000000
[36019.359823] xhci_hcd 0000:00:0d.0: save config 0x28: 0x00000000
[36019.360809] xhci_hcd 0000:00:0d.0: save config 0x2c: 0x22de17aa
[36019.361814] xhci_hcd 0000:00:0d.0: save config 0x30: 0x00000000
[36019.362812] xhci_hcd 0000:00:0d.0: save config 0x34: 0x00000070
[36019.363800] xhci_hcd 0000:00:0d.0: save config 0x38: 0x00000000
[36019.364777] xhci_hcd 0000:00:0d.0: save config 0x3c: 0x000000ff
[36019.365827] xhci_hcd 0000:00:0d.0: PME# enabled
[36019.377435] xhci_hcd 0000:00:0d.0: ACPI _REG disconnect evaluation failed (5)
[36019.378498] xhci_hcd 0000:00:0d.0: power state changed by ACPI to D3cold
[36020.729692] xhci_hcd 0000:00:0d.0: power state changed by ACPI to D0
[36020.730691] xhci_hcd 0000:00:0d.0: ACPI _REG connect evaluation failed (5)
[36020.744340] xhci_hcd 0000:00:0d.0: PME# disabled
[36020.745367] xhci_hcd 0000:00:0d.0: enabling bus mastering
[36020.773617] xhci_hcd 0000:00:0d.0: save config 0x00: 0x9a178086
[36020.774689] xhci_hcd 0000:00:0d.0: save config 0x04: 0x02900402
[36020.775712] xhci_hcd 0000:00:0d.0: save config 0x08: 0x0c033005
[36020.776704] xhci_hcd 0000:00:0d.0: save config 0x0c: 0x00800000
[36020.777711] xhci_hcd 0000:00:0d.0: save config 0x10: 0x4d170004
[36020.778736] xhci_hcd 0000:00:0d.0: save config 0x14: 0x00000064
[36020.779735] xhci_hcd 0000:00:0d.0: save config 0x18: 0x00000000
[36020.780733] xhci_hcd 0000:00:0d.0: save config 0x1c: 0x00000000
[36020.781738] xhci_hcd 0000:00:0d.0: save config 0x20: 0x00000000
[36020.782744] xhci_hcd 0000:00:0d.0: save config 0x24: 0x00000000
[36020.783734] xhci_hcd 0000:00:0d.0: save config 0x28: 0x00000000
[36020.784724] xhci_hcd 0000:00:0d.0: save config 0x2c: 0x22de17aa
[36020.785729] xhci_hcd 0000:00:0d.0: save config 0x30: 0x00000000
[36020.786719] xhci_hcd 0000:00:0d.0: save config 0x34: 0x00000070
[36020.787707] xhci_hcd 0000:00:0d.0: save config 0x38: 0x00000000
[36020.788683] xhci_hcd 0000:00:0d.0: save config 0x3c: 0x000000ff
[36020.789730] xhci_hcd 0000:00:0d.0: PME# enabled
[36020.801364] xhci_hcd 0000:00:0d.0: ACPI _REG disconnect evaluation failed (5)
[36020.802429] xhci_hcd 0000:00:0d.0: power state changed by ACPI to D3cold
[36022.149641] xhci_hcd 0000:00:0d.0: power state changed by ACPI to D0
[36022.150642] xhci_hcd 0000:00:0d.0: ACPI _REG connect evaluation failed (5)
[36022.164238] xhci_hcd 0000:00:0d.0: PME# disabled
[36022.165255] xhci_hcd 0000:00:0d.0: enabling bus mastering
[36022.166445] xhci_hcd 0000:00:0d.0: save config 0x00: 0x9a178086
[36022.167436] xhci_hcd 0000:00:0d.0: save config 0x04: 0x02900402
[36022.168471] xhci_hcd 0000:00:0d.0: save config 0x08: 0x0c033005
[36022.169481] xhci_hcd 0000:00:0d.0: save config 0x0c: 0x00800000
[36022.170476] xhci_hcd 0000:00:0d.0: save config 0x10: 0x4d170004
[36022.171474] xhci_hcd 0000:00:0d.0: save config 0x14: 0x00000064
[36022.172466] xhci_hcd 0000:00:0d.0: save config 0x18: 0x00000000
[36022.173469] xhci_hcd 0000:00:0d.0: save config 0x1c: 0x00000000
[36022.174484] xhci_hcd 0000:00:0d.0: save config 0x20: 0x00000000
[36022.175477] xhci_hcd 0000:00:0d.0: save config 0x24: 0x00000000
[36022.176471] xhci_hcd 0000:00:0d.0: save config 0x28: 0x00000000
[36022.177471] xhci_hcd 0000:00:0d.0: save config 0x2c: 0x22de17aa
[36022.178461] xhci_hcd 0000:00:0d.0: save config 0x30: 0x00000000
[36022.179453] xhci_hcd 0000:00:0d.0: save config 0x34: 0x00000070
[36022.180438] xhci_hcd 0000:00:0d.0: save config 0x38: 0x00000000
[36022.181423] xhci_hcd 0000:00:0d.0: save config 0x3c: 0x000000ff
[36022.182430] xhci_hcd 0000:00:0d.0: PME# enabled
[36022.196019] xhci_hcd 0000:00:0d.0: ACPI _REG disconnect evaluation failed (5)
[36022.197111] xhci_hcd 0000:00:0d.0: power state changed by ACPI to D3cold
[36022.198174] xhci_hcd 0000:00:0d.0: power state changed by ACPI to D0
[36022.199158] xhci_hcd 0000:00:0d.0: ACPI _REG connect evaluation failed (5)
[36022.212754] xhci_hcd 0000:00:0d.0: PME# disabled
[36022.213808] xhci_hcd 0000:00:0d.0: enabling bus mastering
[36022.245566] xhci_hcd 0000:00:0d.0: save config 0x00: 0x9a178086
[36022.246568] xhci_hcd 0000:00:0d.0: save config 0x04: 0x02900402
[36022.247563] xhci_hcd 0000:00:0d.0: save config 0x08: 0x0c033005
[36022.248551] xhci_hcd 0000:00:0d.0: save config 0x0c: 0x00800000
[36022.249553] xhci_hcd 0000:00:0d.0: save config 0x10: 0x4d170004
[36022.250549] xhci_hcd 0000:00:0d.0: save config 0x14: 0x00000064
[36022.251549] xhci_hcd 0000:00:0d.0: save config 0x18: 0x00000000
[36022.252539] xhci_hcd 0000:00:0d.0: save config 0x1c: 0x00000000
[36022.253530] xhci_hcd 0000:00:0d.0: save config 0x20: 0x00000000
[36022.254514] xhci_hcd 0000:00:0d.0: save config 0x24: 0x00000000
[36022.255508] xhci_hcd 0000:00:0d.0: save config 0x28: 0x00000000
[36022.256494] xhci_hcd 0000:00:0d.0: save config 0x2c: 0x22de17aa
[36022.257496] xhci_hcd 0000:00:0d.0: save config 0x30: 0x00000000
[36022.258508] xhci_hcd 0000:00:0d.0: save config 0x34: 0x00000070
[36022.259517] xhci_hcd 0000:00:0d.0: save config 0x38: 0x00000000
[36022.260494] xhci_hcd 0000:00:0d.0: save config 0x3c: 0x000000ff
[36022.261541] xhci_hcd 0000:00:0d.0: PME# enabled
[36022.273388] xhci_hcd 0000:00:0d.0: ACPI _REG disconnect evaluation failed (5)
[36022.274479] xhci_hcd 0000:00:0d.0: power state changed by ACPI to D3cold
[36022.508764] sysrq: Terminate All Tasks


-- 
"A mouse is a device used to point at the xterm you want to type in" - A.S.R.
 
Home page: http://marc.merlins.org/                       | PGP 7F55D5F27AAF9D08
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
