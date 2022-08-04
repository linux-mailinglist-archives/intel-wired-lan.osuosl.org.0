Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C2670589C9D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Aug 2022 15:27:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7E77741763;
	Thu,  4 Aug 2022 13:27:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E77741763
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659619658;
	bh=A0WJPMaVTqnr4vnNtYS62CKKY5aPO97IAbv9YScCrXo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=evsGhQBU6vrznMRuzh5vHiu/VeNCuibb61Y6RDQ9u4B9hUWfAwN6sdTtcW+OclM3S
	 l5AcbGlcPcd2D+Hr235+H2rKTYoCotYy2NnfokQJL5O/uFe90KT12BsyRsHf39xYts
	 t4ckrc3FHUc5twG3tFP9o+/nLEQnJw04189WL5lNBxR8Gf+KEiV+ZtkMkwll6AT8Ne
	 Shre9fZMJn7i/YiO4f9v4JiAdNtX6X8Biqp8iDgb5yj/RFnTtETOTl9y0O+KQhuC65
	 qJ/w4IV4nkUUONE1oTsgRFF+CY2mHdDSv1KtVzUq2ELpvQi1cdSQoOHAlfJ4GY3TyI
	 qkClrmfkosyQA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1V5SKqrEx1mT; Thu,  4 Aug 2022 13:27:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E62F1403F5;
	Thu,  4 Aug 2022 13:27:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E62F1403F5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F02361BF421
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 13:27:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C0A3040B65
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 13:27:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C0A3040B65
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hgxCDcfXpK-Y for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Aug 2022 13:27:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B7DC140193
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B7DC140193
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 13:27:29 +0000 (UTC)
Received: from [10.117.44.70] (nat242-51.uni-goettingen.de [134.76.51.242])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 760A561EA1928;
 Thu,  4 Aug 2022 15:27:26 +0200 (CEST)
Message-ID: <e8f33b45-380f-e73e-3879-0e1a478262e9@molgen.mpg.de>
Date: Thu, 4 Aug 2022 15:27:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.0
Content-Language: en-US
To: James Hogan <jhogan@kernel.org>
References: <4752347.31r3eYUQgx@saruman> <874jz2ei5m.fsf@intel.com>
 <4755499.31r3eYUQgx@saruman> <3198206.44csPzL39Z@saruman>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <3198206.44csPzL39Z@saruman>
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
Cc: intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear James,


Am 04.08.22 um 15:03 schrieb James Hogan:

> On Thursday, 28 July 2022 18:36:31 BST James Hogan wrote:
>> On Wednesday, 27 July 2022 15:37:09 BST Vinicius Costa Gomes wrote:
>>> Yeah, I agree that it seems like the issue is something else. I would
>>> suggest start with the "simple" things, enabling 'CONFIG_PROVE_LOCKING'
>>> and looking at the first splat, it could be that what you are seeing is
>>> caused by a deadlock somewhere else.
>>
>> This is revealing I think (re-enabled PCIE_PTM and enabled PROVE_LOCKING).
>>
>> In this case it happened within minutes of boot, but a few previous attempts
>> with several suspend cycles with the same kernel didn't detect the same
>> thing.
> 
> I hate to nag, but any thoughts on the lockdep recursive locking warning
> below? It seems to indicate a recursive taking of rtnl_mutex in dev_ethtool
> and igc_resume, which would certainly seem to point the finger squarely back at
> the igc driver.

I hope, the developers will respond quickly. If it is indeed a 
regression, and you do not want to wait for the developers, you could 
try to bisect the issue. To speed up the test cycles, I recommend to try 
to try to reproduce the issue in QEMU/KVM and passing through the 
network device.


Kind regards,

Paul Menzel


