Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F97AB047F3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Jul 2025 21:38:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E69D810B4;
	Mon, 14 Jul 2025 19:38:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v152lgYwmKve; Mon, 14 Jul 2025 19:38:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C1956810D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752521884;
	bh=yry2upj+ByeYrrNjZKRJ8sVD88C6f2FVJf/Y5Atdgbc=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oUxUC+JRSXQTnLUyocsd6O4WL/z7dZmQ5cmko9JqVEwpKebbosP6vtMv8ggBHjfMr
	 fUb84cVGbhkfpopb80cl/HkcoEOF5GteTgLq18GpVTvd5iQpscp5pQ+HkxebxpT1GM
	 5ZCt4BiGN0OSG2vlOtXZN8H/W3l4T8REweoUqDe1qsXPOMuNFor+Fc/sNIUfIg9RRE
	 maFYra20GGTAR8lW/77sCb65pXFKlbJ9hxoJLm5QQ/ZY88rgsVmPFO88lSBDTtAZU8
	 5OhbskXq94QMkbSO31Jm47Evj6ZSbdX8hEOJkHVkUVzXPLagrhCLPlIjxKbkjdOrzx
	 N1UcnnDV5byPw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C1956810D2;
	Mon, 14 Jul 2025 19:38:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 30E90DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 19:38:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 22AB46146D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 19:38:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x9P3gYcwDt-i for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Jul 2025 19:38:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::634; helo=mail-pl1-x634.google.com;
 envelope-from=almasrymina@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 78CD761467
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 78CD761467
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 78CD761467
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 19:38:02 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id
 d9443c01a7336-235e389599fso45145ad.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:38:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752521882; x=1753126682;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=yry2upj+ByeYrrNjZKRJ8sVD88C6f2FVJf/Y5Atdgbc=;
 b=dC8JWRN3jK77NbFqoHeRG6HBaVPk0Zu7YN25hDodC6XPmTCHz9GwfqRA9NdO8bizfc
 0gLe89jVDs273NjTe/p4MpOoO49sQ7OmgAum4XW66tsW3pGWcQNr0crg12ljS5Tu71+w
 njve2+4QYgFVNoeC40H8N32wOQJHL5JY34kCJy6hsvRI1tRLpNELIuTxfAjCGr14JBmF
 ++OpFH6z+PZaL7tiSZgCqgKuOOYQB+O+50nsOl4pgCPgnD7ORdVbJYCRApNNWRyUoloM
 UJxlIAXQVZB4YiPSamiG9xGU8ft1Xlvb2lfqrpv29/A4pxgyhJmO32V1XJq9Xm6fRZUY
 x96g==
X-Forwarded-Encrypted: i=1;
 AJvYcCU14RkUKGp05IEwgVkQwBc7wC134p6ODJ8x7YgqQutBg7VOGcabS1RgjjbdKagWMwB8jRuDWBckXrK8vEAYWns=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzmG5I5VMeCRnh/ugAUEP5Ri2gmfaCC8jPaHIchCvjoyWTbma+T
 51A+gpsGLlUuVw7efS4OlBX0mKCdO3Da+0tzM11xYF6P8jMlKj2tPCm/pWCnSKeIhQWWGcc42cS
 bYWkTdl7YqZwcwP/tS8Gj5qKwj+/YMeWH0Emxx0OM
X-Gm-Gg: ASbGncvc4esjU8RV7ityEfV7GZ0aK8GXPZfaub1irReYLugy08wSEWqRfwHxDYCj+eu
 yUL8VIiU8768B88LFfQO34mhm0/TJZXV86+O0XQEjNCfMmYglc8eRC3vw+cj2XppeWYJeA2kNj/
 hTDhuxe5oGatcylrcrn5s7dMufrhgVUV9hZJLELcrOFdLnkMlQH2XfqtA22KGB1oSeOdJR15Lce
 2wS9amkyU3295q/5FKfP2G+gJvYgB3tjVUyWA==
