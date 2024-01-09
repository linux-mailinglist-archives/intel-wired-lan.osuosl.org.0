Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5505782877D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jan 2024 14:59:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B846841BBF;
	Tue,  9 Jan 2024 13:59:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B846841BBF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704808776;
	bh=1zbwLQvCGi9ayqIqzz1ygZ1oEKO7pDe3S64K7yitgQ0=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=znayuZlynpKdDdrA46jtKXSQgwGy6B7cNvc589Xk+ovTBxechY+0Lh02QwHUsNkDM
	 03sIexBzW8cNN0m7rjzKay3Fr0eTQG8vp2CvNwyIu6MbKhubS6DBoPc5PGKVly5hQz
	 WvHe9DhRiRuEN/U7QAO94w5jIm59cksRc82GQMy9zXGVer41x5wOVByO/P93f6Dv2y
	 FKVtjI2+evVjvUtyXkLsUoaibiOWnBIp+dmg8kwL9NYzyq8Qg7LPzlU/yxK5RcbLp2
	 kxO3KgGUA5LM9C+4cP35CZmQe2IqgLWRQ+lf/4S1r+5FnxnEH+3YMPD1GiTK/0rC/v
	 YSMolOlqXfMLg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZOBJChuCF3nT; Tue,  9 Jan 2024 13:59:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F6764088B;
	Tue,  9 Jan 2024 13:59:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F6764088B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 01CB11BF23B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jan 2024 13:59:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D0AE141BBF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jan 2024 13:59:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D0AE141BBF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n4h14R7lkSSA for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Jan 2024 13:59:29 +0000 (UTC)
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com
 [IPv6:2607:f8b0:4864:20::732])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 65A814091C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jan 2024 13:59:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65A814091C
Received: by mail-qk1-x732.google.com with SMTP id
 af79cd13be357-78104f6f692so241039285a.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 09 Jan 2024 05:59:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704808768; x=1705413568;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=1zbwLQvCGi9ayqIqzz1ygZ1oEKO7pDe3S64K7yitgQ0=;
 b=M1Uutvl5A8Qf7lMZDFbRZP+8I8dKViYv4GxWmxpE+NXc6YyHn1SuzbihJN29RGLDwR
 350hnRhxRJr2udjYduOafWu6AonZlpGEf/Tph4PnYeClkHCZBEKQ+7Vh014FfITVVzO2
 z1csC2ck4s/UzWv68sepwN6/eLMUFUDkGRbSNZMtO1O5WYGKuGTGtjafycJ8/8zuz2hH
 GHfTTsJYFU3RhkqyfTG7lGs6iQzgbTDeMDZP730oT8EkBe2tO5+nBhlpjwZ9sJq81jqL
 +CTG5NtbfWUddScWERym4IcXMW57EgrigCFPrI8NAn5oOmGCGT7YLZ7VBgqNR/oT7gU5
 oG6w==
X-Gm-Message-State: AOJu0YxpLd6Tl0p6V5IpaYQkUe/3qbAP1MiTeCdaR2YNKU+WzpgtRJjd
 8KerPHTESTB041IDXNpe5Pc=
X-Google-Smtp-Source: AGHT+IEp3BCu3ZUnezV9NlJAZ4Av/aGNhE95t0mHb+RdY60yS9YRLqg9GZv6zhC84yBE+s+uuyLI4Q==
X-Received: by 2002:a37:c20d:0:b0:781:21c6:83a6 with SMTP id
 i13-20020a37c20d000000b0078121c683a6mr1019863qkm.12.1704808767992; 
 Tue, 09 Jan 2024 05:59:27 -0800 (PST)
Received: from localhost (48.230.85.34.bc.googleusercontent.com.
 [34.85.230.48]) by smtp.gmail.com with ESMTPSA id
 b2-20020a05620a118200b0076db5b792basm806838qkk.75.2024.01.09.05.59.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jan 2024 05:59:27 -0800 (PST)
