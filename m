Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D212D682273
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Jan 2023 04:00:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BAACC605EA;
	Tue, 31 Jan 2023 03:00:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BAACC605EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675134050;
	bh=iiSBkhiSWozFaz4MoURSsoIEpC5IYixTv7F705vLw0A=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1pCr+xtnr+8zgUNOJQk6A1vFBrP7IaptkLplR1rQPoyWkSiZ7xhhYM6D1PWLVTmvw
	 ceY+FzBJIP1w247d+78SMHMbHBxoBFN0+41UX8577rLwqx/03UW7WcmK2+b0kqGI4s
	 yroNIjH3w4iL11n56XquD4i/vC1Dpo3fd0kQzGgb9Wnw2WoUraK4MiPk+gSe1UKz7S
	 qAam+47rn7cPrTRO1x2ubapeyiPHPbXn8OgD5a4bh0REdEgauQhyLYW05eap1FOLwv
	 d1zF58riGZH7CKzf1bErlidA3EbO2iBzgQrh3nZkqBdO2daWsm0C9ZnYYga/m+SmYJ
	 HoYpn8CtKI+Lw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4i9y-Tq4CpcM; Tue, 31 Jan 2023 03:00:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 86B9B605E9;
	Tue, 31 Jan 2023 03:00:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 86B9B605E9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2ACEF1BF3C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 03:00:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1048E400B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 03:00:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1048E400B8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m3_nuSyf-Xy0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Jan 2023 03:00:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DD93E400AF
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DD93E400AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 03:00:43 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id gr7so13160260ejb.5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 19:00:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=KB1gOc0HcUUYO3AePIdRgc9Asdr8fM6rOImlU/ZlctA=;
 b=NIBktKX/nJx8RezixMcng+tNf20y8D4+OH70wIDR1xFt2MjglofcUiINEL2mvuIj/t
 6ctxYG1CESj4OwMyCV5w2caHATbVxPAoAeXG78Iu1+TJ7pCQXzZXpscTrJpi7ufEGWGC
 /1OGLqQ+1a22uiyAN08Lkb60OVd+npzaqlhYsNzCstyiKvzz/vFQplUims1W7wSoZPEV
 P5v/gG+KwZucGkFKtyYrOUV52xtNHm/pb2vdiS+ZymhYZAwyP6fojHC2Ds4DQzv6ePVP
 bLLLBk3onedCCB05+x5QysbdRN1xuG5SLX+VC74+e6yKLA0uZKwKElEjFHEfJejTA+IO
 mpfg==
X-Gm-Message-State: AO0yUKW3zFpwv5Au8qMbilmFNG2/gNdL/farIfATlNSUFE6glSBOZOMM
 u2C/BjVKfvx8huzglMiAw/8YSkvwxHIjCbYmHIA=
X-Google-Smtp-Source: AK7set/zjqdVvHTBlPFj7JKAlCcpIE96STET1tKq8wkHLQwfe14R5p89zOB1naAdHEb6BTnZap92epc+f0+eKr4dHYg=
X-Received: by 2002:a17:906:7108:b0:87b:d4df:32bc with SMTP id
 x8-20020a170906710800b0087bd4df32bcmr3213316ejj.303.1675134041976; Mon, 30
 Jan 2023 19:00:41 -0800 (PST)
MIME-Version: 1.0
References: <20230127122018.2839-1-kerneljasonxing@gmail.com>
 <Y9fdRqHp7sVFYbr6@boxer>
In-Reply-To: <Y9fdRqHp7sVFYbr6@boxer>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Tue, 31 Jan 2023 11:00:05 +0800
Message-ID: <CAL+tcoBbUKO5Y_dOjZWa4iQyK2C2O76QOLtJ+dFQgr_cpqSiyQ@mail.gmail.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=KB1gOc0HcUUYO3AePIdRgc9Asdr8fM6rOImlU/ZlctA=;
 b=Hxr6l7l0w8hid1jSI/mIuA828FOIZKbq7yp6Icw5g5ab69soHB8NQvs+6d7hqUTa4s
 /d/PWN3GWpaAFJ3IwnX/9cV0rkWmjsXUfEVCm92NA1y3lt4xKYx0z89PmuE2MhXHjMFh
 ny3u9OSjIpNsZr7j1GuJxxXBawtqZfBalLItiFwrXo5N0FIjadMd6DAtUo1iAu+Zm2D7
 wzcigcCtt/oXtYOh2Trh8Q5uGRZNTiKZqDiivazumsrySOgyJFezjUWau90FmxZrTtar
 VCw4WXZquVWaDeFO+hgpNbiZj/FYq9Ew28ivNr5zb9T6E0vnKZYSZttvWvoWyXDOM6TK
 FoLA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Hxr6l7l0
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
Cc: hawk@kernel.org, daniel@iogearbox.net, netdev@vger.kernel.org,
 richardcochran@gmail.com, john.fastabend@gmail.com, jesse.brandeburg@intel.com,
 ast@kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, bpf@vger.kernel.org,
 pabeni@redhat.com, davem@davemloft.net, linux-kernel@vger.kernel.org,
 Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jan 30, 2023 at 11:09 PM Maciej Fijalkowski
