Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D41E988132
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Sep 2024 11:22:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1185C840E3;
	Fri, 27 Sep 2024 09:22:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9X5fZOC7JvGd; Fri, 27 Sep 2024 09:22:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B5ED9840F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727428934;
	bh=u12Tug5k2bdyzIU9WiqUE2EObFB7IXUcT3bKNNPZCB0=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PN/Xr4Gz8V6sqVcPo3Djpta4G3QJiMkmRDgVTjF6gGzqPv7Y91aMXNSpieFgax+6o
	 Jok/yCJQw+/duGxwG3AsItx2zYf4NxkLYnh0vsFnElKJ1AUN4y/LWEWDbIXWLnsAx1
	 Ldm+WjyEboqH09liZ/bd5g4FMP4BU/JJ0YkSwq31ajXkxX4KoGOaCOhVa74Z6vIsno
	 RUFHLUrNpII88VJiJA9eSuPnnymh8aAb68pEyeEHtQnMPJzAEvr/RycV7r1atR36ng
	 mKzUBpd1LAn1+GvpLt6jsUiCwFuFbPZRXDJtVV80XSe6SimC4TPz4m+HJLFgf2fLou
	 /Y4bMZcDd+w1w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B5ED9840F2;
	Fri, 27 Sep 2024 09:22:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B45441BF2F0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 09:22:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AE56B81441
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 09:22:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O6gpWs-WrlHw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Sep 2024 09:22:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::102d; helo=mail-pj1-x102d.google.com;
 envelope-from=ilias.apalodimas@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5A2D2813EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5A2D2813EC
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com
 [IPv6:2607:f8b0:4864:20::102d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5A2D2813EC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 09:22:11 +0000 (UTC)
Received: by mail-pj1-x102d.google.com with SMTP id
 98e67ed59e1d1-2e06fade5eeso1556016a91.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 02:22:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727428930; x=1728033730;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=u12Tug5k2bdyzIU9WiqUE2EObFB7IXUcT3bKNNPZCB0=;
 b=whCNYArSQCypx6X8zlEzTbaLymIrYz2jzxw5fgiJu3gcDMvIvbZfv+FI5aSBbeYhwZ
 axVKLFqlvUWAVm1WUFcm2GQj90VFcsbdGOCeblIqv8Bnh3ZNuoPVaEN1CHg727yTKNVl
 2LMlNIHlL26XyHPQ9QnXvgjV0dCG1oAJFqoHaIV4vB5+UFoUwfZaqgvJe5ugps0Ck16z
 oKl/7m6qVv+rnTVxoUVT2k8fzQiDhE4Pf+f+Vo6moUjEEMmmGUXjCn5PAnAizN0xtKq3
 soUW7OBJqlMTrCvl3BAlS81z8/lJWZrs0D9nVHl0oc6jtGIkWirc0ODz6RdXQEvqeEyK
 g3sA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWTHLVUj6UsN5RZ3euNOo/n+q3C7SngRf5R08Y8VKsfzJi0L0zKZXqAL6StP0c5+PWseJgO6m61De1ADLdnZPg=@lists.osuosl.org
X-Gm-Message-State: AOJu0YymvVKa8RMG4NOWeMiYHnoi6LDkC/3PvdgwiEM6L+DFn+8P0RVb
 FKc50IGhjgD6UdpPZWEYfrE8Cbty4ldY8ZLnlfzUgW5TIRBQA88ntvl4A1H0XLVhp+MpThihptz
 TayYiVdMNLY80aS/hg9rV39B/nMQiepcyRSXp4A==
X-Google-Smtp-Source: AGHT+IGhQGOutUtxLVOzhj1pZESUxIJEMnWirkI07rvkOdCYDPIQ+9U4QYWB0UPwoiObJJWrhA4Koam3DQfasHbzz4I=
X-Received: by 2002:a17:90a:4b07:b0:2e0:9147:7db5 with SMTP id
 98e67ed59e1d1-2e0b8ed4cebmr2795273a91.38.1727428930437; Fri, 27 Sep 2024
 02:22:10 -0700 (PDT)
MIME-Version: 1.0
References: <20240925075707.3970187-1-linyunsheng@huawei.com>
 <20240925075707.3970187-3-linyunsheng@huawei.com>
 <CAHS8izOxugzWJDTc-4CWqaKABTj=J4OHs=Lcb=SE9r8gX0J+yg@mail.gmail.com>
 <842c8cc6-f716-437a-bc98-70bc26d6fd38@huawei.com>
In-Reply-To: <842c8cc6-f716-437a-bc98-70bc26d6fd38@huawei.com>
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
Date: Fri, 27 Sep 2024 12:21:33 +0300
Message-ID: <CAC_iWjLgNOtsbhqrhvvEz2C3S668qB8KatL_W+tPHMSkDrNS=w@mail.gmail.com>
To: Yunsheng Lin <linyunsheng@huawei.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1727428930; x=1728033730; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=u12Tug5k2bdyzIU9WiqUE2EObFB7IXUcT3bKNNPZCB0=;
 b=uhYJ3Ln/nVovM6rG9ooH+yJ0xeASdjuWxNHksypswXaLzITOemYKKhzKVu2O2lDREJ
 QH6bxhbQD9IiSkdtkWrID8pMWSCJ7+G36BEOgwdspQFWUh249LBhnVx4S/456L0LLlkj
 Sofir2qKBrWcKNlDtCsLQiEwa9JYgBeib49dO47DvVQJlbs7dWSrN8wB7N8ie+tbaxiN
 dBT952v30Qv6wrwcA/4498nMVTj9WSSt4cGCEiaTrR4yua7ZAh2HWn6uYgjOxc+63+i+
 lpvd1OFpXx3tzMpZWqfiCQbESPomN3i34jju3e15IMYF8bqN3YIs73zkp4RzpnZM8Hfg
 lG+g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=uhYJ3Ln/
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
 Shenwei Wang <shenwei.wang@nxp.com>, Mina Almasry <almasrymina@google.com>,
 Ryder Lee <ryder.lee@mediatek.com>, Daniel Borkmann <daniel@iogearbox.net>,
 linux-rdma@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
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
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, netdev@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 Shayne Chen <shayne.chen@mediatek.com>, Saeed Mahameed <saeedm@nvidia.com>,
 davem@davemloft.net, Felix Fietkau <nbd@nbd.name>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Yunsheng

On Fri, 27 Sept 2024 at 06:58, Yunsheng Lin <linyunsheng@huawei.com> wrote:
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

I have the same feeling as Mina here. First of all, we do have an
unsigned long in struct page we use for padding IIRC. More
importantly, though, why does struct page need to know about this?
Can't we have the same information in page pool?
When the driver allocates pages it does via page_pool_dev_alloc_XXXXX
or something similar. Cant we do what you suggest here ? IOW when we
allocate a page we put it in a list, and when that page returns to
page_pool (and it's mapped) we remove it.

Thanks
/Ilias
>
> As we still need pp for "struct page_pool" for page_pool_put_page()
> related API, the container_of() trick is used to get the pp from the
> pp_item.
>
> As you had changed 'struct net_iov' to be mirroring the 'struct page',
> so change 'struct net_iov' part accordingly.
>
> 1. https://lore.kernel.org/all/50a463d5-a5a1-422f-a4f7-d3587b12c265@huawei.com/
>
> >
> >> As the pool->items need to be large enough to avoid
> >> performance degradation, add a 'item_full' stat to indicate the
> >> allocation failure due to unavailability of pool->items.
> >>
> >
> > I'm not sure there is any way to size the pool->items array correctly.
>
> Currently the size of pool->items is calculated in page_pool_create_percpu()
> as below, to make sure the size of pool->items is somewhat twice of the
> size of pool->ring so that the number of page sitting in the driver's rx
> ring waiting for the new packet is the similar to the number of page that is
> still being handled in the network stack as most drivers seems to set the
> pool->pool_size according to their rx ring size:
>
> +#define PAGE_POOL_MIN_INFLIGHT_ITEMS           512
> +       unsigned int item_cnt = (params->pool_size ? : 1024) +
> +                               PP_ALLOC_CACHE_SIZE + PAGE_POOL_MIN_INFLIGHT_ITEMS;
> +       item_cnt = roundup_pow_of_two(item_cnt);
>
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
> 2. https://lore.kernel.org/all/2fb8d278-62e0-4a81-a537-8f601f61e81d@huawei.com/
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
> https://elixir.bootlin.com/linux/v6.7-rc8/source/drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c#L215
>
> Or am I missing something obvious here?
>
> > quality reasons lets try to minimize the number of devmem or memory
> > provider checks in the code, if possible.
> >
