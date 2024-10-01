Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 680B098BEF4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Oct 2024 16:06:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D61AB6083F;
	Tue,  1 Oct 2024 14:06:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nQavFWsR2bXk; Tue,  1 Oct 2024 14:06:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B75A360844
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727791586;
	bh=k+HGpSm5hZTXbX2q38o3UsWdiRJiQ5DUA4WSCzHUkGc=;
	h=Date:To:From:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=k4dKQiatrgF2kBhmQVEyD6XGjYSn8tONZKhfGhAutPxa0BXDkMd9horr8KP2bZSyH
	 TOoD9400F1NoZne0Gs8i5j36PszqD7P7iRU/iR9D7OgASLgWwh9nb+RYr7l9x/gLFl
	 K/V+SnOx8Yv/rGCpiK7kchi6z2J1nghHl/jF3vk2CMuLhDLQjwRb9gXgp7xGC3SoAt
	 9UG7Z+r//4Vla1+974pIP4uzsTDD7leIYW+5iGkAF04Zt435iK3Cg8uGA8bWbWnmAz
	 BZUFRhheN8gs1kZ9LZ7hMUzUiu9FZ9Ncx6IsZYk38Hayn0HgDGCgdDJ1hqgk3JsYsE
	 8UzDlE05NfnVg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B75A360844;
	Tue,  1 Oct 2024 14:06:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 764281BF280
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 14:06:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 64BC0808A4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 14:06:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id InvxyTwuQrwg for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Oct 2024 14:06:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32b; helo=mail-wm1-x32b.google.com;
 envelope-from=afabre@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3B7E1801ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B7E1801ED
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3B7E1801ED
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 14:06:24 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 5b1f17b1804b1-42cafda818aso53569835e9.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 01 Oct 2024 07:06:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727791582; x=1728396382;
 h=in-reply-to:references:from:subject:cc:to:message-id:date
 :content-transfer-encoding:mime-version:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=k+HGpSm5hZTXbX2q38o3UsWdiRJiQ5DUA4WSCzHUkGc=;
 b=E0lM5SbAF85AJZrAwclT93JFP/XruQyO8o9UzzDufmQlv8XsUJQVSNdowyWfUwnmPn
 dZ3R1IRRDXH+07IRN2RMpILysgKpxK3Ff5EuVAKCKFrHOZqwQ99Dg9v1OVsXd/LHTkss
 d1MF0M2sEw0+ZH6DrJXFyjFetRgHJSdmEMaxOdz0nmSSGQ9bALPCn8D7ELWiHYHSzkw+
 jECKK2aK5l2DWsI3CSwLy9ZtvAXurZmPmJ7rCLIjaimjfXp3XD1qY4edDqA12LkPE0gB
 haD6wYxUyLsH6z0wabT18BoxIv1EaO8dp1iEwcTnOy1VGRpWwcUzO0ylArfxBRyXK5lD
 Cnbg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUWICtM3McknkTFaPzZ2+qMzJHndr7Zt20q1A1GAqk+/YUSpp9K4hEGc+cn0Ra9KH3/Iv90kElIc2WATzyORpU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwxNYCvehptutgz0MtlVGpnm13qA4qbSPdtkEd0Hma4Gwl+wZ68
 LC45fWArzY1Z6Q60JY24y0QN9HrC1d2yfqGz88+v9DzsORhZCYFozLzOkIprgYs=
X-Google-Smtp-Source: AGHT+IFbKmOHQzYH6RU5RJ695hEsh3LWNKXU2AyvEHj2fyjWXajYvlxmm7C65l5t2tAIDZnqYBHP2Q==
X-Received: by 2002:a05:6000:1141:b0:374:b9a7:5ed6 with SMTP id
 ffacd0b85a97d-37cd5ab7652mr9443619f8f.22.1727791581955; 
 Tue, 01 Oct 2024 07:06:21 -0700 (PDT)
Received: from localhost ([2a09:bac1:27c0:58::241:6e])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-37cd5742499sm11766826f8f.93.2024.10.01.07.06.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 01 Oct 2024 07:06:21 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 01 Oct 2024 16:06:20 +0200
Message-Id: <D4KIZY73DAJJ.EVUPLH612IV6@bobby>
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
 <874j5xs9b1.fsf@toke.dk>
