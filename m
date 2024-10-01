Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C374B98C152
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Oct 2024 17:14:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1AA9F60727;
	Tue,  1 Oct 2024 15:14:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 25_NvSEsNset; Tue,  1 Oct 2024 15:14:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CAA6860730
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727795690;
	bh=5dTFKu82vESr8yr6vd4vi7LjlIE8ld4GmyUnMyrhfJQ=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TpfXZRxHg8OPqfS0Hsyz1xXruUwtEvhZniqVrWHcakkW67cz78LDpDcVWn9gSIL5j
	 ER2N/HkOQlju9UFXblQIorzYBixjBD6UPy/LWDuuP4+o45wIvLFcgpFVeVcsU0Dv4T
	 REVk0TKCW+DhMyJemgATMbbeVjXzc6kPNz9f/MbFG28V6jpCXTisp/EK9c59LDCNHZ
	 x9jmKtBFki5uHdMADPlGMOtav2oGcxoTCvnmNCujG0tVx3EU5rDa9Fb+YPGpRZ2fCu
	 eXbw+7EfiolH7zRplqsTvWiXO9v9+FsI1v3q/XtKWTzwEl3ft/l8kA3qF+Dnu9bJLY
	 F6/xG4qu5iYhQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CAA6860730;
	Tue,  1 Oct 2024 15:14:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 821971BF846
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 15:14:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7AAB940584
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 15:14:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y7HHKS7UVBO8 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Oct 2024 15:14:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=toke@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2823F40576
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2823F40576
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2823F40576
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 15:14:46 +0000 (UTC)
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-231-yFQn9dnjMRagXbdcDNRNag-1; Tue, 01 Oct 2024 11:14:43 -0400
X-MC-Unique: yFQn9dnjMRagXbdcDNRNag-1
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-42cb635b108so37322075e9.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 01 Oct 2024 08:14:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727795682; x=1728400482;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=5dTFKu82vESr8yr6vd4vi7LjlIE8ld4GmyUnMyrhfJQ=;
 b=BY7CS+yBNNryH/9EY1xJ0Lcp4uZvCiecOXalN76YB5yq6Bjftr+Rhy3JjRGImwiVYK
 i+jshKIbXm929Urh3/T9I8KN53ulHwlSBZi6wwhuLdUByvgExR1i5TTK3Mhcw3Pm/1PF
 YtVJzhDAKOxme1kYTtmtDM+oYCnjlE2CcsgZISuIN6ph7R3aBq37ogoisTnN7njLj2cn
 Bkhybx0eCjKRFByPJOVtsAWrEugqpvnLEnl2LW/1zHY3U7ejpjavtWn5H9fI5XswnupP
 xCng13bXa7p1arRZk2xdIydQenQTrCuQPj+6HUfTB3BKH3guwzGZHcsDjaAKOg3Y3lxx
 fXDA==
X-Forwarded-Encrypted: i=1;
 AJvYcCW9YJGEh70kKCSVmBj0D7Ylr9ilhKXivvLnYYXNNDNzbIKxEGYMaj+mCPIZLAJT7aQSqfDHVzERuimyBNNYfxw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwS6lZXhZOU7WSlWiPeXfSeSZGLAJjQpq8EKfwOiUDyzqhxJWj9
 Xjq6N05zJ/DkQUk+/hr++QC0pi6Dh2K2GlkbH2e0TxsHEInCK1u6WzHsscJlaKpn7FMbkefcnOV
 qSyWmjpdvYRq4Ol3M3yv/c287eoP6skOgwHPCqlmwta7yZ/GN1MyvcfSP8V21j8TLJoQ=
X-Received: by 2002:a5d:45c7:0:b0:37c:d11f:c591 with SMTP id
 ffacd0b85a97d-37cd5a87904mr7597252f8f.17.1727795681863; 
 Tue, 01 Oct 2024 08:14:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFcXOE3tocH8XOJc5qBA0lGHo9gNU2YLoseuv0UbAszC4jNN0/YfSTwqn7BqZ62Nm2YhPL5iA==
