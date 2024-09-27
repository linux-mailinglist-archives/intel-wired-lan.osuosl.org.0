Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B6F988775
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Sep 2024 16:46:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 90531614FC;
	Fri, 27 Sep 2024 14:46:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sAkMHi0tqPcg; Fri, 27 Sep 2024 14:46:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F0DD614FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727448379;
	bh=pBWJEvr3pPNxkYgYQljnvrufA5be6F/pvfPSHGh2Rs8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WV52PRD6hVE/CbUumbkKzIKgycZBVItIXL0kFmnXCS/x2HaA5sIphVVHCFdHFV5M3
	 haHKJI7VOm2IM5Z9RqDKoKNrk4iHttiPnWp2C9iN8oDhCJQUM5SjMZO1+n4H+Bo8YW
	 CyC/PK6RKxhV6wtnOg5+0LXDaIEtDfMd7y6QpSToMjVOXU3IAoDD3syLKYry4yJFMk
	 +kLM30c3O0R/4sXnz7tJn26ZMGZbay4kRuSmteTKEfgHSuVubv+IXjT43oFsXF0Rwk
	 Vj9BwoCJ8x9y6G48rjyHkOyYqmeKvoEZgjhtmLNqZGiYKLBuSUNSJyiBCORXJdjELx
	 aF3XcE80GA6aQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F0DD614FB;
	Fri, 27 Sep 2024 14:46:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3D0531BF2BA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 14:46:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2AE3F84E2E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 14:46:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 06HvhexxrS0C for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Sep 2024 14:46:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::335; helo=mail-wm1-x335.google.com;
 envelope-from=afabre@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B8CA084E26
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8CA084E26
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B8CA084E26
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 14:46:16 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 5b1f17b1804b1-42cb806623eso18656205e9.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 07:46:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727448374; x=1728053174;
 h=in-reply-to:references:to:from:subject:cc:message-id:date
 :content-transfer-encoding:mime-version:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=pBWJEvr3pPNxkYgYQljnvrufA5be6F/pvfPSHGh2Rs8=;
 b=LTkPBW36tUtEqzSKC+SsyVTbBEvhSXaLvBoDAZTMiFs16WkBvn5BCvVtAESBRTdWqq
 AyxTypucK0UG9W5gr2Rm9a11arHZv8Ri3FSWREGP4FgKEUQxs9NBdVyBAZLD0jiD1eV/
 OFbbrElZIqHF43ZnrHNk8stTo+8pfH7aIQrwFTG6JAoDvLumrVFyb5r+cdK+aOhhlmt+
 +QjZ2IBa932Vq46sXA1PzWFozvyGFzhwi9NIRrtmTE/s0KxHTQnC+0QRA/nm/u9zSRuz
 i39TJlhzz3y4PG2gAPm1aCPVjwAVIMuRa2DngcPBYQB+SqCFVGMEtX3G0/l+KKHOan66
 1d7Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCWeyI2s/CJ66ccBX+0ErqiuPjxJiPNX69Gy5ao0zJfQXJeJQQxXHvzgIrcEp/JqPojHA9RHqF3lHm7q9zNpzCw=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz6lOdsq7RfxQCE3VVMIRvoT8ASMEsPuunX5Oc4PvwM4GFwIMiU
 qn7kSS5zQ11ALE7J/6P1H1SNwAfdTiF8xT+cEa65azjFCO9IuO9WAN9Ka5UwBCM=
X-Google-Smtp-Source: AGHT+IHQKLJJrUYp85Jvw0HbSR1wOzuqg4xDJnjF9OQOqaiPfBjqrgxkyqZicn79MqwipuNZXWMuZg==
X-Received: by 2002:a05:600c:3155:b0:42b:a9d7:93 with SMTP id
 5b1f17b1804b1-42f58480fb3mr22450835e9.28.1727448374086; 
 Fri, 27 Sep 2024 07:46:14 -0700 (PDT)
