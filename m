Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D61798E9BD
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Oct 2024 08:35:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A059F411B3;
	Thu,  3 Oct 2024 06:35:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1qpioWW9b6In; Thu,  3 Oct 2024 06:35:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1C57E41345
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727937317;
	bh=N4rfjZLoUiX7LpaLbuzZxhQKAqk1hkqOVodJ4+flRDM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cWDDgzzuPHCSZ4gbClEx/AkCWTmztmQTnlzuPLehRYjQzIdw/8wIdMefSezgy0GbZ
	 gj/38nqTGfbT16mInsDwt7BoKreM5O8/Dx3ouS1ugmZOrlYqE+Ms0nabxpolCXruKa
	 TO5GaXtzQ9R1tyaksZJYoNcdb3jzY9wRB6eG5uEFMHlTSg488KsG441HezJsx/pfd8
	 Q95lxif3fX4gVpXCpCYcC8e9lP0Cbvson/CvSfPII219INVjCRGUxNtn05gLxVXvbl
	 L4ei7KncpexZ8YYnoutZYSNi6T9Fg7422RPMqhi0kRsIXHAkGOmHWIz+j1+loe/KJ7
	 CPgIeBruoLOBg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C57E41345;
	Thu,  3 Oct 2024 06:35:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0B4321BF836
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 06:35:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EC9868408E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 06:35:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V0LVsJLmlFqE for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Oct 2024 06:35:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32b; helo=mail-wm1-x32b.google.com;
 envelope-from=afabre@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B71DF8408B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B71DF8408B
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B71DF8408B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 06:35:12 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 5b1f17b1804b1-42ca6ba750eso3391735e9.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 02 Oct 2024 23:35:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727937310; x=1728542110;
 h=in-reply-to:references:to:from:subject:cc:message-id:date
 :content-transfer-encoding:mime-version:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=N4rfjZLoUiX7LpaLbuzZxhQKAqk1hkqOVodJ4+flRDM=;
 b=QBJ7cteOppAhJ6lShb9THEYVux8U1JFV0u7k56V1f0964ywPLngyqnf4fNWEv2Orxb
 qx6pHhW4NmptLn2g4gv3JxQPgcB4UBucT7ZleOxqOSx650SQj74f4VlMHvCwoIEcoGTm
 nlNa9EwJ4cIr1oYshBwyH7cQ6v2aQyiOiATQxehJB07W6IzZxmk/JF+W/tuIZ/rkRuT4
 vbJrnC96IYy3jwRToydFbHfslWIzLPpUhcZlC/H0SNyvoM8mJCL6Kizdsbc7rv4h00Cn
 1qS+wfQ+hKU6d4zv2u7lBEF5nInFzRq6FsLxOdz+LVIxKSlYj7uyy98V2KrfL3hu+5hB
 J6RQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUShFQlqHhg+NhIAyEZ0DoEd8ONDnUMWwdoqcTaA6sYncWeKsMm7pW3RrYvGWa1ivFrIplKevj0ScEX6ddXmLw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxwZurFDyNeUlum93eg5peFF200JCWTwp9wBI/BtnBU+nPUs3ZW
 CFzXu0Tg+QJ2Uf43wrtTpQGZGxnn/alBqPHkTlCAaX2toJ2xIXVHG4GUh2Qgp7w=
X-Google-Smtp-Source: AGHT+IFppr1P2N6tb8E4QOgYU6oJ/Xj7hkZoH3KFMunREaX7pS4Cha4UmFYK1ubPULDrtl6JNcY6+g==
X-Received: by 2002:a05:600c:3b1d:b0:42c:b81b:c49c with SMTP id
 5b1f17b1804b1-42f7df49b84mr11349435e9.10.1727937310514; 
 Wed, 02 Oct 2024 23:35:10 -0700 (PDT)
Received: from localhost ([2a09:bac1:27c0:58::31:92])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-37d082d2295sm523423f8f.107.2024.10.02.23.35.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Oct 2024 23:35:10 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 03 Oct 2024 08:35:07 +0200
Message-Id: <D4LYNKGLE7G0.3JAN5MX1ATPTB@bobby>
From: "Arthur Fabre" <afabre@cloudflare.com>
To: "Stanislav Fomichev" <stfomichev@gmail.com>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
X-Mailer: aerc 0.8.2
References: <87ldzds8bp.fsf@toke.dk> <D4H5CAN4O95E.3KF8LAH75FYD4@bobby>
 <ZvbKDT-2xqx2unrx@lore-rh-laptop> <871q11s91e.fsf@toke.dk>
 <ZvqQOpqnK9hBmXNn@lore-desk> <D4KJ7DUXJQC5.2UFST9L3CUOH7@bobby>
 <ZvwNQqN4gez1Ksfn@lore-desk> <87zfnnq2hs.fsf@toke.dk>
 <Zv18pxsiTGTZSTyO@mini-arch> <87ttdunydz.fsf@toke.dk>
 <Zv3N5G8swr100EXm@mini-arch>
