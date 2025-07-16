Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 65805B07E24
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Jul 2025 21:41:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B7AD413CA;
	Wed, 16 Jul 2025 19:41:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kxMPW4YgVb_7; Wed, 16 Jul 2025 19:41:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F0A2741024
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752694882;
	bh=6cBcxFpY+leZiSm2ZlkvHJhd+tn3lpuAd2BWjNqwWsU=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zU3Go2QwIK2Qbfq0ikX0Bkpn5jHorxJo/1h+hGdx9P4J23ToCPwBbi+LAYoVgWl3k
	 DOcoxUDGHCXQYdD8q76Vnau8JV0ti5Bk3XRdwR+fQv2qB6hinzEBo7FnVxZqkkqkOF
	 +46wl4sA86uVOjrPlos7L7/O8pY639B/uFuGNR0bmiOIGaEdlJ9s4xmKS583C3ZgLe
	 /1PeIhF2R53R4RDIbmdiYnIJE+cN0eGqWGfq+vkb5rztmyb7NVr2uNQC8S7habN0UZ
	 viqboUQQyypaLTZdh4yBrAWXLvYX0cYffnYoJ1wU5jd3eOSbAVFGalUYWYuzvrsNll
	 nuraqUJJaHQwQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F0A2741024;
	Wed, 16 Jul 2025 19:41:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D6B0A234
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jul 2025 19:41:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BD1444062A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jul 2025 19:41:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yNfvAn5f7U8n for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Jul 2025 19:41:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62e; helo=mail-pl1-x62e.google.com;
 envelope-from=almasrymina@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B494E4005F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B494E4005F
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B494E4005F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jul 2025 19:41:18 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id
 d9443c01a7336-235e389599fso2245ad.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jul 2025 12:41:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752694878; x=1753299678;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=6cBcxFpY+leZiSm2ZlkvHJhd+tn3lpuAd2BWjNqwWsU=;
 b=O9GXGHslB7v1523rmVSP7kv+y+dbnHIWpLHpT/eia45v8mDU1yUOl1nvLz1LOlwS3j
 EGQ473sYoiKcTch4Cm+ehY6Npn8mhZWljcalNERNBUmZ0XRYuTHeke9vxux5wmJZg2uI
 8KRc1BhAPZD+AE+p1jfDVCVLqIXDsrCDCtz2/HiQ3hJsfPIgo3cwopaB9z7YTJwW7I58
 S142Z6JYDqLoU2D66LMAw0SmM5vX7rUCmfGt8HqTbeHEW7hIK7FamC9WAsJfsfqPjuol
 0KmDMtGf5BgkUvxrkzV2VItEX8BivLo4WQcQELuY9z/09j99gPnlyk+r5SU7lWTDSiId
 LD/A==
X-Forwarded-Encrypted: i=1;
 AJvYcCUFqg0moqRh0PbaZnXPWO9WFYfNw0nRQhRil+f4n9ntW8jg4pbxMKP07PTumv6hkvxGNbVfriatY38JnGIHt9g=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxgSlm0OVy+DIS+YrEp5qNzRqz+41YewTKjqmXnfKfcNelCaN71
 JjonOwJ73eoqkR+NiN4Uno5h6yusqB9Mw20T4tjPGyMXwMGjVGFKQfjGu7IyeszkhhezFvbUDKJ
 d/TX9gNgBml6/xykDnWY062r/MlWOjubxQ+nJpU0x
X-Gm-Gg: ASbGncvyzWDwdSKTos8rU1WYRL4Rna0T989K/Z4XdEfV3rivjz8QJ0L6zWaVjNQXb1z
 t1fXcmPjO+yMbtkmkSmwyyANUv8To5+h/gm/toRiXhkn097zw7KKKwryGYIG1+E0h0ifN5akO4P
 Lw6tWp/JbnExd696bxciTE8h7oOJxADVSmk9kXbSFdjoM5NBtgIasF4p/YrBVVauMLj9lCwll9K
 wnR5j1O
