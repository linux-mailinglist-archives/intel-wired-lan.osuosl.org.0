Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 33664993F2B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Oct 2024 09:16:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86C5640339;
	Tue,  8 Oct 2024 07:16:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hr6fJqooT4Gz; Tue,  8 Oct 2024 07:16:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82D1740313
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728371767;
	bh=S2ueIGZGFFuijyr+mi84RMycpanED72itl8B8kGLf0A=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GjTnoqOpBnHXPCqj3guvfOTGHdMi5kDou7bLoKlNdWa/qMPV4rjud0PaQrGQ3MURF
	 4Whl57Q37nG8eYI2+NMHcKSTo663SS7FjHgsOZk7edPSYmoYozp1fe/ies9JYEi+yw
	 29MWW0veMufuWNy/Yzabiv/UaL91yx1RbZ+99UCyTg8poag65/FhwOqLj9anqV2E3j
	 +f9qnXtVlaIvu/JyfIu4RaR56b4N6GRjJbtCmEOnrpZ6W6IXqYvqgK7S/PDsb4El75
	 5f7OF8L0uBFGe2OBcUrkZe4XNInmklrv9nkXieeryNpBt86hMi4/L4ugAbIKgVz6ZH
	 N1iGwcKKyeKtw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82D1740313;
	Tue,  8 Oct 2024 07:16:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6D12C1BF97C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2024 07:16:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 89165402D7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2024 07:16:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zXSQHSpxdLA1 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Oct 2024 07:16:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::329; helo=mail-wm1-x329.google.com;
 envelope-from=afabre@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9330C4024F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9330C4024F
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9330C4024F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2024 07:16:01 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 5b1f17b1804b1-42e5e1e6d37so54241915e9.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Oct 2024 00:16:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728371759; x=1728976559;
 h=in-reply-to:references:to:from:subject:cc:message-id:date
 :content-transfer-encoding:mime-version:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=S2ueIGZGFFuijyr+mi84RMycpanED72itl8B8kGLf0A=;
 b=cCA0MZCDQJXKJ1it1zruX2eH+PFS/zn+5AQlaHu0cs5/1XKyn5IfUj7QtWciV2MxKk
 Vouhy1B081CZXyuIzSCktGQ73sGEB6ghGnWMfXhVE5N/IneM/VVlcml1cAb/4k+7aSX3
 WkYmSd+9jgKFfpirqgd4XG3VDdCJdDJIOL+9q6psvycbKxWywYwyn9iiGcgo0j2zWD3W
 wSbaY8+zHW9tpJpdvIlbTzMGjDRIKvME/0QUxQla7GIUImId3LKdN9ElVtfgYgQox9u3
 Tt5ZZIRahpdnLy8z9Zq3hh50I3zhQY7gAJlwAMWQ8Mr/UIwW2P/zv0otY0zy6bV+OqhS
 bZ5w==
X-Forwarded-Encrypted: i=1;
 AJvYcCUMPL7eQ88jj57Jb+TOsCbc5ug/Xa0jBlKWuj1Qm5O+OqJr+KUBL2uyJ6DnN+jb7ZyVxt2j7ygRi3+gt8M2FQg=@lists.osuosl.org
X-Gm-Message-State: AOJu0Ywslits8ZsuhLI5y3g4okk6ubq0zmSzGqPpxIvkz0icYd9QPnzt
 Vf8xsbx1jXONWpyg3hQVWxYmIIwom5AQnpMgFeGOThcjpBBdcekcSiaJKZbTruc=
X-Google-Smtp-Source: AGHT+IHLIvf/mdkUVnE3YZebgoJmimuDbqbaYR4qzhNrK3mnyNkUciw2Q6Oqe3tYnWECPsRjHMl9cA==
X-Received: by 2002:a5d:5e0f:0:b0:37d:3256:76e4 with SMTP id
 ffacd0b85a97d-37d32567825mr266216f8f.11.1728371759077; 
 Tue, 08 Oct 2024 00:15:59 -0700 (PDT)
Received: from localhost ([2a09:bac1:27c0:58::241:66])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-37d1690f767sm7340969f8f.20.2024.10.08.00.15.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Oct 2024 00:15:58 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 08 Oct 2024 09:15:56 +0200
Message-Id: <D4Q8NJRMZCYY.QRM4L1W95PE2@bobby>
From: "Arthur Fabre" <afabre@cloudflare.com>
To: "Stanislav Fomichev" <stfomichev@gmail.com>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
X-Mailer: aerc 0.8.2
References: <87zfnnq2hs.fsf@toke.dk> <Zv18pxsiTGTZSTyO@mini-arch>
 <87ttdunydz.fsf@toke.dk> <Zv3N5G8swr100EXm@mini-arch>
 <D4LYNKGLE7G0.3JAN5MX1ATPTB@bobby> <Zv794Ot-kOq1pguM@mini-arch>
 <2fy5vuewgwkh3o3mx5v4bkrzu6josqylraa4ocgzqib6a7ozt4@hwsuhcibtcb6>
 <038fffa3-1e29-4c6d-9e27-8181865dca46@kernel.org>
 <ZwArrsqrYx7IM5tq@mini-arch> <87ldz1edaz.fsf@toke.dk>
 <ZwQtAHpg2LB-7en_@mini-arch>
