Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 212F699073D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2024 17:16:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1659C40D17;
	Fri,  4 Oct 2024 15:16:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CYNoHY1xtvzp; Fri,  4 Oct 2024 15:16:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E17440114
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728054964;
	bh=DNnO7oBJ38aTEcsogdYXkdlehmzDHYXoYjI0FO0UbwQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eauIQDQIkIOSLSSknT+0xZcVkFqsbnwk4dG4bhfhP7gTh3Qw4iqKgxKibtt75Vxek
	 XLDFpNtWcwpYuUnmXy/yXEt57wwKs/dOvNv9gOlaXMoYYknmSIOlKDAzWDZHd+6cWB
	 d3gHVYy/aXmU4wf+6aERiz3yzUY/d4+IfotfcqZ2GVO61OXsm7uWSJZcjtRSHxhPbD
	 tz9cwxFC0AXrj1YZGtd4L/eHGzMI4SMxhrmzP+gQB5xiSl3m5Vei7ab6zzDtea3IVe
	 Hv+n8XuemBLGhS/af/X0lBlUsZ3dKVLCMEIwFtLvl5apH6YdwwgXQBs533k7IokChu
	 E6HxXDQ0uCBwA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E17440114;
	Fri,  4 Oct 2024 15:16:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 61B211BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 02:21:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5C80B607B2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 02:21:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5zg5O55EeLoP for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Oct 2024 02:21:14 +0000 (UTC)
X-Greylist: delayed 480 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 04 Oct 2024 02:21:13 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E94DA6078E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E94DA6078E
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.168.172.144;
 helo=fout-a1-smtp.messagingengine.com; envelope-from=dxu@dxuuu.xyz;
 receiver=<UNKNOWN> 
Received: from fout-a1-smtp.messagingengine.com
 (fout-a1-smtp.messagingengine.com [103.168.172.144])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E94DA6078E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 02:21:13 +0000 (UTC)
Received: from phl-compute-01.internal (phl-compute-01.phl.internal
 [10.202.2.41])
 by mailfout.phl.internal (Postfix) with ESMTP id 883541380141;
 Thu,  3 Oct 2024 22:13:12 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-01.internal (MEProxy); Thu, 03 Oct 2024 22:13:12 -0400
X-ME-Sender: <xms:N0__ZmR-fw1VACOo_U96KG3sJlP2oBJ5rezx8IJvni-dxcMZVJ2hHA>
 <xme:N0__ZrzE_M7ETwTvoem6gF8LuwCMOE1xB0Gv7mvbo3dO9_gBOjg8-0cgh_mAHnSEL
 H4Q8XxoRCEnTYsFXg>
X-ME-Received: <xmr:N0__Zj0EEZcNkuOPC9HaIKdIsrZhLzGPI1NDJERX8094df-SYReXKmV0VsIroKa193TMiNRmvgNBMN09Qsdtfsb3ZJDS7yZ9LbZkik1t3_Qoqg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrvddvvddgheejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnegfrhhlucfvnfffucdljedtmdenucfjughrpeffhffvvefukfhf
 gggtugfgjgestheksfdttddtudenucfhrhhomhepffgrnhhivghlucgiuhcuoegugihuse
 gugihuuhhurdighiiiqeenucggtffrrghtthgvrhhnpedufeeitdeiheffueffleffgeeh
 geejkeetkefgtdekfeejheffjedtgfekieetleenucevlhhushhtvghrufhiiigvpedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpegugihusegugihuuhhurdighiiipdhnsggprhgt
 phhtthhopedvledpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepshhtfhhomhhitg
 hhvghvsehgmhgrihhlrdgtohhmpdhrtghpthhtoheprghfrggsrhgvsegtlhhouhgufhhl
 rghrvgdrtghomhdprhgtphhtthhopehtohhkvgesrhgvughhrghtrdgtohhmpdhrtghpth
 htoheplhhorhgvnhiioheskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhorhgvnhii
 ohdrsghirghntghonhhisehrvgguhhgrthdrtghomhdprhgtphhtthhopehhrgifkheskh
 gvrhhnvghlrdhorhhgpdhrtghpthhtohepjhgrkhhusgestghlohhuughflhgrrhgvrdgt
 ohhmpdhrtghpthhtoheprghlvghkshgrnhguvghrrdhlohgsrghkihhnsehinhhtvghlrd
 gtohhmpdhrtghpthhtohepsghpfhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:N0__ZiAILa9QrxONVn0NgRn9Rvb7mnPy3B278mrZhGqrRKY9pI8YeQ>
 <xmx:N0__Zvj5PIVlcGE6uUrJPBjgR6BadsTp-KNJZo4qyKScZf3KgdwMzA>
 <xmx:N0__ZuraEYVvb9TYjden7Ids7dEErKfgc1SpQTert3LAbRJ93nMWkQ>
 <xmx:N0__ZigDnuGw6-9_wFIEX-UT_7aQuNYLFWbGCqUL1sfwHM6rbXwajg>
 <xmx:OE__ZgawQ9m_l61gXPYIbruBogG1yskokX2KrZ5QOrMIaFULc7cMCc6S>
