Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB8A61DED0
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Nov 2022 22:45:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5525B408CB;
	Sat,  5 Nov 2022 21:45:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5525B408CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667684758;
	bh=4uoL7/N6y3wefekeE1B0Afc5rI8d+GuNuUMh9QnqElw=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=crSlNFtOjnWlNhDjv1326mA0qkc0dMqLV15un7R8mlyRt22jkx70z3YxtOpAZeDhj
	 Ax3empA7LL0atOzBDTsASJS8KhlACt0sYFIbZ636wDzXuVz2hvqdezwZbThJUZOFB5
	 CLkzKTd4yPQawpgFYJm9ImeCDnYiJP4JBuz/G0p6Enr846XImzNMYGHairQE0Z7TxY
	 SWPXqxNBfW/rcfsoQRtg/2RQ82B0ND5nJCANjgAUC+8HfzZHiur17mqmcYHPBzgl8B
	 mQz/bR3md3FpwtRRt4w8LAIu0gPrpAYrt7PmXZYwooqycOxIBSOxdzhGcS2me4in7G
	 98qpQ5cjWDjKQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PhtRGYJenXDk; Sat,  5 Nov 2022 21:45:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 104024089B;
	Sat,  5 Nov 2022 21:45:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 104024089B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 46B4B1BF283
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Nov 2022 21:45:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1CEFF60A7D
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Nov 2022 21:45:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1CEFF60A7D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GDlgYI1Rlkeb for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Nov 2022 21:45:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 355CC607CE
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 355CC607CE
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Nov 2022 21:45:51 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 8A73FCE069C;
 Sat,  5 Nov 2022 21:45:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74BDDC433D6;
 Sat,  5 Nov 2022 21:45:44 +0000 (UTC)
Date: Sat, 5 Nov 2022 17:45:42 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20221105174542.21bd7e86@rorschach.local.home>
In-Reply-To: <CAHk-=wjkkomrdcrAxxFijs-Lih6vHze+A2TgM+v7-Z7ZkXT+WA@mail.gmail.com>
References: <20221105060024.598488967@goodmis.org>
 <CAHk-=wi95dGkg7DiuOZ27gGW+mxJipn9ykB6LHB-HrbbLG6OMQ@mail.gmail.com>
 <20221105123642.596371c7@rorschach.local.home>
 <Y2bPlllkHo5DUmLY@zx2c4.com>
 <CAHk-=wjkkomrdcrAxxFijs-Lih6vHze+A2TgM+v7-Z7ZkXT+WA@mail.gmail.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v4a 00/38] timers: Use
 timer_shutdown*() before freeing timers
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
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>, linux-staging@lists.linux.dev,
 linux-doc@vger.kernel.org, alsa-devel@alsa-project.org,
 dri-devel@lists.freedesktop.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-leds@vger.kernel.org, drbd-dev@lists.linbit.com,
 linux-s390@vger.kernel.org, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-atm-general@lists.sourceforge.net, linux-afs@lists.infradead.org,
 lvs-devel@vger.kernel.org, linux-acpi@vger.kernel.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-ext4@vger.kernel.org,
 Guenter Roeck <linux@roeck-us.net>, linux-media@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-pm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, rcu@vger.kernel.org, cgroups@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 Anna-Maria Gleixner <anna-maria@linutronix.de>, linux-edac@vger.kernel.org,
 linux-block@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-parisc@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linaro-mm-sig@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, 5 Nov 2022 14:13:14 -0700
Linus Torvalds <torvalds@linux-foundation.org> wrote:

> And trying "when != ptr->timer" actually does the right thing in that
> it gets rid of the case where the timer is modified outside of the
> del_timer() case, *but* it also causes odd other changes to the
> output.
> 
> Look at what it generates for that
> 
>    drivers/media/usb/pvrusb2/pvrusb2-hdw.c
> 
> file, which finds a lot of triggers with the "when !=  ptr->timer",
> but only does one without it.

I added an expression, and it appears to work:

At least for this case.

@@
expression E;
identifier ptr, timer, rfield, slab;
@@
(
-       del_timer(&ptr->timer);
+       timer_shutdown(&ptr->timer);
|
-       del_timer_sync(&ptr->timer);
+       timer_shutdown_sync(&ptr->timer);
)
  ... when != ptr->timer.function = E;
(
        kfree_rcu(ptr, rfield);
|
        kmem_cache_free(slab, ptr);
|
        kfree(ptr);
)

Now I need to add return and goto cases here.

-- Steve
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
