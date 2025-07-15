Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C62DDB06686
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Jul 2025 21:09:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5786240E9A;
	Tue, 15 Jul 2025 19:09:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YiZHtkPydiOs; Tue, 15 Jul 2025 19:09:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F7A940CC1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752606590;
	bh=YLN2gDZ9onoCs+NlWLd/HaKyjjBalP3C26bllNaupd8=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xibiGZAkz0Y9MMx8i5xkUN+KJohaJ9yLE5n1E+uv1u5R0yV9N3iqpPl0sb2JXUAPG
	 WiUUUOcgl5N7mZ4uV92cOEeuaJ6zmf9EwuoTVOcoQIbqwrPjHdLwst0+jcMBXnepUl
	 NFJ0Sb08PqJzDaH06EXbub+KStq5TR6Yhn2LrgwP+zKZojIH6+WgrblbzOI9fwFhQs
	 mmHE8LmB+1KAS7zJp8QxAzMe+tQaxsOsFuhB99gAk+87nfF0SyLzoXKN9JpD/qRkql
	 8DDmC3ltYojGV8omXO3jEv2HOWhNUATebXZHiPp852lcVtmR8RnzbfFtT7E1vW10xA
	 7R69OOL0NvFjQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F7A940CC1;
	Tue, 15 Jul 2025 19:09:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E48B0DF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jul 2025 19:09:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CAD5660E36
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jul 2025 19:09:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OhXK7BDQ3_fF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Jul 2025 19:09:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::636; helo=mail-pl1-x636.google.com;
 envelope-from=almasrymina@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2833460B17
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2833460B17
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2833460B17
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jul 2025 19:09:48 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id
 d9443c01a7336-23dd9ae5aacso37175ad.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jul 2025 12:09:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752606587; x=1753211387;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=YLN2gDZ9onoCs+NlWLd/HaKyjjBalP3C26bllNaupd8=;
 b=GANtdSoaNXWgzt2K9V2rU+7wkVBkW0TQj0F6QD3azgoLG61O9H/GFkQnop0mte3mmN
 uanK/KEurMrvZkudDCZldISXTol75eRKO4vZ3crWgHjF05BpMJc/hjAF1/Z6UrlkjHku
 BK9GQw6IsNmA9Zs+fb88Fr2iN5GLsWJBgTwqZ8gkJDIlr/zg29Wn9a4RRgayLq+C55XE
 M3R4p0RXJEJLIot3O/WGmSNKdatVcd3OFzQUSaqTs9s5YtQ17j+m9zBlf4wUa8X6kuX7
 SvEjy/LwTTQRsxBvrA/Y2tXR5k9iwAUNjddZqxvWskRGEDJEvi7W0M+M1Sk3WHUQZnv1
 nj+A==
X-Forwarded-Encrypted: i=1;
 AJvYcCW3HaPcB5znpnQbAgFgBc3aQtnoQy1UhSQ2STmwPQaVaQmhDDMcdJLdJxihzzE0sw5b/8N8620xaFN1LaPyaBM=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yzy/5JbOo1BE2gqL7tjQ+6jZF/XpfQyBSK3EZRuyyatwc9Agazk
 cYIYkslLSnuGs5M7ZMmASS8BkfHCJDKjPgNEz9A2I2Te9NcNONDyT3IQdOtWmKzwAsT3Vee0PsN
 vms0Yg5AULHv/fCrw3aMfcBA62qcSP660AFEU2Vjb
X-Gm-Gg: ASbGncv3t5A8wp8YtEkCHEl387/8Xtj82RkWiiKf3WYWpLEDnAcdp/X3FRcQ/8aCgg5
 +0DbPbkIObuMd1sH8qekpH12EqfkYgYbuiYkdDvxNmtWrUpRmkSoTtLS6Nqvr5nvnakgKnDVhcC
 vi7L5TfrS+v7vaNlGfxqqWgBJyNzlh5+Px4EASN6KRzetk4dzd6DeukcsZojIFRgL9z10ddh2tT
 35i2Dzz6GtsLGsUh/EKrOs/UYhnB+Rc2d0Z4w==
