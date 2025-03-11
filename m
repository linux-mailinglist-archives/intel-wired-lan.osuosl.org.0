Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 17268A5CC77
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Mar 2025 18:43:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B2F2E60B44;
	Tue, 11 Mar 2025 17:43:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Iygcg1X1pgMt; Tue, 11 Mar 2025 17:43:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7693607AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741715031;
	bh=5zBetAADtGq5no7Asi5NUaHqM/jf+sKjCRdS42kjY9w=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7bYB872gfxrpy5Cryw/2pO/qw8C10/CURsO5H2ngUPr2r3UO7jXZBnFq05HbOJnyb
	 Cfa70QHsHzUxycJqhM8ic9zJghJ7+UuRdQf4FBJN1vOABlHFIP8Q8vuGU80dG5hIJk
	 2Uc8eLV8yEPlRhhffVkm6YZAdC57X1gcgF6SvCT0EUxnRTPT1QtRZNIvGkFOKRdtju
	 qiK2QwzDEc+XqavdJVQG6h2kYKWH7G1YDDqCmQgBQnM7k4M5gOxryqGayCx4x3W4/9
	 6G0XCe/pjTizDVolWOt4zX3JoM4f+ubmADjyd+7XJt7ZK/ux2+BX7sjICp9uSyXgVF
	 e6w6axWnztAKQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D7693607AE;
	Tue, 11 Mar 2025 17:43:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8D91F1C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 17:43:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 809E98156C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 17:43:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4EjL2Tk5sI3f for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Mar 2025 17:43:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::636; helo=mail-pl1-x636.google.com;
 envelope-from=almasrymina@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B269E813AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B269E813AC
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B269E813AC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 17:43:48 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id
 d9443c01a7336-2242ac37caeso15715ad.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 10:43:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741715028; x=1742319828;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=5zBetAADtGq5no7Asi5NUaHqM/jf+sKjCRdS42kjY9w=;
 b=AmN67Tu0zQNxqHw3LSQZiY7cH2rF41uaVzfqOjqD/NYmA3mP6OqlB2dBGj1Iq9cUbf
 DuC01czBBp1ny+Drcxw2v1V3mb8tUb8aCDAovS4j2lbtntaXuwNvR1OyEEMM7hN4OaO0
 fOwosmk5ZRvjfZjKuo9FoiBc39gJ3xGGASudlF+ByrscCJpfjTDXVxR9c9SWxNkmFdpi
 e8L/4HUXlv09Ft108GwSW9A1x1JaMBeTBeH0Mz2HtS3wNwB2dzldlq3tbFonQkWueBWM
 yL2XIAVBJVnlXAxti+iyHtNzlMycXMNutF9xR9GM6u3AVlcSZ9kZJsBSgLKWPFD+x2So
 c0Jw==
X-Gm-Message-State: AOJu0Ywt5Fu2DYMcB6ygLEoUg1KcZTR62jm5m/cbfwFyJIY8E9OBe4hq
 euf/BHZfB6NIUgpA11jpikUYHj77OtVNdeQ1vIGVPwnaQ+4f5ZVxI+z/EblPIVhEaKYTIVkfUlN
 c/R0w99THdsKUhG7ocKfe/VGByEPOW5RMlcha
X-Gm-Gg: ASbGncszdkbiXew0XuC0G3cu7rYimv009Z2rXwvKoANks5QZbbEnTq2xj8eJNOF+1yY
 qQfOdcyMdbkqk3icfrWWbmX0lquYzaN/PqeUVoZiAsPnVC92s8N88twUduAkbCwt46QBojFyCoe
 xPR+ZHstl0hjNet51WzjWdtgMVA7ExUOeaEsNN91hydXW98logsnwzN8XD
X-Google-Smtp-Source: AGHT+IG0viV7k+r1zScsboY01e9GThEa/poGwvNx4ZuHaRhrTfDB+LGfpmAHiQC3xjjOmSE4ORjJUE4LPtb24/XlsQA=
X-Received: by 2002:a17:903:2343:b0:224:6c8:8d84 with SMTP id
 d9443c01a7336-225a92cdfe6mr98565ad.4.1741715027691; Tue, 11 Mar 2025 10:43:47
 -0700 (PDT)
MIME-Version: 1.0
References: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
 <20250305162132.1106080-2-aleksander.lobakin@intel.com>
 <CAHS8izNnNJZsEXwZ07zhpn8AjxhGGcm9vyt8uFos1rVvn66qsQ@mail.gmail.com>
 <049ed5bc-5ee8-4fb3-944f-bd2a2116ba21@intel.com>
