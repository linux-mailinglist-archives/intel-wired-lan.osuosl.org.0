Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C03598E2B1
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Oct 2024 20:38:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B0BC361113;
	Wed,  2 Oct 2024 18:38:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gRLt7UdkxMdf; Wed,  2 Oct 2024 18:38:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 91FDD61118
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727894323;
	bh=/DASu2Ly6LMLuam4QkxExHsIVM6MkDol1u38SD2VeXs=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WmK5cMXrQeJJZ3SOI2KglLJ5YsWd2wZvKEdhJD9myEjfZZ/+v1BkYrARrdDeeOTNL
	 TNg8IYj0VL8EAJnNrxnc7pHCiQIZt41UDbqtdNMdIGFcYazIci9MAxbxRANFZyPnWI
	 pi4+0XaucWi4BORzU4bP3XPp9DmlWW75W2TdWY0YVOOPfAXPxfh29oJXLz46aoVgpj
	 KbSifR79z+UfMyE/lOKmNhxxUInFANxBOCMl/UWkzglzSP2vBGMzC9c5MtpfSD8vcG
	 ueApLPh3bh3zJqfIUjUI/PigjKJ+XaAeObFc7LmJW5a5drhEYSlvvGAHmSfkTBwdFP
	 Zqcp0dfj34cBA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 91FDD61118;
	Wed,  2 Oct 2024 18:38:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0973F1BF283
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 18:38:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EB0E8410C6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 18:38:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L6lI_uXlOq0m for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Oct 2024 18:38:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=toke@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7D24A410C2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D24A410C2
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7D24A410C2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 18:38:38 +0000 (UTC)
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-558-VBxcsfc_M_iNFmhQUMOtkQ-1; Wed, 02 Oct 2024 14:38:36 -0400
X-MC-Unique: VBxcsfc_M_iNFmhQUMOtkQ-1
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-a8a84b60255so3187666b.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 02 Oct 2024 11:38:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727894315; x=1728499115;
 h=content-transfer-encoding:mime-version:message-id:date:references
 :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=TUYma/EPs1KdBK7LpDH//IRvRSF2+DVGnweHF00rvLg=;
 b=aqwwfA9cCEY3F+zW0AYAVXLrzsw1lk0nFsL+xUnrWQa4LND3TyeDCN5Xc+av6+9/3X
 2eHURFIApRqQknyCrr/wLNP2w36EX1A/kOMg1cnRiguZXmfnP6z5/hOfr3EVQ+L7Ee7L
 857x//wtyzMI012CZbgNUsU8ySpz0h101N8lmGvQz43xlRMbHYd37zxODgdfDJDkgnkr
 tU2UfW514mncGi/+5BnHkIxYpgZqMWdo25iLyxRb6WHb3l1PBv5UHC7oFr0zI5dUXdjI
 VZ2W/wta2uEuwanhJ1uVfQpqvf/0yh9cmlX/ERfDV1wIwENMdvdQnTDftGRT1WimGf5l
 1ang==
X-Forwarded-Encrypted: i=1;
 AJvYcCVmOgAppEgXC00AVkRH1T883J5Id0+FCf5GzULB7hn/3fS08EHNXKn30/x75L/48r7IsDByvB8u3Is/ss2hhnU=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz9sQBTDez5TQ8TZYC6S6V+4/2vXEsIOFbxx0O0kKqjrim0R246
 AyYHvUjEzS3MNxOfRpvJwn70KFIedg7AEx1cWJ2w5R8n9W9eYOVib9jbwhsiVNLA6zO4nKZTK2s
 KSddYaHaVAIlQOIw++7010cjie2LBNBc/r7GMn0KtthOIj7xM3aQmhtuPg5qRbtrLxOQ=
X-Received: by 2002:a17:907:9348:b0:a86:6fb3:fda5 with SMTP id
 a640c23a62f3a-a98f8270820mr371291066b.32.1727894314688; 
 Wed, 02 Oct 2024 11:38:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IExdrouJzpTfhyO+07C7yEl3jbSIHHoX9mHnVfOzQyx5ho+dLqj02EqamCslBCs+aZY/ib4TA==
