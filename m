Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0993467E8F6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jan 2023 16:09:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 92791612AD;
	Fri, 27 Jan 2023 15:09:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 92791612AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674832148;
	bh=V8HRm70zDMeEHGMc9s9YZJbE4nYrgxJr6AMS58+TiME=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kiUY5KxuZR8ooSZP+NbbwBds2QUY6hyrp8Sszhu1v124V3l7Hk5wtgkfOZAWWriww
	 x7D+/I7GrvmJf3oHdz8/SzoBOcdWccaa2onAp8ysv9eu2hcgg72xes7EALOmSzvBSF
	 aCN9oUMugeTYYroPBTcDOVaVcbjogMmiCt8zu/8cQMXRd70rEULY6KQIW0JGQwNLG3
	 h1Kj0l5J2Pqdu7KccHLxnMlNMGnDJ7E9F4R7Em1jE9fKWCjxEGSYQapj7faPy/8jw/
	 H0DiZ5A8iXBM0RIi2DwKop4yx+t9Igz1gIgJSWTM2PuDAYJQzQspu2LND8G/tKGoT3
	 tovGJaqZfME/g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vwe-Ji0cadO8; Fri, 27 Jan 2023 15:09:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 72AB761293;
	Fri, 27 Jan 2023 15:09:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 72AB761293
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 492B71BF83B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 15:09:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 21A2E60B1B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 15:09:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 21A2E60B1B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bT8lNTZxwU9c for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jan 2023 15:09:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1C6F61293
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E1C6F61293
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 15:09:01 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id gs13so3787547ejc.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 07:09:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=jNKwj7IWvpGptrusc3pRYBqANEuNHkuWJThhB95Vjd0=;
 b=mOTPVPobaKAhM+kwOF13OJi/AyCfX9BpJJn0/hT68h/aPoRb8nF2dYi62+ZpxUNQgX
 1jb+SAJL0x4UO081abU86PcwoXvO/2JhuV9JsorV61uQHpYHTvoXf7PJhHaRlfcsNnN7
 K2WDyTzCHhleNr74RhS7b1NWZkg1nJi5PTIV6r9YVYU+IjEOl3esG7Lxx9iXOBloeY/e
 gIHv71GypDh+Srx1pM7QKnbQC4kkV7VIqNI0wCXWZNmd2RwbmDjxsHRGWpUUAW8VBPLg
 OPfGQZKqx2nod3g0NZFc6wxaVkire7/LBz4+F/b+S1q6d9TqFLpUboS6NNdWDW/Kjg3h
 Oezw==
X-Gm-Message-State: AFqh2ko2S0mHGhwhv2svUMmgBgcTppNf92WHzn/WND3wyCYKJ860re51
 Xd3JfWDj6TSy827XOf7Eygvs73OZ10eVQmnTMm4=
X-Google-Smtp-Source: AMrXdXtnnNEUb/io4XFLuc+yD4vzvIFncclei5EjO4eJeKmGkP/e9zXAQjWyqHu1VdJGeSy0pNSS8m2s9HBklp71dkY=
X-Received: by 2002:a17:906:4a8f:b0:86c:e07a:3ce2 with SMTP id
 x15-20020a1709064a8f00b0086ce07a3ce2mr5568180eju.58.1674832139953; Fri, 27
 Jan 2023 07:08:59 -0800 (PST)
MIME-Version: 1.0
References: <20230127122018.2839-1-kerneljasonxing@gmail.com>
 <CAL+tcoAci+fwk6-JsTL7+yOiom08XSpc9Y5xbTZZ=WWRjYvnuw@mail.gmail.com>
