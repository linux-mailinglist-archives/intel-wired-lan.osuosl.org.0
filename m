Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 669AB61A0DA
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Nov 2022 20:22:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 56CAF610E6;
	Fri,  4 Nov 2022 19:22:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 56CAF610E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667589763;
	bh=sPWVzunYXw266fuHglBcAEpUVuYty7d7l+N9mrSHAPc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dTvKzogkJKxzLr2BzkzlBndhJLjFJMVPRwRmmFQzxxpA6WKHCJc8AjhMUNJnr9zXJ
	 nspFFRqlO+he6Y6hcE+lhFXXbxGvjQe1XUy4Ohv9+TOR4Jv5jOVWSMKba4PhiUx8zE
	 A9F4nBmubfbGWfbGl/4EsmKN6EzQ8LaLIHtEJvqeGGiRbkKv/zJjQKm/oQxRJHFwt3
	 ic59svfO9TTWS9p14Xy8c4ToIFgZ/wkLBxX7IXBeLBIa2tLnru+098z3uJEsSrCzLq
	 aB822Iw6XwFYWiSeLdeQ6L/bVy1AXPSAvCExpyihTGJBAbfqFco3hK4/rdE8qgTKy4
	 792726rSuwndg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id drzizK_-dMWF; Fri,  4 Nov 2022 19:22:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58E6360ACE;
	Fri,  4 Nov 2022 19:22:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 58E6360ACE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 03C221BF488
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 19:22:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CA930403D6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 19:22:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CA930403D6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1DrGJ4bDxcC8 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Nov 2022 19:22:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12F9640184
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com
 [IPv6:2607:f8b0:4864:20::230])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 12F9640184
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 19:22:36 +0000 (UTC)
Received: by mail-oi1-x230.google.com with SMTP id s206so6184712oie.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Nov 2022 12:22:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=+CrrtBZaWaBIBfDEz9a9BacRZtXiPhURWnCTyiBknKU=;
 b=JZjW+zMVlLGOiOm12v1zXUn5bSUx4yEN9yAluugS6pUbzijoJK3uQco9J2sGkd4epb
 8rYW87ACO+UDQWOV/OcKR/0U+RSJy0TDfT8nkKpRVCcAr2MiT0pwmQ5clA0CA8f9wjPc
 ks+gjfAiNQwXQlPGl4gXbx/nyCf38lKhE44PnWSUWE9JbWa6qrT3CSSEQ7XTAwqMyKYC
 kJWx/48iKTRoOQsmzUvOclI7sbwMpNi3/+lGyOyNGLZSj33Qsi9ROOhTOZ4zkrZnEX7y
 3TfRmyJcS7usrv2WKDwJwKnHsctQnBbiC5s79hJO9kRxxQ1quZpQjX65yEt6+Gxdl8Mr
 N8iw==
X-Gm-Message-State: ACrzQf0nhQL1sdGTAEs8T4vGqfTMjSYxzwNR4m4SZulXdbiBYBwt3U7z
 JpVMnblixWa+QYW0IxuQ0bY=
X-Google-Smtp-Source: AMsMyM5j57nGJ6ihP9Jnolnn5vAnBZp3njFzbqkVuO45h5Gs91zBtM7qMBV3ZTA/jEfxwCmFGOBzYQ==
X-Received: by 2002:aca:2819:0:b0:359:f8a7:c88 with SMTP id
 25-20020aca2819000000b00359f8a70c88mr260428oix.278.1667589755023; 
 Fri, 04 Nov 2022 12:22:35 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 n132-20020acabd8a000000b003547a3401e6sm1729901oif.43.2022.11.04.12.22.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Nov 2022 12:22:34 -0700 (PDT)
Date: Fri, 4 Nov 2022 12:22:32 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20221104192232.GA2520396@roeck-us.net>
References: <20221104054053.431922658@goodmis.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221104054053.431922658@goodmis.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
 :reply-to;
 bh=+CrrtBZaWaBIBfDEz9a9BacRZtXiPhURWnCTyiBknKU=;
 b=f7SabvhELt4tvu58wD/HGUQtx2q3c42bp4689l/poRMwjHONs2y+uJybLQ6btnBic8
 iSYK/T680hWQ8YubanyiQ/jk4TxtOOSgyzZyzTjBStaumbjkRAc3PTfrEP9z1ET4ppjL
 os0cjm+F8kyIi27l3gX1TCu+EYDnb6I6sC6rEheSVAEJvEJuF1rkSUHHVYhQ9PjtWNZC
 /KoHUhscmHo/jN1PCMTUxC8NT4KR3QukfsWt+gbIkumzBVh1p3Sny9bKzJeet5110tpk
 HzVFo5k5iKj3j88DvNf1ucVPdH/av+bU0vEDu76g9bGVlHfWhJDUhqHlYTifQBH3QuBi
 oWFg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=f7SabvhE
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

On Fri, Nov 04, 2022 at 01:40:53AM -0400, Steven Rostedt wrote:
> 
> Back in April, I posted an RFC patch set to help mitigate a common issue
> where a timer gets armed just before it is freed, and when the timer
> goes off, it crashes in the timer code without any evidence of who the
> culprit was. I got side tracked and never finished up on that patch set.
> Since this type of crash is still our #1 crash we are seeing in the field,
> it has become a priority again to finish it.
> 
> This is v3 of that patch set. Thomas Gleixner posted an untested version
> that makes timer->function NULL as the flag that it is shutdown. I took that
> code, tested it (fixed it up), added more comments, and changed the
> name to timer_shutdown_sync(). I also converted it to use WARN_ON_ONCE()
> instead of just WARN_ON() as Linus asked for.
> 

Unfortunately the renaming caused some symbol conflicts.

Global definition: timer_shutdown

  File             Line
0 time.c            93 static inline void timer_shutdown(struct clock_event_device *evt)
1 arm_arch_timer.c 690 static __always_inline int timer_shutdown(const int access,
2 timer-fttmr010.c 105 int (*timer_shutdown)(struct clock_event_device *evt);
3 timer-sp804.c    158 static inline void timer_shutdown(struct clock_event_device *evt)
4 timer.h          239 static inline int timer_shutdown(struct timer_list *timer)

Guenter
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
