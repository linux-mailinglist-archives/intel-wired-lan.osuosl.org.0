Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 234402227D8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jul 2020 17:52:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C2B958B3E8;
	Thu, 16 Jul 2020 15:52:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JkAd5oJIwR20; Thu, 16 Jul 2020 15:52:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 38BE28B3F6;
	Thu, 16 Jul 2020 15:51:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 83DF51BF38D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 15:51:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7E94D88E86
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 15:51:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g5iaO840WD0P for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jul 2020 15:51:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
 [209.85.222.172])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2F20D88E7C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 15:51:50 +0000 (UTC)
Received: by mail-qk1-f172.google.com with SMTP id r22so5927244qke.13
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 08:51:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=LlGsfIXVtQTkLx3ptovhYpT0i9Aexh377/t/16esePg=;
 b=oYiIzE5p/gcyLPiFCgo3qKhmTUR4LvhC6mAPmPnYHuzYAP5tjiOtd4v0kvWJaiSUN+
 xpE9KyeaEycFF+Pc4AdsSiBvkeny/hPjxJdj234G+u+iDACI8I31x0yllFN0pLdKh6UJ
 0L0xeqGa9wPaiBPcKwKu5JrfgDuHyUrnY9CnOGnxZmphG6WLEYWMASFJk/tKwaeUcG0q
 eadPvfHNjugX/TNMhWNM4bknDywDiue7zzr2a1VecUrCrfvXWnxXb6SqtnROnJV4ukFV
 b1dpKQPNOapQbcCnBTBSzSpdl/wAtc2fVZbdKmzqqMWfIOjtml8hIsq1pIZ6muNiSttJ
 p0qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=LlGsfIXVtQTkLx3ptovhYpT0i9Aexh377/t/16esePg=;
 b=pUnNfzwTg/EGi9baDa2mgZt6b3fMxeDyXmSX2AogIUdswQ9EKa8MbZEjJALZ/06dDj
 4VJDRaRxmmFzHSabSATlRB/d5ZYCYxNURcVJqFhtU2HafjAEzW06yTCuI7tFI/LFncdV
 8AtpbAUflkH3S3s/7RlGkIA1aEpokTSq+tXx8I9ITNwT81FOcmLy79yTdP4DCgvbBgCJ
 jnG4hUJgcj5blAKtqcY2S2TvuLYytWPDL8STBwkkn2hWK3IlzASeCaG+ckjuXjPSRvD8
 61h1NjitmtursgP44aJpdn7UrcfDDN62SXKvH4h5OjxrfXg7RB/vQkFmEe5+RweutGNp
 zLqA==
X-Gm-Message-State: AOAM5312wEsKt8TvfbDKBWr4tDnclO1PNQGdvAUiQ6wocDnBj6wudN1x
 mlHcX3269ieauPOB9aXdhluY1GqsVifmE85GhTA=
X-Google-Smtp-Source: ABdhPJytqoPfEebOknsag7EKyuVa6x9fxJxAwvOYmsrxQ73jrFhrur0e7hqYqaIVAQPCTk+yDVUFbMrVfIbdJ4bLbEw=
X-Received: by 2002:a05:620a:238:: with SMTP id
 u24mr4789136qkm.168.1594914708664; 
 Thu, 16 Jul 2020 08:51:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6214:1549:0:0:0:0 with HTTP; Thu, 16 Jul 2020 08:51:47
 -0700 (PDT)
In-Reply-To: <CAKgT0UdDjabvShwDv0qiume=Q2RKGkm3JhPMZ+f8v5yO37ZLxA@mail.gmail.com>
References: <CAA85sZvKNXCo5bB5a6kKmsOUAiw+_daAVaSYqNW6QbSBJ0TcyQ@mail.gmail.com>
 <CAA85sZua6Q8UR7TfCGO0bV=VU0gKtqj-8o_mqH38RpKrwYZGtg@mail.gmail.com>
 <20200715133136.5f63360c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAA85sZu09Z4gydJ8rAO_Ey0zqx-8Lg28=fBJ=FxFnp6cetNd3g@mail.gmail.com>
 <CAA85sZtjCW2Yg+tXPgYyoFA5BKAVZC8kVKG=6SiR64c8ur8UcQ@mail.gmail.com>
 <20200715144017.47d06941@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAA85sZvnytPzpia_ROnkmJoZC8n4vUsrwTQh2UBs6u6g2Fgqxw@mail.gmail.com>
 <CAKgT0UdwsmE=ygE2KObzM0z-0KgrPcr59JZzVk41F6-iqsSL+Q@mail.gmail.com>
 <CAA85sZturDN7uOHMDhUnntM43PHjop=TNDb4qvEA2L=jdRa1MA@mail.gmail.com>
 <CAKgT0Uf42EhnM+zPSb-oL1R8hmo0vEdssGztptbkWKoHXS7ygw@mail.gmail.com>
 <CAA85sZtHNkocj840i0ohMVekh0B4byuojU02UunK_bR+LB1WiQ@mail.gmail.com>
 <CAKgT0UdDjabvShwDv0qiume=Q2RKGkm3JhPMZ+f8v5yO37ZLxA@mail.gmail.com>
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Thu, 16 Jul 2020 17:51:47 +0200
Message-ID: <CAA85sZvgFr1LeFmM-uYXk=XWSSPswvotPeanvWWe=jEbLfsbeA@mail.gmail.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Subject: Re: [Intel-wired-lan] NAT performance issue 944mbit -> ~40mbit
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
Cc: Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Linux Kernel Network Developers <netdev@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============6751935026818180792=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============6751935026818180792==
Content-Type: multipart/alternative; boundary="000000000000a8370105aa9104c1"

--000000000000a8370105aa9104c1
Content-Type: text/plain; charset="UTF-8"

On Thursday, July 16, 2020, Alexander Duyck <alexander.duyck@gmail.com>
wrote:

> On Wed, Jul 15, 2020 at 5:00 PM Ian Kumlien <ian.kumlien@gmail.com> wrote:
> >
> > On Thu, Jul 16, 2020 at 1:42 AM Alexander Duyck
> > <alexander.duyck@gmail.com> wrote:
> > > On Wed, Jul 15, 2020 at 3:51 PM Ian Kumlien <ian.kumlien@gmail.com>
> wrote:
> > > > On Thu, Jul 16, 2020 at 12:32 AM Alexander Duyck
> > > > <alexander.duyck@gmail.com> wrote:
> > > > > On Wed, Jul 15, 2020 at 3:00 PM Ian Kumlien <ian.kumlien@gmail.com>
> wrote:
> > > > > > On Wed, Jul 15, 2020 at 11:40 PM Jakub Kicinski <kuba@kernel.org>
> wrote:
> > > > > > > On Wed, 15 Jul 2020 23:12:23 +0200 Ian Kumlien wrote:
> > > > > > > > On Wed, Jul 15, 2020 at 11:02 PM Ian Kumlien <
> ian.kumlien@gmail.com> wrote:
> > > > > > > > > On Wed, Jul 15, 2020 at 10:31 PM Jakub Kicinski <
> kuba@kernel.org> wrote:
> > > > > > > > > > On Wed, 15 Jul 2020 22:05:58 +0200 Ian Kumlien wrote:
> > > > > > > > > > > After a  lot of debugging it turns out that the bug is
> in igb...
> > > > > > > > > > >
> > > > > > > > > > > driver: igb
> > > > > > > > > > > version: 5.6.0-k
> > > > > > > > > > > firmware-version:  0. 6-1
> > > > > > > > > > >
> > > > > > > > > > > 03:00.0 Ethernet controller: Intel Corporation I211
> Gigabit Network
> > > > > > > > > > > Connection (rev 03)
> > > > > > > > > >
> > > > > > > > > > Unclear to me what you're actually reporting. Is this a
> regression
> > > > > > > > > > after a kernel upgrade? Compared to no NAT?
> > > > > > > > >
> > > > > > > > > It only happens on "internet links"
> > > > > > > > >
> > > > > > > > > Lets say that A is client with ibg driver, B is a firewall
> running NAT
> > > > > > > > > with ixgbe drivers, C is another local node with igb and
> > > > > > > > > D is a remote node with a bridge backed by a bnx2
> interface.
> > > > > > > > >
> > > > > > > > > A -> B -> C is ok (B and C is on the same switch)
> > > > > > > > >
> > > > > > > > > A -> B -> D -- 32-40mbit
> > > > > > > > >
> > > > > > > > > B -> D 944 mbit
> > > > > > > > > C -> D 944 mbit
> > > > > > > > >
> > > > > > > > > A' -> D ~933 mbit (A with realtek nic -- also link is not
> idle atm)
> > > > > > > >
> > > > > > > > This should of course be A' -> B -> D
> > > > > > > >
> > > > > > > > Sorry, I've been scratching my head for about a week...
> > > > > > >
> > > > > > > Hm, only thing that comes to mind if A' works reliably and A
> doesn't is
> > > > > > > that A has somehow broken TCP offloads. Could you try
> disabling things
> > > > > > > via ethtool -K and see if those settings make a difference?
> > > > > >
> > > > > > It's a bit hard since it works like this, turned tso off:
> > > > > > [ ID] Interval           Transfer     Bitrate         Retr  Cwnd
> > > > > > [  5]   0.00-1.00   sec   108 MBytes   902 Mbits/sec    0    783
> KBytes
> > > > > > [  5]   1.00-2.00   sec   110 MBytes   923 Mbits/sec   31    812
> KBytes
> > > > > > [  5]   2.00-3.00   sec   111 MBytes   933 Mbits/sec   92    772
> KBytes
> > > > > > [  5]   3.00-4.00   sec   110 MBytes   923 Mbits/sec    0    834
> KBytes
> > > > > > [  5]   4.00-5.00   sec   111 MBytes   933 Mbits/sec   60    823
> KBytes
> > > > > > [  5]   5.00-6.00   sec   110 MBytes   923 Mbits/sec   31    789
> KBytes
> > > > > > [  5]   6.00-7.00   sec   111 MBytes   933 Mbits/sec    0    786
> KBytes
> > > > > > [  5]   7.00-8.00   sec   110 MBytes   923 Mbits/sec    0    761
> KBytes
> > > > > > [  5]   8.00-9.00   sec   110 MBytes   923 Mbits/sec    0    772
> KBytes
> > > > > > [  5]   9.00-10.00  sec   109 MBytes   912 Mbits/sec    0    868
> KBytes
> > > > > > - - - - - - - - - - - - - - - - - - - - - - - - -
> > > > > > [ ID] Interval           Transfer     Bitrate         Retr
> > > > > > [  5]   0.00-10.00  sec  1.07 GBytes   923 Mbits/sec  214
>      sender
> > > > > > [  5]   0.00-10.00  sec  1.07 GBytes   920 Mbits/sec
>       receiver
> > > > > >
> > > > > > Continued running tests:
> > > > > > [ ID] Interval           Transfer     Bitrate         Retr  Cwnd
> > > > > > [  5]   0.00-1.00   sec  5.82 MBytes  48.8 Mbits/sec    0   82.0
> KBytes
> > > > > > [  5]   1.00-2.00   sec  4.97 MBytes  41.7 Mbits/sec    0    130
> KBytes
> > > > > > [  5]   2.00-3.00   sec  5.28 MBytes  44.3 Mbits/sec    0   99.0
> KBytes
> > > > > > [  5]   3.00-4.00   sec  5.28 MBytes  44.3 Mbits/sec    0    105
> KBytes
> > > > > > [  5]   4.00-5.00   sec  5.28 MBytes  44.3 Mbits/sec    0    122
> KBytes
> > > > > > [  5]   5.00-6.00   sec  5.28 MBytes  44.3 Mbits/sec    0   82.0
> KBytes
> > > > > > [  5]   6.00-7.00   sec  5.28 MBytes  44.3 Mbits/sec    0   79.2
> KBytes
> > > > > > [  5]   7.00-8.00   sec  5.28 MBytes  44.3 Mbits/sec    0    110
> KBytes
> > > > > > [  5]   8.00-9.00   sec  5.28 MBytes  44.3 Mbits/sec    0    156
> KBytes
> > > > > > [  5]   9.00-10.00  sec  5.28 MBytes  44.3 Mbits/sec    0   87.7
> KBytes
> > > > > > - - - - - - - - - - - - - - - - - - - - - - - - -
> > > > > > [ ID] Interval           Transfer     Bitrate         Retr
> > > > > > [  5]   0.00-10.00  sec  53.0 MBytes  44.5 Mbits/sec    0
>      sender
> > > > > > [  5]   0.00-10.00  sec  52.5 MBytes  44.1 Mbits/sec
>       receiver
> > > > > >
> > > > > > [ ID] Interval           Transfer     Bitrate         Retr  Cwnd
> > > > > > [  5]   0.00-1.00   sec  7.08 MBytes  59.4 Mbits/sec    0    156
> KBytes
> > > > > > [  5]   1.00-2.00   sec  5.97 MBytes  50.0 Mbits/sec    0    110
> KBytes
> > > > > > [  5]   2.00-3.00   sec  4.97 MBytes  41.7 Mbits/sec    0    124
> KBytes
> > > > > > [  5]   3.00-4.00   sec  5.47 MBytes  45.9 Mbits/sec    0   96.2
> KBytes
> > > > > > [  5]   4.00-5.00   sec  5.47 MBytes  45.9 Mbits/sec    0    158
> KBytes
> > > > > > [  5]   5.00-6.00   sec  4.97 MBytes  41.7 Mbits/sec    0   70.7
> KBytes
> > > > > > [  5]   6.00-7.00   sec  5.47 MBytes  45.9 Mbits/sec    0    113
> KBytes
> > > > > > [  5]   7.00-8.00   sec  5.47 MBytes  45.9 Mbits/sec    0   96.2
> KBytes
> > > > > > [  5]   8.00-9.00   sec  4.97 MBytes  41.7 Mbits/sec    0   84.8
> KBytes
> > > > > > [  5]   9.00-10.00  sec  5.47 MBytes  45.9 Mbits/sec    0    116
> KBytes
> > > > > > - - - - - - - - - - - - - - - - - - - - - - - - -
> > > > > > [ ID] Interval           Transfer     Bitrate         Retr
> > > > > > [  5]   0.00-10.00  sec  55.3 MBytes  46.4 Mbits/sec    0
>      sender
> > > > > > [  5]   0.00-10.00  sec  53.9 MBytes  45.2 Mbits/sec
>       receiver
> > > > > >
> > > > > > And the low bandwidth continues with:
> > > > > > ethtool -k enp3s0 |grep ": on"
> > > > > > rx-vlan-offload: on
> > > > > > tx-vlan-offload: on [requested off]
> > > > > > highdma: on [fixed]
> > > > > > rx-vlan-filter: on [fixed]
> > > > > > tx-gre-segmentation: on
> > > > > > tx-gre-csum-segmentation: on
> > > > > > tx-ipxip4-segmentation: on
> > > > > > tx-ipxip6-segmentation: on
> > > > > > tx-udp_tnl-segmentation: on
> > > > > > tx-udp_tnl-csum-segmentation: on
> > > > > > tx-gso-partial: on
> > > > > > tx-udp-segmentation: on
> > > > > > hw-tc-offload: on
> > > > > >
> > > > > > Can't quite find how to turn those off since they aren't listed
> in
> > > > > > ethtool (since the text is not what you use to enable/disable)
> > > > >
> > > > > To disable them you would just repeat the same string in the
> display
> > > > > string. So it should just be "ethtool -K enp3s0 tx-gso-partial off"
> > > > > and that would turn off a large chunk of them as all the
> encapsulated
> > > > > support requires gso partial support.
> > > >
> > > >  ethtool -k enp3s0 |grep ": on"
> > > > highdma: on [fixed]
> > > > rx-vlan-filter: on [fixed]
> > > > ---
> > > > And then back to back:
> > > > [ ID] Interval           Transfer     Bitrate         Retr  Cwnd
> > > > [  5]   0.00-1.00   sec  4.91 MBytes  41.2 Mbits/sec    0   45.2
> KBytes
> > > > [  5]   1.00-2.00   sec  4.47 MBytes  37.5 Mbits/sec    0   52.3
> KBytes
> > > > [  5]   2.00-3.00   sec  4.47 MBytes  37.5 Mbits/sec    0   42.4
> KBytes
> > > > [  5]   3.00-4.00   sec  4.47 MBytes  37.5 Mbits/sec    0    141
> KBytes
> > > > [  5]   4.00-5.00   sec   111 MBytes   928 Mbits/sec   63    764
> KBytes
> > > > [  5]   5.00-6.00   sec  86.2 MBytes   724 Mbits/sec    0    744
> KBytes
> > > > [  5]   6.00-7.00   sec  98.8 MBytes   828 Mbits/sec   61    769
> KBytes
> > > > [  5]   7.00-8.00   sec   110 MBytes   923 Mbits/sec    0    749
> KBytes
> > > > [  5]   8.00-9.00   sec   110 MBytes   923 Mbits/sec    0    741
> KBytes
> > > > [  5]   9.00-10.00  sec   110 MBytes   923 Mbits/sec   31    761
> KBytes
> > > > - - - - - - - - - - - - - - - - - - - - - - - - -
> > > > [ ID] Interval           Transfer     Bitrate         Retr
> > > > [  5]   0.00-10.00  sec   644 MBytes   540 Mbits/sec  155
>  sender
> > > > [  5]   0.00-10.01  sec   641 MBytes   537 Mbits/sec
>   receiver
> > > >
> > > > and we're back at the not working bit:
> > > > [ ID] Interval           Transfer     Bitrate         Retr  Cwnd
> > > > [  5]   0.00-1.00   sec  4.84 MBytes  40.6 Mbits/sec    0   42.4
> KBytes
> > > > [  5]   1.00-2.00   sec  4.60 MBytes  38.6 Mbits/sec    0   42.4
> KBytes
> > > > [  5]   2.00-3.00   sec  4.23 MBytes  35.4 Mbits/sec    0   42.4
> KBytes
> > > > [  5]   3.00-4.00   sec  4.47 MBytes  37.5 Mbits/sec    0   67.9
> KBytes
> > > > [  5]   4.00-5.00   sec  4.47 MBytes  37.5 Mbits/sec    0   42.4
> KBytes
> > > > [  5]   5.00-6.00   sec  4.23 MBytes  35.4 Mbits/sec    0   42.4
> KBytes
> > > > [  5]   6.00-7.00   sec  4.23 MBytes  35.4 Mbits/sec    0   42.4
> KBytes
> > > > [  5]   7.00-8.00   sec  4.47 MBytes  37.5 Mbits/sec    0   67.9
> KBytes
> > > > [  5]   8.00-9.00   sec  4.47 MBytes  37.5 Mbits/sec    0   53.7
> KBytes
> > > > [  5]   9.00-10.00  sec  4.47 MBytes  37.5 Mbits/sec    0   79.2
> KBytes
> > > > - - - - - - - - - - - - - - - - - - - - - - - - -
> > > > [ ID] Interval           Transfer     Bitrate         Retr
> > > > [  5]   0.00-10.00  sec  44.5 MBytes  37.3 Mbits/sec    0
>  sender
> > > > [  5]   0.00-10.00  sec  43.9 MBytes  36.8 Mbits/sec
>   receiver
> > > >
> > > > > > I was hoping that you'd have a clue of something that might
> introduce
> > > > > > a regression - ie specific patches to try to revert
> > > > > >
> > > > > > Btw, the same issue applies to udp as werll
> > > > > >
> > > > > > [ ID] Interval           Transfer     Bitrate         Total
> Datagrams
> > > > > > [  5]   0.00-1.00   sec  6.77 MBytes  56.8 Mbits/sec  4900
> > > > > > [  5]   1.00-2.00   sec  4.27 MBytes  35.8 Mbits/sec  3089
> > > > > > [  5]   2.00-3.00   sec  4.20 MBytes  35.2 Mbits/sec  3041
> > > > > > [  5]   3.00-4.00   sec  4.30 MBytes  36.1 Mbits/sec  3116
> > > > > > [  5]   4.00-5.00   sec  4.24 MBytes  35.6 Mbits/sec  3070
> > > > > > [  5]   5.00-6.00   sec  4.21 MBytes  35.3 Mbits/sec  3047
> > > > > > [  5]   6.00-7.00   sec  4.29 MBytes  36.0 Mbits/sec  3110
> > > > > > [  5]   7.00-8.00   sec  4.28 MBytes  35.9 Mbits/sec  3097
> > > > > > [  5]   8.00-9.00   sec  4.25 MBytes  35.6 Mbits/sec  3075
> > > > > > [  5]   9.00-10.00  sec  4.20 MBytes  35.2 Mbits/sec  3039
> > > > > > - - - - - - - - - - - - - - - - - - - - - - - - -
> > > > > > [ ID] Interval           Transfer     Bitrate         Jitter
> > > > > > Lost/Total Datagrams
> > > > > > [  5]   0.00-10.00  sec  45.0 MBytes  37.7 Mbits/sec  0.000 ms
> > > > > > 0/32584 (0%)  sender
> > > > > > [  5]   0.00-10.00  sec  45.0 MBytes  37.7 Mbits/sec  0.037 ms
> > > > > > 0/32573 (0%)  receiver
> > > > > >
> > > > > > vs:
> > > > > >
> > > > > > [ ID] Interval           Transfer     Bitrate         Total
> Datagrams
> > > > > > [  5]   0.00-1.00   sec   114 MBytes   954 Mbits/sec  82342
> > > > > > [  5]   1.00-2.00   sec   114 MBytes   955 Mbits/sec  82439
> > > > > > [  5]   2.00-3.00   sec   114 MBytes   956 Mbits/sec  82507
> > > > > > [  5]   3.00-4.00   sec   114 MBytes   955 Mbits/sec  82432
> > > > > > [  5]   4.00-5.00   sec   114 MBytes   956 Mbits/sec  82535
> > > > > > [  5]   5.00-6.00   sec   114 MBytes   953 Mbits/sec  82240
> > > > > > [  5]   6.00-7.00   sec   114 MBytes   956 Mbits/sec  82512
> > > > > > [  5]   7.00-8.00   sec   114 MBytes   956 Mbits/sec  82503
> > > > > > [  5]   8.00-9.00   sec   114 MBytes   956 Mbits/sec  82532
> > > > > > [  5]   9.00-10.00  sec   114 MBytes   956 Mbits/sec  82488
> > > > > > - - - - - - - - - - - - - - - - - - - - - - - - -
> > > > > > [ ID] Interval           Transfer     Bitrate         Jitter
> > > > > > Lost/Total Datagrams
> > > > > > [  5]   0.00-10.00  sec  1.11 GBytes   955 Mbits/sec  0.000 ms
> > > > > > 0/824530 (0%)  sender
> > > > > > [  5]   0.00-10.01  sec  1.11 GBytes   949 Mbits/sec  0.014 ms
> > > > > > 4756/824530 (0.58%)  receiver
> > > > >
> > > > > The fact that it is impacting UDP seems odd. I wonder if we don't
> have
> > > > > a qdisc somewhere that is misbehaving and throttling the Tx. Either
> > > > > that or I wonder if we are getting spammed with flow control
> frames.
> > > >
> > > > it sometimes works, it looks like the cwindow just isn't increased -
> > > > that's where i started...
> > > >
> > > > Example:
> > > > [ ID] Interval           Transfer     Bitrate         Retr  Cwnd
> > > > [  5]   0.00-1.00   sec  4.86 MBytes  40.8 Mbits/sec    0   50.9
> KBytes
> > > > [  5]   1.00-2.00   sec  4.66 MBytes  39.1 Mbits/sec    0   65.0
> KBytes
> > > > [  5]   2.00-3.00   sec  4.29 MBytes  36.0 Mbits/sec    0   42.4
> KBytes
> > > > [  5]   3.00-4.00   sec  4.66 MBytes  39.1 Mbits/sec    0   42.4
> KBytes
> > > > [  5]   4.00-5.00   sec  23.1 MBytes   194 Mbits/sec    0   1.07
> MBytes
> > > > [  5]   5.00-6.00   sec   110 MBytes   923 Mbits/sec    0    761
> KBytes
> > > > [  5]   6.00-7.00   sec  98.8 MBytes   828 Mbits/sec   60    806
> KBytes
> > > > [  5]   7.00-8.00   sec  82.5 MBytes   692 Mbits/sec    0    812
> KBytes
> > > > [  5]   8.00-9.00   sec   110 MBytes   923 Mbits/sec   92    761
> KBytes
> > > > [  5]   9.00-10.00  sec   111 MBytes   933 Mbits/sec    0    755
> KBytes
> > > > - - - - - - - - - - - - - - - - - - - - - - - - -
> > > > [ ID] Interval           Transfer     Bitrate         Retr
> > > > [  5]   0.00-10.00  sec   554 MBytes   465 Mbits/sec  152
>  sender
> > > > [  5]   0.00-10.00  sec   550 MBytes   461 Mbits/sec
>   receiver
> > > >
> > > > > It would be useful to include the output of just calling "ethtool
> > > > > enp3s0" on the interface to verify the speed, "ethtool -a enp3s0"
> to
> > > > > verify flow control settings, and "ethtool -S enp3s0 | grep -v :\
> 0"
> > > > > to output the statistics and dump anything that isn't zero.
> > > >
> > > > ethtool enp3s0
> > > > Settings for enp3s0:
> > > > Supported ports: [ TP ]
> > > > Supported link modes:   10baseT/Half 10baseT/Full
> > > >                         100baseT/Half 100baseT/Full
> > > >                         1000baseT/Full
> > > > Supported pause frame use: Symmetric
> > > > Supports auto-negotiation: Yes
> > > > Supported FEC modes: Not reported
> > > > Advertised link modes:  10baseT/Half 10baseT/Full
> > > >                         100baseT/Half 100baseT/Full
> > > >                         1000baseT/Full
> > > > Advertised pause frame use: Symmetric
> > > > Advertised auto-negotiation: Yes
> > > > Advertised FEC modes: Not reported
> > > > Speed: 1000Mb/s
> > > > Duplex: Full
> > > > Auto-negotiation: on
> > > > Port: Twisted Pair
> > > > PHYAD: 1
> > > > Transceiver: internal
> > > > MDI-X: off (auto)
> > > > Supports Wake-on: pumbg
> > > > Wake-on: g
> > > >         Current message level: 0x00000007 (7)
> > > >                                drv probe link
> > > > Link detected: yes
> > > > ---
> > > > ethtool -a enp3s0
> > > > Pause parameters for enp3s0:
> > > > Autonegotiate: on
> > > > RX: on
> > > > TX: off
> > > > ---
> > > > ethtool -S enp3s0 |grep  -v :\ 0
> > > > NIC statistics:
> > > >      rx_packets: 15920618
> > > >      tx_packets: 17846725
> > > >      rx_bytes: 15676264423
> > > >      tx_bytes: 19925010639
> > > >      rx_broadcast: 119553
> > > >      tx_broadcast: 497
> > > >      rx_multicast: 330193
> > > >      tx_multicast: 18190
> > > >      multicast: 330193
> > > >      rx_missed_errors: 270102
> > > >      rx_long_length_errors: 6
> > > >      tx_tcp_seg_good: 1342561
> > > >      rx_long_byte_count: 15676264423
> > > >      rx_errors: 6
> > > >      rx_length_errors: 6
> > > >      rx_fifo_errors: 270102
> > > >      tx_queue_0_packets: 7651168
> > > >      tx_queue_0_bytes: 7823281566
> > > >      tx_queue_0_restart: 4920
> > > >      tx_queue_1_packets: 10195557
> > > >      tx_queue_1_bytes: 12027522118
> > > >      tx_queue_1_restart: 12718
> > > >      rx_queue_0_packets: 15920618
> > > >      rx_queue_0_bytes: 15612581951
> > > >      rx_queue_0_csum_err: 76
> > > > (I've only run two runs since i reenabled the interface)
> > >
> > > So I am seeing three things here.
> > >
> > > The rx_long_length_errors are usually due to an MTU mismatch. Do you
> > > have something on the network that is using jumbo frames, or is the
> > > MTU on the NIC set to something smaller than what is supported on the
> > > network?
> >
> > I'm using jumbo frames on the local network, internet side is the
> > normal 1500 bytes mtu though
> >
> > > You are getting rx_missed_errors, that would seem to imply that the
> > > DMA is not able to keep up. We may want to try disabling the L1 to see
> > > if we get any boost from doing that.
> >
> > It used to work, I don't do benchmarks all the time and sometimes the
> first
> > benchmarks turn out fine... so it's hard to say when this started
> happening...
> >
> > It could also be related to a bios upgrade, but I'm pretty sure I did
> > successful benchmarks after that...
> >
> > How do I disable the l1? just echo 0 >
> > /sys/bus/pci/drivers/igb/0000\:03\:00.0/link/l1_aspm ?
> >
> > > The last bit is that queue 0 is seeing packets with bad checksums. You
> > > might want to run some tests and see where the bad checksums are
> > > coming from. If they are being detected from a specific NIC such as
> > > the ixgbe in your example it might point to some sort of checksum
> > > error being created as a result of the NAT translation.
> >
> > But that should also affect A' and the A -> B -> C case, which it
> doesn't...
> >
> > It only seems to happen with higher rtt (6 hops, sub 3 ms in this case
> > but still high enough somehow)
> >
> > > > ---
> > > >
> > > > > > lspci -s 03:00.0  -vvv
> > > > > > 03:00.0 Ethernet controller: Intel Corporation I211 Gigabit
> Network
> > > > > > Connection (rev 03)
> > > > > > Subsystem: ASUSTeK Computer Inc. I211 Gigabit Network Connection
> > > > > > Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
> ParErr-
> > > > > > Stepping- SERR- FastB2B- DisINTx+
> > > > > > Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
> > > > > > <TAbort- <MAbort- >SERR- <PERR- INTx-
> > > > > > Latency: 0
> > > > > > Interrupt: pin A routed to IRQ 57
> > > > > > IOMMU group: 20
> > > > > > Region 0: Memory at fc900000 (32-bit, non-prefetchable)
> [size=128K]
> > > > > > Region 2: I/O ports at e000 [size=32]
> > > > > > Region 3: Memory at fc920000 (32-bit, non-prefetchable)
> [size=16K]
> > > > > > Capabilities: [40] Power Management version 3
> > > > > > Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA
> PME(D0+,D1-,D2-,D3hot+,D3cold+)
> > > > > > Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=1 PME-
> > > > > > Capabilities: [50] MSI: Enable- Count=1/1 Maskable+ 64bit+
> > > > > > Address: 0000000000000000  Data: 0000
> > > > > > Masking: 00000000  Pending: 00000000
> > > > > > Capabilities: [70] MSI-X: Enable+ Count=5 Masked-
> > > > > > Vector table: BAR=3 offset=00000000
> > > > > > PBA: BAR=3 offset=00002000
> > > > > > Capabilities: [a0] Express (v2) Endpoint, MSI 00
> > > > > > DevCap: MaxPayload 512 bytes, PhantFunc 0, Latency L0s <512ns,
> L1 <64us
> > > > > > ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset+ SlotPowerLimit
> 0.000W
> > > > > > DevCtl: CorrErr+ NonFatalErr+ FatalErr+ UnsupReq+
> > > > > > RlxdOrd+ ExtTag- PhantFunc- AuxPwr- NoSnoop+ FLReset-
> > > > > > MaxPayload 128 bytes, MaxReadReq 512 bytes
> > > > > > DevSta: CorrErr- NonFatalErr- FatalErr- UnsupReq- AuxPwr+
> TransPend-
> > > > > > LnkCap: Port #3, Speed 2.5GT/s, Width x1, ASPM L0s L1, Exit
> Latency
> > > > > > L0s <2us, L1 <16us
> > > > > > ClockPM- Surprise- LLActRep- BwNot- ASPMOptComp+
> > > > > > LnkCtl: ASPM L1 Enabled; RCB 64 bytes, Disabled- CommClk+
> > > > > > ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
> > > > > > LnkSta: Speed 2.5GT/s (ok), Width x1 (ok)
> > > > > > TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-
> > > > >
> > > > > PCIe wise the connection is going to be pretty tight in terms of
> > > > > bandwidth. It looks like we have 2.5GT/s with only a single lane of
> > > > > PCIe. In addition we are running with ASPM enabled so that means
> that
> > > > > if we don't have enough traffic we are shutting off the one PCIe
> lane
> > > > > we have so if we are getting bursty traffic that can get ugly.
> > > >
> > > > Humm... is there a way to force disable ASPM in sysfs?
> > >
> > > Actually the easiest way to do this is to just use setpci.
> > >
> > > You should be able to dump the word containing the setting via:
> > > # setpci -s 3:00.0 0xB0.w
> > > 0042
> > > # setpci -s 3:00.0 0xB0.w=0040
> > >
> > > Basically what you do is clear the lower 3 bits of the value so in
> > > this case that means replacing the 2 with a 0 based on the output of
> > > the first command.
> >
> > Well... I'll be damned... I used to force enable ASPM... this must be
> > related to the change in PCIe bus ASPM
> > Perhaps disable ASPM if there is only one link?
>
> Is there any specific reason why you are enabling ASPM? Is this system
> a laptop where you are trying to conserve power when on battery? If
> not disabling it probably won't hurt things too much since the power
> consumption for a 2.5GT/s link operating in a width of one shouldn't
> bee too high. Otherwise you are likely going to end up paying the
> price for getting the interface out of L1 when the traffic goes idle
> so you are going to see flows that get bursty paying a heavy penalty
> when they start dropping packets.
>

Ah, you misunderstand, I used to do this and everything worked - now Linux
enables ASPM by default on all pcie controllers, so imho this should be a
quirk, if there is only one lane, don't do ASPM due to latency and timing
issues...


> It is also possible this could be something that changed with the
> physical PCIe link. Basically L1 works by powering down the link when
> idle, and then powering it back up when there is activity. The problem
> is bringing it back up can sometimes be a challenge when the physical
> link starts to go faulty. I know I have seen that in some cases it can
> even result in the device falling off of the PCIe bus if the link
> training fails.


It works fine without ASPM (and the machine is pretty new)

I suspect we hit some timing race with aggressive ASPM (assumed as such
since it works on local links but doesn't on ~3 ms Links)


> > [ ID] Interval           Transfer     Bitrate         Retr  Cwnd
> > [  5]   0.00-1.00   sec   113 MBytes   950 Mbits/sec   31    710 KBytes
> > [  5]   1.00-2.00   sec   110 MBytes   923 Mbits/sec  135    626 KBytes
> > [  5]   2.00-3.00   sec   112 MBytes   944 Mbits/sec   18    713 KBytes
> > [  5]   3.00-4.00   sec   111 MBytes   933 Mbits/sec    0    798 KBytes
> > [  5]   4.00-5.00   sec   111 MBytes   933 Mbits/sec    0    721 KBytes
> > [  5]   5.00-6.00   sec   112 MBytes   944 Mbits/sec   31    800 KBytes
> > [  5]   6.00-7.00   sec   111 MBytes   933 Mbits/sec    0    730 KBytes
> > [  5]   7.00-8.00   sec   111 MBytes   933 Mbits/sec   19    730 KBytes
> > [  5]   8.00-9.00   sec   111 MBytes   933 Mbits/sec    0    701 KBytes
> > [  5]   9.00-10.00  sec   112 MBytes   944 Mbits/sec   12    701 KBytes
> > - - - - - - - - - - - - - - - - - - - - - - - - -
> > [ ID] Interval           Transfer     Bitrate         Retr
> > [  5]   0.00-10.00  sec  1.09 GBytes   937 Mbits/sec  246
>  sender
> > [  5]   0.00-10.01  sec  1.09 GBytes   933 Mbits/sec
> receiver
> >
> > [ ID] Interval           Transfer     Bitrate         Retr  Cwnd
> > [  5]   0.00-1.00   sec   114 MBytes   956 Mbits/sec    0    749 KBytes
> > [  5]   1.00-2.00   sec   111 MBytes   933 Mbits/sec   30    766 KBytes
> > [  5]   2.00-3.00   sec   112 MBytes   944 Mbits/sec    7    749 KBytes
> > [  5]   3.00-4.00   sec   111 MBytes   933 Mbits/sec   11    707 KBytes
> > [  5]   4.00-5.00   sec   111 MBytes   933 Mbits/sec    2    699 KBytes
> > [  5]   5.00-6.00   sec   111 MBytes   933 Mbits/sec    8    699 KBytes
> > [  5]   6.00-7.00   sec   112 MBytes   944 Mbits/sec    1    953 KBytes
> > [  5]   7.00-8.00   sec   111 MBytes   933 Mbits/sec    0    701 KBytes
> > [  5]   8.00-9.00   sec   111 MBytes   933 Mbits/sec   26    707 KBytes
> > [  5]   9.00-10.00  sec   112 MBytes   944 Mbits/sec    2   1.07 MBytes
> > - - - - - - - - - - - - - - - - - - - - - - - - -
> > [ ID] Interval           Transfer     Bitrate         Retr
> > [  5]   0.00-10.00  sec  1.09 GBytes   939 Mbits/sec   87
>  sender
> > [  5]   0.00-10.00  sec  1.09 GBytes   934 Mbits/sec
> receiver
> >
> > [ ID] Interval           Transfer     Bitrate         Retr  Cwnd
> > [  5]   0.00-1.00   sec   114 MBytes   953 Mbits/sec   16    908 KBytes
> > [  5]   1.00-2.00   sec   112 MBytes   944 Mbits/sec    0    693 KBytes
> > [  5]   2.00-3.00   sec   111 MBytes   933 Mbits/sec    0    713 KBytes
> > [  5]   3.00-4.00   sec   111 MBytes   933 Mbits/sec    0    687 KBytes
> > [  5]   4.00-5.00   sec   112 MBytes   944 Mbits/sec   15    687 KBytes
> > [  5]   5.00-6.00   sec   111 MBytes   933 Mbits/sec    2    888 KBytes
> > [  5]   6.00-7.00   sec   111 MBytes   933 Mbits/sec   17    696 KBytes
> > [  5]   7.00-8.00   sec   111 MBytes   933 Mbits/sec    0    758 KBytes
> > [  5]   8.00-9.00   sec   111 MBytes   933 Mbits/sec   31    749 KBytes
> > [  5]   9.00-10.00  sec   112 MBytes   944 Mbits/sec    0    792 KBytes
> > - - - - - - - - - - - - - - - - - - - - - - - - -
> > [ ID] Interval           Transfer     Bitrate         Retr
> > [  5]   0.00-10.00  sec  1.09 GBytes   938 Mbits/sec   81
>  sender
> > [  5]   0.00-10.00  sec  1.09 GBytes   934 Mbits/sec
> receiver
> >
> > [ ID] Interval           Transfer     Bitrate         Retr  Cwnd
> > [  5]   0.00-1.00   sec   114 MBytes   956 Mbits/sec    0    747 KBytes
> > [  5]   1.00-2.00   sec   111 MBytes   933 Mbits/sec    0    744 KBytes
> > [  5]   2.00-3.00   sec   112 MBytes   944 Mbits/sec   12   1.18 MBytes
> > [  5]   3.00-4.00   sec   111 MBytes   933 Mbits/sec    2    699 KBytes
> > [  5]   4.00-5.00   sec   111 MBytes   933 Mbits/sec   28    699 KBytes
> > [  5]   5.00-6.00   sec   112 MBytes   944 Mbits/sec    0    684 KBytes
> > [  5]   6.00-7.00   sec   111 MBytes   933 Mbits/sec    0    741 KBytes
> > [  5]   7.00-8.00   sec   111 MBytes   933 Mbits/sec    3    687 KBytes
> > [  5]   8.00-9.00   sec   111 MBytes   933 Mbits/sec   22    699 KBytes
> > [  5]   9.00-10.00  sec   111 MBytes   933 Mbits/sec   11    707 KBytes
> > - - - - - - - - - - - - - - - - - - - - - - - - -
> > [ ID] Interval           Transfer     Bitrate         Retr
> > [  5]   0.00-10.00  sec  1.09 GBytes   938 Mbits/sec   78
>  sender
> > [  5]   0.00-10.01  sec  1.09 GBytes   934 Mbits/sec
> receiver
> > ---
> >
> > ethtool -S enp3s0 |grep -v ": 0"
> > NIC statistics:
> >      rx_packets: 16303520
> >      tx_packets: 21602840
> >      rx_bytes: 15711958157
> >      tx_bytes: 25599009212
> >      rx_broadcast: 122212
> >      tx_broadcast: 530
> >      rx_multicast: 333489
> >      tx_multicast: 18446
> >      multicast: 333489
> >      rx_missed_errors: 270143
> >      rx_long_length_errors: 6
> >      tx_tcp_seg_good: 1342561
> >      rx_long_byte_count: 15711958157
> >      rx_errors: 6
> >      rx_length_errors: 6
> >      rx_fifo_errors: 270143
> >      tx_queue_0_packets: 8963830
> >      tx_queue_0_bytes: 9803196683
> >      tx_queue_0_restart: 4920
> >      tx_queue_1_packets: 12639010
> >      tx_queue_1_bytes: 15706576814
> >      tx_queue_1_restart: 12718
> >      rx_queue_0_packets: 16303520
> >      rx_queue_0_bytes: 15646744077
> >      rx_queue_0_csum_err: 76
>
> Okay, so this result still has the same length and checksum errors,
> were you resetting the system/statistics between runs?
>

Ah, no.... Will reset and do more tests when I'm back home

--000000000000a8370105aa9104c1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<br><br>On Thursday, July 16, 2020, Alexander Duyck &lt;<a href=3D"mailto:a=
lexander.duyck@gmail.com">alexander.duyck@gmail.com</a>&gt; wrote:<br><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex">On Wed, Jul 15, 2020 at 5:00 PM Ian Kumlien &lt;<=
a href=3D"mailto:ian.kumlien@gmail.com">ian.kumlien@gmail.com</a>&gt; wrote=
:<br>
&gt;<br>
&gt; On Thu, Jul 16, 2020 at 1:42 AM Alexander Duyck<br>
&gt; &lt;<a href=3D"mailto:alexander.duyck@gmail.com">alexander.duyck@gmail=
.com</a>&gt; wrote:<br>
&gt; &gt; On Wed, Jul 15, 2020 at 3:51 PM Ian Kumlien &lt;<a href=3D"mailto=
:ian.kumlien@gmail.com">ian.kumlien@gmail.com</a>&gt; wrote:<br>
&gt; &gt; &gt; On Thu, Jul 16, 2020 at 12:32 AM Alexander Duyck<br>
&gt; &gt; &gt; &lt;<a href=3D"mailto:alexander.duyck@gmail.com">alexander.d=
uyck@gmail.com</a>&gt; wrote:<br>
&gt; &gt; &gt; &gt; On Wed, Jul 15, 2020 at 3:00 PM Ian Kumlien &lt;<a href=
=3D"mailto:ian.kumlien@gmail.com">ian.kumlien@gmail.com</a>&gt; wrote:<br>
&gt; &gt; &gt; &gt; &gt; On Wed, Jul 15, 2020 at 11:40 PM Jakub Kicinski &l=
t;<a href=3D"mailto:kuba@kernel.org">kuba@kernel.org</a>&gt; wrote:<br>
&gt; &gt; &gt; &gt; &gt; &gt; On Wed, 15 Jul 2020 23:12:23 +0200 Ian Kumlie=
n wrote:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; On Wed, Jul 15, 2020 at 11:02 PM Ian Kum=
lien &lt;<a href=3D"mailto:ian.kumlien@gmail.com">ian.kumlien@gmail.com</a>=
&gt; wrote:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; On Wed, Jul 15, 2020 at 10:31 PM Ja=
kub Kicinski &lt;<a href=3D"mailto:kuba@kernel.org">kuba@kernel.org</a>&gt;=
 wrote:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; On Wed, 15 Jul 2020 22:05:58 +=
0200 Ian Kumlien wrote:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; After a=C2=A0 lot of debu=
gging it turns out that the bug is in igb...<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; driver: igb<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; version: 5.6.0-k<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; firmware-version:=C2=A0 0=
. 6-1<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; 03:00.0 Ethernet controll=
er: Intel Corporation I211 Gigabit Network<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; Connection (rev 03)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; Unclear to me what you&#39;re =
actually reporting. Is this a regression<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; after a kernel upgrade? Compar=
ed to no NAT?<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; It only happens on &quot;internet l=
inks&quot;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; Lets say that A is client with ibg =
driver, B is a firewall running NAT<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; with ixgbe drivers, C is another lo=
cal node with igb and<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; D is a remote node with a bridge ba=
cked by a bnx2 interface.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; A -&gt; B -&gt; C is ok (B and C is=
 on the same switch)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; A -&gt; B -&gt; D -- 32-40mbit<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; B -&gt; D 944 mbit<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; C -&gt; D 944 mbit<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; A&#39; -&gt; D ~933 mbit (A with re=
altek nic -- also link is not idle atm)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; This should of course be A&#39; -&gt; B =
-&gt; D<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; Sorry, I&#39;ve been scratching my head =
for about a week...<br>
&gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; Hm, only thing that comes to mind if A&#39; w=
orks reliably and A doesn&#39;t is<br>
&gt; &gt; &gt; &gt; &gt; &gt; that A has somehow broken TCP offloads. Could=
 you try disabling things<br>
&gt; &gt; &gt; &gt; &gt; &gt; via ethtool -K and see if those settings make=
 a difference?<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; It&#39;s a bit hard since it works like this, turn=
ed tso off:<br>
&gt; &gt; &gt; &gt; &gt; [ ID] Interval=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0Transfer=C2=A0 =C2=A0 =C2=A0Bitrate=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
Retr=C2=A0 Cwnd<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A00.00-1.00=C2=A0 =C2=A0sec=
=C2=A0 =C2=A0108 MBytes=C2=A0 =C2=A0902 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=
=A0 783 KBytes<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A01.00-2.00=C2=A0 =C2=A0sec=
=C2=A0 =C2=A0110 MBytes=C2=A0 =C2=A0923 Mbits/sec=C2=A0 =C2=A031=C2=A0 =C2=
=A0 812 KBytes<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A02.00-3.00=C2=A0 =C2=A0sec=
=C2=A0 =C2=A0111 MBytes=C2=A0 =C2=A0933 Mbits/sec=C2=A0 =C2=A092=C2=A0 =C2=
=A0 772 KBytes<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A03.00-4.00=C2=A0 =C2=A0sec=
=C2=A0 =C2=A0110 MBytes=C2=A0 =C2=A0923 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=
=A0 834 KBytes<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A04.00-5.00=C2=A0 =C2=A0sec=
=C2=A0 =C2=A0111 MBytes=C2=A0 =C2=A0933 Mbits/sec=C2=A0 =C2=A060=C2=A0 =C2=
=A0 823 KBytes<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A05.00-6.00=C2=A0 =C2=A0sec=
=C2=A0 =C2=A0110 MBytes=C2=A0 =C2=A0923 Mbits/sec=C2=A0 =C2=A031=C2=A0 =C2=
=A0 789 KBytes<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A06.00-7.00=C2=A0 =C2=A0sec=
=C2=A0 =C2=A0111 MBytes=C2=A0 =C2=A0933 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=
=A0 786 KBytes<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A07.00-8.00=C2=A0 =C2=A0sec=
=C2=A0 =C2=A0110 MBytes=C2=A0 =C2=A0923 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=
=A0 761 KBytes<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A08.00-9.00=C2=A0 =C2=A0sec=
=C2=A0 =C2=A0110 MBytes=C2=A0 =C2=A0923 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=
=A0 772 KBytes<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A09.00-10.00=C2=A0 sec=C2=A0 =
=C2=A0109 MBytes=C2=A0 =C2=A0912 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 868 =
KBytes<br>
&gt; &gt; &gt; &gt; &gt; - - - - - - - - - - - - - - - - - - - - - - - - -<=
br>
&gt; &gt; &gt; &gt; &gt; [ ID] Interval=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0Transfer=C2=A0 =C2=A0 =C2=A0Bitrate=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
Retr<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A00.00-10.00=C2=A0 sec=C2=A0 =
1.07 GBytes=C2=A0 =C2=A0923 Mbits/sec=C2=A0 214=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0sender<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A00.00-10.00=C2=A0 sec=C2=A0 =
1.07 GBytes=C2=A0 =C2=A0920 Mbits/sec=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 receiver<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; Continued running tests:<br>
&gt; &gt; &gt; &gt; &gt; [ ID] Interval=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0Transfer=C2=A0 =C2=A0 =C2=A0Bitrate=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
Retr=C2=A0 Cwnd<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A00.00-1.00=C2=A0 =C2=A0sec=
=C2=A0 5.82 MBytes=C2=A0 48.8 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A082.0 KBy=
tes<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A01.00-2.00=C2=A0 =C2=A0sec=
=C2=A0 4.97 MBytes=C2=A0 41.7 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 130 KBy=
tes<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A02.00-3.00=C2=A0 =C2=A0sec=
=C2=A0 5.28 MBytes=C2=A0 44.3 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A099.0 KBy=
tes<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A03.00-4.00=C2=A0 =C2=A0sec=
=C2=A0 5.28 MBytes=C2=A0 44.3 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 105 KBy=
tes<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A04.00-5.00=C2=A0 =C2=A0sec=
=C2=A0 5.28 MBytes=C2=A0 44.3 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 122 KBy=
tes<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A05.00-6.00=C2=A0 =C2=A0sec=
=C2=A0 5.28 MBytes=C2=A0 44.3 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A082.0 KBy=
tes<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A06.00-7.00=C2=A0 =C2=A0sec=
=C2=A0 5.28 MBytes=C2=A0 44.3 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A079.2 KBy=
tes<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A07.00-8.00=C2=A0 =C2=A0sec=
=C2=A0 5.28 MBytes=C2=A0 44.3 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 110 KBy=
tes<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A08.00-9.00=C2=A0 =C2=A0sec=
=C2=A0 5.28 MBytes=C2=A0 44.3 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 156 KBy=
tes<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A09.00-10.00=C2=A0 sec=C2=A0 =
5.28 MBytes=C2=A0 44.3 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A087.7 KBytes<br>
&gt; &gt; &gt; &gt; &gt; - - - - - - - - - - - - - - - - - - - - - - - - -<=
br>
&gt; &gt; &gt; &gt; &gt; [ ID] Interval=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0Transfer=C2=A0 =C2=A0 =C2=A0Bitrate=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
Retr<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A00.00-10.00=C2=A0 sec=C2=A0 =
53.0 MBytes=C2=A0 44.5 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0sender<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A00.00-10.00=C2=A0 sec=C2=A0 =
52.5 MBytes=C2=A0 44.1 Mbits/sec=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 receiver<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; [ ID] Interval=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0Transfer=C2=A0 =C2=A0 =C2=A0Bitrate=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
Retr=C2=A0 Cwnd<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A00.00-1.00=C2=A0 =C2=A0sec=
=C2=A0 7.08 MBytes=C2=A0 59.4 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 156 KBy=
tes<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A01.00-2.00=C2=A0 =C2=A0sec=
=C2=A0 5.97 MBytes=C2=A0 50.0 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 110 KBy=
tes<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A02.00-3.00=C2=A0 =C2=A0sec=
=C2=A0 4.97 MBytes=C2=A0 41.7 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 124 KBy=
tes<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A03.00-4.00=C2=A0 =C2=A0sec=
=C2=A0 5.47 MBytes=C2=A0 45.9 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A096.2 KBy=
tes<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A04.00-5.00=C2=A0 =C2=A0sec=
=C2=A0 5.47 MBytes=C2=A0 45.9 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 158 KBy=
tes<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A05.00-6.00=C2=A0 =C2=A0sec=
=C2=A0 4.97 MBytes=C2=A0 41.7 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A070.7 KBy=
tes<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A06.00-7.00=C2=A0 =C2=A0sec=
=C2=A0 5.47 MBytes=C2=A0 45.9 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 113 KBy=
tes<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A07.00-8.00=C2=A0 =C2=A0sec=
=C2=A0 5.47 MBytes=C2=A0 45.9 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A096.2 KBy=
tes<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A08.00-9.00=C2=A0 =C2=A0sec=
=C2=A0 4.97 MBytes=C2=A0 41.7 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A084.8 KBy=
tes<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A09.00-10.00=C2=A0 sec=C2=A0 =
5.47 MBytes=C2=A0 45.9 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 116 KBytes<br>
&gt; &gt; &gt; &gt; &gt; - - - - - - - - - - - - - - - - - - - - - - - - -<=
br>
&gt; &gt; &gt; &gt; &gt; [ ID] Interval=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0Transfer=C2=A0 =C2=A0 =C2=A0Bitrate=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
Retr<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A00.00-10.00=C2=A0 sec=C2=A0 =
55.3 MBytes=C2=A0 46.4 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0sender<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A00.00-10.00=C2=A0 sec=C2=A0 =
53.9 MBytes=C2=A0 45.2 Mbits/sec=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 receiver<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; And the low bandwidth continues with:<br>
&gt; &gt; &gt; &gt; &gt; ethtool -k enp3s0 |grep &quot;: on&quot;<br>
&gt; &gt; &gt; &gt; &gt; rx-vlan-offload: on<br>
&gt; &gt; &gt; &gt; &gt; tx-vlan-offload: on [requested off]<br>
&gt; &gt; &gt; &gt; &gt; highdma: on [fixed]<br>
&gt; &gt; &gt; &gt; &gt; rx-vlan-filter: on [fixed]<br>
&gt; &gt; &gt; &gt; &gt; tx-gre-segmentation: on<br>
&gt; &gt; &gt; &gt; &gt; tx-gre-csum-segmentation: on<br>
&gt; &gt; &gt; &gt; &gt; tx-ipxip4-segmentation: on<br>
&gt; &gt; &gt; &gt; &gt; tx-ipxip6-segmentation: on<br>
&gt; &gt; &gt; &gt; &gt; tx-udp_tnl-segmentation: on<br>
&gt; &gt; &gt; &gt; &gt; tx-udp_tnl-csum-segmentation: on<br>
&gt; &gt; &gt; &gt; &gt; tx-gso-partial: on<br>
&gt; &gt; &gt; &gt; &gt; tx-udp-segmentation: on<br>
&gt; &gt; &gt; &gt; &gt; hw-tc-offload: on<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; Can&#39;t quite find how to turn those off since t=
hey aren&#39;t listed in<br>
&gt; &gt; &gt; &gt; &gt; ethtool (since the text is not what you use to ena=
ble/disable)<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; To disable them you would just repeat the same string i=
n the display<br>
&gt; &gt; &gt; &gt; string. So it should just be &quot;ethtool -K enp3s0 tx=
-gso-partial off&quot;<br>
&gt; &gt; &gt; &gt; and that would turn off a large chunk of them as all th=
e encapsulated<br>
&gt; &gt; &gt; &gt; support requires gso partial support.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;=C2=A0 ethtool -k enp3s0 |grep &quot;: on&quot;<br>
&gt; &gt; &gt; highdma: on [fixed]<br>
&gt; &gt; &gt; rx-vlan-filter: on [fixed]<br>
&gt; &gt; &gt; ---<br>
&gt; &gt; &gt; And then back to back:<br>
&gt; &gt; &gt; [ ID] Interval=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Trans=
fer=C2=A0 =C2=A0 =C2=A0Bitrate=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Retr=C2=A0 =
Cwnd<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A00.00-1.00=C2=A0 =C2=A0sec=C2=A0 4.91 =
MBytes=C2=A0 41.2 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A045.2 KBytes<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A01.00-2.00=C2=A0 =C2=A0sec=C2=A0 4.47 =
MBytes=C2=A0 37.5 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A052.3 KBytes<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A02.00-3.00=C2=A0 =C2=A0sec=C2=A0 4.47 =
MBytes=C2=A0 37.5 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A042.4 KBytes<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A03.00-4.00=C2=A0 =C2=A0sec=C2=A0 4.47 =
MBytes=C2=A0 37.5 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 141 KBytes<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A04.00-5.00=C2=A0 =C2=A0sec=C2=A0 =C2=
=A0111 MBytes=C2=A0 =C2=A0928 Mbits/sec=C2=A0 =C2=A063=C2=A0 =C2=A0 764 KBy=
tes<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A05.00-6.00=C2=A0 =C2=A0sec=C2=A0 86.2 =
MBytes=C2=A0 =C2=A0724 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 744 KBytes<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A06.00-7.00=C2=A0 =C2=A0sec=C2=A0 98.8 =
MBytes=C2=A0 =C2=A0828 Mbits/sec=C2=A0 =C2=A061=C2=A0 =C2=A0 769 KBytes<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A07.00-8.00=C2=A0 =C2=A0sec=C2=A0 =C2=
=A0110 MBytes=C2=A0 =C2=A0923 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 749 KBy=
tes<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A08.00-9.00=C2=A0 =C2=A0sec=C2=A0 =C2=
=A0110 MBytes=C2=A0 =C2=A0923 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 741 KBy=
tes<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A09.00-10.00=C2=A0 sec=C2=A0 =C2=A0110 =
MBytes=C2=A0 =C2=A0923 Mbits/sec=C2=A0 =C2=A031=C2=A0 =C2=A0 761 KBytes<br>
&gt; &gt; &gt; - - - - - - - - - - - - - - - - - - - - - - - - -<br>
&gt; &gt; &gt; [ ID] Interval=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Trans=
fer=C2=A0 =C2=A0 =C2=A0Bitrate=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Retr<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A00.00-10.00=C2=A0 sec=C2=A0 =C2=A0644 =
MBytes=C2=A0 =C2=A0540 Mbits/sec=C2=A0 155=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0sender<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A00.00-10.01=C2=A0 sec=C2=A0 =C2=A0641 =
MBytes=C2=A0 =C2=A0537 Mbits/sec=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 receiver<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; and we&#39;re back at the not working bit:<br>
&gt; &gt; &gt; [ ID] Interval=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Trans=
fer=C2=A0 =C2=A0 =C2=A0Bitrate=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Retr=C2=A0 =
Cwnd<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A00.00-1.00=C2=A0 =C2=A0sec=C2=A0 4.84 =
MBytes=C2=A0 40.6 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A042.4 KBytes<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A01.00-2.00=C2=A0 =C2=A0sec=C2=A0 4.60 =
MBytes=C2=A0 38.6 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A042.4 KBytes<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A02.00-3.00=C2=A0 =C2=A0sec=C2=A0 4.23 =
MBytes=C2=A0 35.4 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A042.4 KBytes<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A03.00-4.00=C2=A0 =C2=A0sec=C2=A0 4.47 =
MBytes=C2=A0 37.5 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A067.9 KBytes<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A04.00-5.00=C2=A0 =C2=A0sec=C2=A0 4.47 =
MBytes=C2=A0 37.5 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A042.4 KBytes<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A05.00-6.00=C2=A0 =C2=A0sec=C2=A0 4.23 =
MBytes=C2=A0 35.4 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A042.4 KBytes<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A06.00-7.00=C2=A0 =C2=A0sec=C2=A0 4.23 =
MBytes=C2=A0 35.4 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A042.4 KBytes<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A07.00-8.00=C2=A0 =C2=A0sec=C2=A0 4.47 =
MBytes=C2=A0 37.5 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A067.9 KBytes<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A08.00-9.00=C2=A0 =C2=A0sec=C2=A0 4.47 =
MBytes=C2=A0 37.5 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A053.7 KBytes<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A09.00-10.00=C2=A0 sec=C2=A0 4.47 MByte=
s=C2=A0 37.5 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A079.2 KBytes<br>
&gt; &gt; &gt; - - - - - - - - - - - - - - - - - - - - - - - - -<br>
&gt; &gt; &gt; [ ID] Interval=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Trans=
fer=C2=A0 =C2=A0 =C2=A0Bitrate=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Retr<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A00.00-10.00=C2=A0 sec=C2=A0 44.5 MByte=
s=C2=A0 37.3 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0sender<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A00.00-10.00=C2=A0 sec=C2=A0 43.9 MByte=
s=C2=A0 36.8 Mbits/sec=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 receiver<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; I was hoping that you&#39;d have a clue of somethi=
ng that might introduce<br>
&gt; &gt; &gt; &gt; &gt; a regression - ie specific patches to try to rever=
t<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; Btw, the same issue applies to udp as werll<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; [ ID] Interval=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0Transfer=C2=A0 =C2=A0 =C2=A0Bitrate=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
Total Datagrams<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A00.00-1.00=C2=A0 =C2=A0sec=
=C2=A0 6.77 MBytes=C2=A0 56.8 Mbits/sec=C2=A0 4900<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A01.00-2.00=C2=A0 =C2=A0sec=
=C2=A0 4.27 MBytes=C2=A0 35.8 Mbits/sec=C2=A0 3089<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A02.00-3.00=C2=A0 =C2=A0sec=
=C2=A0 4.20 MBytes=C2=A0 35.2 Mbits/sec=C2=A0 3041<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A03.00-4.00=C2=A0 =C2=A0sec=
=C2=A0 4.30 MBytes=C2=A0 36.1 Mbits/sec=C2=A0 3116<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A04.00-5.00=C2=A0 =C2=A0sec=
=C2=A0 4.24 MBytes=C2=A0 35.6 Mbits/sec=C2=A0 3070<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A05.00-6.00=C2=A0 =C2=A0sec=
=C2=A0 4.21 MBytes=C2=A0 35.3 Mbits/sec=C2=A0 3047<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A06.00-7.00=C2=A0 =C2=A0sec=
=C2=A0 4.29 MBytes=C2=A0 36.0 Mbits/sec=C2=A0 3110<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A07.00-8.00=C2=A0 =C2=A0sec=
=C2=A0 4.28 MBytes=C2=A0 35.9 Mbits/sec=C2=A0 3097<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A08.00-9.00=C2=A0 =C2=A0sec=
=C2=A0 4.25 MBytes=C2=A0 35.6 Mbits/sec=C2=A0 3075<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A09.00-10.00=C2=A0 sec=C2=A0 =
4.20 MBytes=C2=A0 35.2 Mbits/sec=C2=A0 3039<br>
&gt; &gt; &gt; &gt; &gt; - - - - - - - - - - - - - - - - - - - - - - - - -<=
br>
&gt; &gt; &gt; &gt; &gt; [ ID] Interval=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0Transfer=C2=A0 =C2=A0 =C2=A0Bitrate=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
Jitter<br>
&gt; &gt; &gt; &gt; &gt; Lost/Total Datagrams<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A00.00-10.00=C2=A0 sec=C2=A0 =
45.0 MBytes=C2=A0 37.7 Mbits/sec=C2=A0 0.000 ms<br>
&gt; &gt; &gt; &gt; &gt; 0/32584 (0%)=C2=A0 sender<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A00.00-10.00=C2=A0 sec=C2=A0 =
45.0 MBytes=C2=A0 37.7 Mbits/sec=C2=A0 0.037 ms<br>
&gt; &gt; &gt; &gt; &gt; 0/32573 (0%)=C2=A0 receiver<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; vs:<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; [ ID] Interval=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0Transfer=C2=A0 =C2=A0 =C2=A0Bitrate=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
Total Datagrams<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A00.00-1.00=C2=A0 =C2=A0sec=
=C2=A0 =C2=A0114 MBytes=C2=A0 =C2=A0954 Mbits/sec=C2=A0 82342<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A01.00-2.00=C2=A0 =C2=A0sec=
=C2=A0 =C2=A0114 MBytes=C2=A0 =C2=A0955 Mbits/sec=C2=A0 82439<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A02.00-3.00=C2=A0 =C2=A0sec=
=C2=A0 =C2=A0114 MBytes=C2=A0 =C2=A0956 Mbits/sec=C2=A0 82507<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A03.00-4.00=C2=A0 =C2=A0sec=
=C2=A0 =C2=A0114 MBytes=C2=A0 =C2=A0955 Mbits/sec=C2=A0 82432<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A04.00-5.00=C2=A0 =C2=A0sec=
=C2=A0 =C2=A0114 MBytes=C2=A0 =C2=A0956 Mbits/sec=C2=A0 82535<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A05.00-6.00=C2=A0 =C2=A0sec=
=C2=A0 =C2=A0114 MBytes=C2=A0 =C2=A0953 Mbits/sec=C2=A0 82240<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A06.00-7.00=C2=A0 =C2=A0sec=
=C2=A0 =C2=A0114 MBytes=C2=A0 =C2=A0956 Mbits/sec=C2=A0 82512<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A07.00-8.00=C2=A0 =C2=A0sec=
=C2=A0 =C2=A0114 MBytes=C2=A0 =C2=A0956 Mbits/sec=C2=A0 82503<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A08.00-9.00=C2=A0 =C2=A0sec=
=C2=A0 =C2=A0114 MBytes=C2=A0 =C2=A0956 Mbits/sec=C2=A0 82532<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A09.00-10.00=C2=A0 sec=C2=A0 =
=C2=A0114 MBytes=C2=A0 =C2=A0956 Mbits/sec=C2=A0 82488<br>
&gt; &gt; &gt; &gt; &gt; - - - - - - - - - - - - - - - - - - - - - - - - -<=
br>
&gt; &gt; &gt; &gt; &gt; [ ID] Interval=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0Transfer=C2=A0 =C2=A0 =C2=A0Bitrate=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
Jitter<br>
&gt; &gt; &gt; &gt; &gt; Lost/Total Datagrams<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A00.00-10.00=C2=A0 sec=C2=A0 =
1.11 GBytes=C2=A0 =C2=A0955 Mbits/sec=C2=A0 0.000 ms<br>
&gt; &gt; &gt; &gt; &gt; 0/824530 (0%)=C2=A0 sender<br>
&gt; &gt; &gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A00.00-10.01=C2=A0 sec=C2=A0 =
1.11 GBytes=C2=A0 =C2=A0949 Mbits/sec=C2=A0 0.014 ms<br>
&gt; &gt; &gt; &gt; &gt; 4756/824530 (0.58%)=C2=A0 receiver<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; The fact that it is impacting UDP seems odd. I wonder i=
f we don&#39;t have<br>
&gt; &gt; &gt; &gt; a qdisc somewhere that is misbehaving and throttling th=
e Tx. Either<br>
&gt; &gt; &gt; &gt; that or I wonder if we are getting spammed with flow co=
ntrol frames.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; it sometimes works, it looks like the cwindow just isn&#39;t=
 increased -<br>
&gt; &gt; &gt; that&#39;s where i started...<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Example:<br>
&gt; &gt; &gt; [ ID] Interval=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Trans=
fer=C2=A0 =C2=A0 =C2=A0Bitrate=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Retr=C2=A0 =
Cwnd<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A00.00-1.00=C2=A0 =C2=A0sec=C2=A0 4.86 =
MBytes=C2=A0 40.8 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A050.9 KBytes<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A01.00-2.00=C2=A0 =C2=A0sec=C2=A0 4.66 =
MBytes=C2=A0 39.1 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A065.0 KBytes<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A02.00-3.00=C2=A0 =C2=A0sec=C2=A0 4.29 =
MBytes=C2=A0 36.0 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A042.4 KBytes<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A03.00-4.00=C2=A0 =C2=A0sec=C2=A0 4.66 =
MBytes=C2=A0 39.1 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A042.4 KBytes<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A04.00-5.00=C2=A0 =C2=A0sec=C2=A0 23.1 =
MBytes=C2=A0 =C2=A0194 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A01.07 MBytes<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A05.00-6.00=C2=A0 =C2=A0sec=C2=A0 =C2=
=A0110 MBytes=C2=A0 =C2=A0923 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 761 KBy=
tes<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A06.00-7.00=C2=A0 =C2=A0sec=C2=A0 98.8 =
MBytes=C2=A0 =C2=A0828 Mbits/sec=C2=A0 =C2=A060=C2=A0 =C2=A0 806 KBytes<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A07.00-8.00=C2=A0 =C2=A0sec=C2=A0 82.5 =
MBytes=C2=A0 =C2=A0692 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 812 KBytes<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A08.00-9.00=C2=A0 =C2=A0sec=C2=A0 =C2=
=A0110 MBytes=C2=A0 =C2=A0923 Mbits/sec=C2=A0 =C2=A092=C2=A0 =C2=A0 761 KBy=
tes<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A09.00-10.00=C2=A0 sec=C2=A0 =C2=A0111 =
MBytes=C2=A0 =C2=A0933 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 755 KBytes<br>
&gt; &gt; &gt; - - - - - - - - - - - - - - - - - - - - - - - - -<br>
&gt; &gt; &gt; [ ID] Interval=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Trans=
fer=C2=A0 =C2=A0 =C2=A0Bitrate=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Retr<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A00.00-10.00=C2=A0 sec=C2=A0 =C2=A0554 =
MBytes=C2=A0 =C2=A0465 Mbits/sec=C2=A0 152=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0sender<br>
&gt; &gt; &gt; [=C2=A0 5]=C2=A0 =C2=A00.00-10.00=C2=A0 sec=C2=A0 =C2=A0550 =
MBytes=C2=A0 =C2=A0461 Mbits/sec=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 receiver<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; It would be useful to include the output of just callin=
g &quot;ethtool<br>
&gt; &gt; &gt; &gt; enp3s0&quot; on the interface to verify the speed, &quo=
t;ethtool -a enp3s0&quot; to<br>
&gt; &gt; &gt; &gt; verify flow control settings, and &quot;ethtool -S enp3=
s0 | grep -v :\ 0&quot;<br>
&gt; &gt; &gt; &gt; to output the statistics and dump anything that isn&#39=
;t zero.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; ethtool enp3s0<br>
&gt; &gt; &gt; Settings for enp3s0:<br>
&gt; &gt; &gt; Supported ports: [ TP ]<br>
&gt; &gt; &gt; Supported link modes:=C2=A0 =C2=A010baseT/Half 10baseT/Full<=
br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0100baseT/Half 100baseT/Full<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01000baseT/Full<br>
&gt; &gt; &gt; Supported pause frame use: Symmetric<br>
&gt; &gt; &gt; Supports auto-negotiation: Yes<br>
&gt; &gt; &gt; Supported FEC modes: Not reported<br>
&gt; &gt; &gt; Advertised link modes:=C2=A0 10baseT/Half 10baseT/Full<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0100baseT/Half 100baseT/Full<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01000baseT/Full<br>
&gt; &gt; &gt; Advertised pause frame use: Symmetric<br>
&gt; &gt; &gt; Advertised auto-negotiation: Yes<br>
&gt; &gt; &gt; Advertised FEC modes: Not reported<br>
&gt; &gt; &gt; Speed: 1000Mb/s<br>
&gt; &gt; &gt; Duplex: Full<br>
&gt; &gt; &gt; Auto-negotiation: on<br>
&gt; &gt; &gt; Port: Twisted Pair<br>
&gt; &gt; &gt; PHYAD: 1<br>
&gt; &gt; &gt; Transceiver: internal<br>
&gt; &gt; &gt; MDI-X: off (auto)<br>
&gt; &gt; &gt; Supports Wake-on: pumbg<br>
&gt; &gt; &gt; Wake-on: g<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Current message level: 0x00=
000007 (7)<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 drv probe link<br>
&gt; &gt; &gt; Link detected: yes<br>
&gt; &gt; &gt; ---<br>
&gt; &gt; &gt; ethtool -a enp3s0<br>
&gt; &gt; &gt; Pause parameters for enp3s0:<br>
&gt; &gt; &gt; Autonegotiate: on<br>
&gt; &gt; &gt; RX: on<br>
&gt; &gt; &gt; TX: off<br>
&gt; &gt; &gt; ---<br>
&gt; &gt; &gt; ethtool -S enp3s0 |grep=C2=A0 -v :\ 0<br>
&gt; &gt; &gt; NIC statistics:<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 rx_packets: 15920618<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 tx_packets: 17846725<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 rx_bytes: 15676264423<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 tx_bytes: 19925010639<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 rx_broadcast: 119553<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 tx_broadcast: 497<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 rx_multicast: 330193<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 tx_multicast: 18190<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 multicast: 330193<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 rx_missed_errors: 270102<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 rx_long_length_errors: 6<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 tx_tcp_seg_good: 1342561<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 rx_long_byte_count: 15676264423<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 rx_errors: 6<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 rx_length_errors: 6<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 rx_fifo_errors: 270102<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 tx_queue_0_packets: 7651168<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 tx_queue_0_bytes: 7823281566<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 tx_queue_0_restart: 4920<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 tx_queue_1_packets: 10195557<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 tx_queue_1_bytes: 12027522118<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 tx_queue_1_restart: 12718<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 rx_queue_0_packets: 15920618<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 rx_queue_0_bytes: 15612581951<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 rx_queue_0_csum_err: 76<br>
&gt; &gt; &gt; (I&#39;ve only run two runs since i reenabled the interface)=
<br>
&gt; &gt;<br>
&gt; &gt; So I am seeing three things here.<br>
&gt; &gt;<br>
&gt; &gt; The rx_long_length_errors are usually due to an MTU mismatch. Do =
you<br>
&gt; &gt; have something on the network that is using jumbo frames, or is t=
he<br>
&gt; &gt; MTU on the NIC set to something smaller than what is supported on=
 the<br>
&gt; &gt; network?<br>
&gt;<br>
&gt; I&#39;m using jumbo frames on the local network, internet side is the<=
br>
&gt; normal 1500 bytes mtu though<br>
&gt;<br>
&gt; &gt; You are getting rx_missed_errors, that would seem to imply that t=
he<br>
&gt; &gt; DMA is not able to keep up. We may want to try disabling the L1 t=
o see<br>
&gt; &gt; if we get any boost from doing that.<br>
&gt;<br>
&gt; It used to work, I don&#39;t do benchmarks all the time and sometimes =
the first<br>
&gt; benchmarks turn out fine... so it&#39;s hard to say when this started =
happening...<br>
&gt;<br>
&gt; It could also be related to a bios upgrade, but I&#39;m pretty sure I =
did<br>
&gt; successful benchmarks after that...<br>
&gt;<br>
&gt; How do I disable the l1? just echo 0 &gt;<br>
&gt; /sys/bus/pci/drivers/igb/0000\<wbr>:03\:00.0/link/l1_aspm ?<br>
&gt;<br>
&gt; &gt; The last bit is that queue 0 is seeing packets with bad checksums=
. You<br>
&gt; &gt; might want to run some tests and see where the bad checksums are<=
br>
&gt; &gt; coming from. If they are being detected from a specific NIC such =
as<br>
&gt; &gt; the ixgbe in your example it might point to some sort of checksum=
<br>
&gt; &gt; error being created as a result of the NAT translation.<br>
&gt;<br>
&gt; But that should also affect A&#39; and the A -&gt; B -&gt; C case, whi=
ch it doesn&#39;t...<br>
&gt;<br>
&gt; It only seems to happen with higher rtt (6 hops, sub 3 ms in this case=
<br>
&gt; but still high enough somehow)<br>
&gt;<br>
&gt; &gt; &gt; ---<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; lspci -s 03:00.0=C2=A0 -vvv<br>
&gt; &gt; &gt; &gt; &gt; 03:00.0 Ethernet controller: Intel Corporation I21=
1 Gigabit Network<br>
&gt; &gt; &gt; &gt; &gt; Connection (rev 03)<br>
&gt; &gt; &gt; &gt; &gt; Subsystem: ASUSTeK Computer Inc. I211 Gigabit Netw=
ork Connection<br>
&gt; &gt; &gt; &gt; &gt; Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- =
VGASnoop- ParErr-<br>
&gt; &gt; &gt; &gt; &gt; Stepping- SERR- FastB2B- DisINTx+<br>
&gt; &gt; &gt; &gt; &gt; Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=
=3Dfast &gt;TAbort-<br>
&gt; &gt; &gt; &gt; &gt; &lt;TAbort- &lt;MAbort- &gt;SERR- &lt;PERR- INTx-<=
br>
&gt; &gt; &gt; &gt; &gt; Latency: 0<br>
&gt; &gt; &gt; &gt; &gt; Interrupt: pin A routed to IRQ 57<br>
&gt; &gt; &gt; &gt; &gt; IOMMU group: 20<br>
&gt; &gt; &gt; &gt; &gt; Region 0: Memory at fc900000 (32-bit, non-prefetch=
able) [size=3D128K]<br>
&gt; &gt; &gt; &gt; &gt; Region 2: I/O ports at e000 [size=3D32]<br>
&gt; &gt; &gt; &gt; &gt; Region 3: Memory at fc920000 (32-bit, non-prefetch=
able) [size=3D16K]<br>
&gt; &gt; &gt; &gt; &gt; Capabilities: [40] Power Management version 3<br>
&gt; &gt; &gt; &gt; &gt; Flags: PMEClk- DSI+ D1- D2- AuxCurrent=3D0mA PME(D=
0+,D1-,D2-,D3hot+,D3cold+<wbr>)<br>
&gt; &gt; &gt; &gt; &gt; Status: D0 NoSoftRst+ PME-Enable- DSel=3D0 DScale=
=3D1 PME-<br>
&gt; &gt; &gt; &gt; &gt; Capabilities: [50] MSI: Enable- Count=3D1/1 Maskab=
le+ 64bit+<br>
&gt; &gt; &gt; &gt; &gt; Address: 0000000000000000=C2=A0 Data: 0000<br>
&gt; &gt; &gt; &gt; &gt; Masking: 00000000=C2=A0 Pending: 00000000<br>
&gt; &gt; &gt; &gt; &gt; Capabilities: [70] MSI-X: Enable+ Count=3D5 Masked=
-<br>
&gt; &gt; &gt; &gt; &gt; Vector table: BAR=3D3 offset=3D00000000<br>
&gt; &gt; &gt; &gt; &gt; PBA: BAR=3D3 offset=3D00002000<br>
&gt; &gt; &gt; &gt; &gt; Capabilities: [a0] Express (v2) Endpoint, MSI 00<b=
r>
&gt; &gt; &gt; &gt; &gt; DevCap: MaxPayload 512 bytes, PhantFunc 0, Latency=
 L0s &lt;512ns, L1 &lt;64us<br>
&gt; &gt; &gt; &gt; &gt; ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset+ Sl=
otPowerLimit 0.000W<br>
&gt; &gt; &gt; &gt; &gt; DevCtl: CorrErr+ NonFatalErr+ FatalErr+ UnsupReq+<=
br>
&gt; &gt; &gt; &gt; &gt; RlxdOrd+ ExtTag- PhantFunc- AuxPwr- NoSnoop+ FLRes=
et-<br>
&gt; &gt; &gt; &gt; &gt; MaxPayload 128 bytes, MaxReadReq 512 bytes<br>
&gt; &gt; &gt; &gt; &gt; DevSta: CorrErr- NonFatalErr- FatalErr- UnsupReq- =
AuxPwr+ TransPend-<br>
&gt; &gt; &gt; &gt; &gt; LnkCap: Port #3, Speed 2.5GT/s, Width x1, ASPM L0s=
 L1, Exit Latency<br>
&gt; &gt; &gt; &gt; &gt; L0s &lt;2us, L1 &lt;16us<br>
&gt; &gt; &gt; &gt; &gt; ClockPM- Surprise- LLActRep- BwNot- ASPMOptComp+<b=
r>
&gt; &gt; &gt; &gt; &gt; LnkCtl: ASPM L1 Enabled; RCB 64 bytes, Disabled- C=
ommClk+<br>
&gt; &gt; &gt; &gt; &gt; ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-<br>
&gt; &gt; &gt; &gt; &gt; LnkSta: Speed 2.5GT/s (ok), Width x1 (ok)<br>
&gt; &gt; &gt; &gt; &gt; TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-<=
br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; PCIe wise the connection is going to be pretty tight in=
 terms of<br>
&gt; &gt; &gt; &gt; bandwidth. It looks like we have 2.5GT/s with only a si=
ngle lane of<br>
&gt; &gt; &gt; &gt; PCIe. In addition we are running with ASPM enabled so t=
hat means that<br>
&gt; &gt; &gt; &gt; if we don&#39;t have enough traffic we are shutting off=
 the one PCIe lane<br>
&gt; &gt; &gt; &gt; we have so if we are getting bursty traffic that can ge=
t ugly.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Humm... is there a way to force disable ASPM in sysfs?<br>
&gt; &gt;<br>
&gt; &gt; Actually the easiest way to do this is to just use setpci.<br>
&gt; &gt;<br>
&gt; &gt; You should be able to dump the word containing the setting via:<b=
r>
&gt; &gt; # setpci -s 3:00.0 0xB0.w<br>
&gt; &gt; 0042<br>
&gt; &gt; # setpci -s 3:00.0 0xB0.w=3D0040<br>
&gt; &gt;<br>
&gt; &gt; Basically what you do is clear the lower 3 bits of the value so i=
n<br>
&gt; &gt; this case that means replacing the 2 with a 0 based on the output=
 of<br>
&gt; &gt; the first command.<br>
&gt;<br>
&gt; Well... I&#39;ll be damned... I used to force enable ASPM... this must=
 be<br>
&gt; related to the change in PCIe bus ASPM<br>
&gt; Perhaps disable ASPM if there is only one link?<br>
<br>
Is there any specific reason why you are enabling ASPM? Is this system<br>
a laptop where you are trying to conserve power when on battery? If<br>
not disabling it probably won&#39;t hurt things too much since the power<br=
>
consumption for a 2.5GT/s link operating in a width of one shouldn&#39;t<br=
>
bee too high. Otherwise you are likely going to end up paying the<br>
price for getting the interface out of L1 when the traffic goes idle<br>
so you are going to see flows that get bursty paying a heavy penalty<br>
when they start dropping packets.<br></blockquote><div><br></div><div>Ah, y=
ou misunderstand, I used to do this and everything worked - now Linux enabl=
es ASPM by default on all pcie controllers, so imho this should be a quirk,=
 if there is only one lane, don&#39;t do ASPM due to latency and timing iss=
ues...=C2=A0</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
It is also possible this could be something that changed with the<br>
physical PCIe link. Basically L1 works by powering down the link when<br>
idle, and then powering it back up when there is activity. The problem<br>
is bringing it back up can sometimes be a challenge when the physical<br>
link starts to go faulty. I know I have seen that in some cases it can<br>
even result in the device falling off of the PCIe bus if the link<br>
training fails.</blockquote><div><br></div><div>It works fine without ASPM =
(and the machine is pretty new)=C2=A0</div><div><br></div><div>I suspect we=
 hit some timing race with aggressive ASPM (assumed as such since it works =
on local links but doesn&#39;t on ~3 ms Links)</div><div>=C2=A0</div><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex">
&gt; [ ID] Interval=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Transfer=C2=A0 =
=C2=A0 =C2=A0Bitrate=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Retr=C2=A0 Cwnd<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A00.00-1.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0113 MByte=
s=C2=A0 =C2=A0950 Mbits/sec=C2=A0 =C2=A031=C2=A0 =C2=A0 710 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A01.00-2.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0110 MByte=
s=C2=A0 =C2=A0923 Mbits/sec=C2=A0 135=C2=A0 =C2=A0 626 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A02.00-3.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0112 MByte=
s=C2=A0 =C2=A0944 Mbits/sec=C2=A0 =C2=A018=C2=A0 =C2=A0 713 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A03.00-4.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0111 MByte=
s=C2=A0 =C2=A0933 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 798 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A04.00-5.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0111 MByte=
s=C2=A0 =C2=A0933 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 721 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A05.00-6.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0112 MByte=
s=C2=A0 =C2=A0944 Mbits/sec=C2=A0 =C2=A031=C2=A0 =C2=A0 800 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A06.00-7.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0111 MByte=
s=C2=A0 =C2=A0933 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 730 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A07.00-8.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0111 MByte=
s=C2=A0 =C2=A0933 Mbits/sec=C2=A0 =C2=A019=C2=A0 =C2=A0 730 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A08.00-9.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0111 MByte=
s=C2=A0 =C2=A0933 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 701 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A09.00-10.00=C2=A0 sec=C2=A0 =C2=A0112 MBytes=C2=
=A0 =C2=A0944 Mbits/sec=C2=A0 =C2=A012=C2=A0 =C2=A0 701 KBytes<br>
&gt; - - - - - - - - - - - - - - - - - - - - - - - - -<br>
&gt; [ ID] Interval=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Transfer=C2=A0 =
=C2=A0 =C2=A0Bitrate=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Retr<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A00.00-10.00=C2=A0 sec=C2=A0 1.09 GBytes=C2=A0 =
=C2=A0937 Mbits/sec=C2=A0 246=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0sender<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A00.00-10.01=C2=A0 sec=C2=A0 1.09 GBytes=C2=A0 =
=C2=A0933 Mbits/sec=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 receiver<br>
&gt;<br>
&gt; [ ID] Interval=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Transfer=C2=A0 =
=C2=A0 =C2=A0Bitrate=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Retr=C2=A0 Cwnd<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A00.00-1.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0114 MByte=
s=C2=A0 =C2=A0956 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 749 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A01.00-2.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0111 MByte=
s=C2=A0 =C2=A0933 Mbits/sec=C2=A0 =C2=A030=C2=A0 =C2=A0 766 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A02.00-3.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0112 MByte=
s=C2=A0 =C2=A0944 Mbits/sec=C2=A0 =C2=A0 7=C2=A0 =C2=A0 749 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A03.00-4.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0111 MByte=
s=C2=A0 =C2=A0933 Mbits/sec=C2=A0 =C2=A011=C2=A0 =C2=A0 707 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A04.00-5.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0111 MByte=
s=C2=A0 =C2=A0933 Mbits/sec=C2=A0 =C2=A0 2=C2=A0 =C2=A0 699 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A05.00-6.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0111 MByte=
s=C2=A0 =C2=A0933 Mbits/sec=C2=A0 =C2=A0 8=C2=A0 =C2=A0 699 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A06.00-7.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0112 MByte=
s=C2=A0 =C2=A0944 Mbits/sec=C2=A0 =C2=A0 1=C2=A0 =C2=A0 953 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A07.00-8.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0111 MByte=
s=C2=A0 =C2=A0933 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 701 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A08.00-9.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0111 MByte=
s=C2=A0 =C2=A0933 Mbits/sec=C2=A0 =C2=A026=C2=A0 =C2=A0 707 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A09.00-10.00=C2=A0 sec=C2=A0 =C2=A0112 MBytes=C2=
=A0 =C2=A0944 Mbits/sec=C2=A0 =C2=A0 2=C2=A0 =C2=A01.07 MBytes<br>
&gt; - - - - - - - - - - - - - - - - - - - - - - - - -<br>
&gt; [ ID] Interval=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Transfer=C2=A0 =
=C2=A0 =C2=A0Bitrate=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Retr<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A00.00-10.00=C2=A0 sec=C2=A0 1.09 GBytes=C2=A0 =
=C2=A0939 Mbits/sec=C2=A0 =C2=A087=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0sender<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A00.00-10.00=C2=A0 sec=C2=A0 1.09 GBytes=C2=A0 =
=C2=A0934 Mbits/sec=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 receiver<br>
&gt;<br>
&gt; [ ID] Interval=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Transfer=C2=A0 =
=C2=A0 =C2=A0Bitrate=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Retr=C2=A0 Cwnd<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A00.00-1.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0114 MByte=
s=C2=A0 =C2=A0953 Mbits/sec=C2=A0 =C2=A016=C2=A0 =C2=A0 908 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A01.00-2.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0112 MByte=
s=C2=A0 =C2=A0944 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 693 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A02.00-3.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0111 MByte=
s=C2=A0 =C2=A0933 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 713 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A03.00-4.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0111 MByte=
s=C2=A0 =C2=A0933 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 687 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A04.00-5.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0112 MByte=
s=C2=A0 =C2=A0944 Mbits/sec=C2=A0 =C2=A015=C2=A0 =C2=A0 687 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A05.00-6.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0111 MByte=
s=C2=A0 =C2=A0933 Mbits/sec=C2=A0 =C2=A0 2=C2=A0 =C2=A0 888 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A06.00-7.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0111 MByte=
s=C2=A0 =C2=A0933 Mbits/sec=C2=A0 =C2=A017=C2=A0 =C2=A0 696 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A07.00-8.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0111 MByte=
s=C2=A0 =C2=A0933 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 758 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A08.00-9.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0111 MByte=
s=C2=A0 =C2=A0933 Mbits/sec=C2=A0 =C2=A031=C2=A0 =C2=A0 749 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A09.00-10.00=C2=A0 sec=C2=A0 =C2=A0112 MBytes=C2=
=A0 =C2=A0944 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 792 KBytes<br>
&gt; - - - - - - - - - - - - - - - - - - - - - - - - -<br>
&gt; [ ID] Interval=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Transfer=C2=A0 =
=C2=A0 =C2=A0Bitrate=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Retr<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A00.00-10.00=C2=A0 sec=C2=A0 1.09 GBytes=C2=A0 =
=C2=A0938 Mbits/sec=C2=A0 =C2=A081=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0sender<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A00.00-10.00=C2=A0 sec=C2=A0 1.09 GBytes=C2=A0 =
=C2=A0934 Mbits/sec=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 receiver<br>
&gt;<br>
&gt; [ ID] Interval=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Transfer=C2=A0 =
=C2=A0 =C2=A0Bitrate=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Retr=C2=A0 Cwnd<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A00.00-1.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0114 MByte=
s=C2=A0 =C2=A0956 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 747 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A01.00-2.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0111 MByte=
s=C2=A0 =C2=A0933 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 744 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A02.00-3.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0112 MByte=
s=C2=A0 =C2=A0944 Mbits/sec=C2=A0 =C2=A012=C2=A0 =C2=A01.18 MBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A03.00-4.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0111 MByte=
s=C2=A0 =C2=A0933 Mbits/sec=C2=A0 =C2=A0 2=C2=A0 =C2=A0 699 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A04.00-5.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0111 MByte=
s=C2=A0 =C2=A0933 Mbits/sec=C2=A0 =C2=A028=C2=A0 =C2=A0 699 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A05.00-6.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0112 MByte=
s=C2=A0 =C2=A0944 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 684 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A06.00-7.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0111 MByte=
s=C2=A0 =C2=A0933 Mbits/sec=C2=A0 =C2=A0 0=C2=A0 =C2=A0 741 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A07.00-8.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0111 MByte=
s=C2=A0 =C2=A0933 Mbits/sec=C2=A0 =C2=A0 3=C2=A0 =C2=A0 687 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A08.00-9.00=C2=A0 =C2=A0sec=C2=A0 =C2=A0111 MByte=
s=C2=A0 =C2=A0933 Mbits/sec=C2=A0 =C2=A022=C2=A0 =C2=A0 699 KBytes<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A09.00-10.00=C2=A0 sec=C2=A0 =C2=A0111 MBytes=C2=
=A0 =C2=A0933 Mbits/sec=C2=A0 =C2=A011=C2=A0 =C2=A0 707 KBytes<br>
&gt; - - - - - - - - - - - - - - - - - - - - - - - - -<br>
&gt; [ ID] Interval=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Transfer=C2=A0 =
=C2=A0 =C2=A0Bitrate=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Retr<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A00.00-10.00=C2=A0 sec=C2=A0 1.09 GBytes=C2=A0 =
=C2=A0938 Mbits/sec=C2=A0 =C2=A078=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0sender<br>
&gt; [=C2=A0 5]=C2=A0 =C2=A00.00-10.01=C2=A0 sec=C2=A0 1.09 GBytes=C2=A0 =
=C2=A0934 Mbits/sec=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 receiver<br>
&gt; ---<br>
&gt;<br>
&gt; ethtool -S enp3s0 |grep -v &quot;: 0&quot;<br>
&gt; NIC statistics:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 rx_packets: 16303520<br>
&gt;=C2=A0 =C2=A0 =C2=A0 tx_packets: 21602840<br>
&gt;=C2=A0 =C2=A0 =C2=A0 rx_bytes: 15711958157<br>
&gt;=C2=A0 =C2=A0 =C2=A0 tx_bytes: 25599009212<br>
&gt;=C2=A0 =C2=A0 =C2=A0 rx_broadcast: 122212<br>
&gt;=C2=A0 =C2=A0 =C2=A0 tx_broadcast: 530<br>
&gt;=C2=A0 =C2=A0 =C2=A0 rx_multicast: 333489<br>
&gt;=C2=A0 =C2=A0 =C2=A0 tx_multicast: 18446<br>
&gt;=C2=A0 =C2=A0 =C2=A0 multicast: 333489<br>
&gt;=C2=A0 =C2=A0 =C2=A0 rx_missed_errors: 270143<br>
&gt;=C2=A0 =C2=A0 =C2=A0 rx_long_length_errors: 6<br>
&gt;=C2=A0 =C2=A0 =C2=A0 tx_tcp_seg_good: 1342561<br>
&gt;=C2=A0 =C2=A0 =C2=A0 rx_long_byte_count: 15711958157<br>
&gt;=C2=A0 =C2=A0 =C2=A0 rx_errors: 6<br>
&gt;=C2=A0 =C2=A0 =C2=A0 rx_length_errors: 6<br>
&gt;=C2=A0 =C2=A0 =C2=A0 rx_fifo_errors: 270143<br>
&gt;=C2=A0 =C2=A0 =C2=A0 tx_queue_0_packets: 8963830<br>
&gt;=C2=A0 =C2=A0 =C2=A0 tx_queue_0_bytes: 9803196683<br>
&gt;=C2=A0 =C2=A0 =C2=A0 tx_queue_0_restart: 4920<br>
&gt;=C2=A0 =C2=A0 =C2=A0 tx_queue_1_packets: 12639010<br>
&gt;=C2=A0 =C2=A0 =C2=A0 tx_queue_1_bytes: 15706576814<br>
&gt;=C2=A0 =C2=A0 =C2=A0 tx_queue_1_restart: 12718<br>
&gt;=C2=A0 =C2=A0 =C2=A0 rx_queue_0_packets: 16303520<br>
&gt;=C2=A0 =C2=A0 =C2=A0 rx_queue_0_bytes: 15646744077<br>
&gt;=C2=A0 =C2=A0 =C2=A0 rx_queue_0_csum_err: 76<br>
<br>
Okay, so this result still has the same length and checksum errors,<br>
were you resetting the system/statistics between runs?<br>
</blockquote><div><br></div><div>Ah, no.... Will reset and do more tests wh=
en I&#39;m back home</div><div>=C2=A0</div>

--000000000000a8370105aa9104c1--

--===============6751935026818180792==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6751935026818180792==--
