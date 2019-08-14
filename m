Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A04E68E0BE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2019 00:31:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5D964877FD;
	Wed, 14 Aug 2019 22:31:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y0IwPFeDPtPC; Wed, 14 Aug 2019 22:31:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 57917877E8;
	Wed, 14 Aug 2019 22:31:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B651A1BF28F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 15:00:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B11F98815F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 15:00:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bdipLPP0egZi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2019 15:00:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EF73588058
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 15:00:01 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id c7so10452788otp.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 08:00:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mqYnljBZWJ9CSU4xNm5KnWlCC0kHqslp4DIAsr09jT0=;
 b=Bp4LLyGrIdsRWVPZEAy7Y88iJcA2V/WKLgjXRWhwwUTTWTT2rfBu1i/Eavvr4H5HFY
 20G1Jy8DOxPO6vZhyRvw9P1FlsZd7DDLIjjOQwkDQmd9QBIIhqc3TSYtRTTUo5NCWQrj
 BgHJOfuP5CX7WE3i4vK68LjoxvpYacbchTVSUhxmuyc4p6NOsd46SwTZ74+z9na2GzpN
 YT6gpQt1ldXvTZV637WBhNsWz8YWU2cOrb1u9z/VXhnHCBhOiJzdCr+LgxcOnzV3wmkI
 kfRMHDPEopjCFpxIJjDd9v2vURHny479/bqtgKH7LKGe50SbmwOKcBVgxXRQxuNCCVCj
 8a+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mqYnljBZWJ9CSU4xNm5KnWlCC0kHqslp4DIAsr09jT0=;
 b=Wt3c3lKFKb9Bi8+2gfy0pWqNfPGv59OYV0WZgKYZuNPlp4q/I5r6GaqxnZ7J1+Wx4T
 uG+9SmQV7Hmmoh1M1ZobnltWnPGGysh66VQZVD28+4uqX5XCDw953dFjbkRmNcb4reIf
 HU8V3AXgwCIMCR1oIdTF/bmUuTGbkZ2RjqBJYsSRONDxyYj2/91MX/I/IxpCaV3XPgnq
 u/czhd/YVMjYtXUhmdEr/1DID7YZEZt+DtGKeM6N+KptnPyUKofoI8EOG/kwc+G7+GZF
 kjhYb9ziyMTJEuvo8CuzISp/Y4eDMOcEoa0zdCooFsSvTuWGbKKYcG6MRx4qPACxljD6
 AqgA==
X-Gm-Message-State: APjAAAU4l5hgo5iaBJ0YYFO0aeHcPyDXIADGyUfI+jP8A839/sBGQJLb
 7pl056Ev/krf5ylA3NLKCacvED9ZIthi+INHBpc=
X-Google-Smtp-Source: APXvYqyzISvYx9KXXQMPCWFPWDem0P2xD3aWYJvKHkMRJW+c9ClkjsSF8s7cuJgUoPd67VAQ1gn/OKcDsOQskRjX7kY=
X-Received: by 2002:a9d:5e19:: with SMTP id d25mr4093379oti.192.1565794801058; 
 Wed, 14 Aug 2019 08:00:01 -0700 (PDT)
MIME-Version: 1.0
References: <1565767643-4908-1-git-send-email-magnus.karlsson@intel.com>
 <1565767643-4908-4-git-send-email-magnus.karlsson@intel.com>
 <3B2C7C21-4AAC-4126-A31D-58A61D941709@gmail.com>
In-Reply-To: <3B2C7C21-4AAC-4126-A31D-58A61D941709@gmail.com>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Wed, 14 Aug 2019 16:59:49 +0200
Message-ID: <CAJ8uoz0Tnb=i-LkGqLU87be9BuYqxmu2pN1Mte0UEWA2+f8bTQ@mail.gmail.com>
To: Jonathan Lemon <jonathan.lemon@gmail.com>
X-Mailman-Approved-At: Wed, 14 Aug 2019 22:31:03 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 3/8] i40e: add support for
 AF_XDP need_wakeup feature
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
Cc: axboe@kernel.dk, Maxim Mikityanskiy <maximmi@mellanox.com>,
 Kevin Laatz <kevin.laatz@intel.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Maciej Fijalkowski <maciejromanfijalkowski@gmail.com>,
 Network Development <netdev@vger.kernel.org>, ciara.loftus@intel.com, "Zhang,
 Qi Z" <qi.z.zhang@intel.com>, Alexei Starovoitov <ast@kernel.org>,
 Ye Xiaolong <xiaolong.ye@intel.com>, ilias.apalodimas@linaro.org,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jesper Dangaard Brouer <brouer@redhat.com>, bruce.richardson@intel.com,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Aug 14, 2019 at 4:48 PM Jonathan Lemon <jonathan.lemon@gmail.com> wrote:
>
>
>
> On 14 Aug 2019, at 0:27, Magnus Karlsson wrote:
>
> > This patch adds support for the need_wakeup feature of AF_XDP. If the
> > application has told the kernel that it might sleep using the new bind
> > flag XDP_USE_NEED_WAKEUP, the driver will then set this flag if it has
> > no more buffers on the NIC Rx ring and yield to the application. For
> > Tx, it will set the flag if it has no outstanding Tx completion
> > interrupts and return to the application.
> >
> > Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
> > ---
> >  drivers/net/ethernet/intel/i40e/i40e_xsk.c | 18 ++++++++++++++++++
> >  1 file changed, 18 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > index d0ff5d8..42c9012 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > @@ -626,6 +626,15 @@ int i40e_clean_rx_irq_zc(struct i40e_ring
> > *rx_ring, int budget)
> >
> >       i40e_finalize_xdp_rx(rx_ring, xdp_xmit);
> >       i40e_update_rx_stats(rx_ring, total_rx_bytes, total_rx_packets);
> > +
> > +     if (xsk_umem_uses_need_wakeup(rx_ring->xsk_umem)) {
> > +             if (failure || rx_ring->next_to_clean == rx_ring->next_to_use)
> > +                     xsk_set_rx_need_wakeup(rx_ring->xsk_umem);
> > +             else
> > +                     xsk_clear_rx_need_wakeup(rx_ring->xsk_umem);
> > +
> > +             return (int)total_rx_packets;
> > +     }
> >       return failure ? budget : (int)total_rx_packets;
>
> Can you elaborate why we're not returning the total budget on failure
> for the wakeup case?

In the non need_wakeup case (the old behavior), when allocation fails
from the fill queue we want to retry right away basically busy
spinning on the fill queue until we find at least one entry and then
go on processing packets. Works well when the app and the driver are
on different cores, but a lousy strategy when they execute on the same
core. That is why in the need_wakeup feature case, we do not return
the total budget if there is a failure. We will just come back at a
later point in time from a syscall since the need_wakeup flag will
have been set and check the fill queue again. We do not want a
busy-spinning behavior in this case.

Thanks: Magnus
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
