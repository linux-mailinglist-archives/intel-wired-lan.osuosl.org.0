Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA8461A18B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Nov 2022 20:51:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 742DA40423;
	Fri,  4 Nov 2022 19:51:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 742DA40423
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667591480;
	bh=7ZHDYL3J7FtuPR0C5/UhLZqxvx2SyDDGf+jDw49J2sQ=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Duq8A+OX1Y9AMQP14k9+2xm+BGs7SsqBl5F7cCQ2bHQlIoWgiyOVyOs6mrrlFppON
	 vouM1DuXuSf8EmbT8j3XaCpGaMKEb0iW1Alch0NdxUXUaOypoqxBmZH98gHU5odMQv
	 JP9SYP69hxWFtkaTF+01N4jlKYyEoyms+RkHWTmtrmf/6rjYJkB8jWH5MVoPHqWXw9
	 s5FlBpoCG52Ychrkfq/OjKwbGjiiwomqPxwclplqLFEr2SKpBPJ5belR8FlfRGYdVW
	 16cQtnBAkxX2qwNTTCriG4LuHfrvuD9WMdPl6i44gf98JXIqmZtYt0AyWVVXyv6Uj+
	 dV+omzimjKL6Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YCQHDFp0A-LV; Fri,  4 Nov 2022 19:51:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 924754010C;
	Fri,  4 Nov 2022 19:51:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 924754010C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5AD6E1BF488
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 19:51:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 323654192B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 19:51:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 323654192B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vD2VRPkJI9sY for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Nov 2022 19:51:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6DBD041929
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com
 [IPv6:2001:4860:4864:20::32])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6DBD041929
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 19:51:13 +0000 (UTC)
Received: by mail-oa1-x32.google.com with SMTP id
 586e51a60fabf-13be3ef361dso6613885fac.12
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Nov 2022 12:51:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=x16jINQR4q6R4H/0ehn+NSarZW0ZiXtTfCfHHiaRLp4=;
 b=UyZNee5qfFxPlkZN+aBdcFxJQAOEGG5hA1yM+uMQmN4nzNgr6N5i+WPIMDr+4ZhD72
 N7CBQxhA2RvT6++3bmXgl0kqAxS55bt8MKXXmF/nGO9iRrC68mAZej5oxYc1NG4xTN3J
 hY8UA/B2bON2Kv273MPjS4WoxxZ0+fmj7hgbwOzsqazwK6GI+ld+dhfWjSrz2QUUVCbY
 znwHaBBukqIHPVtrxw58QI1W/BLcpM4xS6cXL7lzoiTPHAh8F0+JV0vnPUbdQjyVDA25
 SrpTwruXDBORGmrY90Rpar0CXtp73Meg+q/kkVftGoVv5f3jYMR1US8DeSiGTlaY6vJX
 z1XA==
X-Gm-Message-State: ACrzQf3Id1j2T+mysGc5fE6mXR1QVxIrfNRk04I3mw/6LXcrxd3oZxca
 UGLkYU0za8nI3a2niFtP10mRJBQ6BT9BHA==
X-Google-Smtp-Source: AMsMyM5yZzoMgvmtH1d4hRF7cdvsoI4gHl0eECHYO+5xdQOboyC3rm+QDkOvsTuPqWRglrQaUzzxAw==
X-Received: by 2002:a05:6870:c22b:b0:140:6552:acd3 with SMTP id
 z43-20020a056870c22b00b001406552acd3mr3535348oae.175.1667591472224; 
 Fri, 04 Nov 2022 12:51:12 -0700 (PDT)
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com.
 [209.85.161.44]) by smtp.gmail.com with ESMTPSA id
 z6-20020a4a2246000000b0049eb2793516sm14404ooe.44.2022.11.04.12.51.09
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 04 Nov 2022 12:51:10 -0700 (PDT)
Received: by mail-oo1-f44.google.com with SMTP id
 k12-20020a4ab08c000000b0049e2ab19e04so813990oon.6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Nov 2022 12:51:09 -0700 (PDT)
X-Received: by 2002:a0d:ef07:0:b0:373:5257:f897 with SMTP id
 y7-20020a0def07000000b003735257f897mr16823922ywe.401.1667591459021; Fri, 04
 Nov 2022 12:50:59 -0700 (PDT)
MIME-Version: 1.0
References: <20221104054053.431922658@goodmis.org>
 <20221104192232.GA2520396@roeck-us.net>
 <20221104154209.21b26782@rorschach.local.home>
In-Reply-To: <20221104154209.21b26782@rorschach.local.home>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 4 Nov 2022 12:50:42 -0700
X-Gmail-Original-Message-ID: <CAHk-=wge9uWV2i9PR6x7va4ZbPdX5+rg7Ep1UNH_nYdd9rD-uw@mail.gmail.com>
Message-ID: <CAHk-=wge9uWV2i9PR6x7va4ZbPdX5+rg7Ep1UNH_nYdd9rD-uw@mail.gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=x16jINQR4q6R4H/0ehn+NSarZW0ZiXtTfCfHHiaRLp4=;
 b=bIdKEWgR5UZIy0TJaruQujMahMwynr4PVMnDcU4kBitHBNo7q073JbrYzG65FbHP7Y
 mbM9hFjlLlwQAouSAl9oSuR5cXI0K/JQyyZwmKs1co0JGtwjHN72PIS9n6MKeTRWxT7Z
 cCPuFkDzNQGR2KqOHNVW0/FBQA0CMharaPptg=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=linux-foundation.org
 header.i=@linux-foundation.org header.a=rsa-sha256 header.s=google
 header.b=bIdKEWgR
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

On Fri, Nov 4, 2022 at 12:42 PM Steven Rostedt <rostedt@goodmis.org> wrote:
>
> Linus, should I also add any patches that has already been acked by the
> respective maintainer?

No, I'd prefer to keep only the ones that are 100% unambiguously not
changing any semantics.

              Linus
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