Feedback-ID: i6a694271:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 3 Oct 2024 22:13:08 -0400 (EDT)
Date: Thu, 3 Oct 2024 20:13:06 -0600
From: Daniel Xu <dxu@dxuuu.xyz>
To: Stanislav Fomichev <stfomichev@gmail.com>
Message-ID: <2fy5vuewgwkh3o3mx5v4bkrzu6josqylraa4ocgzqib6a7ozt4@hwsuhcibtcb6>
References: <871q11s91e.fsf@toke.dk> <ZvqQOpqnK9hBmXNn@lore-desk>
 <D4KJ7DUXJQC5.2UFST9L3CUOH7@bobby> <ZvwNQqN4gez1Ksfn@lore-desk>
 <87zfnnq2hs.fsf@toke.dk> <Zv18pxsiTGTZSTyO@mini-arch>
 <87ttdunydz.fsf@toke.dk> <Zv3N5G8swr100EXm@mini-arch>
 <D4LYNKGLE7G0.3JAN5MX1ATPTB@bobby> <Zv794Ot-kOq1pguM@mini-arch>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Zv794Ot-kOq1pguM@mini-arch>
X-Mailman-Approved-At: Fri, 04 Oct 2024 15:16:02 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dxuuu.xyz; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1728007992;
 x=1728094392; bh=DNnO7oBJ38aTEcsogdYXkdlehmzDHYXoYjI0FO0UbwQ=; b=
 iGi+3X3VKyVxDp1gyOD/0VT6rGq6iHlqiZpsLLrBmv9NiDIn8aGHSnlwoWeExEfg
 G78XSMTqMyQLD5rqxzhli4zUwxyV+381CAaccud1hLodiHWL3LFm9Kiq147aYPoO
 OwYfIj9ibX5hyz6dN6PTMTvpJOutiq0z0+Hu3MimABO30xgNdfM0Chbe+RrSsknm
 YrywqqT7pm/vnFBeHgudxKZ/WUUcrsZynskUMJ1KBJrPMp1kAaUu8gTP1R5LqPq1
 VQUIe9GtFr99GnzX6c1mRcK5aTxHXWh4li0IgkWlEiFCfQmoal+i00tL13FwtoUL
 cDb8HBqcuSto8Oik4jV0rQ==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1728007992; x=
 1728094392; bh=DNnO7oBJ38aTEcsogdYXkdlehmzDHYXoYjI0FO0UbwQ=; b=e
 3cLK8mrPBFO6/X8/vwEwAveCfZA9R74+7BVBOkbxGhgGufa+XkwZxr1x5b5LUgWG
 dZzBFKBoT+tpiy0HvClbWDsR+ZkLU0SoHJwpUpWODid/3/jmh+6BNfLfwIRYvhCo
 Y34fVPA2QgJ0SivyifqyCxlWGpgF5Ypm5KLlYQ7JDZW4JhC6rabtnAU4mBMCGjyr
 j0xb/DGDA5MUEBzaLgXxxRZq4uevxhRW/TGrHON0JcnL20cdFGRzBD1dUB9WDaKw
 RgX0Wtfz39qve4eCazvjsf+aKSV/sETle78SSK7Kds3jSkWTG/cXkvJJKwudTZ/d
 2Rij8JyyJwWPM+stesxoA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=dxuuu.xyz
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=dxuuu.xyz header.i=@dxuuu.xyz
 header.a=rsa-sha256 header.s=fm1 header.b=iGi+3X3V; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm2 header.b=e3cLK8mr
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

Hi Stan,

