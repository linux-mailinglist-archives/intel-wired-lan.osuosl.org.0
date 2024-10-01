Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E607498C0D7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Oct 2024 16:55:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F95C60842;
	Tue,  1 Oct 2024 14:55:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GVR_01fLlJNO; Tue,  1 Oct 2024 14:55:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 723CD6073A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727794506;
	bh=ee6UEb/Dla3YjOeQ5VYnkmwXUcrz7ZXY9kPRSe9HzY0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7d04Yiylc07iI6ZwkLnafctDryNtvBabtyUSAIRpb0VLZUN288yXR3DcsBomh/IWQ
	 UYj6MmxCB1tfIKC9yhzf8L4cDnSBXTfWt8EFEKRfrkspniVuWvhxYuh2tS43YQWSi7
	 5LkX03yhIc5QC1ougoe5vfLV7L67yBJ/3i69gWb9qi8fmL9tm8leClUD5/dy9TtyiZ
	 HGBIEbFmOw4nYzclJhnoC4MZ/5IRu3UM/Iw/FnKqAxYPbgWNUPoPFyeIk/r706p+NN
	 0/iaY9RBTVgHcs/7r4ZjhOVvUNKAy4Z6u1JRRaF5mJzWyzwhrpSNHG6QTauDA/jux1
	 4BRYrgPXrRE8g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 723CD6073A;
	Tue,  1 Oct 2024 14:55:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2DCA91BF348
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 14:55:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1C7F281207
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 14:55:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bcv9LrMT-RUx for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Oct 2024 14:55:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=lorenzo@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2F69381204
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F69381204
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2F69381204
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 14:55:03 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 63060A43832;
 Tue,  1 Oct 2024 14:54:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFA89C4CEC6;
 Tue,  1 Oct 2024 14:55:00 +0000 (UTC)
Date: Tue, 1 Oct 2024 16:54:58 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Arthur Fabre <afabre@cloudflare.com>
Message-ID: <ZvwNQqN4gez1Ksfn@lore-desk>
References: <87ldzkndqk.fsf@toke.dk>
 <CAOn4ftshf3pyAst27C2haaSj4eR2n34_pcwWBc5o3zHBkwRb3g@mail.gmail.com>
 <87wmiysi37.fsf@toke.dk> <D4GBY7CHJNJ6.3O18I5W1FTPKR@bobby>
 <87ldzds8bp.fsf@toke.dk> <D4H5CAN4O95E.3KF8LAH75FYD4@bobby>
 <ZvbKDT-2xqx2unrx@lore-rh-laptop> <871q11s91e.fsf@toke.dk>
 <ZvqQOpqnK9hBmXNn@lore-desk> <D4KJ7DUXJQC5.2UFST9L3CUOH7@bobby>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="QZlN8fZgoeG75Oo9"
Content-Disposition: inline
In-Reply-To: <D4KJ7DUXJQC5.2UFST9L3CUOH7@bobby>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1727794501;
 bh=K73I+jE0VsIHKMTIulu1znEQ33yW3tbXLveEep54EC4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vKaO29f9wCjbLAMhegO8JcQuaQSybTEVgjIBoAGycugkXnIRGrcBulXlK+OHVHTPp
 5YbwlYq8u8oy4aP5qWx/+uWSJcKECxX3ov+uyvWsZ4+gjXInTSkLbu14/eKVRdECq8
 SJuz6nUJZNy4uVP+dxZwqy8GScmyQMmybnwxcbuEormjgD3JWUbA+Kx4AM/phdU2vH
 PH7vdFox1J6BR/I2GzaQo8yoH5janJmaHo+u722ndB9rxQpWCi448+TuOz92q4zGDl
 XpUdkZVed72v5QHcCyFubFR43KUogJIAyQZzV2FVOhb7wlXUUJmqY5X3/H96rUvO27
 ZVImFPxfxJrXA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=vKaO29f9
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