In-Reply-To: <ZwQtAHpg2LB-7en_@mini-arch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1728371759; x=1728976559;
 darn=lists.osuosl.org; 
 h=in-reply-to:references:to:from:subject:cc:message-id:date
 :content-transfer-encoding:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=S2ueIGZGFFuijyr+mi84RMycpanED72itl8B8kGLf0A=;
 b=O8XPXfUVzpTQwt26d+jVxgRk5iPfW1l7TFo3KptwzPXLNnGYP/IHNOjfgSEEBniFpc
 6slO+YYXJ6Xxa50WS9sveoi4yocvgMphqdPGY9Wjf6bfoKUanTWssd9PmOt9H4GEyWkd
 U0gSVjKoJ9SjLwaAJ8TLF1wX3uJ8LL3KNNeWCENvbDc9/BRzlcYeHYFtan5Q8Id6TsWJ
 qVjhUQ1JfZT1/G6z72iTujveRTL6htWBsfhsniBQJyhnaEM/hyhgu9HpPNfy0ThjMY0H
 1H7X2Y9VVYDJtvbxm0wXjxm+s2srJNf9Iad+X6xFjHPmIEoVLaJZfCk8D8LIvdlNLZSO
 o5lw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=O8XPXfUV
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
 Daniel Xu <dxu@dxuuu.xyz>, netdev@vger.kernel.org, tariqt@nvidia.com,
 Alexander Lobakin <aleksander.lobakin@intel.com>, mcoquelin.stm32@gmail.com,
 bpf@vger.kernel.org, saeedm@nvidia.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon Oct 7, 2024 at 8:48 PM CEST, Stanislav Fomichev wrote:
> On 10/06, Toke H=C3=B8iland-J=C3=B8rgensen wrote:
> > Stanislav Fomichev <stfomichev@gmail.com> writes:
> >=20
> > > On 10/04, Jesper Dangaard Brouer wrote:
> > >>=20
> > >>=20
> > >> On 04/10/2024 04.13, Daniel Xu wrote:
> > >> > On Thu, Oct 03, 2024 at 01:26:08PM GMT, Stanislav Fomichev wrote:
> > >> > > On 10/03, Arthur Fabre wrote:
> > >> > > > On Thu Oct 3, 2024 at 12:49 AM CEST, Stanislav Fomichev wrote:
> > >> > > > > On 10/02, Toke H=C3=B8iland-J=C3=B8rgensen wrote:
> > >> > > > > > Stanislav Fomichev <stfomichev@gmail.com> writes:
> > >> > > > > >=20
> > >> > > > > > > On 10/01, Toke H=C3=B8iland-J=C3=B8rgensen wrote:
> > >> > > > > > > > Lorenzo Bianconi <lorenzo@kernel.org> writes:
> > >> > > > > > > >=20
> > >> > > > > > > > > > On Mon Sep 30, 2024 at 1:49 PM CEST, Lorenzo Bianc=
oni wrote:
> > >> > > > > > > > > > > > Lorenzo Bianconi <lorenzo@kernel.org> writes:
> > >> > > > > > > > > > > >=20
> > >> [...]
> > >> > > > > > > > > > > > >=20
> > >> > > > > > > > > > > > > I like this 'fast' KV approach but I guess w=
e should really evaluate its
> > >> > > > > > > > > > > > > impact on performances (especially for xdp) =
since, based on the kfunc calls
> > >> > > > > > > > > > > > > order in the ebpf program, we can have one o=
r multiple memmove/memcpy for
> > >> > > > > > > > > > > > > each packet, right?
> > >> > > > > > > > > > > >=20
> > >> > > > > > > > > > > > Yes, with Arthur's scheme, performance will be=
 ordering dependent. Using
> > >>=20
> > >> I really like the *compact* Key-Value (KV) store idea from Arthur.
> > >>  - The question is it is fast enough?
> > >>=20
> > >> I've promised Arthur to XDP micro-benchmark this, if he codes this u=
p to
> > >> be usable in the XDP code path.  Listening to the LPC recording I he=
ard
> > >> that Alexei also saw potential and other use-case for this kind of
> > >> fast-and-compact KV approach.
> > >>=20
> > >> I have high hopes for the performance, as Arthur uses POPCNT instruc=
tion
> > >> which is *very* fast[1]. I checked[2] AMD Zen 3 and 4 have Ops/Laten=
cy=3D1
> > >> and Reciprocal throughput 0.25.
> > >>=20
> > >>  [1] https://www.agner.org/optimize/blog/read.php?i=3D853#848
> > >>  [2] https://www.agner.org/optimize/instruction_tables.pdf
> > >>=20
> > >> [...]
> > >> > > > There are two different use-cases for the metadata:
> > >> > > >=20
> > >> > > > * "Hardware" metadata (like the hash, rx_timestamp...). There =
are only a
> > >> > > >    few well known fields, and only XDP can access them to set =
them as
> > >> > > >    metadata, so storing them in a struct somewhere could make =
sense.
> > >> > > >=20
> > >> > > > * Arbitrary metadata used by services. Eg a TC filter could se=
t a field
> > >> > > >    describing which service a packet is for, and that could be=
 reused for
