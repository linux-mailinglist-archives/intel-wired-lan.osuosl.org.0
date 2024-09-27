Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C24988262
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Sep 2024 12:24:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3C32E424C1;
	Fri, 27 Sep 2024 10:24:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id spfx8NN85SHx; Fri, 27 Sep 2024 10:24:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E4849424C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727432677;
	bh=XIxx1Gqnh8W7x2jrzbkG+Yz0hMarOzuqSzj35yPNitg=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6FMRZDq1ZxZwwHi6Sew7b0jn9FyZVH2LEYRs2WepdznLhheeVU7f7As8KoN8+PzC2
	 6Jp/xIcYkpXhJp7J8x1Yvp0IhfWPh0tKmPFPsDBXOYjcF+zAUQjV0zVGAC655tLCQS
	 YectAmVK+oj1Hp8KpBfw7WIT+UjJP6YBEZHlfIj3eU9NIPUEAB4Dd1lMV35Nj4rg54
	 NMwCYcGpDLlODuYOoFFI0T4MCjmhGMv81+7w3HCOzrw4LJCbXZIc4JPfdFQbBlhXLs
	 gU+a8rDX5EYlHVCUzv1jvCf6t7JNnky/RKwkYYhucNRHjIvqSHKV/W+9RDXGvSOlIa
	 T5UvfMworN86Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E4849424C8;
	Fri, 27 Sep 2024 10:24:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ACA011BF2F0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 10:24:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9AD4941C21
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 10:24:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C-UOo09Q5gw3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Sep 2024 10:24:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=toke@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2D3E141BFB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2D3E141BFB
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2D3E141BFB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 10:24:32 +0000 (UTC)
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-595-BnfVEQZuOzSCeCc8ESiJUw-1; Fri, 27 Sep 2024 06:24:30 -0400
X-MC-Unique: BnfVEQZuOzSCeCc8ESiJUw-1
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-37cd08d3678so776299f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 03:24:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727432669; x=1728037469;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=XIxx1Gqnh8W7x2jrzbkG+Yz0hMarOzuqSzj35yPNitg=;
 b=J4Tk2CNYPPzo5e8jMqo+rz7qxIqKgsU7uV2w4dCTPoZvp3mR5944rUZbzBpTZFd3JE
 DJQNrWwnOFjhXMkA5FDIne4ttdlRKqGEGOO1IW9hEScW1KDcIfq88AX4XYg7t7ekN0Ag
 g/Oa367SwwTJNYJoKdfqugQEiK2WSuiqvlFieWbF48q1z+8jKEMM5dFM8VNuFD/H0coV
 3KR/In4+wm6cmtbJtFpTXm/H4CNNpfVVexuGt0lvjChj3SKNjQt5zV2z8tuN3PnZQEjO
 Rad2ShnioQItJl1rQkl8OE9x7RQF2lnwvu1tukxWfCpbDZ1Nzl28Keycwi+BlfhlerJF
 jooQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWen1XEFCThyZ6gDPN4HL2HhWtOvJ+zJsuhudS5bUTvJ0mvNZ0ddxDPGu8a9tfGyqap6rjQS+ZJ3nEzEk0wjy0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxsfkRmxxOoIOV/3CulrWLI7Q8aMq+pzl9jg17iF3ccW5Magsqb
 cq+txraDG1qFI3c6gqqBuxB0XdeL/ZSeCI1RXnnQbZODoNWtLH7vZqg4/5xqMyEBx9aOcipcoLR
 E8laOGinSgRNOstDquEB8XrgNy4vWKHURfAnxTZ0Ij75DAWP5AjWp9FdM8hTGvJMeArU=
X-Received: by 2002:a5d:5408:0:b0:37c:c4c0:4545 with SMTP id
 ffacd0b85a97d-37cd568c351mr2074555f8f.10.1727432669169; 
 Fri, 27 Sep 2024 03:24:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFzn/Hgbyr1j8TFmWW8rLoliM3ZBfnFOOaG1RI387NGbgDvZsVbVAlmnlZnn5QvDNrkUnRcIA==
X-Received: by 2002:a5d:5408:0:b0:37c:c4c0:4545 with SMTP id
 ffacd0b85a97d-37cd568c351mr2074515f8f.10.1727432668693; 
 Fri, 27 Sep 2024 03:24:28 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-37cd572fa48sm2035752f8f.66.2024.09.27.03.24.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2024 03:24:27 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 64AE8157FD23; Fri, 27 Sep 2024 12:24:26 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Arthur Fabre <afabre@cloudflare.com>
In-Reply-To: <D4GBY7CHJNJ6.3O18I5W1FTPKR@bobby>
References: <cover.1726935917.git.lorenzo@kernel.org>
 <1f53cd74-6c1e-4a1c-838b-4acc8c5e22c1@intel.com>
 <09657be6-b5e2-4b5a-96b6-d34174aadd0a@kernel.org>
 <Zu_gvkXe4RYjJXtq@lore-desk> <87ldzkndqk.fsf@toke.dk>
 <CAOn4ftshf3pyAst27C2haaSj4eR2n34_pcwWBc5o3zHBkwRb3g@mail.gmail.com>
 <87wmiysi37.fsf@toke.dk> <D4GBY7CHJNJ6.3O18I5W1FTPKR@bobby>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 27 Sep 2024 12:24:26 +0200