Received: from localhost ([2a09:bac1:27c0:58::241:20])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42f57dd2e67sm28973095e9.10.2024.09.27.07.46.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 27 Sep 2024 07:46:13 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 27 Sep 2024 16:46:12 +0200
Message-Id: <D4H5CAN4O95E.3KF8LAH75FYD4@bobby>
From: "Arthur Fabre" <afabre@cloudflare.com>
To: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
X-Mailer: aerc 0.8.2
References: <cover.1726935917.git.lorenzo@kernel.org>
 <1f53cd74-6c1e-4a1c-838b-4acc8c5e22c1@intel.com>
 <09657be6-b5e2-4b5a-96b6-d34174aadd0a@kernel.org>
 <Zu_gvkXe4RYjJXtq@lore-desk> <87ldzkndqk.fsf@toke.dk>
 <CAOn4ftshf3pyAst27C2haaSj4eR2n34_pcwWBc5o3zHBkwRb3g@mail.gmail.com>
 <87wmiysi37.fsf@toke.dk> <D4GBY7CHJNJ6.3O18I5W1FTPKR@bobby>
 <87ldzds8bp.fsf@toke.dk>
In-Reply-To: <87ldzds8bp.fsf@toke.dk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1727448374; x=1728053174;
 darn=lists.osuosl.org; 
 h=in-reply-to:references:to:from:subject:cc:message-id:date
 :content-transfer-encoding:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pBWJEvr3pPNxkYgYQljnvrufA5be6F/pvfPSHGh2Rs8=;
 b=R9tRyxMC5avEUw9MKH8jpv81l71QoCLFkOHsT7RU3b6OKS2YeSSZrDIjJzvCO0v5Gm
 TII4dF7LwDaazsvIlrEwMiyXth+jqD5jHAKVHv9M+80wIw5YAOskWwIbKIxqZqYNNCCe
 geB21vHw1cc2I1k2bHSv+HVAF8cEKELX+q/XuGA03RBeKMukXym5aym3KkTvadoir+/O
 wi8RYILfakjtbPZIlb6NN4hekoLrNjw6X2ShH0n6lqYXOX/DuTRBDTgcMIL507A6koKJ
 BvcEoR5NYomm64pmlcMQIeTWSA6RcSOeItIAlGdPO4VImPvSJoJ98impWGATNMH9V93e
 hFVQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=R9tRyxMC
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

On Fri Sep 27, 2024 at 12:24 PM CEST, Toke H=C3=B8iland-J=C3=B8rgensen wrot=
e:
> "Arthur Fabre" <afabre@cloudflare.com> writes:
>
> >> >> The nice thing about an API like this, though, is that it's extensi=
ble,
> >> >> and the kernel itself can be just another consumer of it for the
> >> >> metadata fields Lorenzo is adding in this series. I.e., we could ju=
st
> >> >> pre-define some IDs for metadata vlan, timestamp etc, and use the s=
ame
> >> >> functions as above from within the kernel to set and get those valu=
es;
> >> >> using the registry, there could even be an option to turn those off=
 if
