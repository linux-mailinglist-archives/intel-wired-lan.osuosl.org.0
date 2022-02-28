Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D264C7CF0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Feb 2022 23:06:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16CB560E75;
	Mon, 28 Feb 2022 22:06:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X6CSJO-corla; Mon, 28 Feb 2022 22:06:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 119F760E77;
	Mon, 28 Feb 2022 22:06:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3BBC71BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 21:19:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 362B260E6C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 21:19:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lhbnwXKxsScg for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Feb 2022 21:19:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0982B60E6B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 21:19:07 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id bd1so11781360plb.13
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 13:19:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc;
 bh=pX3FOaQ5tpG+krWAy5EzbawK39YqA5YwRZTg6hddt4E=;
 b=JpEWCU5sl0Tb/FD34RSH61Ey9dRKreZqOQa3CJ02luf0uqIT78+8GWNevF0TXmNO1k
 V82hjNGseb3oWLNgnnFwXHAFmfIF+pTCtPsXm95pt2iCzBmJFwg04njU2K1WfIC8K4PQ
 JYTCrkA4ACMCh2biL4u47uoOFfhnbmO/1jCCSOx3OESfK5+oDGNitg9s7NqsmIU5fVsE
 xsR4ABTTJUTksMDshckaPyVLHegSArBm3erCaRT01IEJkH2S1g98XNdRHKV6JZW5AanM
 gI9+nSzlxhKCRaqGLAQjGqwME5o9/K6faQyfblLD265MKP0MWlgdnuFxCRxjUTwlasET
 Zo4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc;
 bh=pX3FOaQ5tpG+krWAy5EzbawK39YqA5YwRZTg6hddt4E=;
 b=oBEsfOxnlBstD8Ov99qfDmjz5pkLsBUq+H4Utrq04XqxTt12WjGtIRlkTDZzIm480x
 vLs4lkztEzBEd5DWx9Ek6lwpNNjHqw1AHR7fikhQsriXAm5GJcblT0n4zgJZo4UmpolI
 gwE422D9O3SHI/qTyuAlo13Lc2u6/P49J64VRYR4xDOFa4DT3+j/v2VRX5LsoPwocX7Q
 Aq1n9A8mJUo3yEoB2R8TjyYLjIaUVu0sIi3bjfAz0yFIbzNTlSSl1tsj/FSRuDbqa/N/
 qoQkD2Z7Z7i4wJZpDBmfYIOiPuP+4BoAVIMdpoE6gFnKJxaMPYoXRxOiOHBx4RBHXbsy
 vd2A==
X-Gm-Message-State: AOAM531JudTSSatbp67BP4kh7KEb/9/R4X9dxGKOqJL+Ywzqp1asrFyZ
 Cbv8EBCYj35JRYNO3MpkQQa8kmTn7zVSC0UpJjI=
X-Google-Smtp-Source: ABdhPJxYQDaw0FFWrTXZCk3OvnKpy6mSdQ8Z9qbCWYQ2FvSetamSp4Rz90y2uoGU7tjomvOtre1MYsL9s+rZuYttBVs=
X-Received: by 2002:a17:902:ce8a:b0:14f:fd0e:e4a4 with SMTP id
 f10-20020a170902ce8a00b0014ffd0ee4a4mr22765912plg.47.1646083147399; Mon, 28
 Feb 2022 13:19:07 -0800 (PST)
MIME-Version: 1.0
References: <20220228110822.491923-1-jakobkoschel@gmail.com>
 <20220228110822.491923-3-jakobkoschel@gmail.com>
 <2e4e95d6-f6c9-a188-e1cd-b1eae465562a@amd.com>
 <CAHk-=wgQps58DPEOe4y5cTh5oE9EdNTWRLXzgMiETc+mFX7jzw@mail.gmail.com>
 <282f0f8d-f491-26fc-6ae0-604b367a5a1a@amd.com>
 <b2d20961dbb7533f380827a7fcc313ff849875c1.camel@HansenPartnership.com>
In-Reply-To: <b2d20961dbb7533f380827a7fcc313ff849875c1.camel@HansenPartnership.com>
From: Jeffrey Walton <noloader@gmail.com>
Date: Mon, 28 Feb 2022 16:18:56 -0500
Message-ID: <CAH8yC8nwp8f3rANhCiiP_Oiw2cjfqCwAgZdTXY9OxtN9Tmm7HA@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
X-Mailman-Approved-At: Mon, 28 Feb 2022 22:06:44 +0000
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
Reply-To: noloader@gmail.com
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
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
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
 Linus Torvalds <torvalds@linux-foundation.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Feb 28, 2022 at 3:45 PM James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> ...
> > Just from skimming over the patches to change this and experience
> > with the drivers/subsystems I help to maintain I think the primary
> > pattern looks something like this:
> >
> > list_for_each_entry(entry, head, member) {
> >      if (some_condition_checking(entry))
> >          break;
> > }
> > do_something_with(entry);
>
>
> Actually, we usually have a check to see if the loop found anything,
> but in that case it should something like
>
> if (list_entry_is_head(entry, head, member)) {
>     return with error;
> }
> do_somethin_with(entry);

Borrowing from c++, perhaps an explicit end should be used:

  if (list_entry_not_end(entry))
    do_somethin_with(entry)

It is modelled after c++ and the 'while(begin != end) {}' pattern.

Jeff
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
