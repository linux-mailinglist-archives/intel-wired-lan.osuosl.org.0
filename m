Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED681991DCC
	for <lists+intel-wired-lan@lfdr.de>; Sun,  6 Oct 2024 12:28:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 12BB640291;
	Sun,  6 Oct 2024 10:28:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UVqDFm51cu_9; Sun,  6 Oct 2024 10:28:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 37FE5402F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728210480;
	bh=n1FFn92u1zSg1KaWOxaXsoRqjMsmmdyBJ82/W7Swsxc=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=byiMnYHXcVvMm3wnzkOqSE14rnAVjwjhT4VeoOUsduA6PudofA7D2GSlb27Cl1t/j
	 k0ALes2R/wyZcJIljA9Byt5RXOenIRkLoHw6f/GjoXd4f46agnE91GsTwTXnGs3oFf
	 oUcsboJaSfU09ctHHjcxVeOZF22I11V1rEo9Gjpn6NFGIjul6b0p/5k4UNEIokV8/s
	 PzEZozgUcWvxUL1D+NFafcAU2O8UsoveX3ril7x9MUxI044x7YMxZ7krLVCoJa62EQ
	 AwEqPGvnFYN4neoTxpBNvUZxeUyyfLUGYzCD8wORnKqtTNaHA9vH7d91sWUz/N5QW6
	 UrYr2mGQw/oTg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 37FE5402F2;
	Sun,  6 Oct 2024 10:28:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ABC901BF2C3
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Oct 2024 10:27:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 99D4F40022
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Oct 2024 10:27:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TtnJTbdM8KoC for <intel-wired-lan@lists.osuosl.org>;
 Sun,  6 Oct 2024 10:27:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=toke@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0F23340260
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F23340260
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0F23340260
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Oct 2024 10:27:55 +0000 (UTC)
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-244-0QXcg3lpMCKbGvboMUqKwg-1; Sun, 06 Oct 2024 06:27:53 -0400
X-MC-Unique: 0QXcg3lpMCKbGvboMUqKwg-1
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-37ce063895cso1486328f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 06 Oct 2024 03:27:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728210472; x=1728815272;
 h=content-transfer-encoding:mime-version:message-id:date:references
 :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=XVAZl5VnbHOVnvJqx8bbWhlDxEgk2cc1gRj8x2Sbqjg=;
 b=tlhivggppRH4xCY8KN+Sw42LzNMS97+uD+xampOhmgSvOh69RrtvKwmGQ0opS0Q48c
 uofXw7a9UAft2L5I7Sa8mfW0bDmrgPVa59cE2pT+FvnkVkkXv6aacJTwPqTShbqFHLq2
 V+5th27kofZJslyxaSEdgHeimOHKQEA66fbgsmt/atWcXsxiBQj81mxG+JQUvSwlX9/I
 meqWQpQzeX7RDuyTJ5SREDTdY+iLv0Gmn+hTocbE7vgOn0yFNAOMDUPLySWk9jlnr4Uh
 hBpPg+/jwtD+zfQRLXsvPGkb6kiLGIhU6DGNRZzcwvt2qgXK0PFUqTBqQ3umPPCnq/EE
 RDYw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUoT/RTHPcT0hf1Z9nvZLy8jAEaFHt9Ae827RLZkXFhZGpg8ssOLCTqLZSiRmUVOVzl22bfJEndTZvOfZF3l8I=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yxpw2y53vtsHkfc1e9ZU4PnORjd8A3gLRuEHLMOkmnmyE8xmMlL
 TzMLvKgbh6BweIggOxx0XujwcE3n++c3g4rmmSDcNli6KhmDerdoM/04Opc+2R9v2kMhfF+kU4p
 /yRqfhZSkV4jz+a7FBOBez8lorox3WAeaFhRHrLCN2hDkQ2j0Dd5YTjUurNL7UpM3/+0=
X-Received: by 2002:adf:a31a:0:b0:37c:cfa8:a6b3 with SMTP id
 ffacd0b85a97d-37d0e6bbcd0mr4507506f8f.3.1728210471828; 
 Sun, 06 Oct 2024 03:27:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE6qk3pGSWh3Zpopbs1lFqrQC8wz61+RnAEMorGwbSBnz1kbEzfNV6nRuULWqiuppvReXLLRw==
