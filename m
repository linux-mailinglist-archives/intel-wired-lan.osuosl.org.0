Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E70C98E9CE
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Oct 2024 08:51:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF8B74125C;
	Thu,  3 Oct 2024 06:51:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id snz3jgTWmduN; Thu,  3 Oct 2024 06:51:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 828C1412F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727938293;
	bh=WfFQOlU/FNGjfQVBBdMXE6R4DGDei7d3X3WOszlo3XY=;
	h=Date:To:From:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DltLzwzhg9cEbUXJbawOdGwjR/ha6n1Bidt5rzV5ZzAX3trzqbEZPaMuKPnqUIS1o
	 fxjxnDyf2xdWojFKGCTO5xvj8e49yelm1WKbY5MwE/y+KwFMZxtvI7iPBwcPbKELsG
	 iGbmso16HPG7dfGnHpXT2Jl2ieO16/D3JeUHwI19DXwYY0MjVzBSmHhr7FijIyoVxs
	 OKUzov18jHAH+ugQLqcWrtZzM/M9/iZzm3/5+gLcbv4TEhj01tTri/2A0uts598nPc
	 rZay/Qxe5CMFUi8QTLUpGl5jxp+XNE01/rw0vWTqFgcqzEPGLlug3l50RqJvyXbdwF
	 ugtplzIHoLC8g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 828C1412F5;
	Thu,  3 Oct 2024 06:51:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 693F41BF836
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 06:51:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6436B606AF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 06:51:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PTcAWZh5vcp8 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Oct 2024 06:51:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::12b; helo=mail-lf1-x12b.google.com;
 envelope-from=afabre@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 405E6606E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 405E6606E2
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com
 [IPv6:2a00:1450:4864:20::12b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 405E6606E2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 06:51:30 +0000 (UTC)
Received: by mail-lf1-x12b.google.com with SMTP id
 2adb3069b0e04-539908f238fso623862e87.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 02 Oct 2024 23:51:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727938288; x=1728543088;
 h=in-reply-to:references:from:subject:cc:to:message-id:date
 :content-transfer-encoding:mime-version:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=WfFQOlU/FNGjfQVBBdMXE6R4DGDei7d3X3WOszlo3XY=;
 b=lj3c32aTp15qJKdZO1rJt4Rr5ysdHsuzVFo6x6A5ch8aNZZeDRJ5vTpSNsCJnLnxWz
 A2WS1DE8a+BnkKBzRH5i3k4nZ/3R2ZEMXTxNJmbUZtGn2dprLhk9Udg9VEWf1y+aII7v
 8WIeFeOG6rGF53vKrwAkdTPpsvPfqOyR/pMzviZnP6ycyMr7I0T2QcSemYb/DhWq+kjr
 QgTHu8zL4PCoTngttbuK/DdSRGALD7Ih9mzQ4h4Y1xLf788kRtewDi4mAMMs/hTVkAaU
 D3uCQc5QToitYUmdSkzb38w5GO4kW9zz9qECYTxM8WFSBdNVFCQ5NVz7OYUeaKAmjB8J
 VjOg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXQmj/otOkLL8v5QdOBSq4jhaX7J99ATbEZYJPAo6+5bCp1eVDbVmnkB5HBoQqm8RZ7X+NPz3BICsxQWMoq3/c=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyU06wLSLfxqon15mDUHVRk8nOvWd272FFq4B5Go16/H9iwuelP
 EFD2zb/HjDYUt6hcK/X9Q6g5C6vAWQarahxHcoYrhAZwbS/nchRCVIkYkwrwRgs=
X-Google-Smtp-Source: AGHT+IFPzic61mAOdapq2igy/pJOJfz/CFhssuKDfJVb3+2mio6Wf7QJg2yWIWSfpPGTMK9HJ+plaw==
X-Received: by 2002:a05:6512:b90:b0:534:3cdc:dbfe with SMTP id
 2adb3069b0e04-539a067c3demr2912257e87.28.1727938287661; 
 Wed, 02 Oct 2024 23:51:27 -0700 (PDT)
Received: from localhost ([2a09:bac1:27c0:58::31:92])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42f802a0195sm7488605e9.38.2024.10.02.23.51.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Oct 2024 23:51:27 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 03 Oct 2024 08:51:25 +0200
Message-Id: <D4LZ01REEQLV.3M4VOEW5XK5YZ@bobby>
To: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
From: "Arthur Fabre" <afabre@cloudflare.com>
X-Mailer: aerc 0.8.2
References: <cover.1726935917.git.lorenzo@kernel.org>
 <1f53cd74-6c1e-4a1c-838b-4acc8c5e22c1@intel.com>
 <09657be6-b5e2-4b5a-96b6-d34174aadd0a@kernel.org>
 <Zu_gvkXe4RYjJXtq@lore-desk> <87ldzkndqk.fsf@toke.dk>
 <CAOn4ftshf3pyAst27C2haaSj4eR2n34_pcwWBc5o3zHBkwRb3g@mail.gmail.com>
 <87wmiysi37.fsf@toke.dk> <D4GBY7CHJNJ6.3O18I5W1FTPKR@bobby>
 <87ldzds8bp.fsf@toke.dk> <D4H5CAN4O95E.3KF8LAH75FYD4@bobby>
 <874j5xs9b1.fsf@toke.dk> <D4KIZY73DAJJ.EVUPLH612IV6@bobby>
 <87wmirq1uk.fsf@toke.dk>
In-Reply-To: <87wmirq1uk.fsf@toke.dk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1727938288; x=1728543088;
 darn=lists.osuosl.org; 
 h=in-reply-to:references:from:subject:cc:to:message-id:date
 :content-transfer-encoding:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=WfFQOlU/FNGjfQVBBdMXE6R4DGDei7d3X3WOszlo3XY=;
 b=WN2AXgMoVyoV71WIVAgwbDXo4YRTKezTmFoqkmxDp3F34/oJDRQ9ku7oB1vjBvVaMC
 CwKJVwo2lrenAHp037t0fvHqj9jrPVOQUHnl7aypF6XKu8djEewEp1pkV7HZJN7cWGKd
 eAhsQURV69Y7pOhf8RoPS7mH6ItVVh33A1JTzSLA9YEvjmpXnXcRGfGjqAPgEgPNgQ8k
 hlT8WG1MGLaryhf/MiI9wB9GW/bnwP/gBZAY5IOaYGbmQr5BKpBPIwDxW6mx3bKeW6mk
 iLMu9h0clD4FKZfSIUMNOW/1bYGGgpOd12TVr7LEjUuTp1AT8FQDAqN83TaovCQPYxTI
 kDXQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=WN2AXgMo
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
 Jesper Dangaard
 Brouer <hawk@kernel.org>, alexandre.torgue@foss.st.com, netdev@vger.kernel.org,
 tariqt@nvidia.com, Alexander Lobakin <aleksander.lobakin@intel.com>,
 mcoquelin.stm32@gmail.com, bpf@vger.kernel.org, saeedm@nvidia.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue Oct 1, 2024 at 5:28 PM CEST, Toke H=C3=B8iland-J=C3=B8rgensen wrote:
> "Arthur Fabre" <afabre@cloudflare.com> writes:
>
> > On Mon Sep 30, 2024 at 12:52 PM CEST, Toke H=C3=B8iland-J=C3=B8rgensen =
wrote:
> >> > Thinking about it more, my only relectance for a registration API is=
 how
> >> > to communicate the ID back to other consumers (our discussion below)=
.
> >> >
> >> >>
> >> >> > Dynamically registering fields means you have to share the return=
ed ID
> >> >> > with whoever is interested, which sounds tricky.
> >> >> > If an XDP program sets a field like packet_id, every tracing
> >> >> > program that looks at it, and userspace service, would need to kn=
ow what
> >> >> > the ID of that field is.
> >> >> > Is there a way to easily share that ID with all of them?
> >> >>
> >> >> Right, so I'll admit this was one of the handwavy bits of my origin=
al
> >> >> proposal, but I don't think it's unsolvable. You could do something=
 like
> >> >> (once, on application initialisation):
> >> >>
> >> >> __u64 my_key =3D bpf_register_metadata_field(my_size); /* maybe add=
 a name for introspection? */
> >> >> bpf_map_update(&shared_application_config, &my_key_index, &my_key);
> >> >>
> >> >> and then just get the key out of that map from all programs that wa=
nt to
> >> >> use it?
> >> >
> >> > Passing it out of band works (whether it's via a pinned map like you
> >> > described, or through other means like a unix socket or some other
> >> > API), it's just more complicated.
> >> >
> >> > Every consumer also needs to know about that API. That won't work wi=
th
> >> > standard tools. For example if we set a PACKET_ID KV, maybe we could
> >> > give it to pwru so it could track packets using it?
> >> > Without registering keys, we could pass it as a cli flag. With
> >> > registration, we'd have to have some helper to get the KV ID.
> >> >
> >> > It also introduces ordering dependencies between the services on
> >> > startup, eg packet tracing hooks could only be attached once our XDP
> >> > service has registered a PACKET_ID KV, and they could query it's API=
.
> >>
> >> Yeah, we definitely need a way to make that accessible and not too
> >> cumbersome.
> >>
> >> I suppose what we really need is a way to map an application-specific
> >> identifier to an ID. And, well, those identifiers could just be (strin=
g)
> >> names? That's what we do for CO-RE, after all. So you'd get something
> >> like:
> >>
> >> id =3D bpf_register_metadata_field("packet_id", 8, BPF_CREATE); /* reg=
ister */
> >>
> >> id =3D bpf_register_metadata_field("packet_id", 8, BPF_NO_CREATE); /* =
resolve */
> >>
> >> and we make that idempotent, so that two callers using the same name a=
nd
> >> size will just get the same id back; and if called with BPF_NO_CREATE,
> >> you'll get -ENOENT if it hasn't already been registered by someone els=
e?
> >>
> >> We could even make this a sub-command of the bpf() syscall if we want =
it
> >> to be UAPI, but that's not strictly necessary, applications can also
> >> just call the registration from a syscall program at startup...
> >
> > That's a nice API, it makes sharing the IDs much easier.
> >
> > We still have to worry about collisions (what if two different things
> > want to add their own "packet_id" field?). But at least:
> >
> > * "Any string" has many more possibilities than 0-64 keys.
>
> Yes, and it's easy to namespace (by prefixing, like
> APPNAME_my_metaname). But sure, if everyone uses very generic names that
> will be a problem.
>
> > * bpf_register_metadata() could return an error if a field is already
> > registered, instead of silently letting an application overwrite
> > metadata
>
> I don't think we can fundamentally solve the collision problem if we
> also need to allow sharing keys (on purpose). I.e., we can't distinguish
> between "these two applications deliberately want to share the packet_id
> field" and "these two applications accidentally both picked packet_id as
> their internal key".

