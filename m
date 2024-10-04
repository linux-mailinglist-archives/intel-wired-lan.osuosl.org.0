Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E92E990612
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2024 16:29:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0667561053;
	Fri,  4 Oct 2024 14:29:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o84jQ6o--xlo; Fri,  4 Oct 2024 14:29:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 28C6260F79
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728052173;
	bh=rYRKMpJ4OBC0LQYCHSn1P6nBU6dgmdu8HhUM6MMa+jE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lzjj7mYV2M6SNKBHLAxccp0czDpWWzVIE5M2rcsWUiSH8XYPmeBts95bcae+yh2VA
	 dpNCGZaazjnzgOU31R6mpB5O0dd1yj9xaLqAelWJhry7cnqXsXnUWepqJQl7sUUp5N
	 FYp6JqSwEUtyqQPmCmt13duzeuY6nPOePnN0hlOYANBwyYUSvnjimM18WL4TK0hoWH
	 a5SAH3sGI1P24CeqrFOD+RxyHD/EuEVzDSj311LrStijNJXtDtfDnB/FnZUkk7nTeg
	 XDHw1mYNTVqc+eO9GdR0WB3Pyo/9PQTVJ955SPWypgXA7723lhS461QAnt4KMLaSTo
	 hBMAXwatRXj1Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 28C6260F79;
	Fri,  4 Oct 2024 14:29:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A6E4E1BF82C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 14:29:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A1445406B2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 14:29:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8YxH-2pOGzsa for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Oct 2024 14:29:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::430; helo=mail-wr1-x430.google.com;
 envelope-from=afabre@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6381240491
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6381240491
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6381240491
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 14:29:28 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id
 ffacd0b85a97d-37cc810ce73so1329474f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Oct 2024 07:29:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728052166; x=1728656966;
 h=in-reply-to:references:subject:cc:to:from:message-id:date
 :content-transfer-encoding:mime-version:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=rYRKMpJ4OBC0LQYCHSn1P6nBU6dgmdu8HhUM6MMa+jE=;
 b=xNT2ZsHtNm5Aekh8KoAaAeAliWrPfHNQwAE4NP8cY36LzvfX+t8Z0iw2rmgK1tkvTG
 PLcaF4L8R9cxYW1k7awZ6G7mA4IEkacyFp6OcmvwbBtr7vZixcB/ycns+waGkqIx/SUM
 kQjFFPwp5q8vylaQEzVq5L172SvvOAojafBh/XE9NB0ENNoOFxmQPqKTPW6OeTQKH6AB
 +Z9ztCoSMQuvoGsKBwR1nvAngw5nfwGvlkOo5b1Z11rKMEROWxTQEOew+wNg56ymUM6q
 WlxKbFdwpJB5WL/8/o6zZQ6oIXKjFNCTvbVs4vzz95pnbfWhoOJS93FkdQuVX785XPHh
 ++HA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVnXiq648+tXFTpW74fHzY74mCzVj6PUQxqRneQRJ4l6Ro+0b+YomUy32qpu0V2tEsazjWWYdd0Q3S8sX3dTHA=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwqlZuc0QO1fiEiCUzbO17haN0UnR/9ZBfhfuAhrtrxyoFwQm04
 b1xrrC/mXm1k2FbenXuI3GvuPLlIdB1LYjbuJgeVU3yz5BjiW3mtM9AM2GUrFnk=
X-Google-Smtp-Source: AGHT+IGfwB1d0G2mnqATVG3785KhqOhSttTikbEtmWl9Q33QYeDl/m5n3wD4HEhVBVCt8hb+z5i61A==
X-Received: by 2002:a05:6000:1866:b0:37c:c870:b454 with SMTP id
 ffacd0b85a97d-37d0e8f708fmr2201971f8f.49.1728052165950; 
 Fri, 04 Oct 2024 07:29:25 -0700 (PDT)
