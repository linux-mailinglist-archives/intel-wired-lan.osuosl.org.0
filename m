Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B259FB06678
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Jul 2025 21:06:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 707DD40CCF;
	Tue, 15 Jul 2025 19:06:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EPfh-uTRgZl7; Tue, 15 Jul 2025 19:06:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D184940C29
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752606412;
	bh=YzQixld7pSKyZ/Q/HfBpbSkDP1wbVsZogbStCOaFhmk=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sOMLcwJowYyHKYfBxCaWHzt3l9zS0At5HWwayPxACYuEJpvzrV83hX8GEtGojBkWn
	 wSDTXgLkUJCEPx7anMkdxGFrYVINPXYBQw9aog6BNC0VO1ErwMqKEgyHy1Mh733B9J
	 okwKNMzNfuLxdxUeHL20/FTdYmRs25I2q+QDSMjoknn7WebtsZVphPs4AZ8hCh+t3o
	 Zw15Nc0CxWzXOy3FI2G2BoCj2VHITrTmFiu4g3wefM3oFBB5W7XeAEtLQbws2rE07U
	 m3zayH6hJN2Ej1nh8nkyHJwrdJXbYjkJFcNqgMwB3SLTK/PsuXWNxf7AOrmV3mmns5
	 mSCP7qa5+DdLg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D184940C29;
	Tue, 15 Jul 2025 19:06:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id DC3BADF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jul 2025 19:06:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D906640C29
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jul 2025 19:06:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QfGSGE-w-p3A for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Jul 2025 19:06:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62f; helo=mail-pl1-x62f.google.com;
 envelope-from=almasrymina@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4689040924
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4689040924
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4689040924
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jul 2025 19:06:51 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id
 d9443c01a7336-237f18108d2so46215ad.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jul 2025 12:06:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752606410; x=1753211210;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=YzQixld7pSKyZ/Q/HfBpbSkDP1wbVsZogbStCOaFhmk=;
 b=f+cUWJAwSJa3UO9dFKQKMUVc6BtOSyDqX0XwCBnLd/TBZvbilVgO3GElze9c0zUbRT
 DJGEyu8DFjgShDYw2RHnklX9iN0Sx28lC9lC/+jjQ1SNJa0I1Mpd+gYq8AYIWr3gnY5W
 CwupZ3rxj+YNKqlYnUduMwMrMOnm+aJRRfAyIpkE2dXkqB2vNpnqw1FIm+5PamN4ov8w
 m6KzS8XZX+mYpdoZygQr4hYa4yCgb4oX6aGXbeJuBpJ7Zza8RIlq6y6q8pPsP4OdFos1
 EjbWyKToK6hJJkFmpbFf3XxiMttMM6Fo8ukB1UuGbFC8yXQc92640sxGtUUuIjsXIN38
 saGw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWyfst/PUDhfr/CdmrVu/7wCplP+iER4CRnWwZRE6b9ceQssFyGVO0yLyN0MHBhc751ONCEwEiQZnW/47oD81M=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxPU4XgWLiN/s6FtS9GLuHNovCBXGi+NHPvnhlBfnAW3tRQ1P3y
 Y7u7Gg5dCOWWMw5OCxoren0McyeyaGW/I8IlTUmvBNFpLg59P37KiqSnzRI9zx/vJMZIfJJ6UCv
 49g2Nk98kM9Gd8pra3FeCpfPG59FLpj/UQm/M81cr
X-Gm-Gg: ASbGncsMDBMmeDL23pW6A9dbIRxH6oABKq1l7PRXuVndWBuwWklMTEmzgIXidFPtAjC
 XGi7b1QL1XG7QeGJzSrd5m0KMQn4MTmL+JKiLh9mWacKFKyo2wWbE3vfmH1XSX87qjl97yZhDRV
 6vserAjLYnWXVNXEpqxCyliz92FplZfIOWqPKyuwjAdQj1TiuwHd0E4tJ89rpiRE0e0uS+T5rWU
 25Z08i2kTZ2gvqTvgqepNYYArskc87pJxPpLg==
X-Google-Smtp-Source: AGHT+IERW8BNAcLICEi0xDHHwbh6I9mZCyIk3Mt306+jQnPwqHCieheEaqBVCmnvb9hqZyStUnuqxe9DuyWkdC9x3QM=
X-Received: by 2002:a17:902:cec3:b0:235:f298:cbbb with SMTP id
 d9443c01a7336-23e24c6e119mr315625ad.26.1752606409905; Tue, 15 Jul 2025
 12:06:49 -0700 (PDT)
MIME-Version: 1.0
References: <20250714120047.35901-1-byungchul@sk.com>
 <20250714120047.35901-3-byungchul@sk.com>
 <CAHS8izO393X_BDJxnX2d-auhTwrUZK5wYdoAh_tJc0GBf0AqcQ@mail.gmail.com>
 <9bed2f6e-6251-4d0c-ad1e-f1b8625a0a10@gmail.com>
