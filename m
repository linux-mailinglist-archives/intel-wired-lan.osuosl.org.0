Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C024176812D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 29 Jul 2023 21:06:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5CE160EFF;
	Sat, 29 Jul 2023 19:06:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E5CE160EFF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690657595;
	bh=ewd6kx4gJzoPz9P3fE1d7jO59zex01G/s4hIpLw6Eak=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rdd6gwHep0RP84eFeuIbUvvDdnrGmkFT/1peZV4wa1ptqpR0VAAGS7XLdeSbtAr8P
	 +eeVz/3zVcy3Yw4fvXVf9mLoCirB0iBiuXdsgsnIBRJXcoAbvGseXlq5P1DC+KA7c4
	 itJqIGio/wgeGhcXXFVIuH7v6wA3x7jzK4LyJSQYOsOh0j+YDIzXN3w3yM4hxS0BWc
	 +VLGmyYaaMbUBIIxms5tZuY47cAfFAh4mOC5f/TGFp2tRbCtoEmAu9Li1w08D0moGq
	 P6u2C5gfsOkEUbaGBxlxBg4SVGVTauIlOkCEcUVBQ+WOjVpdg6e2kdAotwRXgjv6XR
	 PCtXjKnj5w5pg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H2I5p_AnbO7U; Sat, 29 Jul 2023 19:06:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 676EB60EA1;
	Sat, 29 Jul 2023 19:06:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 676EB60EA1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 791DD1BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jul 2023 19:06:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 516F8414C4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jul 2023 19:06:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 516F8414C4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z1BtJQylnA9r for <intel-wired-lan@lists.osuosl.org>;
 Sat, 29 Jul 2023 19:06:27 +0000 (UTC)