X-Received: by 2002:a17:907:9348:b0:a86:6fb3:fda5 with SMTP id
 a640c23a62f3a-a98f8270820mr371288666b.32.1727894314291; 
 Wed, 02 Oct 2024 11:38:34 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a93c2998cb2sm897131766b.197.2024.10.02.11.38.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2024 11:38:33 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id B692315802F2; Wed, 02 Oct 2024 20:38:32 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Stanislav Fomichev <stfomichev@gmail.com>
In-Reply-To: <Zv18pxsiTGTZSTyO@mini-arch>
References: <87wmiysi37.fsf@toke.dk> <D4GBY7CHJNJ6.3O18I5W1FTPKR@bobby>
 <87ldzds8bp.fsf@toke.dk> <D4H5CAN4O95E.3KF8LAH75FYD4@bobby>
 <ZvbKDT-2xqx2unrx@lore-rh-laptop> <871q11s91e.fsf@toke.dk>
 <ZvqQOpqnK9hBmXNn@lore-desk> <D4KJ7DUXJQC5.2UFST9L3CUOH7@bobby>
 <ZvwNQqN4gez1Ksfn@lore-desk> <87zfnnq2hs.fsf@toke.dk>
 <Zv18pxsiTGTZSTyO@mini-arch>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 02 Oct 2024 20:38:32 +0200
Message-ID: <87ttdunydz.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1727894317;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/DASu2Ly6LMLuam4QkxExHsIVM6MkDol1u38SD2VeXs=;
 b=D2VhozbZIgSwkKZlZ5S7ncJfEKXDXXziLxj8twakJJgiY3tMddTbe8aK3bg5mfk1+7L2AM
 uEihl3/WvoCwbZOE5qqi0A4UjmknlHvdNvWy5mB8igxZXdAnyumptntc3jLQxdrhCmdfDJ
 Skk6JcbgrW/BtzARnGbGo9225spL4Fc=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=D2VhozbZ
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
 Arthur Fabre <afabre@cloudflare.com>, netdev@vger.kernel.org,
 tariqt@nvidia.com, Alexander Lobakin <aleksander.lobakin@intel.com>,
 mcoquelin.stm32@gmail.com, bpf@vger.kernel.org, saeedm@nvidia.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Stanislav Fomichev <stfomichev@gmail.com> writes:

> On 10/01, Toke H=C3=B8iland-J=C3=B8rgensen wrote:
>> Lorenzo Bianconi <lorenzo@kernel.org> writes:
>>=20
>> >> On Mon Sep 30, 2024 at 1:49 PM CEST, Lorenzo Bianconi wrote:
>> >> > > Lorenzo Bianconi <lorenzo@kernel.org> writes:
>> >> > >=20
>> >> > > >> > We could combine such a registration API with your header fo=
rmat, so
>> >> > > >> > that the registration just becomes a way of allocating one o=
f the keys
>> >> > > >> > from 0-63 (and the registry just becomes a global copy of th=
e header).
>> >> > > >> > This would basically amount to moving the "service config fi=
le" into the
>> >> > > >> > kernel, since that seems to be the only common denominator w=
e can rely
>> >> > > >> > on between BPF applications (as all attempts to write a comm=
on daemon
>> >> > > >> > for BPF management have shown).
>> >> > > >>=20
>> >> > > >> That sounds reasonable. And I guess we'd have set() check the =
global
>> >> > > >> registry to enforce that the key has been registered beforehan=
d?
>> >> > > >>=20
>> >> > > >> >
>> >> > > >> > -Toke
>> >> > > >>=20
>> >> > > >> Thanks for all the feedback!
>> >> > > >
>> >> > > > I like this 'fast' KV approach but I guess we should really eva=
luate its
>> >> > > > impact on performances (especially for xdp) since, based on the=
 kfunc calls