X-Google-Smtp-Source: AGHT+IHowErSnvUulW5JXQBN4+fmG2zXgFSZ6eFQ/lioc5t7yVKoRiNFwd450XUTKcqJXTXwlIEmOQ0Irhzeefb0YRs=
X-Received: by 2002:a17:903:4b50:b0:234:48b2:fd63 with SMTP id
 d9443c01a7336-23e24d874edmr256525ad.21.1752606586807; Tue, 15 Jul 2025
 12:09:46 -0700 (PDT)
MIME-Version: 1.0
References: <20250714120047.35901-1-byungchul@sk.com>
 <20250714120047.35901-3-byungchul@sk.com>
 <CAHS8izO393X_BDJxnX2d-auhTwrUZK5wYdoAh_tJc0GBf0AqcQ@mail.gmail.com>
 <CAHS8izNh7aCJOb1WKTx7CXNDPv_UBqFyq2XEHHhqHH=5JPmJCQ@mail.gmail.com>
 <20250715013626.GA49874@system.software.com>
In-Reply-To: <20250715013626.GA49874@system.software.com>
From: Mina Almasry <almasrymina@google.com>
Date: Tue, 15 Jul 2025 12:09:34 -0700
X-Gm-Features: Ac12FXzmAscmFtXN7b2_Y3o9_BpXC5L5KXyNze-SOzs8SCUx-lkKZEIKcXC8OLg
Message-ID: <CAHS8izNgfrN-MimH1uv349AqNudvQJoeOsyHpoBT_QokF3Zv=w@mail.gmail.com>
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
 d=google.com; s=20230601; t=1752606587; x=1753211387; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=YLN2gDZ9onoCs+NlWLd/HaKyjjBalP3C26bllNaupd8=;
 b=nprntqLLMW8MiIRFfC+Xpy31rVpPJ0Fy92H1YKBufNQ2viLKqM4rgnedXslPNCy/ku
 8awKDWCtoTvfNeotsyiKZqyi5yc3m8609jI2p0vochVSLSaCQ+6imurXKFZhymC+b1E0
 NVG40N3ntbJQDLYMV3jfjIIat1J+XN8Tid3Z+cpT5Z8phu5/mrmq2sjk+g+z8gr8zMvG
 T2Itpg2agCAKn/AHcikAlhmGi6LjWdEdlNGfK4XvziWW1xfFWHBp7+V5FJ1mN4RhGZzh
 Bry0z2o39Xsb5aOhMaxRQT+7C88PF5OiGyp/4FOFIDXxdn/nR8O0fPkKCR82fH8V9NYg
 KqOw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=nprntqLL
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

