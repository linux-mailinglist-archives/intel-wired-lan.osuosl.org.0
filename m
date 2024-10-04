Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A1A9905D0
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2024 16:18:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A0F1F60F79;
	Fri,  4 Oct 2024 14:18:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wqv-De06iMKW; Fri,  4 Oct 2024 14:18:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 30A9660FEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728051504;
	bh=ZaTN8kgaHJ+Dc9fMSPpd6NXRYnJru5YliWAyPGq6SAA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2duIYkwsUmbHiHDPlkgM7I3ad12ysmWCU3pHN5jbaAoB6+cd9tFGEMYJwYgk/WTXw
	 ULxrWgbiKGlZMzprUgUu1PR3Q+Fd8r3HTr8yvQp0Sh32M6q0hvb0sdUCFiMxhqcZTy
	 buaVtjicHe3NEjHzdY13YQ9weo1IrS6CTXftrHZ8VpNDqGkmmLFqVJzsEIUALyfIq0
	 evEYiE55uwEQKuMPuLQoEqTddoEbAO4ANbIXd0Acb+gZk/S5qMrIJB9Nc0P2b/acPE
	 ojAaAAKI1+YTiABhrOuXqN1kYJBlU590WRW5nslXlZobEXLkuIpT0Nt6OWSR4d9PrF
	 hY1fm+ylAx5tQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 30A9660FEF;
	Fri,  4 Oct 2024 14:18:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6FCBF1BF82C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 14:18:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5D4484022B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 14:18:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r5IK8GGpnHkU for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Oct 2024 14:18:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=lorenzo@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C3FBA400F1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C3FBA400F1
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C3FBA400F1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 14:18:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 4C449A449F1;
 Fri,  4 Oct 2024 14:18:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E46E9C4CEC7;
 Fri,  4 Oct 2024 14:18:18 +0000 (UTC)
Date: Fri, 4 Oct 2024 16:18:17 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Jesper Dangaard Brouer <hawk@kernel.org>
Message-ID: <Zv_5KdpkaYY-6z1f@lore-desk>
References: <87zfnnq2hs.fsf@toke.dk> <Zv18pxsiTGTZSTyO@mini-arch>
 <87ttdunydz.fsf@toke.dk> <Zv3N5G8swr100EXm@mini-arch>
 <D4LYNKGLE7G0.3JAN5MX1ATPTB@bobby> <Zv794Ot-kOq1pguM@mini-arch>
 <2fy5vuewgwkh3o3mx5v4bkrzu6josqylraa4ocgzqib6a7ozt4@hwsuhcibtcb6>
 <038fffa3-1e29-4c6d-9e27-8181865dca46@kernel.org>
 <D4N2N1YKKI54.1WAGONIYZH0Y4@bobby>
 <75fb1dd3-fe14-426c-bc59-9a582c4b0e8d@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="sMZhZyVlOLBRigTk"
Content-Disposition: inline
In-Reply-To: <75fb1dd3-fe14-426c-bc59-9a582c4b0e8d@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1728051499;
 bh=4kvEOwxD0KmLhLBIGFcwqKxiF4pucCN8YvTgTZKsDI8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ARk+eqzgybEFCfVHWaZ6qsXg76DeOz71DtgJenZKfH6b5n6jpJg6xJzQFdIZbz4I5
 wpBWv946XypX9e7sWnA6R86JpqACnBrmRg6R8PNW7SAdfbcB7mSpsECNInSPZLjz/m
 KaDxVspmPFt70vU3GsiYzfHYxhTUE/GS5+5W8DZbnoDLMAYx6iwGx4ySOLqnzjoWTH
 TURLJGUGIPM8hA+yQQNOl8MQo4H3d6DgnmnQmzkkl/W/CdwNeMkD0pMdI/lB38Az1i
 uyD+5+vSdlT45l1H0uTGkeq3i+q27J587ayxa0F4m3PtFBR5XUN4/mWuh1zW7PGXbL
 TlCCaH3LcQIyQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ARk+eqzg
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
 anthony.l.nguyen@intel.com, Jakub Sitnicki <jakub@cloudflare.com>,
 daniel@iogearbox.net, kernel-team <kernel-team@cloudflare.com>,
 przemyslaw.kitszel@intel.com, john.fastabend@gmail.com, sdf@fomichev.me,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 Yan Zhai <yan@cloudflare.com>, Stanislav Fomichev <stfomichev@gmail.com>,
 alexandre.torgue@foss.st.com, Daniel Xu <dxu@dxuuu.xyz>,
 Arthur Fabre <afabre@cloudflare.com>, netdev@vger.kernel.org,
 Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>,
 tariqt@nvidia.com, Alexander Lobakin <aleksander.lobakin@intel.com>,
 mcoquelin.stm32@gmail.com, bpf@vger.kernel.org, saeedm@nvidia.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--sMZhZyVlOLBRigTk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Oct 04, Jesper Dangaard Brouer wrote:
