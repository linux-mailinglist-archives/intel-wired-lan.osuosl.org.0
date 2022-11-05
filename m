Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F10361DD3C
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Nov 2022 19:29:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9881160AE0;
	Sat,  5 Nov 2022 18:29:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9881160AE0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667672948;
	bh=G2FPELHNSSJ1wT3mhlcpuAkox1KzqoWf6g8YxDlW1gE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lemOqn/pJi/jPGPYUpVPRT8hgus1NdNPhIH0gAYoaoEEW8ZJfKqu9GlPBNK8A9nXw
	 QmC5qRSjFeNsowWG8FA3OQsZCpcQEQFAy+ekkVZmUC7CBJRdEAZpXvvHV60LxdvNPu
	 /OviskaK9VRjOpvxGMon3QsA3QLUjvBbM6CJ5ncMYenhgeTd5r/r73IXStwLbLrNmP
	 50t1F4sEhTKKC+uEhsNUeodJLOhKU50xrlwlKaD6wGvlqamz1o0hy1bd3m3J3e7qwK
	 xvpywkIHAwwDJx4ocmRARNAR4ZnSIXCJixhXKnNLJe4JRMVTUKptruTDHAzg5Xjn7g
	 7FSzZyRxUXF0g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zsywK1B50c4m; Sat,  5 Nov 2022 18:29:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 81BFD60A94;
	Sat,  5 Nov 2022 18:29:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 81BFD60A94
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 673781BF375
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Nov 2022 18:29:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4597781A46
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Nov 2022 18:29:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4597781A46
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4nXuFUd79kZ1 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Nov 2022 18:29:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B66681A3E
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com
 [IPv6:2607:f8b0:4864:20::72a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7B66681A3E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Nov 2022 18:29:01 +0000 (UTC)
Received: by mail-qk1-x72a.google.com with SMTP id i9so5116751qki.10
 for <intel-wired-lan@lists.osuosl.org>; Sat, 05 Nov 2022 11:29:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=+1YQb6nXk/q0EHljp4F8v1bXvbOovOAnj80btawKRAY=;
 b=oeKzoLXOmrFP+jrz6zvrok2pGNJZr5hafQ1TIKV1mhhnT3XAYI27ObfiWeFSWBuzut
 aC87zHaxpSZRy0O8W0r7WmSdbmJ37ATVXmcFLA7u12CWU7b+T7eNjeeoB0q22iFjdMop
 Zd48IVZtusg18uq3t+joET0YmufzV1/t/9E0pFX5oYk+jwHc08OLIoreq5YUtpWvnQYA
 VZgnyEkzLCatyyXtjo6ULkWdXs3lAXUIjv5l6ggWhTgg/jT1V/te72aNYMZbEh20ixOw
 lA+22n00F6LUqrIU+FFSsyJWIDiB7I12xCQIFqc0K+Amlsz2NJvGCbPP4Rx7QoK7/vwJ
 hnGw==
X-Gm-Message-State: ACrzQf2KNWNoQ+tGL4dHugr6ywMXIc5S1bzLpdKSe2atENUQZbA+xxOw
 XoXRobOCqM8u2ejN4S+IKqhjBalMdcu1Ig==
X-Google-Smtp-Source: AMsMyM52Deep+CFH0z1qrgnkpAT2Aj9yc78PRb/HyyBp/V8q43apyVc49yrZA6Pfwhy2BoNfAcInHA==
X-Received: by 2002:ae9:f40c:0:b0:6fa:43b8:44d0 with SMTP id
 y12-20020ae9f40c000000b006fa43b844d0mr20720757qkl.637.1667672939931; 
 Sat, 05 Nov 2022 11:28:59 -0700 (PDT)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com.
 [209.85.219.178]) by smtp.gmail.com with ESMTPSA id
 y22-20020a05620a44d600b006f9c2be0b4bsm2382617qkp.135.2022.11.05.11.28.59
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 05 Nov 2022 11:28:59 -0700 (PDT)
Received: by mail-yb1-f178.google.com with SMTP id 129so9257675ybb.12
 for <intel-wired-lan@lists.osuosl.org>; Sat, 05 Nov 2022 11:28:59 -0700 (PDT)
