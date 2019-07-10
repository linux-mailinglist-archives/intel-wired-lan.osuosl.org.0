Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E86F565A3B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jul 2019 17:17:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7FCE6880B3;
	Thu, 11 Jul 2019 15:17:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1azVZCRhLrBZ; Thu, 11 Jul 2019 15:17:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 85020880C1;
	Thu, 11 Jul 2019 15:17:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 048661BF47A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2019 23:29:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F2F9B2041B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2019 23:29:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BBz5w77iS0GX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jul 2019 23:29:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 146D9203AE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2019 23:29:41 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id z4so4419808qtc.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2019 16:29:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fk89bVjmURxGvXV7OaZ71cWqbOQvM2q6nM1dAeGQkB8=;
 b=QxwTMw9QnCZz5nzXj6stf/DipgvoZMFB1gd/wY5O4AbNgO/lrr0Pn8X4wFKthqKu6+
 tc7FI9wTWPwb16mAd9wdEZ0Jqmy9YwNuiBFMNiYPQXg5BXDoZtzNJexYI4FjXYUS4lEZ
 IpV1wmYjcXd3hoCJUMG4p4LwAVB8bIcLmha/x542MQZ9nhijiDJ7UZbYlXN9RscQJk3U
 kyxbIqvBu/4PpwmS2p3y+KJsvlIWrKRqJdkqE20zlfXTopVchRXgT1GtoVXdUfe386j8
 H85n4x75U9O67+Z32y/Y8CkIH5J+Lz/8F23c5K3Dv2k5HNxLOk8SnLIIe9VNroN5Godm
 2fbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fk89bVjmURxGvXV7OaZ71cWqbOQvM2q6nM1dAeGQkB8=;
 b=fNmdhVlt3Uj1axiP1dABY5ys4y+U97BYqpdiQBZWCD3yDyTLwhw0E3vTEe6g/W51TC
 kHT+hiRVPJ6Dm8IvTAH9e90esIPRZFFn8IV4PQ+gajzE8MZAmR24EJcvwRjTygQLdStQ
 CePY6Il+5Y0PIG9itKdcjpdRnSiHXmPiYtGgao/bLk4Bj7iiontqt5YSuEmYvQhBcKdx
 l6Zt/PGc1jplnwhcVk6cMVNvM+l+hNhtra6OK02vlONPqj0vM7X9py1IgLIiOGIy0zlI
 WByykXTerIF7L0HMqMTNptS4wBRqvzASbAM1wLWo/cfJ2BMqUOamY8eTuxJ/bCw+J/fR
 gHYA==
X-Gm-Message-State: APjAAAXKPeEM0YN3i0WvBIPEFK/vGzOvLcemam10v7fEzVX2RYnQmzYR
 Y6fp4Ti8XRRozgB91dPN9ZT0yqGvXt75N3e2JRw=
X-Google-Smtp-Source: APXvYqzEr2Ef2KQ3C0RaPc0rVkUuQbb1jwQZrKtZm9qxNqAUATqXkNWXWd2Uk+8y3/dUBbbSkj1UbnZeDYkD/JvYrG0=
X-Received: by 2002:ac8:21b7:: with SMTP id 52mr488797qty.59.1562801380073;
 Wed, 10 Jul 2019 16:29:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAEf4BzaUEWwGL3k0VeiFYFqyJexQU9cDZWN69jSDpBjP1ZEcpw@mail.gmail.com>
 <000000000000a94981058d37f1a4@google.com>
In-Reply-To: <000000000000a94981058d37f1a4@google.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Wed, 10 Jul 2019 16:29:29 -0700
Message-ID: <CAEf4BzabgRE6qZChfw=7nptxYAyZFcj0+Jk_PMSZQP0ZVagQzg@mail.gmail.com>
To: Hillf Danton <hdanton@sina.com>
X-Mailman-Approved-At: Thu, 11 Jul 2019 15:17:24 +0000
Subject: [Intel-wired-lan] bpf_prog_free_deferred bug. WAS: Re: WARNING in
 mark_chain_precision
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
Cc: xdp-newbies@vger.kernel.org, Song Liu <songliubraving@fb.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>, hawk@kernel.org,
 Daniel Borkmann <daniel@iogearbox.net>,
 open list <linux-kernel@vger.kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 Martin Lau <kafai@fb.com>, syzkaller-bugs@googlegroups.com,
 Networking <netdev@vger.kernel.org>, intel-wired-lan@lists.osuosl.org,
 syzbot <syzbot+f21251a7468cd46efc60@syzkaller.appspotmail.com>,
 Yonghong Song <yhs@fb.com>, bpf <bpf@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jul 9, 2019 at 9:08 PM Hillf Danton <hdanton@sina.com> wrote:
