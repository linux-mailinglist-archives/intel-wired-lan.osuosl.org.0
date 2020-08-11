Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B6443241EC6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Aug 2020 19:00:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 66AC48623E;
	Tue, 11 Aug 2020 17:00:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VvhThQdn3Ncf; Tue, 11 Aug 2020 17:00:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B44098616A;
	Tue, 11 Aug 2020 17:00:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 822EB1BF2F4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Aug 2020 17:00:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7278E22920
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Aug 2020 17:00:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6I3V0Xd7c0OC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Aug 2020 17:00:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id D308A228EF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Aug 2020 17:00:01 +0000 (UTC)
IronPort-SDR: vIRwrgdBk7CV6Z2bJfFkeueAKZoSIddPInjK30o/GMtYj5vq3KKokOX9HWZ/CPZydd58Fhkwtk
 gTzA2PjJPXyw==
X-IronPort-AV: E=McAfee;i="6000,8403,9710"; a="215293942"
X-IronPort-AV: E=Sophos;i="5.76,301,1592895600"; d="scan'208";a="215293942"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2020 09:59:59 -0700
IronPort-SDR: C/0P4JSEplIf9n4QPPJhvy8rFOS4rBhBtO6Iv/AZn9TCJC+TvxkKJLI9KlqH+W3nPd4ODCMev9
 GXtnhzZCInAw==
X-IronPort-AV: E=Sophos;i="5.76,301,1592895600"; d="scan'208";a="294775353"
Received: from awandler-mobl.amr.corp.intel.com (HELO localhost)
 ([10.212.14.217])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2020 09:59:59 -0700
MIME-Version: 1.0
In-Reply-To: <CAKgT0Uf-nQ105jbAK-Ag0M=mn254YJX=A7DJ9PMWZFPAFunNUg@mail.gmail.com>
References: <20200810210832.34699-1-andre.guedes@intel.com>
 <20200810210832.34699-2-andre.guedes@intel.com>
 <CAKgT0Uf-nQ105jbAK-Ag0M=mn254YJX=A7DJ9PMWZFPAFunNUg@mail.gmail.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 11 Aug 2020 09:59:57 -0700
Message-ID: <159716519786.40621.1181546461816516018@awandler-mobl.amr.corp.intel.com>
User-Agent: alot/0.9
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

Hi Alexander,

Quoting Alexander Duyck (2020-08-10 18:25:12)
> > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > @@ -551,7 +551,6 @@ static void igc_configure_rx_ring(struct igc_adapter *adapter,
> >
> >         /* initialize Rx descriptor 0 */
> >         rx_desc = IGC_RX_DESC(ring, 0);
> > -       rx_desc->wb.upper.length = 0;
> >
> >         /* enable receive descriptor fetching */
> >         rxdctl |= IGC_RXDCTL_QUEUE_ENABLE;
> 
> This is initializing the ring for the first descriptor to 0. Without
> this line you break the driver. Without this you need to memset the
> entire descriptor ring to 0.
> 
> > @@ -1880,9 +1879,6 @@ static void igc_alloc_rx_buffers(struct igc_ring *rx_ring, u16 cleaned_count)
> >                         i -= rx_ring->count;
> >                 }
> >
> > -               /* clear the length for the next_to_use descriptor */
> > -               rx_desc->wb.upper.length = 0;
> > -
> >                 cleaned_count--;
> >         } while (cleaned_count);
> >
> 
> Same here. Without doing this you can potentially hang as you need to
> make sure the status bits are cleared before releasing a descriptor to
> the device.

Yes, after your first comment on patch 3/3 I realized this was bogus. Moving
the 'read.hdr_addr = 0' to this patch should fix it. That's why I thought you
were suggesting that.

> > @@ -1924,8 +1920,12 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
> >                 }
> >
> >                 rx_desc = IGC_RX_DESC(rx_ring, rx_ring->next_to_clean);
> > -               size = le16_to_cpu(rx_desc->wb.upper.length);
> > -               if (!size)
> > +
> > +               /* If we reached a descriptor with 'Descriptor Done' bit not
> > +                * set, it means we have handled all descriptors owned by
> > +                * software already so we should prematurely break the loop.
> > +                */
> > +               if (!igc_test_staterr(rx_desc, IGC_RXD_STAT_DD))
> >                         break;
> >
> >                 /* This memory barrier is needed to keep us from reading
> 
> Why add an extra check when you don't need to? This doesn't make
> sense. The DD bit tells you that the descriptor was written back but
> you can do the same thing by reading the size field.

I was using i40e and ice drivers as reference. If I'm reading it correctly,
they check the DD bit first (or similar) and then read the length information.
I don't see a strong reason besides making the code a bit more readable.

> > @@ -1934,6 +1934,8 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
> >                  */
> >                 dma_rmb();
> >
> > +               size = le16_to_cpu(rx_desc->wb.upper.length);
> > +
> >                 rx_buffer = igc_get_rx_buffer(rx_ring, size);
> >
> >                 /* retrieve a buffer from the ring */
> 
> This should be fine since the dma_rmb() will prevent the reads from
> being reordered. However it is really redundant. For a bit of history
> the reason for reading the size as the first field is because
> previously we had bugs on PowerPC where the length field was being
> read first, and then the DD bit. As such if the length is 0 before the
> writeback, and non-zero after then you can spare yourself some cycles
> by reading the size first and if it is non-zero then you know the
> descriptor has valid data to be read.

Thanks for the history context.

Cheers,
Andre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