X-Google-Smtp-Source: AGHT+IHZoWQ8pLUOjiCQlGlcYIPNmYT9TX3giO0kqF0O3T+xtLnHFh+M02Pq+s3+TLFDvQ9elFBdwtzpJc9HYJVxyEM=
X-Received: by 2002:a17:903:2484:b0:234:b2bf:e67e with SMTP id
 d9443c01a7336-23e1ac4613fmr298445ad.13.1752521881303; Mon, 14 Jul 2025
 12:38:01 -0700 (PDT)
MIME-Version: 1.0
References: <20250714120047.35901-1-byungchul@sk.com>
 <20250714120047.35901-3-byungchul@sk.com>
In-Reply-To: <20250714120047.35901-3-byungchul@sk.com>
From: Mina Almasry <almasrymina@google.com>
Date: Mon, 14 Jul 2025 12:37:48 -0700
X-Gm-Features: Ac12FXwrdXtLbiJlmPY9vk8GjB7CqgoZsH_hsU8OuZVjZ5CbRybhtkUh-Kkp2jg
Message-ID: <CAHS8izO393X_BDJxnX2d-auhTwrUZK5wYdoAh_tJc0GBf0AqcQ@mail.gmail.com>
To: Byungchul Park <byungchul@sk.com>
Cc: willy@infradead.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-mm@kvack.org, kernel_team@skhynix.com, ilias.apalodimas@linaro.org, 
 harry.yoo@oracle.com, akpm@linux-foundation.org, andrew+netdev@lunn.ch, 
 asml.silence@gmail.com, toke@redhat.com, david@redhat.com, 
 Liam.Howlett@oracle.com, vbabka@suse.cz, rppt@kernel.org, surenb@google.com, 
 mhocko@suse.com, linux-rdma@vger.kernel.org, bpf@vger.kernel.org, 
 vishal.moola@gmail.com, hannes@cmpxchg.org, ziy@nvidia.com, 
 jackmanb@google.com, wei.fang@nxp.com, shenwei.wang@nxp.com, 
 xiaoning.wang@nxp.com, davem@davemloft.net, edumazet@google.com, 
 kuba@kernel.org, pabeni@redhat.com, anthony.l.nguyen@intel.com, 
 przemyslaw.kitszel@intel.com, sgoutham@marvell.com, gakula@marvell.com, 
 sbhatta@marvell.com, hkelam@marvell.com, bbhushan2@marvell.com, 
 tariqt@nvidia.com, ast@kernel.org, daniel@iogearbox.net, hawk@kernel.org, 
 john.fastabend@gmail.com, sdf@fomichev.me, saeedm@nvidia.com, leon@kernel.org, 
 mbloch@nvidia.com, danishanwar@ti.com, rogerq@kernel.org, nbd@nbd.name, 
 lorenzo@kernel.org, ryder.lee@mediatek.com, shayne.chen@mediatek.com, 
 sean.wang@mediatek.com, matthias.bgg@gmail.com, 
 angelogioacchino.delregno@collabora.com, aleksander.lobakin@intel.com, 
 horms@kernel.org, m-malladi@ti.com, krzysztof.kozlowski@linaro.org, 
 matthias.schiffer@ew.tq-group.com, robh@kernel.org, imx@lists.linux.dev, 
 intel-wired-lan@lists.osuosl.org, linux-arm-kernel@lists.infradead.org, 
 linux-wireless@vger.kernel.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1752521882; x=1753126682; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=yry2upj+ByeYrrNjZKRJ8sVD88C6f2FVJf/Y5Atdgbc=;
 b=OQS/mW8I7gP13Rw5xt+ghfPYdOoMalIAO8CEBR2gGKp9FLfKnBOJoC3tY7CB7x85Pe
 pYnA6mVBbRNgOmdY9R0aqtYWettP+xCitHRaAym90+8ocqYv3eOu/tl5jY803MeoeTbn
 DHltaIZ+ZAjQicA3dDITLTHM9bsh4pUJwEBQY+h9a63d0HF4mRzMqjC4CD6fttePfhbb
 lqMPAwjJKGozyH6YQhXUBA+L29EefwBd3qXDN/2J45QciFRwHKj6iUThR4L/jb+o/eZg
 o5Wv+eQgjhNWFBKRmXPxh+BKx00EoZZi6rt7vjzz6e3mDvZjKVHGF8DlV+xuSoFLWRiD
 Asmg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=OQS/mW8I
