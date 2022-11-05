Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E651061DE2B
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Nov 2022 22:03:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7205160A66;
	Sat,  5 Nov 2022 21:03:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7205160A66
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667682221;
	bh=EGfF5mx+lH/QRFcFg0SI6Y3AhisYPwGzxoil1+CNZw4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YGwbFDwQGcMPw8dZWE6eGI7o6/GvdGkGFPEyMrTtJ0Veci/9r5sF/ABxqqAmPIDn1
	 NThprVnTaB/ZKrQ7J+zwg93b6Yo3MyaJAITJkwWm8uLHD9GzyLZ76qC5tbl0X8JqDG
	 5+6HE0ZREEADG7b6MjKPbsv3HqAGd2oCm0QLBQPawxw4cZHAfc1UXEJ97lFvPdb4xq
	 +2mOoMXXIEf6yRshKfLjpRgG1jsECKWZJjw0t+/y0ztwbXLJe2ZjNYNEO4QK/isfUL
	 ZBrOfipr/1PhMxmaJCa81/1zu/PXOJedlhLphup3GbkSj2e0NBL2dvZrC5jo/WYXag
	 9LIWPKqNNMohg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9VJbmiZoVatC; Sat,  5 Nov 2022 21:03:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 650C760687;
	Sat,  5 Nov 2022 21:03:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 650C760687
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B592D1BF283
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Nov 2022 21:03:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8F8B360803
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Nov 2022 21:03:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F8B360803
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aCwvu1osYzIb for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Nov 2022 21:03:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63B6260687
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 63B6260687
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Nov 2022 21:03:33 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 5B12CB808C4;
 Sat,  5 Nov 2022 21:03:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69FADC433D6;
 Sat,  5 Nov 2022 21:03:26 +0000 (UTC)
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id f7ca4808
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO); 
 Sat, 5 Nov 2022 21:03:23 +0000 (UTC)
Date: Sat, 5 Nov 2022 22:03:18 +0100
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <Y2bPlllkHo5DUmLY@zx2c4.com>
References: <20221105060024.598488967@goodmis.org>
 <CAHk-=wi95dGkg7DiuOZ27gGW+mxJipn9ykB6LHB-HrbbLG6OMQ@mail.gmail.com>
 <20221105123642.596371c7@rorschach.local.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221105123642.596371c7@rorschach.local.home>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=zx2c4.com; s=20210105; t=1667682204;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=eqdLYS8BDcnZ1CTVSLTL2V9mpBrsInljjeWX569KabI=;
 b=Ek158U/IwAdzp/7JgxH8/niYIDD2c7iDpM/q00frrsf+kptgL3uCiSQ7Xlb7SIQ9YvTtg5
 hlBVvQrg9GahoQxIsHXxgh/CGzM4sTACdo/WX2PYJwuZbLx0SZ+njeVN3snq9LgpG5MQMr
 EBxmnADIwq+lyFhZU+rPI7l5k3bHDuo=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=zx2c4.com header.i=@zx2c4.com
 header.a=rsa-sha256 header.s=20210105 header.b=Ek158U/I
X-Mailman-Original-Authentication-Results: smtp.kernel.org;
 dkim=pass (1024-bit key) header.d=zx2c4.com header.i=@zx2c4.com
 header.b="Ek158U/I"
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
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Nov 05, 2022 at 12:36:42PM -0400, Steven Rostedt wrote:
> ----------------------8<------------------------
> @@
> identifier ptr, timer, rfield, slab;
> @@
> (
> -	del_timer(&ptr->timer);
> +	timer_shutdown(&ptr->timer);
> |
> -	del_timer_sync(&ptr->timer);
> +	timer_shutdown_sync(&ptr->timer);
> )
>     ...
> (
> 	kfree_rcu(ptr, rfield);
> |
> 	kmem_cache_free(slab, ptr);
> |
> 	kfree(ptr);
> )
> ---------------------->8------------------------

Something that might help here is changing the `...` into
`... when exists` or into `... when != ptr` or similar.
See this section of the manual:
https://coccinelle.gitlabpages.inria.fr/website/docs/main_grammar004.html

Jason
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
