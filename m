Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B63F87EC10
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Mar 2024 16:24:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F265440A57;
	Mon, 18 Mar 2024 15:24:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z8O6h2gFewEK; Mon, 18 Mar 2024 15:24:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F2D0640A4A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710775476;
	bh=Cgf8DgxHUjitbx8VzHDjQyw83nPToBtCwrDSRoMwYHc=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=K8PseaTG+Rc6CUw9r3ABeDXF38wjRc9RdNVgrQjY2xrMkBsKyRsfXJIs9XOs+G9LG
	 oDNSQ7NQRGR/FcIKwdRexd2A9xoL/gzWxZ62ELnDgquxC0aZclrFsjxA7jGrIe9vAc
	 LKwOCU/Ro6SS3ymv9LB7goS1IbVjmuBnTBd7K8/noTHeq77SSndM8EUsAlQfo+QisY
	 RgYnw4NoZM/I0cR7YBjmv063xCJaT3V2lidiiSTdXJYG1Z7ZHZzqTMRrslCFlzcdrv
	 8ynD447jb7+0uIJfJm9reyRiwuWAaBxJ2nE1jlsxOItXbEpTfRybD+Bp+0SKYzkrhY
	 ftLj/u+/wu+1Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F2D0640A4A;
	Mon, 18 Mar 2024 15:24:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 495531BF3B9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Mar 2024 03:42:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 34A3E40105
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Mar 2024 03:42:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nebmOUwhuKu1 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Mar 2024 03:42:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::12f; helo=mail-lf1-x12f.google.com;
 envelope-from=zzqq0103.hey@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4B52840025
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B52840025
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4B52840025
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Mar 2024 03:42:44 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id
 2adb3069b0e04-513d599dbabso2555461e87.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 20:42:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710560562; x=1711165362;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Cgf8DgxHUjitbx8VzHDjQyw83nPToBtCwrDSRoMwYHc=;
 b=iq9Y9ZWOe//Nnm7N0uBX1hHvarOzlD8LapVn7XrDLyEHaviwON8jJ7a3dwaSfVY5z3
 a01TMOdUtZBrFmttXuBY1YLnQsWOLTRZiKp8cft3ZDMTtpQtQUtEjVa6MCkqdGVbziq0
 jJnJY9rNGuwBPAqeS9GM2CNQgF8s49QYx4tDDSOwaQW7Fkr8TyfRTXAtD1oowzXgFu6/
 V+n4mUMW9cwpviEvYfxuQGBCHvB1Y+dCjYXlcMd/wMs8qXEp9eRfx5S9xAGMmvUn4e3w
 FsKd/R93ADtxydxFjkBwoXFTeQwqrWhyHQh3AMfHkDsRYDi3wo2kDz5WxY7f+HAnxnYQ
 by4w==
X-Forwarded-Encrypted: i=1;
 AJvYcCWvKN0RHl/R/U8nlQ6FQgs5Yz4+d47SH4QrIq5f9ELNdwtEkmg8Zk2WsjIdAZ35xdZU8I6gq++7R7jn0UGjg/DjIslXgyvW62xx8CSJ+9kqxQ==
X-Gm-Message-State: AOJu0Ywn5LQ7k6ejoHZ5idTomRK2Ud4F+X/FdTxX1Iow9KfzEPbUTxHm
 /qq+qZNb8Vga4SU5fJBvWPPXLhNwtrIlJ5L2ygsCuxLmd36Jd1DTfM14+yp3iCTclnh4q92zyje
 mO/Av+LJx/o95DT/EY+b46FxJ/io=
X-Google-Smtp-Source: AGHT+IEjTxPgog4y7kx8jtZrkI/l2TrXT6vyaTeDllwh6ScXCC88X2vifwiIzAWLkjBrBmgu2X3jxvGz4GkKK+c4MNs=
X-Received: by 2002:ac2:464c:0:b0:513:c4d9:a0d9 with SMTP id
 s12-20020ac2464c000000b00513c4d9a0d9mr4535557lfo.22.1710560562097; Fri, 15
 Mar 2024 20:42:42 -0700 (PDT)
