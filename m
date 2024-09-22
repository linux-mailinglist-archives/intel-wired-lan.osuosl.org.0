Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 99ACD97E254
	for <lists+intel-wired-lan@lfdr.de>; Sun, 22 Sep 2024 17:41:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 31F0D606E0;
	Sun, 22 Sep 2024 15:41:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DlpzU2RHK99A; Sun, 22 Sep 2024 15:41:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4BA25606F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727019665;
	bh=9wwkF4IUVlf79iY2PJ/Wd+ewK2HX+t/6KRXI+BJdx6c=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YrevUJ8pRKXMEFAn5gRWj3lQT07rFUCkS+dCFlc8TGFf1sP3nImQUDqtfAbYs4C7u
	 iyEf4S/BNRAo3n51woa45d8EY9KXr3nHEqYh0YR5RTuFAlij2si1EBVhgxnrPEotUI
	 GS46S8gnmJN7okWRAPJILbCS4YrZiqMSjkhwc1i1dxWU4icDqZIqtcjcISMOh2xpCN
	 +tgawEf7oSH+5coQyhTtZ8vgPB1ZCWXpqxKpcxLzflQdVXe9UwX8PpL2vM0yihErkA
	 DU9HKP9HfFVfWoT/ut3xFaLPRYVjJuriY3DpMjvb+ffiXQzrEtxS0zUa9YzgNNtM5h
	 XcLGNkrRPo9Aw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4BA25606F0;
	Sun, 22 Sep 2024 15:41:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 57D2E1BF3E8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Sep 2024 15:41:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 44F99405F6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Sep 2024 15:41:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HNGW2yn4cSqa for <intel-wired-lan@lists.osuosl.org>;
 Sun, 22 Sep 2024 15:41:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com;
 envelope-from=lorenzo.bianconi@redhat.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 91AC64049C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 91AC64049C
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 91AC64049C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Sep 2024 15:40:58 +0000 (UTC)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-594-n1Y0l-9dP3iUJTbgJSZQtg-1; Sun, 22 Sep 2024 11:40:56 -0400
X-MC-Unique: n1Y0l-9dP3iUJTbgJSZQtg-1
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-42cbadcbb6eso27762985e9.2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Sep 2024 08:40:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727019655; x=1727624455;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9wwkF4IUVlf79iY2PJ/Wd+ewK2HX+t/6KRXI+BJdx6c=;
 b=Lopr7dNNwX2Zt5c+Y8kNYwUJKF853TweWrgIff+UJOuhQLK7rLxKT64CGkSKfDzg2A
 S4Jb05KyvAWaFFh2S5fGbFKo+j9ipHqsk2WBgP//Cqs4sg+T1auwk5XJQ4AdD5x3zjms
 BcRxBQWxQZ2lA2KSrDagVjHWgF85StkgcRALUhBsk5TRtilacDYiTQjgqquJCi8zkssR
 uYRRHaP47xlDat8t/uW+u7iE74RgusVRsHKdQx/jtFaG5XcPwOMCF9y5bW0FLbxrP3e1
 UnjJxs+J/WQZvdeiZq48CuPSRAAoJGzIfHIXZ6hS6Np9iB7/AzHa0L3VYvKl6joCyWiK
 JXdg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVPNP2Gb4EYqICClVQdcuOMH9DfkDZeubtSS3ZgGdPFMQEkHx7kSUQCYNbEmgON4kttHOudF99T/rLkpkPCUUY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwLfVbVJv1E5ASFbTYFwdubnxshga71gmqdBgsjLAywp2iPt488
 ltYPz8x28dnCAv3x2F7YZqVZf5pQ4Id/wgZOui4xGgLgo6u7DsWPqGqpTjcXDmENrRdTYqJ2ump
 S0jVfDwDTql3F9b/a0veir+uW62HrU1TE6Z9aY4q/x9ktSkVwboiyPgvmLrv+AxPTVUg=
X-Received: by 2002:a05:600c:4ecb:b0:42c:b3e5:f688 with SMTP id
 5b1f17b1804b1-42e7abe51cfmr61320185e9.4.1727019654547; 
 Sun, 22 Sep 2024 08:40:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFh/eKA1KD1kMCztKLB338qt5lKEJSj1ocoe2VW6C9heK/uVWgB6X4kqalC4QXVD1RltLp2Xw==
