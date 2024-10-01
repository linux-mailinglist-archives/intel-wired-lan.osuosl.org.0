Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E44698C19D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Oct 2024 17:28:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B83D26076F;
	Tue,  1 Oct 2024 15:28:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mSYH6P62lqWt; Tue,  1 Oct 2024 15:28:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A29AD60776
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727796525;
	bh=kRGJHFt1DyMRV2jFQBHdFqWxCL+YxoRO1mRYWbFhgaw=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=J7K47MMNn2byx4ks8CiUPN/d6r6wxFZA0Ir/td6OptmfCJbiwm64Ipd20YmTxbsx6
	 cn2B5QTQhxHHcYpkNLNo+6AQ9ctPf8lt3kDfITLZV/uSU/TdwuHT4DmYZ/kr0IYkZt
	 6pZ0+r/jyv2D7oB2wXPY26SIXl+9e68ZNXF4roH/90LZCQP7PjGzb8NhLUTrQhyEsL
	 nHtMcwVKpfAm42gQQs3jfQvEo6TXD9dzW/0jET/aHq3RJcoFVpRA4HXCMUg+Onk75Q
	 RFiVq4g4ckUR3LihqvSKqVhrmAhAEp1JrwBYjbYQyNJah6hN4y0GpQ+kO+v0bVPC/Y
	 35Y4hv7tn75Sg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A29AD60776;
	Tue,  1 Oct 2024 15:28:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6F98E1BF846
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 15:28:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5CCC740401
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 15:28:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hv6ozvzy3Ayg for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Oct 2024 15:28:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=toke@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2E066403F4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E066403F4
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2E066403F4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 15:28:40 +0000 (UTC)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-483-hFDIIHXJMiqul48NQ8PXhQ-1; Tue, 01 Oct 2024 11:28:38 -0400
X-MC-Unique: hFDIIHXJMiqul48NQ8PXhQ-1
Received: by mail-ed1-f70.google.com with SMTP id
 4fb4d7f45d1cf-5c878e2dbb0so6661816a12.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 01 Oct 2024 08:28:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727796517; x=1728401317;
 h=content-transfer-encoding:mime-version:message-id:date:references
 :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=kRGJHFt1DyMRV2jFQBHdFqWxCL+YxoRO1mRYWbFhgaw=;
 b=fP93NWqEhBZ31p7aYE8kYfEp/tyf06khNr27frFotx626WXakMuDSLl41qU4vMLSpE
 If3H5lFzSvzpiveZDDc7xqZjD1TT7qDAfHDEG4e9hrwAm+wPZ+NLX0fLzWf+LV2uq523
 qLYuouoq6A9AIYpiaf3w3n9up0jEuPGFFUWIg+Wxh8pQXXk4Akfr5LyKfPZrxx97qmhY
 VPOJeCYslE8DDWKqJrmAZ7g37gzhAUzq6ETgel5+cbE3wbty5dkwz8GTgJcu/1ydFxjP
 geFFp3ursGr+n2gjlvUrxIo1BVy7dcdRbfPpFR9AqF39AdZMU52YU2iikGR8BrsvEE8i
 LoXg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWEWmyo1zYDkie1zCFTrPgvh1lhI6vu4S23/vPZwkTxkPeoAKoP7lXumQmpXDQOSXsuCBgrnH63+kAR/udWVj8=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy6J0hivP1fP42PCiQnVnIDIvdPcebpG8Qa08FgVSviTcgYgWJh
 2fVQGCcdu7eP1a6Iqb0Smxld1IutsMlgJhB8joU90wuO+/U6TOsBfOe1V2QAvUMt2faAXFs1rpD
 3HCa4JgMjh8kuHS3B2ifxLIAbqggtQfqZ1C2LnuGvKNv1fXunTx7MrMtCSnbxpmg3Q8M=
X-Received: by 2002:a05:6402:13d5:b0:5c4:1c0c:cc6d with SMTP id
 4fb4d7f45d1cf-5c8a296ec35mr4384650a12.0.1727796517136; 
 Tue, 01 Oct 2024 08:28:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHEcFj/QsrkctIUVpfyghKeZFMPLkKED4ekT6bU42YuhHO3I9kjOshTBDPGh8Wg4VrpGA3Yzg==
X-Received: by 2002:a05:6402:13d5:b0:5c4:1c0c:cc6d with SMTP id
 4fb4d7f45d1cf-5c8a296ec35mr4384580a12.0.1727796516610; 
 Tue, 01 Oct 2024 08:28:36 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-5c88245eb38sm6582810a12.48.2024.10.01.08.28.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2024 08:28:36 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 37EF61580162; Tue, 01 Oct 2024 17:28:35 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Arthur Fabre <afabre@cloudflare.com>
In-Reply-To: <D4KIZY73DAJJ.EVUPLH612IV6@bobby>
References: <cover.1726935917.git.lorenzo@kernel.org>
 <1f53cd74-6c1e-4a1c-838b-4acc8c5e22c1@intel.com>
 <09657be6-b5e2-4b5a-96b6-d34174aadd0a@kernel.org>
 <Zu_gvkXe4RYjJXtq@lore-desk> <87ldzkndqk.fsf@toke.dk>
 <CAOn4ftshf3pyAst27C2haaSj4eR2n34_pcwWBc5o3zHBkwRb3g@mail.gmail.com>
 <87wmiysi37.fsf@toke.dk> <D4GBY7CHJNJ6.3O18I5W1FTPKR@bobby>
 <87ldzds8bp.fsf@toke.dk> <D4H5CAN4O95E.3KF8LAH75FYD4@bobby>
 <874j5xs9b1.fsf@toke.dk> <D4KIZY73DAJJ.EVUPLH612IV6@bobby>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 01 Oct 2024 17:28:35 +0200
