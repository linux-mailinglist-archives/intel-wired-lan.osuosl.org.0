Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B7998759A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Sep 2024 16:29:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF5E26071E;
	Thu, 26 Sep 2024 14:29:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zA-Sof9WCREg; Thu, 26 Sep 2024 14:29:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C5256071F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727360990;
	bh=KvM6053l3hC75XR9JeT71cBHHY82737Z6/RTWNO0Vas=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GII/RjP9wqeAh+YaAumhKSQqkfMjHJoVLauVWLJQ1zqpHpPnSiYFSrekdAJFZGio2
	 FDKeq8EMdmg+oUy0Hy8gtnsIE39us4Bii0FD6OLfuO2RC32BIMlcaJiPU3dEIZCuMG
	 htha18CdjyebGMydiftRMpizEqYXsaOQYICiXC8G7bg/pYFoONUq8RiB2u6zxKOTvw
	 4Hwa/Z6sbJPaHajGXtQK2Z4JWSlsJk90xJgKbavkRW70PrhFDysyjQWU3XFRdHY4p4
	 Vs8W8+5DF/fITDGPUudS7IXLCrEVl76rSrEqi1DM6UyT29kANDC+IidkNHix6Cbkic
	 sXO3Y9G2lM0Aw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C5256071F;
	Thu, 26 Sep 2024 14:29:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A73761BF34A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2024 11:31:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 94DEB81F34
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2024 11:31:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id inuTllOhaYtM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Sep 2024 11:31:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::32f; helo=mail-ot1-x32f.google.com;
 envelope-from=afabre@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2820781F33
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2820781F33
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com
 [IPv6:2607:f8b0:4864:20::32f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2820781F33
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2024 11:31:48 +0000 (UTC)
Received: by mail-ot1-x32f.google.com with SMTP id
 46e09a7af769-710de2712eeso275614a34.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2024 04:31:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727350307; x=1727955107;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=KvM6053l3hC75XR9JeT71cBHHY82737Z6/RTWNO0Vas=;
 b=HxSFTUoUF2QDMVl5RHJwbof6lGuBxvyNEXV+d0aj7q+Hwi6Aj64q/flB0oMwJpSSK6
 ckwSkZ4FwehavX5OxHCDxsVLlNUXKm7Wl3SyNpl2QQCTd6p/DaID0mSJgQU1v5B4qdcz
 b1nAvpyS/CG0ncttTcKumCHBv2XrV1h8jq5LpwGWljVpXvgaZqH6Ao0+oH6OENx9UAtz
 NUZ1Z6tYFIzqbSAeBn9G99Hy3WB94UNJmWkSF95qYSCScMoiynO8XI54kUEJPkr7ls9S
 JtEyNV83CWXeCHC9rtzCQ6yevwMGjEqdeote5J5f0JmTuTCjD9d/4TrafPCakx8gWwOb
 jcaA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVtKp0vy8J21F4dZnmyUSOSdWff0CotoZjX+hqov67a7MDh4480ZF8/P2Rml7udilxurSqmyJCcT0fZ5R3mvNM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwAbAMC99qD0H+csjai7g6sPR4ixtwRXPrLj/YB9nlDnE+I/cQH
 0vqhJQZzVSZ4dwKNciPUzyW6CmCwD9gX1Qxnaj8l3DqM2dYsMqDb/OzoX9GWfgFjUCkGDVFP5AI
 a1Rwx0+yRDX3mUBqv+iW0JLtDA3ZqamG2l/q0Hg==
X-Google-Smtp-Source: AGHT+IHJjgBOQfQMiN/CUeToaqxQ7sdFEgOuujhoHJOkXUL6BboAbpYLTcebilxGue9vqbV0FYh52CYcX4NRivI+zgY=
X-Received: by 2002:a05:6870:e387:b0:278:32f:f171 with SMTP id
 586e51a60fabf-286e1443c02mr4694438fac.26.1727350306752; Thu, 26 Sep 2024
 04:31:46 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1726935917.git.lorenzo@kernel.org>
 <1f53cd74-6c1e-4a1c-838b-4acc8c5e22c1@intel.com>
 <09657be6-b5e2-4b5a-96b6-d34174aadd0a@kernel.org> <Zu_gvkXe4RYjJXtq@lore-desk>
 <87ldzkndqk.fsf@toke.dk>
In-Reply-To: <87ldzkndqk.fsf@toke.dk>
From: Arthur Fabre <afabre@cloudflare.com>
Date: Thu, 26 Sep 2024 13:31:35 +0200
Message-ID: <CAOn4ftshf3pyAst27C2haaSj4eR2n34_pcwWBc5o3zHBkwRb3g@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Thu, 26 Sep 2024 14:29:47 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1727350307; x=1727955107;
 darn=lists.osuosl.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=KvM6053l3hC75XR9JeT71cBHHY82737Z6/RTWNO0Vas=;
 b=OaIAZfDoRUARsCNbHeqwzrZuVaMunFk0A4UsuJrijuIg4qgZFm9BpRD7js3xfnDnAX
 X8Wez48lwp+OYnIPOfpJIMBRp52eOD6eT+qjqzqW7No+euN+Qb2c97N/h9oo2/9coeif
 wRynRaR7KOZA3TTgRg/WhvuEU4vy2H+YxoV0r4PnlfSiyaSlm+Hbt5plD1YyaHNA6BGG
 5pttZiDk7mT3qBe33LxvvWMdr2KKxjLarfli5aJzHjfvhAxroAB5rjI3D45aZM07kZHt
 Wgf7GkT+kYUAp++/XL2S4yzuBDlo7/7HnqY0jTPQCt94j3/Dl9Z+6gCscHn/qdk8IBJc
 qc+w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=OaIAZfDo
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

On Sun, Sep 22, 2024 at 1:12=E2=80=AFPM Toke H=C3=B8iland-J=C3=B8rgensen <t=
oke@redhat.com> wrote:
> FYI, we also had a discussion related to this at LPC on Friday, in this
> session: https://lpc.events/event/18/contributions/1935/
>
> The context here was that Arthur and Jakub want to also support extended
> rich metadata all the way through the SKB path, and are looking at the
> same area used for XDP metadata to store it. So there's a need to manage
> both the kernel's own usage of that area, and userspace/BPF usage of it.
>
> I'll try to summarise some of the points of that discussion (all
> interpretations are my own, of course):
>
> - We want something that can be carried with a frame all the way from
>   the XDP layer, through all SKB layers and to userspace (to replace the
>   use of skb->mark for this purpose).
>
> - We want different applications running on the system (of which the
>   kernel itself if one, cf this discussion) to be able to share this
>   field, without having to have an out of band registry (like a Github
>   repository where applications can agree on which bits to use). Which
>   probably means that the kernel needs to be in the loop somehow to
>   explicitly allocate space in the metadata area and track offsets.
>
> - Having an explicit API to access this from userspace, without having
>   to go through BPF (i.e., a socket- or CMSG-based API) would be useful.
>