X-Received: by 2002:a05:600c:4ecb:b0:42c:b3e5:f688 with SMTP id
 5b1f17b1804b1-42e7abe51cfmr61320025e9.4.1727019653970; 
 Sun, 22 Sep 2024 08:40:53 -0700 (PDT)
Received: from localhost (net-93-146-37-148.cust.vodafonedsl.it.
 [93.146.37.148]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42e7aff08b1sm77992755e9.40.2024.09.22.08.40.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Sep 2024 08:40:53 -0700 (PDT)
Date: Sun, 22 Sep 2024 17:40:52 +0200
From: Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
To: Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>
Message-ID: <ZvA6hIl6XWJ4UEJW@lore-desk>
References: <cover.1726935917.git.lorenzo@kernel.org>
 <1f53cd74-6c1e-4a1c-838b-4acc8c5e22c1@intel.com>
 <09657be6-b5e2-4b5a-96b6-d34174aadd0a@kernel.org>
 <Zu_gvkXe4RYjJXtq@lore-desk> <87ldzkndqk.fsf@toke.dk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="r0wGTV4GKkZs/miU"
Content-Disposition: inline
In-Reply-To: <87ldzkndqk.fsf@toke.dk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1727019657;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=9wwkF4IUVlf79iY2PJ/Wd+ewK2HX+t/6KRXI+BJdx6c=;
 b=ZB66Ba8OFIjl48LFqPYXemejLsPCsEqBvDMoRZvVdKiqGtcLVNl/asgRaqPlqF0r7xeFkq
 p2AWcI7JgDO+w0Sh/uFsgvq6/zonUPdXhSx/9fZIgU42hOO2QyXXZRgv4/3iNB/B5ZwSII
 GDhQMshvy/lg+MF+DCQUhpdEmaljb+c=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=ZB66Ba8O
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
 Arthur Fabre <afabre@cloudflare.com>, netdev@vger.kernel.org,
 tariqt@nvidia.com, Alexander Lobakin <aleksander.lobakin@intel.com>,
 mcoquelin.stm32@gmail.com, bpf@vger.kernel.org, saeedm@nvidia.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--r0wGTV4GKkZs/miU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> Lorenzo Bianconi <lorenzo.bianconi@redhat.com> writes:
>=20
> >>=20
> >>=20
> >> On 21/09/2024 22.17, Alexander Lobakin wrote:
> >> > From: Lorenzo Bianconi <lorenzo@kernel.org>
> >> > Date: Sat, 21 Sep 2024 18:52:56 +0200
> >> >=20
> >> > > This series introduces the xdp_rx_meta struct in the xdp_buff/xdp_=
frame
> >> >=20
> >> > &xdp_buff is on the stack.
> >> > &xdp_frame consumes headroom.
> >> >=20
> >> > IOW they're size-sensitive and putting metadata directly there might
> >> > play bad; if not now, then later.
> >> >=20
> >> > Our idea (me + Toke) was as follows:
> >> >=20
> >> > - new BPF kfunc to build generic meta. If called, the driver builds a
> >> >    generic meta with hash, csum etc., in the data_meta area.
> >>=20
> >> I do agree that it should be the XDP prog (via a new BPF kfunc) that
> >> decide if xdp_frame should be updated to contain a generic meta struct.
> >> *BUT* I think we should use the xdp_frame area, and not the
> >> xdp->data_meta area.
> >
> > ack, I will add a new kfunc for it.
> >
> >>=20
> >> A details is that I think this kfunc should write data directly into
> >> xdp_frame area, even then we are only operating on the xdp_buff, as we
> >> do have access to the area xdp_frame will be created in.
> >
> > this would avoid to copy it when we convert from xdp_buff to xdp_frame,=
 nice :)
> >
> >>=20
> >>=20
> >> When using data_meta area, then netstack encap/decap needs to move the
> >> data_meta area (extra cycles).  The xdp_frame area (live in top) don't
> >> have this issue.
> >>=20
> >> It is easier to allow xdp_frame area to survive longer together with t=
he
> >> SKB. Today we "release" this xdp_frame area to be used by SKB for extra
> >> headroom (see xdp_scrub_frame).  I can imagine that we can move SKB
> >> fields to this area, and reduce the size of the SKB alloc. (This then
> >> becomes the mini-SKB we discussed a couple of years ago).
> >>=20
> >>=20
> >> >    Yes, this also consumes headroom, but only when the corresponding=
 func
