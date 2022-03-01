Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0444C7FD1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Mar 2022 01:55:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 85F4F812D9;
	Tue,  1 Mar 2022 00:55:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U-91iDyBWIOO; Tue,  1 Mar 2022 00:55:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E48C81304;
	Tue,  1 Mar 2022 00:55:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 167D21BF9AC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 00:55:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0E7C6403EA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 00:55:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linux-foundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M3HelV4Z1tHt for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Mar 2022 00:55:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F3FA140176
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 00:55:16 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id qk11so28348126ejb.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 16:55:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ud5/y/EBwvp8QN7vw5ZxaiWuDsWQaCGba2UHh4N4mec=;
 b=QDNLH8KOj2N5elfQIiFc9ZMVPG667ughU6MItd4VPmNt6fV069Cvzy3GNDu1LboIOU
 /ukem7qn980/nnuqsEKTwz+sJAAGQSBr/OuNtNkm7jqBwkXZFdDq4KuXeUYSVdjS5Ygf
 UbLkNglYiw3uAvK1jhMlolPsp6Bm5sW2kE0eY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ud5/y/EBwvp8QN7vw5ZxaiWuDsWQaCGba2UHh4N4mec=;
 b=CZIjEnf7OYs5c9dJr6tovpc6wkO5yJvsQLo0/ZQnxgOZZdUGav5ZhH7370YcrPvAnL
 STHLuDycJEhpzNejavNAc0F4TpAJ7cFGkzshrLYlFtpU1afkJHXBgMRgOMZFqtQ79Efs
 JXgv9PW8j8SGXvvUMB2f9mLXQr8bd6JG82EHTSZrPbIhUHXjguWfb+uwvbjXWDm6VAI7
 CP81TMaoOAK7QHzAVBy+fD27t9kp9HyZ20lMtKZ6ZewjQfuzD941OLRAgRZU4d5b12ps
 7E4TPTbCD6Boy48+BI3IOKM5MLpUwQCVJm7WNsZLjRNrhw8vCmn3ziF/diqrUmIX30bR
 HhfA==
X-Gm-Message-State: AOAM533KZtmpeIPB/saC6mQv4T//XvcPnAVWu7kZ6gnluoPNYY7M0EGv
 NZMNdB9nvYQ5015f6+nr4iyXQtwLa8kQh8IR5b4=
X-Google-Smtp-Source: ABdhPJxBgaMe/BNlWEO8+OQy81EEHD7eerO6y8kpz2Pek+JLbQmAHnNf3YFz8/HqXkKNDrHU0LeK0A==
X-Received: by 2002:a17:906:9b88:b0:6d0:f843:4068 with SMTP id
 dd8-20020a1709069b8800b006d0f8434068mr16822485ejc.678.1646096114842; 
 Mon, 28 Feb 2022 16:55:14 -0800 (PST)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com.
 [209.85.221.53]) by smtp.gmail.com with ESMTPSA id
 t14-20020a170906608e00b006d1455acc62sm4819621ejj.74.2022.02.28.16.55.12
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Feb 2022 16:55:13 -0800 (PST)
Received: by mail-wr1-f53.google.com with SMTP id r10so18028591wrp.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 16:55:12 -0800 (PST)
X-Received: by 2002:a2e:aaa2:0:b0:244:bf42:3e6e with SMTP id
 bj34-20020a2eaaa2000000b00244bf423e6emr16240083ljb.176.1646096101617; Mon, 28
 Feb 2022 16:55:01 -0800 (PST)