X-Received: by 2002:adf:a31a:0:b0:37c:cfa8:a6b3 with SMTP id
 ffacd0b85a97d-37d0e6bbcd0mr4507480f8f.3.1728210471294; 
 Sun, 06 Oct 2024 03:27:51 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-37d1691b5ddsm3399541f8f.47.2024.10.06.03.27.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Oct 2024 03:27:50 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 54C981580A31; Sun, 06 Oct 2024 12:27:48 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Stanislav Fomichev <stfomichev@gmail.com>, Jesper Dangaard Brouer
 <hawk@kernel.org>
In-Reply-To: <ZwArrsqrYx7IM5tq@mini-arch>
References: <D4KJ7DUXJQC5.2UFST9L3CUOH7@bobby> <ZvwNQqN4gez1Ksfn@lore-desk>
 <87zfnnq2hs.fsf@toke.dk> <Zv18pxsiTGTZSTyO@mini-arch>
 <87ttdunydz.fsf@toke.dk> <Zv3N5G8swr100EXm@mini-arch>
 <D4LYNKGLE7G0.3JAN5MX1ATPTB@bobby> <Zv794Ot-kOq1pguM@mini-arch>
 <2fy5vuewgwkh3o3mx5v4bkrzu6josqylraa4ocgzqib6a7ozt4@hwsuhcibtcb6>
 <038fffa3-1e29-4c6d-9e27-8181865dca46@kernel.org>
 <ZwArrsqrYx7IM5tq@mini-arch>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Sun, 06 Oct 2024 12:27:48 +0200
Message-ID: <87ldz1edaz.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1728210474;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=n1FFn92u1zSg1KaWOxaXsoRqjMsmmdyBJ82/W7Swsxc=;
 b=KJ+R/NTzCTiQLUmeP5K3hk51zo/O2CQFABEDQkYsZPKngh4IbxKIyp3qZNbP9Iaf+yRR+S
 IwpwDyk4y1iT8yEvg1c0FxEGIt7B7JHlcH8MAhY85ftgyJr/jgcCIfPFL5t8Dfg67SPAZP
 XngCiWliQ3IDzxFm7KcbT13DnHTmGDY=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=KJ+R/NTz
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
 Lorenzo Bianconi <lorenzo@kernel.org>, Yan Zhai <yan@cloudflare.com>,
 alexandre.torgue@foss.st.com, Daniel Xu <dxu@dxuuu.xyz>,
 Arthur Fabre <afabre@cloudflare.com>, netdev@vger.kernel.org,
 tariqt@nvidia.com, Alexander Lobakin <aleksander.lobakin@intel.com>,
 mcoquelin.stm32@gmail.com, bpf@vger.kernel.org, saeedm@nvidia.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Stanislav Fomichev <stfomichev@gmail.com> writes:

> On 10/04, Jesper Dangaard Brouer wrote:
>>=20
>>=20
>> On 04/10/2024 04.13, Daniel Xu wrote:
>> > On Thu, Oct 03, 2024 at 01:26:08PM GMT, Stanislav Fomichev wrote:
>> > > On 10/03, Arthur Fabre wrote:
>> > > > On Thu Oct 3, 2024 at 12:49 AM CEST, Stanislav Fomichev wrote:
>> > > > > On 10/02, Toke H=C3=B8iland-J=C3=B8rgensen wrote:
>> > > > > > Stanislav Fomichev <stfomichev@gmail.com> writes:
>> > > > > >=20
>> > > > > > > On 10/01, Toke H=C3=B8iland-J=C3=B8rgensen wrote:
>> > > > > > > > Lorenzo Bianconi <lorenzo@kernel.org> writes:
>> > > > > > > >=20
>> > > > > > > > > > On Mon Sep 30, 2024 at 1:49 PM CEST, Lorenzo Bianconi =
wrote:
>> > > > > > > > > > > > Lorenzo Bianconi <lorenzo@kernel.org> writes:
>> > > > > > > > > > > >=20
>> [...]
>> > > > > > > > > > > > >=20
>> > > > > > > > > > > > > I like this 'fast' KV approach but I guess we sh=
ould really evaluate its
>> > > > > > > > > > > > > impact on performances (especially for xdp) sinc=
e, based on the kfunc calls
>> > > > > > > > > > > > > order in the ebpf program, we can have one or mu=
ltiple memmove/memcpy for
>> > > > > > > > > > > > > each packet, right?
>> > > > > > > > > > > >=20
>> > > > > > > > > > > > Yes, with Arthur's scheme, performance will be ord=
ering dependent. Using
>>=20
>> I really like the *compact* Key-Value (KV) store idea from Arthur.
>>  - The question is it is fast enough?
>>=20
>> I've promised Arthur to XDP micro-benchmark this, if he codes this up to
>> be usable in the XDP code path.  Listening to the LPC recording I heard
>> that Alexei also saw potential and other use-case for this kind of
>> fast-and-compact KV approach.
>>=20
>> I have high hopes for the performance, as Arthur uses POPCNT instruction
>> which is *very* fast[1]. I checked[2] AMD Zen 3 and 4 have Ops/Latency=
=3D1
>> and Reciprocal throughput 0.25.
>>=20
>>  [1] https://www.agner.org/optimize/blog/read.php?i=3D853#848
>>  [2] https://www.agner.org/optimize/instruction_tables.pdf
>>=20
>> [...]
>> > > > There are two different use-cases for the metadata:
>> > > >=20
>> > > > * "Hardware" metadata (like the hash, rx_timestamp...). There are =
only a
>> > > >    few well known fields, and only XDP can access them to set them=
 as