> >> >    is called. Introducing new fields like you're doing will consume =
it
> >> >    unconditionally;
> >>=20
> >> We agree on the kfunc call marks area as consumed/in-use.  We can exte=
nd
> >> xdp_frame statically like Lorenzo does (with struct xdp_rx_meta), but
> >> xdp_frame->flags can be used for marking this area as used or not.
> >
> > the only downside with respect to a TLV approach would be to consume al=
l the
> > xdp_rx_meta as soon as we set a single xdp rx hw hint in it, right?
> > The upside is it is easier and it requires less instructions.
>=20
> FYI, we also had a discussion related to this at LPC on Friday, in this
> session: https://lpc.events/event/18/contributions/1935/

Hi Toke,

thx for the pointer

>=20
> The context here was that Arthur and Jakub want to also support extended
> rich metadata all the way through the SKB path, and are looking at the
> same area used for XDP metadata to store it. So there's a need to manage
> both the kernel's own usage of that area, and userspace/BPF usage of it.

it would be cool if we can collaborate on it.

>=20
> I'll try to summarise some of the points of that discussion (all
> interpretations are my own, of course):
>=20
> - We want something that can be carried with a frame all the way from
>   the XDP layer, through all SKB layers and to userspace (to replace the
>   use of skb->mark for this purpose).
>=20
> - We want different applications running on the system (of which the
>   kernel itself if one, cf this discussion) to be able to share this
>   field, without having to have an out of band registry (like a Github
>   repository where applications can agree on which bits to use). Which
>   probably means that the kernel needs to be in the loop somehow to
>   explicitly allocate space in the metadata area and track offsets.
>=20
> - Having an explicit API to access this from userspace, without having
>   to go through BPF (i.e., a socket- or CMSG-based API) would be useful.
>=20
>=20
> The TLV format was one of the suggestions in Arthur and Jakub's talk,
> but AFAICT, there was not a lot of enthusiasm about this in the room
> (myself included), because of the parsing overhead and complexity. I
> believe the alternative that was seen as most favourable was a map
> lookup-style API, where applications can request a metadata area of
> arbitrary size and get an ID assigned that they can then use to set/get
> values in the data path.
>=20
> So, sketching this out, this could be realised by something like:
>=20
> /* could be called from BPF, or through netlink or sysfs; may fail, if
>  * there is no more space
>  */
> int metadata_id =3D register_packet_metadata_field(sizeof(struct my_meta)=
);
>=20
> The ID is just an opaque identifier that can then be passed to
> getter/setter functions (for both SKB and XDP), like:
>=20
> ret =3D bpf_set_packet_metadata_field(pkt, metadata_id,
>                                     &my_meta_value, sizeof(my_meta_value))
>=20
> ret =3D bpf_get_packet_metadata_field(pkt, metadata_id,
>                                     &my_meta_value, sizeof(my_meta_value))
>=20
>=20
> On the kernel side, the implementation would track registered fields in
> a global structure somewhere, say:
>=20
> struct pkt_metadata_entry {
>   int id;
>   u8 sz;
>   u8 offset;
>   u8 bit;
> };
>=20
> struct pkt_metadata_registry { /* allocated as a system-wide global */
>   u8 num_entries;
>   u8 total_size;
>   struct pkt_metadata_entry entries[MAX_ENTRIES];
> };
>=20
> struct xdp_rx_meta { /* at then end of xdp_frame */
>   u8 sz; /* set to pkt_metadata_registry->total_size on alloc */
>   u8 fields_set; /* bitmap of fields that have been set, see below */
>   u8 data[];
> };
>=20
> int register_packet_metadata_field(u8 size) {
>   struct pkt_metadata_registry *reg =3D get_global_registry();
>   struct pkt_metadata_entry *entry;
>=20
>   if (size + reg->total_size > MAX_METADATA_SIZE)
>     return -ENOSPC;
>=20
>   entry =3D &reg->entries[reg->num_entries++];
>   entry->id =3D assign_id();
>   entry->sz =3D size;
>   entry->offset =3D reg->total_size;
>   entry->bit =3D reg->num_entries - 1;
>   reg->total_size +=3D size;
>=20
>   return entry->id;
> }
>=20
> int bpf_set_packet_metadata_field(struct xdp_frame *frm, int id, void
>                                   *value, size_t sz)
> {
>   struct pkt_metadata_entry *entry =3D get_metadata_entry_by_id(id);
>=20
>   if (!entry)
>     return -ENOENT;
>=20
>   if (entry->sz !=3D sz)
>     return -EINVAL; /* user error */
>=20
>   if (frm->rx_meta.sz < entry->offset + sz)
>     return -EFAULT; /* entry allocated after xdp_frame was initialised */
>=20
>   memcpy(&frm->rx_meta.data + entry->offset, value, sz);
>   frm->rx_meta.fields_set |=3D BIT(entry->bit);
>=20
>   return 0;
> }
>=20
> int bpf_get_packet_metadata_field(struct xdp_frame *frm, int id, void
>                                   *value, size_t sz)
> {
>   struct pkt_metadata_entry *entry =3D get_metadata_entry_by_id(id);
>=20
>   if (!entry)
>     return -ENOENT;
>=20
>   if (entry->sz !=3D sz)
>     return -EINVAL;
>=20
> if (frm->rx_meta.sz < entry->offset + sz)
>     return -EFAULT; /* entry allocated after xdp_frame was initialised */
>=20
>   if (!(frm->rx_meta.fields_set & BIT(entry->bit)))
>     return -ENOENT;
>=20
>   memcpy(value, &frm->rx_meta.data + entry->offset, sz);
>=20
>   return 0;
> }
>=20
> I'm hinting at some complications here (with the EFAULT return) that
> needs to be resolved: there is no guarantee that a given packet will be
> in sync with the current status of the registered metadata, so we need
> explicit checks for this. If metadata entries are de-registered again
> this also means dealing with holes and/or reshuffling the metadata
> layout to reuse the released space (incidentally, this is the one place
> where a TLV format would have advantages).