X-Google-Smtp-Source: AGHT+IFyX+XCNjY83DoIYD6wz3oMr28OgEv5cSQ9ojCgkzsna4P0DmbzE8rFt2raxHhdvl1dI8tDi1DCHzWnQLePCe8=
X-Received: by 2002:a17:903:174e:b0:234:a734:4ab9 with SMTP id
 d9443c01a7336-23e2fe3a9f6mr605605ad.20.1752694877565; Wed, 16 Jul 2025
 12:41:17 -0700 (PDT)
MIME-Version: 1.0
References: <20250714120047.35901-1-byungchul@sk.com>
 <20250714120047.35901-3-byungchul@sk.com>
 <CAHS8izO393X_BDJxnX2d-auhTwrUZK5wYdoAh_tJc0GBf0AqcQ@mail.gmail.com>
 <CAHS8izNh7aCJOb1WKTx7CXNDPv_UBqFyq2XEHHhqHH=5JPmJCQ@mail.gmail.com>
 <20250715013626.GA49874@system.software.com>
 <CAHS8izNgfrN-MimH1uv349AqNudvQJoeOsyHpoBT_QokF3Zv=w@mail.gmail.com>
 <20250716045124.GB12760@system.software.com>
In-Reply-To: <20250716045124.GB12760@system.software.com>
From: Mina Almasry <almasrymina@google.com>
Date: Wed, 16 Jul 2025 12:41:04 -0700
X-Gm-Features: Ac12FXwMabx4wvazw8X8IufyySuAWIkeeHz9sZZKQ1flAeUQa_1pSj5SZBgkO6M
Message-ID: <CAHS8izMK2JA4rGNMRMqQbZtJVEP8b_QPLXzoKNeVgQFzAmdv3g@mail.gmail.com>
To: Byungchul Park <byungchul@sk.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>
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
 angelogioacchino.delregno@collabora.com, horms@kernel.org, m-malladi@ti.com, 
 krzysztof.kozlowski@linaro.org, matthias.schiffer@ew.tq-group.com, 
 robh@kernel.org, imx@lists.linux.dev, intel-wired-lan@lists.osuosl.org, 
 linux-arm-kernel@lists.infradead.org, linux-wireless@vger.kernel.org, 
 linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1752694878; x=1753299678; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6cBcxFpY+leZiSm2ZlkvHJhd+tn3lpuAd2BWjNqwWsU=;
 b=w0LEr5skXnkhrE3744f0Qn5heVBRkCBr0Pie+gjoJyrqdMF/Oc1NUVOn39VFgOt6yM
 VVSI20iPllLHox0zNPvjo9Pe5Ow3dl2oye+QQy/rFkYC3FhXYUO4WM9HeQCMh/dskiSE
 gEgb4OKi68R/L16mQuR1F7IobQ41EDIwjN7u/PL0o598cV8btfpreGPMjyknFga6uaHd
 aSGFUv7tjh1alDhtXXVBQFKNfTg/2Npst5RcsB82WKSizRuyXV+gzCPD9xtQEJ2U4gA3
 pG8A7rMXNT9L0H/oyux3Dt9y2kyFBP6+PDeyfFfRe+5DbtxYQu55fbGkFfxx78K7sjNW
 yp3g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=w0LEr5sk
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

On Tue, Jul 15, 2025 at 9:51=E2=80=AFPM Byungchul Park <byungchul@sk.com> w=
rote:
>
> On Tue, Jul 15, 2025 at 12:09:34PM -0700, Mina Almasry wrote:
> > On Mon, Jul 14, 2025 at 6:36=E2=80=AFPM Byungchul Park <byungchul@sk.co=
m> wrote:
> > >
> > > On Mon, Jul 14, 2025 at 12:58:15PM -0700, Mina Almasry wrote:
> > > > On Mon, Jul 14, 2025 at 12:37=E2=80=AFPM Mina Almasry <almasrymina@=
google.com> wrote:
> > > > >
> > > > > On Mon, Jul 14, 2025 at 5:01=E2=80=AFAM Byungchul Park <byungchul=
@sk.com> wrote:
> > > > > >
> > > > > > To eliminate the use of the page pool fields in struct page, th=
e page
> > > > > > pool code should use netmem descriptor and APIs instead.
> > > > > >
> > > > > > However, __netmem_get_pp() still accesses ->pp via struct page.=
  So