Message-ID: <87wmirq1uk.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1727796519;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kRGJHFt1DyMRV2jFQBHdFqWxCL+YxoRO1mRYWbFhgaw=;
 b=ZDCdhgGR5QPE/XMedmTECTyJKkyL3xdWDnjcbeNxO3X/QS1KV7IL/xs2+NW4j9iTUykdpk
 L45n7gwXIZPKvy7axc/BVfIVX6qAXvtnuluwI/ut2+JoIzO4H0CV3YHlAGL5trGesJ9Dhm
 o/6gMeAWPKu56/8SP1r4Rni5A/MQQSk=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ZDCdhgGR
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

"Arthur Fabre" <afabre@cloudflare.com> writes:

> On Mon Sep 30, 2024 at 12:52 PM CEST, Toke H=C3=B8iland-J=C3=B8rgensen wr=
ote:
>> > Thinking about it more, my only relectance for a registration API is h=
ow
>> > to communicate the ID back to other consumers (our discussion below).
>> >
>> >>
>> >> > Dynamically registering fields means you have to share the returned=
 ID
>> >> > with whoever is interested, which sounds tricky.
>> >> > If an XDP program sets a field like packet_id, every tracing
>> >> > program that looks at it, and userspace service, would need to know=
 what
>> >> > the ID of that field is.
>> >> > Is there a way to easily share that ID with all of them?
>> >>
>> >> Right, so I'll admit this was one of the handwavy bits of my original
>> >> proposal, but I don't think it's unsolvable. You could do something l=
ike
>> >> (once, on application initialisation):
>> >>
>> >> __u64 my_key =3D bpf_register_metadata_field(my_size); /* maybe add a=
 name for introspection? */
>> >> bpf_map_update(&shared_application_config, &my_key_index, &my_key);
>> >>
>> >> and then just get the key out of that map from all programs that want=
 to
>> >> use it?
>> >
>> > Passing it out of band works (whether it's via a pinned map like you
>> > described, or through other means like a unix socket or some other
>> > API), it's just more complicated.
>> >
>> > Every consumer also needs to know about that API. That won't work with
>> > standard tools. For example if we set a PACKET_ID KV, maybe we could
>> > give it to pwru so it could track packets using it?
>> > Without registering keys, we could pass it as a cli flag. With
>> > registration, we'd have to have some helper to get the KV ID.
>> >
>> > It also introduces ordering dependencies between the services on
>> > startup, eg packet tracing hooks could only be attached once our XDP
>> > service has registered a PACKET_ID KV, and they could query it's API.
>>
>> Yeah, we definitely need a way to make that accessible and not too
>> cumbersome.
>>
>> I suppose what we really need is a way to map an application-specific
>> identifier to an ID. And, well, those identifiers could just be (string)
>> names? That's what we do for CO-RE, after all. So you'd get something
>> like:
>>
>> id =3D bpf_register_metadata_field("packet_id", 8, BPF_CREATE); /* regis=
ter */
>>
>> id =3D bpf_register_metadata_field("packet_id", 8, BPF_NO_CREATE); /* re=
solve */
>>
>> and we make that idempotent, so that two callers using the same name and
>> size will just get the same id back; and if called with BPF_NO_CREATE,
>> you'll get -ENOENT if it hasn't already been registered by someone else?
>>
>> We could even make this a sub-command of the bpf() syscall if we want it
>> to be UAPI, but that's not strictly necessary, applications can also
>> just call the registration from a syscall program at startup...
>
> That's a nice API, it makes sharing the IDs much easier.
>
> We still have to worry about collisions (what if two different things
> want to add their own "packet_id" field?). But at least:
>
> * "Any string" has many more possibilities than 0-64 keys.

Yes, and it's easy to namespace (by prefixing, like
APPNAME_my_metaname). But sure, if everyone uses very generic names that
will be a problem.

> * bpf_register_metadata() could return an error if a field is already
> registered, instead of silently letting an application overwrite
> metadata

I don't think we can fundamentally solve the collision problem if we
also need to allow sharing keys (on purpose). I.e., we can't distinguish
between "these two applications deliberately want to share the packet_id
field" and "these two applications accidentally both picked packet_id as
their internal key".

I suppose we could pre-define some extra reserved keys if there turns
out to be widely used identifiers that many applications want. But I'm
not sure if that should be there from the start, it quickly becomes very
speculative(packet_id comes to mind as one that might be generally
useful, but I'm really not sure, TBH).

> (although arguably we could have add a BPF_NOEXIST style flag
> to the KV set() to kind of do the same).

A global registry will need locking, so not sure it's a good idea to
support inserting into it in the fast path?

> At least internally, it still feels like we'd maintain a registry of
> these string fields and make them configurable for each service to avoid
> collisions.

Yeah, see above. Some kind of coordination (like a registry) is
impossible to avoid if you *want* to share data, but not sure how
common that is?

-Toke

