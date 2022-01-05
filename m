Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1C5485573
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jan 2022 16:08:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 88C554163A;
	Wed,  5 Jan 2022 15:08:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zHBxQ2NhSIUN; Wed,  5 Jan 2022 15:08:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7269B41614;
	Wed,  5 Jan 2022 15:08:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F1C321BF575
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 11:20:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EC83E60BA6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 11:20:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DcUnKqbRCc8I for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jan 2022 11:20:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 27E6B60AC5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 11:20:26 +0000 (UTC)
Received: by mail-io1-f71.google.com with SMTP id
 k6-20020a0566022d8600b005e6ff1b6bbaso21947081iow.8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 05 Jan 2022 03:20:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=V68sfoNxZdTodjvbLf8yyxMv294L7ESP0hArLZD7o74=;
 b=XJZ74I/DjNVs+71/Heb5bSduHZoaNPkNCOajkD1+C3/YYIh+bXyLqqwCjV9TDqFHr9
 +kr3PEpbn0SFgGd4Fn4Rl8GD/j8mkuAFP5NUnuN8B7o2+bv2U5qLefFvkPRIKTh7dksY
 I4RBrFN+xwgRr+XyQSs90WSRQKZYDBhJ/H4QdrpEd8Ofsn00iKz81VlLms216zT49GkN
 zp4CQMqLKCmsQi6zQm3nUJ0rs9gjx3nLV4NiR648uvWWzqNGpDFQKqqC5S+I6lIAYHHQ
 Shxj3u/PdGz6ZRhG2XnHWwzYuHppGSG8rK3L9k1HM6In2lMsF+g8AGgq7M1YeUx7BwI0
 p00Q==
X-Gm-Message-State: AOAM531mZ0bXFGTSOD7FZ+VPBYqA99aXWQ4df+dwsyfe6V+T1Aav7r0/
 jPyW2pYmVqxn7Ma8Tkya2pZhGSTd13nbwu1BAvu+QDMN4wt+
X-Google-Smtp-Source: ABdhPJzDqSYr7M4I3MlKGdtYeZtqI1DD3gKHt2IDSbbIwXVPyJ9zyNKIBETlaLBOK0a9seWxyNUx10UUue9ZVjelQfdqYsMS9Cvu
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:501:: with SMTP id
 d1mr24461933ils.285.1641381626346; 
 Wed, 05 Jan 2022 03:20:26 -0800 (PST)
Date: Wed, 05 Jan 2022 03:20:26 -0800
In-Reply-To: <0000000000007ea16705d0cfbb53@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000c7845605d4d3f0a0@google.com>
From: syzbot <syzbot+4c63f36709a642f801c5@syzkaller.appspotmail.com>
To: anthony.l.nguyen@intel.com, changbin.du@intel.com, 
 christian.brauner@ubuntu.com, davem@davemloft.net, edumazet@google.com, 
 eric.dumazet@gmail.com, hawk@kernel.org, hkallweit1@gmail.com, 
 intel-wired-lan-owner@osuosl.org, intel-wired-lan@lists.osuosl.org, 
 jesse.brandeburg@intel.com, kuba@kernel.org, linux-can@vger.kernel.org, 
 linux-kernel@vger.kernel.org, mkl@pengutronix.de, netdev@vger.kernel.org, 
 socketcan@hartkopp.net, syzkaller-bugs@googlegroups.com, yajun.deng@linux.dev
X-Mailman-Approved-At: Wed, 05 Jan 2022 15:08:52 +0000
Subject: Re: [Intel-wired-lan] [syzbot] kernel BUG in pskb_expand_head
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

syzbot has found a reproducer for the following issue on:

HEAD commit:    c9e6606c7fe9 Linux 5.16-rc8
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=148351c3b00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=32f9fa260d7413b4
dashboard link: https://syzkaller.appspot.com/bug?extid=4c63f36709a642f801c5
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15435e2bb00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=12f4508db00000

The issue was bisected to:

commit e4b8954074f6d0db01c8c97d338a67f9389c042f
Author: Eric Dumazet <edumazet@google.com>
Date:   Tue Dec 7 01:30:37 2021 +0000

    netlink: add net device refcount tracker to struct ethnl_req_info

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=109e6fcbb00000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=129e6fcbb00000
console output: https://syzkaller.appspot.com/x/log.txt?x=149e6fcbb00000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+4c63f36709a642f801c5@syzkaller.appspotmail.com
Fixes: e4b8954074f6 ("netlink: add net device refcount tracker to struct ethnl_req_info")

