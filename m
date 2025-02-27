Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 597BCA48455
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Feb 2025 17:10:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1652A60AF9;
	Thu, 27 Feb 2025 16:10:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7Umj77jkj4sX; Thu, 27 Feb 2025 16:10:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E47EB60A43
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740672606;
	bh=lX/m3nnf7YLk7rWeS7FHGWYPncB5OtqoPav3Xi3zF38=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=HgjoSMYCVhtpcjHqJSdRwEASOBCZqUEtQLvtVoHhJHrWcPqq0ERu4WOgQY7ocLz9A
	 odySIpXPsiCYLFG0cooT6BFZEzMYkb1F+5giCvLUvPrT3sd9+/KOSY0xEf6eApyErM
	 ntv37nQ2jKc3fo+bc88c4QyMXEkexzahxhyJcvGC1XQm+I3swKlPiWKRm4OWTrqQvR
	 FfgIUY2/R+LahmmZhDJz2rvI9Bv1pmbbb9PutgcUfFHd1lRXT3apvBGQdgJfmkptcq
	 /YA931PmA5NWveQx369MD+pllEjePB3RjVIbnEX6kklx82hSetcZgCY8BwxEi4IFGU
	 CGfq3dMCFA2rw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E47EB60A43;
	Thu, 27 Feb 2025 16:10:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 71CC568
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 08:22:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 550C140268
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 08:22:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yc4pOm4KlsjG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Feb 2025 08:22:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.166.206;
 helo=mail-il1-f206.google.com;
 envelope-from=3wcdazwkbaec178tjuun0jyyrm.pxxpun31n0lxw2nw2.lxv@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C94FA400EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C94FA400EC
Received: from mail-il1-f206.google.com (mail-il1-f206.google.com
 [209.85.166.206])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C94FA400EC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 08:22:25 +0000 (UTC)
Received: by mail-il1-f206.google.com with SMTP id
 e9e14a558f8ab-3d2a1d6747aso7739865ab.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 00:22:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740644544; x=1741249344;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=lX/m3nnf7YLk7rWeS7FHGWYPncB5OtqoPav3Xi3zF38=;
 b=A75kyK6+AmImWxbXvuIGsxwQtmK2M3OXviO9sxPQe+0OAblG+1PiYJmkms6P65SZih
 vPhQl7a0r+h1ftV4x9NZukgqVwYJ73WStlV2bPxDZ2qSGPowNTr5KOLuHe+kP53GSSmM
 nuLRqe3Yuoclx/JV8SykIEGMuBoYySXkgeEcLNDkAKAGdeH2lg1XxEAx3y34aI+GiBhF
 isOfKFxN38vdb2ep2Rmts7p/p3bm/w23chKvQu6npwB8LDIDaPhEqXEko+iwSP7g+Rvn
 lAlB4R7Q+ot9lx+IGKLWq30dodepmlRQZnrjMBBl5uYjWXrZD6ik1faDNXEooVBT1der
 O0BA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVNMv3QO1Pr9K+uNKD8N7PygTiPmFOCUec0qawMal6iE2VcY5im3aORHj5Z++UlOoUxt5x1j0KuqQ/yOU5cges=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxaKpPi83B3L7s7hi15rQILArWzkwCosFAlI62Tq6ICxw5T+LKj
 UWwibpny4+QQ4hZIZ2tkyFYfP0++wu/O9Ia/TD02jkMjyoqoAbPxabDFQW4TFyJYP2oZhcoX7hC
 Jd2WCvel938nfdskkegE1VB0dS0ngkn7SjJSbJH5zuFo2kO1H0Ec+fOg=
X-Google-Smtp-Source: AGHT+IHcQW6B6QePv0+ZxKqh9G7YYitC+fhui9RZFurMckxd1PhSpkzoTzpq8URaDrFbK27MtTatcCVY5c4VtP+QUYbVRAaqTMO/
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:184e:b0:3cd:d14c:be69 with SMTP id
 e9e14a558f8ab-3d3dd2d9ea5mr17906235ab.11.1740644544319; Thu, 27 Feb 2025
 00:22:24 -0800 (PST)