Good point. We either have to be happy with sharing the small keys
space, or sharing the much bigger string space.

> I suppose we could pre-define some extra reserved keys if there turns
> out to be widely used identifiers that many applications want. But I'm
> not sure if that should be there from the start, it quickly becomes very
> speculative(packet_id comes to mind as one that might be generally
> useful, but I'm really not sure, TBH).
>
> > (although arguably we could have add a BPF_NOEXIST style flag
> > to the KV set() to kind of do the same).
>
> A global registry will need locking, so not sure it's a good idea to
> support inserting into it in the fast path?

(I meant just checking if a KV with that value has been set already or
not, in the case where we don't have a registration API).

That raises an interesting question: we probably won't be able to
ensure that the keys passed to set() have been registered ahead of time.
That would require checking the locked global registry as you point
out.=20

Misbehaving users could just skip calling register() altogether, and
directly pick a random key to use.

Maybe we could solve this by having a pair of atomic u64s per thread
storing the KV header to describe which keys are allowed to be set, and
what size they'll have? But that's starting to feel complicated.

(Same for the size parameter in register() - we won't be able to enforce
that that is actually the size then passed to set(). But I think we
can just drop it - anyways we can't check the size ahead of time because
we can't know about adjust_head() / expand_head() calls).

>
> > At least internally, it still feels like we'd maintain a registry of
> > these string fields and make them configurable for each service to avoi=
d
> > collisions.
>
> Yeah, see above. Some kind of coordination (like a registry) is
> impossible to avoid if you *want* to share data, but not sure how
> common that is?
>
> -Toke
