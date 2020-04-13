Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D95E1A6C32
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2020 20:47:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E0F26203AD;
	Mon, 13 Apr 2020 18:47:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0nE1KujbssBa; Mon, 13 Apr 2020 18:47:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F1EFA204B5;
	Mon, 13 Apr 2020 18:47:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1A7071BF3BF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2020 18:47:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 14D5A87B62
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2020 18:47:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U10qF1gkEvUo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Apr 2020 18:47:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A46F8857C3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2020 18:47:34 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id n20so10487537ioa.4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2020 11:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Eir63x8UrXHEi3SxEoTA6qtHgkzE3yeOTDrEiB0kVN0=;
 b=HLQHe86pdUzXT3pmls/StC/bhTvrHAWiiZyKcqZjDd+5x3QLeSNqwKyLOMbX2vkBQz
 IJLgoEjo5yM/myRt1xjq5Dlhy7jihjYVMlsMoVnahMlfQ/NPntWOCqH22EI7ZjC/jStg
 M+nRYnePMDvioCX9n7UmMIW70N6kH7Hjc1Zb9V+YbiskA/pZ1iEH7wWwo5zngBf0WJ8W
 YRQ5QJbdr/1UOTiQ5ZacfC+rsC04YhIK1C/ookqyIa0uLmkXKW7FvD/2MZc/VUym49at
 +EuAI4eCwQis5fYZv8lrngFb/pATJmd9ub6YmFybBmNEJvfo3Wus5r1mn+VGfRROxcut
 qNHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Eir63x8UrXHEi3SxEoTA6qtHgkzE3yeOTDrEiB0kVN0=;
 b=qUCDV2ld0teDBwdNXF2btQ8MLXloYswiXRcAwyj2Vw0stlZ22gtHxeQ1I6R5MLysfG
 lNLok3l7Pxv6/RipBssUw3KxUsXi7XR9Fp68I5J6KqRnWwdEY99oDVKFtoE2MN1+xHFn
 1eoWGN4rJuWywG6Cnn+Rznq3vdDuESxAiCSncgFwCN77bxhAaxLi31sFQqx15Ec1d5fv
 te+brgwUkuvqCaHyyiHNAOIVv6G37+F5Q5ONdHkdf0/UQyQqIM+RgSsMouwLTRyImr5O
 k1GwkmV50dvIHaf+vZSLmJVL6gaz50H9OTqtRUd2HuDFdPklahIzFxvr1XgLQn0GyZUN
 ppAw==
X-Gm-Message-State: AGi0PuYEIXy615VhsqFisZCM+HQ95/KsxxIgpwVduflBqOB8Xm/kmgo0
 DI7Mcaj9KghJZVHdpkJwYHdevs8WdUpsoRoEBUY=
X-Google-Smtp-Source: APiQypJVK/Z4kWTUDIK9lR1fi/OwosdQ361QYFvDHeeeyydUZF3ldjlzGuW5n+2h9V94+hU7vsXtbs6feLs7ozLHLCQ=
X-Received: by 2002:a02:9642:: with SMTP id c60mr17089046jai.87.1586803652462; 
 Mon, 13 Apr 2020 11:47:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200412191824.GA109724@laptop>
In-Reply-To: <20200412191824.GA109724@laptop>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Mon, 13 Apr 2020 11:47:21 -0700
Message-ID: <CAKgT0Udn3sE4iZci2dRNun6i3DMoG==kuksX_gLXWQORXA1kWA@mail.gmail.com>
To: Maxim Zhukov <mussitantesmortem@gmail.com>
Subject: Re: [Intel-wired-lan] BUG: e1000: infinitely loop at
 e1000_set_link_ksettings
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
Cc: Netdev <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 LKML <linux-kernel@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Apr 12, 2020 at 4:12 PM Maxim Zhukov
<mussitantesmortem@gmail.com> wrote:
>
> On Qemu X86 (kernel 5.4.31):
What version of QEMU are you running? That would tell us more about
how the device is being emulated.

> The system-maintenance daemon hangout on D-state at startup on
> ioctl(ETHTOOL_SSET) for setup advertising, duplex, etc...
>
> kgdb stacktrace:
>
> ----
>

I am dropping the first backtrace since it is a symptom of the trace
below. Essentially the issue is all calls to e1000_reinit_locked get
stuck because the __E1000_RESETTING bit is stuck set because this
first thread is stuck waiting on napi_disable to succeed.

> Also stalled workers backtrace:
>
> #3  0xc19e0870 in schedule () at kernel/sched/core.c:4150
> #4  0xc19e2f3e in schedule_timeout (timeout=<optimized out>) at kernel/time/timer.c:1895
> #5  0xc19e3041 in schedule_timeout_uninterruptible (timeout=<optimized out>) at kernel/time/timer.c:1929
> #6  0xc10b3dd1 in msleep (msecs=<optimized out>) at kernel/time/timer.c:2048
> #7  0xc1771fb4 in napi_disable (n=0xdec0b7d8) at net/core/dev.c:6240
> #8  0xc15f0e87 in e1000_down (adapter=0xdec0b540) at drivers/net/ethernet/intel/e1000/e1000_main.c:522
> #9  0xc15f0f35 in e1000_reinit_locked (adapter=0xdec0b540) at drivers/net/ethernet/intel/e1000/e1000_main.c:545
> #10 0xc15f6ecd in e1000_reset_task (work=0xdec0bca0) at drivers/net/ethernet/intel/e1000/e1000_main.c:3506
> #11 0xc106c882 in process_one_work (worker=0xdef4d840, work=0xdec0bca0) at kernel/workqueue.c:2272
> #12 0xc106ccc6 in worker_thread (__worker=0xdef4d840) at kernel/workqueue.c:2418
> #13 0xc1070657 in kthread (_create=0xdf508800) at kernel/kthread.c:255
> #14 0xc19e4078 in ret_from_fork () at arch/x86/entry/entry_32.S:813

So the question I would have is what is causing napi_disable to stall
out? I have looked over the latest QEMU code and the driver code and
both the Tx and Rx paths should have been shut down at the point where
napi_disable is called. I'm assuming there is little to no traffic
present so the NAPI thread shouldn't be stuck in the polling state for
that reason. The only other thing I can think of is that somehow this
is getting scheduled after the interface was already brought down
causing napi_disable to be called a second time for the same NAPI
instance.

A dmesg log for the system at the time of the hang might be useful as
it could include some information on what other configuration options
might have been changed that led to us blocking on the napi_disable
call.

Other than that, how easy is it to trigger this hang. Is this
happening every time you start the guest, or does this just happen
periodically?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
