Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E83B49887E9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Sep 2024 17:07:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B30361527;
	Fri, 27 Sep 2024 15:07:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YyrSf2mvnz78; Fri, 27 Sep 2024 15:07:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C17736150E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727449623;
	bh=qpxyMse3hZYn59ZWfZD3k68H+27fM6U7WmyDdKcpNRA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9hMKv6OhK27+aP5YXbDJHZnlXqjE8avhDvVkAB61r5qiW2eATUNKgAq11O2bMoY22
	 HlO+m0kqNafHyDhnmEegT+SapC/nC5VMXRVYWgxQ2Rv1qvFV4IwmKToYRk2d222rjK
	 whoifTI/on3UU28YPcDtt6R3dyTq9pP7pEBSGdKrOTkgdEGzGJabyoY0jgpdImEjs4
	 63qWItlpLy82Z96w1NPcSzWgehBcMg4nWRqtRV/9xFg5R0Mn24w2+fAakRyoqytjnf
	 g3VJofXNwaWF8opd4e/3hALrBhmXEf4oYXxO4N8IFTfAnEyj+3Bw6MMLl2YHEERnYv
	 BttT1w8nk4Rhg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C17736150E;
	Fri, 27 Sep 2024 15:07:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CC8391BF853
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 15:07:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BA15D61505
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 15:07:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7S_P9XV0Eg_X for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Sep 2024 15:07:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=lorenzo@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 911BB614F2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 911BB614F2
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 911BB614F2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 15:07:00 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id EEDB0A45823;
 Fri, 27 Sep 2024 15:06:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1010C4CEC4;
 Fri, 27 Sep 2024 15:06:57 +0000 (UTC)
Date: Fri, 27 Sep 2024 17:06:53 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Arthur Fabre <afabre@cloudflare.com>
Message-ID: <ZvbKDT-2xqx2unrx@lore-rh-laptop>
References: <cover.1726935917.git.lorenzo@kernel.org>
 <1f53cd74-6c1e-4a1c-838b-4acc8c5e22c1@intel.com>
 <09657be6-b5e2-4b5a-96b6-d34174aadd0a@kernel.org>
 <Zu_gvkXe4RYjJXtq@lore-desk> <87ldzkndqk.fsf@toke.dk>
 <CAOn4ftshf3pyAst27C2haaSj4eR2n34_pcwWBc5o3zHBkwRb3g@mail.gmail.com>
 <87wmiysi37.fsf@toke.dk> <D4GBY7CHJNJ6.3O18I5W1FTPKR@bobby>
 <87ldzds8bp.fsf@toke.dk> <D4H5CAN4O95E.3KF8LAH75FYD4@bobby>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="48nyGz3vm9X8yMny"
Content-Disposition: inline
In-Reply-To: <D4H5CAN4O95E.3KF8LAH75FYD4@bobby>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1727449618;
 bh=MyFqb+wY84HD5T6WosrUNw3USR4E0d33ftvlJocCEQE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TfVSQgHfGmeSMNrmQoolcxikQ0ogy6NTCoTpYNpXh6GSZPVUWyWRmlWVlr8Kxyn6O
 dm0I+ivnMdahpDJGpOwJL5MxtF0uSWacZEDrH2LZKQLHftKIBUXtH0KJovZGNjlRCv
 zIAWsTqQA5/5zygFRsnOwgbAt1WcCBrCuLfxiDjEfDDRnGxoSxyyajE/ar5ejYYoRe
 C2xBIxTZbLoeAAkSd9KXVEW8P4t/AXHrnHRwL2wWINIwg+zU6s8dN7kR4Ow+gMrDER
 P8056GaHrnLkfbH6k5PjlZPcIdSx/onmhJVTCI/LWR/S9iWLwY1U8C9KLTBQ0o9NpL
 KS/rMBiXXKe7g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=TfVSQgHf
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
 alexandre.torgue@foss.st.com, netdev@vger.kernel.org,
 Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>,
 tariqt@nvidia.com, Alexander Lobakin <aleksander.lobakin@intel.com>,
 mcoquelin.stm32@gmail.com, bpf@vger.kernel.org, saeedm@nvidia.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--48nyGz3vm9X8yMny
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sep 27, Arthur Fabre wrote:
> On Fri Sep 27, 2024 at 12:24 PM CEST, Toke H=F8iland-J=F8rgensen wrote:
> > "Arthur Fabre" <afabre@cloudflare.com> writes:
> >
> > >> >> The nice thing about an API like this, though, is that it's exten=
sible,
> > >> >> and the kernel itself can be just another consumer of it for the
> > >> >> metadata fields Lorenzo is adding in this series. I.e., we could =
just
> > >> >> pre-define some IDs for metadata vlan, timestamp etc, and use the=
 same