Subject: Re: [Intel-wired-lan] [PATCH net-next v10 02/12] netmem: use
 netmem_desc instead of page to access ->pp in __netmem_get_pp()
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

On Mon, Jul 14, 2025 at 5:01=E2=80=AFAM Byungchul Park <byungchul@sk.com> w=
rote:
>
> To eliminate the use of the page pool fields in struct page, the page
> pool code should use netmem descriptor and APIs instead.
>
> However, __netmem_get_pp() still accesses ->pp via struct page.  So
> change it to use struct netmem_desc instead, since ->pp no longer will
> be available in struct page.
>
> While at it, add a helper, pp_page_to_nmdesc(), that can be used to
> extract netmem_desc from page only if it's pp page.  For now that
> netmem_desc overlays on page, it can be achieved by just casting.
>
> Signed-off-by: Byungchul Park <byungchul@sk.com>
> ---
>  include/net/netmem.h | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
>
> diff --git a/include/net/netmem.h b/include/net/netmem.h
> index 535cf17b9134..2b8a7b51ac99 100644
> --- a/include/net/netmem.h
> +++ b/include/net/netmem.h
> @@ -267,6 +267,17 @@ static inline struct net_iov *__netmem_clear_lsb(net=
mem_ref netmem)
>         return (struct net_iov *)((__force unsigned long)netmem & ~NET_IO=
V);
>  }
>
> +static inline struct netmem_desc *pp_page_to_nmdesc(struct page *page)
> +{
> +       DEBUG_NET_WARN_ON_ONCE(!page_pool_page_is_pp(page));
> +
> +       /* XXX: How to extract netmem_desc from page must be changed,
> +        * once netmem_desc no longer overlays on page and will be
> +        * allocated through slab.
> +        */
> +       return (struct netmem_desc *)page;
> +}
> +

Same thing. Do not create a generic looking pp_page_to_nmdesc helper
which does not check that the page is the correct type. The
DEBUG_NET... is not good enough.

You don't need to add a generic helper here. There is only one call
site. Open code this in the callsite. The one callsite is marked as
unsafe, only called by code that knows that the netmem is specifically
a pp page. Open code this in the unsafe callsite, instead of creating
a generic looking unsafe helper and not even documenting it's unsafe.

>  /**
>   * __netmem_get_pp - unsafely get pointer to the &page_pool backing @net=
mem
>   * @netmem: netmem reference to get the pointer from
> @@ -280,7 +291,7 @@ static inline struct net_iov *__netmem_clear_lsb(netm=
em_ref netmem)
>   */
>  static inline struct page_pool *__netmem_get_pp(netmem_ref netmem)
>  {
> -       return __netmem_to_page(netmem)->pp;
> +       return pp_page_to_nmdesc(__netmem_to_page(netmem))->pp;
>  }

This makes me very sad. Casting from netmem -> page -> nmdesc...

Instead, we should be able to go from netmem directly to nmdesc. I
would suggest rename __netmem_clear_lsb to netmem_to_nmdesc and have
it return netmem_desc instead of net_iov. Then use it here.

We could have an unsafe version of netmem_to_nmdesc which converts the
netmem to netmem_desc without clearing the lsb and mark it unsafe.

--=20
Thanks,
Mina
