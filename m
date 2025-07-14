Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 23FD8B04824
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Jul 2025 21:58:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C680D810A1;
	Mon, 14 Jul 2025 19:58:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id to1RHfYsbLtd; Mon, 14 Jul 2025 19:58:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0DD8D80F10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752523113;
	bh=tDa5D0A4lwaiBKd2JNzdgebIMAD7+wg9x+lwbfz747o=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3V0IOu/PgJbkRQwRMjQ02XMpdezd3qhJ7fZt8i3MGmv0jSPL8DIovJvPgO5AWL0cO
	 Jy97Ge7ynqVu0G0qoYphirK3Qh3EXVtKFkrVv0ykmM8/dgaiHG9bnI7fAdRpEWY0H9
	 7lVSL/N/ZiOArlBJ3TLDKrkk/PDobGN4QkeYDed7lz0aIxJtSgTXLnzP3bB3ZezdE8
	 unibMFHHcSUPbqKVEiJRrmHb8MOORZaQXIYL5VwwpRgXPoepz7vvptPoZ2Ip0PJnDP
	 yUucD14NLS14Vb5hLce7mpeBbAr/jPIz1f4gzQp+YMgfSzZbugS/DNRm2LtprAV9lu
	 MHMTR+WCYR4Wg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0DD8D80F10;
	Mon, 14 Jul 2025 19:58:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1D990DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 19:58:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1B08C61478
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 19:58:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EN7AKaZTT3qy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Jul 2025 19:58:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::634; helo=mail-pl1-x634.google.com;
 envelope-from=almasrymina@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 779A961477
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 779A961477
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 779A961477
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 19:58:28 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id
 d9443c01a7336-23dd9ae5aacso7485ad.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:58:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752523108; x=1753127908;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=tDa5D0A4lwaiBKd2JNzdgebIMAD7+wg9x+lwbfz747o=;
 b=jpE9A7eNnmCka2icrCK1Nb+QYTnKGV1kAu1T9EHfXdok6fQgNP+JneWvhquowpNK8o
 fg/0Ar5L/Tt2QY/8WPszkpz81lLblZ4znnaS6zOxGBZyre3wS/LSoRg2R4bpeRw8DX+k
 i30HScqBTJuqPxvHdfGqCXVcU/4BFZwR3a/pfigXPNxZtn9yx457PGq1w9cA//nYU4Oh
 VYd8DIGZ8d0KNwGyYU0oCukAufAHPHeyp7fO16B2hdqNyxiPPrVmqVzulTehFpC6r3wc
 UG+/XffrEK8VV6BiWuXRb2mYB1MQF+4CT75HvCmY0RCX391KzODuQMl9O93aropriqXN
 GBkQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVKMXdurR9nupKOD0sa4doRWa9bJUqDqIcNRjX1FPACwVaLRKmTwMjtoDLeU5nTo9Cxe7SvFApa6Mznb/08/R8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxeMy9emu09UUo+xIAzsgJZ+MCloxTb2sa6Zgp2/wycRnip/a2S
 IcGLj1/1+m7BnOfLLXq5w0L8moW1C6BMdiuAQOIh7QCWg4l8uuY9+MtMIRE7+HKU/UVz8FC1pok
 ZojC9bNWqiLtl9gYL8kacGb6r+XsvRzU1F0QDWxtN
X-Gm-Gg: ASbGnctRVC+8vWliGDWOpqHwll4vm8Mo8C/kAkqOyn1cPJXFevHAiF423fduhBP7+KE
 s0wA7B7Xzp0VOixHk06tRH+Bt0VW7pS6WKic33AA7/6HBGLZO++hYx4ZOobinOvTQEVlY/BT14H
 hdUJaW9xyh04Jxx8AEG45qn4BfN/Hk4jmUItgsV1E9Bi5iuTIM1IbugYKHwzA/3KxMKiwGaJJ0u
 /J8YhRpwS1O84LFzWMSe+KyYjhvp5X4tSv5hLcAFLknjcVF
X-Google-Smtp-Source: AGHT+IFWnfMDtJC2CezIF3KnAbgH/pbj3O5jwVGjDMwdXbeGoiYAzNm9r+9HSREvdPvfvdh1fRM05JSSpaSXXTed5k8=
X-Received: by 2002:a17:902:c40d:b0:235:e1fa:1fbc with SMTP id
 d9443c01a7336-23e1aa6bd1bmr603895ad.0.1752523107669; Mon, 14 Jul 2025
 12:58:27 -0700 (PDT)
MIME-Version: 1.0
References: <20250714120047.35901-1-byungchul@sk.com>
 <20250714120047.35901-3-byungchul@sk.com>
 <CAHS8izO393X_BDJxnX2d-auhTwrUZK5wYdoAh_tJc0GBf0AqcQ@mail.gmail.com>
