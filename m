Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 043A8241F81
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Aug 2020 20:02:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 79F9B22E1C;
	Tue, 11 Aug 2020 18:02:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PzI2M9Rj2tSw; Tue, 11 Aug 2020 18:02:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 341A522DC7;
	Tue, 11 Aug 2020 18:02:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E13D91BF371
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Aug 2020 18:02:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DC9E98648E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Aug 2020 18:02:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vcGohPVOJeoa for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Aug 2020 18:02:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0A4C286451
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Aug 2020 18:02:45 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id q75so13788216iod.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Aug 2020 11:02:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=r0GFW7fbOmx/3sScKg1iiq6G3LumiTGDzgK882xQK+U=;
 b=mDu1mRTtlIK++qmYAJGip+y01dtaA89V+7KmyANjEpUJ+IjduzxOGnDto2Q7mQj7ME
 fx0WR58CD980byFm9P9YwOiONDtDVyuPYv+ynbzLY1p4PrM7ET4XmTradEBtimSBxP0q
 Mj97qLp5XVNTIpJY4UDMHzVZ6/g5x2sXEiehTvF5yG5lC5CWQdyxnxr4yVYazmeJjwgv
 BEBiWvLf+c+/6O1sI3MpD1jb3piZR9dabGjKVB6omudb0qhMJ+NGfw70Pk7SmzNN7xjb
 Mu9QheaiRHkj2pnXVbUrTN9/xUGkYr3uXoofSTRvz7aASfrVy0HAzYhxjy4okz7j4419
 JQLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r0GFW7fbOmx/3sScKg1iiq6G3LumiTGDzgK882xQK+U=;
 b=i+ncYdGEwftDh1II7GsKAcc2/TB9mPKXGqOnWR0iCIzF+TBDiGeXxFZQqQC9kmyEjQ
 wsvQT1b0Tqk50GaOiJQIqQ1FVe96Aolp1a/PXH8sbb5WnyRV2Yrq2ZYFa7soiYL0Lgzi
 QZw46HxQvQIdV7EWm/qmSYtWKM09lU2/3/8Y3ac2fIz1dM1BJy3e+wZyaEcxLeTxSTaO
 a/dLd6WzigAd3N/linkNJ95X7t4Iw0yun5mq56wEi3M8aIxzuXbR0XkvSI7+n35iVlp8
 Sd7iiBE5YSEDB9SdDWpbPL9SmZGKgG3l2g0ibTZiXb2vnAj/YwM00tU208RuaF6lEIym
 O9jg==
X-Gm-Message-State: AOAM5307ObRbdxXoYSri7N3C+vmL46B5ask6hdxeWKUzqFUeD8JyOkuC
 ue76ul39+c6bkhOnm3uk5j6n2ibDXPnZTsthiSgAdTjS
X-Google-Smtp-Source: ABdhPJyPhxup23lTzv+1v93qzXH8Vs25VCrQvb2Sv0MYThjowJIjtMxycxDOG7EXcFPdy1mhHhH2ELq9nP0h7m2ncPk=
X-Received: by 2002:a02:8384:: with SMTP id z4mr27598894jag.121.1597168963955; 
 Tue, 11 Aug 2020 11:02:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200810210832.34699-1-andre.guedes@intel.com>
 <20200810210832.34699-2-andre.guedes@intel.com>
 <CAKgT0Uf-nQ105jbAK-Ag0M=mn254YJX=A7DJ9PMWZFPAFunNUg@mail.gmail.com>
 <159716519786.40621.1181546461816516018@awandler-mobl.amr.corp.intel.com>
In-Reply-To: <159716519786.40621.1181546461816516018@awandler-mobl.amr.corp.intel.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 11 Aug 2020 11:02:32 -0700
Message-ID: <CAKgT0Uc1zs95OT6doaXo_cXHieAoimeBRhBczM-0cJg4-4Td-g@mail.gmail.com>
To: Andre Guedes <andre.guedes@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH 2/3] igc: Check descriptor's DD bit in
 igc_clean_rx_irq()
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

