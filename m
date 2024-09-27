Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84689987E03
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Sep 2024 07:54:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F188641BF8;
	Fri, 27 Sep 2024 05:54:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kJM9B3B6jG1i; Fri, 27 Sep 2024 05:54:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F1E4A4142F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727416461;
	bh=Fbg8QJSSUgH7Q4nHSRemybsPSlB855qz0uznqiadyvc=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IhSyujooMIgObI+q37lpOggzpHeiLnZx/IKhPONxUyvN/en0GylxTYlMTluXEjNxc
	 6uvBpTWM/Mp/jeqkGEXclxYCGUZd7o1ImkKOAjxiQ41r1v0a2lhoRSSoawAK5kJkoU
	 tq3TtFsGxqJc4Uu1TTP/I6qsFrSMF+ZR8SKN3tl+a+kpqY8e1OBUjmxaQ8JGBuBLI6
	 WlTj0NEqd3uAZqXaCideTXmZOGFtPTYWZBl+mOTV0vVWaq1Br5nkF8OUFolafQlq7y
	 Y/jk8tK3RlK27HNzb9GNOM4ZKyrVHIPOUaGFX2cyx6m2pvDDAqVEE7/Jh9nGABrcCc
	 y3z4UUtxulR/A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F1E4A4142F;
	Fri, 27 Sep 2024 05:54:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F0DF11BF3BF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 05:54:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DE53F424BE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 05:54:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0z3vfWL0eg9p for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Sep 2024 05:54:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::82c; helo=mail-qt1-x82c.google.com;
 envelope-from=almasrymina@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 64AD2424AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 64AD2424AD
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com
 [IPv6:2607:f8b0:4864:20::82c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 64AD2424AD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 05:54:16 +0000 (UTC)
Received: by mail-qt1-x82c.google.com with SMTP id
 d75a77b69052e-4582fa01090so166301cf.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2024 22:54:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727416455; x=1728021255;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Fbg8QJSSUgH7Q4nHSRemybsPSlB855qz0uznqiadyvc=;
 b=iTt4GoTesb6eewwvPE0tw1WcKF62K3v3ruRhK8mo/dbP+iY6BtknTPwgyZA2F0vhIz
 H5rKX0CMCkYSAoQM9I/mM6fg8fXcHBWxxOx1NqasSgEAmEPffvAy4xpnuJunlc5a1m7+
 Sw8wAg4fcUk0ilQjlxXd7DHzf8br9jl47uguGHMkDS69b5KyHJJPk3GL9HhwVq3wrxFd
 J1z9hz+yHl+hbfpwsmv+WcyUKM9Bs4VVIH8AKTnth+57paCNIxAzCABbqw75wuKDd6Ym
 W9Htj8PwzSqSqXYW8GXfw1wlE5tU1sAhqiory8PCIpHGcUFhgR1sMta9oZ7b4p/gOuMo
 fsfQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU852ZZQ1kJoCwwF6bxkGhAg8EYyErrTV3RD78J0WCw3R4x+elxQ6Q/Jg7+svXu2Vyyt92yXzm8t4Q7aRFVVZU=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx8Vo/zDNCU1CW73WxHkNMt5pF8CvXiOCGdOa0lDZ5YrTMwGX+G
 Xfk7G5HQAsXUf0nq0uu2RlTAhGGO6gTTNqn5bZNBi2KX3x8YKn2gcJlc8Kc7pgCtnejFnEUQ6ZC
 fXuFQZNqGCcsprErR46V4YBaxs8I4MbN8cBTP
X-Google-Smtp-Source: AGHT+IFlWAzqms00GpX5qYW9TQZFSIQORw0rsVCeZaOGfdUcQ3vPP90oLkUJ8sEZ5IgWc6qBEG83z217FGnc5KOy/AE=
X-Received: by 2002:a05:622a:7d0e:b0:453:58b6:e022 with SMTP id
 d75a77b69052e-45ca02b0365mr2089571cf.28.1727416455179; Thu, 26 Sep 2024
 22:54:15 -0700 (PDT)
MIME-Version: 1.0
References: <20240925075707.3970187-1-linyunsheng@huawei.com>
 <20240925075707.3970187-3-linyunsheng@huawei.com>
 <CAHS8izOxugzWJDTc-4CWqaKABTj=J4OHs=Lcb=SE9r8gX0J+yg@mail.gmail.com>
 <842c8cc6-f716-437a-bc98-70bc26d6fd38@huawei.com>
In-Reply-To: <842c8cc6-f716-437a-bc98-70bc26d6fd38@huawei.com>
From: Mina Almasry <almasrymina@google.com>
Date: Thu, 26 Sep 2024 22:54:01 -0700
Message-ID: <CAHS8izN-3Ooiexsr+Xp2234=GqMUy0sTTMqExKVkXAgmjeWQ6w@mail.gmail.com>
To: Yunsheng Lin <linyunsheng@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1727416455; x=1728021255; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Fbg8QJSSUgH7Q4nHSRemybsPSlB855qz0uznqiadyvc=;
 b=XHDxMLsQE5A3AMSx4e/Ybgcr3KXiSzzcv4sutLJbTgCWFQhnV0aK5FbvN5BCMU7BKE
 OuTVgbOqaaxYgFPiky/4dE9bcaea3bq1Kedks/ToG1mBbSkmRYObid6EfFVDjtIJNO0D
 wj/4UOIR+D7CDGm99fDThnnBJzmMAZ8Zar92tOmkzG0NxtA5tJV6QYmLhrl42HeZu8H3
 c4OKYYqBV+8tFp+ym0QLrjuv50QSdDK8CIRvQuG/FiAix7re+76KCKTuNJ28/sQdbg8C
 SjyxpMDwZyKkeEGtI3tsW1BuHrEyWxu7itXy5i1N6hpzvwPs67+RRidXgwvIbfJQOW9w
 ny5g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=XHDxMLsQ
Subject: Re: [Intel-wired-lan] [PATCH net v2 2/2] page_pool: fix IOMMU crash
 when driver has already unbound
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
Cc: imx@lists.linux.dev, Alexei Starovoitov <ast@kernel.org>,
 Alexander Duyck <alexander.duyck@gmail.com>, linux-mm@kvack.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Shenwei Wang <shenwei.wang@nxp.com>, Ryder Lee <ryder.lee@mediatek.com>,
 Daniel Borkmann <daniel@iogearbox.net>, linux-rdma@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, IOMMU <iommu@lists.linux.dev>,
 liuyonglong@huawei.com, Clark Wang <xiaoning.wang@nxp.com>,
 zhangkun09@huawei.com, fanghaiqing@huawei.com, pabeni@redhat.com,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>, Kalle Valo <kvalo@kernel.org>,
 Sean Wang <sean.wang@mediatek.com>, Wei Fang <wei.fang@nxp.com>,
 kuba@kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Leon Romanovsky <leon@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tariq Toukan <tariqt@nvidia.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, netdev@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 Shayne Chen <shayne.chen@mediatek.com>, Saeed Mahameed <saeedm@nvidia.com>,
 davem@davemloft.net, Felix Fietkau <nbd@nbd.name>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Sep 26, 2024 at 8:58=E2=80=AFPM Yunsheng Lin <linyunsheng@huawei.co=
m> wrote:
>
> On 2024/9/27 2:15, Mina Almasry wrote:
> >
> >> In order not to do the dma unmmapping after driver has already
> >> unbound and stall the unloading of the networking driver, add
> >> the pool->items array to record all the pages including the ones
> >> which are handed over to network stack, so the page_pool can
> >> do the dma unmmapping for those pages when page_pool_destroy()
> >> is called.
> >
> > One thing I could not understand from looking at the code: if the
> > items array is in the struct page_pool, why do you need to modify the
> > page_pool entry in the struct page and in the struct net_iov? I think
> > the code could be made much simpler if you can remove these changes,
> > and you wouldn't need to modify the public api of the page_pool.
>
> As mentioned in [1]:
> "There is no space in 'struct page' to track the inflight pages, so
> 'pp' in 'struct page' is renamed to 'pp_item' to enable the tracking
> of inflight page"
>
> As we still need pp for "struct page_pool" for page_pool_put_page()
> related API, the container_of() trick is used to get the pp from the
> pp_item.
>
> As you had changed 'struct net_iov' to be mirroring the 'struct page',
> so change 'struct net_iov' part accordingly.
>
> 1. https://lore.kernel.org/all/50a463d5-a5a1-422f-a4f7-d3587b12c265@huawe=
i.com/
>

I'm not sure we need the pages themselves to have the list of pages
that need to be dma unmapped on page_pool_destroy. The pool can have
the list of pages that need to be unmapped on page_pool_destroy, and
the individual pages need not track them, unless I'm missing
something.

> >
> >> As the pool->items need to be large enough to avoid
> >> performance degradation, add a 'item_full' stat to indicate the
> >> allocation failure due to unavailability of pool->items.
> >>
> >
> > I'm not sure there is any way to size the pool->items array correctly.
>
> Currently the size of pool->items is calculated in page_pool_create_percp=
u()
> as below, to make sure the size of pool->items is somewhat twice of the
> size of pool->ring so that the number of page sitting in the driver's rx
> ring waiting for the new packet is the similar to the number of page that=
 is
> still being handled in the network stack as most drivers seems to set the
> pool->pool_size according to their rx ring size:
>
> +#define PAGE_POOL_MIN_INFLIGHT_ITEMS           512
> +       unsigned int item_cnt =3D (params->pool_size ? : 1024) +
> +                               PP_ALLOC_CACHE_SIZE + PAGE_POOL_MIN_INFLI=
GHT_ITEMS;
> +       item_cnt =3D roundup_pow_of_two(item_cnt);
>

I'm not sure it's OK to add a limitation to the page_pool that it can
only allocate N pages. At the moment, AFAIU, N is unlimited and it may
become a regression if we add a limitation.

> > Can you use a data structure here that can grow? Linked list or
> > xarray?
> >
> > AFAIU what we want is when the page pool allocates a netmem it will
> > add the netmem to the items array, and when the pp releases a netmem
> > it will remove it from the array. Both of these operations are slow
> > paths, right? So the performance of a data structure more complicated
> > than an array may be ok. bench_page_pool_simple will tell for sure.
>
> The question would be why do we need the pool->items to grow with the
> additional overhead and complication by dynamic allocation of item, using
> complicated data structure and concurrent handling?
>
> As mentioned in [2], it was the existing semantics, but it does not means
> we need to keep it. The changing of semantics seems like an advantage
> to me, as we are able to limit how many pages is allowed to be used by
> a page_pool instance.
>
> 2. https://lore.kernel.org/all/2fb8d278-62e0-4a81-a537-8f601f61e81d@huawe=
i.com/
>
> >
> >> Note, the devmem patchset seems to make the bug harder to fix,
> >> and may make backporting harder too. As there is no actual user
> >> for the devmem and the fixing for devmem is unclear for now,
> >> this patch does not consider fixing the case for devmem yet.
> >>
> >
> > net_iovs don't hit this bug, dma_unmap_page_attrs() is never called on
> > them, so no special handling is needed really. However for code
>
> I am really doubtful about your above claim. As at least the below
> implementaion of dma_buf_unmap_attachment_unlocked() called in
> __net_devmem_dmabuf_binding_free() seems be using the DMA API directly:
>
> https://elixir.bootlin.com/linux/v6.7-rc8/source/drivers/gpu/drm/amd/amdg=
pu/amdgpu_dma_buf.c#L215
>
> Or am I missing something obvious here?
>

I mean currently net_iovs don't hit the __page_pool_release_page_dma
function that causes the crash in the stack trace. The dmabuf layer
handles the unmapping when the dmabuf dies (I assume correctly).

--=20
Thanks,
Mina