In-Reply-To: <9bed2f6e-6251-4d0c-ad1e-f1b8625a0a10@gmail.com>
From: Mina Almasry <almasrymina@google.com>
Date: Tue, 15 Jul 2025 12:06:36 -0700
X-Gm-Features: Ac12FXwyUUoU8xGdECWjpzai5Qr9bPwFw8HDcAUKWZbO5pnAVYeauYEt5y8_8Qs
Message-ID: <CAHS8izMYLw3JfonoQ7n4ZaWivdBVKqZejgyRiAku5j1rx7gBPQ@mail.gmail.com>
To: Pavel Begunkov <asml.silence@gmail.com>
Cc: Byungchul Park <byungchul@sk.com>, willy@infradead.org,
 netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, kernel_team@skhynix.com, 
 ilias.apalodimas@linaro.org, harry.yoo@oracle.com, akpm@linux-foundation.org, 
 andrew+netdev@lunn.ch, toke@redhat.com, david@redhat.com, 
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
 d=google.com; s=20230601; t=1752606410; x=1753211210; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=YzQixld7pSKyZ/Q/HfBpbSkDP1wbVsZogbStCOaFhmk=;
 b=Q5SuaPNAAqqRjCngIvpxSc3+IfypccYHhZrcCFvmII/31kCgmwbcNpGo4JjHrJinJb
 mJDWAO1YDTxFExVgDgFP1tO4M4Ra4ZhocuUUFwzBpoQ+Qke6XKsIigOcjAx70cvMLpB3
 NYIZ1z8QsjVcmrbCuUTUtqVyKnd4NwcHhHciAI/PhEH0UUcle1U6z5nKIUFYKPbFf4LB
 DhUWt1g4L9t/fUzkbmSIr93+URonZLZFIvoRUxmEUPsqgNHTm/zToz6LVIZHB2VK/Jsq
 vsNqYoWUozf9ZFkteIUYm2JUEz7srPIIGYzgwsvsZKgUjD7XgOcdi7octl8sGnuIGmCW
 ROBQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=Q5SuaPNA
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

On Tue, Jul 15, 2025 at 3:36=E2=80=AFAM Pavel Begunkov <asml.silence@gmail.=
com> wrote:
>
> On 7/14/25 20:37, Mina Almasry wrote:
> > On Mon, Jul 14, 2025 at 5:01=E2=80=AFAM Byungchul Park <byungchul@sk.co=
m> wrote:
> ...>> +static inline struct netmem_desc *pp_page_to_nmdesc(struct page *p=
age)
> >> +{
> >> +       DEBUG_NET_WARN_ON_ONCE(!page_pool_page_is_pp(page));
> >> +
> >> +       /* XXX: How to extract netmem_desc from page must be changed,
> >> +        * once netmem_desc no longer overlays on page and will be
> >> +        * allocated through slab.
> >> +        */
> >> +       return (struct netmem_desc *)page;
> >> +}
> >> +
> >
> > Same thing. Do not create a generic looking pp_page_to_nmdesc helper
> > which does not check that the page is the correct type. The
> > DEBUG_NET... is not good enough.
> >
> > You don't need to add a generic helper here. There is only one call
> > site. Open code this in the callsite. The one callsite is marked as
> > unsafe, only called by code that knows that the netmem is specifically
> > a pp page. Open code this in the unsafe callsite, instead of creating
> > a generic looking unsafe helper and not even documenting it's unsafe.
> >
> >>   /**
> >>    * __netmem_get_pp - unsafely get pointer to the &page_pool backing =
@netmem
> >>    * @netmem: netmem reference to get the pointer from
> >> @@ -280,7 +291,7 @@ static inline struct net_iov *__netmem_clear_lsb(n=
etmem_ref netmem)
> >>    */
> >>   static inline struct page_pool *__netmem_get_pp(netmem_ref netmem)
> >>   {
> >> -       return __netmem_to_page(netmem)->pp;
> >> +       return pp_page_to_nmdesc(__netmem_to_page(netmem))->pp;
> >>   }
> >
> > This makes me very sad. Casting from netmem -> page -> nmdesc...
>
> The function is not used, and I don't think the series adds any
> new users? It can be killed then. It's a horrible function anyway,
> would be much better to have a variant taking struct page * if
> necessary.
>
> > Instead, we should be able to go from netmem directly to nmdesc. I
> > would suggest rename __netmem_clear_lsb to netmem_to_nmdesc and have
> > it return netmem_desc instead of net_iov. Then use it here.
>
> Glad you liked the diff I suggested :) In either case, seems
> like it's not strictly necessary for this iteration as
> __netmem_get_pp() should be killed, and the rest of patches work
> directly with pages.

Good catch, in that case lets just delete __netmem_get_pp and there is
no need to add a netmem_nmdesc unless we find some other call site
that needs it.

--=20
Thanks,
Mina