MIME-Version: 1.0
From: cheung wall <zzqq0103.hey@gmail.com>
Date: Sat, 16 Mar 2024 11:42:30 +0800
Message-ID: <CAKHoSAshN6b3sCkWDLsHJ42Wqa0R_82horK_Owvy0fjBq6seuQ@mail.gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Mon, 18 Mar 2024 15:24:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1710560562; x=1711165362; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=Cgf8DgxHUjitbx8VzHDjQyw83nPToBtCwrDSRoMwYHc=;
 b=Hl9C8XY2LrI0cQ7now3BXmhXUM3mioh+SZu7Cpl+QNgrjLooMc9hLEDRVNKXtcgFWh
 oBMd6Xw7m6BdkLz9FP98LJ1IEQDDSc+DqX7lmighFvXkYbmSJ2ROOKJ6FPqsSJ8IVkPu
 Q4UjlL4VL3O7KVPUlrHzEMpriJ3saVA+T8XuuZeiVgQzSa/XScK5FGH1YsvOvTz1809a
 x9diQfSvBeuMFvTdbp0pFt9keyjiqN+vLNy1oTyrnzRVfyrRCisRpHOH4/+1ecTXv53s
 IVwljEsX31GbHfYuPdUPaL15H4zURjjYfLxod4L268K4dSP7eZJF/yY+LNlpcOBpR9qN
 bRlA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Hl9C8XY2
Subject: [Intel-wired-lan] INFO: rcu detected stall in gc_worker
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
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello,


when using Healer to fuzz the latest Linux Kernel, the following crash

was triggered on:


HEAD commit: 0dd3ee31125508cd67f7e7172247f05b7fd1753a  (tag: v6.7)

git tree: upstream

console output: https://pastebin.com/raw/0bRkEgvF

kernel config: https://pastebin.com/raw/VecrLrRN

C reproducer: https://pastebin.com/raw/k6HDMmac

Syzlang reproducer: https://pastebin.com/raw/uX82h1ks


If you fix this issue, please add the following tag to the commit:

Reported-by: Qiang Zhang <zzqq0103.hey@gmail.com>

----------------------------------------------------------

rcu: INFO: rcu_preempt detected stalls on CPUs/tasks:
systemd-journal (124) used greatest stack depth: 24160 bytes left
systemd[1]: systemd-journald.service: Main process exited,
code=killed, status=6/ABRT
systemd[1]: systemd-journald.service: Failed with result 'watchdog'.
systemd[1]: systemd-journald.service: Scheduled restart job, restart
counter is at 1.
rcu: 0-...0: (4 ticks this GP) idle=c6ec/1/0x4000000000000000
softirq=1263/1265 fqs=4551
rcu: 2-...0: (1 GPs behind) idle=4f1c/1/0x4000000000000000
softirq=993/993 fqs=4551
rcu: 3-....: (1 GPs behind) idle=8b4c/0/0x3 softirq=1112/1113 fqs=4551
rcu: (detected by 5, t=355128 jiffies, g=2045, q=163 ncpus=8)
Sending NMI from CPU 5 to CPUs 0:
NMI backtrace for cpu 0
CPU: 0 PID: 10 Comm: kworker/0:1 Not tainted 6.7.0 #2
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.15.0-1 04/01/2014
Workqueue: events e1000_watchdog
RIP: 0010:e1000_update_stats+0xb6f/0x1d70
drivers/net/ethernet/intel/e1000/e1000_main.c:3660
Code: df 48 89 f9 48 c1 e9 03 80 3c 01 00 0f 85 d8 11 00 00 45 89 ed
48 8b 83 80 04 00 00 4c 01 ab 40 07 00 00 44 8b a8 e4 40 00 00 <48> 8d
bb 48 07 00 00 48 b8 00 00 00 00 00 fc ff df 48 89 f9 48 c1
RSP: 0018:ffff88810031fbd0 EFLAGS: 00000002
RAX: ffffc90001040000 RBX: ffff888104964900 RCX: 1ffff1102092ca08
RDX: ffff888100302200 RSI: 0000000000000004 RDI: ffff888104965040
RBP: 1ffff11020063f89 R08: 0000000000000001 R09: ffffed1020063f6e
R10: 0000000000000003 R11: dead000000000100 R12: ffff888104964b18
R13: 0000000000000000 R14: ffff888104964000 R15: ffff888104964900
FS:  0000000000000000(0000) GS:ffff8881f7000000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f348ff56328 CR3: 00000001b60a4002 CR4: 0000000000770ef0
PKRU: 55555554
Call Trace:
 <NMI>
 </NMI>
 <TASK>
 e1000_watchdog+0x2f1/0x1300 drivers/net/ethernet/intel/e1000/e1000_main.c:2499
 process_one_work+0x583/0xda0 kernel/workqueue.c:2627
 process_scheduled_works kernel/workqueue.c:2700 [inline]
 worker_thread+0x981/0x11e0 kernel/workqueue.c:2781
 kthread+0x263/0x330 kernel/kthread.c:388
 ret_from_fork+0x48/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1b/0x30 arch/x86/entry/entry_64.S:242
 </TASK>
