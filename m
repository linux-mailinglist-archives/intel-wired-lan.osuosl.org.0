Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE30B98E165
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Oct 2024 19:02:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9A1BA4105D;
	Wed,  2 Oct 2024 17:02:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D9ARwVN-zrfG; Wed,  2 Oct 2024 17:02:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D72B41054
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727888557;
	bh=j3CAetgPIchZCXGcR59D8f6NwNxq3FYMeL7IhO3SN+4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Vll/B1oX8iioGbbO1yQV2w39St2WSkX4nw0WEKPQOE4+DaYfpuDzIDPn5q1wBT3E7
	 fY5TChnhTDHnfxOSZDFUxtYZoq4P6TP0tgHBnBmfIvgiluV9lzI4jWxzCBRtg0z3z2
	 NEGZ7cqVfRtZ4SvNnENoMPT3EpYzyfXxNvdxoVSerycfUUC9GX9/bOI9b03fkYe3Vn
	 Pfwzqn1ZHb8ozEAD9OqzjsOCs7e1fbhfs63vOM8bUKRLLwtqs4lX3z9TtKXg1wUxUm
	 b+23GnFGxSogSEFszLPZTVV3JX65ZI/EAvWDGqCaRnrPZW83PFWUszrrqR5cWDAf5a
	 ykabYKUrLY5EA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7D72B41054;
	Wed,  2 Oct 2024 17:02:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 824591BF422
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 17:02:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6F1D1401F7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 17:02:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q2iKj0Qx5_3c for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Oct 2024 17:02:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::431; helo=mail-pf1-x431.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4E303401B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4E303401B8
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com
 [IPv6:2607:f8b0:4864:20::431])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4E303401B8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 17:02:33 +0000 (UTC)
Received: by mail-pf1-x431.google.com with SMTP id
 d2e1a72fcca58-717934728adso60771b3a.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 02 Oct 2024 10:02:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727888553; x=1728493353;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=j3CAetgPIchZCXGcR59D8f6NwNxq3FYMeL7IhO3SN+4=;
 b=uIMcFS1EGa9hHrktx0ZLPGxh+Ko9xZOiFtMGqi6nHnn+aLEMZO54FYq9ZVLU9R32o4
 0WvTGS+mOKPvew3EnJA7rPyYu/7yxK+gDyntYwHN+5tq7L9iyngVDOwWWAF3UBtLHfCu
 ml0AnTuhekwkiaJZFG2cpQexRZZYf8PxH2kc+SYp4pXsIvMjxuLaCARiWpKStZVgTRa2
 1bQpdK8TqbHYj0ZP6NTJTWD44UrW+k3xuz3UPV72my9O9TnL74CvhZCZdsvdijI/bLCA
 0X5UBeg0+xuA/ByVGXlEk1mlWf472+vfbVjcPg4W8LG/jDRJQSGE93OxP4anlnGR4tMn
 ZGxQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVDwWfiyMz+wWv1IEso1DxGHYD21/2OiCi1py8VLUYxTW+wip2QJBrZYDWfSJQO2j4y6tLNCplqR1JZ7t/sZ4k=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx5pJQlMordueEuuCmSLNlnFp9tEhY9HttYlj6wOugspMMHpzeF
 TxB2Ydv+jhgMLZ31bJfAkY3j4w9IhMP3jVLRicU3McN5UYrIuHI=
X-Google-Smtp-Source: AGHT+IGp5S9qADB+5Pu5rzmzU8tU0hkVADw7MBH03DAjOoup+W+fr8dADId0yHouk9LY1IerDa/fzA==
X-Received: by 2002:a05:6a00:807:b0:705:a13b:e740 with SMTP id
 d2e1a72fcca58-71dc5d6a157mr5638461b3a.19.1727888552645; 
 Wed, 02 Oct 2024 10:02:32 -0700 (PDT)
Received: from localhost ([2601:646:9e00:f56e:123b:cea3:439a:b3e3])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-71b26498b51sm10383673b3a.14.2024.10.02.10.02.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2024 10:02:32 -0700 (PDT)
Date: Wed, 2 Oct 2024 10:02:31 -0700
From: Stanislav Fomichev <stfomichev@gmail.com>
To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Message-ID: <Zv18pxsiTGTZSTyO@mini-arch>
References: <87wmiysi37.fsf@toke.dk> <D4GBY7CHJNJ6.3O18I5W1FTPKR@bobby>
 <87ldzds8bp.fsf@toke.dk> <D4H5CAN4O95E.3KF8LAH75FYD4@bobby>
 <ZvbKDT-2xqx2unrx@lore-rh-laptop> <871q11s91e.fsf@toke.dk>
 <ZvqQOpqnK9hBmXNn@lore-desk> <D4KJ7DUXJQC5.2UFST9L3CUOH7@bobby>
 <ZvwNQqN4gez1Ksfn@lore-desk> <87zfnnq2hs.fsf@toke.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87zfnnq2hs.fsf@toke.dk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1727888553; x=1728493353; darn=lists.osuosl.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=j3CAetgPIchZCXGcR59D8f6NwNxq3FYMeL7IhO3SN+4=;
 b=ku6RoYYNGHX0ekx9eQH8ALiEGyTH5bx9WQw58cNWONU3e9nJ2PNJM2yGheyjpI51zs
 9tpx/9q0ZACOgv4fe44N1giiMaaoSd3RxrOkId3XHP6CUV7b582/5/5Sh9V6jh/Y3J4g
 fFcd3bsuEckp0BEEXSD7BILyHKXU+l7SgqUBJnQYsef7CKvsyvilhfdzTUDRY3gJKe2d
 FZvsS2+RWi4n2PmQ5LRT2P2bSjwZv2yY68O+0AAU+6BFMpUFgx3CfyKkKZtGjl09OjAO
 BeiYK72mwJVrxpb5v+1srZf8uaHGPMzFfxTbheZO4Q2l5Nc0GOoQguGghfRoiseQDMVb
 hpsQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=ku6RoYYN
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