Received: from localhost ([2a09:bac1:27c0:58::31:92])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42f86a1f42esm17045225e9.4.2024.10.04.07.29.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 04 Oct 2024 07:29:25 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 04 Oct 2024 16:29:23 +0200
Message-Id: <D4N3D8N0MUJE.2X8G8YM8UMA3N@bobby>
From: "Arthur Fabre" <afabre@cloudflare.com>
To: "Lorenzo Bianconi" <lorenzo@kernel.org>, "Jesper Dangaard Brouer"
 <hawk@kernel.org>
X-Mailer: aerc 0.8.2
References: <87zfnnq2hs.fsf@toke.dk> <Zv18pxsiTGTZSTyO@mini-arch>
 <87ttdunydz.fsf@toke.dk> <Zv3N5G8swr100EXm@mini-arch>
 <D4LYNKGLE7G0.3JAN5MX1ATPTB@bobby> <Zv794Ot-kOq1pguM@mini-arch>
 <2fy5vuewgwkh3o3mx5v4bkrzu6josqylraa4ocgzqib6a7ozt4@hwsuhcibtcb6>
 <038fffa3-1e29-4c6d-9e27-8181865dca46@kernel.org>
 <D4N2N1YKKI54.1WAGONIYZH0Y4@bobby>
 <75fb1dd3-fe14-426c-bc59-9a582c4b0e8d@kernel.org>
 <Zv_5KdpkaYY-6z1f@lore-desk>
In-Reply-To: <Zv_5KdpkaYY-6z1f@lore-desk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1728052166; x=1728656966;
 darn=lists.osuosl.org; 
 h=in-reply-to:references:subject:cc:to:from:message-id:date
 :content-transfer-encoding:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=rYRKMpJ4OBC0LQYCHSn1P6nBU6dgmdu8HhUM6MMa+jE=;
 b=WFS21+kgK+OLxU3BvqQophZaA/rmD/cQuz03IEVejYLegYEQh6HQBH80mTuFL49e3D
 VYzYAnItSSl3cc1iQMW1zMBRAjAi9Li2nHpTiey0BksdzNajuP4CDfeLB7cDY5raqRWK
 EGWlxj9+q+4Ey/Kj6j5vh4DV9SwTf2zfH047QElonbqcyj8/dvX8jLhAEj+saDS6bueR
 bSphTGkt8+BtUJEBsCQdkTnCgyaRenASNyG7JYVmTjyKH/G+L/vW9+ody9AN7fMC4jiI
 B7GnBvPyZbC5VsGQnG6zLvJW6YLyM/LMM4BMHikLj8g2Egro/JPOeodsVE5p4fcNS/FT
 jQ6Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=WFS21+kg
Subject: Re: [Intel-wired-lan] [RFC bpf-next 0/4] Add XDP rx hw hints
 support performing XDP_REDIRECT
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
Cc: mst@redhat.com, jasowang@redhat.com, ast@kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, Jakub
 Sitnicki <jakub@cloudflare.com>, daniel@iogearbox.net,
 kernel-team <kernel-team@cloudflare.com>, przemyslaw.kitszel@intel.com,
 john.fastabend@gmail.com, sdf@fomichev.me, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, pabeni@redhat.com, Yan Zhai <yan@cloudflare.com>,
 Stanislav Fomichev <stfomichev@gmail.com>, alexandre.torgue@foss.st.com,
 Daniel Xu <dxu@dxuuu.xyz>, netdev@vger.kernel.org,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 tariqt@nvidia.com, Alexander Lobakin <aleksander.lobakin@intel.com>,
 mcoquelin.stm32@gmail.com, bpf@vger.kernel.org, saeedm@nvidia.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri Oct 4, 2024 at 4:18 PM CEST, Lorenzo Bianconi wrote:
> On Oct 04, Jesper Dangaard Brouer wrote:
> > On 04/10/2024 15.55, Arthur Fabre wrote:
> > > On Fri Oct 4, 2024 at 12:38 PM CEST, Jesper Dangaard Brouer wrote:
> > > > [...]
> > > > > > > There are two different use-cases for the metadata:
> > > > > > >=20
> > > > > > > * "Hardware" metadata (like the hash, rx_timestamp...). There=
 are only a