On Thu, Oct 03, 2024 at 01:26:08PM GMT, Stanislav Fomichev wrote:
> On 10/03, Arthur Fabre wrote:
> > On Thu Oct 3, 2024 at 12:49 AM CEST, Stanislav Fomichev wrote:
> > > On 10/02, Toke H�iland-J�rgensen wrote:
> > > > Stanislav Fomichev <stfomichev@gmail.com> writes:
> > > > 
> > > > > On 10/01, Toke H�iland-J�rgensen wrote:
> > > > >> Lorenzo Bianconi <lorenzo@kernel.org> writes:
> > > > >> 
> > > > >> >> On Mon Sep 30, 2024 at 1:49 PM CEST, Lorenzo Bianconi wrote:
> > > > >> >> > > Lorenzo Bianconi <lorenzo@kernel.org> writes:
> > > > >> >> > > 
> > > > >> >> > > >> > We could combine such a registration API with your header format, so
> > > > >> >> > > >> > that the registration just becomes a way of allocating one of the keys
> > > > >> >> > > >> > from 0-63 (and the registry just becomes a global copy of the header).
> > > > >> >> > > >> > This would basically amount to moving the "service config file" into the
> > > > >> >> > > >> > kernel, since that seems to be the only common denominator we can rely
> > > > >> >> > > >> > on between BPF applications (as all attempts to write a common daemon
> > > > >> >> > > >> > for BPF management have shown).
> > > > >> >> > > >> 
> > > > >> >> > > >> That sounds reasonable. And I guess we'd have set() check the global
> > > > >> >> > > >> registry to enforce that the key has been registered beforehand?
> > > > >> >> > > >> 
> > > > >> >> > > >> >
> > > > >> >> > > >> > -Toke
> > > > >> >> > > >> 
> > > > >> >> > > >> Thanks for all the feedback!
> > > > >> >> > > >
> > > > >> >> > > > I like this 'fast' KV approach but I guess we should really evaluate its
> > > > >> >> > > > impact on performances (especially for xdp) since, based on the kfunc calls
> > > > >> >> > > > order in the ebpf program, we can have one or multiple memmove/memcpy for
> > > > >> >> > > > each packet, right?
> > > > >> >> > > 
> > > > >> >> > > Yes, with Arthur's scheme, performance will be ordering dependent. Using
> > > > >> >> > > a global registry for offsets would sidestep this, but have the
> > > > >> >> > > synchronisation issues we discussed up-thread. So on balance, I think
> > > > >> >> > > the memmove() suggestion will probably lead to the least pain.
> > > > >> >> > > 
> > > > >> >> > > For the HW metadata we could sidestep this by always having a fixed
> > > > >> >> > > struct for it (but using the same set/get() API with reserved keys). The
> > > > >> >> > > only drawback of doing that is that we statically reserve a bit of
> > > > >> >> > > space, but I'm not sure that is such a big issue in practice (at least
> > > > >> >> > > not until this becomes to popular that the space starts to be contended;
> > > > >> >> > > but surely 256 bytes ought to be enough for everybody, right? :)).
> > > > >> >> >
> > > > >> >> > I am fine with the proposed approach, but I think we need to verify what is the
> > > > >> >> > impact on performances (in the worst case??)
> > > > >> >> 
> > > > >> >> If drivers are responsible for populating the hardware metadata before
> > > > >> >> XDP, we could make sure drivers set the fields in order to avoid any
> > > > >> >> memove() (and maybe even provide a helper to ensure this?).
> > > > >> >
> > > > >> > nope, since the current APIs introduced by Stanislav are consuming NIC
> > > > >> > metadata in kfuncs (mainly for af_xdp) and, according to my understanding,
> > > > >> > we want to add a kfunc to store the info for each NIC metadata (e.g rx-hash,
> > > > >> > timestamping, ..) into the packet (this is what Toke is proposing, right?).
> > > > >> > In this case kfunc calling order makes a difference.
> > > > >> > We can think even to add single kfunc to store all the info for all the NIC
> > > > >> > metadata (maybe via a helping struct) but it seems not scalable to me and we
> > > > >> > are losing kfunc versatility.
> > > > >> 
> > > > >> Yes, I agree we should have separate kfuncs for each metadata field.
> > > > >> Which means it makes a lot of sense to just use the same setter API that
> > > > >> we use for the user-registered metadata fields, but using reserved keys.
> > > > >> So something like:
> > > > >> 
> > > > >> #define BPF_METADATA_HW_HASH      BIT(60)
> > > > >> #define BPF_METADATA_HW_TIMESTAMP BIT(61)
> > > > >> #define BPF_METADATA_HW_VLAN      BIT(62)
> > > > >> #define BPF_METADATA_RESERVED (0xffff << 48)
> > > > >> 
> > > > >> bpf_packet_metadata_set(pkt, BPF_METADATA_HW_HASH, hash_value);
> > > > >> 
> > > > >> 
> > > > >> As for the internal representation, we can just have the kfunc do
> > > > >> something like:
> > > > >> 
> > > > >> int bpf_packet_metadata_set(field_id, value) {
> > > > >>   switch(field_id) {
> > > > >>     case BPF_METADATA_HW_HASH:
> > > > >>       pkt->xdp_hw_meta.hash = value;
> > > > >>       break;
> > > > >>     [...]
> > > > >>     default:
> > > > >>       /* do the key packing thing */
> > > > >>   }
> > > > >> }
> > > > >> 
> > > > >> 
> > > > >> that way the order of setting the HW fields doesn't matter, only the
> > > > >> user-defined metadata.
> > > > >
> > > > > Can you expand on why we need the flexibility of picking the metadata fields
> > > > > here? Presumably we are talking about the use-cases where the XDP program
> > > > > is doing redirect/pass and it doesn't really know who's the final
> > > > > consumer is (might be another xdp program or might be the xdp->skb
> > > > > kernel case), so the only sensible option here seems to be store everything?
> > > > 
> > > > For the same reason that we have separate kfuncs for each metadata field
> > > > when getting it from the driver: XDP programs should have the
> > > > flexibility to decide which pieces of metadata they need, and skip the
> > > > overhead of stuff that is not needed.
> > > > 
> > > > For instance, say an XDP program knows that nothing in the system uses
> > > > timestamps; in that case, it can skip both the getter and the setter
> > > > call for timestamps.
> 
> Original RFC is talking about XDP -> XDP_REDIRECT -> skb use-case,
> right? For this we pretty much know what kind of metadata we want to
> preserve, so why not ship it in the existing metadata area and have
> a kfunc that the xdp program will call prior to doing xdp_redirect?
> This kfunc can do exactly what you're suggesting - skip the timestamp
> if we know that the timestamping is off.
> 
> Or have we moved to discussing some other use-cases? What am I missing
> about the need for some other new mechanism?
> 
> > > But doesn't it put us in the same place? Where the first (native) xdp program
> > > needs to know which metadata the final consumer wants. At this point
> > > why not propagate metadata layout as well?
> > >
> > > (or maybe I'm still missing what exact use-case we are trying to solve)
> > 
> > There are two different use-cases for the metadata:
> > 
> > * "Hardware" metadata (like the hash, rx_timestamp...). There are only a
> >   few well known fields, and only XDP can access them to set them as
> >   metadata, so storing them in a struct somewhere could make sense.
> > 
> > * Arbitrary metadata used by services. Eg a TC filter could set a field
> >   describing which service a packet is for, and that could be reused for
> >   iptables, routing, socket dispatch...
> >   Similarly we could set a "packet_id" field that uniquely identifies a
> >   packet so we can trace it throughout the network stack (through
> >   clones, encap, decap, userspace services...).
> >   The skb->mark, but with more room, and better support for sharing it.
> > 
> > We can only know the layout ahead of time for the first one. And they're
> > similar enough in their requirements (need to be stored somewhere in the
> > SKB, have a way of retrieving each one individually, that it seems to
> > make sense to use a common API).
> 
> Why not have the following layout then?
> 
> +---------------+-------------------+----------------------------------------+------+
> | more headroom | user-defined meta | hw-meta (potentially fixed skb format) | data |
> +---------------+-------------------+----------------------------------------+------+
>                 ^                                                            ^
>             data_meta                                                      data
> 
> You obviously still have a problem of communicating the layout if you
> have some redirects in between, but you, in theory still have this
> problem with user-defined metadata anyway (unless I'm missing
> something).
> 
> > > > I suppose we *could* support just a single call to set the skb meta,
> > > > like:
> > > > 
> > > > bpf_set_skb_meta(struct xdp_md *pkt, struct xdp_hw_meta *data);
> > > > 
> > > > ...but in that case, we'd need to support some fields being unset
> > > > anyway, and the program would have to populate the struct on the stack
> > > > before performing the call. So it seems simpler to just have symmetry
> > > > between the get (from HW) and set side? :)
> > >
> > > Why not simply bpf_set_skb_meta(struct xdp_md *pkt) and let it store
> > > the metadata somewhere in xdp_md directly? (also presumably by
> > > reusing most of the existing kfuncs/xmo_xxx helpers)
> > 
> > If we store it in xdp_md, the metadata won't be available higher up the
> > stack (or am I missing something?). I think one of the goals is to let
> > things other than XDP access it (maybe even the network stack itself?).
> 
> IIRC, xdp metadata gets copied to skb metadata, so it does propagate.
> Although, it might have a detrimental effect on the gro, but I'm
> assuming that is something that can be fixed separately.

I was thinking about this today so I'm glad you brought it up.

IIUC putting unique data in the metadata area will prevent GRO from
working. I wonder if as a part of this work there's a cleaner way to
indicate to XDP or GRO engine that some metadata should be ignored for
coalescing purposes. Otherwise the final XDP prog before GRO would need
to memset() all the relevant bytes to 0 (assuming that even works).

Thanks,
Daniel