>
>
> Mon, 08 Jul 2019 21:25:00 -0700 (PDT)
> > Hello,
> >
> > syzbot has tested the proposed patch but the reproducer still triggered
> > crash:
> > WARNING in bpf_jit_free
> >
> > WARNING: CPU: 0 PID: 9077 at kernel/bpf/core.c:851 bpf_jit_free+0x157/0x1b0
> > Kernel panic - not syncing: panic_on_warn set ...
> > CPU: 0 PID: 9077 Comm: kworker/0:3 Not tainted 5.2.0-rc6+ #1
> > Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS
> > Google 01/01/2011
> > Workqueue: events bpf_prog_free_deferred
> > Call Trace:
> >   __dump_stack lib/dump_stack.c:77 [inline]
> >   dump_stack+0x172/0x1f0 lib/dump_stack.c:113
> >   panic+0x2cb/0x744 kernel/panic.c:219
> >   __warn.cold+0x20/0x4d kernel/panic.c:576
> >   report_bug+0x263/0x2b0 lib/bug.c:186
> >   fixup_bug arch/x86/kernel/traps.c:179 [inline]
> >   fixup_bug arch/x86/kernel/traps.c:174 [inline]
> >   do_error_trap+0x11b/0x200 arch/x86/kernel/traps.c:272
> >   do_invalid_op+0x37/0x50 arch/x86/kernel/traps.c:291
> >   invalid_op+0x14/0x20 arch/x86/entry/entry_64.S:986
> > RIP: 0010:bpf_jit_free+0x157/0x1b0
> > Code: 00 fc ff df 48 89 fa 48 c1 ea 03 80 3c 02 00 75 5d 48 b8 00 02 00 00
> > 00 00 ad de 48 39 43 70 0f 84 05 ff ff ff e8 09 7f f4 ff <0f> 0b e9 f9 fe
> > ff ff e8 2d 02 2e 00 e9 d9 fe ff ff 48 89 7d e0 e8
> > RSP: 0018:ffff888084affcb0 EFLAGS: 00010293
> > RAX: ffff88808a622100 RBX: ffff88809639d580 RCX: ffffffff817b0b0d
> > RDX: 0000000000000000 RSI: ffffffff817c4557 RDI: ffff88809639d5f0
> > RBP: ffff888084affcd0 R08: 1ffffffff150daa8 R09: fffffbfff150daa9
> > R10: fffffbfff150daa8 R11: ffffffff8a86d547 R12: ffffc90001921000
> > R13: ffff88809639d5e8 R14: ffff8880a0589800 R15: ffff8880ae834d40
> >   bpf_prog_free_deferred+0x27a/0x350 kernel/bpf/core.c:1982
> >   process_one_work+0x989/0x1790 kernel/workqueue.c:2269
> >   worker_thread+0x98/0xe40 kernel/workqueue.c:2415
> >   kthread+0x354/0x420 kernel/kthread.c:255
> >   ret_from_fork+0x24/0x30 arch/x86/entry/entry_64.S:352
> > Kernel Offset: disabled
> > Rebooting in 86400 seconds..
> >
> >
> > Tested on:
> >
> > commit:         b9321614 bpf: fix precision bit propagation for BPF_ST ins..
> > git tree:       https://github.com/anakryiko/linux bpf-fix-precise-bpf_st
> > console output: https://syzkaller.appspot.com/x/log.txt?x=112f0dfda00000
> > kernel config:  https://syzkaller.appspot.com/x/.config?x=6bb3e6e7997c14f9
> > compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> >
>
> 1, currently, bpf_prog_put(), the put helper, deletes all kallsyms before
> invoking the free helper, bpf_prog_free(); the latter complains if kallsyms
> are detected not all off.
>
> 2, before commit 538950a1b752 ("soreuseport: setsockopt
> SO_ATTACH_REUSEPORT_[CE]BPF"), __bpf_prog_release() already called the put
> helper or the free one for a given prog depending on its type: put for
> BPF_PROG_TYPE_SOCKET_FILTER.
>
> In the commit we can see bpf_prog_destroy(), __bpf_prog_free(),
> bpf_prog_put(), here and then; Note in __get_bpf() the put for
> !BPF_PROG_TYPE_SOCKET_FILTER.
>
> 3, in commit 113214be7f6c ("bpf: refactor bpf_prog_get and type check into
> helper") bpf_prog_get_type() was added and put in __get_bpf().
>
> In the commit we can see other types like BPF_PROG_TYPE_SCHED_ACT and
> BPF_PROG_TYPE_SCHED_CLS.
>
> 4, in commit 8217ca653ec6 ("bpf: Enable BPF_PROG_TYPE_SK_REUSEPORT bpf prog
> in reuseport selection") sk_reuseport_prog_free() was added without a word
> in the log for it.
>
> 5, enrich prog type in __bpf_prog_release().

Thanks for investigation!

I'm curious what makes BPF_PROG_TYPE_SOCKET_FILTER (and
BPF_PROG_TYPE_SK_REUSEPORT) special, compared to all the other types
of BPF programs. If it's something to do with sockets specifically,
there are a bunch of other programs that deal with sockets, so should
they be handled specially as well (e.g., BPF_PROG_TYPE_CGROUP_SOCK)?

Daniel, do you have any insight here?

>
> --- a/net/core/filter.c
> +++ b/net/core/filter.c
> @@ -1142,11 +1142,15 @@ static void bpf_release_orig_filter(stru
>
>  static void __bpf_prog_release(struct bpf_prog *prog)
>  {
> -       if (prog->type == BPF_PROG_TYPE_SOCKET_FILTER) {
> +       switch (prog->type) {
> +       case BPF_PROG_TYPE_SOCKET_FILTER:
> +       case BPF_PROG_TYPE_SK_REUSEPORT:
>                 bpf_prog_put(prog);
> -       } else {
> +               break;
> +       default:
>                 bpf_release_orig_filter(prog);
>                 bpf_prog_free(prog);
> +               break;
>         }
>  }
>
> --
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