In-Reply-To: <CAHS8izO393X_BDJxnX2d-auhTwrUZK5wYdoAh_tJc0GBf0AqcQ@mail.gmail.com>
From: Mina Almasry <almasrymina@google.com>
Date: Mon, 14 Jul 2025 12:58:15 -0700
X-Gm-Features: Ac12FXz5nYW9H_RK0Nw_oICAspVAx9135uss8L0AQRp8qp4a_9a4RkfhL6o4a4I
Message-ID: <CAHS8izNh7aCJOb1WKTx7CXNDPv_UBqFyq2XEHHhqHH=5JPmJCQ@mail.gmail.com>
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
 d=google.com; s=20230601; t=1752523108; x=1753127908; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=tDa5D0A4lwaiBKd2JNzdgebIMAD7+wg9x+lwbfz747o=;
 b=ZZVEdp+cMbpl4/mUX5F9NLHdL2CUc/zfvmeFwsBblvo3miiDr11tU7j++TksiaonxP
 ALe5UY+CM/civ60vj+9gJQlI3FbHr7E9LgC/Ll6VQtqvdPAR3NIxT1+JTxU+wkpRc7+C
 Z5TctLB9cgJxTBbRVhxcqJ6km+fQG04Viy0f1+UZMSHWhKxFEGfLykQFYSdKsHBE1Y0d
 f8EJBCIr4nW5oBNTS2g7ENOK/RUCUjU+IFDUYlpiraR5A9JV7PIsbYC61xE3X0MpsLcG
 b4m/UMEjiCAq4z8lqm3NaNDqXxYNFx1ocIMBNe/3D7nAD8SfFf5F1RioQD4BsrthD/iH
 wlyA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=ZZVEdp+c
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

On Mon, Jul 14, 2025 at 12:37=E2=80=AFPM Mina Almasry <almasrymina@google.c=
om> wrote:
>
> On Mon, Jul 14, 2025 at 5:01=E2=80=AFAM Byungchul Park <byungchul@sk.com>=
 wrote:
> >
> > To eliminate the use of the page pool fields in struct page, the page
> > pool code should use netmem descriptor and APIs instead.
> >
> > However, __netmem_get_pp() still accesses ->pp via struct page.  So
> > change it to use struct netmem_desc instead, since ->pp no longer will
> > be available in struct page.
> >
> > While at it, add a helper, pp_page_to_nmdesc(), that can be used to
> > extract netmem_desc from page only if it's pp page.  For now that
> > netmem_desc overlays on page, it can be achieved by just casting.
> >
> > Signed-off-by: Byungchul Park <byungchul@sk.com>
> > ---
> >  include/net/netmem.h | 13 ++++++++++++-
> >  1 file changed, 12 insertions(+), 1 deletion(-)
> >
> > diff --git a/include/net/netmem.h b/include/net/netmem.h
> > index 535cf17b9134..2b8a7b51ac99 100644
> > --- a/include/net/netmem.h
> > +++ b/include/net/netmem.h
> > @@ -267,6 +267,17 @@ static inline struct net_iov *__netmem_clear_lsb(n=
etmem_ref netmem)
> >         return (struct net_iov *)((__force unsigned long)netmem & ~NET_=
IOV);
> >  }
> >
> > +static inline struct netmem_desc *pp_page_to_nmdesc(struct page *page)
> > +{
> > +       DEBUG_NET_WARN_ON_ONCE(!page_pool_page_is_pp(page));
> > +
> > +       /* XXX: How to extract netmem_desc from page must be changed,
> > +        * once netmem_desc no longer overlays on page and will be
> > +        * allocated through slab.
> > +        */
> > +       return (struct netmem_desc *)page;
> > +}
> > +
>
> Same thing. Do not create a generic looking pp_page_to_nmdesc helper
> which does not check that the page is the correct type. The
> DEBUG_NET... is not good enough.
>
> You don't need to add a generic helper here. There is only one call
> site. Open code this in the callsite. The one callsite is marked as
> unsafe, only called by code that knows that the netmem is specifically
> a pp page. Open code this in the unsafe callsite, instead of creating
> a generic looking unsafe helper and not even documenting it's unsafe.
>

On second read through the series, I actually now think this is a
great idea :-) Adding this helper has simplified the series greatly. I
did not realize you were converting entire drivers to netmem just to
get rid of page->pp accesses. Adding a pp_page_to_nmdesc helper makes
the entire series simpler.

You're also calling it only from code paths like drivers that already
assumed that the page is a pp page and did page->pp deference without
a check, so this should be safe.

Only thing I would change is add a comment explaining that the calling
code needs to check the page is pp page or know it's a pp page (like a
driver that supports pp).


> >  /**
> >   * __netmem_get_pp - unsafely get pointer to the &page_pool backing @n=
etmem
> >   * @netmem: netmem reference to get the pointer from
> > @@ -280,7 +291,7 @@ static inline struct net_iov *__netmem_clear_lsb(ne=
tmem_ref netmem)
> >   */
> >  static inline struct page_pool *__netmem_get_pp(netmem_ref netmem)
> >  {
> > -       return __netmem_to_page(netmem)->pp;
> > +       return pp_page_to_nmdesc(__netmem_to_page(netmem))->pp;
> >  }
>
> This makes me very sad. Casting from netmem -> page -> nmdesc...
>
> Instead, we should be able to go from netmem directly to nmdesc. I
> would suggest rename __netmem_clear_lsb to netmem_to_nmdesc and have
> it return netmem_desc instead of net_iov. Then use it here.
>
> We could have an unsafe version of netmem_to_nmdesc which converts the
> netmem to netmem_desc without clearing the lsb and mark it unsafe.
>

This, I think, we should address to keep some sanity in the code and
reduce the casts and make it a bit more maintainable.

--=20
Thanks,
Mina
