Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A4433241373
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Aug 2020 00:56:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 51C94875BD;
	Mon, 10 Aug 2020 22:56:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8SzIS9figpip; Mon, 10 Aug 2020 22:56:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 95C4585540;
	Mon, 10 Aug 2020 22:56:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 543A11BF37B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Aug 2020 22:56:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4B7D92043C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Aug 2020 22:56:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WLdEeqSkXsQf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Aug 2020 22:56:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 21A7020361
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Aug 2020 22:56:43 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id j8so10697128ioe.9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Aug 2020 15:56:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=J2xTOjMXyQjf/ZHc+6INZVu6GF1n9Q6ZMbZ+D/qrKqo=;
 b=QnqF4F8CxYZi5Ceg5CmJ1KCQySJ7LwD8jQCOVAZ1elzQ2uLkEgZ+LffFmqK6YW2GP5
 f4BWWdIkV6x/sr4sVJH9k5UxmsUqnOzpgVmnl/bNmOT9FI5cvP7FRlvTfJjEpvqGFAPA
 2lF8aE7XYq8zjtA5USyJlKni+NE+qi1WFmY8EfRVcKKpef6k3fxhEvOVlz50wggeXYO4
 PqIx5uAzkv90dLtkrsAoQuwvrPrM7wQrcYXVGurOiFu4EM8U8B2hVtbtoV6TTYZg4JsD
 P5lfy6YUxVdaDj9+PE3oG6NFGZBwb6fODhVSEGP+TB2vPaGlZbn6BUVFWWTScxhj7DcA
 LhGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=J2xTOjMXyQjf/ZHc+6INZVu6GF1n9Q6ZMbZ+D/qrKqo=;
 b=hV56dwHFzH/ePcLhjJIgMXzrVl8S1tR+px7+Q+h7+H93EI8keVBQubtwGQSBryG93J
 1jJPQ/jRBhXloT2Mg8K5OpEjyfQPEKg4N5IjWOGWGqYxJuHMYIBs/tu7F10l2PFFj5it
 cXhy+xSoQMcqhrNq9qQZEeUFQvn5ukeUL1XnrbBQRimlVdKXE85qHVVOHRinAazgRnLY
 K3DEAu+JjM1OTwg8UVU3KOIOugUZA/B0Yk2oik6zKxa3A2HoentU6kolU2V0q/Uo16Xq
 rqTbMngMfMl6tME7qraoSotOgtwEb7eWHTlg0uVRDSvha5xnz3D8dkW26Kb58jefzwo2
 pWug==
X-Gm-Message-State: AOAM530JsCuBlUCJKvZH7g/lcd3KYJKWskuJjTDZN27JFxfK2yLo6gkd
 o5S6SIyLlpgxSEtMOdEmSJzrLk8uznak/jfW02k=
X-Google-Smtp-Source: ABdhPJy/gysactIQu8fy8cmzk5Kr1muHXnUGnZsA69avskwfOqIBAP0dGLt+0NKCOXvO76JtYvfEXFyB8pLXXUX/9jM=
X-Received: by 2002:a02:3311:: with SMTP id c17mr21738119jae.114.1597100202061; 
 Mon, 10 Aug 2020 15:56:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200810210832.34699-1-andre.guedes@intel.com>
 <20200810210832.34699-3-andre.guedes@intel.com>
In-Reply-To: <20200810210832.34699-3-andre.guedes@intel.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Mon, 10 Aug 2020 15:56:31 -0700
Message-ID: <CAKgT0UdvyU+xkESA5HaqS2acbXQMJDUGdchRM2J6QExEcjiSkQ@mail.gmail.com>
To: Andre Guedes <andre.guedes@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH 3/3] igc: Fix SRRCTL register setup
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
> SRRCTL register is set with 'one buffer descriptor' option (see DESCTYPE
> setting a few lines below) so setting BSIZEHEADER bits is pointless.
> They should be zero. Also, since there is no header buffer we should set
> the header buffer address field from the receive descriptor to zero for
> the sake of consistency.
>
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 0c481dc906ad..a5d825d44002 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -531,14 +531,11 @@ static void igc_configure_rx_ring(struct igc_adapter *adapter,
>         ring->next_to_clean = 0;
>         ring->next_to_use = 0;
>
> -       /* set descriptor configuration */
> -       srrctl = IGC_RX_HDR_LEN << IGC_SRRCTL_BSIZEHDRSIZE_SHIFT;
>         if (ring_uses_large_buffer(ring))
>                 srrctl |= IGC_RXBUFFER_3072 >> IGC_SRRCTL_BSIZEPKT_SHIFT;
>         else
>                 srrctl |= IGC_RXBUFFER_2048 >> IGC_SRRCTL_BSIZEPKT_SHIFT;
>         srrctl |= IGC_SRRCTL_DESCTYPE_ADV_ONEBUF;
> -
>         wr32(IGC_SRRCTL(reg_idx), srrctl);
>
>         rxdctl |= IGC_RX_PTHRESH;

Some of this was left in place to leave parity with the ixgbe driver
which was required to populate that field in order to enable RSC/LRO.

> @@ -1869,6 +1866,7 @@ static void igc_alloc_rx_buffers(struct igc_ring *rx_ring, u16 cleaned_count)
>                  * because each write-back erases this info.
>                  */
>                 rx_desc->read.pkt_addr = cpu_to_le64(bi->dma + bi->page_offset);
> +               rx_desc->read.hdr_addr = 0;
>
>                 rx_desc++;
>                 bi++;

If you are going to do this it would be better to replace the line
that is setting the length to zero instead of just adding this line.
That way you can avoid having to rewrite it. I only had bothered with
clearing the length field as it was a 32b field, however if you are
wanting to flush the full 64b then I would recommend doing it there
rather than here.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