I like this approach but it seems to me more suitable for 'sw' metadata
(this is main Arthur and Jakub use case iiuc) where the userspace would
enable/disable these functionalities system-wide.
Regarding device hw metadata (e.g. checksum offload) I can see some issues
since on a system we can have multiple NICs with different capabilities.
If we consider current codebase, stmmac driver supports only rx timestamp,
while mlx5 supports all of them. In a theoretical system with these two
NICs, since pkt_metadata_registry is global system-wide, we will end-up
with quite a lot of holes for the stmmac, right? (I am not sure if this
case is relevant or not). In other words, we will end-up with a fixed
struct for device rx hw metadata (like xdp_rx_meta). So I am wondering
if we really need all this complexity for xdp rx hw metadata?
Maybe we can start with a simple approach for xdp rx hw metadata putting
the struct in xdp_frame as suggested by Jesper and covering the most common
use-cases. We can then integrate this approach with Arthur/Jakub's solution
without introducing any backward compatibility issue since these field are
not visible to userspace.

Regards,
Lorenzo

>=20
> The nice thing about an API like this, though, is that it's extensible,
> and the kernel itself can be just another consumer of it for the
> metadata fields Lorenzo is adding in this series. I.e., we could just
> pre-define some IDs for metadata vlan, timestamp etc, and use the same
> functions as above from within the kernel to set and get those values;
> using the registry, there could even be an option to turn those off if
> an application wants more space for its own usage. Or, alternatively, we
> could keep the kernel-internal IDs hardcoded and always allocated, and
> just use the getter/setter functions as the BPF API for accessing them.
>=20
> -Toke
>=20

--r0wGTV4GKkZs/miU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZvA6hAAKCRA6cBh0uS2t
rDRxAQCn2noFP6UHLAUDBDUiAvq0PM6CAYg6l6nN9HUAlaENBQD+NIqsDKRPNUAE
9qc9yFhgY75XxmiPZU0QXVmgHUw1Wgo=
=8hYC
-----END PGP SIGNATURE-----

--r0wGTV4GKkZs/miU--