> > >> > > >    iptables, routing, socket dispatch...
> > >> > > >    Similarly we could set a "packet_id" field that uniquely id=
entifies a
> > >> > > >    packet so we can trace it throughout the network stack (thr=
ough
> > >> > > >    clones, encap, decap, userspace services...).
> > >> > > >    The skb->mark, but with more room, and better support for s=
haring it.
> > >> > > >=20
> > >> > > > We can only know the layout ahead of time for the first one. A=
nd they're
> > >> > > > similar enough in their requirements (need to be stored somewh=
ere in the
> > >> > > > SKB, have a way of retrieving each one individually, that it s=
eems to
> > >> > > > make sense to use a common API).
> > >> > >=20
> > >> > > Why not have the following layout then?
> > >> > >=20
> > >> > > +---------------+-------------------+---------------------------=
-------------+------+
> > >> > > | more headroom | user-defined meta | hw-meta (potentially fixed=
 skb format) | data |
> > >> > > +---------------+-------------------+---------------------------=
-------------+------+
> > >> > >                  ^                                              =
              ^
> > >> > >              data_meta                                          =
            data
> > >> > >=20
> > >> > > You obviously still have a problem of communicating the layout i=
f you
> > >> > > have some redirects in between, but you, in theory still have th=
is
> > >> > > problem with user-defined metadata anyway (unless I'm missing
> > >> > > something).
> > >> > >=20
> > >>=20
> > >> Hmm, I think you are missing something... As far as I'm concerned we=
 are
> > >> discussing placing the KV data after the xdp_frame, and not in the X=
DP
> > >> data_meta area (as your drawing suggests).  The xdp_frame is stored =
at
> > >> the very top of the headroom.  Lorenzo's patchset is extending struc=
t
> > >> xdp_frame and now we are discussing to we can make a more flexible A=
PI
> > >> for extending this. I understand that Toke confirmed this here [3]. =
 Let
> > >> me know if I missed something :-)
> > >>=20
> > >>  [3] https://lore.kernel.org/all/874j62u1lb.fsf@toke.dk/
> > >>
> > >> As part of designing this flexible API, we/Toke are trying hard not =
to
> > >> tie this to a specific data area.  This is a good API design, keepin=
g it
> > >> flexible enough that we can move things around should the need arise=
.
> > >>=20
> > >> I don't think it is viable to store this KV data in XDP data_meta ar=
ea,
> > >> because existing BPF-prog's already have direct memory (write) acces=
s
> > >> and can change size of area, which creates too much headache with
> > >> (existing) BPF-progs creating unintentional breakage for the KV stor=
e,
> > >> which would then need extensive checks to handle random corruptions
> > >> (slowing down KV-store code).
> > >
> > > Yes, I'm definitely missing the bigger picture. If we want to have a =
global
> > > metadata registry in the kernel, why can't it be built on top of the =
existing
> > > area?
> >=20
> > Because we have no way of preventing existing XDP programs from
> > overwriting (corrupting) the area using the xdp_adjust_meta() API and
> > data_meta field.
>
> True, but this can be solved with some new BPF_F_XDP_HAS_FRAGS-like
> flag (which can reject loading if there is some incompatibility)?
> Even in the new KV-metadata world, 2+ programs still need to be
> aware of the new method to work correctly. But I do see your point
> that it's better to not apply any metadata than apply something
> that's corrupt/overridden.

Currently the new KV-metadata will be tied to XDP, because most NICs only
reserve enough headroom if an XDP program is attached.

But longer-term, I'm hoping to lift this restriction to let users not using
XDP (eg using TC only, or other hook points) use the KV metadata too.
Enabling it with an XDP flag would make that hard.

We also want to store the new KV metadata at the start of the headroom=20
(right after xdp_frame) so that we don't have to move it for every=20
xdp_adjust_head() call.

That makes it very easy for them to coexist, it's just a few bounds
checks when we grow each one.

> > But in a sense the *memory area* is shared between the two APIs, in the
> > sense that they both use the headroom before the packet data, just from
> > opposite ends. So if you store lots of data using the new KV API, that
> > space will no longer be available for xdp_adjust_{head,meta}. But the
> > kernel can enforce this so we don't get programs corrupting the KV
> > format.
>
> Ack, let's see how it shapes out. My main concern comes from the
> growing api surface where for af_xdp it's one mechanism, for xdp
> redirect it's another. And for Jakub's consumption from userspace
> it's gonna be another special case probably (to read it out from the
> headroom head)? Idk, maybe it's fine as long as each case is clearly
> documented.

You're right, there's going to be relatively big API surface. Hopefully
the APIs should all be very similar, and we'll document them.