X-Received: by 2002:a5d:45c7:0:b0:37c:d11f:c591 with SMTP id
 ffacd0b85a97d-37cd5a87904mr7597230f8f.17.1727795681407; 
 Tue, 01 Oct 2024 08:14:41 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-37cd565dff6sm12022029f8f.30.2024.10.01.08.14.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2024 08:14:40 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 045F71580155; Tue, 01 Oct 2024 17:14:40 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>, Arthur Fabre <afabre@cloudflare.com>
In-Reply-To: <ZvwNQqN4gez1Ksfn@lore-desk>
References: <87ldzkndqk.fsf@toke.dk>
 <CAOn4ftshf3pyAst27C2haaSj4eR2n34_pcwWBc5o3zHBkwRb3g@mail.gmail.com>
 <87wmiysi37.fsf@toke.dk> <D4GBY7CHJNJ6.3O18I5W1FTPKR@bobby>
 <87ldzds8bp.fsf@toke.dk> <D4H5CAN4O95E.3KF8LAH75FYD4@bobby>
 <ZvbKDT-2xqx2unrx@lore-rh-laptop> <871q11s91e.fsf@toke.dk>
 <ZvqQOpqnK9hBmXNn@lore-desk> <D4KJ7DUXJQC5.2UFST9L3CUOH7@bobby>
 <ZvwNQqN4gez1Ksfn@lore-desk>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 01 Oct 2024 17:14:39 +0200
Message-ID: <87zfnnq2hs.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1727795684;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=5dTFKu82vESr8yr6vd4vi7LjlIE8ld4GmyUnMyrhfJQ=;
 b=FJlDNWuVyWrIWKqgH7nnFB1NP9cvTDW2UVpOhMzNDVbPntdgPOCq50HVIL3mr70R4eCmK7
 3VO93b7M8Ui9kML8VgMLdANyJVYqSNqK0t5DKrzSZhb2Ho0XkKpKrB4z7kGpC3iIcJI04s
 d2fEtlHDGONoiJXTSIemlQ8pCG2ToDA=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=FJlDNWuV
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
 kuba@kernel.org, pabeni@redhat.com, Jesper Dangaard Brouer <hawk@kernel.org>,
 alexandre.torgue@foss.st.com, netdev@vger.kernel.org, tariqt@nvidia.com,
 Alexander Lobakin <aleksander.lobakin@intel.com>, mcoquelin.stm32@gmail.com,
 bpf@vger.kernel.org, saeedm@nvidia.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Lorenzo Bianconi <lorenzo@kernel.org> writes:

>> On Mon Sep 30, 2024 at 1:49 PM CEST, Lorenzo Bianconi wrote:
>> > > Lorenzo Bianconi <lorenzo@kernel.org> writes:
>> > > 
>> > > >> > We could combine such a registration API with your header format, so
>> > > >> > that the registration just becomes a way of allocating one of the keys
>> > > >> > from 0-63 (and the registry just becomes a global copy of the header).
>> > > >> > This would basically amount to moving the "service config file" into the
>> > > >> > kernel, since that seems to be the only common denominator we can rely
>> > > >> > on between BPF applications (as all attempts to write a common daemon
>> > > >> > for BPF management have shown).
>> > > >> 
>> > > >> That sounds reasonable. And I guess we'd have set() check the global
>> > > >> registry to enforce that the key has been registered beforehand?
>> > > >> 
>> > > >> >
>> > > >> > -Toke
>> > > >> 
>> > > >> Thanks for all the feedback!
>> > > >
>> > > > I like this 'fast' KV approach but I guess we should really evaluate its
>> > > > impact on performances (especially for xdp) since, based on the kfunc calls
>> > > > order in the ebpf program, we can have one or multiple memmove/memcpy for
>> > > > each packet, right?
>> > > 
>> > > Yes, with Arthur's scheme, performance will be ordering dependent. Using
>> > > a global registry for offsets would sidestep this, but have the
>> > > synchronisation issues we discussed up-thread. So on balance, I think
>> > > the memmove() suggestion will probably lead to the least pain.
>> > > 
>> > > For the HW metadata we could sidestep this by always having a fixed
>> > > struct for it (but using the same set/get() API with reserved keys). The
>> > > only drawback of doing that is that we statically reserve a bit of
>> > > space, but I'm not sure that is such a big issue in practice (at least
>> > > not until this becomes to popular that the space starts to be contended;
>> > > but surely 256 bytes ought to be enough for everybody, right? :)).
>> >
>> > I am fine with the proposed approach, but I think we need to verify what is the
>> > impact on performances (in the worst case??)
>> 
>> If drivers are responsible for populating the hardware metadata before
>> XDP, we could make sure drivers set the fields in order to avoid any
>> memove() (and maybe even provide a helper to ensure this?).
>
> nope, since the current APIs introduced by Stanislav are consuming NIC
> metadata in kfuncs (mainly for af_xdp) and, according to my understanding,
> we want to add a kfunc to store the info for each NIC metadata (e.g rx-hash,
> timestamping, ..) into the packet (this is what Toke is proposing, right?).
> In this case kfunc calling order makes a difference.
> We can think even to add single kfunc to store all the info for all the NIC
> metadata (maybe via a helping struct) but it seems not scalable to me and we
> are losing kfunc versatility.