INFO: NMI handler (nmi_cpu_backtrace_handler) took too long to run: 2.146 msecs
Sending NMI from CPU 5 to CPUs 2:
NMI backtrace for cpu 2
CPU: 2 PID: 89 Comm: kworker/2:1H Not tainted 6.7.0 #2
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.15.0-1 04/01/2014
Workqueue: kblockd blk_mq_requeue_work
RIP: 0010:bytes_is_nonzero mm/kasan/generic.c:85 [inline]
RIP: 0010:memory_is_nonzero mm/kasan/generic.c:102 [inline]
RIP: 0010:memory_is_poisoned_n mm/kasan/generic.c:127 [inline]
RIP: 0010:memory_is_poisoned mm/kasan/generic.c:159 [inline]
RIP: 0010:check_region_inline mm/kasan/generic.c:178 [inline]
RIP: 0010:kasan_check_range+0x164/0x1c0 mm/kasan/generic.c:187
Code: c2 48 85 c0 75 b0 48 89 da 4c 89 d8 4c 29 da e9 49 ff ff ff 48
85 d2 74 b3 48 01 ea eb 09 48 83 c0 01 48 39 d0 74 a5 80 38 00 <74> f2
e9 74 ff ff ff b8 01 00 00 00 e9 16 7c 85 02 48 29 c3 48 89
RSP: 0018:ffff8881f7109df0 EFLAGS: 00000046
RAX: fffffbfff7b84000 RBX: fffffbfff7b84001 RCX: ffffffffbcb6ec4a
RDX: fffffbfff7b84001 RSI: 0000000000000004 RDI: ffffffffbdc20000
RBP: fffffbfff7b84000 R08: 0000000000000000 R09: fffffbfff7b84000
R10: ffffffffbdc20003 R11: ffff8881f7109ff8 R12: 0000000000000001
R13: 0000000000000003 R14: fffffbfff7b84000 R15: 0000000000000001
FS:  0000000000000000(0000) GS:ffff8881f7100000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f70dae1ab40 CR3: 000000011209e003 CR4: 0000000000770ef0
PKRU: 55555554
Call Trace:
 <NMI>
 </NMI>
 <IRQ>
 instrument_atomic_read include/linux/instrumented.h:68 [inline]
 atomic_read include/linux/atomic/atomic-instrumented.h:32 [inline]
 virt_spin_lock arch/x86/include/asm/qspinlock.h:98 [inline]
 queued_spin_lock_slowpath+0xba/0xbe0 kernel/locking/qspinlock.c:327
 queued_spin_lock include/asm-generic/qspinlock.h:114 [inline]
 do_raw_spin_lock include/linux/spinlock.h:187 [inline]
 __raw_spin_lock include/linux/spinlock_api_smp.h:134 [inline]
 _raw_spin_lock+0xe8/0xf0 kernel/locking/spinlock.c:154
 rcu_iw_handler+0x3c/0xe0 kernel/rcu/tree_stall.h:226
 irq_work_single+0xc8/0x160 kernel/irq_work.c:221
 __flush_smp_call_function_queue+0x4f0/0xa00 kernel/smp.c:545
 __sysvec_call_function_single+0x25/0x1d0 arch/x86/kernel/smp.c:267
 sysvec_call_function_single+0x8c/0xa0 arch/x86/kernel/smp.c:262
 </IRQ>
 <TASK>
 asm_sysvec_call_function_single+0x1a/0x20 arch/x86/include/asm/idtentry.h:656