> > > > > > change it to use struct netmem_desc instead, since ->pp no long=
er will
> > > > > > be available in struct page.
> > > > > >
> > > > > > While at it, add a helper, pp_page_to_nmdesc(), that can be use=
d to
> > > > > > extract netmem_desc from page only if it's pp page.  For now th=
at
> > > > > > netmem_desc overlays on page, it can be achieved by just castin=
g.
> > > > > >
> > > > > > Signed-off-by: Byungchul Park <byungchul@sk.com>
> > > > > > ---
> > > > > >  include/net/netmem.h | 13 ++++++++++++-
> > > > > >  1 file changed, 12 insertions(+), 1 deletion(-)
> > > > > >
> > > > > > diff --git a/include/net/netmem.h b/include/net/netmem.h
> > > > > > index 535cf17b9134..2b8a7b51ac99 100644
> > > > > > --- a/include/net/netmem.h
> > > > > > +++ b/include/net/netmem.h
> > > > > > @@ -267,6 +267,17 @@ static inline struct net_iov *__netmem_cle=
ar_lsb(netmem_ref netmem)
> > > > > >         return (struct net_iov *)((__force unsigned long)netmem=
 & ~NET_IOV);
> > > > > >  }
> > > > > >
> > > > > > +static inline struct netmem_desc *pp_page_to_nmdesc(struct pag=
e *page)
> > > > > > +{
> > > > > > +       DEBUG_NET_WARN_ON_ONCE(!page_pool_page_is_pp(page));
> > > > > > +
> > > > > > +       /* XXX: How to extract netmem_desc from page must be ch=
anged,
> > > > > > +        * once netmem_desc no longer overlays on page and will=
 be
> > > > > > +        * allocated through slab.
> > > > > > +        */
> > > > > > +       return (struct netmem_desc *)page;
> > > > > > +}
> > > > > > +
> > > > >
> > > > > Same thing. Do not create a generic looking pp_page_to_nmdesc hel=
per
> > > > > which does not check that the page is the correct type. The
> > > > > DEBUG_NET... is not good enough.
> > > > >
> > > > > You don't need to add a generic helper here. There is only one ca=
ll
> > > > > site. Open code this in the callsite. The one callsite is marked =
as
> > > > > unsafe, only called by code that knows that the netmem is specifi=
cally
> > > > > a pp page. Open code this in the unsafe callsite, instead of crea=
ting
> > > > > a generic looking unsafe helper and not even documenting it's uns=
afe.
> > > > >
> > > >
> > > > On second read through the series, I actually now think this is a
> > > > great idea :-) Adding this helper has simplified the series greatly=
. I
> > > > did not realize you were converting entire drivers to netmem just t=
o
> > > > get rid of page->pp accesses. Adding a pp_page_to_nmdesc helper mak=
es
> > > > the entire series simpler.
> > > >
> > > > You're also calling it only from code paths like drivers that alrea=
dy
> > > > assumed that the page is a pp page and did page->pp deference witho=
ut
> > > > a check, so this should be safe.
> > > >
> > > > Only thing I would change is add a comment explaining that the call=
ing
> > > > code needs to check the page is pp page or know it's a pp page (lik=
e a
> > > > driver that supports pp).
> > > >
> > > >
> > > > > >  /**
> > > > > >   * __netmem_get_pp - unsafely get pointer to the &page_pool ba=
cking @netmem
> > > > > >   * @netmem: netmem reference to get the pointer from
> > > > > > @@ -280,7 +291,7 @@ static inline struct net_iov *__netmem_clea=
r_lsb(netmem_ref netmem)
> > > > > >   */
> > > > > >  static inline struct page_pool *__netmem_get_pp(netmem_ref net=
mem)
> > > > > >  {
> > > > > > -       return __netmem_to_page(netmem)->pp;
> > > > > > +       return pp_page_to_nmdesc(__netmem_to_page(netmem))->pp;
> > > > > >  }
> > > > >
> > > > > This makes me very sad. Casting from netmem -> page -> nmdesc...
> > > > >
> > > > > Instead, we should be able to go from netmem directly to nmdesc. =
I
> > > > > would suggest rename __netmem_clear_lsb to netmem_to_nmdesc and h=
ave
> > > > > it return netmem_desc instead of net_iov. Then use it here.
> > > > >
> > > > > We could have an unsafe version of netmem_to_nmdesc which convert=
s the
> > > > > netmem to netmem_desc without clearing the lsb and mark it unsafe=
.
> > > > >
> > > >
> > > > This, I think, we should address to keep some sanity in the code an=
d
> > > > reduce the casts and make it a bit more maintainable.
> > >
> > > I will reflect your suggestions.  To summarize:
> > >
> > >    1) The current implementation of pp_page_to_nmdesc() is good enoug=
h
> > >       to keep, but add a comment on it like "Check if the page is a p=
p
> > >       page before calling this function or know it's a pp page.".
> > >
> >
> > Yes please.
> >
> > >    2) Introduce the unsafe version, __netmem_to_nmdesc(), and use it =
in
> > >       __netmem_get_pp().
> > >
> >
> > No need following Pavel's feedback. We can just delete
> > __netmem_get_pp. If we do find a need in the future to extract the
> > netmem_desc from a netmem_ref, I would rather we do a straight cast
> > from netmem_ref to netmem_desc rather than netmem_ref -> pages/net_iov
> > -> netmem_desc.
> >
> > But that seems unnecessary for this series.
>
> No.  The series should remove accessing ->pp through page.
>
> I will kill __netmem_get_pp() as you and I prefer.  However,
> __netmem_get_pp() users e.i. libeth_xdp_return_va() and
> libeth_xdp_tx_fill_buf() should be altered.  I will modify the code like:
>
> as is: __netmem_get_pp(netmem)
> to be: __netmem_nmdesc(netmem)->pp
>
> Is it okay with you?
>

