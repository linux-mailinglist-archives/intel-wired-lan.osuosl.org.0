Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E9D987CA8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Sep 2024 03:43:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5A58C844CC;
	Fri, 27 Sep 2024 01:43:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LDhZfWDtizwx; Fri, 27 Sep 2024 01:43:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7071F844D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727401394;
	bh=q653sQOlcSyRs9hPuoG+zXvugHIxRtEH110Wy2TqD8I=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5aqMTk8Wu3LS6MHhh7jcZlEnDx68gqcV57emPy2zrRE9dH8c/JTPPlWsjHhm7N35G
	 S1vJTxjs2ToZGZuerib4Fhd624wNBJBWGSIUfMyd/ZH7Wbc62/izKgoHgHyy4XI1OC
	 6bw0xSLzlIRPYXC6sR6SttQpoSfcFqRtsE7SFTvDQodfdvDHtM+88CMRrFv0HJ3oGM
	 zq0pqAj51mzQx7wVX5vqyUe3b8U52tSMBBRysUk01vMAHkFYhH7uIoCAsXenidQUsc
	 hH9AUVVRdRufMtoVB7Z630svSz6lIhSMEboSR34kJz1PdfgzJN5/n3wJm5ol/c8ODi
	 lJ5QfMJ9yg/Yw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7071F844D9;
	Fri, 27 Sep 2024 01:43:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 648101BF39F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 01:43:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 520A041E1E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 01:43:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hqwW7jpAZMtE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Sep 2024 01:43:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::530; helo=mail-pg1-x530.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3B66741A19
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B66741A19
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com
 [IPv6:2607:f8b0:4864:20::530])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3B66741A19
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 01:43:11 +0000 (UTC)
Received: by mail-pg1-x530.google.com with SMTP id
 41be03b00d2f7-7db90a28cf6so1933988a12.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2024 18:43:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727401390; x=1728006190;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=q653sQOlcSyRs9hPuoG+zXvugHIxRtEH110Wy2TqD8I=;
 b=XniMsq2/688HYEoN0HFxa4vMdDczvR93zZzuigaVk6vW6+SH0tmksWmLRWd9hCTdZK
 8CGYUvvioJ+62ZZqylTV/rwkrEvs0qxco67prcw32yDrl1bCqc2HLeErBtuj7j33/Ooh
 Nrss8h8mf+v3C9/aOBkzYi1L/+Rkm07cFBXx0n/h8CHhmjCSzHN3JGbKEihlLxsx9FdP
 ysnyFnoiGa07venYXZYmv1VY/pV+9VulCLDEEmNF03wlFvXQfRuv7v+u4R6tsxL5GbQJ
 EpQG79Sy1RcxZSN+5Whzs3JO+g2yYacUdeuYe0/UWNdev94kYxJIfzar0DfEaxCwDeFh
 MK8w==
X-Forwarded-Encrypted: i=1;
 AJvYcCXCb2oZhxLuWnItHb1AT9RRevLaKkD0PKjwiCdi/riOTBeOG8AbhkdKKXbkrFSTrnGMQZ/WzMMem+gXSNTkPXE=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy0c1VTiclSpeagy1Zdo7bn0OYs7fkbpurtaUvu7OpyoGCMOFyZ
 XqRXZI/0QtOk6K2lHB81ZdVWXMzODQOKazK+KYDibH0K6bPKDgA=
X-Google-Smtp-Source: AGHT+IGk0A4RXFQ/svtxe8Nnc5iMxuLjkwJyk+b8Okdd8PJts4jl3XgDUgU/jpUwuW/i3drWNQgrpg==
X-Received: by 2002:a05:6a21:33a6:b0:1cf:3f39:c469 with SMTP id
 adf61e73a8af0-1d4ebe2733bmr8274266637.2.1727401390353; 
 Thu, 26 Sep 2024 18:43:10 -0700 (PDT)
Received: from localhost ([2601:646:9e00:f56e:123b:cea3:439a:b3e3])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-7e6db612f6fsm542081a12.86.2024.09.26.18.43.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2024 18:43:09 -0700 (PDT)
Date: Thu, 26 Sep 2024 18:43:09 -0700
From: Stanislav Fomichev <stfomichev@gmail.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Message-ID: <ZvYNranHf9X5ZjK-@mini-arch>
References: <cover.1726935917.git.lorenzo@kernel.org>
 <1f53cd74-6c1e-4a1c-838b-4acc8c5e22c1@intel.com>
 <09657be6-b5e2-4b5a-96b6-d34174aadd0a@kernel.org>
 <Zu_gvkXe4RYjJXtq@lore-desk> <87ldzkndqk.fsf@toke.dk>
 <ZvA6hIl6XWJ4UEJW@lore-desk> <874j62u1lb.fsf@toke.dk>
 <ZvV2WLUa1KB8qu3L@lore-rh-laptop>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ZvV2WLUa1KB8qu3L@lore-rh-laptop>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1727401390; x=1728006190; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=q653sQOlcSyRs9hPuoG+zXvugHIxRtEH110Wy2TqD8I=;
 b=YFfAwGRPmrnQptJ7+ce9+i5o/K46MpU+u4DkPS0D0u6Q2RfW632f4ycrlwmcprqs8R
 OR4/wXDdtuuozb6Ua8C2Yh46zIlxzpqEIX9NvurWPGZTtG2AGYmtoLrAPBrqCD/6fTk0
 xYIXKJ8vSAL6X0xppsfy/JZFhGK9XFnVP0ApXTOwwvz4iNsX98gGwNBB+WSRmuqHN78w
 eS6D8cCZ3Cjur009qiMLM0l9WXihzNblN3Eh6f9Rm7oevkn1exdxqXSsqVxwnKXPvDhG
 Ys2CQuzuKnTLCMhcShSqpIcOywKFpBrKnBHsf/O80DQFgfsZ27CK/5G3mYCqFkYZliYj
 yYTQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=YFfAwGRP
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
 alexandre.torgue@foss.st.com, Arthur Fabre <afabre@cloudflare.com>,
 netdev@vger.kernel.org,
 Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 tariqt@nvidia.com, Alexander Lobakin <aleksander.lobakin@intel.com>,
 mcoquelin.stm32@gmail.com, bpf@vger.kernel.org, saeedm@nvidia.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 09/26, Lorenzo Bianconi wrote:
> > Lorenzo Bianconi <lorenzo.bianconi@redhat.com> writes:
> > 
> > >> I'm hinting at some complications here (with the EFAULT return) that
> > >> needs to be resolved: there is no guarantee that a given packet will be
> > >> in sync with the current status of the registered metadata, so we need
> > >> explicit checks for this. If metadata entries are de-registered again
> > >> this also means dealing with holes and/or reshuffling the metadata
> > >> layout to reuse the released space (incidentally, this is the one place
> > >> where a TLV format would have advantages).
> > >
> > > I like this approach but it seems to me more suitable for 'sw' metadata
> > > (this is main Arthur and Jakub use case iiuc) where the userspace would
> > > enable/disable these functionalities system-wide.
> > > Regarding device hw metadata (e.g. checksum offload) I can see some issues
> > > since on a system we can have multiple NICs with different capabilities.
> > > If we consider current codebase, stmmac driver supports only rx timestamp,
> > > while mlx5 supports all of them. In a theoretical system with these two
> > > NICs, since pkt_metadata_registry is global system-wide, we will end-up
> > > with quite a lot of holes for the stmmac, right? (I am not sure if this
> > > case is relevant or not). In other words, we will end-up with a fixed
> > > struct for device rx hw metadata (like xdp_rx_meta). So I am wondering
> > > if we really need all this complexity for xdp rx hw metadata?
> > 
> > Well, the "holes" will be there anyway (in your static struct approach).
> > They would just correspond to parts of the "struct xdp_rx_meta" being
> > unset.
> 
> yes, what I wanted to say is I have the feeling we will end up 90% of the
> times in the same fields architecture and the cases where we can save some
> space seem very limited. Anyway, I am fine to discuss about a common
> architecture.
> 
> > 
> > What the "userspace can turn off the fields system wide" would
> > accomplish is to *avoid* the holes if you know that you will never need
> > them. E.g., say a system administrator know that they have no networks
> > that use (offloaded) VLANs. They could then disable the vlan offload
> > field system-wide, and thus reclaim the four bytes taken up by the
> > "vlan" member of struct xdp_rx_meta, freeing that up for use by
> > application metadata.
> 
> Even if I like the idea of having a common approach for this kernel feature,
> hw metadata seems to me quite a corner case with respect of 'user-defined
> metadata', since:
> - I do not think it is a common scenario to disable hw offload capabilities
>   (e.g checksum offload in production)
> - I guess it is not just enough to disable them via bpf, but the user/sysadmin
>   will need even to configure the NIC via ethtool (so a 2-steps process).
> 
> I think we should pay attention to not overcomplicate something that is 99%
> enabled and just need to be fast. E.g I can see an issue of putting the hw rx
> metadata in metadata field since metadata grows backward and we will probably
> end up putting them in a different cacheline with respect to xdp_frame
> (xdp_headroom is usually 256B).
> 
> > 
> > However, it may well be that the complexity of allowing fields to be
> > turned off is not worth the gains. At least as long as there are only
> > the couple of HW metadata fields that we have currently. Having the
> > flexibility to change our minds later would be good, though, which is
> > mostly a matter of making the API exposed to BPF and/or userspace
> > flexible enough to allow us to move things around in memory in the
> > future. Which was basically my thought with the API I sketched out in
> > the previous email. I.e., you could go:
> > 
> > ret = bpf_get_packet_metadata_field(pkt, METADATA_ID_HW_HASH,
> >                                     &my_hash_vlaue, sizeof(u32))
> 
> yes, my plan is to add dedicated bpf kfuncs to store hw metadata in
> xdp_frame/xdp_buff
> 
> > 
> > 
> > ...and the METADATA_ID_HW_HASH would be a constant defined by the
> > kernel, for which the bpf_get_packet_metadata_field() kfunc just has a
> > hardcoded lookup into struct xdp_rx_meta. And then, if we decide to move
> > the field in the future, we just change the kfunc implementation, with
> > no impact to the BPF programs calling it.
> > 
> 
> maybe we can use what we Stanislav have already added (maybe removing xdp
> prefix):
> 
> enum xdp_rx_metadata {
> 	XDP_METADATA_KFUNC_RX_TIMESTAMP,
> 	XDP_METADATA_KFUNC_RX_HASH,
> 	XDP_METADATA_KFUNC_RX_VLAN_TAG
> };

I think it was one of the ideas floating around back then for the
xdp->skb case (including redirection): have an extra kfunc that the bpf
program can call and make this kfunc store the metadata (in the metadata area)
in some fixed format. Then the kernel can consume it.