Date: Tue, 09 Jan 2024 08:59:27 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Message-ID: <659d513f5c0f6_161283294f5@willemb.c.googlers.com.notmuch>
In-Reply-To: <c4afc32c-e9c7-47de-9bc4-243df95644a3@intel.com>
References: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
 <20231223025554.2316836-6-aleksander.lobakin@intel.com>
 <658c4328425f7_a33e629412@willemb.c.googlers.com.notmuch>
 <c4afc32c-e9c7-47de-9bc4-243df95644a3@intel.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1704808768; x=1705413568; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=1zbwLQvCGi9ayqIqzz1ygZ1oEKO7pDe3S64K7yitgQ0=;
 b=Ptbl8lKdgRQ5ufWQl0JXf+XfvRX2CNCrWwAHV7IuxykpFthLLsqALte5oYjGmFzZHr
 hSwPoygWVTTss8LcMH6c7pol7Ma/RkK8B7e34rhMuUnkst4hF7gtpNp+l4AUBgiVXKuc
 w2fluq4Ciwomg6Qr6B9qKzAUaE1ovh52wRD6necNjEls4Ec+Gf09GMXNoZYNhBzCb3ik
 X2q81dGBMtjlXYyiLp/zT1TFltltM3Z/fZHzz/WbSarpT0LdSDc7zLdCIqXD1dontqIz
 idFE5HCjxNSNmgAywGEyl6kJHAfbPNP8P5uK2yqRchlLmAbPW8rt+HNn0RtM5wSwHkSF
 KY3g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Ptbl8lKd
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next 05/34] idpf: convert
 header split mode to libie + napi_build_skb()
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
> Date: Wed, 27 Dec 2023 10:30:48 -0500
> 
> > Alexander Lobakin wrote:
> >> Currently, idpf uses the following model for the header buffers:
> >>
> >> * buffers are allocated via dma_alloc_coherent();
> >> * when receiving, napi_alloc_skb() is called and then the header is
> >>   copied to the newly allocated linear part.
> >>
> >> This is far from optimal as DMA coherent zone is slow on many systems
> >> and memcpy() neutralizes the idea and benefits of the header split.
> > 
> > Do you have data showing this?
> 
> Showing slow coherent DMA or memcpy()?
> Try MIPS for the first one.
> For the second -- try comparing performance on ice with the "legacy-rx"
> private flag disabled and enabled.
> 
> > 
> > The assumption for the current model is that the headers will be
> > touched shortly after, so the copy just primes the cache.
> 
> They won't be touched in many cases. E.g. XDP_DROP.
> Or headers can be long. memcpy(32) != memcpy(128).
> The current model allocates a new skb with a linear part, which is a
> real memory allocation. napi_build_skb() doesn't allocate anything
> except struct sk_buff, which is usually available in the NAPI percpu cache.
> If build_skb() wasn't more effective, it wouldn't be introduced.
> The current model just assumes default socket traffic with ~40-byte
> headers and no XDP etc.
> 
> > 
> > The single coherently allocated region for all headers reduces
> > IOTLB pressure.
> 
> page_pool pages are mapped once at allocation.
> 
> > 
> > It is possible that the alternative model is faster. But that is not
> > trivially obvious.
> > 
> > I think patches like this can stand on their own. Probably best to
> > leave them out of the dependency series to enable XDP and AF_XDP.
> 
> You can't do XDP on DMA coherent zone. To do this memcpy(), you need
> allocate a new skb with a linear part, which is usually done after XDP,
> otherwise it's too much overhead and little-to-no benefits comparing to
> generic skb XDP.
> The current idpf code is just not compatible with the XDP code in this
> series, it's pointless to do double work.
> 
> Disabling header split when XDP is enabled (alternative option) means
> disabling TCP zerocopy and worse performance in general, I don't
> consider this.

My concern is if optimizations for XDP might degrade the TCP/IP common
path. XDP_DROP and all of XDP even is a niche feature by comparison.

The current driver behavior was not the first for IDPF, but arrived
at based on extensive performance debugging. An earlier iteration used
separate header buffers. Switching to a single coherent allocated
buffer region significantly increased throughput / narrowed the gap
between header-split and non-header-split mode.

I follow your argument and the heuristics are reasonable. My request
is only that this decision is based on real data for this driver and
modern platforms. We cannot regress TCP/IP hot path performance.