> >> >> an application wants more space for its own usage. Or, alternativel=
y, we
> >> >> could keep the kernel-internal IDs hardcoded and always allocated, =
and
> >> >> just use the getter/setter functions as the BPF API for accessing t=
hem.
> >> >
> >> > That's exactly what I'm thinking of too, a simple API like:
> >> >
> >> > get(u8 key, u8 len, void *val);
> >> > set(u8 key, u8 len, void *val);
> >> >
> >> > With "well-known" keys like METADATA_ID_HW_HASH for hardware metadat=
a.
> >> >
> >> > If a NIC doesn't support a certain well-known metadata, the key
> >> > wouldn't be set, and get() would return ENOENT.
> >> >
> >> > I think this also lets us avoid having to "register" keys or bits of
> >> > metadata with the kernel.
> >> > We'd reserve some number of keys for hardware metadata.
> >>
> >> Right, but how do you allocate space/offset for each key without an
> >> explicit allocation step? You'd basically have to encode the list of I=
Ds
> >> in the metadata area itself, which implies a TLV format that you have =
to
> >> walk on every access? The registry idea in my example above was
> >> basically to avoid that...
> >
> > I've been playing around with having a small fixed header at the front
> > of the metadata itself, that lets you access values without walking the=
m
> > all.
> >
> > Still WIP, and maybe this is too restrictive, but it lets you encode 64
> > 2, 4, or 8 byte KVs with a single 16 byte header:
>
> Ohh, that's clever, I like it! :)
>
> It's also extensible in the sense that the internal representation can
> change without impacting the API, so if we end up needing more bits we
> can always add those.
>
> Maybe it would be a good idea to make the 'key' parameter a larger
> integer type (function parameters are always 64-bit anyway, so might as
> well go all the way up to u64)? That way we can use higher values for
> the kernel-reserved types instead of reserving part of the already-small
> key space for applications (assuming the kernel-internal data is stored
> somewhere else, like in a static struct as in Lorenzo's patch)?

Good idea! That makes it more extensible too if we ever support more
keys or bigger lengths.

I'm not sure where the kernel-reserved types should live. Putting them
in here uses up some the of KV IDs, but it uses less head room space than=
=20
always reserving a static struct for them.
Maybe it doesn't matter much, as long as we use the same API to access
them, we could internally switch between one and the other.

>
> [...]
>
> >> > The remaining keys would be up to users. They'd have to allocate key=
s
> >> > to services, and configure services to use those keys.
> >> > This is similar to the way listening on a certain port works: only o=
ne
> >> > service can use port 80 or 443, and that can typically beconfigured =
in
> >> > a service's config file.
> >>
> >> Right, well, port numbers *do* actually have an out of band service
> >> registry (IANA), which I thought was what we wanted to avoid? ;)
> >
> > Depends how you think about it ;)
> >
> > I think we should avoid a global registry. But having a registry per
> > deployment / server doesn't seem awful. Services that want to use a
> > field would have a config file setting to set which index it correspond=
s
> > to.
> > Admins would just have to pick a free one on their system, and set it i=
n
> > the config file of the service.
> >
> > This is similar to what we do for non-IANA registered ports internally.
> > For example each service needs a port on an internal interface to expos=
e
> > metrics, and we just track which ports are taken in our config
> > management.
>
> Right, this would work, but it assumes that applications are
> well-behaved and do this correctly. Which they probably do in a
> centrally-managed system like yours, but for random applications shipped
> by distros, I'm not sure if it's going to work.
>
> In fact, it's more or less the situation we have with skb->mark today,
> isn't it? I.e., applications can co-exist as long as they don't use the
> same bits, so they have to coordinate on which bits to use. Sure, with
> this scheme there will be more total bits to use, which can lessen the
> pressure somewhat, but the basic problem remains. In other words, I
> worry that in practice we will end up with another github repository
> serving as a registry for metadata keys...

That's true. If applications hardcode keys, we'll be back to having
conflicts. If someone creates a registry on github I'll be very sad.

(Maybe we can make the verifier enforce that the key passed to get() and
set() isn't a constant? - only joking)

Applications don't tend to do this for ports though, I think most can be
configured to listen on any port. Is that just because it's been
instilled as "good practice" over time? Could we try to do the same with
some very stern documentation and examples?

Thinking about it more, my only relectance for a registration API is how
to communicate the ID back to other consumers (our discussion below).

>
> > Dynamically registering fields means you have to share the returned ID
> > with whoever is interested, which sounds tricky.
> > If an XDP program sets a field like packet_id, every tracing
> > program that looks at it, and userspace service, would need to know wha=
t
> > the ID of that field is.
> > Is there a way to easily share that ID with all of them?
>
> Right, so I'll admit this was one of the handwavy bits of my original
> proposal, but I don't think it's unsolvable. You could do something like
> (once, on application initialisation):
>
> __u64 my_key =3D bpf_register_metadata_field(my_size); /* maybe add a nam=
e for introspection? */
> bpf_map_update(&shared_application_config, &my_key_index, &my_key);
>
> and then just get the key out of that map from all programs that want to
> use it?

Passing it out of band works (whether it's via a pinned map like you
described, or through other means like a unix socket or some other
API), it's just more complicated.

Every consumer also needs to know about that API. That won't work with
standard tools. For example if we set a PACKET_ID KV, maybe we could
give it to pwru so it could track packets using it?
Without registering keys, we could pass it as a cli flag. With
registration, we'd have to have some helper to get the KV ID.

It also introduces ordering dependencies between the services on
startup, eg packet tracing hooks could only be attached once our XDP
service has registered a PACKET_ID KV, and they could query it's API.

>
> We could combine such a registration API with your header format, so
> that the registration just becomes a way of allocating one of the keys
> from 0-63 (and the registry just becomes a global copy of the header).
> This would basically amount to moving the "service config file" into the
> kernel, since that seems to be the only common denominator we can rely
> on between BPF applications (as all attempts to write a common daemon
> for BPF management have shown).

That sounds reasonable. And I guess we'd have set() check the global
registry to enforce that the key has been registered beforehand?

>
> -Toke

Thanks for all the feedback!
