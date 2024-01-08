Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2D38274A9
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jan 2024 17:10:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 70C9481F10;
	Mon,  8 Jan 2024 16:10:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 70C9481F10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704730206;
	bh=9dhSewSpgkcJyN3c0+ItuRDu2rcQV9xAuNoLxs3FbQc=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5n51+EW/0xpnq8JEIQkNJsS5nCvFGG4cXg0ueKaIuTc22G8DIPESrlzDwLFPEiTFT
	 3/HrLkMHeNaa6FHsutc6jMCzUwveRhySVgGkm96AJvDhQb9gq2vzlwNr9h24J6kCVf
	 NW3l/G0tMdxr3Y2cYfPar20qcfw7WsQOiqTx/AUms5zzZAkvKdXUgHFJsl63cm69Vc
	 uprox4H6LuupCGEbreP+cwmxGN/ycpBaYkoLil7ZSqzDzwNs6ftvkrKs2mlar+L/7E
	 t2nkajpB9mtao0qahrGGEIbj9d8zQIXg3exoOSlWRztOEU1f32ZmDfDzFZN1NUwK6z
	 LZY1bJYTBJjRg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lA8VMTlaPd6j; Mon,  8 Jan 2024 16:10:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F60D81EB4;
	Mon,  8 Jan 2024 16:10:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F60D81EB4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 47EF81BF321
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jan 2024 16:10:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1F38B41898
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jan 2024 16:10:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F38B41898
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n2qfJR0JXCg2 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jan 2024 16:09:59 +0000 (UTC)
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com
 [IPv6:2607:f8b0:4864:20::f36])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4168F41829
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jan 2024 16:09:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4168F41829
Received: by mail-qv1-xf36.google.com with SMTP id
 6a1803df08f44-67f9f6caabcso18185036d6.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 08 Jan 2024 08:09:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704730198; x=1705334998;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=9dhSewSpgkcJyN3c0+ItuRDu2rcQV9xAuNoLxs3FbQc=;
 b=FUd55cKhyQWLgct7LcIu7IkJyXXLKqseBPiEKuYKNF7w8eQy3k8fEDq0xwfCj6CAKC
 E6aRyx6QamaXIVIba98mJGRp4Km9wGYmNf0TeoZO54lrR6CYIHrl7u32b7jXGdmkbhKQ
 q0llgkjbk8NKsdHoMG7+wBkFjqHPv1KJ1UmJ3S5nZV2AFMm4InTVEddVApZCLLwgPcXs
 93gCjSY1M0dRqJBLoTZsGYID5zJYyVknC6Cb7ZVBxzVakRUqIeBxLGpH2wWfsXV/gWeC
 wp3AgvTCJUQXeyBgb756wy3Fk/beXves52cQiU1iHVXekhtFdR+8bwVh78IcIYWrD4Uu
 m0Kw==
X-Gm-Message-State: AOJu0Yz/fs7RIWiAaiJV11454BkSUKGg0/O6Xskzo9X47MZG/w+xNEHV
 HLMzrAHXeoGPdznxa9Wh2ts=
X-Google-Smtp-Source: AGHT+IFKR91jU04CKBhbztCBLlqtyR1fBQRnsnwWFAyu8YvnPWRmtUUDj4FcqzL39Kh7XN9JLd5ulQ==
X-Received: by 2002:a05:6214:d62:b0:67f:a9dc:4cc9 with SMTP id
 2-20020a0562140d6200b0067fa9dc4cc9mr6000478qvs.30.1704730197994; 
 Mon, 08 Jan 2024 08:09:57 -0800 (PST)
Received: from localhost (48.230.85.34.bc.googleusercontent.com.
 [34.85.230.48]) by smtp.gmail.com with ESMTPSA id
 d6-20020a0cc686000000b00680b7496635sm81108qvj.42.2024.01.08.08.09.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jan 2024 08:09:57 -0800 (PST)
