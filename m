Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58AA39873BC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Sep 2024 14:41:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 152C44022E;
	Thu, 26 Sep 2024 12:41:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BJo5CwXbJ5EZ; Thu, 26 Sep 2024 12:41:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1CCAC40386
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727354489;
	bh=9vGu/7XIAebVTov8oBsR13LtffX2oAzbgLz63jVt/GU=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=knO4TYYyMYU2eGMSLYQchVDvKV7VislEYNmtLj/bUMgjZhHJJ2o7WuZQGs24ed2BX
	 eiNFqvCpVgAPgA8A8V7+7lEdWbShYJzlzYgkFuL6gmLJqSPQ+aFfY7orSTct8xtOC5
	 eAmSMsie2VnaUt+NTgYs3KAuHdax/VxsvOVcqHQG7nz6pdJz2wRssMBFH2O1aZH1Fw
	 j02FABbUrzoFK1Ma1V4vSzEKj0UUgNunDkyGaENQxEIoPq557oeAuSXIUXBOBvixTP
	 d1/jINquiYzarDoy1xkl0wDBxizlV2UmmTl55oX8RBzriwVElqw2LtFq9o0WnQ/ew7
	 hdQrEEJFwKntg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1CCAC40386;
	Thu, 26 Sep 2024 12:41:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C84E21BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2024 12:41:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B4DB560701
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2024 12:41:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QSt1q63T6hDN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Sep 2024 12:41:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=toke@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5238C606D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5238C606D0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5238C606D0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2024 12:41:24 +0000 (UTC)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-553--kUiZDqmMxCNnc3LrubOTA-1; Thu, 26 Sep 2024 08:41:20 -0400
X-MC-Unique: -kUiZDqmMxCNnc3LrubOTA-1
Received: by mail-ej1-f70.google.com with SMTP id
 a640c23a62f3a-a93bac20fccso47127366b.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2024 05:41:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727354479; x=1727959279;
 h=content-transfer-encoding:mime-version:message-id:date:references
 :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=vMJHYB8zqZmlZP20Oy49Gu05ZzldjET+scQ2w87XeYU=;
 b=ON+W+rvsXGOvyFR+i7urlckfIUqCb2JFSrUaMgg34c7fKbBHkugmyMQ+MEL+AOEFE7
 1Zv8qpgg/0TqwI4Kl7cd6osbwdx1y7ChjWsjQiwoRQqDm1QOzusEy9klP0JxJ5AbUYQv
 S3DD/IeQ4RmAp8BdV48hnMH0qeGPb3jknrX5jQOaZuphXo6vyoRnm8W5DNuRwoOIubti
 oghACVMISo7XNJFu2ZH+TokGdXOoeQ3wBddWHtXB4J900m0+UIaO6cHFTDfx/LL5JR/d
 SH6XrqiOyT94QAXYBgd6uECxwADLEBuo+KgKnTNrOIXroRxa1l6PT3o37S55otnrZiFX
 pT2w==
X-Forwarded-Encrypted: i=1;
 AJvYcCVgH6vGXOdJJvl2EOqM22zXqiAckOZLBYfRm7OWgs35ccZEqc434XbGoez87jEAwBGh+qZb2xhoriat7+RbUQY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwERwXv3lBrK+tIlq/tpHuH7OlcbfUjE/0pUAqWK5ZTpCQV0vko
 cONrOfL9JMLOJWp49yz7reyqDZxRZe9DPwMYaZE8OEHvnCpe6uwFtkVRAXYK/6cTHiqTLp4iEDt
 lOalWuPEjpgKaMkpmor1Drfa6Jyj4/jT4yPOS9YHj4y2u0UeChU/r/3gsDvL/Tq4nWLQ=
X-Received: by 2002:a17:907:7d9e:b0:a8a:754a:e1c1 with SMTP id
 a640c23a62f3a-a93b15d4060mr279767666b.8.1727354478955; 
 Thu, 26 Sep 2024 05:41:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFXJToynjae9rfSJhSBosAnZMFK/etnC+GhLgUSb8nc/h9oslSz0rwl720S6aFtTRC+xBUrFA==
X-Received: by 2002:a17:907:7d9e:b0:a8a:754a:e1c1 with SMTP id
 a640c23a62f3a-a93b15d4060mr279763966b.8.1727354478469; 
 Thu, 26 Sep 2024 05:41:18 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a9392f34976sm340030166b.45.2024.09.26.05.41.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2024 05:41:17 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id A6C8D157FC7C; Thu, 26 Sep 2024 14:41:16 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Arthur Fabre <afabre@cloudflare.com>
