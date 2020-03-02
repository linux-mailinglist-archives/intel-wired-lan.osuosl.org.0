Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB91175EA2
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Mar 2020 16:44:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A7FF684B0F;
	Mon,  2 Mar 2020 15:44:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FjCYXSXfJeSV; Mon,  2 Mar 2020 15:44:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DF6EB85BCA;
	Mon,  2 Mar 2020 15:44:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2C4B11BF30F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2020 15:44:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2833F85E5E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2020 15:44:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SwqBZri8uFZQ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Mar 2020 15:44:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f195.google.com (mail-il1-f195.google.com
 [209.85.166.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F1EB285C9D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2020 15:44:45 +0000 (UTC)
Received: by mail-il1-f195.google.com with SMTP id p8so9695411iln.12
 for <intel-wired-lan@lists.osuosl.org>; Mon, 02 Mar 2020 07:44:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+W+ZJNRUa5MT0Cx78b4oMrqrkHSpySREzOkn09S9aKw=;
 b=AcQrCXfWAYrEEoSPm7Aucgtg90CdpbnhPyAMwEZ9MEb06Tef2T2nIuHXCEqrdEmMUF
 srXEoZVbHWedZShfEcw3IDLXMaoOzYo3OrNvBrjduxap1VunMpzjqvaVIGbMLDG4fKwg
 JflMpXT4MaLHHYSsXhdcAlGtjLu5/w3Y5vIgH28WEq3m1hCByYDBrwr2f0RQtI0MORUS
 bE1wa1JeYWxnqsGUW2aTNv7TXmHdI/gYFiV4zHQ5SG586lpcZMdr5gagS+9QIW4hDC9M
 qHkOhV7DxpwBKUvrucEyE3KOFwGYBV4MRgA91SfiusTwmXcRO4DxSxuCENrlC3M5WvSX
 z6TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+W+ZJNRUa5MT0Cx78b4oMrqrkHSpySREzOkn09S9aKw=;
 b=Y7sx0VWCn26383RRCpdwkr7ihVkKTGajFM7ROoXC6HkRhg9sx+DmKJnfVmBGb7GuTL
 EHgXzHvjHrjP6bz/7gRyZQNt7uDnqoONZKlCo1CQje3ijVYKWKDQSnAPx1uSL7TL9o1j
 S2KpWTPbCbBtXAKuqdRdcZDdzuaJ318vhdUDlj9N6clVrOO+FbrurF0cYHAeJMKUcSqS
 yPksFYV8AD29PSBAFEnhHn32pZGNowj2jufR5YL/PUDol+hfY9rZ3UhTlm2mydwexFX9
 ki7ju/S2LX/en9uBn4JI8HbVvwxBwyJPaIQZIVp63c/VAUcWCPOUgbr/trsR0qG/hZeq
 fyNg==
X-Gm-Message-State: ANhLgQ37BPWaHtaEzI/q1M1HpfLZ9As+/qx1Qm2ZVgFpmy74ne0+zBDO
 Hro540sHWYkU+jBEMEYzdrA1Dgd5PLyA4tiDqEk=
X-Google-Smtp-Source: ADFU+vvo7rWY5cT+JXiOqpSsgVdIP+b7VK1Izn6JIE7qkC/NHI/ksd0djLD0eaaKzNX0NZM8MBTENcXjYZM7uo8ue0E=
X-Received: by 2002:a92:d608:: with SMTP id w8mr212846ilm.95.1583163885137;
 Mon, 02 Mar 2020 07:44:45 -0800 (PST)
MIME-Version: 1.0
References: <158289240414.1877500.8426359194461700361.stgit@firesoul>
 <CAKgT0Udj=BRNh3=TkNk5XyY5zbXtY_3kw+VORspUZLhvUFDN+w@mail.gmail.com>
 <20200302100059.58763d59@carbon>
In-Reply-To: <20200302100059.58763d59@carbon>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Mon, 2 Mar 2020 07:44:34 -0800
Message-ID: <CAKgT0Ueqg-HohhtoH4FaBGugqBY3M5+G0reKBr097LSJBhCBtg@mail.gmail.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>
Subject: Re: [Intel-wired-lan] [net-next PATCH] ixgbe: fix XDP redirect on
 archs with PAGE_SIZE above 4K
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
Cc: "Jubran, Samih" <sameehj@amazon.com>, Netdev <netdev@vger.kernel.org>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Mar 2, 2020 at 1:01 AM Jesper Dangaard Brouer <brouer@redhat.com> wrote:
>
> On Fri, 28 Feb 2020 10:53:58 -0800
> Alexander Duyck <alexander.duyck@gmail.com> wrote:
>
> > On Fri, Feb 28, 2020 at 4:20 AM Jesper Dangaard Brouer
> > <brouer@redhat.com> wrote:
> > >
> > > The ixgbe driver have another memory model when compiled on archs with
> > > PAGE_SIZE above 4096 bytes. In this mode it doesn't split the page in
> > > two halves, but instead increment rx_buffer->page_offset by truesize of
> > > packet (which include headroom and tailroom for skb_shared_info).
> > >
> > > This is done correctly in ixgbe_build_skb(), but in ixgbe_rx_buffer_flip
> > > which is currently only called on XDP_TX and XDP_REDIRECT, it forgets
> > > to add the tailroom for skb_shared_info. This breaks XDP_REDIRECT, for
> > > veth and cpumap.  Fix by adding size of skb_shared_info tailroom.
> > >
> > > Fixes: 6453073987ba ("ixgbe: add initial support for xdp redirect")
> > > Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
> >
> > This approach to fixing it seems problematic at best. From what I can
> > tell there wasn't an issue until this frame gets up into the
> > XDP_REDIRECT path. In the case of XDP_TX the ixgbe driver has not need
> > for the extra shared info space. I assume you need this because you
> > are converting the buffer to an skbuff.
>
> Except for XDP_TX the extra space is needed (and for our planned
> multi-frame XDP it will also be needed for XDP_TX). The XDP_PASS case
> does the correct thing in ixgbe_build_skb(). The XDP_REDIRECT also
> depend on this extra space for skb_shared_info, as cpumap and veth
> creates SKBs based on xdp_frame, which I want to generalize further[1].

The thing is in the XDP_PASS case the driver still owns that memory
region so it isn't an issue. It is only the XDP_REDIRECT case that is
the problem since it is trying to use memory that was not necessarily
allocated to it.

> > The question I have is exactly how is this failing, are we talking
> > about it resulting in the region being shared with the next frame, or
> > is it being correctly identified that there is no tailroom and the
> > frame is dropped? If we are seeing memory corruption due to it sharing
> > the memory I would say we have a problem with the design for
>
> (Sorry for this rant:)
> The design was violated when ixgbe added XDP-support, as it complicated
> the XDP-memory model, with it's split-page approach, and now I realize
> that is even more complicated, with this bigger PAGE_SIZE approach.
> One of the XDP performance advantage comes from a simplified memory
> model.  I'm very tempted to disable XDP on this driver for PAGE_SIZE
> above 4096 bytes.

This is at the heard of the problem with the XDP design. Assuming an
XDP buffer is always one page is problematic, especially on systems
where the page size is 64K. That is why most drivers doe the page
reuse trick for these types of pages.

> > XDP_REDIRECT since it is assuming things about the buffer that may or
> > may not be true. At a minimum we are going to need to guarantee that
> > all XDP devices going forward provide this padding on the end of the
> > frame which has not been anything that was communicated up until now.
>
> First of all, I'm working on patches for "data_hard_end" such that we
> can reliably establish the size of the frame / memory, and there by
> know the size of the padding / tailroom. (Which is why I discovered
> this bug).

This is something that I believe is a must have if you are going to
allow for XDP programs to push data into the tail section of the
buffer.

> Second, it have been communicated since day-1, that XDP drivers need to
> use build_skb(), and we have converted every XDP driver to build_skb
> before adding XDP support. Thus, this tailroom requirement should not
> be a surprise.

Most drivers were already converted over to build_skb before XDP was
really introduced. They weren't converting over because of XDP, or at
least that is the case with the Intel drivers.

What I find disconcerting about this change is that you are pushing
requirements down onto the drivers and I don't see these requirements
in writing anywhere. One thing that would be useful would be to add
documentation and also add comments in the driver code so that we
don't end up with somebody coming through and trying to free back up
the unused memory.

> > I would argue that we should not be using build_skb on XDP buffers
> > since it is going to lead to similar issues in the future. It would be
> > much better to simply add the XDP frame as a fragment and to pull the
> > headers as we have done in the past.
>
> No, absolutely not. Again this will complicate and slowdown SKB
> creation (as you know, this would require allocating a new memory area
> for skb_shared_info (+ the SKB), while with the tailroom provided anyhow
> for build_skb, we can avoid this extra allocation).

In the case of redirect I would say that the problem is you don't have
any guarantee that you have enough tailroom to make the change you are
wanting to. Until you have the data_hard_end implemented you run the
risk of corrupting memory and creating more issues like this in the
future if you are using build_skb assuming that you have enough
tailroom on the frame. As it stands you will probably still need some
sort of fall-back solution in cases where something added data to the
tail of the frame and cut into the tailroom.

> > > ---
> > >  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |    3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > > b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c index
> > > 718931d951bc..ea6834bae04c 100644 ---
> > > a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c +++
> > > b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c @@ -2254,7 +2254,8
> > > @@ static void ixgbe_rx_buffer_flip(struct ixgbe_ring *rx_ring,
> > > rx_buffer->page_offset ^= truesize; #else
> > >         unsigned int truesize = ring_uses_build_skb(rx_ring) ?
> > > -                               SKB_DATA_ALIGN(IXGBE_SKB_PAD + size) :
> > > +                               SKB_DATA_ALIGN(IXGBE_SKB_PAD + size) +
> > > +                               SKB_DATA_ALIGN(sizeof(struct skb_shared_info)) :
> > >                                 SKB_DATA_ALIGN(size);
> > >
> > >         rx_buffer->page_offset += truesize;

The change itself is fine. It is just reserving some extra space. I
just feel like it isn't the complete solution. You are basically
changing the definition for the truesize without putting in place why
it should be that value. What I would really like to see put in place
is some documentation as to why this is being done added to the code
since most of us are not experts on the requirements for XDP_REDIRECT.

>
> [1] http://people.netfilter.org/hawk/presentations/KernelRecipes2019/xdp-netstack-concert.pdf

Really the big thing I would like to see solved in XDP is the jumbo
frames problem since it ties back into all of this. We should have a
way to express frames larger than 4K via some sort of multi-buffer
setup. Once we have that then I would think that XDP is finally
starting to mature.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
