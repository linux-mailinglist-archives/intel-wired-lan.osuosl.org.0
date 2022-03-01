Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9644C8AB6
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Mar 2022 12:28:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC537813C9;
	Tue,  1 Mar 2022 11:28:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M2SkL9CIal2b; Tue,  1 Mar 2022 11:28:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7DF6581415;
	Tue,  1 Mar 2022 11:28:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EC7881BF867
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 11:28:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D91BE40223
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 11:28:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yIjYLvaJqCwR for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Mar 2022 11:28:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C32B240215
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 11:28:19 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id d10so30808790eje.10
 for <intel-wired-lan@lists.osuosl.org>; Tue, 01 Mar 2022 03:28:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=rLPvv7mVdDwWU3WqqHUc/M/t9o2wkfNNz2uUSA/i/Q0=;
 b=ioxwEWwSec2mkWoQpVaP+m+cuqfrILVMZy97DsxGJQFNwUj5vt0t9wo5G7myUpC8Gn
 ea9oHHWNkcI1g0+ETzPDSekL4muwhDYsG3jrD0dPjJWnH1vW4gUq2ufbL8yBIo9ax2rC
 LCc4peu3G2+oC3D/CoxTwxe0jKznErkS9hGO2cQ4rpTAmgLJ5M6BCvPaoqQObgiQcr6n
 RKDduahlScES6wicQqME3eGzY8GUno55Oqx2eUsC/sQVyrcKAkNt4/DW8JZWJd6l/Vwp
 mTTzA+edxLDCldwyXcUf3Jn0ErW39L5ba+PqRXF7jiU95w3jgcW/Rs/bUGAwA8mWZWkw
 L2Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=rLPvv7mVdDwWU3WqqHUc/M/t9o2wkfNNz2uUSA/i/Q0=;
 b=TE195eXLSTuYGTjc2uTl67P3zMgMDQfV9fehteezpb966/mYMSjjXHy12C+tD9z7LO
 /4Nd2Un0xTjWvFKY7azNK2TQSgDP89ER84UpCLPhdBYxiJCIOEEn5Btyiz6GDBNcrC7y
 NBE3Epv+wvnnKMss2SLaK9S3lvLyJyaNvm9juwe8pITo94Sv/cnFNbG7CrjpOBOB+4vQ
 ORY8j17EZ5VjaLRCdw0OxIaSinHqXDCiCDWSb7Jlq/f8BBlTa57X6UygsZo2e7s8ujxZ
 dtfLnGwq+Unj8JHuUCIAZY5pioFyThwTDxSk+qfT72wM0uMwmJcUEP6RXIMriZmh+AdX
 jfUg==
X-Gm-Message-State: AOAM531iCdjud00gM/i8dPiA5MRl6VuYAxBIB9cmavSG9ypcvdDFt1iA
 +m4Qzv1wvPYAgHk5RICzZrI=
X-Google-Smtp-Source: ABdhPJykJwlP+KqTh6zSzndCpDSZzE2bN4aLh28OSmyBBaWLei6TdHv4i/sMtFtkO4GxsNuXK9LBkw==
X-Received: by 2002:a17:906:68c2:b0:6b4:9f26:c099 with SMTP id
 y2-20020a17090668c200b006b49f26c099mr18827008ejr.41.1646134097608; 
 Tue, 01 Mar 2022 03:28:17 -0800 (PST)
Received: from smtpclient.apple ([2a02:8109:9d80:3f6c:6db3:8d4c:747e:98ad])
 by smtp.gmail.com with ESMTPSA id
 a25-20020a50ff19000000b0040f84cd806csm7036870edu.59.2022.03.01.03.28.15
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 01 Mar 2022 03:28:17 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.60.0.1.1\))
From: Jakob Koschel <jakobkoschel@gmail.com>
In-Reply-To: <CAHk-=whLK11HyvpUtEftOjc3Gup2V77KpAQ2fycj3uai=qceHw@mail.gmail.com>
Date: Tue, 1 Mar 2022 12:28:15 +0100
Message-Id: <CEDAD0D9-56EE-4105-9107-72C2EAD940B0@gmail.com>
References: <20220228110822.491923-1-jakobkoschel@gmail.com>
 <20220228110822.491923-3-jakobkoschel@gmail.com>
 <2e4e95d6-f6c9-a188-e1cd-b1eae465562a@amd.com>
 <CAHk-=wgQps58DPEOe4y5cTh5oE9EdNTWRLXzgMiETc+mFX7jzw@mail.gmail.com>
 <CAHk-=wj8fkosQ7=bps5K+DDazBXk=ypfn49A0sEq+7-nZnyfXA@mail.gmail.com>
 <CAHk-=wiTCvLQkHcJ3y0hpqH7FEk9D28LDvZZogC6OVLk7naBww@mail.gmail.com>
 <FC710A1A-524E-481B-A668-FC258F529A2E@gmail.com>
 <CAHk-=whLK11HyvpUtEftOjc3Gup2V77KpAQ2fycj3uai=qceHw@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
