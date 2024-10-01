Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B3A98BF79
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Oct 2024 16:16:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2257760854;
	Tue,  1 Oct 2024 14:16:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xFIFwi5-pXEs; Tue,  1 Oct 2024 14:16:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8785060845
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727792170;
	bh=bPrqx8PPN9XzYdGiRloXrCcCI6p+F6yes4vFqB5rjxE=;
	h=Date:To:From:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a4HNZlxbQEmoKi8T39QIzT27aegqzSSk1Caisj/4yehQotLAO5D15HrmCf9Jud69H
	 qAR8diCgZuBdOdWMXcXWwjdJuCkDXogCD+j1H4fr/dqR8RLbZIvqngicEhEmig79HZ
	 34hR8NpJ5dkZZTG9mf9n4d+5tIdo8azt5y2+IcYcbn74vNmIFKs581ZloUbs0RFMAL
	 A6huXACi6ZAsRrLfn6augFb/l4tqwfgz3ifLgRQwJVvhbPIYBepIfkzYBuk0zW1BwZ
	 +QjmSi6MSsm2ODFTOP8FKuVBsf/A4QPb+tQp5ILQqHme07ZnixKaO4cJkep9MNqwgY
	 1GzRxMKoAgMtg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8785060845;
	Tue,  1 Oct 2024 14:16:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0AA421BF280
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 14:16:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EC16060845
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 14:16:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n_xlwht6Bnhh for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Oct 2024 14:16:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::334; helo=mail-wm1-x334.google.com;
 envelope-from=afabre@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C941C607CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C941C607CA
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C941C607CA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 14:16:06 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 5b1f17b1804b1-42cafda818aso53670235e9.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 01 Oct 2024 07:16:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727792165; x=1728396965;
 h=in-reply-to:references:from:subject:cc:to:message-id:date
 :content-transfer-encoding:mime-version:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=bPrqx8PPN9XzYdGiRloXrCcCI6p+F6yes4vFqB5rjxE=;
 b=XszkwzwHW2yT/wWwI8ilT5Rz/1Fl5XxMOggp9xWG8Ja2WJ4FyInfniaUqc9IEhvQLH
 9h1U/Y1KsXLaKNk+XxJVnC3Yy9YCjYFj98ggd7psnxbeRuCBi0CEmgyc59llHBej94Xx
 UeKWJCTjGvLyrKuiXLPG4xt8JSmdMTaXuHIM1wEOIuPMBTVerdai2t5xchDuYUVp2eJL
 2sduaZuq/CwfoO0y38E5KYm8TgZYFNfepJy4iS3x+OpnDothkFPlwVLkFvkvVM0TmLhZ
 vOYi9oJBZsOh35Xz55rocoFZTTvYRGL3kH0kFWH6qT9lYSjFZ61j9dCFaYEV0uK5OhUb
 QtdA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWeBa/Sr4eDp5Cz0a6x20Y+1lrn1jb8i4qHoD3WmG5t8kRGhtsBrDJQZNcbll+AQ6WTxrQrTBHHaWddqaqpqi4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxCSRD2XGyW7WDlSUNcg8l9xhPL7XLwD1F3PV8mQARPi2MgMCeZ
 P3K4BNo0UDIWY7fpQqsNkqVgE6UbpxSDFKJYP8HjfnEl5ilbJiROskL62B8jdoc=
X-Google-Smtp-Source: AGHT+IEEDzSlqoarEzAhT2UJAuTsLs2NfHPHAaT2ZOAuyTteim903U5oB5dlvZ+hPXsXiJoXmrWn3A==
X-Received: by 2002:a05:600c:1e10:b0:42c:bbd5:af60 with SMTP id
 5b1f17b1804b1-42f701c0b90mr32726345e9.24.1727792164685; 
 Tue, 01 Oct 2024 07:16:04 -0700 (PDT)
Received: from localhost ([2a09:bac1:27c0:58::241:6e])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-37cd5730e55sm11937580f8f.82.2024.10.01.07.16.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 01 Oct 2024 07:16:04 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 01 Oct 2024 16:16:02 +0200
Message-Id: <D4KJ7DUXJQC5.2UFST9L3CUOH7@bobby>
To: "Lorenzo Bianconi" <lorenzo@kernel.org>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
From: "Arthur Fabre" <afabre@cloudflare.com>
X-Mailer: aerc 0.8.2
References: <09657be6-b5e2-4b5a-96b6-d34174aadd0a@kernel.org>
 <Zu_gvkXe4RYjJXtq@lore-desk> <87ldzkndqk.fsf@toke.dk>
 <CAOn4ftshf3pyAst27C2haaSj4eR2n34_pcwWBc5o3zHBkwRb3g@mail.gmail.com>
 <87wmiysi37.fsf@toke.dk> <D4GBY7CHJNJ6.3O18I5W1FTPKR@bobby>
 <87ldzds8bp.fsf@toke.dk> <D4H5CAN4O95E.3KF8LAH75FYD4@bobby>
 <ZvbKDT-2xqx2unrx@lore-rh-laptop> <871q11s91e.fsf@toke.dk>
 <ZvqQOpqnK9hBmXNn@lore-desk>
