Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0722398A116
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 13:49:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 729C680E32;
	Mon, 30 Sep 2024 11:49:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IQ4O3O0NRaZz; Mon, 30 Sep 2024 11:49:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 662D880ED7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727696961;
	bh=Y3ULfGaWJ4RVBixHJMwVyD5UC8s/yC2Ai7a/hL9JB1o=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0OsjYmoZfbmPcCLrOCICecCIVvHPLIwvxQNyTsqy/GdhkePqkInGBlPgc8fLY3X8j
	 r+X04j6MB8RmGW1dd2uR51ghb1yfcER3IHv9OXHvgeVfLEo6nUmraMFIhTaO5KsbKr
	 ggjxPW2MXy3ByTmYe1rWnSGuxRALxD59egdwaRoQA1D+F1D6fyNGhj3x523zAwNUKN
	 vGnb3RqgLyQvNJUfEJPMEkRVuVTZsm9naZxjQ4JupMqrmZ6QWPEG1BK5ptz2F24yv2
	 37ovxSjQdpnWFlqxFz/O1BX8xjpMwKoxuqiH5zo/3En3kkU7evtbILCj3QHtnmPH7A
	 FaLe0tGd0hF3Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 662D880ED7;
	Mon, 30 Sep 2024 11:49:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 437B91BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 11:49:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3EA8A6059B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 11:49:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HtWm4eEeAhO2 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 11:49:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=lorenzo@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6BF8C600C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6BF8C600C6
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6BF8C600C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 11:49:18 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id ED0775C03DF;
 Mon, 30 Sep 2024 11:49:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36EFDC4CEC7;
 Mon, 30 Sep 2024 11:49:16 +0000 (UTC)
Date: Mon, 30 Sep 2024 13:49:14 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>
Message-ID: <ZvqQOpqnK9hBmXNn@lore-desk>
References: <09657be6-b5e2-4b5a-96b6-d34174aadd0a@kernel.org>
 <Zu_gvkXe4RYjJXtq@lore-desk> <87ldzkndqk.fsf@toke.dk>
 <CAOn4ftshf3pyAst27C2haaSj4eR2n34_pcwWBc5o3zHBkwRb3g@mail.gmail.com>
 <87wmiysi37.fsf@toke.dk> <D4GBY7CHJNJ6.3O18I5W1FTPKR@bobby>
 <87ldzds8bp.fsf@toke.dk> <D4H5CAN4O95E.3KF8LAH75FYD4@bobby>
 <ZvbKDT-2xqx2unrx@lore-rh-laptop> <871q11s91e.fsf@toke.dk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="GQ4+YiJqd2ay7ThK"
Content-Disposition: inline
In-Reply-To: <871q11s91e.fsf@toke.dk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1727696956;
 bh=LdMjeWOvWQmXsFOhFljZfMzxfLvHYOZPCl97KMG/8oU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZWN0ibqQxBa9ir+uHeF6E3sKHf5StyJomm75FIZRoE3KpNG2zjD+YJafRUJzZbNVY
 oZBfEhrlIM0WQuFp4iVP8NQpkDkJrN9rV2qljAmzjI5a2jq8MuhYcN+Hfdf8BVjjXK
 gHeSJwU7foyOmKlq/3KznzjFgQ4WgqtVXe21J/4/iLBAEMZVcDoACTBTvhgKGmG6G2
 i3umOgeNLlVliUZMCgktr/OrYjH3Q1m0cM5bZlCIpbEXaSJDhWueSmNLRDifpZBQ81
 N1TPpS82JemMksVtMVFaxoLBO/OOun+GZCrwO4jFnXnanlGB+Os5kFCdNjejm6t4IQ
 ci0tpg/YFGeZQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ZWN0ibqQ
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
 anthony.l.nguyen@intel.com, Yan Zhai <yan@cloudflare.com>,
 Jakub Sitnicki <jakub@cloudflare.com>, daniel@iogearbox.net,
 kernel-team <kernel-team@cloudflare.com>, przemyslaw.kitszel@intel.com,
 john.fastabend@gmail.com, sdf@fomichev.me, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, pabeni@redhat.com, Jesper Dangaard Brouer <hawk@kernel.org>,
 alexandre.torgue@foss.st.com, Arthur Fabre <afabre@cloudflare.com>,
 netdev@vger.kernel.org, tariqt@nvidia.com,
 Alexander Lobakin <aleksander.lobakin@intel.com>, mcoquelin.stm32@gmail.com,
 bpf@vger.kernel.org, saeedm@nvidia.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--GQ4+YiJqd2ay7ThK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> Lorenzo Bianconi <lorenzo@kernel.org> writes:
