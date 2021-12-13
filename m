Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 92ACB472CA2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Dec 2021 13:53:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA6B860719;
	Mon, 13 Dec 2021 12:53:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bsqyQw7r6QZC; Mon, 13 Dec 2021 12:53:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9F9A1607B9;
	Mon, 13 Dec 2021 12:53:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8BE3E1BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 12:53:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6B49C40127
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 12:53:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lq5q0zH0pyWB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Dec 2021 12:53:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com
 [IPv6:2607:f8b0:4864:20::430])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9167B40108
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 12:53:47 +0000 (UTC)
Received: by mail-pf1-x430.google.com with SMTP id k64so14826802pfd.11
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 04:53:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3eVyFTofHhkRZL1f50MEiI0/BxkuxDXt6Um48izaiac=;
 b=WRb5IEr4YRdAmGwDFPiyghWOVS3uIFA2W7Xe+l/P1ZujaReqM6gW8tODGqeTE+XsYP
 CrwqjDVY6NqG9cEiteiZv95TUm30y3Ecy3UZo1MJoz5+/WeCsd5I/UDkdaY2JaWzpoNm
 D2hIZyfFzuqIm9hqNwTzvOocsF0cEsBH+Uv4TQTWc2Yr7k+doDStvYBYqdAEHPkleIag
 +hwxys4BGBMvnJFsO4nb8OIBXO7VEJ5v7J8TBc45wc/bTHUPdDgGhGsKk3aK0wPAZSx4
 5BXCzIZj67kJwczPws0Cpx2NS7TorEbLlBWRNkWilBmuUDO9OyZXcKiFgFKZaSvt/KkX
 Wkow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3eVyFTofHhkRZL1f50MEiI0/BxkuxDXt6Um48izaiac=;
 b=jeuyqzTYCCp/lInrrXG0lq9LvObw/StRM/fJCb5QHHaqUY33ZyhqezDNILykv0AwEA
 f2IeM9iKj+9SESnkZQGJ0+I7uTBf6dHOSSDOHmzzq3mBlMDKqkJCD66By7v60C/mmCs6
 hJCSLs4/7HSW9OqIQGcGB1Bx4txaqqdtt0J33xNBOF+OW5hrKZhd9ftWdUYPonxrcT0Q
 rpkmBOsZIoirgUpPhfeoONsqm0hw9qmdCgjaR62FwdvS5tsgVqsOIsVZ2n55kQ/9DsbY
 3i0pjJPX2fdGzJtjvsjVLJP+Ps0a6ju9Kvi1pRq88RbnEV8A+ubqNnPV2EPWOqwNyUS1
 ctqQ==
X-Gm-Message-State: AOAM533aYmBwh5rv19D8mEq4koCbPUyiWBQZcTOSZXJ0yml8Zfp1dfEj
 H93p7vG2+nXwx4znMAysgSu2xuPTRm8BFgbAs2MxpLFR8ZNkHySF
X-Google-Smtp-Source: ABdhPJywtmLx+dhTX7y+sXZXUTwz7knyARTRG1wsx9uT+/dYHeTpqGKR9XR+FbUgjiJo3GhAnx6HuHguzqgyoD4JDqI=
X-Received: by 2002:aa7:8153:0:b0:4a8:2c13:dab7 with SMTP id
 d19-20020aa78153000000b004a82c13dab7mr33134068pfn.51.1639400026894; Mon, 13
 Dec 2021 04:53:46 -0800 (PST)
MIME-Version: 1.0
References: <20211210145941.5865-1-maciej.fijalkowski@intel.com>
 <20211210145941.5865-4-maciej.fijalkowski@intel.com>
 <20211210223746.2711444-1-alexandr.lobakin@intel.com>
 <YbcqjdVw8RfkX62Y@boxer>
In-Reply-To: <YbcqjdVw8RfkX62Y@boxer>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Mon, 13 Dec 2021 13:53:35 +0100
Message-ID: <CAJ8uoz2LH9+bdK7f3CfFJmhY-M66GVZTc7mpOfo878jFdHG=yg@mail.gmail.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH intel-net 3/5] ice: xsk: do not clear
 status_error0 for ntu + nb_buffs descriptor
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
Cc: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Dec 13, 2021 at 12:12 PM Maciej Fijalkowski
<maciej.fijalkowski@intel.com> wrote:
>
> On Fri, Dec 10, 2021 at 11:37:46PM +0100, Alexander Lobakin wrote:
> > From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > Date: Fri, 10 Dec 2021 15:59:39 +0100
> >
> > > The descriptor that ntu is pointing at when we exit
> > > ice_alloc_rx_bufs_zc() should not have its corresponding DD bit cleared
> > > as descriptor is not allocated in there and it is not valid for HW
> > > usage.
> > >
> > > The allocation routine at the entry will fill the descriptor that ntu
> > > points to after it was set to ntu + nb_buffs on previous call.
> > >
> > > Even the spec says:
> > > "The tail pointer should be set to one descriptor beyond the last empty
> > > descriptor in host descriptor ring."
> > >
> > > Therefore, step away from clearing the status_error0 on ntu + nb_buffs
> > > descriptor.
> > >
> > > Fixes: db804cfc21e9 ("ice: Use the xsk batched rx allocation interface")
> > > Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > > ---
> > >  drivers/net/ethernet/intel/ice/ice_xsk.c | 7 +------
> > >  1 file changed, 1 insertion(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
> > > index 5cb61955c1f3..874fce9fa1c3 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
> > > @@ -394,14 +394,9 @@ bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
> > >     }
> > >
> > >     ntu += nb_buffs;
> > > -   if (ntu == rx_ring->count) {
> > > -           rx_desc = ICE_RX_DESC(rx_ring, 0);
> > > -           xdp = rx_ring->xdp_buf;
> > > +   if (ntu == rx_ring->count)
> >
> > Maybe use unlikely() here while at it? 1/512 (depending on ring
> > size) chance is low enough.
>
> This would make sense to me if we would have this check inside some loop
> going over the buffers that we received from xsk pool.
>
> I tried such approach probably on Tx side and Magnus said that unlikely
> will move this code to the cold section at the end of the text section.

Not guaranteed but can be put in a cold section which will induce a
cache miss most of the time. Not having an unlikely statement might
mean no cache miss and better performance. I had an unlikely statement
in the SW ring code for a simple wrap case like this and it did not
pay off. It performed better without it as it was hit often enough so
I eventually removed it in a follow up patch. For something small like
this, it is probably not worth the unlikely. I see unlikely as
something you use when it is an error, fault, initialization or
something else that happens once or less.

> >
> > >             ntu = 0;
> > > -   }
> > >
> > > -   /* clear the status bits for the next_to_use descriptor */
> > > -   rx_desc->wb.status_error0 = 0;
> > >     ice_release_rx_desc(rx_ring, ntu);
> >
> > This interferes with my patch in next-queue ([0]) (well, supersedes
> > it to be precise).
> > Tony, what would be better to do with it, just drop mine or correct
> > this one (it would become an oneliner removing status_error0
> > assignment then)?
>
> Oops, sorry. This set should go to net though, not net-next, but I can
> base it on top of your patch.
>
> >
> > >
> > >     return count == nb_buffs;
> > > --
> > > 2.33.1
> >
> > [0] https://lore.kernel.org/netdev/20211130183649.1166842-2-alexandr.lobakin@intel.com
> >
> > Al
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
