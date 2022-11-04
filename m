Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F03E619DF3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Nov 2022 18:00:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D8133821A2;
	Fri,  4 Nov 2022 17:00:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D8133821A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667581242;
	bh=ygDkv5iHj/U/xV1+YIK6iJxMvWXQ+r6A1dAFQ5xuyuE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pFKlTkbUPyi04pYf8TK9wbBHdX8qfXBQfDBrpLMVqA3CpRHMKSqNmNp6u2X+51DBn
	 CuY61uAcMXJJqGRb+XP2lg0EJUbjplvnXnh/TQMo4gzU+IFeLCQSFuIVt22aBczK9h
	 iuZn7jrogUTrGWbpaGJmyPd+PgWJVjX5yam1cot8Yd+GCrOmaTJzXT2nuay6gafpDZ
	 8IO0xmnKLjvMQ74PXSmoFZ3BTndfLeeHqzUH1rBqkG9MXNrpq+IgIpQ/Yl0H6qYsgH
	 rmlalDOPDBSxvASIOQfOa9DuNi7dcpgDXd0ag32AsRdj4pgBLxUf3hRrlA8d0JHpQi
	 9QNCvIvG+ITIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yxWnKio8L77p; Fri,  4 Nov 2022 17:00:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6CF582197;
	Fri,  4 Nov 2022 17:00:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6CF582197
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8CA031BF34D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 17:00:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 63E6F6113F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 17:00:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63E6F6113F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RjUdOIL4KF6m for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Nov 2022 17:00:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF48261136
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com
 [IPv6:2607:f8b0:4864:20::834])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AF48261136
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 17:00:35 +0000 (UTC)
Received: by mail-qt1-x834.google.com with SMTP id l2so3373382qtq.11
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Nov 2022 10:00:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=/jNIi3NLp/0QE0eLEgGhnlZnXslRxZtVSsauwMnJ52A=;
 b=IqYmZz8dLqCUmxIMcEQnCfrBd6f4eByUArrxdCO49FT45kcIVGQwyxjjIvw0lAr2nA
 AO6lx1AmHoc3qAwJ136fsHROHZqIo8ZZq2iF18fF3OBhg1pkjGYvFA+BhaRo27TR694F
 7JpFGG7qG7wACczDHs0gs9BSkOJ7eBlAxEkkKbuK4gveg3EeAfXnDFKbadbr+84FFpkN
 0GKYsvC59AAVVRxJ4P5bI5OO0AAkGI0F+dM0T/yIfkIntB2abKsmq6Hi/LIRtqNWTB2a
 hVI8lZenvuFaeC7REK4elP+5snKEiuEuiHCDDKvu3NwyRcS0KptDprlvwjqHo0vs+RLx
 ZPLA==
X-Gm-Message-State: ACrzQf34tu47l/TDSG91XEPEf1VKw+7g5GjyqheGufxvMXciIZ+KkM44
 gUymmhSi6oDNNpL7NEp2yWK3WwYqKyh3aQ==
X-Google-Smtp-Source: AMsMyM7FGCcvBkGbOlih5LF69Xqh6TRdghJsW+qTb7QVm1i+TkqQG4+uXiS5KDTs4KQ1L1+DJOuqhQ==
X-Received: by 2002:ac8:5713:0:b0:3a5:9d3:8890 with SMTP id
 19-20020ac85713000000b003a509d38890mr29815096qtw.355.1667581234327; 
 Fri, 04 Nov 2022 10:00:34 -0700 (PDT)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com.
 [209.85.128.182]) by smtp.gmail.com with ESMTPSA id
 ca16-20020a05622a1f1000b003a4ec43f2b5sm2755199qtb.72.2022.11.04.10.00.31
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 04 Nov 2022 10:00:31 -0700 (PDT)
Received: by mail-yw1-f182.google.com with SMTP id
 00721157ae682-370547b8ca0so49433197b3.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Nov 2022 10:00:31 -0700 (PDT)
X-Received: by 2002:a81:8241:0:b0:370:5fad:47f0 with SMTP id
 s62-20020a818241000000b003705fad47f0mr27409344ywf.441.1667581219811; Fri, 04
 Nov 2022 10:00:19 -0700 (PDT)
MIME-Version: 1.0
References: <20221104054053.431922658@goodmis.org>
In-Reply-To: <20221104054053.431922658@goodmis.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 4 Nov 2022 10:00:03 -0700
X-Gmail-Original-Message-ID: <CAHk-=whKE5UL+AuCC2wK8oq8D_ueSO_T7-9Acx4POouqVi8ZHg@mail.gmail.com>
Message-ID: <CAHk-=whKE5UL+AuCC2wK8oq8D_ueSO_T7-9Acx4POouqVi8ZHg@mail.gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=/jNIi3NLp/0QE0eLEgGhnlZnXslRxZtVSsauwMnJ52A=;
 b=TyCMiI4ARMPxd18RVlEv+qm2LWR7zC104Hlivn40qb5lZJslIeDFuCNMNvjneFE/Nj
 LFwCX5vAwmEX/R8qjGO9x9K9/hgdwoRd2q59WUqMzWoiDvISQjer+tTT1jJ7UfSLA8Vn
 fR3VeAjk206NeR5DC2lSXJH82ZME8JVM9jplc=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=linux-foundation.org
 header.i=@linux-foundation.org header.a=rsa-sha256 header.s=google
 header.b=TyCMiI4A
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

On Thu, Nov 3, 2022 at 10:48 PM Steven Rostedt <rostedt@goodmis.org> wrote:
>
> Ideally, I would have the first patch go into this rc cycle, which is mostly
> non functional as it will allow the other patches to come in via the respective
> subsystems in the next merge window.

Ack.

I also wonder if we could do the completely trivially correct
conversions immediately.

I'm talking about the scripted ones where it's currently a
"del_timer_sync()", and the very next action is freeing whatever data
structure the timer is in (possibly with something like free_irq() in
between - my point is that there's an unconditional free that is very
clear and unambiguous), so that there is absolutely no question about
whether they should use "timer_shutdown_sync()" or not.

IOW, things like patches 03, 17 and 31, and at least parts others in
this series.

This series clearly has several much more complex cases that need
actual real code review, and I think it would help to have the
completely unambiguous cases out of the way, just to get rid of noise.

So I'd take that first patch, and a scripted set of "this cannot
change any semantics" patches early.

                Linus
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
