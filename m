Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E712235E2BE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Apr 2021 17:25:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8CC8860697;
	Tue, 13 Apr 2021 15:25:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gpj2dfJoGESO; Tue, 13 Apr 2021 15:25:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9478060BEB;
	Tue, 13 Apr 2021 15:25:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C16771BF2F8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 15:25:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BCCF884449
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 15:25:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8VFc0NljwZCx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Apr 2021 15:25:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com
 [IPv6:2607:f8b0:4864:20::d2f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9747D84444
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 15:25:14 +0000 (UTC)
Received: by mail-io1-xd2f.google.com with SMTP id f15so8698171iob.5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 08:25:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iEkFvtIIJwWjPMTHPUh8pykqV8qelaf111D4c5j8NNA=;
 b=tDyWBKyI07EoQCiqVaB2z9Ker9DumbnCK3Ml9Nu4KOZE+VB1kTzB4jrnQy7qEodb62
 2bWGa7onwKSyv5dXo+nSrL5dAeJ/sgFbY3B3Ma+jmCwram13g75Ggzx4PoXXffIp51hu
 8RjIw+Q5k3sYIf8ESScjQnbP4woH9ocnQ7TR4SYQhd29A2/P7hlY8Cd3KsBxOjYDKCle
 V9JAROuG2YDeiXc95dNHXDxdkqDGUpkLbT0WJP9Oy+5MszJDRJu4ZOqC8QinGG1K5yDQ
 RkppYBe9GZw7y5DQfqHOfJsuIZjWmp6Bu/dXqImCMfNPUmUZeC/nQqReTA9z932M1G5g
 Czew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iEkFvtIIJwWjPMTHPUh8pykqV8qelaf111D4c5j8NNA=;
 b=IkV96VG40jKBY65TKS22RKDjvHwg2VJNXJpe6L6uCd3V1vo5ov2nUeRNK2aR9SdBOL
 qksvrrNrcTQ1sVN6yaIQLuIe2Y9DS3vgSl/szEGdr97yQTrt11xh6Fb+i52urCoZGE1J
 oejaHTdT7jqw0wYDTKGLPbT2lhJH1E3HLKXwqo6Ga94Qh0gVzphiUGove6JDplDqwUQP
 MktRpOYzZVH+QBTAPraYg693A5hoMuaHQKcRUGu4f85x49VkwlCY3HtphXjIW/9QyOHC
 Zgt8K4/cp/VX1+FMxNweL0Sw2S+try384U1dM6Zv5ClqyTINN0rP+BGDimgTKxOeAJOC
 slxg==
X-Gm-Message-State: AOAM532+Z+560JPBtkKcUED/bYNzbghAJDNahoRwO4dOO+JBZFeUw/bf
 BoeJa8nYQ6Gb0ac2UhkK0n1DDG36KHpcoLRANRg=
X-Google-Smtp-Source: ABdhPJzEhueFKv2yERuPNsQ9B/O4YOCvuA+I3aOzshga6AY/kS/tfVGWmW79I825q1ZwTz9OUjp1t+9anMhd1xtdWpE=
X-Received: by 2002:a6b:f909:: with SMTP id j9mr27601969iog.138.1618327513486; 
 Tue, 13 Apr 2021 08:25:13 -0700 (PDT)
MIME-Version: 1.0
References: <20210412101713.15161-1-kurt@linutronix.de>
 <20210412162846.42706d99@carbon>
In-Reply-To: <20210412162846.42706d99@carbon>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 13 Apr 2021 08:25:01 -0700
Message-ID: <CAKgT0UekqPNQxV6PzpEeis69z3e3YNcaFyot=nD7w26hLxPX2Q@mail.gmail.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>
Subject: Re: [Intel-wired-lan] [PATCH RFC net] igb: Fix XDP with PTP enabled
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
Cc: Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Kurt Kanzenbach <kurt@linutronix.de>, Alexei Starovoitov <ast@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Lorenzo Bianconi <lorenzo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Apr 12, 2021 at 7:29 AM Jesper Dangaard Brouer
<brouer@redhat.com> wrote:
>
>
> On Mon, 12 Apr 2021 12:17:13 +0200
> Kurt Kanzenbach <kurt@linutronix.de> wrote:
>
> > When using native XDP with the igb driver, the XDP frame data doesn't point to
> > the beginning of the packet. It's off by 16 bytes. Everything works as expected
> > with XDP skb mode.
> >
> > Actually these 16 bytes are used to store the packet timestamps. Therefore, pull
> > the timestamp before executing any XDP operations and adjust all other code
> > accordingly. The igc driver does it like that as well.
>
> (Cc. Alexander Duyck)
>
> Do we have enough room for the packet page-split tricks when these 16
> bytes are added?
>
> AFAIK this driver like ixgbe+i40e split the page in two 2048 bytes packets.
>
>  The XDP headroom is reduced to 192 bytes.
>  The skb_shared_info is 320 bytes in size.
>
> 2048-192-320 = 1536 bytes
>
>  MTU(L3) 1500
>  Ethernet (L2) headers 14 bytes
>  VLAN 4 bytes, but Q-in-Q vlan 8 bytes.
>
> Single VLAN: 1536-1500-14-4 = 18 bytes left
> Q-in-q VLAN: 1536-1500-14-8 = 14 bytes left

So the Q-in-q case should kick us over to jumbo frames since we have
to add the extra size into the final supported frame size. So the size
itself should work.

> > diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
> > index 86a576201f5f..0cbdf48285d3 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_ptp.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
> > @@ -863,23 +863,22 @@ static void igb_ptp_tx_hwtstamp(struct igb_adapter *adapter)
> >   * igb_ptp_rx_pktstamp - retrieve Rx per packet timestamp
> >   * @q_vector: Pointer to interrupt specific structure
> >   * @va: Pointer to address containing Rx buffer
> > - * @skb: Buffer containing timestamp and packet
> >   *
> >   * This function is meant to retrieve a timestamp from the first buffer of an
> >   * incoming frame.  The value is stored in little endian format starting on
> >   * byte 8
> >   *
> > - * Returns: 0 if success, nonzero if failure
> > + * Returns: 0 on failure, timestamp on success
> >   **/
> > -int igb_ptp_rx_pktstamp(struct igb_q_vector *q_vector, void *va,
> > -                     struct sk_buff *skb)
> > +ktime_t igb_ptp_rx_pktstamp(struct igb_q_vector *q_vector, void *va)
> >  {
> >       struct igb_adapter *adapter = q_vector->adapter;
> > +     struct skb_shared_hwtstamps ts;
> >       __le64 *regval = (__le64 *)va;
> >       int adjust = 0;
> >
> >       if (!(adapter->ptp_flags & IGB_PTP_ENABLED))
> > -             return IGB_RET_PTP_DISABLED;
> > +             return 0;
> >
> >       /* The timestamp is recorded in little endian format.
> >        * DWORD: 0        1        2        3
> > @@ -888,10 +887,9 @@ int igb_ptp_rx_pktstamp(struct igb_q_vector *q_vector, void *va,
> >
> >       /* check reserved dwords are zero, be/le doesn't matter for zero */
> >       if (regval[0])
> > -             return IGB_RET_PTP_INVALID;
> > +             return 0;
> >

One thing that needs to be cleaned up in the patch is that if it is
going to drop these return values it should probably drop the defines
for them since I don't think they are used anywhere else.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
