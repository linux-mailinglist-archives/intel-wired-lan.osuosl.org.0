Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13EEF990A6F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2024 19:53:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 92DD04021C;
	Fri,  4 Oct 2024 17:53:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FMTR5xsuuA0X; Fri,  4 Oct 2024 17:53:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C39C340423
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728064435;
	bh=JrHhw1JiaZd1L+/KyXQwcgkVe1bI00CuH0U1t4rxdlI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xQumx6OHQvWEahr1EQYRnc0Dv1q2bC6EZdc1XutKvysoXPoAsF+qsomrPds/b4tTg
	 ab+lL/BHZ84yATncQoZTOoqWRm0KRQULRPn91eU5m62hrtBwAwc47fWCtLo55s6P/z
	 4g5yX9KVKek+4FNwMghcS3GpeOvo+icgoH6M9SJQfpO5SC0Gw+bmRu7V8G+Nn+9To2
	 z1mRFpqklfSOpr8r6NUL2en3YD5Qwnsn+BrfZVjiYSsFIAGcv261ICsWLnLqOSvbNE
	 s+plVr9Tn+ppkaeWSyLChdlMBoASRgEVMbAFu5t3CuF2D+Penb323tf+8XZWesJAym
	 j0rzeRrpu/rRw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C39C340423;
	Fri,  4 Oct 2024 17:53:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A7A731BF982
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 17:53:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 94B0C406C2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 17:53:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3pn97bPX-Jcx for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Oct 2024 17:53:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1033; helo=mail-pj1-x1033.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3ACCB406C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3ACCB406C0
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com
 [IPv6:2607:f8b0:4864:20::1033])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3ACCB406C0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 17:53:52 +0000 (UTC)
Received: by mail-pj1-x1033.google.com with SMTP id
 98e67ed59e1d1-2e0894f1b14so1865776a91.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Oct 2024 10:53:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728064431; x=1728669231;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=JrHhw1JiaZd1L+/KyXQwcgkVe1bI00CuH0U1t4rxdlI=;
 b=n9Z/Ji7GP3Xgg2ZRkCfY0CA5imN+M9tqQLd5alZUfE+5+x7kbmUcWdYnwD7H9+MYX1
 UzaYrRtEFMw9vVnum0BZkg8P8CqvPf/e65pOaw9GmQu2MKjQFK2XIg/JrW3imHS3jM9G
 LkxrIh8Z2v5ilUHX8aBcHBOZ5ijeYgLh3Y5O5Bq/8XP6QJO2x277ZWOyjspMxp0lnz33
 UyE8OptqTCbhMQJfdUoSScSs3V5GxhI4GHP2UW3lJDXTEGfrvyujZR1MiEBWwytEbwi9
 9qcDiTFfp49lmsNjscXI4vii2Wrr7NS1FrwZ1WkVxjjsn33GVVh4z+LpBCM8GwsEGWGn
 EOwA==
X-Forwarded-Encrypted: i=1;
 AJvYcCW/LvoCQ/SWkkFBwGNwfy3qs43Try1LCxtk/SBgtJsaUA51E5/5GYwnam+3xM5vwVROrNL+gdunZhdt5F9Ptu8=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yxb/CxYPVZgLfCb7H9agNmm9MmNuko2p48cTEy5EPs2mG+Eor4u
 rGseiHk1fSkMYjv800y8dpZCh2BTXEO2lnx1cQGWwhecIglQSeI=
X-Google-Smtp-Source: AGHT+IETxvqfT3O6Nss0LDaANw71BycqWmkZxK4x4rCcdRphpBZeZFc9IQK4yBpYhzzsWPYzF9wmzQ==
X-Received: by 2002:a17:90b:17c8:b0:2c3:2557:3de8 with SMTP id
 98e67ed59e1d1-2e1e638d03dmr4260896a91.33.1728064431360; 
 Fri, 04 Oct 2024 10:53:51 -0700 (PDT)