RIP: 0010:__sanitizer_cov_trace_pc+0x0/0x70 kernel/kcov.c:200
Code: e9 c0 cf b1 02 48 89 f7 e9 8d fd ff ff 66 66 2e 0f 1f 84 00 00
00 00 00 66 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 <f3> 0f
1e fa 48 8b 0c 24 65 48 8b 14 25 40 6f 03 00 65 8b 05 c0 fd
RSP: 0018:ffff888105d87810 EFLAGS: 00000293
RAX: 0000000000000000 RBX: ffff888101785000 RCX: ffffffffbcb6d7b4
RDX: ffff888105d61100 RSI: 0000000000000293 RDI: ffff888101785000
RBP: 0000000000000293 R08: 0000000000000002 R09: 0000000000000475
R10: ffffffffbf2d3787 R11: 000000000038d918 R12: 0000000000000000
R13: ffff888104850000 R14: 0000000000000293 R15: ffff888104850010
 __raw_spin_unlock_irqrestore include/linux/spinlock_api_smp.h:152 [inline]
 _raw_spin_unlock_irqrestore+0x4a/0x80 kernel/locking/spinlock.c:194
 spin_unlock_irqrestore include/linux/spinlock.h:406 [inline]
 ata_scsi_queuecmd+0x19d/0x200 drivers/ata/libata-scsi.c:4204
 scsi_dispatch_cmd drivers/scsi/scsi_lib.c:1516 [inline]
 scsi_queue_rq+0xb84/0x2bf0 drivers/scsi/scsi_lib.c:1758
 blk_mq_dispatch_rq_list+0x3b6/0x1af0 block/blk-mq.c:2049
 __blk_mq_do_dispatch_sched block/blk-mq-sched.c:170 [inline]
 blk_mq_do_dispatch_sched block/blk-mq-sched.c:184 [inline]
 __blk_mq_sched_dispatch_requests+0xbf4/0x13c0 block/blk-mq-sched.c:309
 blk_mq_sched_dispatch_requests+0xeb/0x150 block/blk-mq-sched.c:333
 blk_mq_run_hw_queue+0x44f/0x530 block/blk-mq.c:2264
 blk_mq_run_hw_queues+0x105/0x270 block/blk-mq.c:2313
 blk_mq_requeue_work+0x525/0x850 block/blk-mq.c:1498
 process_one_work+0x583/0xda0 kernel/workqueue.c:2627
 process_scheduled_works kernel/workqueue.c:2700 [inline]
 worker_thread+0x981/0x11e0 kernel/workqueue.c:2781
 kthread+0x263/0x330 kernel/kthread.c:388
 ret_from_fork+0x48/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1b/0x30 arch/x86/entry/entry_64.S:242
 </TASK>
INFO: NMI handler (nmi_cpu_backtrace_handler) took too long to run: 2.407 msecs
Sending NMI from CPU 5 to CPUs 3:
NMI backtrace for cpu 3
CPU: 3 PID: 76 Comm: kworker/3:1 Not tainted 6.7.0 #2
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.15.0-1 04/01/2014
Workqueue: events_power_efficient gc_worker
RIP: 0010:arch_atomic_read arch/x86/include/asm/atomic.h:23 [inline]
RIP: 0010:raw_atomic_read
include/linux/atomic/atomic-arch-fallback.h:457 [inline]
RIP: 0010:atomic_read include/linux/atomic/atomic-instrumented.h:33 [inline]
RIP: 0010:virt_spin_lock arch/x86/include/asm/qspinlock.h:98 [inline]
RIP: 0010:queued_spin_lock_slowpath+0xba/0xbe0 kernel/locking/qspinlock.c:327
Code: c1 ee 03 41 83 e5 07 48 b8 00 00 00 00 00 fc ff df 49 01 c6 41
83 c5 03 e8 33 85 67 fd be 04 00 00 00 48 89 ef e8 c6 e5 93 fd <41> 0f
b6 06 41 38 c5 7c 08 84 c0 0f 85 bb 09 00 00 44 8b 65 00 45
RSP: 0018:ffff8881035c78e8 EFLAGS: 00000046
RAX: 0000000000000001 RBX: 1ffff110206b8f1e RCX: ffffffffbcb6ec4a
RDX: fffffbfff7b84001 RSI: 0000000000000004 RDI: ffffffffbdc20000
RBP: ffffffffbdc20000 R08: 0000000000000000 R09: fffffbfff7b84000
R10: ffffffffbdc20003 R11: ffffffffbda0b9c0 R12: 0000000000000001
R13: 0000000000000003 R14: fffffbfff7b84000 R15: 0000000000000001
FS:  0000000000000000(0000) GS:ffff8881f7180000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f7a857bcff0 CR3: 00000001121dc006 CR4: 0000000000770ef0
PKRU: 55555554
Call Trace:
 <NMI>
 </NMI>
 <TASK>
 queued_spin_lock include/asm-generic/qspinlock.h:114 [inline]
 do_raw_spin_lock include/linux/spinlock.h:187 [inline]
 __raw_spin_lock include/linux/spinlock_api_smp.h:134 [inline]
 _raw_spin_lock+0xe8/0xf0 kernel/locking/spinlock.c:154
 rcu_note_context_switch+0x2d0/0x1770 kernel/rcu/tree_plugin.h:326
 __schedule+0x16b/0x2230 kernel/sched/core.c:6587
 preempt_schedule_irq+0x59/0x90 kernel/sched/core.c:7008
 irqentry_exit+0x21/0x50 kernel/entry/common.c:432
 asm_sysvec_apic_timer_interrupt+0x1a/0x20 arch/x86/include/asm/idtentry.h:649