>> >> > > > order in the ebpf program, we can have one or multiple memmove/=
memcpy for
>> >> > > > each packet, right?
>> >> > >=20
>> >> > > Yes, with Arthur's scheme, performance will be ordering dependent=
. Using
>> >> > > a global registry for offsets would sidestep this, but have the
>> >> > > synchronisation issues we discussed up-thread. So on balance, I t=
hink
>> >> > > the memmove() suggestion will probably lead to the least pain.
>> >> > >=20
>> >> > > For the HW metadata we could sidestep this by always having a fix=
ed
>> >> > > struct for it (but using the same set/get() API with reserved key=
s). The
>> >> > > only drawback of doing that is that we statically reserve a bit o=
f
>> >> > > space, but I'm not sure that is such a big issue in practice (at =
least
>> >> > > not until this becomes to popular that the space starts to be con=
tended;
>> >> > > but surely 256 bytes ought to be enough for everybody, right? :))=
.
>> >> >
>> >> > I am fine with the proposed approach, but I think we need to verify=
 what is the
>> >> > impact on performances (in the worst case??)
>> >>=20
>> >> If drivers are responsible for populating the hardware metadata befor=
e
>> >> XDP, we could make sure drivers set the fields in order to avoid any
>> >> memove() (and maybe even provide a helper to ensure this?).
>> >
>> > nope, since the current APIs introduced by Stanislav are consuming NIC
>> > metadata in kfuncs (mainly for af_xdp) and, according to my understand=
ing,
>> > we want to add a kfunc to store the info for each NIC metadata (e.g rx=
-hash,
>> > timestamping, ..) into the packet (this is what Toke is proposing, rig=
ht?).
>> > In this case kfunc calling order makes a difference.
>> > We can think even to add single kfunc to store all the info for all th=
e NIC
>> > metadata (maybe via a helping struct) but it seems not scalable to me =
and we
>> > are losing kfunc versatility.
>>=20
>> Yes, I agree we should have separate kfuncs for each metadata field.
>> Which means it makes a lot of sense to just use the same setter API that
>> we use for the user-registered metadata fields, but using reserved keys.
>> So something like:
>>=20
>> #define BPF_METADATA_HW_HASH      BIT(60)
>> #define BPF_METADATA_HW_TIMESTAMP BIT(61)
>> #define BPF_METADATA_HW_VLAN      BIT(62)
>> #define BPF_METADATA_RESERVED (0xffff << 48)
>>=20
>> bpf_packet_metadata_set(pkt, BPF_METADATA_HW_HASH, hash_value);
>>=20
>>=20
>> As for the internal representation, we can just have the kfunc do
>> something like:
>>=20
>> int bpf_packet_metadata_set(field_id, value) {
>>   switch(field_id) {
>>     case BPF_METADATA_HW_HASH:
>>       pkt->xdp_hw_meta.hash =3D value;
>>       break;
>>     [...]
>>     default:
>>       /* do the key packing thing */
>>   }
>> }
>>=20
>>=20
>> that way the order of setting the HW fields doesn't matter, only the
>> user-defined metadata.
>
> Can you expand on why we need the flexibility of picking the metadata fie=
lds
> here? Presumably we are talking about the use-cases where the XDP program
> is doing redirect/pass and it doesn't really know who's the final
> consumer is (might be another xdp program or might be the xdp->skb
> kernel case), so the only sensible option here seems to be store everythi=
ng?

For the same reason that we have separate kfuncs for each metadata field
when getting it from the driver: XDP programs should have the
flexibility to decide which pieces of metadata they need, and skip the
overhead of stuff that is not needed.

For instance, say an XDP program knows that nothing in the system uses
timestamps; in that case, it can skip both the getter and the setter
call for timestamps.

I suppose we *could* support just a single call to set the skb meta,
like:

bpf_set_skb_meta(struct xdp_md *pkt, struct xdp_hw_meta *data);

...but in that case, we'd need to support some fields being unset
anyway, and the program would have to populate the struct on the stack
before performing the call. So it seems simpler to just have symmetry
between the get (from HW) and set side? :)

-Toke