Received: from localhost ([2601:646:9e00:f56e:123b:cea3:439a:b3e3])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2e20b0f6467sm192816a91.45.2024.10.04.10.53.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2024 10:53:50 -0700 (PDT)
Date: Fri, 4 Oct 2024 10:53:50 -0700
From: Stanislav Fomichev <stfomichev@gmail.com>
To: Jesper Dangaard Brouer <hawk@kernel.org>
Message-ID: <ZwArrsqrYx7IM5tq@mini-arch>
References: <D4KJ7DUXJQC5.2UFST9L3CUOH7@bobby> <ZvwNQqN4gez1Ksfn@lore-desk>
 <87zfnnq2hs.fsf@toke.dk> <Zv18pxsiTGTZSTyO@mini-arch>
 <87ttdunydz.fsf@toke.dk> <Zv3N5G8swr100EXm@mini-arch>
 <D4LYNKGLE7G0.3JAN5MX1ATPTB@bobby> <Zv794Ot-kOq1pguM@mini-arch>
 <2fy5vuewgwkh3o3mx5v4bkrzu6josqylraa4ocgzqib6a7ozt4@hwsuhcibtcb6>
 <038fffa3-1e29-4c6d-9e27-8181865dca46@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <038fffa3-1e29-4c6d-9e27-8181865dca46@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1728064431; x=1728669231; darn=lists.osuosl.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=JrHhw1JiaZd1L+/KyXQwcgkVe1bI00CuH0U1t4rxdlI=;
 b=VfyQGkT0pChTB0kgPD9DaRsUy2OWxRTm1u2OqkFSuWTB/rPwnWocHDgftJZpKOufWV
 Ze8EwZbDiF9nNsrfFhkiwl1FBpIsSrN6ynuAaxKUSlPUvq6DMsx0Xayc+JlazOGiLbQB
 2xEhXLBrIvbymjlhqCdGDPiYjkqNRHvjkg8fsLlcRgOivjP7mPw9zayUjUvFFTBlw77C
 8KO3ADE0qkokPQm6juimWx+633hoC7V6HTcYKxjLA/OWduPGjyqWberliUd3MSuAGjvs
 SaEACtTr5cuCQDgx2B3iQcAPCfvLRc77E6Q+AmcHJA3fCwgk0FmZKD4kQ6nLkn87iQAm
 jYLQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=VfyQGkT0
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
 anthony.l.nguyen@intel.com, Jakub Sitnicki <jakub@cloudflare.com>,
 daniel@iogearbox.net, kernel-team <kernel-team@cloudflare.com>,
 przemyslaw.kitszel@intel.com, john.fastabend@gmail.com, sdf@fomichev.me,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 Lorenzo Bianconi <lorenzo@kernel.org>, Yan Zhai <yan@cloudflare.com>,
 alexandre.torgue@foss.st.com, Daniel Xu <dxu@dxuuu.xyz>,
 Arthur Fabre <afabre@cloudflare.com>, netdev@vger.kernel.org,
 Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 tariqt@nvidia.com, Alexander Lobakin <aleksander.lobakin@intel.com>,
 mcoquelin.stm32@gmail.com, bpf@vger.kernel.org, saeedm@nvidia.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/04, Jesper Dangaard Brouer wrote:
> 
> 
> On 04/10/2024 04.13, Daniel Xu wrote:
> > On Thu, Oct 03, 2024 at 01:26:08PM GMT, Stanislav Fomichev wrote:
> > > On 10/03, Arthur Fabre wrote:
> > > > On Thu Oct 3, 2024 at 12:49 AM CEST, Stanislav Fomichev wrote:
> > > > > On 10/02, Toke Høiland-Jørgensen wrote:
> > > > > > Stanislav Fomichev <stfomichev@gmail.com> writes:
> > > > > > 
> > > > > > > On 10/01, Toke Høiland-Jørgensen wrote:
> > > > > > > > Lorenzo Bianconi <lorenzo@kernel.org> writes:
> > > > > > > > 
> > > > > > > > > > On Mon Sep 30, 2024 at 1:49 PM CEST, Lorenzo Bianconi wrote:
> > > > > > > > > > > > Lorenzo Bianconi <lorenzo@kernel.org> writes:
> > > > > > > > > > > > 
> [...]
> > > > > > > > > > > > > 
> > > > > > > > > > > > > I like this 'fast' KV approach but I guess we should really evaluate its
> > > > > > > > > > > > > impact on performances (especially for xdp) since, based on the kfunc calls
> > > > > > > > > > > > > order in the ebpf program, we can have one or multiple memmove/memcpy for
> > > > > > > > > > > > > each packet, right?
> > > > > > > > > > > > 
> > > > > > > > > > > > Yes, with Arthur's scheme, performance will be ordering dependent. Using
> 
> I really like the *compact* Key-Value (KV) store idea from Arthur.
>  - The question is it is fast enough?
> 
> I've promised Arthur to XDP micro-benchmark this, if he codes this up to
> be usable in the XDP code path.  Listening to the LPC recording I heard
> that Alexei also saw potential and other use-case for this kind of
> fast-and-compact KV approach.
> 
> I have high hopes for the performance, as Arthur uses POPCNT instruction
> which is *very* fast[1]. I checked[2] AMD Zen 3 and 4 have Ops/Latency=1
> and Reciprocal throughput 0.25.
> 
>  [1] https://www.agner.org/optimize/blog/read.php?i=853#848
>  [2] https://www.agner.org/optimize/instruction_tables.pdf
> 
> [...]
> > > > There are two different use-cases for the metadata:
> > > > 
> > > > * "Hardware" metadata (like the hash, rx_timestamp...). There are only a
> > > >    few well known fields, and only XDP can access them to set them as
> > > >    metadata, so storing them in a struct somewhere could make sense.
> > > > 
> > > > * Arbitrary metadata used by services. Eg a TC filter could set a field
> > > >    describing which service a packet is for, and that could be reused for
> > > >    iptables, routing, socket dispatch...
> > > >    Similarly we could set a "packet_id" field that uniquely identifies a
> > > >    packet so we can trace it throughout the network stack (through
> > > >    clones, encap, decap, userspace services...).
> > > >    The skb->mark, but with more room, and better support for sharing it.
> > > > 
> > > > We can only know the layout ahead of time for the first one. And they're
> > > > similar enough in their requirements (need to be stored somewhere in the
> > > > SKB, have a way of retrieving each one individually, that it seems to
> > > > make sense to use a common API).
> > > 
> > > Why not have the following layout then?
> > > 
> > > +---------------+-------------------+----------------------------------------+------+
> > > | more headroom | user-defined meta | hw-meta (potentially fixed skb format) | data |
> > > +---------------+-------------------+----------------------------------------+------+
> > >                  ^                                                            ^
> > >              data_meta                                                      data
> > > 
> > > You obviously still have a problem of communicating the layout if you
> > > have some redirects in between, but you, in theory still have this
> > > problem with user-defined metadata anyway (unless I'm missing
> > > something).
> > > 
> 
> Hmm, I think you are missing something... As far as I'm concerned we are
> discussing placing the KV data after the xdp_frame, and not in the XDP
> data_meta area (as your drawing suggests).  The xdp_frame is stored at
> the very top of the headroom.  Lorenzo's patchset is extending struct
> xdp_frame and now we are discussing to we can make a more flexible API
> for extending this. I understand that Toke confirmed this here [3].  Let
> me know if I missed something :-)
> 
>  [3] https://lore.kernel.org/all/874j62u1lb.fsf@toke.dk/
>
> As part of designing this flexible API, we/Toke are trying hard not to
> tie this to a specific data area.  This is a good API design, keeping it
> flexible enough that we can move things around should the need arise.
> 
> I don't think it is viable to store this KV data in XDP data_meta area,
> because existing BPF-prog's already have direct memory (write) access
> and can change size of area, which creates too much headache with
> (existing) BPF-progs creating unintentional breakage for the KV store,
> which would then need extensive checks to handle random corruptions
> (slowing down KV-store code).

Yes, I'm definitely missing the bigger picture. If we want to have a global
metadata registry in the kernel, why can't it be built on top of the existing
area? Have some control api to define the layout and some new api to attach
the layout id to the xdp_frame. And one of those layouts might be
the xdp->skb one (although, for performance sake, still makes more sense
to special case xdp->skb one rather than asking the kernel to parse the kv
layout definition).

But I'm happy to wait for the v2 and re-read the cover letter :-)