Date: Thu, 27 Feb 2025 00:22:24 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <67c020c0.050a0220.222324.0011.GAE@google.com>
From: syzbot <syzbot+da65c993ae113742a25f@syzkaller.appspotmail.com>
To: andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, davem@davemloft.net, 
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, pabeni@redhat.com, 
 przemyslaw.kitszel@intel.com, syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Thu, 27 Feb 2025 16:10:04 +0000
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=syzkaller.appspotmail.com
Subject: [Intel-wired-lan] [syzbot] [intel-wired-lan?] kernel BUG in
 pskb_expand_head (4)
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello,

syzbot found the following issue on:

HEAD commit:    ac9c34d1e45a Merge tag 'for-linus' of git://git.kernel.org..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=10da9db0580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=b1635bf4c5557b92
dashboard link: https://syzkaller.appspot.com/bug?extid=da65c993ae113742a25f
compiler:       gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40
userspace arch: i386

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/7feb34a89c2a/non_bootable_disk-ac9c34d1.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/a84d67d61e80/vmlinux-ac9c34d1.xz
kernel image: https://storage.googleapis.com/syzbot-assets/951486618398/bzImage-ac9c34d1.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+da65c993ae113742a25f@syzkaller.appspotmail.com

------------[ cut here ]------------
kernel BUG at net/core/skbuff.c:2178!
Oops: invalid opcode: 0000 [#1] PREEMPT SMP KASAN NOPTI
CPU: 0 UID: 0 PID: 16371 Comm: syz.2.2764 Not tainted 6.14.0-rc4-syzkaller-00052-gac9c34d1e45a #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
RIP: 0010:pskb_expand_head+0x6ce/0x1240 net/core/skbuff.c:2178
Code: 7f 05 e8 35 98 f1 f8 8b 44 24 40 8b 74 24 44 29 f0 01 83 e0 00 00 00 e9 70 ff ff ff e8 4b 5e 8f f8 90 0f 0b e8 43 5e 8f f8 90 <0f> 0b e8 3b 5e 8f f8 41 81 cd 00 00 02 00 e9 46 fb ff ff e8 2a 5e
RSP: 0018:ffffc9000d6f7160 EFLAGS: 00010246
RAX: 0000000000080000 RBX: ffff88806c1f9400 RCX: ffffc900273e9000
RDX: 0000000000080000 RSI: ffffffff892a810d RDI: 0000000000000005
RBP: ffff88806c1f94cc R08: 0000000000000005 R09: 0000000000000001
R10: 0000000000000002 R11: 0000000000000005 R12: 0000000000000002
R13: 0000000000000820 R14: dffffc0000000000 R15: 0000000000000000
FS:  0000000000000000(0000) GS:ffff88802b400000(0063) knlGS:00000000f5066b40
CS:  0010 DS: 002b ES: 002b CR0: 0000000080050033
CR2: 000000008000601c CR3: 0000000054770000 CR4: 0000000000352ef0
Call Trace:
 <TASK>
 __skb_pad+0x18a/0x610 net/core/skbuff.c:2466
 __skb_put_padto include/linux/skbuff.h:3843 [inline]
 skb_put_padto include/linux/skbuff.h:3862 [inline]
 eth_skb_pad include/linux/etherdevice.h:656 [inline]
 e1000_xmit_frame+0x2d99/0x5800 drivers/net/ethernet/intel/e1000/e1000_main.c:3128
 __netdev_start_xmit include/linux/netdevice.h:5151 [inline]
 netdev_start_xmit include/linux/netdevice.h:5160 [inline]
 xmit_one net/core/dev.c:3806 [inline]
 dev_hard_start_xmit+0x9a/0x7b0 net/core/dev.c:3822
 sch_direct_xmit+0x1ae/0xc30 net/sched/sch_generic.c:343
 __dev_xmit_skb net/core/dev.c:4045 [inline]
 __dev_queue_xmit+0x13d4/0x43e0 net/core/dev.c:4621
 dev_queue_xmit include/linux/netdevice.h:3313 [inline]
 llc_sap_action_send_test_c+0x268/0x320 net/llc/llc_s_ac.c:144
 llc_exec_sap_trans_actions net/llc/llc_sap.c:153 [inline]
 llc_sap_next_state net/llc/llc_sap.c:182 [inline]
 llc_sap_state_process+0x239/0x510 net/llc/llc_sap.c:209
 llc_ui_sendmsg+0xd0d/0x14e0 net/llc/af_llc.c:993
 sock_sendmsg_nosec net/socket.c:718 [inline]
 __sock_sendmsg net/socket.c:733 [inline]
 ____sys_sendmsg+0xaaf/0xc90 net/socket.c:2573
 ___sys_sendmsg+0x135/0x1e0 net/socket.c:2627
 __sys_sendmmsg+0x2fa/0x420 net/socket.c:2709
 __compat_sys_sendmmsg net/compat.c:360 [inline]
 __do_compat_sys_sendmmsg net/compat.c:367 [inline]
 __se_compat_sys_sendmmsg net/compat.c:364 [inline]
 __ia32_compat_sys_sendmmsg+0x9d/0x100 net/compat.c:364
 do_syscall_32_irqs_on arch/x86/entry/common.c:165 [inline]
 __do_fast_syscall_32+0x73/0x120 arch/x86/entry/common.c:386
 do_fast_syscall_32+0x32/0x80 arch/x86/entry/common.c:411
 entry_SYSENTER_compat_after_hwframe+0x84/0x8e
RIP: 0023:0xf73de579
Code: b8 01 10 06 03 74 b4 01 10 07 03 74 b0 01 10 08 03 74 d8 01 00 00 00 00 00 00 00 00 00 00 00 00 00 51 52 55 89 e5 0f 34 cd 80 <5d> 5a 59 c3 90 90 90 90 8d b4 26 00 00 00 00 8d b4 26 00 00 00 00
RSP: 002b:00000000f506655c EFLAGS: 00000296 ORIG_RAX: 0000000000000159
RAX: ffffffffffffffda RBX: 0000000000000004 RCX: 0000000080000c40
RDX: 00000000842c97f7 RSI: 0000000000008014 RDI: 0000000000000000
RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:pskb_expand_head+0x6ce/0x1240 net/core/skbuff.c:2178
Code: 7f 05 e8 35 98 f1 f8 8b 44 24 40 8b 74 24 44 29 f0 01 83 e0 00 00 00 e9 70 ff ff ff e8 4b 5e 8f f8 90 0f 0b e8 43 5e 8f f8 90 <0f> 0b e8 3b 5e 8f f8 41 81 cd 00 00 02 00 e9 46 fb ff ff e8 2a 5e
RSP: 0018:ffffc9000d6f7160 EFLAGS: 00010246
RAX: 0000000000080000 RBX: ffff88806c1f9400 RCX: ffffc900273e9000
RDX: 0000000000080000 RSI: ffffffff892a810d RDI: 0000000000000005
RBP: ffff88806c1f94cc R08: 0000000000000005 R09: 0000000000000001
R10: 0000000000000002 R11: 0000000000000005 R12: 0000000000000002
R13: 0000000000000820 R14: dffffc0000000000 R15: 0000000000000000
FS:  0000000000000000(0000) GS:ffff88802b400000(0063) knlGS:00000000f5066b40
CS:  0010 DS: 002b ES: 002b CR0: 0000000080050033
CR2: 000000008000601c CR3: 0000000054770000 CR4: 0000000000352ef0
----------------
Code disassembly (best guess), 2 bytes skipped:
   0:	10 06                	adc    %al,(%rsi)
   2:	03 74 b4 01          	add    0x1(%rsp,%rsi,4),%esi
   6:	10 07                	adc    %al,(%rdi)
   8:	03 74 b0 01          	add    0x1(%rax,%rsi,4),%esi
   c:	10 08                	adc    %cl,(%rax)
   e:	03 74 d8 01          	add    0x1(%rax,%rbx,8),%esi
  1e:	00 51 52             	add    %dl,0x52(%rcx)
  21:	55                   	push   %rbp
  22:	89 e5                	mov    %esp,%ebp
  24:	0f 34                	sysenter
  26:	cd 80                	int    $0x80
* 28:	5d                   	pop    %rbp <-- trapping instruction
  29:	5a                   	pop    %rdx
  2a:	59                   	pop    %rcx
  2b:	c3                   	ret
  2c:	90                   	nop
  2d:	90                   	nop
  2e:	90                   	nop
  2f:	90                   	nop
  30:	8d b4 26 00 00 00 00 	lea    0x0(%rsi,%riz,1),%esi
  37:	8d b4 26 00 00 00 00 	lea    0x0(%rsi,%riz,1),%esi


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the report is already addressed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want to overwrite report's subsystems, reply with:
#syz set subsystems: new-subsystem
(See the list of subsystem names on the web dashboard)

If the report is a duplicate of another one, reply with:
#syz dup: exact-subject-of-another-report

If you want to undo deduplication, reply with:
#syz undup