<maciej.fijalkowski@intel.com> wrote:
>
> On Fri, Jan 27, 2023 at 08:20:18PM +0800, Jason Xing wrote:
> > From: Jason Xing <kernelxing@tencent.com>
> >
> > I encountered one case where I cannot increase the MTU size directly
> > from 1500 to 2000 with XDP enabled if the server is equipped with
> > IXGBE card, which happened on thousands of servers in production
> > environment.
>

> You said in this thread that you've done several tests - what were they?

Tests against XDP are running on the server side when MTU varies from
1500 to 3050 (not including ETH_HLEN, ETH_FCS_LEN and VLAN_HLEN) for a
few days.
I choose the iperf tool to test the maximum throughput and observe the
behavior when the machines are under greater pressure. Also, I use
netperf to send different size packets to the server side with
different modes (TCP_RR/_STREAM) applied.

> Now that you're following logic from other drivers, have you tested 3k MTU

Sure, the maximum MTU size users could set is 3050 (which is 3072 - 14
- 4 - 4 in ixgbe_change_mtu() function).

> against XDP? Because your commit msg still refer to 2k as your target. If
> 3k is fine then i would reflect that in the subject of the patch.

I will modify the title and body message both.

>
> >
> > This patch follows the behavior of changing MTU as i40e/ice does.
> >
> > Referrences:
> > commit 23b44513c3e6f ("ice: allow 3k MTU for XDP")
> > commit 0c8493d90b6bb ("i40e: add XDP support for pass and drop actions")
> >
> > Link: https://lore.kernel.org/lkml/20230121085521.9566-1-kerneljasonxing@gmail.com/
>
> Why do you share a link to v1 here?

I originally intended to let maintainers trace the previous
discussion. Well, I'm going to remove the link.

>
> You're also missing Fixes: tag, as you're targetting the net tree.
>

I'll do it in the v3 patch.

Thanks,
Jason

> > Signed-off-by: Jason Xing <kernelxing@tencent.com>
> > ---
> > v2:
> > 1) change the commit message.
> > 2) modify the logic when changing MTU size suggested by Maciej and Alexander.
> > ---
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 25 ++++++++++++-------
> >  1 file changed, 16 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > index ab8370c413f3..2c1b6eb60436 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > @@ -6777,6 +6777,18 @@ static void ixgbe_free_all_rx_resources(struct ixgbe_adapter *adapter)
> >                       ixgbe_free_rx_resources(adapter->rx_ring[i]);
> >  }
> >
> > +/**
> > + * ixgbe_max_xdp_frame_size - returns the maximum allowed frame size for XDP
> > + * @adapter - device handle, pointer to adapter
> > + */
> > +static int ixgbe_max_xdp_frame_size(struct ixgbe_adapter *adapter)
> > +{
> > +     if (PAGE_SIZE >= 8192 || adapter->flags2 & IXGBE_FLAG2_RX_LEGACY)
> > +             return IXGBE_RXBUFFER_2K;
> > +     else
> > +             return IXGBE_RXBUFFER_3K;
> > +}
> > +
> >  /**
> >   * ixgbe_change_mtu - Change the Maximum Transfer Unit
> >   * @netdev: network interface device structure
> > @@ -6788,18 +6800,13 @@ static int ixgbe_change_mtu(struct net_device *netdev, int new_mtu)
> >  {
> >       struct ixgbe_adapter *adapter = netdev_priv(netdev);
> >
> > -     if (adapter->xdp_prog) {
> > +     if (ixgbe_enabled_xdp_adapter(adapter)) {
> >               int new_frame_size = new_mtu + ETH_HLEN + ETH_FCS_LEN +
> >                                    VLAN_HLEN;
> > -             int i;
> > -
> > -             for (i = 0; i < adapter->num_rx_queues; i++) {
> > -                     struct ixgbe_ring *ring = adapter->rx_ring[i];
> >
> > -                     if (new_frame_size > ixgbe_rx_bufsz(ring)) {
> > -                             e_warn(probe, "Requested MTU size is not supported with XDP\n");
> > -                             return -EINVAL;
> > -                     }
> > +             if (new_frame_size > ixgbe_max_xdp_frame_size(adapter)) {
> > +                     e_warn(probe, "Requested MTU size is not supported with XDP\n");
> > +                     return -EINVAL;
> >               }
> >       }
> >
> > --
> > 2.37.3
> >
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
