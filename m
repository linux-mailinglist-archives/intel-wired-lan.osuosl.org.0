Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 821C8987D62
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Sep 2024 05:58:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0A8F6419E4;
	Fri, 27 Sep 2024 03:58:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y9l4D8pBioes; Fri, 27 Sep 2024 03:58:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 841DB419E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727409489;
	bh=PjUnBPn5EF1kvH/KA0jt5WOp4dBCwCnfOkcGltIjG1k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FBrmnki2C3Dew9erN6erghB5xBhGSodZKPFw/GDM41IkEoKCNnkDFNyz/fFW5ba9D
	 FfZWxsWZ0OieaMDqpUGtC/e3a3WdRrnoibrkdAl4QiTXiYb4szDFK8zZ8JjzdYjvE+
	 8MH1YP+5u9xeYYzrGd11u5/Qpo8nvW23pO1PYs6ryhqWCWbbXaffraciXzScIAZct/
	 eLr8IdK0/BYMocQ6FKDpPAI3wkJw1eRPlNiRPzgp34LE0aRtGpOEZJBotcXLpq8Nt1
	 xstDs3BKGOSbHnoiYUEy4xDlLTQNHhxkGjSIC2IWw00n62yt6q4Qqfjb8kxzWM/GwA
	 15mJrnAIEhDlQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 841DB419E7;
	Fri, 27 Sep 2024 03:58:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3B7831BF3BA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 03:58:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 29B938464A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 03:58:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0yj5NiVmM9Pc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Sep 2024 03:58:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.188;
 helo=szxga02-in.huawei.com; envelope-from=linyunsheng@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F2B4484647
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F2B4484647
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F2B4484647
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 03:58:05 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.88.194])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4XFGpN5NVMzGq8S;
 Fri, 27 Sep 2024 11:55:40 +0800 (CST)
Received: from dggpemf200006.china.huawei.com (unknown [7.185.36.61])
 by mail.maildlp.com (Postfix) with ESMTPS id B3F901400CF;
 Fri, 27 Sep 2024 11:57:58 +0800 (CST)
Received: from [10.67.120.129] (10.67.120.129) by
 dggpemf200006.china.huawei.com (7.185.36.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Fri, 27 Sep 2024 11:57:58 +0800
Message-ID: <842c8cc6-f716-437a-bc98-70bc26d6fd38@huawei.com>
Date: Fri, 27 Sep 2024 11:57:58 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mina Almasry <almasrymina@google.com>
References: <20240925075707.3970187-1-linyunsheng@huawei.com>
 <20240925075707.3970187-3-linyunsheng@huawei.com>
 <CAHS8izOxugzWJDTc-4CWqaKABTj=J4OHs=Lcb=SE9r8gX0J+yg@mail.gmail.com>
Content-Language: en-US
From: Yunsheng Lin <linyunsheng@huawei.com>
In-Reply-To: <CAHS8izOxugzWJDTc-4CWqaKABTj=J4OHs=Lcb=SE9r8gX0J+yg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.67.120.129]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggpemf200006.china.huawei.com (7.185.36.61)
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
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

On 2024/9/27 2:15, Mina Almasry wrote:
> 
>> In order not to do the dma unmmapping after driver has already
>> unbound and stall the unloading of the networking driver, add
>> the pool->items array to record all the pages including the ones
>> which are handed over to network stack, so the page_pool can
>> do the dma unmmapping for those pages when page_pool_destroy()
>> is called.
> 
> One thing I could not understand from looking at the code: if the
> items array is in the struct page_pool, why do you need to modify the
> page_pool entry in the struct page and in the struct net_iov? I think
> the code could be made much simpler if you can remove these changes,
> and you wouldn't need to modify the public api of the page_pool.

As mentioned in [1]:
"There is no space in 'struct page' to track the inflight pages, so
'pp' in 'struct page' is renamed to 'pp_item' to enable the tracking
of inflight page"

As we still need pp for "struct page_pool" for page_pool_put_page()
related API, the container_of() trick is used to get the pp from the
pp_item.

As you had changed 'struct net_iov' to be mirroring the 'struct page',
so change 'struct net_iov' part accordingly.

1. https://lore.kernel.org/all/50a463d5-a5a1-422f-a4f7-d3587b12c265@huawei.com/

> 
>> As the pool->items need to be large enough to avoid
>> performance degradation, add a 'item_full' stat to indicate the
>> allocation failure due to unavailability of pool->items.
>>
> 
> I'm not sure there is any way to size the pool->items array correctly.

Currently the size of pool->items is calculated in page_pool_create_percpu()
as below, to make sure the size of pool->items is somewhat twice of the
size of pool->ring so that the number of page sitting in the driver's rx
ring waiting for the new packet is the similar to the number of page that is
still being handled in the network stack as most drivers seems to set the
pool->pool_size according to their rx ring size:

+#define PAGE_POOL_MIN_INFLIGHT_ITEMS		512
+	unsigned int item_cnt = (params->pool_size ? : 1024) +
+				PP_ALLOC_CACHE_SIZE + PAGE_POOL_MIN_INFLIGHT_ITEMS;
+	item_cnt = roundup_pow_of_two(item_cnt);

> Can you use a data structure here that can grow? Linked list or
> xarray?
> 
> AFAIU what we want is when the page pool allocates a netmem it will
> add the netmem to the items array, and when the pp releases a netmem
> it will remove it from the array. Both of these operations are slow
> paths, right? So the performance of a data structure more complicated
> than an array may be ok. bench_page_pool_simple will tell for sure.

The question would be why do we need the pool->items to grow with the
additional overhead and complication by dynamic allocation of item, using
complicated data structure and concurrent handling?

As mentioned in [2], it was the existing semantics, but it does not means
we need to keep it. The changing of semantics seems like an advantage
to me, as we are able to limit how many pages is allowed to be used by
a page_pool instance.

2. https://lore.kernel.org/all/2fb8d278-62e0-4a81-a537-8f601f61e81d@huawei.com/

> 
>> Note, the devmem patchset seems to make the bug harder to fix,
>> and may make backporting harder too. As there is no actual user
>> for the devmem and the fixing for devmem is unclear for now,
>> this patch does not consider fixing the case for devmem yet.
>>
> 
> net_iovs don't hit this bug, dma_unmap_page_attrs() is never called on
> them, so no special handling is needed really. However for code

I am really doubtful about your above claim. As at least the below
implementaion of dma_buf_unmap_attachment_unlocked() called in
__net_devmem_dmabuf_binding_free() seems be using the DMA API directly:

https://elixir.bootlin.com/linux/v6.7-rc8/source/drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c#L215

Or am I missing something obvious here?

> quality reasons lets try to minimize the number of devmem or memory
> provider checks in the code, if possible.
> 