RIP: 0010:__rcu_read_unlock+0x0/0x100 kernel/rcu/tree_plugin.h:419
Code: e8 65 98 3e 00 e9 fc fe ff ff 48 89 ef e8 48 97 3e 00 e9 55 ff
ff ff 0f 1f 00 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 <f3> 0f
1e fa 41 54 55 65 48 8b 2c 25 40 6f 03 00 53 48 8d bd fc 03
RSP: 0018:ffff8881035c7cb0 EFLAGS: 00000293
RAX: 0000000000000000 RBX: dffffc0000000000 RCX: ffffffffbc220217
RDX: ffff888101d8a200 RSI: 0000000000040000 RDI: ffff888101d8a5fc
RBP: ffff88810610f190 R08: 0000000000000001 R09: fffffbfff7e66d44
R10: ffffffffbf336a27 R11: ffff8881f71b8460 R12: 0000000000043c65
R13: ffff8881f71b7100 R14: 000000000000ea60 R15: 0000000000040000
 rcu_read_unlock include/linux/rcupdate.h:779 [inline]
 gc_worker+0x7cc/0x1110 net/netfilter/nf_conntrack_core.c:1565
 process_one_work+0x583/0xda0 kernel/workqueue.c:2627
 process_scheduled_works kernel/workqueue.c:2700 [inline]
 worker_thread+0x981/0x11e0 kernel/workqueue.c:2781
 kthread+0x263/0x330 kernel/kthread.c:388
 ret_from_fork+0x48/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1b/0x30 arch/x86/entry/entry_64.S:242
 </TASK>
rcu: rcu_preempt kthread timer wakeup didn't happen for 334296
jiffies! g2045 f0x0 RCU_GP_WAIT_FQS(5) ->state=0x402
rcu: Possible timer handling issue on cpu=5 timer-softirq=7633
systemd[1]: Stopping Flush Journal to Persistent Storage...
systemd[1]: systemd-journal-flush.service: Stopping timed out. Terminating.
systemd[1]: systemd-journal-flush.service: Control process exited,
code=killed, status=15/TERM
systemd[1]: systemd-journal-flush.service: Failed with result 'timeout'.
systemd[1]: Stopped Flush Journal to Persistent Storage.
systemd[1]: Stopped Journal Service.
systemd[1]: Starting Journal Service...
systemd-journald[289]: File
/var/log/journal/495cb7baaf694f459d942b793c107665/system.journal
corrupted or uncleanly shut down, renaming and replacing.
systemd[1]: Started Journal Service.
systemd-journald[289]: Received client request to flush runtime journal.
cgroup: Unknown subsys name 'net'
cgroup: Unknown subsys name 'rlimit'
cgroup: Unknown subsys name 'memory'
Adding 124996k swap on ./swap-file.  Priority:0 extents:1 across:124996k
audit: type=1400 audit(1710145844.746:6): avc:  denied  { execmem }
for  pid=353 comm="syz-executor.1"
scontext=system_u:system_r:kernel_t:s0
tcontext=system_u:system_r:kernel_t:s0 tclass=process permissive=1
modprobe (652) used greatest stack depth: 24064 bytes left