--QZlN8fZgoeG75Oo9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On Mon Sep 30, 2024 at 1:49 PM CEST, Lorenzo Bianconi wrote:
> > > Lorenzo Bianconi <lorenzo@kernel.org> writes:
> > >=20
> > > >> > We could combine such a registration API with your header format=
, so
> > > >> > that the registration just becomes a way of allocating one of th=
e keys
> > > >> > from 0-63 (and the registry just becomes a global copy of the he=
ader).
> > > >> > This would basically amount to moving the "service config file" =
into the
> > > >> > kernel, since that seems to be the only common denominator we ca=
n rely
> > > >> > on between BPF applications (as all attempts to write a common d=
aemon
> > > >> > for BPF management have shown).
> > > >>=20
> > > >> That sounds reasonable. And I guess we'd have set() check the glob=
al
> > > >> registry to enforce that the key has been registered beforehand?
> > > >>=20
> > > >> >
> > > >> > -Toke
> > > >>=20
> > > >> Thanks for all the feedback!
> > > >
> > > > I like this 'fast' KV approach but I guess we should really evaluat=
e its
> > > > impact on performances (especially for xdp) since, based on the kfu=
nc calls
> > > > order in the ebpf program, we can have one or multiple memmove/memc=
py for
> > > > each packet, right?
> > >=20
> > > Yes, with Arthur's scheme, performance will be ordering dependent. Us=
ing
> > > a global registry for offsets would sidestep this, but have the
> > > synchronisation issues we discussed up-thread. So on balance, I think
> > > the memmove() suggestion will probably lead to the least pain.
> > >=20
> > > For the HW metadata we could sidestep this by always having a fixed
> > > struct for it (but using the same set/get() API with reserved keys). =
The
> > > only drawback of doing that is that we statically reserve a bit of
> > > space, but I'm not sure that is such a big issue in practice (at least
> > > not until this becomes to popular that the space starts to be contend=
ed;
> > > but surely 256 bytes ought to be enough for everybody, right? :)).
> >
> > I am fine with the proposed approach, but I think we need to verify wha=
t is the
> > impact on performances (in the worst case??)
>=20
> If drivers are responsible for populating the hardware metadata before
> XDP, we could make sure drivers set the fields in order to avoid any
> memove() (and maybe even provide a helper to ensure this?).

nope, since the current APIs introduced by Stanislav are consuming NIC
metadata in kfuncs (mainly for af_xdp) and, according to my understanding,
we want to add a kfunc to store the info for each NIC metadata (e.g rx-hash,
timestamping, ..) into the packet (this is what Toke is proposing, right?).
In this case kfunc calling order makes a difference.
We can think even to add single kfunc to store all the info for all the NIC
metadata (maybe via a helping struct) but it seems not scalable to me and we
are losing kfunc versatility.

Regards,
Lorenzo

>=20
> > > > Moreover, I still think the metadata area in the xdp_frame/xdp_buff=
 is not
> > > > so suitable for nic hw metadata since:
> > > > - it grows backward=20
> > > > - it is probably in a different cacheline with respect to xdp_frame
> > > > - nic hw metadata will not start at fixed and immutable address, bu=
t it depends
> > > >   on the running ebpf program
> > > >
> > > > What about having something like:
> > > > - fixed hw nic metadata: just after xdp_frame struct (or if you wan=
t at the end
> > > >   of the metadata area :)). Here he can reuse the same KV approach =
if it is fast
> > > > - user defined metadata: in the metadata area of the xdp_frame/xdp_=
buff
> > >=20
> > > AFAIU, none of this will live in the (current) XDP metadata area. It
> > > will all live just after the xdp_frame struct (so sharing the space w=
ith
> > > the metadata area in the sense that adding more metadata kv fields wi=
ll
> > > decrease the amount of space that is usable by the current XDP metada=
ta
> > > APIs).
> > >=20
> > > -Toke
> > >=20
> >
> > ah, ok. I was thinking the proposed approach was to put them in the cur=
rent
> > metadata field.
>=20
> I've also been thinking of putting this new KV stuff at the start of the
> headroom (I think that's what you're saying Toke?). It has a few nice
> advantanges:
>=20
> * It coexists nicely with the current XDP / TC metadata support.
> Those users won't be able to overwrite / corrupt the KV metadata.
> KV users won't need to call xdp_adjust_meta() (which would be awkward -
> how would they know how much space the KV implementation needs).
>=20
> * We don't have to move all the metadata everytime we call
> xdp_adjust_head() (or the kernel equivalent).
>=20
> Are there any performance implications of that, e.g. for caching?
>=20
> This would also grow "upwards" which is more natural, but I think=20
> either way the KV API would hide whether it's downwards or upwards from
> users.
>=20
> >
> > Regards,
> > Lorenzo
>=20

--QZlN8fZgoeG75Oo9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZvwNQgAKCRA6cBh0uS2t
rPPCAP9NLWLOvwOPJvBCDjraaJ1dXthG/l5SniJouVDlxP1+ZAEA7a8VgC/fcorU
Vjt+2iF85Ez8TF5ht/npXVtMFFfi2Qk=
=QR1N
-----END PGP SIGNATURE-----

--QZlN8fZgoeG75Oo9--