In-Reply-To: <CAOn4ftshf3pyAst27C2haaSj4eR2n34_pcwWBc5o3zHBkwRb3g@mail.gmail.com>
References: <cover.1726935917.git.lorenzo@kernel.org>
 <1f53cd74-6c1e-4a1c-838b-4acc8c5e22c1@intel.com>
 <09657be6-b5e2-4b5a-96b6-d34174aadd0a@kernel.org>
 <Zu_gvkXe4RYjJXtq@lore-desk> <87ldzkndqk.fsf@toke.dk>
 <CAOn4ftshf3pyAst27C2haaSj4eR2n34_pcwWBc5o3zHBkwRb3g@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Thu, 26 Sep 2024 14:41:16 +0200
Message-ID: <87wmiysi37.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1727354483;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9vGu/7XIAebVTov8oBsR13LtffX2oAzbgLz63jVt/GU=;
 b=Jlog2BCGbBTcO55ol2BIgGVHsAsFYXgqhUfxwSbai2X7YjBwSe261VkjmcczhfwaLqqx53
 WynQl3f9+l1rifFbC/hVaFznn6HSP+uoC6+LHSr2PqYF4S2F8DLInNehQX5jkMSc3JUwFP
 hTj3iNkmZLzamVUJXX3K1CZ2h4f1PhA=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=Jlog2BCG
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

Arthur Fabre <afabre@cloudflare.com> writes:

> On Sun, Sep 22, 2024 at 1:12=E2=80=AFPM Toke H=C3=B8iland-J=C3=B8rgensen =
<toke@redhat.com> wrote:
>> FYI, we also had a discussion related to this at LPC on Friday, in this
>> session: https://lpc.events/event/18/contributions/1935/
>>
>> The context here was that Arthur and Jakub want to also support extended
>> rich metadata all the way through the SKB path, and are looking at the
>> same area used for XDP metadata to store it. So there's a need to manage
>> both the kernel's own usage of that area, and userspace/BPF usage of it.
>>
>> I'll try to summarise some of the points of that discussion (all
>> interpretations are my own, of course):
>>
>> - We want something that can be carried with a frame all the way from
>>   the XDP layer, through all SKB layers and to userspace (to replace the
>>   use of skb->mark for this purpose).
>>
>> - We want different applications running on the system (of which the
>>   kernel itself if one, cf this discussion) to be able to share this
>>   field, without having to have an out of band registry (like a Github
>>   repository where applications can agree on which bits to use). Which
>>   probably means that the kernel needs to be in the loop somehow to
>>   explicitly allocate space in the metadata area and track offsets.
>>
>> - Having an explicit API to access this from userspace, without having
>>   to go through BPF (i.e., a socket- or CMSG-based API) would be useful.
>>
>
> Thanks for looping us in, and the great summary Toke!

You're welcome :)

