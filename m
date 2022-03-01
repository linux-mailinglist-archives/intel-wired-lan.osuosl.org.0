Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B61F64C98A3
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Mar 2022 23:58:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 437FD60585;
	Tue,  1 Mar 2022 22:58:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h-o9QnwqBiE3; Tue,  1 Mar 2022 22:58:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 24A7260B1E;
	Tue,  1 Mar 2022 22:58:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B29E11BF34F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 22:58:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A54C2401ED
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 22:58:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hsRMGF4t_nld for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Mar 2022 22:58:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [185.58.86.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4AA3C40178
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 22:58:16 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 uk-mta-115-iQhP_KcpMfqbKr15oucLPQ-1; Tue, 01 Mar 2022 22:58:13 +0000
X-MC-Unique: iQhP_KcpMfqbKr15oucLPQ-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.28; Tue, 1 Mar 2022 22:58:11 +0000
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.028; Tue, 1 Mar 2022 22:58:11 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Linus Torvalds' <torvalds@linux-foundation.org>, James Bottomley
 <James.Bottomley@hansenpartnership.com>
Thread-Topic: [PATCH 2/6] treewide: remove using list iterator after loop body
 as a ptr
Thread-Index: AQHYLZ9++DU/OogLf0+tiSFmjztyUKyrHL5A
Date: Tue, 1 Mar 2022 22:58:11 +0000
Message-ID: <7dc860874d434d2288f36730d8ea3312@AcuMS.aculab.com>
References: <20220228110822.491923-1-jakobkoschel@gmail.com>
 <20220228110822.491923-3-jakobkoschel@gmail.com>
 <2e4e95d6-f6c9-a188-e1cd-b1eae465562a@amd.com>
 <CAHk-=wgQps58DPEOe4y5cTh5oE9EdNTWRLXzgMiETc+mFX7jzw@mail.gmail.com>
 <282f0f8d-f491-26fc-6ae0-604b367a5a1a@amd.com>
 <b2d20961dbb7533f380827a7fcc313ff849875c1.camel@HansenPartnership.com>
 <7D0C2A5D-500E-4F38-AD0C-A76E132A390E@kernel.org>
 <73fa82a20910c06784be2352a655acc59e9942ea.camel@HansenPartnership.com>
 <CAHk-=wiT5HX6Kp0Qv4ZYK_rkq9t5fZ5zZ7vzvi6pub9kgp=72g@mail.gmail.com>
In-Reply-To: <CAHk-=wiT5HX6Kp0Qv4ZYK_rkq9t5fZ5zZ7vzvi6pub9kgp=72g@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=C51A453 smtp.mailfrom=david.laight@aculab.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
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
Cc: "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "nouveau@lists.freedesktop.org" <nouveau@lists.freedesktop.org>, Rasmus
 Villemoes <linux@rasmusvillemoes.dk>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Cristiano Giuffrida <c.giuffrida@vu.nl>, "Bos, H.J." <h.j.bos@vu.nl>,
 "samba-technical@lists.samba.org" <samba-technical@lists.samba.org>,
 "linux1394-devel@lists.sourceforge.net"
 <linux1394-devel@lists.sourceforge.net>,
 "drbd-dev@lists.linbit.com" <drbd-dev@lists.linbit.com>,
 linux-arch <linux-arch@vger.kernel.org>, CIFS <linux-cifs@vger.kernel.org>,
 KVM list <kvm@vger.kernel.org>, linux-scsi <linux-scsi@vger.kernel.org>,
 linux-rdma <linux-rdma@vger.kernel.org>,
 "linux-staging@lists.linux.dev" <linux-staging@lists.linux.dev>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kgdb-bugreport@lists.sourceforge.net" <kgdb-bugreport@lists.sourceforge.net>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, Arnd
 Bergman <arnd@arndb.de>, Linux PM <linux-pm@vger.kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Brian Johannesmeyer <bjohannesmeyer@gmail.com>,
 Nathan Chancellor <nathan@kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Jakob Koschel <jakobkoschel@gmail.com>,
 "v9fs-developer@lists.sourceforge.net" <v9fs-developer@lists.sourceforge.net>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Andy
 Shevchenko <andriy.shevchenko@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-sgx@vger.kernel.org" <linux-sgx@vger.kernel.org>,
 linux-block <linux-block@vger.kernel.org>, Netdev <netdev@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux F2FS Dev Mailing List <linux-f2fs-devel@lists.sourceforge.net>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 dma <dmaengine@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 =?utf-8?B?Q2hyaXN0aWFuIEvDtm5pZw==?= <christian.koenig@amd.com>, Mike
 Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Linus Torvalds
> Sent: 01 March 2022 19:07
> On Mon, Feb 28, 2022 at 2:29 PM James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
> >
> > However, if the desire is really to poison the loop variable then we
> > can do
> >
> > #define list_for_each_entry(pos, head, member)                          \
> >         for (pos = list_first_entry(head, typeof(*pos), member);        \
> >              !list_entry_is_head(pos, head, member) && ((pos = NULL) == NULL;                   \
> >              pos = list_next_entry(pos, member))
> >
> > Which would at least set pos to NULL when the loop completes.
> 
> That would actually have been excellent if we had done that
> originally. It would not only avoid the stale and incorrectly typed
> head entry left-over turd, it would also have made it very easy to
> test for "did I find an entry in the loop".
> 
> But I don't much like it in the situation we are now.
> 
> Why? Mainly because it basically changes the semantics of the loop
> _without_ any warnings about it.  And we don't actually get the
> advantage of the nicer semantics, because we can't actually make code
> do
> 
>         list_for_each_entry(entry, ....) {
>                 ..
>         }
>         if (!entry)
>                 return -ESRCH;
>         .. use the entry we found ..
> 
> because that would be a disaster for back-porting, plus it would be a
> flag-day issue (ie we'd have to change the semantics of the loop at
> the same time we change every single user).
> 
> So instead of that simple "if (!entry)", we'd effectively have to
> continue to use something that still works with the old world order
> (ie that "if (list_entry_is_head())" model).
> 
> So we couldn't really take _advantage_ of the nicer semantics, and
> we'd not even get a warning if somebody does it wrong - the code would
> just silently do the wrong thing.
> 
> IOW: I don't think you are wrong about that patch: it would solve the
> problem that Jakob wants to solve, and it would have absolutely been
> much better if we had done this from the beginning. But I think that
> in our current situation, it's actually a really fragile solution to
> the "don't do that then" problem we have.

Can it be resolved by making:
#define list_entry_is_head(pos, head, member) ((pos) == NULL)
and double-checking that it isn't used anywhere else (except in
the list macros themselves).

The odd ones I just found are fs/locks.c mm/page_reporting.c
security/apparmor/apparmorfs.c (3 times)

net/xfrm/xfrm_ipcomp.c#L244 is buggy.
(There is a WARN_ON() then it just carries on regardless!)

There are only about 25 uses of list_entry_is_head().

There are a lot more places where these lists seem to be scanned by hand.
I bet a few of those aren't actually right either.

(Oh at 3am this morning I thought it was a different list type
that could have much the same problem!)

Another plausible solution is a variant of list_foreach_entry()
that does set the 'entry' to NULL at the end.
Then code can be moved over in stages.
I'd reorder the arguments as well as changing the name!

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