On Mon, Jul 14, 2025 at 6:36=E2=80=AFPM Byungchul Park <byungchul@sk.com> w=
rote:
>
> On Mon, Jul 14, 2025 at 12:58:15PM -0700, Mina Almasry wrote:
> > On Mon, Jul 14, 2025 at 12:37=E2=80=AFPM Mina Almasry <almasrymina@goog=
le.com> wrote:
> > >
> > > On Mon, Jul 14, 2025 at 5:01=E2=80=AFAM Byungchul Park <byungchul@sk.=
com> wrote:
> > > >
> > > > To eliminate the use of the page pool fields in struct page, the pa=
ge
> > > > pool code should use netmem descriptor and APIs instead.
> > > >
> > > > However, __netmem_get_pp() still accesses ->pp via struct page.  So
> > > > change it to use struct netmem_desc instead, since ->pp no longer w=
ill
> > > > be available in struct page.
> > > >
> > > > While at it, add a helper, pp_page_to_nmdesc(), that can be used to
> > > > extract netmem_desc from page only if it's pp page.  For now that
> > > > netmem_desc overlays on page, it can be achieved by just casting.
> > > >
> > > > Signed-off-by: Byungchul Park <byungchul@sk.com>
> > > > ---
> > > >  include/net/netmem.h | 13 ++++++++++++-
> > > >  1 file changed, 12 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/include/net/netmem.h b/include/net/netmem.h
> > > > index 535cf17b9134..2b8a7b51ac99 100644
> > > > --- a/include/net/netmem.h
> > > > +++ b/include/net/netmem.h
> > > > @@ -267,6 +267,17 @@ static inline struct net_iov *__netmem_clear_l=
sb(netmem_ref netmem)
> > > >         return (struct net_iov *)((__force unsigned long)netmem & ~=
NET_IOV);
> > > >  }
> > > >
> > > > +static inline struct netmem_desc *pp_page_to_nmdesc(struct page *p=
age)
> > > > +{
> > > > +       DEBUG_NET_WARN_ON_ONCE(!page_pool_page_is_pp(page));
> > > > +
> > > > +       /* XXX: How to extract netmem_desc from page must be change=
d,
> > > > +        * once netmem_desc no longer overlays on page and will be
> > > > +        * allocated through slab.
> > > > +        */
> > > > +       return (struct netmem_desc *)page;
> > > > +}
> > > > +
> > >
> > > Same thing. Do not create a generic looking pp_page_to_nmdesc helper
> > > which does not check that the page is the correct type. The
> > > DEBUG_NET... is not good enough.
> > >
> > > You don't need to add a generic helper here. There is only one call
> > > site. Open code this in the callsite. The one callsite is marked as
> > > unsafe, only called by code that knows that the netmem is specificall=
y
> > > a pp page. Open code this in the unsafe callsite, instead of creating
> > > a generic looking unsafe helper and not even documenting it's unsafe.
> > >
> >
> > On second read through the series, I actually now think this is a
> > great idea :-) Adding this helper has simplified the series greatly. I
> > did not realize you were converting entire drivers to netmem just to
> > get rid of page->pp accesses. Adding a pp_page_to_nmdesc helper makes
> > the entire series simpler.
> >
> > You're also calling it only from code paths like drivers that already
> > assumed that the page is a pp page and did page->pp deference without
> > a check, so this should be safe.
> >
> > Only thing I would change is add a comment explaining that the calling
> > code needs to check the page is pp page or know it's a pp page (like a
> > driver that supports pp).
> >
> >
> > > >  /**
> > > >   * __netmem_get_pp - unsafely get pointer to the &page_pool backin=
g @netmem
> > > >   * @netmem: netmem reference to get the pointer from
> > > > @@ -280,7 +291,7 @@ static inline struct net_iov *__netmem_clear_ls=
b(netmem_ref netmem)
> > > >   */
> > > >  static inline struct page_pool *__netmem_get_pp(netmem_ref netmem)
> > > >  {
> > > > -       return __netmem_to_page(netmem)->pp;
> > > > +       return pp_page_to_nmdesc(__netmem_to_page(netmem))->pp;
> > > >  }
> > >
> > > This makes me very sad. Casting from netmem -> page -> nmdesc...
> > >
> > > Instead, we should be able to go from netmem directly to nmdesc. I
> > > would suggest rename __netmem_clear_lsb to netmem_to_nmdesc and have
> > > it return netmem_desc instead of net_iov. Then use it here.
> > >
> > > We could have an unsafe version of netmem_to_nmdesc which converts th=
e
> > > netmem to netmem_desc without clearing the lsb and mark it unsafe.
> > >
> >
> > This, I think, we should address to keep some sanity in the code and
> > reduce the casts and make it a bit more maintainable.
>
> I will reflect your suggestions.  To summarize:
>
>    1) The current implementation of pp_page_to_nmdesc() is good enough
>       to keep, but add a comment on it like "Check if the page is a pp
>       page before calling this function or know it's a pp page.".
>

Yes please.

>    2) Introduce the unsafe version, __netmem_to_nmdesc(), and use it in
>       __netmem_get_pp().
>

No need following Pavel's feedback. We can just delete
__netmem_get_pp. If we do find a need in the future to extract the
netmem_desc from a netmem_ref, I would rather we do a straight cast
from netmem_ref to netmem_desc rather than netmem_ref -> pages/net_iov
-> netmem_desc.

But that seems unnecessary for this series.


>    3) Rename __netmem_clear_lsb() to netmem_to_nmdesc(), and return
>       netmem_desc, and use it in all users of __netmem_clear_lsb().
>

Following Pavel's comment, this I think also is not necessary for this
series. Cleaning up the return value of __netmem_clear_lsb is good
work I think, but we're already on v10 of this and I think it would
unnecessary to ask for added cleanups. We can do the cleanup on top.

> Anything else?

Thank you very much :-)

--=20
Thanks,
Mina