>> The TLV format was one of the suggestions in Arthur and Jakub's talk,
>> but AFAICT, there was not a lot of enthusiasm about this in the room
>> (myself included), because of the parsing overhead and complexity. I
>> believe the alternative that was seen as most favourable was a map
>> lookup-style API, where applications can request a metadata area of
>> arbitrary size and get an ID assigned that they can then use to set/get
>> values in the data path.
>>
>> So, sketching this out, this could be realised by something like:
>>
>> /* could be called from BPF, or through netlink or sysfs; may fail, if
>>  * there is no more space
>>  */
>> int metadata_id =3D register_packet_metadata_field(sizeof(struct my_meta=
));
>>
>> The ID is just an opaque identifier that can then be passed to
>> getter/setter functions (for both SKB and XDP), like:
>>
>> ret =3D bpf_set_packet_metadata_field(pkt, metadata_id,
>>                                     &my_meta_value, sizeof(my_meta_value=
))
>>
>> ret =3D bpf_get_packet_metadata_field(pkt, metadata_id,
>>                                     &my_meta_value, sizeof(my_meta_value=
))
>>
>>
>> On the kernel side, the implementation would track registered fields in
>> a global structure somewhere, say:
>>
>> struct pkt_metadata_entry {
>>   int id;
>>   u8 sz;
>>   u8 offset;
>>   u8 bit;
>> };
>>
>> struct pkt_metadata_registry { /* allocated as a system-wide global */
>>   u8 num_entries;
>>   u8 total_size;
>>   struct pkt_metadata_entry entries[MAX_ENTRIES];
>> };
>>
>> struct xdp_rx_meta { /* at then end of xdp_frame */
>>   u8 sz; /* set to pkt_metadata_registry->total_size on alloc */
>>   u8 fields_set; /* bitmap of fields that have been set, see below */
>>   u8 data[];
>> };
>>
>> int register_packet_metadata_field(u8 size) {
>>   struct pkt_metadata_registry *reg =3D get_global_registry();
>>   struct pkt_metadata_entry *entry;
>>
>>   if (size + reg->total_size > MAX_METADATA_SIZE)
>>     return -ENOSPC;
>>
>>   entry =3D &reg->entries[reg->num_entries++];
>>   entry->id =3D assign_id();
>>   entry->sz =3D size;
>>   entry->offset =3D reg->total_size;
>>   entry->bit =3D reg->num_entries - 1;
>>   reg->total_size +=3D size;
>>
>>   return entry->id;
>> }
>>
>> int bpf_set_packet_metadata_field(struct xdp_frame *frm, int id, void
>>                                   *value, size_t sz)
>> {
>>   struct pkt_metadata_entry *entry =3D get_metadata_entry_by_id(id);
>>
>>   if (!entry)
>>     return -ENOENT;
>>
>>   if (entry->sz !=3D sz)
>>     return -EINVAL; /* user error */
>>
>>   if (frm->rx_meta.sz < entry->offset + sz)
>>     return -EFAULT; /* entry allocated after xdp_frame was initialised *=
/
>>
>>   memcpy(&frm->rx_meta.data + entry->offset, value, sz);
>>   frm->rx_meta.fields_set |=3D BIT(entry->bit);
>>
>>   return 0;
>> }
>>
>> int bpf_get_packet_metadata_field(struct xdp_frame *frm, int id, void
>>                                   *value, size_t sz)
>> {
>>   struct pkt_metadata_entry *entry =3D get_metadata_entry_by_id(id);
>>
>>   if (!entry)
>>     return -ENOENT;
>>
>>   if (entry->sz !=3D sz)
>>     return -EINVAL;
>>
>> if (frm->rx_meta.sz < entry->offset + sz)
>>     return -EFAULT; /* entry allocated after xdp_frame was initialised *=
/
>>
>>   if (!(frm->rx_meta.fields_set & BIT(entry->bit)))
>>     return -ENOENT;
>>
>>   memcpy(value, &frm->rx_meta.data + entry->offset, sz);
>>
>>   return 0;
>> }
>>
>> I'm hinting at some complications here (with the EFAULT return) that
>> needs to be resolved: there is no guarantee that a given packet will be
>> in sync with the current status of the registered metadata, so we need
>> explicit checks for this. If metadata entries are de-registered again
>> this also means dealing with holes and/or reshuffling the metadata
>> layout to reuse the released space (incidentally, this is the one place
>> where a TLV format would have advantages).
>>
>> The nice thing about an API like this, though, is that it's extensible,
>> and the kernel itself can be just another consumer of it for the
>> metadata fields Lorenzo is adding in this series. I.e., we could just
>> pre-define some IDs for metadata vlan, timestamp etc, and use the same
>> functions as above from within the kernel to set and get those values;
>> using the registry, there could even be an option to turn those off if
>> an application wants more space for its own usage. Or, alternatively, we
>> could keep the kernel-internal IDs hardcoded and always allocated, and
>> just use the getter/setter functions as the BPF API for accessing them.
>
> That's exactly what I'm thinking of too, a simple API like:
>
> get(u8 key, u8 len, void *val);
> set(u8 key, u8 len, void *val);
>
> With "well-known" keys like METADATA_ID_HW_HASH for hardware metadata.
>
> If a NIC doesn't support a certain well-known metadata, the key
> wouldn't be set, and get() would return ENOENT.
>
> I think this also lets us avoid having to "register" keys or bits of
> metadata with the kernel.
> We'd reserve some number of keys for hardware metadata.

Right, but how do you allocate space/offset for each key without an
explicit allocation step? You'd basically have to encode the list of IDs
in the metadata area itself, which implies a TLV format that you have to
walk on every access? The registry idea in my example above was
basically to avoid that...

> The remaining keys would be up to users. They'd have to allocate keys
> to services, and configure services to use those keys.
> This is similar to the way listening on a certain port works: only one
> service can use port 80 or 443, and that can typically beconfigured in
> a service's config file.

Right, well, port numbers *do* actually have an out of band service
registry (IANA), which I thought was what we wanted to avoid? ;)

> This side-steps the whole question of how to change the registered
> metadata for in-flight packets, and how to deal with different NICs
> with different hardware metadata.
>
> I think I've figured out a suitable encoding format, hopefully we'll
> have an RFC soon!

Alright, cool!

-Toke