>> > > >    metadata, so storing them in a struct somewhere could make sens=
e.
>> > > >=20
>> > > > * Arbitrary metadata used by services. Eg a TC filter could set a =
field
>> > > >    describing which service a packet is for, and that could be reu=
sed for
>> > > >    iptables, routing, socket dispatch...
>> > > >    Similarly we could set a "packet_id" field that uniquely identi=
fies a
>> > > >    packet so we can trace it throughout the network stack (through
>> > > >    clones, encap, decap, userspace services...).
>> > > >    The skb->mark, but with more room, and better support for shari=
ng it.
>> > > >=20
>> > > > We can only know the layout ahead of time for the first one. And t=
hey're
>> > > > similar enough in their requirements (need to be stored somewhere =
in the
>> > > > SKB, have a way of retrieving each one individually, that it seems=
 to
>> > > > make sense to use a common API).
>> > >=20
>> > > Why not have the following layout then?
>> > >=20
>> > > +---------------+-------------------+-------------------------------=
---------+------+
>> > > | more headroom | user-defined meta | hw-meta (potentially fixed skb=
 format) | data |
>> > > +---------------+-------------------+-------------------------------=
---------+------+
>> > >                  ^                                                  =
          ^
>> > >              data_meta                                              =
        data
>> > >=20
>> > > You obviously still have a problem of communicating the layout if yo=
u
>> > > have some redirects in between, but you, in theory still have this
>> > > problem with user-defined metadata anyway (unless I'm missing
>> > > something).
>> > >=20
>>=20
>> Hmm, I think you are missing something... As far as I'm concerned we are
>> discussing placing the KV data after the xdp_frame, and not in the XDP
>> data_meta area (as your drawing suggests).  The xdp_frame is stored at
>> the very top of the headroom.  Lorenzo's patchset is extending struct
>> xdp_frame and now we are discussing to we can make a more flexible API
>> for extending this. I understand that Toke confirmed this here [3].  Let
>> me know if I missed something :-)
>>=20
>>  [3] https://lore.kernel.org/all/874j62u1lb.fsf@toke.dk/
>>
>> As part of designing this flexible API, we/Toke are trying hard not to
>> tie this to a specific data area.  This is a good API design, keeping it
>> flexible enough that we can move things around should the need arise.
>>=20
>> I don't think it is viable to store this KV data in XDP data_meta area,
>> because existing BPF-prog's already have direct memory (write) access
>> and can change size of area, which creates too much headache with
>> (existing) BPF-progs creating unintentional breakage for the KV store,
>> which would then need extensive checks to handle random corruptions
>> (slowing down KV-store code).
>
> Yes, I'm definitely missing the bigger picture. If we want to have a glob=
al
> metadata registry in the kernel, why can't it be built on top of the exis=
ting
> area?

Because we have no way of preventing existing XDP programs from
overwriting (corrupting) the area using the xdp_adjust_meta() API and
data_meta field.

But in a sense the *memory area* is shared between the two APIs, in the
sense that they both use the headroom before the packet data, just from
opposite ends. So if you store lots of data using the new KV API, that
space will no longer be available for xdp_adjust_{head,meta}. But the
kernel can enforce this so we don't get programs corrupting the KV
format.

-Toke