In-Reply-To: <874j5xs9b1.fsf@toke.dk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1727791582; x=1728396382;
 darn=lists.osuosl.org; 
 h=in-reply-to:references:from:subject:cc:to:message-id:date
 :content-transfer-encoding:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=k+HGpSm5hZTXbX2q38o3UsWdiRJiQ5DUA4WSCzHUkGc=;
 b=Z3vXFfwHPvJyreQ2lHAM2OUgSo/UXr1Z6LTgN+hcTUKm2kIrEqOk9giEkH5yQCh5Qq
 KA3BmmLMOlVM+LPRt/2FGznWjuNtx93lnTeotz2KhPEgpXkfORO/ZcpqfU2fFB4rysKe
 iRX1R66RFM5kLhTez92SHiGPupcp1v1GeSitmN98LQGA7tGc4dVDDt9PFjuBU6DXOAAK
 xAHTsXBYCEJEkvNzu1KVJjFMlTWYNluh+EKdy1AihoObEZMcmzrJo2PS0rRTwoMeV2eR
 nVyO7kpI6rbQylg6zVv6y5F48NfccBln6rZFRNwqw81YEth5oHf444BHTg7nOlrNcGiN
 3Sug==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=Z3vXFfwH
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

On Mon Sep 30, 2024 at 12:52 PM CEST, Toke H=C3=B8iland-J=C3=B8rgensen wrot=
e:
> > Thinking about it more, my only relectance for a registration API is ho=
w
> > to communicate the ID back to other consumers (our discussion below).
> >
> >>
> >> > Dynamically registering fields means you have to share the returned =
ID
> >> > with whoever is interested, which sounds tricky.
> >> > If an XDP program sets a field like packet_id, every tracing
> >> > program that looks at it, and userspace service, would need to know =
what
> >> > the ID of that field is.
> >> > Is there a way to easily share that ID with all of them?
> >>
> >> Right, so I'll admit this was one of the handwavy bits of my original
> >> proposal, but I don't think it's unsolvable. You could do something li=
ke
> >> (once, on application initialisation):
> >>
> >> __u64 my_key =3D bpf_register_metadata_field(my_size); /* maybe add a =
name for introspection? */
> >> bpf_map_update(&shared_application_config, &my_key_index, &my_key);
> >>
> >> and then just get the key out of that map from all programs that want =
to
> >> use it?
> >
> > Passing it out of band works (whether it's via a pinned map like you
> > described, or through other means like a unix socket or some other
> > API), it's just more complicated.
> >
> > Every consumer also needs to know about that API. That won't work with
> > standard tools. For example if we set a PACKET_ID KV, maybe we could
> > give it to pwru so it could track packets using it?
> > Without registering keys, we could pass it as a cli flag. With
> > registration, we'd have to have some helper to get the KV ID.
> >
> > It also introduces ordering dependencies between the services on
> > startup, eg packet tracing hooks could only be attached once our XDP
> > service has registered a PACKET_ID KV, and they could query it's API.
>
> Yeah, we definitely need a way to make that accessible and not too
> cumbersome.
>
> I suppose what we really need is a way to map an application-specific
> identifier to an ID. And, well, those identifiers could just be (string)
> names? That's what we do for CO-RE, after all. So you'd get something
> like:
>
> id =3D bpf_register_metadata_field("packet_id", 8, BPF_CREATE); /* regist=
er */
>
> id =3D bpf_register_metadata_field("packet_id", 8, BPF_NO_CREATE); /* res=
olve */
>
> and we make that idempotent, so that two callers using the same name and
> size will just get the same id back; and if called with BPF_NO_CREATE,
> you'll get -ENOENT if it hasn't already been registered by someone else?
>
> We could even make this a sub-command of the bpf() syscall if we want it
> to be UAPI, but that's not strictly necessary, applications can also
> just call the registration from a syscall program at startup...

That's a nice API, it makes sharing the IDs much easier.

We still have to worry about collisions (what if two different things
want to add their own "packet_id" field?). But at least:

* "Any string" has many more possibilities than 0-64 keys.

* bpf_register_metadata() could return an error if a field is already
registered, instead of silently letting an application overwrite
metadata (although arguably we could have add a BPF_NOEXIST style flag
to the KV set() to kind of do the same).

At least internally, it still feels like we'd maintain a registry of
these string fields and make them configurable for each service to avoid
collisions.

> >> We could combine such a registration API with your header format, so
> >> that the registration just becomes a way of allocating one of the keys
> >> from 0-63 (and the registry just becomes a global copy of the header).
> >> This would basically amount to moving the "service config file" into t=
he
> >> kernel, since that seems to be the only common denominator we can rely
> >> on between BPF applications (as all attempts to write a common daemon
> >> for BPF management have shown).
> >
> > That sounds reasonable. And I guess we'd have set() check the global
> > registry to enforce that the key has been registered beforehand?
>
> Yes, exactly. And maybe check that the size matches as well just to
> remove the obvious footgun of accidentally stepping on each other's
> toes?
>
> > Thanks for all the feedback!
>
> You're welcome! Thanks for working on this :)
>
> -Toke

