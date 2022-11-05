Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C0961DBD2
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Nov 2022 17:00:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7EEE260AC6;
	Sat,  5 Nov 2022 16:00:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7EEE260AC6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667664020;
	bh=NGp5GP3ohZmZuom19DfS6drIXQsuuzPmBNy1u4E1Lt8=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=e6Q4c/0Ohr1AQqFks7sQ462Tn4Oi+XAstoHh3CVtSJQjnXOs65YzmrXLdLbEmTpZR
	 88w+n5pn0zKB9Wippp74C+UWfACsp/whk+C6xeX39pZHQ9YZ0Dqo+SYxOSHFjRGBPX
	 eS2epJ80978/6iFvmWrCw6CA8weOaeYnp7gvHO3NskXXmUdFdxN+eZL1kGejA2uos4
	 fGLW3PX9SLbEfBmLYBZwd6jlvTmTMkayF1xoh4F0oS9aYTs7KIJ5pPYq6vu7/hMqpS
	 XC5wobH3H8zmsH3pyjmlNfUjzw4GMUkjf51I9F5RjlemGOqAcT+75R7JDz15onk8ic
	 imd8oqkFSisLA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZV5c-rarCH1b; Sat,  5 Nov 2022 16:00:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 789FE60797;
	Sat,  5 Nov 2022 16:00:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 789FE60797
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1B12E1BF285
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Nov 2022 16:00:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E9EB640364
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Nov 2022 16:00:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E9EB640364
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DX7fP1sxdz39 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Nov 2022 16:00:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9FF0C40148
Received: from mail-qt1-x82a.google.com (mail-qt1-x82a.google.com
 [IPv6:2607:f8b0:4864:20::82a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9FF0C40148
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Nov 2022 16:00:13 +0000 (UTC)
Received: by mail-qt1-x82a.google.com with SMTP id c15so4878641qtw.8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 05 Nov 2022 09:00:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=GP8p4dRzNVpyUotOfaypMmYTGE9lsMcq6qB3gjhmc04=;
 b=SDK1mNtSRBqbSHlSOSzBL+0AQsNvDxmO4SnFb4Pi1qmdlhbHlIF7G7E9Ly4C412Nc9
 t4HYd2UXtff5kCxSpeNipkyJCJB18aULC0EWr6EVn20GUXOigYTvkDCh8Bl5yFVWiGhy
 Y8g857zjfXJQmqVZiIP/AkQpPOVBGJSFlWZ1UDN/SNf5x7zfDm8dhgEfnlLFg8Zf7Pi+
 EFALCyj5Z3xkCxqjQ6qxMPQIHgSNOISDk72+8Y0/MxWEesF4aEtZk6tdEaQZF5rnS1Pv
 dbWMUDpVQAKhcnZTCblRtfnIJCEAkV5Tmcmr0nS4IOlTWwR4JRZHXX5PYKFo2MTt40Qg
 qvVA==
X-Gm-Message-State: ANoB5pmkXeeGuKE9H5XfY/LogefhDo7cg3guz/ihECb5G8mD139YRXc3
 iwAhhFz4Bh7z4WbL3KITIvb/9GUC8AWoIw==
X-Google-Smtp-Source: AA0mqf7h9uRmRn+cFeQPPovlMYTCLod5zsxae1r4AFiVJppYfQpDue4UVQkouD4yWyedrh9yAiZK0w==
X-Received: by 2002:a05:622a:1393:b0:3a5:82ea:9033 with SMTP id
 o19-20020a05622a139300b003a582ea9033mr211676qtk.549.1667664012142; 
 Sat, 05 Nov 2022 09:00:12 -0700 (PDT)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com.
 [209.85.128.174]) by smtp.gmail.com with ESMTPSA id
 l9-20020a37f909000000b006e8f8ca8287sm2056670qkj.120.2022.11.05.09.00.03
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 05 Nov 2022 09:00:07 -0700 (PDT)
Received: by mail-yw1-f174.google.com with SMTP id
 00721157ae682-3704852322fso68687197b3.8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 05 Nov 2022 09:00:03 -0700 (PDT)
X-Received: by 2002:a81:114e:0:b0:36a:fc80:fa62 with SMTP id
 75-20020a81114e000000b0036afc80fa62mr40431421ywr.58.1667663992806; Sat, 05
 Nov 2022 08:59:52 -0700 (PDT)
MIME-Version: 1.0
References: <20221105060024.598488967@goodmis.org>
In-Reply-To: <20221105060024.598488967@goodmis.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 5 Nov 2022 08:59:36 -0700
X-Gmail-Original-Message-ID: <CAHk-=wi95dGkg7DiuOZ27gGW+mxJipn9ykB6LHB-HrbbLG6OMQ@mail.gmail.com>
Message-ID: <CAHk-=wi95dGkg7DiuOZ27gGW+mxJipn9ykB6LHB-HrbbLG6OMQ@mail.gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=GP8p4dRzNVpyUotOfaypMmYTGE9lsMcq6qB3gjhmc04=;
 b=iIDJL03zNkH0lS9YORaCB4Nnx18G1RT5PAxkqTBkren7bOYLdVGnhhilx+OlS481lw
 gQr71gF/2R0QtX/qOni1Pt9vrqOkIr43rj0MZrH/uG69dzQgSBZeGC3nRHzTa1HEb5Zv
 OhEAlIPPkZmfK8ER3fSUpMd0BmaBeM97bdw94=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=linux-foundation.org
 header.i=@linux-foundation.org header.a=rsa-sha256 header.s=google
 header.b=iIDJL03z
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
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linaro-mm-sig@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Nov 4, 2022 at 11:01 PM Steven Rostedt <rostedt@goodmis.org> wrote:
>
> Patch 1 fixes an issue with sunrpc/xprt where it incorrectly uses
> del_singleshot_timer_sync() for something that is not a oneshot timer. As this
> will be converted to shutdown, this needs to be fixed first.

So this is the kind of thing that I would *not* want to get eartly.

I really would want to get just the infrastructure in to let people
start doing conversions.

And then the "mindlessly obvious patches that are done by scripting
and can not possibly matter".

The kinds that do not *need* review, because they are mechanical, and
that just cause pointless noise for the rest of the patches that *do*
want review.

Not this kind of thing that is so subtle that you have to explain it.
That's not a "scripted patch for no semantic change".

So leave the del_singleshot_timer_sync() cases alone, they are
irrelevant for the new infrastructure and for the "mindless scripted
conversion" patches.

> Patches 2-4 changes existing timer_shutdown() functions used locally in ARM and
> some drivers to better namespace names.

Ok, these are relevant.

> Patch 5 implements the new timer_shutdown() and timer_shutdown_sync() functions
> that disable re-arming the timer after they are called.

This is obviously what I'd want early so that people can start doign
this in their trees.

> Patches 6-28 change all the locations where there's a kfree(), kfree_rcu(),
> kmem_cache_free() and one call_rcu() call where the RCU function frees the
> timer (the workqueue patch) in the same function as the del_timer{,_sync}() is
> called on that timer, and there's no extra exit path between the del_timer and
> freeing of the timer.

So honestly, I was literally hoping for a "this is the coccinelle
script" kind of patch.

Now there seems to be a number of patches here that are actualyl
really hard to see that they are "obviously correct" and I can't tell
if they are actually scripted or not.

They don't *look* scripted, but I can't really tell.  I looked at the
patches with ten lines of context, and I didn't see the immediately
following kfree() even in that expanded patch context, so it's fairly
far away.

Others in the series were *definitely* not scripted, doing clearly
manual cleanups:

-    if (dch->timer.function) {
-        del_timer(&dch->timer);
-        dch->timer.function = NULL;
-    }
+    timer_shutdown(&dch->timer);

so no, this does *not* make me feel "ok, this is all trivial".

IOW, I'd really want *just* the infrastructure and *just* the provably
trivial stuff. If it wasn't some scripted really obvious thing that
cannot possibly change anything and that wasn't then edited manually
for some reason, I really don't want it early.

IOW, any early conversions I'd take are literally about removing pure
mindless noise. Not about doing conversions.

And I wouldn't mind it as a single conversion patch that has the
coccinelle script as the explanation.

Really just THAT kind of "100% mindless conversion".

               Linus
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
