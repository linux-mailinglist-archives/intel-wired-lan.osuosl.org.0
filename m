Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8BABFD1A0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Oct 2025 18:18:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 904DB6118B;
	Wed, 22 Oct 2025 16:18:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AB8IM5RQ6qXE; Wed, 22 Oct 2025 16:18:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA93261196
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761149890;
	bh=RLP+bpkdPGjagGTgRPPp7+rOmgDtjlSKoZhywvA67RM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3+D4zF2IxFA0UAcFrhGT4IjsQ6yLjI3I9qQ61zV0b0R8pyrOR3GASOhpZp8KLLz7M
	 rSvugn3peWakERClIBjUytzX8+yQcjrQHLV+pIJ3I4ZvnM/4gmYxxNyaHCFDOHKuJW
	 OR1dN/4HxTiUbld3lBXRzebDln2lhIT+2/65CW2JpogxkUKeuUST1nmayA2lDNjMVz
	 P1p8OKiz8jqvlhj+Ugd8BbilD76dMK9EcQxCC2ggaVOiSKDUXIzhEA5EvQeJfUQc6X
	 /TxEM4tNuTVrZJIENxPznAzqwjvd4gU5aL95OCAqv2nDSY/ESND5JuQPXRaCodcOXA
	 1emSdSUtlkh/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA93261196;
	Wed, 22 Oct 2025 16:18:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id E82E4DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 16:18:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DE4BA40613
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 16:18:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KqsTOtVUTiAe for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Oct 2025 16:18:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::636; helo=mail-pl1-x636.google.com;
 envelope-from=alessandro.d@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 228AD405C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 228AD405C1
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 228AD405C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 16:18:07 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id
 d9443c01a7336-28a5b8b12a1so71576435ad.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 09:18:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761149887; x=1761754687;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=RLP+bpkdPGjagGTgRPPp7+rOmgDtjlSKoZhywvA67RM=;
 b=j5UbqCoRX9uu0X99VNUrH4DNfvjShRrqSIZ8TSTh/pjag2gCeG+nFytJm+tqO9UZmE
 yuTQ6xMZOfVX6cLIzXWqstRsV6Z6js8HNlF3ceNAcwqWQYsN5mxfj0pEl0S2n2w+4uCp
 XrnL5c/XpPANafJmG6ySbNOxVdf3mg7AJVrM3NQ/XV/m7KS5tSoZ1FUo3wSeEVhJf5V+
 LB9hSwuQhik6mV1duB7cVi99tP9XZzUpJ0YL1HI0DsRZrWNs8qp8+EXC9sE9ggNbg4ak
 QqSH3VhJa3E4gtSM7zlU/rZyVGsZNDRI86O96x5B5qtGj/clx/R9corPmg9gKJmSHW1D
 n4zA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUfuunmeJCZiuZn3SxFXaeNzd8OVwCTy05pDUTsEqkEMLHqGB2ve/b8EWc/5spEyn3CpHOTYRx30fmIzS4Z6HE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxEq+1FqrW0XOoYPOybtcm9YrjlvHwmzFAiKKWevf0JiCGHtrrz
 BzFZPwAPlSeECZOEDQKuBQBMX9TEZ9E65zjPp8solVu+yJP+OFYWyNX3
X-Gm-Gg: ASbGncv5fsbQu3wGG0Xu4Ng0tOyp0oFXdZ7Sx1PrfTniM9XwGYMWADzCakFNf8QCIMt
 tiEA+vxBpjzuCIC2asTRDFMn9BpUa5WqmgxqzktisFZXHnXJCOfOMAgAZXbz2IesNX8rqaP8B7c
 MdjxsSLGp4vPnUIbomuo+5kjS0C8k78xNWb/ifkXuXQipuVxO95pleoanBw+Z/OHS22qvYb2ZBv
 H3xr+bWMjOyOnsmpaw0zIxgPV7kOWeMscQNcrQf8QWzgYSrxeWnBjgkweK34JF4aXXMiK4Q/8zR
 V/VsrXVjBOo2rF7WEqamLzP3EmIJBAtjXuloagCdXAylxrbGEhrQ20/CBEZPzpnf0fBxvWCpblX
 M2tgLpw96uHQWD2pV0Slbx2UXf4+y6ns3Z/djlwOnhYjSH6Xz4WiwOf1MRBo5OkU/MW93dcUcQG
 O7GQBe
X-Google-Smtp-Source: AGHT+IHfAOCNJGgUXhdj6sgYkuAO4xsbyh4B6nGpWidzyORSpqM0a8O04rj58jJ6k/uvjC5jyroU0w==
X-Received: by 2002:a17:903:19f0:b0:264:5c06:4d7b with SMTP id
 d9443c01a7336-290cba4f065mr257718945ad.32.1761149887296; 
 Wed, 22 Oct 2025 09:18:07 -0700 (PDT)
