Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6005E62736
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jul 2019 19:33:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2082985A22;
	Mon,  8 Jul 2019 17:32:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GnIBae_DuSs0; Mon,  8 Jul 2019 17:32:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1A0C685A56;
	Mon,  8 Jul 2019 17:32:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 573981BF2BE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 16:07:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 539738592F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 16:07:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3oyNVfqc_Dk9 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jul 2019 16:07:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D8918858BA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 16:07:06 +0000 (UTC)
Received: by mail-io1-f69.google.com with SMTP id n8so19482308ioo.21
 for <intel-wired-lan@lists.osuosl.org>; Mon, 08 Jul 2019 09:07:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=TqFO65CoYLM07AC5TqXO+GX7mf0SUZmV5q2ij7PT9gI=;
 b=pG5bsMgTxhbuA3FeycIK+FFX7Zl1UYYXmnnKetcFhEvqiKYmE2yX/zuoVC9NAPGLJ8
 rJFEXsNf4a8lANEKgDjUjcXHLT2LeZedEF8p2hIrXfqhpsFlEs7w6QPhvYM2g2K5mnyL
 MpzhMKO00S63sq09K0cTz6KuZRqD6am0PXOysW3hKfrv3G7ceTV/wGAtjKfkMEpC+oIK
 RIgY8oj6FODGqe6vQoWBljPOddTakpMV2kFEI3HV3S3KESEhG0yCh9zhsQ6Uk7CTjK21
 sF0gErcKVb/KAdx4/hCQKqZaLlfHGtXJyJoi9u+sU3uYMSxEoPKaOIxtTdrY5Nuk4zyt
 yDzw==
X-Gm-Message-State: APjAAAWQ1jTumVUMXznW2n6Vk7NSQuSGzqVr8J1lmy0Aa326xIbjyIu2
 hdsFSNsB9IhOWjgk690YI4WUSq8/JICMaRnV5kc8XAEjWPur
X-Google-Smtp-Source: APXvYqypjVO3/nyV1s38LzoFPnqLPNAQGQ7ftNO2UBebL5TEyMxaB3ToQ/6UR4tEu4oPYBSPQYTZN6TXG7nCBB9KomBKcJj3Mxnt
MIME-Version: 1.0
X-Received: by 2002:a6b:cd86:: with SMTP id
 d128mr19903340iog.234.1562602026120; 
 Mon, 08 Jul 2019 09:07:06 -0700 (PDT)
Date: Mon, 08 Jul 2019 09:07:06 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000b13e1d058d2da276@google.com>
From: syzbot <syzbot+f21251a7468cd46efc60@syzkaller.appspotmail.com>
To: aaron.f.brown@intel.com, ast@kernel.org, bpf@vger.kernel.org, 
 daniel@iogearbox.net, davem@davemloft.net, hawk@kernel.org, 
 intel-wired-lan@lists.osuosl.org, jakub.kicinski@netronome.com, 
 jeffrey.t.kirsher@intel.com, john.fastabend@gmail.com, kafai@fb.com, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, sasha.neftin@intel.com, 
 songliubraving@fb.com, syzkaller-bugs@googlegroups.com, 
 xdp-newbies@vger.kernel.org, yhs@fb.com
X-Mailman-Approved-At: Mon, 08 Jul 2019 17:32:57 +0000
Subject: [Intel-wired-lan] WARNING in mark_chain_precision
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello,

syzbot found the following crash on:

HEAD commit:    a51df9f8 gve: fix -ENOMEM null check on a page allocation
git tree:       net-next
console output: https://syzkaller.appspot.com/x/log.txt?x=17e64325a00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=6bb3e6e7997c14f9
dashboard link: https://syzkaller.appspot.com/bug?extid=f21251a7468cd46efc60
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=114f842da00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1630a5aba00000

The bug was bisected to:

commit 55fdbeaa2db8b271db767240fba24a60bd232528
Author: Sasha Neftin <sasha.neftin@intel.com>
Date:   Mon Jan 7 14:40:17 2019 +0000

     igc: Remove unused code

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=15c205b9a00000
final crash:    https://syzkaller.appspot.com/x/report.txt?x=17c205b9a00000
console output: https://syzkaller.appspot.com/x/log.txt?x=13c205b9a00000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+f21251a7468cd46efc60@syzkaller.appspotmail.com
Fixes: 55fdbeaa2db8 ("igc: Remove unused code")

