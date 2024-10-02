Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A4B98E644
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Oct 2024 00:49:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 802A54026B;
	Wed,  2 Oct 2024 22:49:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sHmsOGflDKru; Wed,  2 Oct 2024 22:49:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0C93D4029B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727909354;
	bh=UXDXvRFM94w5MqJowhi1d6zXnKyNcEoMXW98gFOO60M=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LckT1lcKHaXjH8Z52amcg98H1jDtHVvW2r8XQ7kWW0sWUFT9/lRsbvLX3fJG25ThN
	 WB0gnEuveptdNdFO7xcY4KgwndYvM28FEWtuDxlIWW83Vdwudysy1AS8ho30xMNpqI
	 mzH5CKdFlTpM0EbYImbGwJbHBJ7YWTAzlQQ30VFZlkTZJMPsWmf7qKrlDc9S/mB7/w
	 5rHlPpvTWhwcnoL9mNpzC/kpjtCW6d8BBXt3HgK9xsZzOHUROH9x5Sq+THkEARC9Es
	 AzxjRJml+8DZIUTgdBPH5p/+ewUZB2i+dkoeDYLU4xZi22QIEttBXfFpf7zJJk/vyq
	 EPulgLwT1Z31A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0C93D4029B;
	Wed,  2 Oct 2024 22:49:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 108141BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 22:49:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F1F15401D8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 22:49:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M8hgPQpyTIGv for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Oct 2024 22:49:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42f; helo=mail-pf1-x42f.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A9645400D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A9645400D7
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com
 [IPv6:2607:f8b0:4864:20::42f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A9645400D7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 22:49:10 +0000 (UTC)
Received: by mail-pf1-x42f.google.com with SMTP id
 d2e1a72fcca58-71b00a97734so346055b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 02 Oct 2024 15:49:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727909350; x=1728514150;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=UXDXvRFM94w5MqJowhi1d6zXnKyNcEoMXW98gFOO60M=;
 b=WhmBcxJAzBJut4nwuSaCMRmHkuQKrULkwSfXcNg4IZeRoPYaXHj5ELrcHySFp6ZVC9
 6roUgYknyXiQT87OKbx61v9OsI/hqV6/VDLBZN7dgekIYAsSH5W1VvLJk5H1T7LjDGTz
 Vj+yFKRY4ZRUiy70R5iluCGXupsngkeL2I+1+RPMEAJAnjGzVPqCCm6TAhxeDPFD2iQc
 K5BmD4d9agH8dpzse3OFGpl2a9tJ/ouf4B6Q3JxTAclfw3t17yPYGquzy9JKSe78g89f
 UcR9k5k5sGA0Fz2nryLLL99afo32cbX29Wts3/on/spvboSWG4/G2kePfHboE+pXDVI2
 xCSg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXVKoMVEcpvKdyhd0TkWhZeljHIYUSydR+qz96YTP9ZH6IWmARyn9fbb6dkRT0fVkEwlvmwMr4rqOCboF8lZc4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwRa2y5vEEPGQVA30WQWy3ct/bBruKoQQPdlL681KF4y8GkUkDI
 EbgZ1UIh1y+NsD5PiLJ9bsae6fHr78xZD/wH0cSR3RDDWV6IRbU=
X-Google-Smtp-Source: AGHT+IGqdAUUCQdaLu4NF4SkJSuSWlMoYFhXa+Il8GmNxRyqFcCKtXv5enFt8b6pCjXYAmmMTsruKw==
X-Received: by 2002:a05:6a20:c704:b0:1cf:2b8c:b5e0 with SMTP id
 adf61e73a8af0-1d5e2cb12famr6561148637.37.1727909349731; 
 Wed, 02 Oct 2024 15:49:09 -0700 (PDT)
Received: from localhost ([2601:646:9e00:f56e:123b:cea3:439a:b3e3])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-71b265249b7sm10741652b3a.148.2024.10.02.15.49.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2024 15:49:09 -0700 (PDT)
Date: Wed, 2 Oct 2024 15:49:08 -0700
From: Stanislav Fomichev <stfomichev@gmail.com>
To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Message-ID: <Zv3N5G8swr100EXm@mini-arch>
References: <87ldzds8bp.fsf@toke.dk> <D4H5CAN4O95E.3KF8LAH75FYD4@bobby>
 <ZvbKDT-2xqx2unrx@lore-rh-laptop> <871q11s91e.fsf@toke.dk>
 <ZvqQOpqnK9hBmXNn@lore-desk> <D4KJ7DUXJQC5.2UFST9L3CUOH7@bobby>
 <ZvwNQqN4gez1Ksfn@lore-desk> <87zfnnq2hs.fsf@toke.dk>
 <Zv18pxsiTGTZSTyO@mini-arch> <87ttdunydz.fsf@toke.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87ttdunydz.fsf@toke.dk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1727909350; x=1728514150; darn=lists.osuosl.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=UXDXvRFM94w5MqJowhi1d6zXnKyNcEoMXW98gFOO60M=;
 b=Fod0jf2LEeDCWv0qZaKsQ0p9O+Q3/Hj4D2pPhGKJKmStvP1a2TMigd4tjTk02F70rx
 5oSE8OHI/jUy57F75CbvXRGK8ri7MYeJfqZxM3Urg8Py6mFgHY4kzKc6g3QWq3xI4nem
 aNPeoGNVr0qFLwGlGMPUYGmromCSDqwcwt28OAdFHvCShkDc9YESE63jJSi0HFQwJO8c
 IBbFOYzmtyUUWgG4C8mfT6LP0gNfWe/DNqp/NWlJfQX7P5MhF5UNXfsukBE4mndN045X
 Vny7Z/Y4hPR7KpiSMnXvvgGRHbiRRnioSrFCixl98bMIXsDuiU0mqAkdQ9LNLQfcE3Vy
 NksQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Fod0jf2L
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

On 10/02, Toke Høiland-Jørgensen wrote:
> Stanislav Fomichev <stfomichev@gmail.com> writes:
> 
> > On 10/01, Toke Høiland-Jørgensen wrote:
> >> Lorenzo Bianconi <lorenzo@kernel.org> writes:
> >> 
> >> >> On Mon Sep 30, 2024 at 1:49 PM CEST, Lorenzo Bianconi wrote:
> >> >> > > Lorenzo Bianconi <lorenzo@kernel.org> writes:
> >> >> > > 
> >> >> > > >> > We could combine such a registration API with your header format, so
> >> >> > > >> > that the registration just becomes a way of allocating one of the keys
> >> >> > > >> > from 0-63 (and the registry just becomes a global copy of the header).
> >> >> > > >> > This would basically amount to moving the "service config file" into the
> >> >> > > >> > kernel, since that seems to be the only common denominator we can rely
> >> >> > > >> > on between BPF applications (as all attempts to write a common daemon
> >> >> > > >> > for BPF management have shown).
> >> >> > > >> 
> >> >> > > >> That sounds reasonable. And I guess we'd have set() check the global
> >> >> > > >> registry to enforce that the key has been registered beforehand?
> >> >> > > >> 
> >> >> > > >> >
> >> >> > > >> > -Toke
> >> >> > > >> 
> >> >> > > >> Thanks for all the feedback!
> >> >> > > >
> >> >> > > > I like this 'fast' KV approach but I guess we should really evaluate its
> >> >> > > > impact on performances (especially for xdp) since, based on the kfunc calls
> >> >> > > > order in the ebpf program, we can have one or multiple memmove/memcpy for
> >> >> > > > each packet, right?
> >> >> > > 
> >> >> > > Yes, with Arthur's scheme, performance will be ordering dependent. Using
> >> >> > > a global registry for offsets would sidestep this, but have the
> >> >> > > synchronisation issues we discussed up-thread. So on balance, I think
> >> >> > > the memmove() suggestion will probably lead to the least pain.
> >> >> > > 
> >> >> > > For the HW metadata we could sidestep this by always having a fixed
> >> >> > > struct for it (but using the same set/get() API with reserved keys). The
> >> >> > > only drawback of doing that is that we statically reserve a bit of
> >> >> > > space, but I'm not sure that is such a big issue in practice (at least
> >> >> > > not until this becomes to popular that the space starts to be contended;
> >> >> > > but surely 256 bytes ought to be enough for everybody, right? :)).
> >> >> >
> >> >> > I am fine with the proposed approach, but I think we need to verify what is the
> >> >> > impact on performances (in the worst case??)
> >> >> 
> >> >> If drivers are responsible for populating the hardware metadata before
> >> >> XDP, we could make sure drivers set the fields in order to avoid any
> >> >> memove() (and maybe even provide a helper to ensure this?).
> >> >
> >> > nope, since the current APIs introduced by Stanislav are consuming NIC
> >> > metadata in kfuncs (mainly for af_xdp) and, according to my understanding,
> >> > we want to add a kfunc to store the info for each NIC metadata (e.g rx-hash,
> >> > timestamping, ..) into the packet (this is what Toke is proposing, right?).
> >> > In this case kfunc calling order makes a difference.
> >> > We can think even to add single kfunc to store all the info for all the NIC
> >> > metadata (maybe via a helping struct) but it seems not scalable to me and we
> >> > are losing kfunc versatility.
> >> 
> >> Yes, I agree we should have separate kfuncs for each metadata field.
> >> Which means it makes a lot of sense to just use the same setter API that
> >> we use for the user-registered metadata fields, but using reserved keys.
> >> So something like:
> >> 
> >> #define BPF_METADATA_HW_HASH      BIT(60)
> >> #define BPF_METADATA_HW_TIMESTAMP BIT(61)
> >> #define BPF_METADATA_HW_VLAN      BIT(62)
> >> #define BPF_METADATA_RESERVED (0xffff << 48)
> >> 
> >> bpf_packet_metadata_set(pkt, BPF_METADATA_HW_HASH, hash_value);
> >> 
> >> 
> >> As for the internal representation, we can just have the kfunc do
> >> something like:
> >> 
> >> int bpf_packet_metadata_set(field_id, value) {
> >>   switch(field_id) {
> >>     case BPF_METADATA_HW_HASH:
> >>       pkt->xdp_hw_meta.hash = value;
> >>       break;
> >>     [...]
> >>     default:
> >>       /* do the key packing thing */
> >>   }
> >> }
> >> 
> >> 
> >> that way the order of setting the HW fields doesn't matter, only the
> >> user-defined metadata.
> >
> > Can you expand on why we need the flexibility of picking the metadata fields
> > here? Presumably we are talking about the use-cases where the XDP program
> > is doing redirect/pass and it doesn't really know who's the final
> > consumer is (might be another xdp program or might be the xdp->skb
> > kernel case), so the only sensible option here seems to be store everything?
> 
> For the same reason that we have separate kfuncs for each metadata field
> when getting it from the driver: XDP programs should have the
> flexibility to decide which pieces of metadata they need, and skip the
> overhead of stuff that is not needed.
> 
> For instance, say an XDP program knows that nothing in the system uses
> timestamps; in that case, it can skip both the getter and the setter
> call for timestamps.

But doesn't it put us in the same place? Where the first (native) xdp program
needs to know which metadata the final consumer wants. At this point
why not propagate metadata layout as well?

(or maybe I'm still missing what exact use-case we are trying to solve)

> I suppose we *could* support just a single call to set the skb meta,
> like:
> 
> bpf_set_skb_meta(struct xdp_md *pkt, struct xdp_hw_meta *data);
> 
> ...but in that case, we'd need to support some fields being unset
> anyway, and the program would have to populate the struct on the stack
> before performing the call. So it seems simpler to just have symmetry
> between the get (from HW) and set side? :)

Why not simply bpf_set_skb_meta(struct xdp_md *pkt) and let it store
the metadata somewhere in xdp_md directly? (also presumably by
reusing most of the existing kfuncs/xmo_xxx helpers)
