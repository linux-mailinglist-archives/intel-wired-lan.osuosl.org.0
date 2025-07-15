Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A74B04D7F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Jul 2025 03:36:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9AF9740E6D;
	Tue, 15 Jul 2025 01:36:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M2dFtD8ifcZt; Tue, 15 Jul 2025 01:36:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BED0140EEC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752543403;
	bh=O0I2h7kwG1ot4lSFYJ1j2OOXBhzbpB1bqoYYYUE5GhI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JbFwCERKCTU2jwajjTZhrKCTry9l5ERU2RyB5JViFTu1Z4cwL4RdKnU6HvXcT8+t+
	 n8ohU2b8wlTbxXDPowUOl0sxZermAr9c9X0Z/bcM0+yGGuqX42BALgMrcrGKlPBKac
	 vmuYCkXnKmJqxQngT50XtUqxYF4p7MigHkyTcELIxVBhZw4Drl0A50mQXdrU0c1TdB
	 Kg2aDxvFFGvi2JtFgENztKZd7v0ziyrtk4zyrXwR4P+kBVtN6GoqqDXYRMS7/UuYR3
	 o4sK5kWB20GCKBT7s2SrMw2+cPQ+M2jmJ4eqNQyC3EU8JAOMSCzmRXNW07q/90xIvR
	 SyCYl5KSUToRA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BED0140EEC;
	Tue, 15 Jul 2025 01:36:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0D130DF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jul 2025 01:36:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F278940064
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jul 2025 01:36:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XVI5GA5I6h5M for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Jul 2025 01:36:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=166.125.252.92;
 helo=invmail4.hynix.com; envelope-from=byungchul@sk.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7C55640054
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C55640054
Received: from invmail4.hynix.com (exvmail4.hynix.com [166.125.252.92])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7C55640054
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jul 2025 01:36:38 +0000 (UTC)
X-AuditID: a67dfc5b-669ff7000002311f-cc-6875b0a2a86a
Date: Tue, 15 Jul 2025 10:36:26 +0900
From: Byungchul Park <byungchul@sk.com>
To: Mina Almasry <almasrymina@google.com>
Cc: willy@infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 kernel_team@skhynix.com, ilias.apalodimas@linaro.org,
 harry.yoo@oracle.com, akpm@linux-foundation.org,
 andrew+netdev@lunn.ch, asml.silence@gmail.com, toke@redhat.com,
 david@redhat.com, Liam.Howlett@oracle.com, vbabka@suse.cz,
 rppt@kernel.org, surenb@google.com, mhocko@suse.com,
 linux-rdma@vger.kernel.org, bpf@vger.kernel.org,
 vishal.moola@gmail.com, hannes@cmpxchg.org, ziy@nvidia.com,
 jackmanb@google.com, wei.fang@nxp.com, shenwei.wang@nxp.com,
 xiaoning.wang@nxp.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, sgoutham@marvell.com,
 gakula@marvell.com, sbhatta@marvell.com, hkelam@marvell.com,
 bbhushan2@marvell.com, tariqt@nvidia.com, ast@kernel.org,
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com,
 sdf@fomichev.me, saeedm@nvidia.com, leon@kernel.org,
 mbloch@nvidia.com, danishanwar@ti.com, rogerq@kernel.org,
 nbd@nbd.name, lorenzo@kernel.org, ryder.lee@mediatek.com,
 shayne.chen@mediatek.com, sean.wang@mediatek.com,
 matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com,
 aleksander.lobakin@intel.com, horms@kernel.org, m-malladi@ti.com,
 krzysztof.kozlowski@linaro.org, matthias.schiffer@ew.tq-group.com,
 robh@kernel.org, imx@lists.linux.dev, intel-wired-lan@lists.osuosl.org,
 linux-arm-kernel@lists.infradead.org,
 linux-wireless@vger.kernel.org, linux-mediatek@lists.infradead.org