> > > > > > >     few well known fields, and only XDP can access them to se=
t them as
> > > > > > >     metadata, so storing them in a struct somewhere could mak=
e sense.
> > > > > > >=20
> > > > > > > * Arbitrary metadata used by services. Eg a TC filter could s=
et a field
> > > > > > >     describing which service a packet is for, and that could =
be reused for
> > > > > > >     iptables, routing, socket dispatch...
> > > > > > >     Similarly we could set a "packet_id" field that uniquely =
identifies a
> > > > > > >     packet so we can trace it throughout the network stack (t=
hrough
> > > > > > >     clones, encap, decap, userspace services...).
> > > > > > >     The skb->mark, but with more room, and better support for=
 sharing it.
> > > > > > >=20
> > > > > > > We can only know the layout ahead of time for the first one. =
And they're
> > > > > > > similar enough in their requirements (need to be stored somew=
here in the
> > > > > > > SKB, have a way of retrieving each one individually, that it =
seems to
> > > > > > > make sense to use a common API).
> > > > > >=20
> > > > > > Why not have the following layout then?
> > > > > >=20
> > > > > > +---------------+-------------------+--------------------------=
--------------+------+
> > > > > > | more headroom | user-defined meta | hw-meta (potentially fixe=
d skb format) | data |
> > > > > > +---------------+-------------------+--------------------------=
--------------+------+
> > > > > >                   ^                                            =
                ^
> > > > > >               data_meta                                        =
              data
> > > > > >=20
> > > > > > You obviously still have a problem of communicating the layout =
if you
> > > > > > have some redirects in between, but you, in theory still have t=
his
> > > > > > problem with user-defined metadata anyway (unless I'm missing
> > > > > > something).
> > > > > >=20
> > > >=20
> > > > Hmm, I think you are missing something... As far as I'm concerned w=
e are
> > > > discussing placing the KV data after the xdp_frame, and not in the =
XDP
> > > > data_meta area (as your drawing suggests).  The xdp_frame is stored=
 at
> > > > the very top of the headroom.  Lorenzo's patchset is extending stru=
ct
> > > > xdp_frame and now we are discussing to we can make a more flexible =
API
> > > > for extending this. I understand that Toke confirmed this here [3].=
  Let
> > > > me know if I missed something :-)
> > > >=20
> > > >    [3] https://lore.kernel.org/all/874j62u1lb.fsf@toke.dk/
> > > >=20
> > > > As part of designing this flexible API, we/Toke are trying hard not=
 to
> > > > tie this to a specific data area.  This is a good API design, keepi=
ng it
> > > > flexible enough that we can move things around should the need aris=
e.
> > >=20
> > > +1. And if we have an API for doing this for user-defined metadata, i=
t
> > > seems like we might as well use it for hardware metadata too.
> > >=20
> > > With something roughly like:
> > >=20
> > >      *val get(id)
> > >=20
> > >      set(id, *val)
> > >=20
> > > with pre-defined ids for hardware metadata, consumers don't need to k=
now
> > > the layout, or where / how the data is stored.
> > >=20
> > > Under the hood we can implement it however we want, and change it in =
the
> > > future.
> > >=20
> > > I was initially thinking we could store hardware metadata the same wa=
y
> > > as user defined metadata, but Toke and Lorenzo seem to prefer storing=
 it
> > > in a fixed struct.
> >=20
> > If the API hide the actual location then we can always move things
> > around, later.  If your popcnt approach is fast enough, then IMO we
> > don't need a fixed struct for hardware metadata.
>
> +1. I am fine with the KV approach for nic metadata as well if it is fast=
 enough.

Great! That's simpler. I should have something for Jesper to benchmark
on Monday.

> If you want I can modify my series to use kfunc sto store data after xdp_=
frame
> and then you can plug the KV encoding. What do you think? Up to you.

Thanks for the offer! That works for me :)
