Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D58E24148A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Aug 2020 03:25:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B329A85FC3;
	Tue, 11 Aug 2020 01:25:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lebPb7MqDXyT; Tue, 11 Aug 2020 01:25:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6354085FB6;
	Tue, 11 Aug 2020 01:25:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0D5E01BF275
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Aug 2020 01:25:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 92A0821FF8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Aug 2020 01:25:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gB7AgEgXkWIK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Aug 2020 01:25:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f193.google.com (mail-il1-f193.google.com
 [209.85.166.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 41393203B4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Aug 2020 01:25:24 +0000 (UTC)
Received: by mail-il1-f193.google.com with SMTP id l7so4777298ils.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Aug 2020 18:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xkrjGkBBUCMHcIGCMThL0l0cBtdcRNjnM33SRABkTZk=;
 b=TtjP0LFl84uEsEA1+zc5MN/7iihwLAoy7Rgt6hzDVXlV9YULPnDRQJjWdtHidn/Om8
 sfLzqLip+o0PkPHN7ehPtHWK5xf5z7fdLyvnh5q/Si/OwIKCfO5lv9mbbn+HV6aRtYij
 ysd4V0FtWV8lJ6k2acTEYx8EevxKT2XXa2bSCRRelF6Z61LY/e9W3Fv2q3KFufNS6OdF
 HyvpbV2jif3P8SBQ+y7PqspPfN1SbAF9v4iEfm4yujnOgMxGotLIqtdep0BjrY05FrbN
 +UNKO/O+zWAUmbENsFsI2IRwoXPg4SBk5DJFqze6yFlC06X4e/4hlnuwyefGls8bZH2D
 j+BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xkrjGkBBUCMHcIGCMThL0l0cBtdcRNjnM33SRABkTZk=;
 b=PaA+/S4hIfbNOkO6X3c481Pt4QTWjYy2gWAR4MczVjVPsyYY+zoy7aC5CSTgDQ5TDF
 DNeOEemr+zdSJ9VK9gfOiXcWN2upcT3DuJ+9tJNrvVasl6/V+/PLveCzB6Qk0PFuYgGC
 fSMOtkwUSFtT6gOeXJ1br/I0fomeruQDCoE8pj3bsPVVkb0ntFg3Nq6J/hrAvd97GNql
 FBjvOqKKzisM4xs11gxwdOck3vGaHVVcO2Ap4DIEar5G9KOeFApk/ijmlj8QGsstWyrz
 ZboMMOhXNq1+BC7Pp4ZCg3TFtRbsWh89z/MrUtEBopum1qRKu1+3IWky2YS3zmu65h1x
 0Rww==
X-Gm-Message-State: AOAM531AiI3kZ8Fc+/luVrNvCoMqbuvEThtxO/rXXgiB8pOJDhc8Za9E
 lrNlTrZsNLJy6l68ss5not30r+jlQlVk1VP5XiM=
X-Google-Smtp-Source: ABdhPJwnHViTKsCwl5wWzGZObawgRJtsZdhYk+ULrv+QSNFCcqbjPT2aytLldhxQBmSm0KYn6Vd8gT7yTSU5JWxpy2I=
X-Received: by 2002:a92:1a4c:: with SMTP id z12mr10750269ill.95.1597109123293; 
 Mon, 10 Aug 2020 18:25:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200810210832.34699-1-andre.guedes@intel.com>
 <20200810210832.34699-2-andre.guedes@intel.com>
In-Reply-To: <20200810210832.34699-2-andre.guedes@intel.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Mon, 10 Aug 2020 18:25:12 -0700
Message-ID: <CAKgT0Uf-nQ105jbAK-Ag0M=mn254YJX=A7DJ9PMWZFPAFunNUg@mail.gmail.com>
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

On Mon, Aug 10, 2020 at 2:08 PM Andre Guedes <andre.guedes@intel.com> wrote:
>
> I225 advanced receive descriptor provides the Descriptor Done (DD) bit
> which indicates hardware is done with that receive descriptor and
> software should handle it.
>
> This patch fixes igc_clean_rx_irq() so we check that bit to determine if
> we are done handling incoming packets instead of checking the packet
> length information. It also gets rid of rx_desc->wb.upper.length
> assignments spread through the code required to make the previous
> approach to work.
>
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>

I do not agree with this patch. The patch itself will break a number of things.

> ---
>  drivers/net/ethernet/intel/igc/igc_defines.h |  1 +
>  drivers/net/ethernet/intel/igc/igc_main.c    | 14 ++++++++------
>  2 files changed, 9 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index 21695476b8a5..43a7c7944804 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -316,6 +316,7 @@
>  #define IGC_SRRCTL_TIMER0SEL(timer)    (((timer) & 0x3) << 17)
>
>  /* Receive Descriptor bit definitions */
> +#define IGC_RXD_STAT_DD                0x01    /* Descriptor Done */
>  #define IGC_RXD_STAT_EOP       0x02    /* End of Packet */
>  #define IGC_RXD_STAT_IXSM      0x04    /* Ignore checksum */
>  #define IGC_RXD_STAT_UDPCS     0x10    /* UDP xsum calculated */
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 298f408519f4..0c481dc906ad 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -551,7 +551,6 @@ static void igc_configure_rx_ring(struct igc_adapter *adapter,
>
>         /* initialize Rx descriptor 0 */
>         rx_desc = IGC_RX_DESC(ring, 0);
> -       rx_desc->wb.upper.length = 0;
>
>         /* enable receive descriptor fetching */
>         rxdctl |= IGC_RXDCTL_QUEUE_ENABLE;

This is initializing the ring for the first descriptor to 0. Without
this line you break the driver. Without this you need to memset the
entire descriptor ring to 0.

> @@ -1880,9 +1879,6 @@ static void igc_alloc_rx_buffers(struct igc_ring *rx_ring, u16 cleaned_count)
>                         i -= rx_ring->count;
>                 }
>
> -               /* clear the length for the next_to_use descriptor */
> -               rx_desc->wb.upper.length = 0;
> -
>                 cleaned_count--;
>         } while (cleaned_count);
>

Same here. Without doing this you can potentially hang as you need to
make sure the status bits are cleared before releasing a descriptor to
the device.

> @@ -1924,8 +1920,12 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>                 }
>
>                 rx_desc = IGC_RX_DESC(rx_ring, rx_ring->next_to_clean);
> -               size = le16_to_cpu(rx_desc->wb.upper.length);
> -               if (!size)
> +
> +               /* If we reached a descriptor with 'Descriptor Done' bit not
> +                * set, it means we have handled all descriptors owned by
> +                * software already so we should prematurely break the loop.
> +                */
> +               if (!igc_test_staterr(rx_desc, IGC_RXD_STAT_DD))
>                         break;
>
>                 /* This memory barrier is needed to keep us from reading

Why add an extra check when you don't need to? This doesn't make
sense. The DD bit tells you that the descriptor was written back but
you can do the same thing by reading the size field.

> @@ -1934,6 +1934,8 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>                  */
>                 dma_rmb();
>
> +               size = le16_to_cpu(rx_desc->wb.upper.length);
> +
>                 rx_buffer = igc_get_rx_buffer(rx_ring, size);
>
>                 /* retrieve a buffer from the ring */

This should be fine since the dma_rmb() will prevent the reads from
being reordered. However it is really redundant. For a bit of history
the reason for reading the size as the first field is because
previously we had bugs on PowerPC where the length field was being
read first, and then the DD bit. As such if the length is 0 before the
writeback, and non-zero after then you can spare yourself some cycles
by reading the size first and if it is non-zero then you know the
descriptor has valid data to be read.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