Message-ID: <20250715013626.GA49874@system.software.com>
References: <20250714120047.35901-1-byungchul@sk.com>
 <20250714120047.35901-3-byungchul@sk.com>
 <CAHS8izO393X_BDJxnX2d-auhTwrUZK5wYdoAh_tJc0GBf0AqcQ@mail.gmail.com>
 <CAHS8izNh7aCJOb1WKTx7CXNDPv_UBqFyq2XEHHhqHH=5JPmJCQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAHS8izNh7aCJOb1WKTx7CXNDPv_UBqFyq2XEHHhqHH=5JPmJCQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sf1DTdRjH7/P98dmXxbwvC/OjZN1NzaJLKb3ruYuM669v3XXleVdXeuYu
 vrbRQBuMH51dE8YVmEiBnpuzRgwEZo6GwKKBNEhROoGBOAUGghkgaKEsBou1wXnx3+t5nvc9
 r89z9+Fo+W94HadOyxC1aUqNAksZ6XR02QvltTpVwvGRBDDbz2LoeVDGgm0uG86MOFnwVBP4
 pXuOAnNNA4KHgQEJOAoGaXjQfglDeZmfhkDtUQbMXQYGZu3zNPxxcVQCHe5/GbA53oLhyjsM
 uL5spKFtdhOMHuvAcNSwQIPRl48hdHOBhebAPQnkOqsoaL5bL4HuhiIWSucraGjUj4RdY/0s
 9DaZMfTm9SDwnQ2xcMcdFk5VDUqgyGZC4L5QjSHXsA2m6h9K4K/j7TQMFyXB4slMuGh5Avyd
 UwgGKq5REHI5JXDVd46FdnsjBX23AjT4vz6NoXD6GIJrxiYKfj9dy4K1s48Kv2MX9IeCFJR4
 LBjGDMMIPG2jDJw6XITA3uJl4W9X+OSFOTNOel1om7pPC84hKxLOV9+ghPHiRUrwtlyhhJ9N
 QxLB4tAJdVXxQrlrghIKvR5acNQUYMEx861EGOx3YaHj5AIj1Fm/EMbrjOid9R9IE5NFjTpT
 1G7dsU+q+jN4FR/0bcz+yvCqHtU+WYiiOMJvJ7crmthHrD9xno4ww28i4+2zVIQxv5l4vYGl
 fiz/HLG2fBPOSzmat3JkotmJIsUqfoYmnbOdTCT1OK8jP9zyLrGMBzKWX8BEQnL+PiJHnAF2
 eRBDLhtvL4XosCL4nSes4MIcR84scsvtp0le/aklcxS/k/zovYcjvJrfQFobLlGRnYTPlRJb
 3jRePmEt+bXKyxQjuWmFwrRCYfpfYVqhsCCmBsnVaZmpSrVm+xZVTpo6e8tHB1IdKPy5Kz8P
 7naime5dbsRzSBEtg8kMlZxVZqbnpLoR4WhFrGxySKuSy5KVOZ+J2gMfanUaMd2N4jhGsUb2
 kj8rWc5/rMwQPxHFg6L20ZTiotbp0aHLJRbfnqD/+hrjZl3vu3e3lea8kaKwlV/vmohPeWW+
 RlOyz/5p6tZF2d7px64EVYkbSrNi9O+/9tNEUtL8qt3Jlmcqb9IlfW0XYvb2eJ468WZr/mG8
 Py5rrW3jy9Gt+vdCRwaKd6y+MXLuH/uhgcnnE7pSfNr9alz8dvf36xPde2L7nlUw6Srli/G0
 Nl35H/YfORbYAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0xTZxiH853v3GhWd9ahfsFdkk5cRjJ02UzeZNO56LKTZTNzI/G2RJtx
 sjZcZC0lYHZBKYHWiTLcBrUwwMrVja4IdK6iaQmXdXNShBy5CohDAd2EEitI12KW8d/zvu8v
 v+f74+OxqpKN4XWp6ZI+VZOsZhW0YufrOS9XOozaTVVyPNgazrHQPVvBQP2DTKi+4WLAX0vg
 16sPKLDVNSOYCw5w4DQPYpht62DhTMU8hqDjOA22P000BBoeYphoH+Og0/OIhnrn+zBSdYsG
 d14LBm8gFsZOdLJw3LSAoWQ4l4VQ/wIDF4N3OTjqqqHAW9oVHqeaOLjaXMDAqYdnMbRk3wgL
 x/sY6LlgY6EnpxvB8LkQA7c8Yet0zSAHBfVWBJ5LtSwcNb0K001zHPz9bRuGkYJtsFScAe3l
 a2DeN41g4GwvBSG3i4Mrwz8x0NbQQsG10SCG+a9LWbDMnEDQW3KBgt9LHQzYfdeo8Ds+gr7Q
 IgVF/nIWxk0jCPzeMRpOHylA0NAqM/CP20Rv2y56p+9h0TVkR+L52uuUOHlyiRLl1t8o8Rfr
 ECeWO41iY02ceMZ9mxItsh+LzjozKzrvf8OJg31uVuwsXqDFRvtX4mRjCfrguX2KNxKlZF2G
 pN+49aBC+9fiFTZteH1mvmlLNnI8Y0FRPBFeI9nfnccRpoVYMtkWoCLMCi8SWQ4u76OFl4i9
 tZCxIAWPBTtPbl90ociwSriPiS/goyOppwUjqRyVl1kpABnPNdORkEq4h8gxV5B5fHiKdJXc
 XA7hsGKxzB9W8GFeR6qX+Mfr50lO0+llc5Swi/wo32UjvFp4gVxu7qBOoietK5qsK5qs/zdZ
 VzSVI7oORetSM1I0uuTN8YYkbVaqLjP+k0MpThT+uVVfLBa60FzPOx4k8Ej9hBLupGtVjCbD
 kJXiQYTH6mjlnSG9VqVM1GQdlvSHDuiNyZLBg9bxtHqt8t3d0kGV8KkmXUqSpDRJ/9+V4qNi
 spH3SP6X0TuqO8z1e+17PlP3LiRtLWqxzuYdqFjz+UTCsQ3EkLg2dkdQnrB9vOqH/W+mp+Q9
 2/4IJWw0HvZ9GI97ft5smyrcUJRws2N0on8+7o/tpe1dA6auJEug+K2ZtPd2vu3tL5sJmddf
 cg/szbr8/VT3/i1ljnzn7pxN9OqY3LHrp9S0Qat5JQ7rDZp/AaLKAyC1AwAA