>=20
>=20
> On 04/10/2024 15.55, Arthur Fabre wrote:
> > On Fri Oct 4, 2024 at 12:38 PM CEST, Jesper Dangaard Brouer wrote:
> > > [...]
> > > > > > There are two different use-cases for the metadata:
> > > > > >=20
> > > > > > * "Hardware" metadata (like the hash, rx_timestamp...). There a=
re only a
> > > > > >     few well known fields, and only XDP can access them to set =
them as
> > > > > >     metadata, so storing them in a struct somewhere could make =
sense.
> > > > > >=20
> > > > > > * Arbitrary metadata used by services. Eg a TC filter could set=
 a field
> > > > > >     describing which service a packet is for, and that could be=
 reused for
> > > > > >     iptables, routing, socket dispatch...
> > > > > >     Similarly we could set a "packet_id" field that uniquely id=
entifies a
> > > > > >     packet so we can trace it throughout the network stack (thr=
ough
> > > > > >     clones, encap, decap, userspace services...).
> > > > > >     The skb->mark, but with more room, and better support for s=
haring it.
> > > > > >=20
> > > > > > We can only know the layout ahead of time for the first one. An=
d they're
> > > > > > similar enough in their requirements (need to be stored somewhe=
re in the
> > > > > > SKB, have a way of retrieving each one individually, that it se=
ems to
> > > > > > make sense to use a common API).
> > > > >=20
> > > > > Why not have the following layout then?
> > > > >=20
> > > > > +---------------+-------------------+----------------------------=
------------+------+
> > > > > | more headroom | user-defined meta | hw-meta (potentially fixed =
skb format) | data |
> > > > > +---------------+-------------------+----------------------------=
------------+------+
> > > > >                   ^                                              =
              ^
> > > > >               data_meta                                          =
            data
> > > > >=20
> > > > > You obviously still have a problem of communicating the layout if=
 you
> > > > > have some redirects in between, but you, in theory still have this
> > > > > problem with user-defined metadata anyway (unless I'm missing
> > > > > something).
> > > > >=20
> > >=20
> > > Hmm, I think you are missing something... As far as I'm concerned we =
are
> > > discussing placing the KV data after the xdp_frame, and not in the XDP
> > > data_meta area (as your drawing suggests).  The xdp_frame is stored at
> > > the very top of the headroom.  Lorenzo's patchset is extending struct
> > > xdp_frame and now we are discussing to we can make a more flexible API
> > > for extending this. I understand that Toke confirmed this here [3].  =
Let
> > > me know if I missed something :-)
> > >=20
> > >    [3] https://lore.kernel.org/all/874j62u1lb.fsf@toke.dk/
> > >=20
> > > As part of designing this flexible API, we/Toke are trying hard not to
> > > tie this to a specific data area.  This is a good API design, keeping=
 it
> > > flexible enough that we can move things around should the need arise.
> >=20
> > +1. And if we have an API for doing this for user-defined metadata, it
> > seems like we might as well use it for hardware metadata too.
> >=20
> > With something roughly like:
> >=20
> >      *val get(id)
> >=20
> >      set(id, *val)
> >=20
> > with pre-defined ids for hardware metadata, consumers don't need to know
> > the layout, or where / how the data is stored.
> >=20
> > Under the hood we can implement it however we want, and change it in the
> > future.
> >=20
> > I was initially thinking we could store hardware metadata the same way
> > as user defined metadata, but Toke and Lorenzo seem to prefer storing it
> > in a fixed struct.
>=20
> If the API hide the actual location then we can always move things
> around, later.  If your popcnt approach is fast enough, then IMO we
> don't need a fixed struct for hardware metadata.

+1. I am fine with the KV approach for nic metadata as well if it is fast e=
nough.
If you want I can modify my series to use kfunc sto store data after xdp_fr=
ame
and then you can plug the KV encoding. What do you think? Up to you.

Regards,
Lorenzo

>=20
> --Jesper

--sMZhZyVlOLBRigTk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZv/5KQAKCRA6cBh0uS2t
rK2oAQDNbiLhK1nE9+UoEM0jzz+0frq4p/JrgIjOzg5/mzElBwD6AxE86bij0lLW
fseZvIVZ8CKu08MMvL0UTI928vc0aAk=
=JprQ
-----END PGP SIGNATURE-----

--sMZhZyVlOLBRigTk--