In-Reply-To: <CAL+tcoAci+fwk6-JsTL7+yOiom08XSpc9Y5xbTZZ=WWRjYvnuw@mail.gmail.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Fri, 27 Jan 2023 23:08:23 +0800
Message-ID: <CAL+tcoCeBtiOeemuhQsTK8pnNLjmRRK7ukXLsiPt3YkOrJbYYA@mail.gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, 
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, 
 richardcochran@gmail.com, ast@kernel.org, daniel@iogearbox.net, 
 hawk@kernel.org, john.fastabend@gmail.com, alexandr.lobakin@intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=jNKwj7IWvpGptrusc3pRYBqANEuNHkuWJThhB95Vjd0=;
 b=VPlHIX+oQFTlSAfg8sGI/IFRDGfdsXLhnB+qYCVgk9lwivtCq34o9iAbAEc07qx/iC
 eSKSKaZjii8L/9wfp4uwfPOSlX795T2VObR8/Zo9LCH9xCuesqUM7phjiGMiFtedfiiw
 IDkvPA2/E1T0KFvmFS20QjNHtuhWFGGuzd1n9jI2goY3RYm4tbGFAJKn9GNhQ8VnkGag
 GFF3IxnfGq+vlPd6bLABfHQaMuOYe1n+C3EZivBLUndmOtcsPvIXzwnPf4NNv9HPbN4n
 zADxO/uMqzPU+A6YwvNA9avKuVWzubLBwfI6owNb1mF/+E+DNMtdFtbk9R6Nbwfdg8kW
 2faw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=VPlHIX+o
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

On Fri, Jan 27, 2023 at 10:54 PM Jason Xing <kerneljasonxing@gmail.com> wrote:
>
> My bad. It's not that right. Please ignore the v2 patch. I need some
> time to do more studies and tests on this part.
>

In the meantime, any suggestions and help are appreciated :) I'm still
working on it.


> Thanks,
> Jason
>
> On Fri, Jan 27, 2023 at 8:20 PM Jason Xing <kerneljasonxing@gmail.com> wrote:
> >
> > From: Jason Xing <kernelxing@tencent.com>
> >
> > I encountered one case where I cannot increase the MTU size directly
> > from 1500 to 2000 with XDP enabled if the server is equipped with
> > IXGBE card, which happened on thousands of servers in production
> > environment.
> >
> > This patch follows the behavior of changing MTU as i40e/ice does.
> >
> > Referrences:
> > commit 23b44513c3e6f ("ice: allow 3k MTU for XDP")
> > commit 0c8493d90b6bb ("i40e: add XDP support for pass and drop actions")
> >
> > Link: https://lore.kernel.org/lkml/20230121085521.9566-1-kerneljasonxing@gmail.com/
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
> >                         ixgbe_free_rx_resources(adapter->rx_ring[i]);
> >  }
> >
> > +/**
> > + * ixgbe_max_xdp_frame_size - returns the maximum allowed frame size for XDP
> > + * @adapter - device handle, pointer to adapter
> > + */
> > +static int ixgbe_max_xdp_frame_size(struct ixgbe_adapter *adapter)
> > +{
> > +       if (PAGE_SIZE >= 8192 || adapter->flags2 & IXGBE_FLAG2_RX_LEGACY)
> > +               return IXGBE_RXBUFFER_2K;
> > +       else
> > +               return IXGBE_RXBUFFER_3K;
> > +}
> > +
> >  /**
> >   * ixgbe_change_mtu - Change the Maximum Transfer Unit
> >   * @netdev: network interface device structure
> > @@ -6788,18 +6800,13 @@ static int ixgbe_change_mtu(struct net_device *netdev, int new_mtu)
> >  {
> >         struct ixgbe_adapter *adapter = netdev_priv(netdev);
> >
> > -       if (adapter->xdp_prog) {
> > +       if (ixgbe_enabled_xdp_adapter(adapter)) {
> >                 int new_frame_size = new_mtu + ETH_HLEN + ETH_FCS_LEN +
> >                                      VLAN_HLEN;
> > -               int i;
> > -
> > -               for (i = 0; i < adapter->num_rx_queues; i++) {
> > -                       struct ixgbe_ring *ring = adapter->rx_ring[i];
> >
> > -                       if (new_frame_size > ixgbe_rx_bufsz(ring)) {
> > -                               e_warn(probe, "Requested MTU size is not supported with XDP\n");
> > -                               return -EINVAL;
> > -                       }
> > +               if (new_frame_size > ixgbe_max_xdp_frame_size(adapter)) {
> > +                       e_warn(probe, "Requested MTU size is not supported with XDP\n");
> > +                       return -EINVAL;
> >                 }
> >         }
> >
> > --
> > 2.37.3
> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