Received: from mail-vk1-xa2f.google.com (mail-vk1-xa2f.google.com
 [IPv6:2607:f8b0:4864:20::a2f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D631C410DF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jul 2023 19:06:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D631C410DF
Received: by mail-vk1-xa2f.google.com with SMTP id
 71dfb90a1353d-48642554ef1so1256774e0c.3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jul 2023 12:06:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690657585; x=1691262385;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=9sH6Xr73mguNgUIemMRYrFHm4fd0fhVXE3pTXrDu6iY=;
 b=IagHOhjmvIMWKW762EWoq4dO2hhlnS54upjcW3ybf1NrYRzcPwqJnBefJWH7He+6X4
 SPE3ZdIM/SkuokhPFWmRXLxHiYqoNiAdpsPDQ8tj1lE0i0i+PXMWIc0x3D/k443zF4aW
 56fJCXSuFtB3y2wNYnOl8gJ4ixkl4nDH20LKoOXMs3jTwq1kLdlKDRNQdgQNSJSJ1sIv
 qR5DpvijbCUHrRlj6wvwV4NZ+dQHCCC7GzMWZfGraLmp5mduOMb9gojrR3d+IyNp/gLi
 XaJyFxIP+xf0n+cHW00KL5PDH+IQCSk1vzkX3yxABeGfOpFDSEv5Jasb4ra5t+aWmxI8
 pvDQ==
X-Gm-Message-State: ABy/qLaLfLaMXNyBKHnOgUirFs5vjvlNT6qABh1jRcb0Iw4m9g/rLila
 sF1NrcPJxFfVSRVyoFxwLign4gvzsdn0a/RVIb0HUxPc+WY=
X-Google-Smtp-Source: APBJJlEQrWP7nZMOLp4KQm3EmQypRREP0VH8DNWRO8V2hcJ4pFO+Ui/MwuWJb/r9eRGh0/ZuKFEXFYmR45bOAtXF0OQ=
X-Received: by 2002:a1f:55c6:0:b0:486:556c:a0bb with SMTP id
 j189-20020a1f55c6000000b00486556ca0bbmr3590208vkb.9.1690657585396; Sat, 29
 Jul 2023 12:06:25 -0700 (PDT)
MIME-Version: 1.0
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Sat, 29 Jul 2023 21:06:14 +0200
Message-ID: <CAA85sZt-CamVe24=i=rtoU+oN5twF8sj4imCKR=Ode0ezM0Grg@mail.gmail.com>
To: Linux Kernel Network Developers <netdev@vger.kernel.org>, 
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1690657585; x=1691262385;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=9sH6Xr73mguNgUIemMRYrFHm4fd0fhVXE3pTXrDu6iY=;
 b=fGdpgOawDWWavBGdQRoTiY5w9xJZikRc4+/lJQjmhaPSp0yWbZnKjly8qpjkiOl/bK
 QP9gDcQ5/bsTQWRYqPoWoK/NkwCw+f90is7WuPB6AIY1mZFPIkOfHFQoNSOL4oaWFnry
 dhMJH/BM/TWZ9bJCI/qgEZVEGJ9E8+cKrTh7JvoxKZDG/qxcjvMKplqivrKYdG5k8Uxo
 zzJMLGb6WiRX0bHPmK4FTEc761tKDFjtzI0C1bY8R3A5i1M8kKwZC6xmCbSV4CVe6SQx
 HBJ/dCLUiHkAYMBW+BI/vVCA18Ef83wqbhIom3U4+Bh2cs7ulA1jVWogjvZ5o0GhQD3O
 5nVg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=fGdpgOaw
Subject: [Intel-wired-lan] [6.4.7] pfifo_fast bug with ixgbe?
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Had played with sysctl, forgot to change back to fq - so was running
with pfifo_fast and this happened :)

[94875.282334] ------------[ cut here ]------------
[94875.282347] NETDEV WATCHDOG: eno1 (ixgbe): transmit queue 6 timed out 8232 ms
[94875.282424] WARNING: CPU: 2 PID: 0 at net/sched/sch_generic.c:525
dev_watchdog (net/sched/sch_generic.c:525 (discriminator 3))
[94875.282442] Modules linked in: chaoskey
[94875.282454] CPU: 2 PID: 0 Comm: swapper/2 Not tainted 6.4.7 #383
[94875.282464] Hardware name: Supermicro Super Server/A2SDi-12C-HLN4F,
BIOS 1.7a 10/13/2022
[94875.282469] RIP: 0010:dev_watchdog (net/sched/sch_generic.c:525
(discriminator 3))
[94875.282480] Code: ff ff ff 48 89 df c6 05 6c e1 f9 00 01 e8 d0 27
fa ff 45 89 f8 44 89 f1 48 89 de 48 89 c2 48 c7 c7 20 7d 0c 9d e8 48
9a 2a ff <0f> 0b e9 2a ff ff ff 90 55 53 48 89 fb 48 8b 6f 18 0f 1f 44
00 00
All code
========
   0: ff                    (bad)
   1: ff                    (bad)
   2: ff 48 89              decl   -0x77(%rax)
   5: df c6                ffreep %st(6)
   7: 05 6c e1 f9 00        add    $0xf9e16c,%eax
   c: 01 e8                add    %ebp,%eax
   e: d0 27                shlb   (%rdi)
  10: fa                    cli
  11: ff 45 89              incl   -0x77(%rbp)
  14: f8                    clc
  15: 44 89 f1              mov    %r14d,%ecx
  18: 48 89 de              mov    %rbx,%rsi
  1b: 48 89 c2              mov    %rax,%rdx
  1e: 48 c7 c7 20 7d 0c 9d mov    $0xffffffff9d0c7d20,%rdi
  25: e8 48 9a 2a ff        call   0xffffffffff2a9a72
  2a:* 0f 0b                ud2    <-- trapping instruction
  2c: e9 2a ff ff ff        jmp    0xffffffffffffff5b
  31: 90                    nop
  32: 55                    push   %rbp
  33: 53                    push   %rbx
  34: 48 89 fb              mov    %rdi,%rbx
  37: 48 8b 6f 18          mov    0x18(%rdi),%rbp
  3b: 0f 1f 44 00 00        nopl   0x0(%rax,%rax,1)

Code starting with the faulting instruction
===========================================
   0: 0f 0b                ud2
   2: e9 2a ff ff ff        jmp    0xffffffffffffff31
   7: 90                    nop
   8: 55                    push   %rbp
   9: 53                    push   %rbx
   a: 48 89 fb              mov    %rdi,%rbx
   d: 48 8b 6f 18          mov    0x18(%rdi),%rbp
  11: 0f 1f 44 00 00        nopl   0x0(%rax,%rax,1)
[94875.282488] RSP: 0018:ffffac3480150ea8 EFLAGS: 00010282
[94875.282498] RAX: 0000000000000000 RBX: ffff8c7cc5aac000 RCX: 0000000000000027
[94875.282504] RDX: ffff8c802fa9b408 RSI: 0000000000000001 RDI: ffff8c802fa9b400
[94875.282510] RBP: ffff8c7cc5aac488 R08: 0000000000000000 R09: ffffac3480150d48
[94875.282516] R10: 0000000000000003 R11: ffffffff9d347ec8 R12: ffff8c7cc5c08780
[94875.282522] R13: ffff8c7cc5aac3dc R14: 0000000000000006 R15: 0000000000002028
[94875.282528] FS:  0000000000000000(0000) GS:ffff8c802fa80000(0000)
knlGS:0000000000000000
[94875.282536] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[94875.282542] CR2: 00007fd2f57b9a94 CR3: 0000000103fda000 CR4: 00000000003526e0
[94875.282548] Call Trace:
[94875.282556]  <IRQ>
[94875.282561] ? dev_watchdog (net/sched/sch_generic.c:525 (discriminator 3))
[94875.282569] ? __warn (kernel/panic.c:673)
[94875.282579] ? dev_watchdog (net/sched/sch_generic.c:525 (discriminator 3))
[94875.282587] ? report_bug (lib/bug.c:180 lib/bug.c:219)
[94875.282597] ? handle_bug (arch/x86/kernel/traps.c:324)
[94875.282606] ? exc_invalid_op (arch/x86/kernel/traps.c:345 (discriminator 1))
[94875.282615] ? asm_exc_invalid_op (./arch/x86/include/asm/idtentry.h:568)
[94875.282628] ? dev_watchdog (net/sched/sch_generic.c:525 (discriminator 3))
[94875.282635] ? dev_watchdog (net/sched/sch_generic.c:525 (discriminator 3))
[94875.282642] ? pfifo_fast_reset (net/sched/sch_generic.c:496)
[94875.282649] ? pfifo_fast_reset (net/sched/sch_generic.c:496)
[94875.282656] call_timer_fn (./arch/x86/include/asm/jump_label.h:27
./include/linux/jump_label.h:207 ./include/trace/events/timer.h:127
kernel/time/timer.c:1701)
[94875.282669] __run_timers.part.0 (kernel/time/timer.c:1752
kernel/time/timer.c:2022)
[94875.282682] ? __hrtimer_run_queues (./include/linux/seqlock.h:612
kernel/time/hrtimer.c:1711 kernel/time/hrtimer.c:1749)
[94875.282690] ? recalibrate_cpu_khz (./arch/x86/include/asm/msr.h:215
arch/x86/kernel/tsc.c:1110)
[94875.282699] ? ktime_get (kernel/time/timekeeping.c:292
(discriminator 3) kernel/time/timekeeping.c:388 (discriminator 3)
kernel/time/timekeeping.c:848 (discriminator 3))
[94875.282709] run_timer_softirq (kernel/time/timer.c:2037)
[94875.282720] __do_softirq (./arch/x86/include/asm/jump_label.h:27
./include/linux/jump_label.h:207 ./include/trace/events/irq.h:142
kernel/softirq.c:572)
[94875.282732] irq_exit_rcu (kernel/softirq.c:445 kernel/softirq.c:650
kernel/softirq.c:662)
[94875.282743] sysvec_apic_timer_interrupt
(arch/x86/kernel/apic/apic.c:1106 (discriminator 14))
[94875.282755]  </IRQ>
[94875.282759]  <TASK>
[94875.282763] asm_sysvec_apic_timer_interrupt
(./arch/x86/include/asm/idtentry.h:645)
[94875.282775] RIP: 0010:cpuidle_enter_state (drivers/cpuidle/cpuidle.c:291)
[94875.282787] Code: 00 e8 e2 01 fd fe e8 7d fa ff ff 8b 53 04 49 89
c5 0f 1f 44 00 00 31 ff e8 5b 71 fc fe 45 84 ff 0f 85 60 02 00 00 fb
45 85 f6 <0f> 88 8e 01 00 00 49 63 ce 4c 8b 14 24 48 8d 04 49 48 8d 14
81 48
All code
========
   0: 00 e8                add    %ch,%al
   2: e2 01                loop   0x5
   4: fd                    std
   5: fe                    (bad)
   6: e8 7d fa ff ff        call   0xfffffffffffffa88
   b: 8b 53 04              mov    0x4(%rbx),%edx
   e: 49 89 c5              mov    %rax,%r13
  11: 0f 1f 44 00 00        nopl   0x0(%rax,%rax,1)
  16: 31 ff                xor    %edi,%edi
  18: e8 5b 71 fc fe        call   0xfffffffffefc7178
  1d: 45 84 ff              test   %r15b,%r15b
  20: 0f 85 60 02 00 00    jne    0x286
  26: fb                    sti
  27: 45 85 f6              test   %r14d,%r14d
  2a:* 0f 88 8e 01 00 00    js     0x1be <-- trapping instruction
  30: 49 63 ce              movslq %r14d,%rcx
  33: 4c 8b 14 24          mov    (%rsp),%r10
  37: 48 8d 04 49          lea    (%rcx,%rcx,2),%rax
  3b: 48 8d 14 81          lea    (%rcx,%rax,4),%rdx
  3f: 48                    rex.W

Code starting with the faulting instruction
===========================================
   0: 0f 88 8e 01 00 00    js     0x194
   6: 49 63 ce              movslq %r14d,%rcx
   9: 4c 8b 14 24          mov    (%rsp),%r10
   d: 48 8d 04 49          lea    (%rcx,%rcx,2),%rax
  11: 48 8d 14 81          lea    (%rcx,%rax,4),%rdx
  15: 48                    rex.W
[94875.282794] RSP: 0018:ffffac34800a7e98 EFLAGS: 00000202
[94875.282803] RAX: ffff8c802faabb80 RBX: ffff8c802fab6600 RCX: 0000000000000000
[94875.282809] RDX: 0000000000000002 RSI: fffffff7a29adb93 RDI: 0000000000000000
[94875.282814] RBP: 0000000000000002 R08: 0000000000000000 R09: 0000000040000000
[94875.282820] R10: 0000000000000018 R11: 00000000000003d8 R12: ffffffff9d415480
[94875.282825] R13: 00005649df803d70 R14: 0000000000000002 R15: 0000000000000000
[94875.282835] ? cpuidle_enter_state (drivers/cpuidle/cpuidle.c:285)
[94875.282848] cpuidle_enter (drivers/cpuidle/cpuidle.c:390)
[94875.282857] do_idle (kernel/sched/idle.c:219 kernel/sched/idle.c:282)
[94875.282868] cpu_startup_entry (kernel/sched/idle.c:378 (discriminator 1))
[94875.282878] start_secondary (arch/x86/kernel/smpboot.c:288)
[94875.282887] secondary_startup_64_no_verify (arch/x86/kernel/head_64.S:370)
[94875.282900]  </TASK>
[94875.282904] ---[ end trace 0000000000000000 ]---

Which in turn ended up with:
[94875.282948] ixgbe 0000:06:00.0 eno1: Reset adapter
[94884.121100] rcu: INFO: rcu_preempt self-detected stall on CPU
[94884.126957] rcu:     8-...!: (20999 ticks this GP)
idle=1774/1/0x4000000000000000 softirq=987317/987317 fqs=625
[94884.136888] rcu:     (t=21015 jiffies g=2224957 q=302 ncpus=12)
[94884.142640] rcu: rcu_preempt kthread timer wakeup didn't happen for
18517 jiffies! g2224957 f0x0 RCU_GP_WAIT_FQS(5) ->state=0x402
[94884.154385] rcu:     Possible timer handling issue on cpu=4
timer-softirq=784094
[94884.161611] rcu: rcu_preempt kthread starved for 18540 jiffies!
g2224957 f0x0 RCU_GP_WAIT_FQS(5) ->state=0x402 ->cpu=4
[94884.172399] rcu:     Unless rcu_preempt kthread gets sufficient CPU
time, OOM is now expected behavior.
[94884.181621] rcu: RCU grace-period kthread stack dump:
[94884.186909] rcu: Stack dump where RCU GP kthread last ran:
[94947.192496] rcu: INFO: rcu_preempt self-detected stall on CPU
[94947.198353] rcu:     8-....: (84001 ticks this GP)
idle=1774/1/0x4000000000000000 softirq=987317/987317 fqs=16377
[94947.208456] rcu:     (t=84088 jiffies g=2224957 q=828 ncpus=12)

Eventually the watchdog kicked in and rebooted the machine
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