>=20
> >> > We could combine such a registration API with your header format, so
> >> > that the registration just becomes a way of allocating one of the ke=
ys
> >> > from 0-63 (and the registry just becomes a global copy of the header=
).
> >> > This would basically amount to moving the "service config file" into=
 the
> >> > kernel, since that seems to be the only common denominator we can re=
ly
> >> > on between BPF applications (as all attempts to write a common daemon
> >> > for BPF management have shown).
> >>=20
> >> That sounds reasonable. And I guess we'd have set() check the global
> >> registry to enforce that the key has been registered beforehand?
> >>=20
> >> >
> >> > -Toke
> >>=20
> >> Thanks for all the feedback!
> >
> > I like this 'fast' KV approach but I guess we should really evaluate its
> > impact on performances (especially for xdp) since, based on the kfunc c=
alls
> > order in the ebpf program, we can have one or multiple memmove/memcpy f=
or
> > each packet, right?
>=20
> Yes, with Arthur's scheme, performance will be ordering dependent. Using
> a global registry for offsets would sidestep this, but have the
> synchronisation issues we discussed up-thread. So on balance, I think
> the memmove() suggestion will probably lead to the least pain.
>=20
> For the HW metadata we could sidestep this by always having a fixed
> struct for it (but using the same set/get() API with reserved keys). The
> only drawback of doing that is that we statically reserve a bit of
> space, but I'm not sure that is such a big issue in practice (at least
> not until this becomes to popular that the space starts to be contended;
> but surely 256 bytes ought to be enough for everybody, right? :)).

I am fine with the proposed approach, but I think we need to verify what is=
 the
impact on performances (in the worst case??)

>=20
> > Moreover, I still think the metadata area in the xdp_frame/xdp_buff is =
not
> > so suitable for nic hw metadata since:
> > - it grows backward=20
> > - it is probably in a different cacheline with respect to xdp_frame
> > - nic hw metadata will not start at fixed and immutable address, but it=
 depends
> >   on the running ebpf program
> >
> > What about having something like:
> > - fixed hw nic metadata: just after xdp_frame struct (or if you want at=
 the end
> >   of the metadata area :)). Here he can reuse the same KV approach if i=
t is fast
> > - user defined metadata: in the metadata area of the xdp_frame/xdp_buff
>=20
> AFAIU, none of this will live in the (current) XDP metadata area. It
> will all live just after the xdp_frame struct (so sharing the space with
> the metadata area in the sense that adding more metadata kv fields will
> decrease the amount of space that is usable by the current XDP metadata
> APIs).
>=20
> -Toke
>=20

ah, ok. I was thinking the proposed approach was to put them in the current
metadata field.

Regards,
Lorenzo

--GQ4+YiJqd2ay7ThK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZvqQOgAKCRA6cBh0uS2t
rGkuAQCmulofR6KOgXgxkWcGibFa1jwuC0775cIm7T7UJF/UGgD+LckA1Ajz0mTw
JthRYUOaufHS5mqZINS8eYzxUnCRwgo=
=HK1x
-----END PGP SIGNATURE-----

--GQ4+YiJqd2ay7ThK--
