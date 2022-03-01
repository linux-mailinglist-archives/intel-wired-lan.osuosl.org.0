Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA6B4C7FE3
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Mar 2022 01:58:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B5380607B5;
	Tue,  1 Mar 2022 00:58:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6X_oLyuP59YV; Tue,  1 Mar 2022 00:58:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B805A6074C;
	Tue,  1 Mar 2022 00:58:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EB4301BF9AC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 00:42:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D7C75410C8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 00:42:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZbSyD91dB8_a for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Mar 2022 00:42:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
 by smtp4.osuosl.org (Postfix) with ESMTP id 99BF7410C6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 00:42:02 +0000 (UTC)
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 2210V56x017328;
 Mon, 28 Feb 2022 18:31:05 -0600
Received: (from segher@localhost)
 by gate.crashing.org (8.14.1/8.14.1/Submit) id 2210V0er017322;
 Mon, 28 Feb 2022 18:31:00 -0600
X-Authentication-Warning: gate.crashing.org: segher set sender to
 segher@kernel.crashing.org using -f
Date: Mon, 28 Feb 2022 18:30:59 -0600
From: Segher Boessenkool <segher@kernel.crashing.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20220301003059.GE614@gate.crashing.org>
References: <20220228110822.491923-1-jakobkoschel@gmail.com>
 <20220228110822.491923-3-jakobkoschel@gmail.com>
 <2e4e95d6-f6c9-a188-e1cd-b1eae465562a@amd.com>
 <CAHk-=wgQps58DPEOe4y5cTh5oE9EdNTWRLXzgMiETc+mFX7jzw@mail.gmail.com>
 <282f0f8d-f491-26fc-6ae0-604b367a5a1a@amd.com>
 <b2d20961dbb7533f380827a7fcc313ff849875c1.camel@HansenPartnership.com>
 <7D0C2A5D-500E-4F38-AD0C-A76E132A390E@kernel.org>
 <73fa82a20910c06784be2352a655acc59e9942ea.camel@HansenPartnership.com>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <73fa82a20910c06784be2352a655acc59e9942ea.camel@HansenPartnership.com>
User-Agent: Mutt/1.4.2.3i
X-Mailman-Approved-At: Tue, 01 Mar 2022 00:58:28 +0000
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
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
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
 Linus Torvalds <torvalds@linux-foundation.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Feb 28, 2022 at 05:28:58PM -0500, James Bottomley wrote:
> On Mon, 2022-02-28 at 23:59 +0200, Mike Rapoport wrote:
> > =

> > On February 28, 2022 10:42:53 PM GMT+02:00, James Bottomley <
> > James.Bottomley@HansenPartnership.com> wrote:
> > > On Mon, 2022-02-28 at 21:07 +0100, Christian K=F6nig wrote:
> [...]
> > > > > I do wish we could actually poison the 'pos' value after the
> > > > > loop somehow - but clearly the "might be uninitialized" I was
> > > > > hoping for isn't the way to do it.
> > > > > =

> > > > > Anybody have any ideas?
> > > > =

> > > > I think we should look at the use cases why code is touching
> > > > (pos) after the loop.
> > > > =

> > > > Just from skimming over the patches to change this and experience
> > > > with the drivers/subsystems I help to maintain I think the
> > > > primary pattern looks something like this:
> > > > =

> > > > list_for_each_entry(entry, head, member) {
> > > >      if (some_condition_checking(entry))
> > > >          break;
> > > > }
> > > > do_something_with(entry);
> > > =

> > > Actually, we usually have a check to see if the loop found
> > > anything, but in that case it should something like
> > > =

> > > if (list_entry_is_head(entry, head, member)) {
> > >    return with error;
> > > }
> > > do_somethin_with(entry);
> > > =

> > > Suffice?  The list_entry_is_head() macro is designed to cope with
> > > the bogus entry on head problem.
> > =

> > Won't suffice because the end goal of this work is to limit scope of
> > entry only to loop. Hence the need for additional variable.
> =

> Well, yes, but my objection is more to the size of churn than the
> desire to do loop local.  I'm not even sure loop local is possible,
> because it's always annoyed me that for (int i =3D 0; ...  in C++ defines
> i in the outer scope not the loop scope, which is why I never use it.

In C its scope is the rest of the declaration and the entire loop, not
anything after it.  This was the same in C++98 already, btw (but in
pre-standard versions of C++ things were like you remember, yes, and it
was painful).


Segher
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