Date: Mon, 08 Jan 2024 11:09:57 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Message-ID: <659c1e5543102_32ba6829429@willemb.c.googlers.com.notmuch>
In-Reply-To: <49f86f3c-2476-4991-b01c-171a54258994@intel.com>
References: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
 <658b364d56c6e_5c2a929468@willemb.c.googlers.com.notmuch>
 <49f86f3c-2476-4991-b01c-171a54258994@intel.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1704730198; x=1705334998; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9dhSewSpgkcJyN3c0+ItuRDu2rcQV9xAuNoLxs3FbQc=;
 b=KvU/4Y+9LwCxUX/UKHRDYZUTt5vYLPzK1yL4o3Gr9PKAqrUM1HwJHgxsb1gh6+Adn3
 IRsI5k0pkxhm2i4kjmEnmWqSADo1E9GGOE4y4+eazK05rdVawMjHYyaYTfXsM0GzqB4O
 O/CvXvLHDCZRGlBQ3cw7d16tTa7P79mtIxMuGy72oZYtEBWywPzcJLBzMncpofJJ2JLJ
 Q0SWDgq/M5ol0adl15mz4SfiLnvlk4pgRiAsegwoQ64ICd7Rh8g7PhZS8awCopISOwfJ
 x0iovzS5pjzlNk0AphxpbzPxoPokvmnnfNYMZEvpOgS3McX/PGkIQH8X/8stBjmwgY4X
 isBw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=KvU/4Y+9
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next 00/34] Christmas 3-serie
 XDP for idpf (+generic stuff)
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Alexander Lobakin wrote:
> From: Willem De Bruijn <willemdebruijn.kernel@gmail.com>
> Date: Tue, 26 Dec 2023 15:23:41 -0500
> 
> > Alexander Lobakin wrote:
> >> I was highly asked to send this WIP before the holidays to trigger
> >> some discussions at least for the generic parts.
> >>
> >> This all depends on libie[0] and WB-on-ITR fix[1]. The RFC does not
> >> guarantee to work perfectly, but at least regular XDP seems to work
> >> for me...
> >>
> >> In fact, here are 3 separate series:
> >> * 01-08: convert idpf to libie and make it more sane;
> >> * 09-25: add XDP to idpf;
> >> * 26-34: add XSk to idpf.
> >>
> >> Most people may want to be interested only in the following generic
> >> changes:
> >> * 11: allow attaching already registered memory models to XDP RxQ info;
> >> * 12-13: generic helpers for adding a frag to &xdp_buff and converting
> >>   it to an skb;
> >> * 14: get rid of xdp_frame::mem.id, allow mixing pages from different
> >>   page_pools within one &xdp_buff/&xdp_frame;
> >> * 15: some Page Pool helper;
> >> * 18: it's for libie, but I wanted to talk about XDP_TX bulking;
> >> * 26: same as 13, but for converting XSK &xdp_buff to skb.
> >>
> >> The rest is up to you, driver-specific stuff is pretty boring sometimes.
> >>
> >> I'll be polishing and finishing this all starting January 3rd and then
> >> preparing and sending sane series, some early feedback never hurts tho.
> >>
> >> Merry Yule!
> >>
> >> [0] https://lore.kernel.org/netdev/20231213112835.2262651-1-aleksander.lobakin@intel.com
> >> [1] https://lore.kernel.org/netdev/20231215193721.425087-1-michal.kubiak@intel.com
> > 
> > This is great. Thanks for sharing the entire series.
> > 
> > Which SHA1 should we apply this to? I'm having a hard time applying
> > cleanly.
> > 
> > The libie v7 series applied cleanly on bc044ae9d64b. Which I chose
> > only based on the follow-on page pool patch.
> > 
> > But that base commit causes too many conflicts when applying this.
> > Patch 6 had a trivial one in idpf_rx_singleq_clean (`skb = rx_q->skb`).
> > But patch 14 has so many conflicts in page_pool.c, that I'm clearly
> > on the wrong track trying to fix up manually.
> 
> net-next was updated while I was preparing the series. I also did a
> couple changes in the basic libie code, but a new rev wasn't sent.
> Please just use my open GH[0].
> 
> [0] https://github.com/alobakin/linux/tree/idpf-libie

Even better, thanks. I'll use that to run my basic XSK tests.