X-Mailer: Apple Mail (2.3693.60.0.1.1)
Subject: Re: [Intel-wired-lan] [PATCH 2/6] treewide: remove using list
 iterator after loop body as a ptr
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>,
 alsa-devel@alsa-project.org, KVM list <kvm@vger.kernel.org>,
 linux-iio@vger.kernel.org, nouveau@lists.freedesktop.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Cristiano Giuffrida <c.giuffrida@vu.nl>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 linux1394-devel@lists.sourceforge.net, drbd-dev@lists.linbit.com,
 linux-arch <linux-arch@vger.kernel.org>, CIFS <linux-cifs@vger.kernel.org>,
 linux-aspeed@lists.ozlabs.org, linux-scsi <linux-scsi@vger.kernel.org>,
 linux-rdma <linux-rdma@vger.kernel.org>, linux-staging@lists.linux.dev, "Bos,
 H.J." <h.j.bos@vu.nl>, Jason Gunthorpe <jgg@ziepe.ca>,
 intel-wired-lan@lists.osuosl.org, kgdb-bugreport@lists.sourceforge.net,
 bcm-kernel-feedback-list@broadcom.com,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergman <arnd@arndb.de>,
 Linux PM <linux-pm@vger.kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Brian Johannesmeyer <bjohannesmeyer@gmail.com>,
 Nathan Chancellor <nathan@kernel.org>, dma <dmaengine@vger.kernel.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 v9fs-developer@lists.sourceforge.net,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-sgx@vger.kernel.org,
 linux-block <linux-block@vger.kernel.org>, Netdev <netdev@vger.kernel.org>,
 linux-usb@vger.kernel.org, samba-technical@lists.samba.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux F2FS Dev Mailing List <linux-f2fs-devel@lists.sourceforge.net>,
 tipc-discussion@lists.sourceforge.net,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 =?utf-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> On 1. Mar 2022, at 01:41, Linus Torvalds <torvalds@linux-foundation.org> wrote:
> 
> On Mon, Feb 28, 2022 at 1:47 PM Jakob Koschel <jakobkoschel@gmail.com> wrote:
>> 
>> The goal of this is to get compiler warnings right? This would indeed be great.
> 
> Yes, so I don't mind having a one-time patch that has been gathered
> using some automated checker tool, but I don't think that works from a
> long-term maintenance perspective.
> 
> So if we have the basic rule being "don't use the loop iterator after
> the loop has finished, because it can cause all kinds of subtle
> issues", then in _addition_ to fixing the existing code paths that
> have this issue, I really would want to (a) get a compiler warning for
> future cases and (b) make it not actually _work_ for future cases.
> 
> Because otherwise it will just happen again.
> 
>> Changing the list_for_each_entry() macro first will break all of those cases
>> (e.g. the ones using 'list_entry_is_head()).
> 
> So I have no problems with breaking cases that we basically already
> have a patch for due to  your automated tool. There were certainly
> more than a handful, but it didn't look _too_ bad to just make the
> rule be "don't use the iterator after the loop".
> 
> Of course, that's just based on that patch of yours. Maybe there are a
> ton of other cases that your patch didn't change, because they didn't
> match your trigger case, so I may just be overly optimistic here.

Based on the coccinelle script there are ~480 cases that need fixing
in total. I'll now finish all of them and then split them by
submodules as Greg suggested and repost a patch set per submodule.
Sounds good?

> 
> But basically to _me_, the important part is that the end result is
> maintainable longer-term. I'm more than happy to have a one-time patch
> to fix a lot of dubious cases if we can then have clean rules going
> forward.
> 
>> I assumed it is better to fix those cases first and then have a simple
>> coccinelle script changing the macro + moving the iterator into the scope
>> of the macro.
> 
> So that had been another plan of mine, until I actually looked at
> changing the macro. In the one case I looked at, it was ugly beyond
> belief.
> 
> It turns out that just syntactically, it's really nice to give the
> type of the iterator from outside the way we do now. Yeah, it may be a
> bit odd, and maybe it's partly because I'm so used to the
> "list_for_each_list_entry()" syntax, but moving the type into the loop
> construct really made it nasty - either one very complex line, or
> having to split it over two lines which was even worse.
> 
> Maybe the place I looked at just happened to have a long typename, but
> it's basically always going to be a struct, so it's never a _simple_
> type. And it just looked very odd adn unnatural to have the type as
> one of the "arguments" to that list_for_each_entry() macro.
> 
> So yes, initially my idea had been to just move the iterator entirely
> inside the macro. But specifying the type got so ugly that I think
> that
> 
>        typeof (pos) pos
> 
> trick inside the macro really ends up giving us the best of all worlds:
> 
> (a) let's us keep the existing syntax and code for all the nice cases
> that did everything inside the loop anyway
> 
> (b) gives us a nice warning for any normal use-after-loop case
> (unless you explicitly initialized it like that
> sgx_mmu_notifier_release() function did for no good reason
> 
> (c) also guarantees that even if you don't get a warning,
> non-converted (or newly written) bad code won't actually _work_
> 
> so you end up getting the new rules without any ambiguity or mistaken
> 
>> With this you are no longer able to set the 'outer' pos within the list
>> iterator loop body or am I missing something?
> 
> Correct. Any assignment inside the loop will be entirely just to the
> local loop case. So any "break;" out of the loop will have to set
> another variable - like your updated patch did.
> 
>> I fail to see how this will make most of the changes in this
>> patch obsolete (if that was the intention).
> 
> I hope my explanation above clarifies my thinking: I do not dislike
> your patch, and in fact your patch is indeed required to make the new
> semantics work.

ok it's all clear now, thanks for clarifying.
I've defined all the 'tmp' iterator variables uninitialized so applying
your patch on top of that later will just give the nice compiler warning 
if they are used past the loop body.

> 
> What I disliked was always the maintainability of your patch - making
> the rules be something that isn't actually visible in the source code,
> and letting the old semantics still work as well as they ever did, and
> having to basically run some verification pass to find bad users.

Since this patch is not a complete list of cases that need fixing (30%)
I haven't included the actual change of moving the iterator variable
into the loop and thought that would be a second step coming after this
is merged.

With these changes alone, yes you still rely on manual verification passes.

> 
> (I also disliked your original patch that mixed up the "CPU
> speculation type safety" with the actual non-speculative problems, but
> that was another issue).
> 
>                Linus

- Jakob

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