X-Received: by 2002:a25:bb02:0:b0:6ca:9345:b2ee with SMTP id
 z2-20020a25bb02000000b006ca9345b2eemr26793220ybg.362.1667672929161; Sat, 05
 Nov 2022 11:28:49 -0700 (PDT)
MIME-Version: 1.0
References: <20221105060024.598488967@goodmis.org>
 <CAHk-=wi95dGkg7DiuOZ27gGW+mxJipn9ykB6LHB-HrbbLG6OMQ@mail.gmail.com>
 <20221105123642.596371c7@rorschach.local.home>
 <20221105140356.6a3da628@rorschach.local.home>
In-Reply-To: <20221105140356.6a3da628@rorschach.local.home>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 5 Nov 2022 11:28:33 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjnASLkTdPd+wxto2RBQH+S9MUm4FrNPWvU87opFG5SKQ@mail.gmail.com>
Message-ID: <CAHk-=wjnASLkTdPd+wxto2RBQH+S9MUm4FrNPWvU87opFG5SKQ@mail.gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=+1YQb6nXk/q0EHljp4F8v1bXvbOovOAnj80btawKRAY=;
 b=DONWs6/FiwPtVJ4h9P9G1D+xI2OZ4sOZ++B4h9lOUr90grPUMADKKtOkyMNK85AsEf
 yHs4XotTZQfbZFXiKO1vIPQf4cjf9p2EEuLbIK2DwoG1VitJXDxI/Fg0k/P20CNhLtpT
 5yTAOviUwyDAlllMzqQFpJUoXjW0aoAYitY3g=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=linux-foundation.org
 header.i=@linux-foundation.org header.a=rsa-sha256 header.s=google
 header.b=DONWs6/F
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
 Thomas Gleixner <tglx@linutronix.de>, linux-leds@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-s390@vger.kernel.org,
 linux-nilfs@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-sh@vger.kernel.org, linux-atm-general@lists.sourceforge.net,
 linux-afs@lists.infradead.org, lvs-devel@vger.kernel.org,
 linux-acpi@vger.kernel.org, coreteam@netfilter.org,
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
 Julia Lawall <Julia.Lawall@inria.fr>, linux-bluetooth@vger.kernel.org,
 netfilter-devel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linaro-mm-sig@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Nov 5, 2022 at 11:04 AM Steven Rostedt <rostedt@goodmis.org> wrote:
>
> Here's the changes I made after running the script

Please. No.

What part of "I don't want extra crud" was I unclear on?

I'm not interested in converting everything. That's clearly a 6.,2
issue, possibly even longer considering how complicated the networking
side has been.

I'm not AT ALL interested in "oh, I then added my own small cleanups
on top to random files because I happened to notice them".

Repeat after me: "If the script didn't catch them, they weren't
trivially obvious".

And it does seem that right now the script itself is a bit too
generous, which is why it didn't notice that sometimes there wasn't a
kfree after all because of a goto around it. So clearly that "..."
doesn't really work, I think it accepts "_any_ path leads to the
second situation" rather than "_all_ paths lead to the second
situation".

But yeah, my coccinelle-foo is very weak too, and maybe there's no
pattern for "no flow control".

I would also like the coccinelle script to notice the "timer is used
afterwards", so that it does *not* modify that case that does

                del_timer(&dch->timer);
                dch->timer.function = NULL;

since now the timer is modified in between the del_timer() and the kfree.

Again, that timer modification is then made pointless by changing the
del_timer() to a "timer_shutdown()", but at that point it is no longer
a "so obvious non-semantic change that it should be scripted". At that
point it's a manual thing.

So I think the "..." in your script should be "no flow control, and no
access to the timer", but do not know how to do that in coccinelle.

Julia?

And this thread has way too many participants, I suspect some email
systems will just mark it as spam as a result. Which is partly *why* I
would like to get rid of noisy changes that really don't matter - but
I would like it to be truly mindlessly obvious that there are *zero*
questions about it, and absolutely no manual intervention because the
patch is so strict that it's just unquestionably correct.

              Linus
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
