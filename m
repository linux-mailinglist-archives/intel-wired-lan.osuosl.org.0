Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1274C4C93EE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Mar 2022 20:07:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 95EED402AF;
	Tue,  1 Mar 2022 19:07:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p7Wu0xnqmrRT; Tue,  1 Mar 2022 19:07:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8AC5D410E0;
	Tue,  1 Mar 2022 19:07:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A1C721BF283
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 19:07:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9C24960BE7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 19:07:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linux-foundation.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2EnHDwXllJbi for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Mar 2022 19:07:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com
 [IPv6:2a00:1450:4864:20::22a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6EBF360B7C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 19:07:20 +0000 (UTC)
Received: by mail-lj1-x22a.google.com with SMTP id bn33so23182880ljb.6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 01 Mar 2022 11:07:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+FYbGAw6yxU17iUDUp61Ry7f+ZSO9wN0ehJ+hGfk2DQ=;
 b=NEmpYuhxkY3jphhiKwB9rL7CFHETV0OarciDwH/Y25b8gogpFDGLbcsm2Hp5JlhbRM
 fgLdNaX0z1k1bpDTdAa2T+xhPoQGBlkWInAyVtxomjmoWydKKz6S1Vw5P8QyPxUNcXPG
 O8s4ZVUjpR1ZVkG2oqZOMI9ApgRXI/RsyC5iE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+FYbGAw6yxU17iUDUp61Ry7f+ZSO9wN0ehJ+hGfk2DQ=;
 b=1xPhBUanvhuXC0eBGTEEVgcvzYsvibZRxSCUCOoR7MDE2nkpP9InSLK4RKjnPtd+vK
 dhKdRX0svg+UIIjXCDm+S0NR3sElpEgsxtSpC4lXTzDvqU02Ny/KerVtP79yG+52su3d
 zPLrVS4sjx0vL/ZZIPEPXJ95lVmeRscxZ38irncqbSMAujZa/wW0dOnN0DSt9tflhivU
 N989hBQUk4R6kS4j9CgW0wIM1I+sNRIa6GErembLSbsuio4G3cZe5gox08W3zI8SWyx4
 t4i59LhF/cqalFbCPrqCt0DL8VxsGM7u5h/6vTCInh9KXeBp8DC1WJQkXMw3hcFZPM9a
 ZZPg==
X-Gm-Message-State: AOAM5334ScmvYghVNAuQIycJCz/O2q44IGrT79oixL8pOqCDGUoEJ78H
 jkGBpmKxyk199NYggOv4Q750/j8j90tWxoscUrs=
X-Google-Smtp-Source: ABdhPJx+8UnbUIj7ceuauNkD2kSGhiNkiHMN5ujd4+fRbz/V3w3vELHYi5uRtERJkKNjEqjkf4H3Pg==
X-Received: by 2002:a05:651c:1718:b0:246:2ab4:6d55 with SMTP id
 be24-20020a05651c171800b002462ab46d55mr18934124ljb.395.1646161637858; 
 Tue, 01 Mar 2022 11:07:17 -0800 (PST)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com.
 [209.85.208.171]) by smtp.gmail.com with ESMTPSA id
 z3-20020a05651c11c300b002463b855b67sm2132992ljo.54.2022.03.01.11.07.13
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 01 Mar 2022 11:07:15 -0800 (PST)
Received: by mail-lj1-f171.google.com with SMTP id o6so23164097ljp.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 01 Mar 2022 11:07:13 -0800 (PST)
X-Received: by 2002:a2e:3013:0:b0:246:2ca9:365e with SMTP id
 w19-20020a2e3013000000b002462ca9365emr17902580ljw.291.1646161622598; Tue, 01
 Mar 2022 11:07:02 -0800 (PST)
MIME-Version: 1.0
References: <20220228110822.491923-1-jakobkoschel@gmail.com>
 <20220228110822.491923-3-jakobkoschel@gmail.com>
 <2e4e95d6-f6c9-a188-e1cd-b1eae465562a@amd.com>
 <CAHk-=wgQps58DPEOe4y5cTh5oE9EdNTWRLXzgMiETc+mFX7jzw@mail.gmail.com>
 <282f0f8d-f491-26fc-6ae0-604b367a5a1a@amd.com>
 <b2d20961dbb7533f380827a7fcc313ff849875c1.camel@HansenPartnership.com>
 <7D0C2A5D-500E-4F38-AD0C-A76E132A390E@kernel.org>
 <73fa82a20910c06784be2352a655acc59e9942ea.camel@HansenPartnership.com>
In-Reply-To: <73fa82a20910c06784be2352a655acc59e9942ea.camel@HansenPartnership.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 1 Mar 2022 11:06:45 -0800
X-Gmail-Original-Message-ID: <CAHk-=wiT5HX6Kp0Qv4ZYK_rkq9t5fZ5zZ7vzvi6pub9kgp=72g@mail.gmail.com>
Message-ID: <CAHk-=wiT5HX6Kp0Qv4ZYK_rkq9t5fZ5zZ7vzvi6pub9kgp=72g@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
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
 Cristiano Giuffrida <c.giuffrida@vu.nl>, "Bos, H.J." <h.j.bos@vu.nl>,
 linux1394-devel@lists.sourceforge.net, drbd-dev@lists.linbit.com,
 linux-arch <linux-arch@vger.kernel.org>, CIFS <linux-cifs@vger.kernel.org>,
 linux-aspeed@lists.ozlabs.org, linux-scsi <linux-scsi@vger.kernel.org>,
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
 Nathan Chancellor <nathan@kernel.org>, dma <dmaengine@vger.kernel.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Jakob Koschel <jakobkoschel@gmail.com>, v9fs-developer@lists.sourceforge.net,
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
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Feb 28, 2022 at 2:29 PM James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
>
> However, if the desire is really to poison the loop variable then we
> can do
>
> #define list_for_each_entry(pos, head, member)                          \
>         for (pos = list_first_entry(head, typeof(*pos), member);        \
>              !list_entry_is_head(pos, head, member) && ((pos = NULL) == NULL;                   \
>              pos = list_next_entry(pos, member))
>
> Which would at least set pos to NULL when the loop completes.

That would actually have been excellent if we had done that
originally. It would not only avoid the stale and incorrectly typed
head entry left-over turd, it would also have made it very easy to
test for "did I find an entry in the loop".

But I don't much like it in the situation we are now.

Why? Mainly because it basically changes the semantics of the loop
_without_ any warnings about it.  And we don't actually get the
advantage of the nicer semantics, because we can't actually make code
do

        list_for_each_entry(entry, ....) {
                ..
        }
        if (!entry)
                return -ESRCH;
        .. use the entry we found ..

because that would be a disaster for back-porting, plus it would be a
flag-day issue (ie we'd have to change the semantics of the loop at
the same time we change every single user).

So instead of that simple "if (!entry)", we'd effectively have to
continue to use something that still works with the old world order
(ie that "if (list_entry_is_head())" model).

So we couldn't really take _advantage_ of the nicer semantics, and
we'd not even get a warning if somebody does it wrong - the code would
just silently do the wrong thing.

IOW: I don't think you are wrong about that patch: it would solve the
problem that Jakob wants to solve, and it would have absolutely been
much better if we had done this from the beginning. But I think that
in our current situation, it's actually a really fragile solution to
the "don't do that then" problem we have.

              Linus
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