MIME-Version: 1.0
References: <20220228110822.491923-1-jakobkoschel@gmail.com>
 <20220228110822.491923-3-jakobkoschel@gmail.com>
 <2e4e95d6-f6c9-a188-e1cd-b1eae465562a@amd.com>
 <CAHk-=wgQps58DPEOe4y5cTh5oE9EdNTWRLXzgMiETc+mFX7jzw@mail.gmail.com>
 <282f0f8d-f491-26fc-6ae0-604b367a5a1a@amd.com>
 <b2d20961dbb7533f380827a7fcc313ff849875c1.camel@HansenPartnership.com>
 <7D0C2A5D-500E-4F38-AD0C-A76E132A390E@kernel.org>
 <73fa82a20910c06784be2352a655acc59e9942ea.camel@HansenPartnership.com>
 <20220301003059.GE614@gate.crashing.org>
In-Reply-To: <20220301003059.GE614@gate.crashing.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 28 Feb 2022 16:54:45 -0800
X-Gmail-Original-Message-ID: <CAHk-=wgLYqYcw0xv65xrLSR7KDpS_6M+S9737m6NQorHGWsXYQ@mail.gmail.com>
Message-ID: <CAHk-=wgLYqYcw0xv65xrLSR7KDpS_6M+S9737m6NQorHGWsXYQ@mail.gmail.com>
To: Segher Boessenkool <segher@kernel.crashing.org>
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
Cc: alsa-devel@alsa-project.org, linux-aspeed@lists.ozlabs.org,
 linux-iio@vger.kernel.org, nouveau@lists.freedesktop.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 Cristiano Giuffrida <c.giuffrida@vu.nl>, "Bos, H.J." <h.j.bos@vu.nl>,
 samba-technical@lists.samba.org, linux1394-devel@lists.sourceforge.net,
 drbd-dev@lists.linbit.com, linux-arch <linux-arch@vger.kernel.org>,
 CIFS <linux-cifs@vger.kernel.org>, KVM list <kvm@vger.kernel.org>,
 linux-scsi <linux-scsi@vger.kernel.org>,
 linux-rdma <linux-rdma@vger.kernel.org>, linux-staging@lists.linux.dev,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 intel-wired-lan@lists.osuosl.org, kgdb-bugreport@lists.sourceforge.net,
 bcm-kernel-feedback-list@broadcom.com,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergman <arnd@arndb.de>,
 Linux PM <linux-pm@vger.kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Brian Johannesmeyer <bjohannesmeyer@gmail.com>,
 Nathan Chancellor <nathan@kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Jakob Koschel <jakobkoschel@gmail.com>, v9fs-developer@lists.sourceforge.net,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-sgx@vger.kernel.org,
 linux-block <linux-block@vger.kernel.org>, Netdev <netdev@vger.kernel.org>,
 linux-usb@vger.kernel.org, linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux F2FS Dev Mailing List <linux-f2fs-devel@lists.sourceforge.net>,
 tipc-discussion@lists.sourceforge.net,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 dma <dmaengine@vger.kernel.org>, linux-mediatek@lists.infradead.org,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Feb 28, 2022 at 4:38 PM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> In C its scope is the rest of the declaration and the entire loop, not
> anything after it.  This was the same in C++98 already, btw (but in
> pre-standard versions of C++ things were like you remember, yes, and it
> was painful).

Yeah, the original C++ model was just unadulterated garbage, with no
excuse for it, and the scope was not the loop, but the block the loop
existed in.

That would never have been acceptable for the kernel - it's basically
just an even uglier version of "put variable declarations in the
middle of code" (and we use "-Wdeclaration-after-statement" to
disallow that for kernel code, although apparently some of our user
space tooling code doesn't enforce or follow that rule).

The actual C99 version is the sane one which actually makes it easier
and clearer to have loop iterators that are clearly just in loop
scope.

That's a good idea in general, and I have wanted to start using that
in the kernel even aside from some of the loop construct macros.
Because putting variables in natural minimal scope is a GoodThing(tm).

Of course, we shouldn't go crazy with it. Even after we do that
-std=gnu11 thing, we'll have backports to worry about. And it's not
clear that we necessarily want to backport that gnu11 thing - since
people who run old stable kernels also may be still using those really
old compilers...

            Linus
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