In-Reply-To: <ZvqQOpqnK9hBmXNn@lore-desk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1727792165; x=1728396965;
 darn=lists.osuosl.org; 
 h=in-reply-to:references:from:subject:cc:to:message-id:date
 :content-transfer-encoding:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=bPrqx8PPN9XzYdGiRloXrCcCI6p+F6yes4vFqB5rjxE=;
 b=BBTPzxfUR+yQloOvBIv2zNfZ/jczkQATHAR152CzkONuK8xwMVDHHtNba/xsVtYiuy
 buGx/go4RTJiIpUTI99q2ZR04cwYVWR8i6BfW+ZjTerbtX0QLA5anrG2M6ru0Ol27yFH
 Q4e2zkf/8pz/d8+V0u4N9G/wlRmrb46q+3QZgHlxJH51oZqufgPp3kY9LiJu75k0GbKn
 B8zq0FGme4UOn7Z5tCChvWHUjyzsK1Ek7ASGSSwZAHcnmbF0XUHaslUhma1VIE2vLRaa
 Et4BlvUWHO3D9J1EIAPSHbQD8Qsca7GT+zcj0T9YNpIXsN7uk8OexgODv23PVF9GgYzU
 n5YA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=BBTPzxfU
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
 kuba@kernel.org, pabeni@redhat.com, Jesper Dangaard
 Brouer <hawk@kernel.org>, alexandre.torgue@foss.st.com, netdev@vger.kernel.org,
 tariqt@nvidia.com, Alexander Lobakin <aleksander.lobakin@intel.com>,
 mcoquelin.stm32@gmail.com, bpf@vger.kernel.org, saeedm@nvidia.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon Sep 30, 2024 at 1:49 PM CEST, Lorenzo Bianconi wrote:
> > Lorenzo Bianconi <lorenzo@kernel.org> writes:
> >=20
> > >> > We could combine such a registration API with your header format, =
so
> > >> > that the registration just becomes a way of allocating one of the =
keys
> > >> > from 0-63 (and the registry just becomes a global copy of the head=
er).
> > >> > This would basically amount to moving the "service config file" in=
to the
> > >> > kernel, since that seems to be the only common denominator we can =
rely
> > >> > on between BPF applications (as all attempts to write a common dae=
mon
> > >> > for BPF management have shown).
> > >>=20
> > >> That sounds reasonable. And I guess we'd have set() check the global
> > >> registry to enforce that the key has been registered beforehand?
> > >>=20
> > >> >
> > >> > -Toke
> > >>=20
> > >> Thanks for all the feedback!
> > >
> > > I like this 'fast' KV approach but I guess we should really evaluate =
its
> > > impact on performances (especially for xdp) since, based on the kfunc=
 calls
> > > order in the ebpf program, we can have one or multiple memmove/memcpy=
 for
> > > each packet, right?
> >=20
> > Yes, with Arthur's scheme, performance will be ordering dependent. Usin=
g
> > a global registry for offsets would sidestep this, but have the
> > synchronisation issues we discussed up-thread. So on balance, I think
> > the memmove() suggestion will probably lead to the least pain.
> >=20
> > For the HW metadata we could sidestep this by always having a fixed
> > struct for it (but using the same set/get() API with reserved keys). Th=
e
> > only drawback of doing that is that we statically reserve a bit of
> > space, but I'm not sure that is such a big issue in practice (at least
> > not until this becomes to popular that the space starts to be contended=
;
> > but surely 256 bytes ought to be enough for everybody, right? :)).
>
> I am fine with the proposed approach, but I think we need to verify what =
is the
> impact on performances (in the worst case??)

If drivers are responsible for populating the hardware metadata before
XDP, we could make sure drivers set the fields in order to avoid any
memove() (and maybe even provide a helper to ensure this?).

> > > Moreover, I still think the metadata area in the xdp_frame/xdp_buff i=
s not
> > > so suitable for nic hw metadata since:
> > > - it grows backward=20
> > > - it is probably in a different cacheline with respect to xdp_frame
> > > - nic hw metadata will not start at fixed and immutable address, but =
it depends
> > >   on the running ebpf program
> > >
> > > What about having something like:
> > > - fixed hw nic metadata: just after xdp_frame struct (or if you want =
at the end
> > >   of the metadata area :)). Here he can reuse the same KV approach if=
 it is fast
> > > - user defined metadata: in the metadata area of the xdp_frame/xdp_bu=
ff
> >=20
> > AFAIU, none of this will live in the (current) XDP metadata area. It
> > will all live just after the xdp_frame struct (so sharing the space wit=
h
> > the metadata area in the sense that adding more metadata kv fields will
> > decrease the amount of space that is usable by the current XDP metadata
> > APIs).
> >=20
> > -Toke
> >=20
>
> ah, ok. I was thinking the proposed approach was to put them in the curre=
nt
> metadata field.

I've also been thinking of putting this new KV stuff at the start of the
headroom (I think that's what you're saying Toke?). It has a few nice
advantanges:

* It coexists nicely with the current XDP / TC metadata support.
Those users won't be able to overwrite / corrupt the KV metadata.
KV users won't need to call xdp_adjust_meta() (which would be awkward -
how would they know how much space the KV implementation needs).

* We don't have to move all the metadata everytime we call
xdp_adjust_head() (or the kernel equivalent).

Are there any performance implications of that, e.g. for caching?

This would also grow "upwards" which is more natural, but I think=20
either way the KV API would hide whether it's downwards or upwards from
users.

>
> Regards,
> Lorenzo