X-CFilter-Loop: Reflected
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=sk.com
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

On Mon, Jul 14, 2025 at 12:58:15PM -0700, Mina Almasry wrote:
> On Mon, Jul 14, 2025 at 12:37 PM Mina Almasry <almasrymina@google.com> wrote:
> >
> > On Mon, Jul 14, 2025 at 5:01 AM Byungchul Park <byungchul@sk.com> wrote:
> > >
> > > To eliminate the use of the page pool fields in struct page, the page
> > > pool code should use netmem descriptor and APIs instead.
> > >
> > > However, __netmem_get_pp() still accesses ->pp via struct page.  So
> > > change it to use struct netmem_desc instead, since ->pp no longer will
> > > be available in struct page.
> > >
> > > While at it, add a helper, pp_page_to_nmdesc(), that can be used to
> > > extract netmem_desc from page only if it's pp page.  For now that
> > > netmem_desc overlays on page, it can be achieved by just casting.
> > >
> > > Signed-off-by: Byungchul Park <byungchul@sk.com>
> > > ---
> > >  include/net/netmem.h | 13 ++++++++++++-
> > >  1 file changed, 12 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/include/net/netmem.h b/include/net/netmem.h
> > > index 535cf17b9134..2b8a7b51ac99 100644
> > > --- a/include/net/netmem.h
> > > +++ b/include/net/netmem.h
> > > @@ -267,6 +267,17 @@ static inline struct net_iov *__netmem_clear_lsb(netmem_ref netmem)
> > >         return (struct net_iov *)((__force unsigned long)netmem & ~NET_IOV);
> > >  }
> > >
> > > +static inline struct netmem_desc *pp_page_to_nmdesc(struct page *page)
> > > +{
> > > +       DEBUG_NET_WARN_ON_ONCE(!page_pool_page_is_pp(page));
> > > +
> > > +       /* XXX: How to extract netmem_desc from page must be changed,
> > > +        * once netmem_desc no longer overlays on page and will be
> > > +        * allocated through slab.
> > > +        */
> > > +       return (struct netmem_desc *)page;
> > > +}
> > > +
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
> 
> On second read through the series, I actually now think this is a
> great idea :-) Adding this helper has simplified the series greatly. I
> did not realize you were converting entire drivers to netmem just to
> get rid of page->pp accesses. Adding a pp_page_to_nmdesc helper makes
> the entire series simpler.
> 
> You're also calling it only from code paths like drivers that already
> assumed that the page is a pp page and did page->pp deference without
> a check, so this should be safe.
> 
> Only thing I would change is add a comment explaining that the calling
> code needs to check the page is pp page or know it's a pp page (like a
> driver that supports pp).
> 
> 
> > >  /**
> > >   * __netmem_get_pp - unsafely get pointer to the &page_pool backing @netmem
> > >   * @netmem: netmem reference to get the pointer from
> > > @@ -280,7 +291,7 @@ static inline struct net_iov *__netmem_clear_lsb(netmem_ref netmem)
> > >   */
> > >  static inline struct page_pool *__netmem_get_pp(netmem_ref netmem)
> > >  {
> > > -       return __netmem_to_page(netmem)->pp;
> > > +       return pp_page_to_nmdesc(__netmem_to_page(netmem))->pp;
> > >  }
> >
> > This makes me very sad. Casting from netmem -> page -> nmdesc...
> >
> > Instead, we should be able to go from netmem directly to nmdesc. I
> > would suggest rename __netmem_clear_lsb to netmem_to_nmdesc and have
> > it return netmem_desc instead of net_iov. Then use it here.
> >
> > We could have an unsafe version of netmem_to_nmdesc which converts the
> > netmem to netmem_desc without clearing the lsb and mark it unsafe.
> >
> 
> This, I think, we should address to keep some sanity in the code and
> reduce the casts and make it a bit more maintainable.

I will reflect your suggestions.  To summarize:

   1) The current implementation of pp_page_to_nmdesc() is good enough
      to keep, but add a comment on it like "Check if the page is a pp
      page before calling this function or know it's a pp page.".

   2) Introduce the unsafe version, __netmem_to_nmdesc(), and use it in
      __netmem_get_pp().

   3) Rename __netmem_clear_lsb() to netmem_to_nmdesc(), and return
      netmem_desc, and use it in all users of __netmem_clear_lsb().

Anything else?

	Byungchul
> 
> --
> Thanks,
> Mina