> > >> >> functions as above from within the kernel to set and get those va=
lues;
> > >> >> using the registry, there could even be an option to turn those o=
ff if
> > >> >> an application wants more space for its own usage. Or, alternativ=
ely, we
> > >> >> could keep the kernel-internal IDs hardcoded and always allocated=
, and
> > >> >> just use the getter/setter functions as the BPF API for accessing=
 them.
> > >> >
> > >> > That's exactly what I'm thinking of too, a simple API like:
> > >> >
> > >> > get(u8 key, u8 len, void *val);
> > >> > set(u8 key, u8 len, void *val);
> > >> >
> > >> > With "well-known" keys like METADATA_ID_HW_HASH for hardware metad=
ata.
> > >> >
> > >> > If a NIC doesn't support a certain well-known metadata, the key
> > >> > wouldn't be set, and get() would return ENOENT.
> > >> >
> > >> > I think this also lets us avoid having to "register" keys or bits =
of
> > >> > metadata with the kernel.
> > >> > We'd reserve some number of keys for hardware metadata.
> > >>
> > >> Right, but how do you allocate space/offset for each key without an
> > >> explicit allocation step? You'd basically have to encode the list of=
 IDs
> > >> in the metadata area itself, which implies a TLV format that you hav=
e to
> > >> walk on every access? The registry idea in my example above was
> > >> basically to avoid that...
> > >
> > > I've been playing around with having a small fixed header at the front
> > > of the metadata itself, that lets you access values without walking t=
hem
> > > all.
> > >
> > > Still WIP, and maybe this is too restrictive, but it lets you encode =
64
> > > 2, 4, or 8 byte KVs with a single 16 byte header:
> >
> > Ohh, that's clever, I like it! :)
> >
> > It's also extensible in the sense that the internal representation can
> > change without impacting the API, so if we end up needing more bits we
> > can always add those.
> >
> > Maybe it would be a good idea to make the 'key' parameter a larger
> > integer type (function parameters are always 64-bit anyway, so might as
> > well go all the way up to u64)? That way we can use higher values for
> > the kernel-reserved types instead of reserving part of the already-small
> > key space for applications (assuming the kernel-internal data is stored
> > somewhere else, like in a static struct as in Lorenzo's patch)?
>=20
> Good idea! That makes it more extensible too if we ever support more
> keys or bigger lengths.
>=20
> I'm not sure where the kernel-reserved types should live. Putting them
> in here uses up some the of KV IDs, but it uses less head room space than=
=20
> always reserving a static struct for them.
> Maybe it doesn't matter much, as long as we use the same API to access
> them, we could internally switch between one and the other.
>=20
> >
> > [...]
> >
> > >> > The remaining keys would be up to users. They'd have to allocate k=
eys
> > >> > to services, and configure services to use those keys.
> > >> > This is similar to the way listening on a certain port works: only=
 one
> > >> > service can use port 80 or 443, and that can typically beconfigure=
d in
> > >> > a service's config file.
> > >>
> > >> Right, well, port numbers *do* actually have an out of band service
> > >> registry (IANA), which I thought was what we wanted to avoid? ;)
> > >
> > > Depends how you think about it ;)
> > >
> > > I think we should avoid a global registry. But having a registry per
> > > deployment / server doesn't seem awful. Services that want to use a
> > > field would have a config file setting to set which index it correspo=
nds
> > > to.
> > > Admins would just have to pick a free one on their system, and set it=
 in
