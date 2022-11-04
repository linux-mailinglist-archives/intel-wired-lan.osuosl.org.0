Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8C061A291
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Nov 2022 21:43:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D55741970;
	Fri,  4 Nov 2022 20:43:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D55741970
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667594581;
	bh=t7g5Ygvh5leDpoqqR1lmfQzA0p3a+4FAlLdU3XqHH7M=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KMvBE8HiutWtV7r8HLjGpvp4nCRosidhCdpJzpZvmund0CafsgxjQW4Wjyz/CTu+J
	 Xco3iuwJVh+V4mhsQCrLSbGBglZPrXjjeqjTskiaczcalta5itVO5MolUCmWEqWGj1
	 umDR5OxnB4kVkdywlALdJNshtVQRJwBWq2EI6VznsLHDaymIev7fnMyE7d8k83zKpf
	 rhNQNO2EsrjBGFZmss6GD5WdPdPUCjrFaQH3o93ROwcmD0b7DUEsPLeevxNygVzhvf
	 cvdCdULT7gi43c95aSkVHpMh/6rVOOisVn9Tq8baTRkMyK4cKvZeWd8XhT/CMnKYg7
	 Ri2iiv4MH43WQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5oFGz2LmIFDG; Fri,  4 Nov 2022 20:43:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D47AD4190A;
	Fri,  4 Nov 2022 20:42:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D47AD4190A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DD47D1BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 20:42:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B405E403EA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 20:42:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B405E403EA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r-Kz8O7H0fFX for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Nov 2022 20:42:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2614B40184
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com
 [IPv6:2607:f8b0:4864:20::229])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2614B40184
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 20:42:54 +0000 (UTC)
Received: by mail-oi1-x229.google.com with SMTP id y67so6394886oiy.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Nov 2022 13:42:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=jQ4gXr1turouEQ95+x3UakyDrVi4g3dT0y7NpfH0qPs=;
 b=DW3mfKiCHCJpeRZJglE8RcRmfIZ1BQ80iBw3NCB08hjZ13H22bY3ExQcL/rF+doOHw
 eEG2MGlIDhjf278nL6omVVCML5VdsmL0Tld7UEVUCH2J9TLQ/ibnDVPftBKUN+VcOZf5
 Qh06kba6cY6sWCG91BlALbxy104Fli/cP4GBJPMoWCXTBx9RBaKq6NTOSW9nJ3jPaqyf
 76dXwE0Pewaep5Lz/wTzRok+k+X4fqAqfNp+9O6l4VrRzFPJA+S8WVAYFJFJ36k0NzVw
 PIJvHvFzjNgujRFxD3aCt0hdgN5uMt8SJ4o6BCbJaa59zm0b3ZRAbsfZOgeOoa67nQ6P
 SvWA==
X-Gm-Message-State: ACrzQf3MNsHuROjwGBZGL+5l2tcP7coFQaKjsWjr5Q6jJs5YdOdXwNfT
 Se3DPZ3tIE2DWdRCUZvnTsU=
X-Google-Smtp-Source: AMsMyM6uhfbCXJb2q3AkwRuMO9Mjf9xHTKiSSXkljdTFDkgQ9gIWK1vZZlSecO9utfeB4MFPxnhffw==
X-Received: by 2002:a54:4587:0:b0:359:c737:b2e8 with SMTP id
 z7-20020a544587000000b00359c737b2e8mr20212921oib.234.1667594573223; 
 Fri, 04 Nov 2022 13:42:53 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 f1-20020a056830204100b006619483182csm162608otp.18.2022.11.04.13.42.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Nov 2022 13:42:52 -0700 (PDT)
Date: Fri, 4 Nov 2022 13:42:51 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20221104204251.GB506794@roeck-us.net>
References: <20221104054053.431922658@goodmis.org>
 <20221104192232.GA2520396@roeck-us.net>
 <20221104154209.21b26782@rorschach.local.home>
 <20221104154355.578ab689@rorschach.local.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221104154355.578ab689@rorschach.local.home>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
 :reply-to;
 bh=jQ4gXr1turouEQ95+x3UakyDrVi4g3dT0y7NpfH0qPs=;
 b=lSF8e6DLqbKKv+/YhmRhAK/T1efgb2O636TOXNjLfcC0viXP62NhHdxomxLJWtIe7d
 2JndYje5nsRNFlqIXElcBPkKCNEcFme9PlK3C7Q1VMpYaqUkgV/gQHQcIxtcw2fILMZW
 OKJ4E8wSXhLBL3J9S3NnNPs9rdwe6KKkDhBPqcY/XDJgpqSUigUMcqCvapDa55nrN05q
 GmtiLLrP+Y0lcIHCsefgW4EhiR9DSJnDXwmLBbW8A31Y89yswej4P9L3XtJNKO8bMaw7
 4czQwKTd2lx34+qzGmcV/Exm8IIRhuHeavJKESaaJd5m9cQQb9K2fLTxromO6yhuwk2D
 Ci4w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=lSF8e6DL
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

On Fri, Nov 04, 2022 at 04:38:34PM -0400, Steven Rostedt wrote:
> On Fri, 4 Nov 2022 15:42:09 -0400
> Steven Rostedt <rostedt@goodmis.org> wrote:
> 
[ ... ]
> 
> > drivers/clocksource/timer-fttmr010.c:   fttmr010->timer_shutdown(evt);
> > drivers/clocksource/timer-fttmr010.c:   fttmr010->timer_shutdown(evt);
> > drivers/clocksource/timer-fttmr010.c:   fttmr010->timer_shutdown(evt);
> > drivers/clocksource/timer-fttmr010.c:           fttmr010->timer_shutdown = ast2600_timer_shutdown;
> > drivers/clocksource/timer-fttmr010.c:           fttmr010->timer_shutdown = fttmr010_timer_shutdown;
> > drivers/clocksource/timer-fttmr010.c:   fttmr010->clkevt.set_state_shutdown = fttmr010->timer_shutdown;
> > drivers/clocksource/timer-fttmr010.c:   fttmr010->clkevt.tick_resume = fttmr010->timer_shutdown;
> 
> I won't touch structure fields though.
> 

Agreed, same here.

Guenter
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
