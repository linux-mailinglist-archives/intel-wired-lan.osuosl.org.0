Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A63F81EFC5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Dec 2023 16:30:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E905660FCE;
	Wed, 27 Dec 2023 15:30:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E905660FCE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703691058;
	bh=zve6FoVIDYfJ1vycizlXMGVD5IchFezMONqqxtJKrpo=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=J3pwazsP9Wohzhq9KSRQ1+ymv6ZJSbmu5cAh28SYqnu8mn92+Pwci9cJxrwSp+BEA
	 FZzmrD+5m109JXCBDR0ME/6p8lI4mN4+RDt/JcNrJpNaKacYkszdq8zjsZGrxDsJiH
	 Z/H6kmE9yJKbuXHHWvVj3Jcm4+qoq/MjeD/zVjx1b8oEM+XKIhJiX+8Je39keVFqZh
	 RZadhMZfC+dIaA7uvFcU0XJxKPvg0GZJcoPtgMiN1nW3UB1LYJtSbA77iCN2AR6DPs
	 ycpmSWzcT9bcginYlaNfKu3CWoKtL228l7mbgXezi44zcIibh3JHOw+o/VYLrjlRfU
	 Rk6nypoKAp8yg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gujutilKl6LT; Wed, 27 Dec 2023 15:30:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BBAE860FCC;
	Wed, 27 Dec 2023 15:30:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BBAE860FCC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 460821BF5A3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 15:30:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1C9F281313
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 15:30:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C9F281313
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fy2QZKIY8MVT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Dec 2023 15:30:50 +0000 (UTC)
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com
 [IPv6:2607:f8b0:4864:20::231])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 556238130E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 15:30:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 556238130E
Received: by mail-oi1-x231.google.com with SMTP id
 5614622812f47-3bb968c02baso2304314b6e.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 07:30:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1703691049; x=1704295849;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=zve6FoVIDYfJ1vycizlXMGVD5IchFezMONqqxtJKrpo=;
 b=Hgzrl4lgd9KnuOytmHG4n/oM5/AVkNGHq8eKhVjUb3NLKVtDUUVy49Cy66KmaZbVvO
 0OvfmgSXo/++L9HFdzTAqGOTsLUxlzpDTVmK2dicnb2AD08s3jN6wFX6cASW9gl68THM
 kcW+sRgWBDbRiFvGP0ybHx87WcfM79wehV7Xv6l9S6AQ7ZDm/LC/gLgl/DNCYy/MsVbo
 32KzdskJ3SztbizPlmkro1a9lBNSOaz4KwX+A9QE13pt9MHfZxMNPWuvgjxWrem7Lcxa
 AUXqkhAxBgg9x+fdG2DTUikmWzi5sDObNqBIMzkGPWVS2H0GtDQo2IgYbt1Ds58ZpeRo
 msyg==
X-Gm-Message-State: AOJu0YxXbTqfv5mqMPzjLqT8HsWFiFwuNH6oBlr78LqNvduVNVnfGKUY
 dgx9eclJurF8LM1JdbZpUho=
X-Google-Smtp-Source: AGHT+IHIWnffX0LVocuElj3J/Vwwj56wUbX71nSv9vRLzH4pzm8aH6WWl5wGu+eCdjfRPowBy8p+ug==
X-Received: by 2002:a05:6808:ec2:b0:3b8:b72c:cbaf with SMTP id
 q2-20020a0568080ec200b003b8b72ccbafmr8365592oiv.101.1703691049182; 
 Wed, 27 Dec 2023 07:30:49 -0800 (PST)
Received: from localhost (48.230.85.34.bc.googleusercontent.com.
 [34.85.230.48]) by smtp.gmail.com with ESMTPSA id
 i5-20020ad44105000000b0067f24a93556sm5584825qvp.52.2023.12.27.07.30.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Dec 2023 07:30:48 -0800 (PST)
Date: Wed, 27 Dec 2023 10:30:48 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>
Message-ID: <658c4328425f7_a33e629412@willemb.c.googlers.com.notmuch>
In-Reply-To: <20231223025554.2316836-6-aleksander.lobakin@intel.com>
References: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
 <20231223025554.2316836-6-aleksander.lobakin@intel.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1703691049; x=1704295849; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zve6FoVIDYfJ1vycizlXMGVD5IchFezMONqqxtJKrpo=;
 b=ek/AETNqPCyI9dCMk+lrgXCJYkhERJ30kZ8DBvMZJFp9vhSr7XXuTSgGwRpYuUm9ag
 N0sUlhdFSOoZNscd7kkMwLRxU+JgAfRIxBgOqAOd6EBL0H+sCYrtwYpgfyUWLtoYlYY7
 mT0z3eZMPU0WeIv0AJAfW5pcLeef/M94TZ6OF8vHcXfvLJeyRahpwxOCXYsmkDJdBrTK
 w29Fj+CjdhdxpfYQT774PPxr2RGjUlhiQoXSoBQu1yMx2feI7wiQviUW56FAYGWvmgJN
 iz7p5VvOsv/YMz+3jbwSzFl77Uca3YxiP4Xg9Ipzj+HdTvIfeM8fl49G4PLVE5K9cc+q
 EQWw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=ek/AETNq
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Alexander Lobakin wrote:
> Currently, idpf uses the following model for the header buffers:
> 
> * buffers are allocated via dma_alloc_coherent();
> * when receiving, napi_alloc_skb() is called and then the header is
>   copied to the newly allocated linear part.
> 
> This is far from optimal as DMA coherent zone is slow on many systems
> and memcpy() neutralizes the idea and benefits of the header split.

Do you have data showing this?

The assumption for the current model is that the headers will be
touched shortly after, so the copy just primes the cache.

The single coherently allocated region for all headers reduces
IOTLB pressure.

It is possible that the alternative model is faster. But that is not
trivially obvious.

I think patches like this can stand on their own. Probably best to
leave them out of the dependency series to enable XDP and AF_XDP.

> Instead, use libie to create page_pools for the header buffers, allocate
> them dynamically and then build an skb via napi_build_skb() around them
> with no memory copy. With one exception...
> When you enable header split, you except you'll always have a separate
> header buffer, so that you could reserve headroom and tailroom only
> there and then use full buffers for the data. For example, this is how
> TCP zerocopy works -- you have to have the payload aligned to PAGE_SIZE.
> The current hardware running idpf does *not* guarantee that you'll
> always have headers placed separately. For example, on my setup, even
> ICMP packets are written as one piece to the data buffers. You can't
> build a valid skb around a data buffer in this case.
> To not complicate things and not lose TCP zerocopy etc., when such thing
> happens, use the empty header buffer and pull either full frame (if it's
> short) or the Ethernet header there and build an skb around it. GRO
> layer will pull more from the data buffer later. This W/A will hopefully
> be removed one day.
> 
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