In-Reply-To: <Zv3N5G8swr100EXm@mini-arch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1727937310; x=1728542110;
 darn=lists.osuosl.org; 
 h=in-reply-to:references:to:from:subject:cc:message-id:date
 :content-transfer-encoding:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=N4rfjZLoUiX7LpaLbuzZxhQKAqk1hkqOVodJ4+flRDM=;
 b=Ih3legaRG54SJ0MMhTEDUDPV2Nwcza9zRZ4gD4CSVy09PcSkaR8geinXg+IH+EySSg
 hbSK1wSDJFXEqMRL7tckzTAvKw5U+02Xg/JqckwP/nnxm6qEVsLIbX/oP1UHj3MPWuO2
 BFfEdxMWDtOJpktywrdn12k4LO33SL7q2R/uvqo3JznSiWz1nql4nWo11kc+WYrJIKt7
 O7IZOLOJzpG7LgV1+uaKdprF+kQXfo2TU9DbmGLpRrpb+ioKznLJ/dCDtxyu2hsP21DX
 B0ZYu8YMMtvRBxgBKyoth7ysRLnGncM0BwvcT+csdxTmrbYVtXKu3a+uQXUeEf69/ZfW
 pqRQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=Ih3legaR
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
 kuba@kernel.org, pabeni@redhat.com, Lorenzo Bianconi <lorenzo@kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>, alexandre.torgue@foss.st.com,
 netdev@vger.kernel.org, tariqt@nvidia.com,
 Alexander Lobakin <aleksander.lobakin@intel.com>, mcoquelin.stm32@gmail.com,
 bpf@vger.kernel.org, saeedm@nvidia.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu Oct 3, 2024 at 12:49 AM CEST, Stanislav Fomichev wrote:
> On 10/02, Toke H=C3=B8iland-J=C3=B8rgensen wrote:
> > Stanislav Fomichev <stfomichev@gmail.com> writes:
> >=20
> > > On 10/01, Toke H=C3=B8iland-J=C3=B8rgensen wrote:
> > >> Lorenzo Bianconi <lorenzo@kernel.org> writes:
> > >>=20
> > >> >> On Mon Sep 30, 2024 at 1:49 PM CEST, Lorenzo Bianconi wrote:
> > >> >> > > Lorenzo Bianconi <lorenzo@kernel.org> writes:
> > >> >> > >=20
> > >> >> > > >> > We could combine such a registration API with your heade=
r format, so
> > >> >> > > >> > that the registration just becomes a way of allocating o=
ne of the keys
> > >> >> > > >> > from 0-63 (and the registry just becomes a global copy o=
f the header).
> > >> >> > > >> > This would basically amount to moving the "service confi=
g file" into the
> > >> >> > > >> > kernel, since that seems to be the only common denominat=
or we can rely
> > >> >> > > >> > on between BPF applications (as all attempts to write a =
common daemon
> > >> >> > > >> > for BPF management have shown).
> > >> >> > > >>=20
> > >> >> > > >> That sounds reasonable. And I guess we'd have set() check =
the global
> > >> >> > > >> registry to enforce that the key has been registered befor=
ehand?
> > >> >> > > >>=20
> > >> >> > > >> >
> > >> >> > > >> > -Toke
> > >> >> > > >>=20
> > >> >> > > >> Thanks for all the feedback!
> > >> >> > > >
> > >> >> > > > I like this 'fast' KV approach but I guess we should really=
 evaluate its
> > >> >> > > > impact on performances (especially for xdp) since, based on=
 the kfunc calls
> > >> >> > > > order in the ebpf program, we can have one or multiple memm=
ove/memcpy for
> > >> >> > > > each packet, right?
> > >> >> > >=20
> > >> >> > > Yes, with Arthur's scheme, performance will be ordering depen=
dent. Using
> > >> >> > > a global registry for offsets would sidestep this, but have t=
he
> > >> >> > > synchronisation issues we discussed up-thread. So on balance,=
 I think
> > >> >> > > the memmove() suggestion will probably lead to the least pain=
.
> > >> >> > >=20
> > >> >> > > For the HW metadata we could sidestep this by always having a=
 fixed
> > >> >> > > struct for it (but using the same set/get() API with reserved=
 keys). The
> > >> >> > > only drawback of doing that is that we statically reserve a b=
it of
> > >> >> > > space, but I'm not sure that is such a big issue in practice =
(at least
> > >> >> > > not until this becomes to popular that the space starts to be=
 contended;
> > >> >> > > but surely 256 bytes ought to be enough for everybody, right?=
 :)).