> > > the config file of the service.
> > >
> > > This is similar to what we do for non-IANA registered ports internall=
y.
> > > For example each service needs a port on an internal interface to exp=
ose
> > > metrics, and we just track which ports are taken in our config
> > > management.
> >
> > Right, this would work, but it assumes that applications are
> > well-behaved and do this correctly. Which they probably do in a
> > centrally-managed system like yours, but for random applications shipped
> > by distros, I'm not sure if it's going to work.
> >
> > In fact, it's more or less the situation we have with skb->mark today,
> > isn't it? I.e., applications can co-exist as long as they don't use the
> > same bits, so they have to coordinate on which bits to use. Sure, with
> > this scheme there will be more total bits to use, which can lessen the
> > pressure somewhat, but the basic problem remains. In other words, I
> > worry that in practice we will end up with another github repository
> > serving as a registry for metadata keys...
>=20
> That's true. If applications hardcode keys, we'll be back to having
> conflicts. If someone creates a registry on github I'll be very sad.
>=20
> (Maybe we can make the verifier enforce that the key passed to get() and
> set() isn't a constant? - only joking)
>=20
> Applications don't tend to do this for ports though, I think most can be
> configured to listen on any port. Is that just because it's been
> instilled as "good practice" over time? Could we try to do the same with
> some very stern documentation and examples?
>=20
> Thinking about it more, my only relectance for a registration API is how
> to communicate the ID back to other consumers (our discussion below).
>=20
> >
> > > Dynamically registering fields means you have to share the returned ID
> > > with whoever is interested, which sounds tricky.
> > > If an XDP program sets a field like packet_id, every tracing
> > > program that looks at it, and userspace service, would need to know w=
hat
> > > the ID of that field is.
> > > Is there a way to easily share that ID with all of them?
> >
> > Right, so I'll admit this was one of the handwavy bits of my original
> > proposal, but I don't think it's unsolvable. You could do something like
> > (once, on application initialisation):
> >
> > __u64 my_key =3D bpf_register_metadata_field(my_size); /* maybe add a n=
ame for introspection? */
> > bpf_map_update(&shared_application_config, &my_key_index, &my_key);
> >
> > and then just get the key out of that map from all programs that want to
> > use it?
>=20
> Passing it out of band works (whether it's via a pinned map like you
> described, or through other means like a unix socket or some other
> API), it's just more complicated.
>=20
> Every consumer also needs to know about that API. That won't work with
> standard tools. For example if we set a PACKET_ID KV, maybe we could
> give it to pwru so it could track packets using it?
> Without registering keys, we could pass it as a cli flag. With
> registration, we'd have to have some helper to get the KV ID.
>=20
> It also introduces ordering dependencies between the services on
> startup, eg packet tracing hooks could only be attached once our XDP
> service has registered a PACKET_ID KV, and they could query it's API.
>=20
> >
> > We could combine such a registration API with your header format, so
> > that the registration just becomes a way of allocating one of the keys
> > from 0-63 (and the registry just becomes a global copy of the header).
> > This would basically amount to moving the "service config file" into the
> > kernel, since that seems to be the only common denominator we can rely
> > on between BPF applications (as all attempts to write a common daemon
> > for BPF management have shown).
>=20
> That sounds reasonable. And I guess we'd have set() check the global
> registry to enforce that the key has been registered beforehand?
>=20
> >
> > -Toke
>=20
> Thanks for all the feedback!

I like this 'fast' KV approach but I guess we should really evaluate its
impact on performances (especially for xdp) since, based on the kfunc calls
order in the ebpf program, we can have one or multiple memmove/memcpy for
each packet, right?

Moreover, I still think the metadata area in the xdp_frame/xdp_buff is not
so suitable for nic hw metadata since:
- it grows backward=20
- it is probably in a different cacheline with respect to xdp_frame
- nic hw metadata will not start at fixed and immutable address, but it dep=
ends
  on the running ebpf program

What about having something like:
- fixed hw nic metadata: just after xdp_frame struct (or if you want at the=
 end
  of the metadata area :)). Here he can reuse the same KV approach if it is=
 fast
- user defined metadata: in the metadata area of the xdp_frame/xdp_buff

Regards,
Lorenzo

--48nyGz3vm9X8yMny
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZvbKCwAKCRA6cBh0uS2t
rF5lAQDTdLyjQu9LBlYXr/x+szI6oCwR7y7mQizpEprqoM5cZAEAnFSLkOtb3uYb
tK14RGKLKIvhpK4/Q4SfAnUM/napRAM=
=3nAl
-----END PGP SIGNATURE-----

--48nyGz3vm9X8yMny--