------------[ cut here ]------------
verifier backtracking bug
WARNING: CPU: 0 PID: 8846 at kernel/bpf/verifier.c:1755  
mark_chain_precision+0x15c2/0x18e0 kernel/bpf/verifier.c:1755
Kernel panic - not syncing: panic_on_warn set ...
CPU: 0 PID: 8846 Comm: syz-executor835 Not tainted 5.2.0-rc6+ #56
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
Google 01/01/2011
Call Trace:
  __dump_stack lib/dump_stack.c:77 [inline]
  dump_stack+0x172/0x1f0 lib/dump_stack.c:113
  panic+0x2cb/0x744 kernel/panic.c:219
  __warn.cold+0x20/0x4d kernel/panic.c:576
  report_bug+0x263/0x2b0 lib/bug.c:186
  fixup_bug arch/x86/kernel/traps.c:179 [inline]
  fixup_bug arch/x86/kernel/traps.c:174 [inline]
  do_error_trap+0x11b/0x200 arch/x86/kernel/traps.c:272
  do_invalid_op+0x37/0x50 arch/x86/kernel/traps.c:291
  invalid_op+0x14/0x20 arch/x86/entry/entry_64.S:986
RIP: 0010:mark_chain_precision+0x15c2/0x18e0 kernel/bpf/verifier.c:1755
Code: e9 55 f2 ff ff 48 89 df e8 4b 0a 2c 00 e9 3a f3 ff ff e8 61 cb f2 ff  
48 c7 c7 e0 43 91 87 c6 05 40 2b 1f 08 01 e8 1c 03 c5 ff <0f> 0b 41 be f2  
ff ff ff e9 eb f7 ff ff e8 3c cb f2 ff 45 31 f6 e9
RSP: 0018:ffff8880a01ef378 EFLAGS: 00010282
RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000000
RDX: 0000000000000000 RSI: ffffffff815adb06 RDI: ffffed101403de61
RBP: ffff8880a01ef4d0 R08: ffff88808e26c400 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
R13: ffff8880a14e8440 R14: 0000000000000001 R15: dffffc0000000000
  check_cond_jmp_op+0xcce/0x3c20 kernel/bpf/verifier.c:5793
  do_check+0x61cf/0x8930 kernel/bpf/verifier.c:7684
  bpf_check+0x6f99/0x9950 kernel/bpf/verifier.c:9195
  bpf_prog_load+0xec8/0x1670 kernel/bpf/syscall.c:1690
  __do_sys_bpf+0xa20/0x42c0 kernel/bpf/syscall.c:2830
  __se_sys_bpf kernel/bpf/syscall.c:2789 [inline]
  __x64_sys_bpf+0x73/0xb0 kernel/bpf/syscall.c:2789
  do_syscall_64+0xfd/0x680 arch/x86/entry/common.c:301
  entry_SYSCALL_64_after_hwframe+0x49/0xbe
RIP: 0033:0x440369
Code: 18 89 d0 c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 00 48 89 f8 48 89 f7  
48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff  
ff 0f 83 fb 13 fc ff c3 66 2e 0f 1f 84 00 00 00 00
RSP: 002b:00007ffccb952af8 EFLAGS: 00000246 ORIG_RAX: 0000000000000141
RAX: ffffffffffffffda RBX: 00000000004002c8 RCX: 0000000000440369
RDX: 0000000000000048 RSI: 0000000020000200 RDI: 0000000000000005
RBP: 00000000006ca018 R08: 0000000000000000 R09: 0000000000000000
R10: 00000000ffffffff R11: 0000000000000246 R12: 0000000000401bf0
R13: 0000000000401c80 R14: 0000000000000000 R15: 0000000000000000
Kernel Offset: disabled
Rebooting in 86400 seconds..


---
This bug is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this bug report. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection
syzbot can test patches for this bug, for details see:
https://goo.gl/tpsmEJ#testing-patches
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