In-Reply-To: <049ed5bc-5ee8-4fb3-944f-bd2a2116ba21@intel.com>
From: Mina Almasry <almasrymina@google.com>
Date: Tue, 11 Mar 2025 10:43:35 -0700
X-Gm-Features: AQ5f1JrQeLwEPlomx4CbFBeAsPZ2XW-LcXUnzDj2_KAaO2f2uYG6U3XD3Y7zk7w
Message-ID: <CAHS8izOCgFhNRfJwyfr9hT0hCee3yH3hJ53F7Y29c8wnp-pzyg@mail.gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Michal Kubiak <michal.kubiak@intel.com>, 
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>, 
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>, 
 John Fastabend <john.fastabend@gmail.com>, Simon Horman <horms@kernel.org>,
 bpf@vger.kernel.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1741715028; x=1742319828; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5zBetAADtGq5no7Asi5NUaHqM/jf+sKjCRdS42kjY9w=;
 b=CrQaaitHH3jvUOCUPhiYpCqsu6hcNvAFuIQ1hi5iQvfbxiuE4GkQ/AafFFT+Q94n3g
 wkZaUr4iWh2UWKq1AdUSN2dRoidgqm4SWwCCuVzfT4tWXni5hT0ortN8MiLrR8zKJasr
 cmx2HQPp/wisOJU+4k3oc7RSJ/Nq79CGhkt0m/cDLno6A5xUG/iFMxhAdxPJrbHuwRv3
 nNnB9ZY60DuP0jI/NT3BZM/hJ2jm3WfVMmDx2vru/Hm7tGzVKtC9N8W6Vil4mzlqTgpN
 Vu5anNqY2rWBUj/LcmCh+RcVWXRm0UNv6nzTbY93f7Nb1fRVsv6DI2oK5wkRA7nBpzcc
 HECw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=CrQaaitH
Subject: Re: [Intel-wired-lan] [PATCH net-next 01/16] libeth: convert to
 netmem
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

On Tue, Mar 11, 2025 at 10:23=E2=80=AFAM Alexander Lobakin
<aleksander.lobakin@intel.com> wrote:
>
> From: Mina Almasry <almasrymina@google.com>
> Date: Wed, 5 Mar 2025 16:13:32 -0800
>
> > On Wed, Mar 5, 2025 at 8:23=E2=80=AFAM Alexander Lobakin
> > <aleksander.lobakin@intel.com> wrote:
> >>
> >> Back when the libeth Rx core was initially written, devmem was a draft
> >> and netmem_ref didn't exist in the mainline. Now that it's here, make
> >> libeth MP-agnostic before introducing any new code or any new library
> >> users.
>
> [...]
>
> >>         /* Very rare, but possible case. The most common reason:
> >>          * the last fragment contained FCS only, which was then
> >>          * stripped by the HW.
> >>          */
> >>         if (unlikely(!len)) {
> >> -               libeth_rx_recycle_slow(page);
> >> +               libeth_rx_recycle_slow(netmem);
> >
> > I think before this patch this would have expanded to:
> >
> > page_pool_put_full_page(pool, page, true);
> >
> > But now I think it expands to:
> >
> > page_pool_put_full_netmem(netmem_get_pp(netmem), netmem, false);
> >
> > Is the switch from true to false intentional? Is this a slow path so
> > it doesn't matter?
>
> Intentional. unlikely() means it's slowpath already. libeth_rx_recycle()
> is inline, while _slow() is not. I don't want slowpath to be inlined.
> While I was originally writing the code changed here, I didn't pay much
> attention to that, but since then I altered my approach and now try to
> put anything slow out of line to not waste object code.
>
> Also, some time ago I changed PP's approach to decide whether it can
> recycle buffers directly or not. Previously, if that `allow_direct` was
> false, it was always falling back to ptr_ring, but now if `allow_direct`
> is false, it still checks whether it can be recycled directly.
>

Thanks, yes I forgot about that.

> [...]
>
> >> @@ -3122,16 +3122,20 @@ static u32 idpf_rx_hsplit_wa(const struct libe=
th_fqe *hdr,
> >>                              struct libeth_fqe *buf, u32 data_len)
> >>  {
> >>         u32 copy =3D data_len <=3D L1_CACHE_BYTES ? data_len : ETH_HLE=
N;
> >> +       struct page *hdr_page, *buf_page;
> >>         const void *src;
> >>         void *dst;
> >>
> >> -       if (!libeth_rx_sync_for_cpu(buf, copy))
> >> +       if (unlikely(netmem_is_net_iov(buf->netmem)) ||
> >> +           !libeth_rx_sync_for_cpu(buf, copy))
> >>                 return 0;
> >>
> >
> > I could not immediately understand why you need a netmem_is_net_iov
> > check here. libeth_rx_sync_for_cpu will delegate to
> > page_pool_dma_sync_netmem_for_cpu which should do the right thing
> > regardless of whether the netmem is a page or net_iov, right? Is this
> > to save some cycles?
>
> If the payload buffer is net_iov, the kernel doesn't have access to it.
> This means, this W/A can't be performed (see memcpy() below the check).
> That's why I exit early explicitly.
> libeth_rx_sync_for_cpu() returns false only if the size is zero.
>
> netmem_is_net_iov() is under unlikely() here, because when using devmem,
> you explicitly configure flow steering, so that only TCP/UDP/whatever
> frames will land on this queue. Such frames are split correctly by
> idpf's HW.
> I need this WA because let's say unfortunately this HW places the whole
> frame to the payload buffer when it's not TCP/UDP/... (see the comment
> above this function).
> For example, it even does so for ICMP, although HW is fully aware of the
> ICMP format. If I was a HW designer of this NIC, I'd instead try putting
> the whole frame to the header buffer, not the payload one. And in
> general, do header split for all known packet types, not just TCP/UDP/..
> But meh... A different story.
>

Makes sense. FWIW:

Reviewed-by: Mina Almasry <almasrymina@google.com>

--=20
Thanks,
Mina