When Pavel and I were saying 'remove __netmem_get_pp', I think we
meant to remove the entire concept of unsafe netmem -> page
conversions. I think we both don't like them. From this perspective,
__netmem_nmdesc(netmem)->pp is just as bad as __netmem_get_pp(netmem).

I think since the unsafe netmem-to-page casts are already in mainline,
lets assume they should stay there until someone feels strongly enough
to remove them. The logic in Olek's patch is sound:

https://lore.kernel.org/all/20241203173733.3181246-8-aleksander.lobakin@int=
el.com/

Header buffer page pools do always use pages and will likely remain so
for a long time, so I guess lets continue to support them rather than
try to remove them in this series. A followup series could try to
remove them.

> > >    3) Rename __netmem_clear_lsb() to netmem_to_nmdesc(), and return
> > >       netmem_desc, and use it in all users of __netmem_clear_lsb().
> > >
> >
> > Following Pavel's comment, this I think also is not necessary for this
> > series. Cleaning up the return value of __netmem_clear_lsb is good
> > work I think, but we're already on v10 of this and I think it would
> > unnecessary to ask for added cleanups. We can do the cleanup on top.
>
> However, I still need to include 'introduce __netmem_nmdesc() helper'

Yes.

> in this series since it should be used to remove __netmem_get_pp() as I

lets keep __netmem_get_pp, which does a `return
__netmem_nmdesc(netmem)->pp;` In general we avoid allowing the driver
to do any netmem casts in the driver code, and we do any casting in
core.

> described above.  I think I'd better add netmem_nmdesc() too while at it.
>

Yes. netmem_nmdesc should replace __netmem_clear_lsb.

> I assume __netmem_nmdesc() is an unsafe version not clearing lsb.  The

Yes.

> safe version, netmem_nmdesc() needs an additional operation clearing lsb.

Yes.


--
Thanks,
Mina