>> NetworkManager[857]: <info>  [1659028974.1752] device (enp6s0): state change: activated -> unavailable (reason 'carrier-changed', sys-iface-state: 'managed')
>>
>> ============================================
>> WARNING: possible recursive locking detected
>> 5.18.12-arch1-1 #2 Not tainted
>> --------------------------------------------
>> NetworkManager/857 is trying to acquire lock:
>> ffffffff9f9e9048 (rtnl_mutex){+.+.}-{3:3}, at: igc_resume+0xf6/0x1d0 [igc]
>>
>> but task is already holding lock:
>> ffffffff9f9e9048 (rtnl_mutex){+.+.}-{3:3}, at: dev_ethtool+0xaf/0x3080
>>
>> other info that might help us debug this:
>>   Possible unsafe locking scenario:
>>         CPU0
>>         ----
>>    lock(rtnl_mutex);
>>    lock(rtnl_mutex);
>>
>>   *** DEADLOCK ***
>>   May be due to missing lock nesting notation
>> 1 lock held by NetworkManager/857:
>>   #0: ffffffff9f9e9048 (rtnl_mutex){+.+.}-{3:3}, at: dev_ethtool+0xaf/0x3080
>>
>> stack backtrace:
>> CPU: 0 PID: 857 Comm: NetworkManager Not tainted 5.18.12-arch1-1 #2
>> 369425cead7bf2331cd4c5d2279465ad4a0fc21f Hardware name: Micro-Star
>> International Co., Ltd. MS-7D25/PRO Z690-A DDR4(MS-7D25), BIOS 1.40
>> 05/17/2022 Call Trace:
>>   <TASK>
>>   dump_stack_lvl+0x5f/0x78
>>   __lock_acquire.cold+0xd4/0x2e5
>>   ? __lock_acquire+0x3b2/0x1fd0
>>   lock_acquire+0xc8/0x2d0
>>   ? igc_resume+0xf6/0x1d0 [igc beed6d83546b18fcf82fbbfaeea59871823bceeb]
>>   ? lock_is_held_type+0xaa/0x120
>>   __mutex_lock+0xb6/0x830
>>   ? igc_resume+0xf6/0x1d0 [igc beed6d83546b18fcf82fbbfaeea59871823bceeb]
>>   ? lockdep_hardirqs_on_prepare+0xdd/0x180
>>   ? _raw_spin_unlock_irqrestore+0x34/0x50
>>   ? igc_resume+0xf6/0x1d0 [igc beed6d83546b18fcf82fbbfaeea59871823bceeb]
>>   ? igc_resume+0xf6/0x1d0 [igc beed6d83546b18fcf82fbbfaeea59871823bceeb]
>>   igc_resume+0xf6/0x1d0 [igc beed6d83546b18fcf82fbbfaeea59871823bceeb]
>>   pci_pm_runtime_resume+0xab/0xd0
>>   ? pci_pm_freeze_noirq+0xe0/0xe0
>>   __rpm_callback+0x41/0x160
>>   rpm_callback+0x35/0x70
>>   ? pci_pm_freeze_noirq+0xe0/0xe0
>>   rpm_resume+0x5eb/0x820
>>   __pm_runtime_resume+0x4b/0x80
>>   dev_ethtool+0x128/0x3080
>>   ? lock_is_held_type+0xaa/0x120
>>   ? find_held_lock+0x2b/0x80
>>   ? dev_load+0x57/0x140
>>   ? lock_release+0xd4/0x2d0
>>   dev_ioctl+0x155/0x560
>>   sock_do_ioctl+0xd7/0x120
>>   sock_ioctl+0x103/0x360
>>   ? __fget_files+0xd2/0x170
>>   __x64_sys_ioctl+0x8e/0xc0
>>   do_syscall_64+0x5c/0x90
>>   ? do_syscall_64+0x6b/0x90
>>   ? lockdep_hardirqs_on_prepare+0xdd/0x180
>>   ? do_syscall_64+0x6b/0x90
>>   ? lockdep_hardirqs_on_prepare+0xdd/0x180
>>   ? do_syscall_64+0x6b/0x90
>>   ? asm_sysvec_apic_timer_interrupt+0xe/0x20
>>   ? rcu_read_lock_sched_held+0x40/0x80
>>   entry_SYSCALL_64_after_hwframe+0x44/0xae
>> RIP: 0033:0x7f2c35d077af
>> Code: 00 48 89 44 24 18 31 c0 48 8d 44 24 60 c7 04 24 10 00 00 00 48 89 44
>> 24 08 48 8d 44 24 20 48 89 44 24 10 b8 10 00 00 00 0f 05 <89> c2 3d 00 f0
>> ff ff 77 18 48 8b 44 24 18 64 48 2b 04 25 28 00 00 RSP:
>> 002b:00007ffd7319afd0 EFLAGS: 00000246 ORIG_RAX: 0000000000000010 RAX:
>> ffffffffffffffda RBX: 00007ffd7319b2c0 RCX: 00007f2c35d077af
>> RDX: 00007ffd7319b0f0 RSI: 0000000000008946 RDI: 0000000000000012
>> RBP: 00007ffd7319b270 R08: 0000000000000000 R09: 00007ffd7319b2c8
>> R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
>> R13: 00007ffd7319b0f0 R14: 00007ffd7319b0d0 R15: 00007ffd7319b0d0
>>   </TASK>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