Yes, I agree we should have separate kfuncs for each metadata field.
Which means it makes a lot of sense to just use the same setter API that
we use for the user-registered metadata fields, but using reserved keys.
So something like:

#define BPF_METADATA_HW_HASH      BIT(60)
#define BPF_METADATA_HW_TIMESTAMP BIT(61)
#define BPF_METADATA_HW_VLAN      BIT(62)
#define BPF_METADATA_RESERVED (0xffff << 48)

bpf_packet_metadata_set(pkt, BPF_METADATA_HW_HASH, hash_value);


As for the internal representation, we can just have the kfunc do
something like:

int bpf_packet_metadata_set(field_id, value) {
  switch(field_id) {
    case BPF_METADATA_HW_HASH:
      pkt->xdp_hw_meta.hash = value;
      break;
    [...]
    default:
      /* do the key packing thing */
  }
}


that way the order of setting the HW fields doesn't matter, only the
user-defined metadata.

>> > > > Moreover, I still think the metadata area in the xdp_frame/xdp_buff is not
>> > > > so suitable for nic hw metadata since:
>> > > > - it grows backward 
>> > > > - it is probably in a different cacheline with respect to xdp_frame
>> > > > - nic hw metadata will not start at fixed and immutable address, but it depends
>> > > >   on the running ebpf program
>> > > >
>> > > > What about having something like:
>> > > > - fixed hw nic metadata: just after xdp_frame struct (or if you want at the end
>> > > >   of the metadata area :)). Here he can reuse the same KV approach if it is fast
>> > > > - user defined metadata: in the metadata area of the xdp_frame/xdp_buff
>> > > 
>> > > AFAIU, none of this will live in the (current) XDP metadata area. It
>> > > will all live just after the xdp_frame struct (so sharing the space with
>> > > the metadata area in the sense that adding more metadata kv fields will
>> > > decrease the amount of space that is usable by the current XDP metadata
>> > > APIs).
>> > > 
>> > > -Toke
>> > > 
>> >
>> > ah, ok. I was thinking the proposed approach was to put them in the current
>> > metadata field.
>> 
>> I've also been thinking of putting this new KV stuff at the start of the
>> headroom (I think that's what you're saying Toke?). It has a few nice
>> advantanges:
>> 
>> * It coexists nicely with the current XDP / TC metadata support.
>> Those users won't be able to overwrite / corrupt the KV metadata.
>> KV users won't need to call xdp_adjust_meta() (which would be awkward -
>> how would they know how much space the KV implementation needs).

Yes, that was what I was saying; we need this to co-exist with the
existing xdp_adjust_meta() facility, and moving it back and forth to
achieve that seems like a non-starter. So definitely at the start of the
headroom (after xdp_frame).

>> * We don't have to move all the metadata everytime we call
>> xdp_adjust_head() (or the kernel equivalent).
>> 
>> Are there any performance implications of that, e.g. for caching?

Well, putting it at the beginning means that the HW metadata (assuming
that comes first) will be on the same cache line as the xdp_frame struct
itself (and thus should be cache-hot). For user-defined metadata it will
depend on the size, of course, it will probably end up stilling into the
next cache line (which will affect performance), but I don't think that
can be helped...

-Toke