> > >> >> >
> > >> >> > I am fine with the proposed approach, but I think we need to ve=
rify what is the
> > >> >> > impact on performances (in the worst case??)
> > >> >>=20
> > >> >> If drivers are responsible for populating the hardware metadata b=
efore
> > >> >> XDP, we could make sure drivers set the fields in order to avoid =
any
> > >> >> memove() (and maybe even provide a helper to ensure this?).
> > >> >
> > >> > nope, since the current APIs introduced by Stanislav are consuming=
 NIC
> > >> > metadata in kfuncs (mainly for af_xdp) and, according to my unders=
tanding,
> > >> > we want to add a kfunc to store the info for each NIC metadata (e.=
g rx-hash,
> > >> > timestamping, ..) into the packet (this is what Toke is proposing,=
 right?).
> > >> > In this case kfunc calling order makes a difference.
> > >> > We can think even to add single kfunc to store all the info for al=
l the NIC
> > >> > metadata (maybe via a helping struct) but it seems not scalable to=
 me and we
> > >> > are losing kfunc versatility.
> > >>=20
> > >> Yes, I agree we should have separate kfuncs for each metadata field.
> > >> Which means it makes a lot of sense to just use the same setter API =
that
> > >> we use for the user-registered metadata fields, but using reserved k=
eys.
> > >> So something like:
> > >>=20
> > >> #define BPF_METADATA_HW_HASH      BIT(60)
> > >> #define BPF_METADATA_HW_TIMESTAMP BIT(61)
> > >> #define BPF_METADATA_HW_VLAN      BIT(62)
> > >> #define BPF_METADATA_RESERVED (0xffff << 48)
> > >>=20
> > >> bpf_packet_metadata_set(pkt, BPF_METADATA_HW_HASH, hash_value);
> > >>=20
> > >>=20
> > >> As for the internal representation, we can just have the kfunc do
> > >> something like:
> > >>=20
> > >> int bpf_packet_metadata_set(field_id, value) {
> > >>   switch(field_id) {
> > >>     case BPF_METADATA_HW_HASH:
> > >>       pkt->xdp_hw_meta.hash =3D value;
> > >>       break;
> > >>     [...]
> > >>     default:
> > >>       /* do the key packing thing */
> > >>   }
> > >> }
> > >>=20
> > >>=20
> > >> that way the order of setting the HW fields doesn't matter, only the
> > >> user-defined metadata.
> > >
> > > Can you expand on why we need the flexibility of picking the metadata=
 fields
> > > here? Presumably we are talking about the use-cases where the XDP pro=
gram
> > > is doing redirect/pass and it doesn't really know who's the final
> > > consumer is (might be another xdp program or might be the xdp->skb
> > > kernel case), so the only sensible option here seems to be store ever=
ything?
> >=20
> > For the same reason that we have separate kfuncs for each metadata fiel=
d
> > when getting it from the driver: XDP programs should have the
> > flexibility to decide which pieces of metadata they need, and skip the
> > overhead of stuff that is not needed.
> >=20
> > For instance, say an XDP program knows that nothing in the system uses
> > timestamps; in that case, it can skip both the getter and the setter
> > call for timestamps.
>
> But doesn't it put us in the same place? Where the first (native) xdp pro=
gram
> needs to know which metadata the final consumer wants. At this point
> why not propagate metadata layout as well?
>
> (or maybe I'm still missing what exact use-case we are trying to solve)

There are two different use-cases for the metadata:

* "Hardware" metadata (like the hash, rx_timestamp...). There are only a
  few well known fields, and only XDP can access them to set them as
  metadata, so storing them in a struct somewhere could make sense.

* Arbitrary metadata used by services. Eg a TC filter could set a field
  describing which service a packet is for, and that could be reused for
  iptables, routing, socket dispatch...
  Similarly we could set a "packet_id" field that uniquely identifies a
  packet so we can trace it throughout the network stack (through
  clones, encap, decap, userspace services...).
  The skb->mark, but with more room, and better support for sharing it.

We can only know the layout ahead of time for the first one. And they're
similar enough in their requirements (need to be stored somewhere in the
SKB, have a way of retrieving each one individually, that it seems to
make sense to use a common API).

>
> > I suppose we *could* support just a single call to set the skb meta,
> > like:
> >=20
> > bpf_set_skb_meta(struct xdp_md *pkt, struct xdp_hw_meta *data);
> >=20
> > ...but in that case, we'd need to support some fields being unset
> > anyway, and the program would have to populate the struct on the stack
> > before performing the call. So it seems simpler to just have symmetry
> > between the get (from HW) and set side? :)
>
> Why not simply bpf_set_skb_meta(struct xdp_md *pkt) and let it store
> the metadata somewhere in xdp_md directly? (also presumably by
> reusing most of the existing kfuncs/xmo_xxx helpers)

If we store it in xdp_md, the metadata won't be available higher up the
stack (or am I missing something?). I think one of the goals is to let
things other than XDP access it (maybe even the network stack itself?).
