Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0E0990920
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2024 18:27:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1AAFF40106;
	Fri,  4 Oct 2024 16:27:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2o1QvQwsB064; Fri,  4 Oct 2024 16:27:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F7F540105
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728059271;
	bh=1EwPJ1608FHgcUv1d+P5BWSkWcWPXFoUeUgbMomkXh8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bS/4njSkouzs3QHGoZqWGbMa/gQKLVPJ+51XhbxtjMbTcA382W54DdiSCIaqDTvrn
	 1rncMsQrKxN+NEML5IqsItu7tChBXmE3ILUqha/XIc9HQ6cnJTdnriE8XLCClgiAHu
	 2ebc2laDrgAHczr2sMvPjiPYgckFgUDccjD/pLK6dSZ+37JnSfQ8M2U8hleV3tGWCt
	 tVfu1H1EYeS0/AD293rcIAFykts/5AEDXCkhFJuQL94sqMiQd3C2FwW0kqyhTnynqn
	 HrlNT4wk2lk/3mIIDISo85iU3sqULix+zvpIkfH4cGMBiQBki+yWHuhKHG9FjnBy/w
	 ouoi57WyI3h3Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6F7F540105;
	Fri,  4 Oct 2024 16:27:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C59B51BF3BD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 16:27:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B449F8431B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 16:27:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rrm8hyJIA2sk for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Oct 2024 16:27:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42b; helo=mail-pf1-x42b.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7233181F89
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7233181F89
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com
 [IPv6:2607:f8b0:4864:20::42b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7233181F89
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 16:27:48 +0000 (UTC)
Received: by mail-pf1-x42b.google.com with SMTP id
 d2e1a72fcca58-71c702b2d50so1772314b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Oct 2024 09:27:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728059268; x=1728664068;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=1EwPJ1608FHgcUv1d+P5BWSkWcWPXFoUeUgbMomkXh8=;
 b=q9BsN7qBMO+pniq5p1CgTboMj4iftfA98MqtgUUsXslGXxVFe+E1zuEqzzkFUuRKlJ
 gTuQyrBKc8f41OdySsT2mfRDej6mHIRM9tVyKnLMWiThKEqrpr9wdk2CrPIpaENL5h1P
 gxkeUMCrrTeSVhXfhDURqYSAK5u8ll3CDj2TEZMIm4gAQU84wVGHUFAGs9tKmUvAmOwd
 IG1CjunPchuFv4InknLiATZkXaD0btqcpCpD56Een6cGmqx76VlacWgC+8MPnHeKinuu
 OlpUj3pKrNS/Wi+FM0Mj+Ir8Uh4xR1Y7c1zOZzHZKi5YrffMgrhVmSTvB9H73vu3gg2/
 7KAw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXag1I2q1t1V1/2l/yfuyHlHUV7xqO0klqJbJ2Tl4xaChlptPLljjZrzFyLSthaJZ6NSCxmA/N+LzPcEn8MLsg=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzphCDD+z3LmrO/gzHoa0hGVZiMuvZJcZ0WWVbg4a5zKZ//DG9Y
 tW08BmF5i/UWC55Omfh28gQs+fcDSmw9clwn+hH252UfEdR9DkE=
X-Google-Smtp-Source: AGHT+IH6co3BoA6TXvpR16aqzkc3+ox+pDBKiQ0FlqXl6KBOx9VjfDbaw/EgsWMhwyHSNy3vWWxT+w==
X-Received: by 2002:a05:6a20:43a7:b0:1d4:f6c4:8e7a with SMTP id
 adf61e73a8af0-1d6dfacaf95mr5327190637.31.1728059267540; 
 Fri, 04 Oct 2024 09:27:47 -0700 (PDT)
Received: from localhost ([2601:646:9e00:f56e:123b:cea3:439a:b3e3])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-71df0d4665dsm38795b3a.116.2024.10.04.09.27.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2024 09:27:47 -0700 (PDT)
Date: Fri, 4 Oct 2024 09:27:46 -0700
From: Stanislav Fomichev <stfomichev@gmail.com>
To: Daniel Xu <dxu@dxuuu.xyz>
Message-ID: <ZwAXgm-wV8-WQAqU@mini-arch>
References: <ZvqQOpqnK9hBmXNn@lore-desk> <D4KJ7DUXJQC5.2UFST9L3CUOH7@bobby>
 <ZvwNQqN4gez1Ksfn@lore-desk> <87zfnnq2hs.fsf@toke.dk>
 <Zv18pxsiTGTZSTyO@mini-arch> <87ttdunydz.fsf@toke.dk>
 <Zv3N5G8swr100EXm@mini-arch> <D4LYNKGLE7G0.3JAN5MX1ATPTB@bobby>
 <Zv794Ot-kOq1pguM@mini-arch>
 <2fy5vuewgwkh3o3mx5v4bkrzu6josqylraa4ocgzqib6a7ozt4@hwsuhcibtcb6>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2fy5vuewgwkh3o3mx5v4bkrzu6josqylraa4ocgzqib6a7ozt4@hwsuhcibtcb6>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1728059268; x=1728664068; darn=lists.osuosl.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=1EwPJ1608FHgcUv1d+P5BWSkWcWPXFoUeUgbMomkXh8=;
 b=SIbZx/HR5z/FHkNP9JGS4WB40CoHR+/N6FbNymXg+onV/GCN+0x6vux+M7Ceg+kLJH
 GIbDFZ7uZDlUAA2dOOf2/YypF7X2NJhbdhZuS33tK8NLq4SxK9tsQDhq5g5vyXEcPA6a
 PBiTk6y5sWG1u5We7qXiNuQOcPFvuY9uLcbteakLZoPcmGSJ/7nomHRzZ6FnhQ3H/Zff
 bw5/Gup7THD63PexbCoTJZkeWYRIP47E2rfNLQUee5wa7w1VRJCFDHtoKswTlmeWi4UV
 ws+nZTGcCyWjdtJEpanypJtjkM5wAqdr7yZyQBjCSxXpfdvORKx2iqptisPynnCKmHEj
 TgWw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=SIbZx/HR
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
 Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 tariqt@nvidia.com, Alexander Lobakin <aleksander.lobakin@intel.com>,
 mcoquelin.stm32@gmail.com, bpf@vger.kernel.org, saeedm@nvidia.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/03, Daniel Xu wrote:
> Hi Stan,
> 
> On Thu, Oct 03, 2024 at 01:26:08PM GMT, Stanislav Fomichev wrote:
> > On 10/03, Arthur Fabre wrote:
> > > On Thu Oct 3, 2024 at 12:49 AM CEST, Stanislav Fomichev wrote:
> > > > On 10/02, Toke Høiland-Jørgensen wrote:
> > > > > Stanislav Fomichev <stfomichev@gmail.com> writes:
> > > > > 
> > > > > > On 10/01, Toke Høiland-Jørgensen wrote:
> > > > > >> Lorenzo Bianconi <lorenzo@kernel.org> writes:
> > > > > >> 
> > > > > >> >> On Mon Sep 30, 2024 at 1:49 PM CEST, Lorenzo Bianconi wrote:
> > > > > >> >> > > Lorenzo Bianconi <lorenzo@kernel.org> writes:
> > > > > >> >> > > 
> > > > > >> >> > > >> > We could combine such a registration API with your header format, so
> > > > > >> >> > > >> > that the registration just becomes a way of allocating one of the keys
> > > > > >> >> > > >> > from 0-63 (and the registry just becomes a global copy of the header).
> > > > > >> >> > > >> > This would basically amount to moving the "service config file" into the
> > > > > >> >> > > >> > kernel, since that seems to be the only common denominator we can rely
> > > > > >> >> > > >> > on between BPF applications (as all attempts to write a common daemon
> > > > > >> >> > > >> > for BPF management have shown).
> > > > > >> >> > > >> 
> > > > > >> >> > > >> That sounds reasonable. And I guess we'd have set() check the global
> > > > > >> >> > > >> registry to enforce that the key has been registered beforehand?
> > > > > >> >> > > >> 
> > > > > >> >> > > >> >
> > > > > >> >> > > >> > -Toke
> > > > > >> >> > > >> 
> > > > > >> >> > > >> Thanks for all the feedback!
> > > > > >> >> > > >
> > > > > >> >> > > > I like this 'fast' KV approach but I guess we should really evaluate its
> > > > > >> >> > > > impact on performances (especially for xdp) since, based on the kfunc calls
> > > > > >> >> > > > order in the ebpf program, we can have one or multiple memmove/memcpy for
> > > > > >> >> > > > each packet, right?
> > > > > >> >> > > 
> > > > > >> >> > > Yes, with Arthur's scheme, performance will be ordering dependent. Using
> > > > > >> >> > > a global registry for offsets would sidestep this, but have the
> > > > > >> >> > > synchronisation issues we discussed up-thread. So on balance, I think
> > > > > >> >> > > the memmove() suggestion will probably lead to the least pain.
> > > > > >> >> > > 
> > > > > >> >> > > For the HW metadata we could sidestep this by always having a fixed
> > > > > >> >> > > struct for it (but using the same set/get() API with reserved keys). The
> > > > > >> >> > > only drawback of doing that is that we statically reserve a bit of
> > > > > >> >> > > space, but I'm not sure that is such a big issue in practice (at least
> > > > > >> >> > > not until this becomes to popular that the space starts to be contended;
> > > > > >> >> > > but surely 256 bytes ought to be enough for everybody, right? :)).
> > > > > >> >> >
> > > > > >> >> > I am fine with the proposed approach, but I think we need to verify what is the
> > > > > >> >> > impact on performances (in the worst case??)
> > > > > >> >> 
> > > > > >> >> If drivers are responsible for populating the hardware metadata before
> > > > > >> >> XDP, we could make sure drivers set the fields in order to avoid any
> > > > > >> >> memove() (and maybe even provide a helper to ensure this?).
> > > > > >> >
> > > > > >> > nope, since the current APIs introduced by Stanislav are consuming NIC
> > > > > >> > metadata in kfuncs (mainly for af_xdp) and, according to my understanding,
> > > > > >> > we want to add a kfunc to store the info for each NIC metadata (e.g rx-hash,
> > > > > >> > timestamping, ..) into the packet (this is what Toke is proposing, right?).
> > > > > >> > In this case kfunc calling order makes a difference.
> > > > > >> > We can think even to add single kfunc to store all the info for all the NIC
> > > > > >> > metadata (maybe via a helping struct) but it seems not scalable to me and we
> > > > > >> > are losing kfunc versatility.
> > > > > >> 
> > > > > >> Yes, I agree we should have separate kfuncs for each metadata field.
> > > > > >> Which means it makes a lot of sense to just use the same setter API that
> > > > > >> we use for the user-registered metadata fields, but using reserved keys.
> > > > > >> So something like:
> > > > > >> 
> > > > > >> #define BPF_METADATA_HW_HASH      BIT(60)
> > > > > >> #define BPF_METADATA_HW_TIMESTAMP BIT(61)
> > > > > >> #define BPF_METADATA_HW_VLAN      BIT(62)
> > > > > >> #define BPF_METADATA_RESERVED (0xffff << 48)
> > > > > >> 
> > > > > >> bpf_packet_metadata_set(pkt, BPF_METADATA_HW_HASH, hash_value);
> > > > > >> 
> > > > > >> 
> > > > > >> As for the internal representation, we can just have the kfunc do
> > > > > >> something like:
> > > > > >> 
> > > > > >> int bpf_packet_metadata_set(field_id, value) {
> > > > > >>   switch(field_id) {
> > > > > >>     case BPF_METADATA_HW_HASH:
> > > > > >>       pkt->xdp_hw_meta.hash = value;
> > > > > >>       break;
> > > > > >>     [...]
> > > > > >>     default:
> > > > > >>       /* do the key packing thing */
> > > > > >>   }
> > > > > >> }
> > > > > >> 
> > > > > >> 
> > > > > >> that way the order of setting the HW fields doesn't matter, only the
> > > > > >> user-defined metadata.
> > > > > >
> > > > > > Can you expand on why we need the flexibility of picking the metadata fields
> > > > > > here? Presumably we are talking about the use-cases where the XDP program
> > > > > > is doing redirect/pass and it doesn't really know who's the final
> > > > > > consumer is (might be another xdp program or might be the xdp->skb
> > > > > > kernel case), so the only sensible option here seems to be store everything?
> > > > > 
> > > > > For the same reason that we have separate kfuncs for each metadata field
> > > > > when getting it from the driver: XDP programs should have the
> > > > > flexibility to decide which pieces of metadata they need, and skip the
> > > > > overhead of stuff that is not needed.
> > > > > 
> > > > > For instance, say an XDP program knows that nothing in the system uses
> > > > > timestamps; in that case, it can skip both the getter and the setter
> > > > > call for timestamps.
> > 
> > Original RFC is talking about XDP -> XDP_REDIRECT -> skb use-case,
> > right? For this we pretty much know what kind of metadata we want to
> > preserve, so why not ship it in the existing metadata area and have
> > a kfunc that the xdp program will call prior to doing xdp_redirect?
> > This kfunc can do exactly what you're suggesting - skip the timestamp
> > if we know that the timestamping is off.
> > 
> > Or have we moved to discussing some other use-cases? What am I missing
> > about the need for some other new mechanism?
> > 
> > > > But doesn't it put us in the same place? Where the first (native) xdp program
> > > > needs to know which metadata the final consumer wants. At this point
> > > > why not propagate metadata layout as well?
> > > >
> > > > (or maybe I'm still missing what exact use-case we are trying to solve)
> > > 
> > > There are two different use-cases for the metadata:
> > > 
> > > * "Hardware" metadata (like the hash, rx_timestamp...). There are only a
> > >   few well known fields, and only XDP can access them to set them as
> > >   metadata, so storing them in a struct somewhere could make sense.
> > > 
> > > * Arbitrary metadata used by services. Eg a TC filter could set a field
> > >   describing which service a packet is for, and that could be reused for
> > >   iptables, routing, socket dispatch...
> > >   Similarly we could set a "packet_id" field that uniquely identifies a
> > >   packet so we can trace it throughout the network stack (through
> > >   clones, encap, decap, userspace services...).
> > >   The skb->mark, but with more room, and better support for sharing it.
> > > 
> > > We can only know the layout ahead of time for the first one. And they're
> > > similar enough in their requirements (need to be stored somewhere in the
> > > SKB, have a way of retrieving each one individually, that it seems to
> > > make sense to use a common API).
> > 
> > Why not have the following layout then?
> > 
> > +---------------+-------------------+----------------------------------------+------+
> > | more headroom | user-defined meta | hw-meta (potentially fixed skb format) | data |
> > +---------------+-------------------+----------------------------------------+------+
> >                 ^                                                            ^
> >             data_meta                                                      data
> > 
> > You obviously still have a problem of communicating the layout if you
> > have some redirects in between, but you, in theory still have this
> > problem with user-defined metadata anyway (unless I'm missing
> > something).
> > 
> > > > > I suppose we *could* support just a single call to set the skb meta,
> > > > > like:
> > > > > 
> > > > > bpf_set_skb_meta(struct xdp_md *pkt, struct xdp_hw_meta *data);
> > > > > 
> > > > > ...but in that case, we'd need to support some fields being unset
> > > > > anyway, and the program would have to populate the struct on the stack
> > > > > before performing the call. So it seems simpler to just have symmetry
> > > > > between the get (from HW) and set side? :)
> > > >
> > > > Why not simply bpf_set_skb_meta(struct xdp_md *pkt) and let it store
> > > > the metadata somewhere in xdp_md directly? (also presumably by
> > > > reusing most of the existing kfuncs/xmo_xxx helpers)
> > > 
> > > If we store it in xdp_md, the metadata won't be available higher up the
> > > stack (or am I missing something?). I think one of the goals is to let
> > > things other than XDP access it (maybe even the network stack itself?).
> > 
> > IIRC, xdp metadata gets copied to skb metadata, so it does propagate.
> > Although, it might have a detrimental effect on the gro, but I'm
> > assuming that is something that can be fixed separately.
> 
> I was thinking about this today so I'm glad you brought it up.
> 
> IIUC putting unique data in the metadata area will prevent GRO from
> working. I wonder if as a part of this work there's a cleaner way to
> indicate to XDP or GRO engine that some metadata should be ignored for
> coalescing purposes. Otherwise the final XDP prog before GRO would need
> to memset() all the relevant bytes to 0 (assuming that even works).

I'm assuming it is that way because there has to be a conscious decision
(TBD somewhere) about how to merge the metadata. IOW, there needs to be
some definition of 'ignored for coalescing purposes'. Do we ignore
the old metadata (the one that's already in the gro queue) or the new
metadata (in the skb)? What if there is a timestamp in the metadata?
In this case, depending on what you ignore, you get a different
timestamp.
