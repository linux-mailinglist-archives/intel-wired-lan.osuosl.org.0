Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E35653DD4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Dec 2022 11:02:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3899041921;
	Thu, 22 Dec 2022 10:02:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3899041921
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671703342;
	bh=8EHc1sqAad+kZjl37acsMRwzKFR5VxzFaE0U+l/GtUo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yTqe2ZWgPW6fvRsug9esFFMuVSI9hM3LO1lyPRRjWF84N8VNGcnjgtXfyTuZoHkLy
	 40+aSSg8jhJgPOM/9iHQLsTKrL//2JT8uaXie856ooJaXroXtKxc11aYBl8uhMQW/i
	 IyBsvysIQCOqjZZesVtVdMJjHpR3EhrxooNqbANd9f86kfhlToqV2S3noEKZCB1ESS
	 gECVBGcA1D3JtnDZXLHN+p/qOt/hUfETDY9OjqKrPWqpOeTuzzWkrTelGDFBts5l6K
	 PPoQoNa3rsUOBYGYPDc+3vA5PCZ9z3ctnITRCGlbc95T4zxgN18qAt5F5g5qjHh/Jw
	 LEzXxtnPN0bhw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gCfw8_oHckVM; Thu, 22 Dec 2022 10:02:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F328B4190B;
	Thu, 22 Dec 2022 10:02:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F328B4190B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E7BFC1BF360
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Dec 2022 10:02:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C1556405CA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Dec 2022 10:02:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C1556405CA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lc9xVc85KQQA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Dec 2022 10:02:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C97F440136
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C97F440136
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Dec 2022 10:02:14 +0000 (UTC)
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-261-BeH43bj4NvSe0lrh81YWRw-1; Thu, 22 Dec 2022 05:02:11 -0500
X-MC-Unique: BeH43bj4NvSe0lrh81YWRw-1
Received: by mail-qv1-f71.google.com with SMTP id
 m4-20020ad44484000000b004c78122b496so735011qvt.7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Dec 2022 02:02:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:user-agent:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=o6jO/LCV2IF2UxvEuH5GPFWr6SJ3JZsJjPnFQmLY128=;
 b=RBlCEZWcqpH0HKeguULxRBvzAVzDrolSCy6UV/voca3ebiv3hUd0gNk9aDUjh8r46+
 gTl0kJPGnGYJXkuWIE+qa8swoTDhwHoXyzVPZY2C6zDy7B+6ukf14YSUGDQ1JiyAWjZT
 Ew6Fv+Jikl5xp4CBhQ0Vu5dQZYfBl3+rn7w8UEHgPiGzJ86NwBwyAfnbfkFmBmlcvzyC
 DcxoaiEWiPyLxGTlkobgTq3e1iXXeDVtzDrdtd38SJIBVHU9C6g8CsWG7hWPN7O4WbPO
 YR3J6p0URCf6oYdypZwZWdCKM+RN9WM9Zx3y4Xo02sfG9eRhBf+wBG5u8u94FCmGBvjU
 GXsQ==
X-Gm-Message-State: AFqh2kqFJELS/W2GwIqDC/g8flAI2/rtSctZfD2Ptzzm8UmkDs5a193W
 jZvXKyN/FtICvcTn/VnypU3PzKNMtCHGtdQUOmCy4aCi+iRwkfZtP2HcLl4586A6SO0LF9GzUND
 BH1zRgG3V6WAuHrQiCagrLfMXdcpu7Q==
X-Received: by 2002:a0c:c508:0:b0:4e5:a127:382f with SMTP id
 x8-20020a0cc508000000b004e5a127382fmr6466204qvi.48.1671703331035; 
 Thu, 22 Dec 2022 02:02:11 -0800 (PST)
X-Google-Smtp-Source: AMrXdXtZnBvcAi4VqZ0nAfseRa5ZZncJObkgh59kN1yODkWBS5WICo+kLsdO+KK5pqcbrrZqdW1DHQ==
X-Received: by 2002:a0c:c508:0:b0:4e5:a127:382f with SMTP id
 x8-20020a0cc508000000b004e5a127382fmr6466171qvi.48.1671703330733; 
 Thu, 22 Dec 2022 02:02:10 -0800 (PST)
Received: from gerbillo.redhat.com (146-241-101-173.dyn.eolo.it.
 [146.241.101.173]) by smtp.gmail.com with ESMTPSA id
 f1-20020a05620a408100b006cfc9846594sm4269qko.93.2022.12.22.02.02.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Dec 2022 02:02:10 -0800 (PST)
Message-ID: <8d91ab13f56e88af0f6133130808f9623b3adb2e.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Steven Rostedt <rostedt@goodmis.org>, Linus Torvalds
 <torvalds@linux-foundation.org>, Thomas Gleixner <tglx@linutronix.de>