On Tue, Aug 11, 2020 at 10:00 AM Andre Guedes <andre.guedes@intel.com> wrote:
>
> Hi Alexander,
>
> Quoting Alexander Duyck (2020-08-10 18:25:12)
> > > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > > @@ -551,7 +551,6 @@ static void igc_configure_rx_ring(struct igc_adapter *adapter,
> > >
> > >         /* initialize Rx descriptor 0 */
> > >         rx_desc = IGC_RX_DESC(ring, 0);
> > > -       rx_desc->wb.upper.length = 0;
> > >
> > >         /* enable receive descriptor fetching */
> > >         rxdctl |= IGC_RXDCTL_QUEUE_ENABLE;
> >
> > This is initializing the ring for the first descriptor to 0. Without
> > this line you break the driver. Without this you need to memset the
> > entire descriptor ring to 0.
> >
> > > @@ -1880,9 +1879,6 @@ static void igc_alloc_rx_buffers(struct igc_ring *rx_ring, u16 cleaned_count)
> > >                         i -= rx_ring->count;
> > >                 }
> > >
> > > -               /* clear the length for the next_to_use descriptor */
> > > -               rx_desc->wb.upper.length = 0;
> > > -
> > >                 cleaned_count--;
> > >         } while (cleaned_count);
> > >
> >
> > Same here. Without doing this you can potentially hang as you need to
> > make sure the status bits are cleared before releasing a descriptor to
> > the device.
>
> Yes, after your first comment on patch 3/3 I realized this was bogus. Moving
> the 'read.hdr_addr = 0' to this patch should fix it. That's why I thought you
> were suggesting that.
>
> > > @@ -1924,8 +1920,12 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
> > >                 }
> > >
> > >                 rx_desc = IGC_RX_DESC(rx_ring, rx_ring->next_to_clean);
> > > -               size = le16_to_cpu(rx_desc->wb.upper.length);
> > > -               if (!size)
> > > +
> > > +               /* If we reached a descriptor with 'Descriptor Done' bit not
> > > +                * set, it means we have handled all descriptors owned by
> > > +                * software already so we should prematurely break the loop.
> > > +                */
> > > +               if (!igc_test_staterr(rx_desc, IGC_RXD_STAT_DD))
> > >                         break;
> > >
> > >                 /* This memory barrier is needed to keep us from reading
> >
> > Why add an extra check when you don't need to? This doesn't make
> > sense. The DD bit tells you that the descriptor was written back but
> > you can do the same thing by reading the size field.
>
> I was using i40e and ice drivers as reference. If I'm reading it correctly,
> they check the DD bit first (or similar) and then read the length information.
> I don't see a strong reason besides making the code a bit more readable.

The i40e driver does the same thing as igb and ixgbe. The ice driver
doesn't but in the case of that driver the pkt_len field resides in
the first qword which is the same as the pkt_addr so they overlap and
the same approach cannot be used.

> > > @@ -1934,6 +1934,8 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
> > >                  */
> > >                 dma_rmb();
> > >
> > > +               size = le16_to_cpu(rx_desc->wb.upper.length);
> > > +
> > >                 rx_buffer = igc_get_rx_buffer(rx_ring, size);
> > >
> > >                 /* retrieve a buffer from the ring */
> >
> > This should be fine since the dma_rmb() will prevent the reads from
> > being reordered. However it is really redundant. For a bit of history
> > the reason for reading the size as the first field is because
> > previously we had bugs on PowerPC where the length field was being
> > read first, and then the DD bit. As such if the length is 0 before the
> > writeback, and non-zero after then you can spare yourself some cycles
> > by reading the size first and if it is non-zero then you know the
> > descriptor has valid data to be read.
>
> Thanks for the history context.

No problem, just glad I saw this before it went too far down the path
of undoing the work that was done in the past.

Thanks.

- Alex
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
