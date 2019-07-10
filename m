Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C6A64AAD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jul 2019 18:22:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2F13E85F2B;
	Wed, 10 Jul 2019 16:22:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uX2Hz4wJtVev; Wed, 10 Jul 2019 16:22:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 672AF85CAA;
	Wed, 10 Jul 2019 16:22:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 84DAE1BF41A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2019 04:13:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7E1AD204C5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2019 04:13:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0qe2frlSJmQh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jul 2019 04:13:41 +0000 (UTC)
X-Greylist: delayed 00:05:22 by SQLgrey-1.7.6
Received: from mail3-163.sinamail.sina.com.cn (mail3-163.sinamail.sina.com.cn
 [202.108.3.163])
 by silver.osuosl.org (Postfix) with SMTP id 72C80204C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2019 04:13:39 +0000 (UTC)
Received: from unknown (HELO localhost.localdomain)([221.219.5.31])
 by sina.com with ESMTP
 id 5D2564AB00006DDE; Wed, 10 Jul 2019 12:08:13 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 32331430409233
From: Hillf Danton <hdanton@sina.com>
To: syzbot <syzbot+f21251a7468cd46efc60@syzkaller.appspotmail.com>
Date: Wed, 10 Jul 2019 12:08:02 +0800
Message-Id: <000000000000a94981058d37f1a4@google.com>
In-Reply-To: <CAEf4BzaUEWwGL3k0VeiFYFqyJexQU9cDZWN69jSDpBjP1ZEcpw@mail.gmail.com>
References: 
MIME-Version: 1.0
Precedence: bulk
X-Mailing-List: linux-kernel@vger.kernel.org
Archived-At: <https://lore.kernel.org/lkml/000000000000a94981058d37f1a4@google.com/>
X-Mailman-Approved-At: Wed, 10 Jul 2019 16:22:52 +0000
Subject: Re: [Intel-wired-lan] WARNING in mark_chain_precision
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: xdp-newbies@vger.kernel.org, songliubraving@fb.com,
 andrii.nakryiko@gmail.com, jakub.kicinski@netronome.com, hawk@kernel.org,
 daniel@iogearbox.net, linux-kernel@vger.kernel.org, ast@kernel.org,
 kafai@fb.com, syzkaller-bugs@googlegroups.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, yhs@fb.com,
 bpf@vger.kernel.org, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


Mon, 08 Jul 2019 21:25:00 -0700 (PDT)
> Hello,
> 
> syzbot has tested the proposed patch but the reproducer still triggered  
> crash:
> WARNING in bpf_jit_free
> 
> WARNING: CPU: 0 PID: 9077 at kernel/bpf/core.c:851 bpf_jit_free+0x157/0x1b0
> Kernel panic - not syncing: panic_on_warn set ...
> CPU: 0 PID: 9077 Comm: kworker/0:3 Not tainted 5.2.0-rc6+ #1
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
> Google 01/01/2011
> Workqueue: events bpf_prog_free_deferred
> Call Trace:
>   __dump_stack lib/dump_stack.c:77 [inline]
>   dump_stack+0x172/0x1f0 lib/dump_stack.c:113
>   panic+0x2cb/0x744 kernel/panic.c:219
>   __warn.cold+0x20/0x4d kernel/panic.c:576
>   report_bug+0x263/0x2b0 lib/bug.c:186
>   fixup_bug arch/x86/kernel/traps.c:179 [inline]
>   fixup_bug arch/x86/kernel/traps.c:174 [inline]
>   do_error_trap+0x11b/0x200 arch/x86/kernel/traps.c:272
>   do_invalid_op+0x37/0x50 arch/x86/kernel/traps.c:291
>   invalid_op+0x14/0x20 arch/x86/entry/entry_64.S:986
> RIP: 0010:bpf_jit_free+0x157/0x1b0
> Code: 00 fc ff df 48 89 fa 48 c1 ea 03 80 3c 02 00 75 5d 48 b8 00 02 00 00  
> 00 00 ad de 48 39 43 70 0f 84 05 ff ff ff e8 09 7f f4 ff <0f> 0b e9 f9 fe  
> ff ff e8 2d 02 2e 00 e9 d9 fe ff ff 48 89 7d e0 e8
> RSP: 0018:ffff888084affcb0 EFLAGS: 00010293
> RAX: ffff88808a622100 RBX: ffff88809639d580 RCX: ffffffff817b0b0d
> RDX: 0000000000000000 RSI: ffffffff817c4557 RDI: ffff88809639d5f0
> RBP: ffff888084affcd0 R08: 1ffffffff150daa8 R09: fffffbfff150daa9
> R10: fffffbfff150daa8 R11: ffffffff8a86d547 R12: ffffc90001921000
> R13: ffff88809639d5e8 R14: ffff8880a0589800 R15: ffff8880ae834d40
>   bpf_prog_free_deferred+0x27a/0x350 kernel/bpf/core.c:1982
>   process_one_work+0x989/0x1790 kernel/workqueue.c:2269
>   worker_thread+0x98/0xe40 kernel/workqueue.c:2415
>   kthread+0x354/0x420 kernel/kthread.c:255
>   ret_from_fork+0x24/0x30 arch/x86/entry/entry_64.S:352
> Kernel Offset: disabled
> Rebooting in 86400 seconds..
> 
> 
> Tested on:
> 
> commit:         b9321614 bpf: fix precision bit propagation for BPF_ST ins..
> git tree:       https://github.com/anakryiko/linux bpf-fix-precise-bpf_st
> console output: https://syzkaller.appspot.com/x/log.txt?x=112f0dfda00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=6bb3e6e7997c14f9
> compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> 

1, currently, bpf_prog_put(), the put helper, deletes all kallsyms before
invoking the free helper, bpf_prog_free(); the latter complains if kallsyms
are detected not all off.

2, before commit 538950a1b752 ("soreuseport: setsockopt
SO_ATTACH_REUSEPORT_[CE]BPF"), __bpf_prog_release() already called the put
helper or the free one for a given prog depending on its type: put for
BPF_PROG_TYPE_SOCKET_FILTER.

In the commit we can see bpf_prog_destroy(), __bpf_prog_free(),
bpf_prog_put(), here and then; Note in __get_bpf() the put for
!BPF_PROG_TYPE_SOCKET_FILTER.

3, in commit 113214be7f6c ("bpf: refactor bpf_prog_get and type check into
helper") bpf_prog_get_type() was added and put in __get_bpf().

In the commit we can see other types like BPF_PROG_TYPE_SCHED_ACT and
BPF_PROG_TYPE_SCHED_CLS.

4, in commit 8217ca653ec6 ("bpf: Enable BPF_PROG_TYPE_SK_REUSEPORT bpf prog
in reuseport selection") sk_reuseport_prog_free() was added without a word
in the log for it.

5, enrich prog type in __bpf_prog_release().

--- a/net/core/filter.c
+++ b/net/core/filter.c
@@ -1142,11 +1142,15 @@ static void bpf_release_orig_filter(stru
 
 static void __bpf_prog_release(struct bpf_prog *prog)
 {
-	if (prog->type == BPF_PROG_TYPE_SOCKET_FILTER) {
+	switch (prog->type) {
+	case BPF_PROG_TYPE_SOCKET_FILTER:
+	case BPF_PROG_TYPE_SK_REUSEPORT:
 		bpf_prog_put(prog);
-	} else {
+		break;
+	default:
 		bpf_release_orig_filter(prog);
 		bpf_prog_free(prog);
+		break;
 	}
 }
 
--

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