Received: from lima-default ([104.28.246.147])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-292472193a1sm142156625ad.106.2025.10.22.09.18.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Oct 2025 09:18:06 -0700 (PDT)
Date: Thu, 23 Oct 2025 03:17:58 +1100
From: Alessandro Decina <alessandro.d@gmail.com>
To: Jason Xing <kerneljasonxing@gmail.com>
Cc: Alessandro Decina <alessandro.d@gmail.com>, netdev@vger.kernel.org,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Alexei Starovoitov <ast@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Daniel Borkmann <daniel@iogearbox.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 Tirthendu Sarkar <tirthendu.sarkar@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Message-ID: <aPkDtuVgbS4J-Og_@lima-default>
References: <20251021173200.7908-1-alessandro.d@gmail.com>
 <20251021173200.7908-2-alessandro.d@gmail.com>
 <CAL+tcoCwGQyNSv9BZ_jfsia6YFoyT790iknqxG7bB7wVi3C_vQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL+tcoCwGQyNSv9BZ_jfsia6YFoyT790iknqxG7bB7wVi3C_vQ@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1761149887; x=1761754687; darn=lists.osuosl.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=RLP+bpkdPGjagGTgRPPp7+rOmgDtjlSKoZhywvA67RM=;
 b=h+reYNjZ+F3eknMGi97UAi+VqwK6LjRwup9jmfkBveE5TK/j9ZrR4Zb9ztD2ZfEhkg
 v54sURh1gIdMYOm4cxSoasGnELxmARi4Ht15jzA5qk38fG9EKbzVmVfxyF3JssesjLr0
 I+Jou2WHA+3IRtkabo5akLcz+m2TLqY+afXKTYny3Thtvm0fzUGhVIR+8Z5C3uxHpNoX
 9Qzmtqk07M8X37oHAlEW+bsli19IPXUkROc+5BPQ3kQERu8G4fsBD+i38RMoNL5qjYdc
 iigW7A2RMuDwb3t0QWM0QQblwyjTCZ1vokNqZYmiR3YlGQ3Cg52r7KA8NkMLtv36LWai
 ZtgQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=h+reYNjZ
Subject: Re: [Intel-wired-lan] [PATCH net v2 1/1] i40e: xsk: advance
 next_to_clean on status descriptors
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Oct 22, 2025 at 11:11:01AM +0800, Jason Xing wrote:
> On Wed, Oct 22, 2025 at 1:33 AM Alessandro Decina
> <alessandro.d@gmail.com> wrote:
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > index 9f47388eaba5..dbc19083bbb7 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > @@ -441,13 +441,18 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
> >                 dma_rmb();
> >
> >                 if (i40e_rx_is_programming_status(qword)) {
> > +                       u16 ntp;
> > +
> >                         i40e_clean_programming_status(rx_ring,
> >                                                       rx_desc->raw.qword[0],
> >                                                       qword);
> >                         bi = *i40e_rx_bi(rx_ring, next_to_process);
> >                         xsk_buff_free(bi);
> > -                       if (++next_to_process == count)
> > +                       ntp = next_to_process++;
> > +                       if (next_to_process == count)
> >                                 next_to_process = 0;
> > +                       if (next_to_clean == ntp)
> > +                               next_to_clean = next_to_process;
> >                         continue;
> >                 }
> >
> > --
> > 2.43.0
> >
> >
> 
> I'm copying your reply from v1 as shown below so that we can continue
> with the discussion :)
> 
> > It really depends on whether a status descriptor can be received in the
> > middle of multi-buffer packet. Based on the existing code, I assumed it
> > can. Therefore, consider this case:
> >
> > [valid_1st_packet][status_descriptor][valid_2nd_packet]
> >
> > In this case you want to skip status_descriptor but keep the existing
> > logic that leads to:
> >
> >     first = next_to_clean = valid_1st_packet
> >
> > so then you can go and add valid_2nd_packet as a fragment to the first.
> 
> Sorry, honestly, I still don't follow you.
> 
> Looking at the case you provided, I think @first always pointing to
> valid_1st_packet is valid which does not bring any trouble. You mean
> the case is what you're trying to handle?

Yes, I mean this case needs to keep working, so we can't move
next_to_clean unconditionally, we can only move it when
next_to_clean == ntp, which is equivalent to checking that
first == NULL. See below.
 
> You patch updates next_to_clean that is only used at the very
> beginning, so it will not affect @first. Imaging the following case:
> 
>      [status_descriptor][valid_1st_packet][valid_2nd_packet]
> 
> Even if the next_to_clean is updated, the @first still points to
> [status_descriptor] that is invalid and that will later cause the
> panic when constructing the skb.

Exactly - the key is to make sure we never get into this state :)

At the beginning of the function - outside the loop - first is only
assigned if (next_to_process != next_to_clean). This condition means: if
we previously exited the function in the middle of a multi-buffer
packet, we must resume from the start of that packet (next_to_clean) and
process the next fragment in it (next_to_process).

Consider the case you just gave:

> [status_descriptor][valid_1st_mb_packet][valid_2nd_mb_packet]

Assume we enter the function and next_to_process == next_to_clean, we
don't assign first, so first = NULL.

We find the status descriptor: without this patch, we increment
next_to_process, don't increment next_to_clean, say we run out of budget
and break the loop, the next time the function is entered we set first =
status_descriptor because next_to_process != next_to_clean. This is
exactly what we want to avoid.

With this patch upon processing the status descriptor, we see
next_to_clean == ntp, we increment next_to_clean, the next time the
function is entered next_to_process == next_to_clean, first is correctly
set to NULL and the next packet starts from valid_1st_mb_packet.

So I've covered both the scenarios:

a) [status][mb_packet1][mb_packet2]
b) [mb_packet1][status][mb_packet2]

The last case

c) [packet1][packet2][status] is actually just a), because at packet2
we'd find the EOP marker and close off the previous multi-buffer packet.

I hope I was more clear and please check my logic :)

Ciao,
Alessandro