On 10/01, Toke Høiland-Jørgensen wrote:
> Lorenzo Bianconi <lorenzo@kernel.org> writes:
> 
> >> On Mon Sep 30, 2024 at 1:49 PM CEST, Lorenzo Bianconi wrote:
> >> > > Lorenzo Bianconi <lorenzo@kernel.org> writes:
> >> > > 
> >> > > >> > We could combine such a registration API with your header format, so
> >> > > >> > that the registration just becomes a way of allocating one of the keys
> >> > > >> > from 0-63 (and the registry just becomes a global copy of the header).
> >> > > >> > This would basically amount to moving the "service config file" into the
> >> > > >> > kernel, since that seems to be the only common denominator we can rely
> >> > > >> > on between BPF applications (as all attempts to write a common daemon
> >> > > >> > for BPF management have shown).
> >> > > >> 
> >> > > >> That sounds reasonable. And I guess we'd have set() check the global
> >> > > >> registry to enforce that the key has been registered beforehand?
> >> > > >> 
> >> > > >> >
> >> > > >> > -Toke
> >> > > >> 
> >> > > >> Thanks for all the feedback!
> >> > > >
> >> > > > I like this 'fast' KV approach but I guess we should really evaluate its
> >> > > > impact on performances (especially for xdp) since, based on the kfunc calls
> >> > > > order in the ebpf program, we can have one or multiple memmove/memcpy for
> >> > > > each packet, right?
> >> > > 
> >> > > Yes, with Arthur's scheme, performance will be ordering dependent. Using
> >> > > a global registry for offsets would sidestep this, but have the
> >> > > synchronisation issues we discussed up-thread. So on balance, I think
> >> > > the memmove() suggestion will probably lead to the least pain.
> >> > > 
> >> > > For the HW metadata we could sidestep this by always having a fixed
> >> > > struct for it (but using the same set/get() API with reserved keys). The
> >> > > only drawback of doing that is that we statically reserve a bit of
> >> > > space, but I'm not sure that is such a big issue in practice (at least
> >> > > not until this becomes to popular that the space starts to be contended;
> >> > > but surely 256 bytes ought to be enough for everybody, right? :)).
> >> >
> >> > I am fine with the proposed approach, but I think we need to verify what is the
> >> > impact on performances (in the worst case??)
> >> 
> >> If drivers are responsible for populating the hardware metadata before
> >> XDP, we could make sure drivers set the fields in order to avoid any
> >> memove() (and maybe even provide a helper to ensure this?).
> >
> > nope, since the current APIs introduced by Stanislav are consuming NIC
> > metadata in kfuncs (mainly for af_xdp) and, according to my understanding,
> > we want to add a kfunc to store the info for each NIC metadata (e.g rx-hash,
> > timestamping, ..) into the packet (this is what Toke is proposing, right?).
> > In this case kfunc calling order makes a difference.
> > We can think even to add single kfunc to store all the info for all the NIC
> > metadata (maybe via a helping struct) but it seems not scalable to me and we
> > are losing kfunc versatility.
> 
> Yes, I agree we should have separate kfuncs for each metadata field.
> Which means it makes a lot of sense to just use the same setter API that
> we use for the user-registered metadata fields, but using reserved keys.
> So something like:
> 
> #define BPF_METADATA_HW_HASH      BIT(60)
> #define BPF_METADATA_HW_TIMESTAMP BIT(61)
> #define BPF_METADATA_HW_VLAN      BIT(62)
> #define BPF_METADATA_RESERVED (0xffff << 48)
> 
> bpf_packet_metadata_set(pkt, BPF_METADATA_HW_HASH, hash_value);
> 
> 
> As for the internal representation, we can just have the kfunc do
> something like:
> 
> int bpf_packet_metadata_set(field_id, value) {
>   switch(field_id) {
>     case BPF_METADATA_HW_HASH:
>       pkt->xdp_hw_meta.hash = value;
>       break;
>     [...]
>     default:
>       /* do the key packing thing */
>   }
> }
> 
> 
> that way the order of setting the HW fields doesn't matter, only the
> user-defined metadata.

Can you expand on why we need the flexibility of picking the metadata fields
here? Presumably we are talking about the use-cases where the XDP program
is doing redirect/pass and it doesn't really know who's the final
consumer is (might be another xdp program or might be the xdp->skb
kernel case), so the only sensible option here seems to be store everything?