Thanks for looping us in, and the great summary Toke!

> The TLV format was one of the suggestions in Arthur and Jakub's talk,
> but AFAICT, there was not a lot of enthusiasm about this in the room
> (myself included), because of the parsing overhead and complexity. I
> believe the alternative that was seen as most favourable was a map
> lookup-style API, where applications can request a metadata area of
> arbitrary size and get an ID assigned that they can then use to set/get
> values in the data path.
>
> So, sketching this out, this could be realised by something like:
>
> /* could be called from BPF, or through netlink or sysfs; may fail, if
>  * there is no more space
>  */
> int metadata_id =3D register_packet_metadata_field(sizeof(struct my_meta)=
);
>
> The ID is just an opaque identifier that can then be passed to
> getter/setter functions (for both SKB and XDP), like:
>
> ret =3D bpf_set_packet_metadata_field(pkt, metadata_id,
>                                     &my_meta_value, sizeof(my_meta_value)=
)
>
> ret =3D bpf_get_packet_metadata_field(pkt, metadata_id,
>                                     &my_meta_value, sizeof(my_meta_value)=
)
>
>
> On the kernel side, the implementation would track registered fields in
> a global structure somewhere, say:
>
> struct pkt_metadata_entry {
>   int id;
>   u8 sz;
>   u8 offset;
>   u8 bit;
> };
>
> struct pkt_metadata_registry { /* allocated as a system-wide global */
>   u8 num_entries;
>   u8 total_size;
>   struct pkt_metadata_entry entries[MAX_ENTRIES];
> };
>
> struct xdp_rx_meta { /* at then end of xdp_frame */
>   u8 sz; /* set to pkt_metadata_registry->total_size on alloc */
>   u8 fields_set; /* bitmap of fields that have been set, see below */
>   u8 data[];
> };
>
> int register_packet_metadata_field(u8 size) {
>   struct pkt_metadata_registry *reg =3D get_global_registry();
>   struct pkt_metadata_entry *entry;
>
>   if (size + reg->total_size > MAX_METADATA_SIZE)
>     return -ENOSPC;
>
>   entry =3D &reg->entries[reg->num_entries++];
>   entry->id =3D assign_id();
>   entry->sz =3D size;
>   entry->offset =3D reg->total_size;
>   entry->bit =3D reg->num_entries - 1;
>   reg->total_size +=3D size;
>
>   return entry->id;
> }
>
> int bpf_set_packet_metadata_field(struct xdp_frame *frm, int id, void
>                                   *value, size_t sz)
> {
>   struct pkt_metadata_entry *entry =3D get_metadata_entry_by_id(id);
>
>   if (!entry)
>     return -ENOENT;
>
>   if (entry->sz !=3D sz)
>     return -EINVAL; /* user error */
>
>   if (frm->rx_meta.sz < entry->offset + sz)
>     return -EFAULT; /* entry allocated after xdp_frame was initialised */
>
>   memcpy(&frm->rx_meta.data + entry->offset, value, sz);
>   frm->rx_meta.fields_set |=3D BIT(entry->bit);
>
>   return 0;
> }
>
> int bpf_get_packet_metadata_field(struct xdp_frame *frm, int id, void
>                                   *value, size_t sz)
> {
>   struct pkt_metadata_entry *entry =3D get_metadata_entry_by_id(id);
>
>   if (!entry)
>     return -ENOENT;
>
>   if (entry->sz !=3D sz)
>     return -EINVAL;
>
> if (frm->rx_meta.sz < entry->offset + sz)
>     return -EFAULT; /* entry allocated after xdp_frame was initialised */
>
>   if (!(frm->rx_meta.fields_set & BIT(entry->bit)))
>     return -ENOENT;
>
>   memcpy(value, &frm->rx_meta.data + entry->offset, sz);
>
>   return 0;
> }
>
> I'm hinting at some complications here (with the EFAULT return) that
> needs to be resolved: there is no guarantee that a given packet will be
> in sync with the current status of the registered metadata, so we need
> explicit checks for this. If metadata entries are de-registered again
> this also means dealing with holes and/or reshuffling the metadata
> layout to reuse the released space (incidentally, this is the one place
> where a TLV format would have advantages).
>
> The nice thing about an API like this, though, is that it's extensible,
> and the kernel itself can be just another consumer of it for the
> metadata fields Lorenzo is adding in this series. I.e., we could just
> pre-define some IDs for metadata vlan, timestamp etc, and use the same
> functions as above from within the kernel to set and get those values;
> using the registry, there could even be an option to turn those off if
> an application wants more space for its own usage. Or, alternatively, we
> could keep the kernel-internal IDs hardcoded and always allocated, and
> just use the getter/setter functions as the BPF API for accessing them.

That's exactly what I'm thinking of too, a simple API like:

get(u8 key, u8 len, void *val);
set(u8 key, u8 len, void *val);

With "well-known" keys like METADATA_ID_HW_HASH for hardware metadata.

If a NIC doesn't support a certain well-known metadata, the key
wouldn't be set, and get() would return ENOENT.

I think this also lets us avoid having to "register" keys or bits of
metadata with the kernel.
We'd reserve some number of keys for hardware metadata.

The remaining keys would be up to users. They'd have to allocate keys
to services, and configure services to use those keys.
This is similar to the way listening on a certain port works: only one
service can use port 80 or 443, and that can typically beconfigured in
a service's config file.

This side-steps the whole question of how to change the registered
metadata for in-flight packets, and how to deal with different NICs
with different hardware metadata.

I think I've figured out a suitable encoding format, hopefully we'll have a=
n
RFC soon!

> -Toke
>
