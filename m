Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6E91ADB61
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2020 12:45:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 601D7203E1;
	Fri, 17 Apr 2020 10:45:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xpcWVKDorlmA; Fri, 17 Apr 2020 10:45:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AE30220410;
	Fri, 17 Apr 2020 10:45:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7FC4E1BF34C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2020 10:45:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7B426203E1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2020 10:45:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ATiKUYRGJY8B for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Apr 2020 10:45:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 1AA732026D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2020 10:45:33 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id r24so1544824ljd.4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2020 03:45:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=96Q0AFkv0T5IMf4LKbdK2lq/hxbuasZz72I0N/gz+zs=;
 b=IzoDnXnaOy16NRlN0G+9sT5lh+c0sl7WDt2AvOXIYHE2638w7SAe8WgagI+UdaFINF
 KiQpmljqH7zoHkdD2O5fXacohy9xEAeD4IcZGToXpXaB/cCVx/nwHGb0fw8gEiAV3sjf
 lPKQW4dNrsaO6LhRQjF90ab7MWu9lUN3Eiax3rD4lRrHfftLu/hR0c6Jk99jbjTY3RqQ
 ZB1yZVPOiT+0OXniPLvTeI9sGewlOvk1yu3LcLuCjcWJXgAfmlFUiETlbIVvPKSHhNCv
 CK0g+gap5xyL7ks8XxlRGlXzklg6dn0cXFYoil9oJkidFypjbbHzc9rdNrAcYONQyw7/
 jMhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=96Q0AFkv0T5IMf4LKbdK2lq/hxbuasZz72I0N/gz+zs=;
 b=OaPIogbIjwLim6CQcUnUbLWhzKsL5IxnL7ZSqW/b5ECwb4vZKIyCdK+y8BljwaUS/m
 DtbJTd8pjqFMpspzJGvECuWOHKDTyBTQUVu+zfpkcWi9F+bnAyHt1LV9d7jJMBacV2nt
 QEEGmMCU21mwFCS6dlU8xNFtalSmFqc57moxg8LMixb/PSrWx/d4ORKkHY4AB6ncFzcf
 TCpciYsiz8wRuXzJemO8KdouPFY4JxdEUmWsaYvjfmckpibgznBvCTh1tKjfGCZA/cAQ
 AcmeUFkUBfIlCySkQKdRNMImCiYpTzxJRkzvccbe2JlPntTeybwFH6GqJ9oebj2QC/xi
 p8DQ==
X-Gm-Message-State: AGi0PuY9PdVnkRFfS8ylfZ1ALL04PqYuV+H5vOC+KLGjJBVYyYxFgTqo
 nVpChKIC9EkgGtuq8VYL59tsfWR8o+A=
X-Google-Smtp-Source: APiQypLMGAsvofBwONW8lLfmvR/IpVHy+gB7e+STdxWTn+f1wtvuYDYhUp+g9/q2FhyGn4H6KJLCcA==
X-Received: by 2002:a2e:3e0e:: with SMTP id l14mr1753060lja.68.1587120330926; 
 Fri, 17 Apr 2020 03:45:30 -0700 (PDT)
Received: from gmail.com ([178.170.168.3])
 by smtp.gmail.com with ESMTPSA id u3sm18385587lff.26.2020.04.17.03.45.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 03:45:30 -0700 (PDT)
Date: Fri, 17 Apr 2020 13:45:29 +0300
From: Maxim Zhukov <mussitantesmortem@gmail.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Message-ID: <20200417104529.GA462877@gmail.com>
References: <20200414184547.ue7mvj6olmr76m2i@laptop>
 <20200416203151.10210.78244.stgit@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416203151.10210.78244.stgit@localhost.localdomain>
Subject: Re: [Intel-wired-lan] [RFC PATCH] e1000: Do not perform reset in
 reset_task if we are already down
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tests with this patch passed. the qemu has been rebooted 652 times.

In one of reboots there was the kernel panic but that was for another
reason (not related to this patch)