Date: Thu, 22 Dec 2022 11:02:01 +0100
In-Reply-To: <20221220134519.3dd1318b@gandalf.local.home>
References: <20221220134519.3dd1318b@gandalf.local.home>
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1671703333;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=o6jO/LCV2IF2UxvEuH5GPFWr6SJ3JZsJjPnFQmLY128=;
 b=GttMmIVM5bszutsP7AJGxWp3/ihsZgu7NkRdTAZiuCOhuCp2+TPNhO9iDk9fae46ikQ8+c
 NIRyzfUKo0bAUZIWGfoZoHfWnoaQV/uvQ5fCbRSRa2tcuVOOKPBLjD2WF8xOLDNgn0Rl3z
 t8kWM28UYIDNOkiPyiNrM/5rHiz8WWA=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=GttMmIVM
Subject: Re: [Intel-wired-lan] [PATCH] treewide: Convert del_timer*() to
 timer_shutdown*()
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
 linux-sh@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-leds@vger.kernel.org, drbd-dev@lists.linbit.com,
 linux-nilfs@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-atm-general@lists.sourceforge.net, lvs-devel@vger.kernel.org,
 linux-acpi@vger.kernel.org, SHA-cyfmac-dev-list@infineon.com,
 coreteam@netfilter.org, intel-wired-lan@lists.osuosl.org,
 linux-input@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 linux-ext4@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
 linux-media@vger.kernel.org, bridge@lists.linux-foundation.org,
 intel-gfx@lists.freedesktop.org, linux-nfs@vger.kernel.org,
 linux-block@vger.kernel.org, cgroups@vger.kernel.org,
 Anna-Maria Gleixner <anna-maria@linutronix.de>,
 brcm80211-dev-list.pdl@broadcom.com, Stephen Boyd <sboyd@kernel.org>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Julia Lawall <Julia.Lawall@inria.fr>, linux-bluetooth@vger.kernel.org,
 netfilter-devel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 2022-12-20 at 13:45 -0500, Steven Rostedt wrote:
> [
>   Linus,
> 
>     I ran the script against your latest master branch:
>     commit b6bb9676f2165d518b35ba3bea5f1fcfc0d969bf
> 
>     As the timer_shutdown*() code is now in your tree, I figured
>     we can start doing the conversions. At least add the trivial ones
>     now as Thomas suggested that this gets applied at the end of the
>     merge window, to avoid conflicts with linux-next during the
>     development cycle. I can wait to Friday to run it again, and
>     resubmit.
> 
>     What is the best way to handle this?
> ]
> 
> From: "Steven Rostedt (Google)" <rostedt@goodmis.org>
> 
> Due to several bugs caused by timers being re-armed after they are
> shutdown and just before they are freed, a new state of timers was added
> called "shutdown". After a timer is set to this state, then it can no
> longer be re-armed.
> 
> The following script was run to find all the trivial locations where
> del_timer() or del_timer_sync() is called in the same function that the
> object holding the timer is freed. It also ignores any locations where the
> timer->function is modified between the del_timer*() and the free(), as
> that is not considered a "trivial" case.
> 
> This was created by using a coccinelle script and the following commands:
> 
>  $ cat timer.cocci
> @@
> expression ptr, slab;
> identifier timer, rfield;
> @@
> (
> -       del_timer(&ptr->timer);
> +       timer_shutdown(&ptr->timer);
> > 
> -       del_timer_sync(&ptr->timer);
> +       timer_shutdown_sync(&ptr->timer);
> )
>   ... when strict
>       when != ptr->timer
> (
>         kfree_rcu(ptr, rfield);
> > 
>         kmem_cache_free(slab, ptr);
> > 
>         kfree(ptr);
> )
> 
>  $ spatch timer.cocci . > /tmp/t.patch
>  $ patch -p1 < /tmp/t.patch
> 
> Link: https://lore.kernel.org/lkml/20221123201306.823305113@linutronix.de/
> 
> Signed-off-by: Steven Rostedt (Google) <rostedt@goodmis.org>

For the networking bits:

>  drivers/net/ethernet/intel/i40e/i40e_main.c      |  6 +++---
>  drivers/net/ethernet/marvell/sky2.c              |  2 +-
>  drivers/net/ethernet/sun/sunvnet.c               |  2 +-
>  drivers/net/usb/sierra_net.c                     |  2 +-
>  net/802/garp.c                                   |  2 +-
>  net/802/mrp.c                                    |  4 ++--
>  net/bridge/br_multicast.c                        |  8 ++++----
>  net/bridge/br_multicast_eht.c                    |  4 ++--
>  net/core/gen_estimator.c                         |  2 +-
>  net/ipv4/ipmr.c                                  |  2 +-
>  net/ipv6/ip6mr.c                                 |  2 +-
>  net/mac80211/mesh_pathtbl.c                      |  2 +-
>  net/netfilter/ipset/ip_set_list_set.c            |  2 +-
>  net/netfilter/ipvs/ip_vs_lblc.c                  |  2 +-
>  net/netfilter/ipvs/ip_vs_lblcr.c                 |  2 +-
>  net/netfilter/xt_IDLETIMER.c                     |  4 ++--
>  net/netfilter/xt_LED.c                           |  2 +-
>  net/sched/cls_flow.c                             |  2 +-
>  net/sunrpc/svc.c                                 |  2 +-
>  net/tipc/discover.c                              |  2 +-
>  net/tipc/monitor.c                               |  2 +-

Acked-by: Paolo Abeni <pabeni@redhat.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
