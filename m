Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A468680556
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Jan 2023 06:02:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5B0F381430;
	Mon, 30 Jan 2023 05:02:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5B0F381430
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675054963;
	bh=i45f6caGDuNCEfRoE0hsq1uVfPioiDWcGpW3/0+sq90=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BW9jQ2fXbTFFnkOvbBZyZpkmvXZAsHYH29fTqvbo0FvD0YO0u4bJJUluJXUMyoLPJ
	 uNnvtOtYlvmHAa9cGuax8zAHKudr/kJPgZrQGJTxglOBpgpv/1173CDwgNXe4ve0ON
	 kH7KoAZgSkVLi1/2BoHOMVdo7tOVkLwgcaW8awTAIqBbq1129l3oyyjpGQDVeHO6jO
	 7wuu4dgI1sxZjI2G3ElBXIILInkNg+XmtKkpHkkXXBjOS2BGFvDowve5uyJ2uL3WPx
	 wqaYv7rrOczCXOMi/gxit6aMfvrad9v8OQcqTFvD/hrCjhuXwgumaWs563E507f9W6
	 4RGxoEbLoAp3Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iygEEOF9zZkK; Mon, 30 Jan 2023 05:02:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 34639813F2;
	Mon, 30 Jan 2023 05:02:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34639813F2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CE3B51BF333
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 05:02:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B10204017A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 05:02:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B10204017A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5LA82KrRXpIr for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Jan 2023 05:02:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AD2AB400DC
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AD2AB400DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 05:02:35 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id bk15so28376076ejb.9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Jan 2023 21:02:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ucvWXBNw5kZZoiktcuCaAE6zb+7r9nERTMtKuxTV85U=;
 b=RNrfSTf0NoUpG879rEHgEMi5VdvvlFL+7H/b4/KjAqfNR4H0VZE+Drk0eBEOSkUQba
 4tUm7AstNFHO0V1uvnkn/Uyx4HFmktgrIY4Px6/dRxe8Mny9ZiwXTpieViOS6qAdFKrj
 IMmswrA7dvJQFjZHVVCHSnbHAWmYVblTiISCN6COrHWooWvI9rMF6S9t4SqyYPWS+DF4
 DJI0wnBPBkp9jim4JkdaPJy1rBlE/nuflC6l7Mg0vnMqE2LmR+/PDb5X9YfCisU2Bxi8
 2JecqFl1/DL3AMKgpkgZuhY4O3pNtdLLRISDXXy7UqPl07O+XPTPXNEbmFq+WQPyddTD
 zCOQ==
X-Gm-Message-State: AO0yUKXSh5ncBLz4k9I0oo6Wi5kqjRw2IG0qfg0PoRZ95Qo4lmuxUYLF
 4pqJiVvWx21Z0aOayzYVUDOTc6ZiAKhkUXuYbxY=
X-Google-Smtp-Source: AK7set/1bWOi0vgWnv7nXRS/B/6XwRAnvIb8kktwR+a43Jhs0iJD4i7oaqA8TbVkRLiHuwht+0TDBSTzypeQm5X+CNc=
X-Received: by 2002:a17:906:1304:b0:888:f761:87aa with SMTP id
 w4-20020a170906130400b00888f76187aamr474904ejb.163.1675054953659; Sun, 29 Jan
 2023 21:02:33 -0800 (PST)
MIME-Version: 1.0
References: <20230127122018.2839-1-kerneljasonxing@gmail.com>
 <CAL+tcoAci+fwk6-JsTL7+yOiom08XSpc9Y5xbTZZ=WWRjYvnuw@mail.gmail.com>
 <CAL+tcoCeBtiOeemuhQsTK8pnNLjmRRK7ukXLsiPt3YkOrJbYYA@mail.gmail.com>
In-Reply-To: <CAL+tcoCeBtiOeemuhQsTK8pnNLjmRRK7ukXLsiPt3YkOrJbYYA@mail.gmail.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Mon, 30 Jan 2023 13:01:57 +0800
Message-ID: <CAL+tcoCTH_yADMeQvpAV5FCgg+hEEW2NQNee7bHq92+NtN6oyg@mail.gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, 
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, 
 richardcochran@gmail.com, ast@kernel.org, daniel@iogearbox.net, 
 hawk@kernel.org, john.fastabend@gmail.com, alexandr.lobakin@intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=ucvWXBNw5kZZoiktcuCaAE6zb+7r9nERTMtKuxTV85U=;
 b=FEtru0v7RaSXnV9O2jjVqHEyMoh3l2tOTGp1y1do9DYptfK2wWOHsxsHcOg3RaGmUC
 zsUCc3AYS58TiaXbZW6pJ1iMi5a4ra3gWBBrEQdzohDDZVFt13C9VBcMtmONJR3Cl25i
 RcY/Godi/dgwpV77F8OMdMT/1xml25ORFuVdf9ZrN3qWCW6uaCvaENMDbrA98/UsRs4X
 iXD4YcEkg4h0sebasXWMpB5iuP1+0uLueR8kvGRkRbv7CpFo+C2MWEnjkFI+eUK1Icbd
 8XKy+FelA6VcjNDXZJU8T5Ov5Ig1hHG/lghR23oxjt3n5/WvJhEuXkGYp1GpSUC56esV
 CyOg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=FEtru0v7