skbuff: skb_over_panic: text:ffffffff88235fb8 len:4096 put:4096 head:ffff888021cb8400 data:ffff888021cb8400 tail:0x1000 end:0xc0 dev:<NULL>
------------[ cut here ]------------
kernel BUG at net/core/skbuff.c:113!
invalid opcode: 0000 [#1] PREEMPT SMP KASAN
CPU: 1 PID: 19 Comm: ksoftirqd/1 Not tainted 5.16.0-rc8-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
RIP: 0010:skb_panic+0x16c/0x16e net/core/skbuff.c:113
Code: f8 4c 8b 4c 24 10 8b 4b 70 41 56 45 89 e8 4c 89 e2 41 57 48 89 ee 48 c7 c7 e0 4b ad 8a ff 74 24 10 ff 74 24 20 e8 6e 24 c2 ff <0f> 0b e8 74 92 38 f8 4c 8b 64 24 18 e8 da 47 7f f8 48 c7 c1 80 58
RSP: 0018:ffffc90000d979e0 EFLAGS: 00010286
RAX: 000000000000008b RBX: ffff888021ccb500 RCX: 0000000000000000
RDX: ffff88801196d700 RSI: ffffffff815f0948 RDI: fffff520001b2f2e
RBP: ffffffff8aad58c0 R08: 000000000000008b R09: 0000000000000000
R10: ffffffff815ea6ee R11: 0000000000000000 R12: ffffffff88235fb8
R13: 0000000000001000 R14: ffffffff8aad4ba0 R15: 00000000000000c0
FS:  0000000000000000(0000) GS:ffff8880b9d00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f886c8cc718 CR3: 000000007ad6d000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 skb_over_panic net/core/skbuff.c:118 [inline]
 skb_put.cold+0x24/0x24 net/core/skbuff.c:1990
 isotp_rcv_cf net/can/isotp.c:570 [inline]
 isotp_rcv+0xa38/0x1e30 net/can/isotp.c:668
 deliver net/can/af_can.c:574 [inline]
 can_rcv_filter+0x445/0x8d0 net/can/af_can.c:635
 can_receive+0x31d/0x580 net/can/af_can.c:665
 can_rcv+0x120/0x1c0 net/can/af_can.c:696
 __netif_receive_skb_one_core+0x114/0x180 net/core/dev.c:5465
 __netif_receive_skb+0x24/0x1b0 net/core/dev.c:5579
 process_backlog+0x2a5/0x6c0 net/core/dev.c:6455
 __napi_poll+0xaf/0x440 net/core/dev.c:7023
 napi_poll net/core/dev.c:7090 [inline]
 net_rx_action+0x801/0xb40 net/core/dev.c:7177
 __do_softirq+0x29b/0x9c2 kernel/softirq.c:558
 run_ksoftirqd kernel/softirq.c:921 [inline]
 run_ksoftirqd+0x2d/0x60 kernel/softirq.c:913
 smpboot_thread_fn+0x645/0x9c0 kernel/smpboot.c:164
 kthread+0x405/0x4f0 kernel/kthread.c:327
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:295
 </TASK>
Modules linked in:
---[ end trace 9f06028ec4daf4be ]---
RIP: 0010:skb_panic+0x16c/0x16e net/core/skbuff.c:113
Code: f8 4c 8b 4c 24 10 8b 4b 70 41 56 45 89 e8 4c 89 e2 41 57 48 89 ee 48 c7 c7 e0 4b ad 8a ff 74 24 10 ff 74 24 20 e8 6e 24 c2 ff <0f> 0b e8 74 92 38 f8 4c 8b 64 24 18 e8 da 47 7f f8 48 c7 c1 80 58
RSP: 0018:ffffc90000d979e0 EFLAGS: 00010286
RAX: 000000000000008b RBX: ffff888021ccb500 RCX: 0000000000000000
RDX: ffff88801196d700 RSI: ffffffff815f0948 RDI: fffff520001b2f2e
RBP: ffffffff8aad58c0 R08: 000000000000008b R09: 0000000000000000
R10: ffffffff815ea6ee R11: 0000000000000000 R12: ffffffff88235fb8
R13: 0000000000001000 R14: ffffffff8aad4ba0 R15: 00000000000000c0
FS:  0000000000000000(0000) GS:ffff8880b9d00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f886c8cc718 CR3: 000000007ad6d000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
