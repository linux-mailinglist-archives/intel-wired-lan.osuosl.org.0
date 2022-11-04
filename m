Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A8161A159
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Nov 2022 20:42:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5A0261145;
	Fri,  4 Nov 2022 19:42:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5A0261145
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667590943;
	bh=e9hhba2iLZlV7LPPnzUiPtuacdU1PjetRC1INo6nCzg=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zCZ17nICVFBvO3po4Y3Y8QPZD1JzDz2+6NzYyTS963d8gohl1eRQ5PmCDcLYtadEt
	 yH3O0WwIOJ2Ea7Rs77MceWvd7OUgLVtv8whUwuf2wPjTOtxPj0RgdHkY9RNirE3Yxm
	 xKBQMi253+Xx1n8LcmuYXOVIYIdAUFaACJ71yULmFdmfH7DKJ/I5AVF99qu2k5azD+
	 ddHzGaCCg88E6DKLcm1XqQQderRkycbQPBOd/YSUo5AE6ll4hHwNGsLt+kLjx6/VOi
	 7182M+jY5mP902f/QgU+uJ0qU1+9JA80UnJZnWQAgo3IT2KgbLJatmqowHAgzfRP0g
	 9chjvPK1/BJZw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0UwOiItPokUL; Fri,  4 Nov 2022 19:42:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D9EFB606E6;
	Fri,  4 Nov 2022 19:42:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D9EFB606E6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5B4261BF488
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 19:42:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 362454010C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 19:42:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 362454010C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VqscnLND_qfM for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Nov 2022 19:42:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1FD0940018
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1FD0940018
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 19:42:15 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 02FAFB82DCA;
 Fri,  4 Nov 2022 19:42:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32A74C433D6;
 Fri,  4 Nov 2022 19:42:11 +0000 (UTC)
Date: Fri, 4 Nov 2022 15:42:09 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20221104154209.21b26782@rorschach.local.home>
In-Reply-To: <20221104192232.GA2520396@roeck-us.net>
References: <20221104054053.431922658@goodmis.org>
 <20221104192232.GA2520396@roeck-us.net>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [RFC][PATCH v3 00/33] timers: Use
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
Cc: alsa-devel@alsa-project.org, linux-staging@lists.linux.dev,
 linux-doc@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-leds@vger.kernel.org, drbd-dev@lists.linbit.com,
 linux-s390@vger.kernel.org, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-atm-general@lists.sourceforge.net, linux-afs@lists.infradead.org,
 lvs-devel@vger.kernel.org, linux-acpi@vger.kernel.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-ext4@vger.kernel.org,
 linux-media@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-pm@vger.kernel.org, intel-gfx@lists.freedesktop.org, rcu@vger.kernel.org,
 cgroups@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Anna-Maria Gleixner <anna-maria@linutronix.de>, linux-edac@vger.kernel.org,
 linux-block@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-parisc@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 4 Nov 2022 12:22:32 -0700
Guenter Roeck <linux@roeck-us.net> wrote:

> Unfortunately the renaming caused some symbol conflicts.
> 
> Global definition: timer_shutdown
> 
>   File             Line
> 0 time.c            93 static inline void timer_shutdown(struct clock_event_device *evt)
> 1 arm_arch_timer.c 690 static __always_inline int timer_shutdown(const int access,
> 2 timer-fttmr010.c 105 int (*timer_shutdown)(struct clock_event_device *evt);
> 3 timer-sp804.c    158 static inline void timer_shutdown(struct clock_event_device *evt)
> 4 timer.h          239 static inline int timer_shutdown(struct timer_list *timer)

$ git grep '\btimer_shutdown'
arch/arm/mach-spear/time.c:static inline void timer_shutdown(struct clock_event_device *evt)
arch/arm/mach-spear/time.c:     timer_shutdown(evt);
arch/arm/mach-spear/time.c:     timer_shutdown(evt);
arch/arm/mach-spear/time.c:     timer_shutdown(evt);
drivers/clocksource/arm_arch_timer.c:static __always_inline int timer_shutdown(const int access,
drivers/clocksource/arm_arch_timer.c:   return timer_shutdown(ARCH_TIMER_VIRT_ACCESS, clk);
drivers/clocksource/arm_arch_timer.c:   return timer_shutdown(ARCH_TIMER_PHYS_ACCESS, clk);
drivers/clocksource/arm_arch_timer.c:   return timer_shutdown(ARCH_TIMER_MEM_VIRT_ACCESS, clk);
drivers/clocksource/arm_arch_timer.c:   return timer_shutdown(ARCH_TIMER_MEM_PHYS_ACCESS, clk);
drivers/clocksource/timer-fttmr010.c:   int (*timer_shutdown)(struct clock_event_device *evt);
drivers/clocksource/timer-fttmr010.c:   fttmr010->timer_shutdown(evt);
drivers/clocksource/timer-fttmr010.c:   fttmr010->timer_shutdown(evt);
drivers/clocksource/timer-fttmr010.c:   fttmr010->timer_shutdown(evt);
drivers/clocksource/timer-fttmr010.c:           fttmr010->timer_shutdown = ast2600_timer_shutdown;
drivers/clocksource/timer-fttmr010.c:           fttmr010->timer_shutdown = fttmr010_timer_shutdown;
drivers/clocksource/timer-fttmr010.c:   fttmr010->clkevt.set_state_shutdown = fttmr010->timer_shutdown;
drivers/clocksource/timer-fttmr010.c:   fttmr010->clkevt.tick_resume = fttmr010->timer_shutdown;
drivers/clocksource/timer-sp804.c:static inline void timer_shutdown(struct clock_event_device *evt)
drivers/clocksource/timer-sp804.c:      timer_shutdown(evt);
drivers/clocksource/timer-sp804.c:      timer_shutdown(evt);

Honestly, I think these need to be renamed, as "timer_shutdown()"
should be specific to the timer code, and not individual timers.

I'll start making a patch set that starts by renaming these timers,
then adds the timer_shutdown() API, and finished with the trivial
updates, and that will be a real "PATCH" (non RFC).

Linus, should I also add any patches that has already been acked by the
respective maintainer?

-- Steve
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