Message-ID: <87ldzds8bp.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1727432671;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=XIxx1Gqnh8W7x2jrzbkG+Yz0hMarOzuqSzj35yPNitg=;
 b=ZNAkwGJex5S1spnwY74V2/EaT0cH/3Nr5aPxKxrEh0z5dKSa4WJ26WxpmANnWvczbvEHm3
 nqE5etzgSGCWWQBBOkKBBxTldYEv/5wcknRl+RZXHclTSdPvj0RzWfVaNMICt63cBZY+XB
 RLHFlocC6j8/780eLxEwcR8HIgr0ROE=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=ZNAkwGJe
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

>> >> The nice thing about an API like this, though, is that it's extensible,
>> >> and the kernel itself can be just another consumer of it for the
>> >> metadata fields Lorenzo is adding in this series. I.e., we could just
>> >> pre-define some IDs for metadata vlan, timestamp etc, and use the same
>> >> functions as above from within the kernel to set and get those values;
>> >> using the registry, there could even be an option to turn those off if
>> >> an application wants more space for its own usage. Or, alternatively, we
>> >> could keep the kernel-internal IDs hardcoded and always allocated, and
>> >> just use the getter/setter functions as the BPF API for accessing them.
>> >
>> > That's exactly what I'm thinking of too, a simple API like:
>> >
>> > get(u8 key, u8 len, void *val);
>> > set(u8 key, u8 len, void *val);
>> >
>> > With "well-known" keys like METADATA_ID_HW_HASH for hardware metadata.
>> >
>> > If a NIC doesn't support a certain well-known metadata, the key
>> > wouldn't be set, and get() would return ENOENT.
>> >
>> > I think this also lets us avoid having to "register" keys or bits of
>> > metadata with the kernel.
>> > We'd reserve some number of keys for hardware metadata.
>>
>> Right, but how do you allocate space/offset for each key without an
>> explicit allocation step? You'd basically have to encode the list of IDs
>> in the metadata area itself, which implies a TLV format that you have to
>> walk on every access? The registry idea in my example above was
>> basically to avoid that...
>
> I've been playing around with having a small fixed header at the front
> of the metadata itself, that lets you access values without walking them
> all.
>
> Still WIP, and maybe this is too restrictive, but it lets you encode 64
> 2, 4, or 8 byte KVs with a single 16 byte header:

Ohh, that's clever, I like it! :)

It's also extensible in the sense that the internal representation can
change without impacting the API, so if we end up needing more bits we
can always add those.

Maybe it would be a good idea to make the 'key' parameter a larger
integer type (function parameters are always 64-bit anyway, so might as
well go all the way up to u64)? That way we can use higher values for
the kernel-reserved types instead of reserving part of the already-small
key space for applications (assuming the kernel-internal data is stored
somewhere else, like in a static struct as in Lorenzo's patch)?

[...]

>> > The remaining keys would be up to users. They'd have to allocate keys
>> > to services, and configure services to use those keys.
>> > This is similar to the way listening on a certain port works: only one
>> > service can use port 80 or 443, and that can typically beconfigured in
>> > a service's config file.
>>
>> Right, well, port numbers *do* actually have an out of band service
>> registry (IANA), which I thought was what we wanted to avoid? ;)
>
> Depends how you think about it ;)
>
> I think we should avoid a global registry. But having a registry per
> deployment / server doesn't seem awful. Services that want to use a
> field would have a config file setting to set which index it corresponds
> to.
> Admins would just have to pick a free one on their system, and set it in
> the config file of the service.
>
> This is similar to what we do for non-IANA registered ports internally.
> For example each service needs a port on an internal interface to expose
> metrics, and we just track which ports are taken in our config
> management.

Right, this would work, but it assumes that applications are
well-behaved and do this correctly. Which they probably do in a
centrally-managed system like yours, but for random applications shipped
by distros, I'm not sure if it's going to work.

In fact, it's more or less the situation we have with skb->mark today,
isn't it? I.e., applications can co-exist as long as they don't use the
same bits, so they have to coordinate on which bits to use. Sure, with
this scheme there will be more total bits to use, which can lessen the
pressure somewhat, but the basic problem remains. In other words, I
worry that in practice we will end up with another github repository
serving as a registry for metadata keys...

> Dynamically registering fields means you have to share the returned ID
> with whoever is interested, which sounds tricky.
> If an XDP program sets a field like packet_id, every tracing
> program that looks at it, and userspace service, would need to know what
> the ID of that field is.
> Is there a way to easily share that ID with all of them?

Right, so I'll admit this was one of the handwavy bits of my original
proposal, but I don't think it's unsolvable. You could do something like
(once, on application initialisation):

__u64 my_key = bpf_register_metadata_field(my_size); /* maybe add a name for introspection? */
bpf_map_update(&shared_application_config, &my_key_index, &my_key);

and then just get the key out of that map from all programs that want to
use it?

We could combine such a registration API with your header format, so
that the registration just becomes a way of allocating one of the keys
from 0-63 (and the registry just becomes a global copy of the header).
This would basically amount to moving the "service config file" into the
kernel, since that seems to be the only common denominator we can rely
on between BPF applications (as all attempts to write a common daemon
for BPF management have shown).

-Toke