[    0.270350 ] APIC: Switch to symmetric I/O mode setup
[    0.275011 ] Enabling APIC mode:  Flat.  Using 1 I/O APICs
[    0.277987 ] ..TIMER: vector=0x30 apic1=0 pin1=2 apic2=-1 pin2=-1
[    0.294652 ] ..MP-BIOS bug: 8254 timer not connected to IO-APIC
[    0.296219 ] ...trying to set up timer (IRQ0) through the 8259A ...
[    0.297794 ] ..... (found apic 0 pin 2) ...
[    0.311109 ] ....... failed.
[    0.311951 ] ...trying to set up timer as Virtual Wire IRQ...
[    0.326077 ] ..... failed.
[    0.326712 ] ...trying to set up timer as ExtINT IRQ...
[    0.556375 ] ..... failed :(.
[    0.557337 ] Kernel panic - not syncing: IO-APIC + timer doesn't
work!  Boot with apic=debug and send a report.  Then try booting with
the 'noapic' option.
[    0.564541 ] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.4.32+ #4
[    0.566470 ] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996),
BIOS ?-20191223_100556-anatol 04/01/2014
[    0.575980 ] Call Trace:
[    0.577065 ]  dump_stack+0x4f/0x66
[    0.578109 ]  panic+0xa3/0x256
[    0.578937 ]  setup_IO_APIC+0x714/0x764
[    0.579958 ]  ? clear_IO_APIC+0x3c/0x60
[    0.581086 ]  apic_intr_mode_init+0x108/0x10f
[    0.582382 ]  x86_late_time_init+0x1d/0x24
[    0.583593 ]  start_kernel+0x378/0x426
[    0.585657 ]  i386_start_kernel+0x48/0x4a
[    0.586955 ]  startup_32_smp+0x164/0x168
[    0.588293 ] ---[ end Kernel panic - not syncing: IO-APIC + timer
doesn't work!  Boot with apic=debug and send a report.  Then try booting
with the 'noapic' option. ]---
)

Tested-by: Maxim Zhukov <mussitantesmortem@gmail.com>

On Thu, Apr 16, 2020 at 01:34:19PM -0700, Alexander Duyck wrote:
> From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> 
> We are seeing a deadlock in e1000 down when NAPI is being disabled. Looking
> over the kernel function trace of the system it appears that the interface
> is being closed and then a reset is hitting which deadlocks the interface
> as the NAPI interface is already disabled.
> 
> To prevent this from happening I am disabling the reset task when
> __E1000_DOWN is already set. In addition code has been added so that we set
> the __E1000_DOWN while holding the __E1000_RESET flag in e1000_close in
> order to guarantee that the reset task will not run after we have started
> the close call.
> 
> Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> ---
> 
> Maxim,
> 
> If possible I would appreciate it if you could try this patch and see if
> it addresses the issues you were seeing. From what I can tell this issue
> is due to the interface being closed around the same time a reset is
> scheduled so the two are racing and resulting in down being called after
> a down was already completed. Adding this test for the down flag should
> correct that.
> 
> If it does I will resubmit this patch as a non-RFC.
> 
> Thanks.
> 
> Alex
> 
>  drivers/net/ethernet/intel/e1000/e1000_main.c |   18 ++++++++++++++----
>  1 file changed, 14 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
> index f7103356ef56..566bbcb74056 100644
> --- a/drivers/net/ethernet/intel/e1000/e1000_main.c
> +++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
> @@ -542,8 +542,13 @@ void e1000_reinit_locked(struct e1000_adapter *adapter)
>  	WARN_ON(in_interrupt());
>  	while (test_and_set_bit(__E1000_RESETTING, &adapter->flags))
>  		msleep(1);
> -	e1000_down(adapter);
> -	e1000_up(adapter);
> +
> +	/* only run the task if not already down */
> +	if (!test_bit(__E1000_DOWN, &adapter->flags)) {
> +		e1000_down(adapter);
> +		e1000_up(adapter);
> +	}
> +
>  	clear_bit(__E1000_RESETTING, &adapter->flags);
>  }
>  
> @@ -1433,10 +1438,15 @@ int e1000_close(struct net_device *netdev)
>  	struct e1000_hw *hw = &adapter->hw;
>  	int count = E1000_CHECK_RESET_COUNT;
>  
> -	while (test_bit(__E1000_RESETTING, &adapter->flags) && count--)
> +	while (test_and_set_bit(__E1000_RESETTING, &adapter->flags) && count--)
>  		usleep_range(10000, 20000);
>  
> -	WARN_ON(test_bit(__E1000_RESETTING, &adapter->flags));
> +	WARN_ON(count < 0);
> +
> +	/* signal that we're down so that the reset task will no longer run */
> +	set_bit(__E1000_DOWN, &adapter->flags);
> +	clear_bit(__E1000_RESETTING, &adapter->flags);
> +
>  	e1000_down(adapter);
>  	e1000_power_down_phy(adapter);
>  	e1000_free_irq(adapter);
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