Subject: Re: [Intel-wired-lan] [PATCH v2 net] ixgbe: allow to increase MTU
 to some extent with XDP enabled
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jan 27, 2023 at 11:08 PM Jason Xing <kerneljasonxing@gmail.com> wrote:
>
> On Fri, Jan 27, 2023 at 10:54 PM Jason Xing <kerneljasonxing@gmail.com> wrote:
> >
> > My bad. It's not that right. Please ignore the v2 patch. I need some
> > time to do more studies and tests on this part.
> >
>
> In the meantime, any suggestions and help are appreciated :) I'm still
> working on it.
>

Dear maintainers,  after several tests I did during this time as much
as possible,  I couldn't find anything wrong though I am not that
familiar with the whole ixgbe code. I decided to 'reopen' this patch
v2. Please help me review the current patch.

Thanks,
Jason


>
> > Thanks,
> > Jason
> >
> > On Fri, Jan 27, 2023 at 8:20 PM Jason Xing <kerneljasonxing@gmail.com> wrote:
> > >
> > > From: Jason Xing <kernelxing@tencent.com>
> > >
> > > I encountered one case where I cannot increase the MTU size directly
> > > from 1500 to 2000 with XDP enabled if the server is equipped with
> > > IXGBE card, which happened on thousands of servers in production
> > > environment.
> > >
> > > This patch follows the behavior of changing MTU as i40e/ice does.
> > >
> > > Referrences:
> > > commit 23b44513c3e6f ("ice: allow 3k MTU for XDP")
> > > commit 0c8493d90b6bb ("i40e: add XDP support for pass and drop actions")
> > >
> > > Link: https://lore.kernel.org/lkml/20230121085521.9566-1-kerneljasonxing@gmail.com/
> > > Signed-off-by: Jason Xing <kernelxing@tencent.com>
> > > ---
> > > v2:
> > > 1) change the commit message.
> > > 2) modify the logic when changing MTU size suggested by Maciej and Alexander.
> > > ---
> > >  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 25 ++++++++++++-------
> > >  1 file changed, 16 insertions(+), 9 deletions(-)
> > >
> > > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > > index ab8370c413f3..2c1b6eb60436 100644
> > > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > > @@ -6777,6 +6777,18 @@ static void ixgbe_free_all_rx_resources(struct ixgbe_adapter *adapter)
> > >                         ixgbe_free_rx_resources(adapter->rx_ring[i]);
> > >  }
> > >
> > > +/**
> > > + * ixgbe_max_xdp_frame_size - returns the maximum allowed frame size for XDP
> > > + * @adapter - device handle, pointer to adapter
> > > + */
> > > +static int ixgbe_max_xdp_frame_size(struct ixgbe_adapter *adapter)
> > > +{
> > > +       if (PAGE_SIZE >= 8192 || adapter->flags2 & IXGBE_FLAG2_RX_LEGACY)
> > > +               return IXGBE_RXBUFFER_2K;
> > > +       else
> > > +               return IXGBE_RXBUFFER_3K;
> > > +}
> > > +
> > >  /**
> > >   * ixgbe_change_mtu - Change the Maximum Transfer Unit
> > >   * @netdev: network interface device structure
> > > @@ -6788,18 +6800,13 @@ static int ixgbe_change_mtu(struct net_device *netdev, int new_mtu)
> > >  {
> > >         struct ixgbe_adapter *adapter = netdev_priv(netdev);
> > >
> > > -       if (adapter->xdp_prog) {
> > > +       if (ixgbe_enabled_xdp_adapter(adapter)) {
> > >                 int new_frame_size = new_mtu + ETH_HLEN + ETH_FCS_LEN +
> > >                                      VLAN_HLEN;
> > > -               int i;
> > > -
> > > -               for (i = 0; i < adapter->num_rx_queues; i++) {
> > > -                       struct ixgbe_ring *ring = adapter->rx_ring[i];
> > >
> > > -                       if (new_frame_size > ixgbe_rx_bufsz(ring)) {
> > > -                               e_warn(probe, "Requested MTU size is not supported with XDP\n");
> > > -                               return -EINVAL;
> > > -                       }
> > > +               if (new_frame_size > ixgbe_max_xdp_frame_size(adapter)) {
> > > +                       e_warn(probe, "Requested MTU size is not supported with XDP\n");
> > > +                       return -EINVAL;
> > >                 }
> > >         }
> > >
> > > --
> > > 2.37.3
> > >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
