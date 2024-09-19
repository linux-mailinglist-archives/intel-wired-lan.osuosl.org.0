Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BDA97C83F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Sep 2024 12:54:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B4EDD410F9;
	Thu, 19 Sep 2024 10:54:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zb_DU2zRZbOr; Thu, 19 Sep 2024 10:54:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8113A4063C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726743279;
	bh=eJPKc6WpQJVo+cZJ0F30D2qYLx9MeNdOoR7H0Px8Ma4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wM65YLmDC3wM0XkSPqGEoyKL9myNaRVUMYvVHogd46x1fIpdjyNmdrfBkDUxtdtA7
	 A0jw/lLQ8HaNVBkADlyI+d3hvxj0y2AIrQmPmmY752it7pASjHtFmIZN26T+gpUKSw
	 Sx8Vs05YC+dhrG0Aq5o7GsHNrYdZsH6BbP1KscP2u74+JfMGQXDnknM93FFQ7jxUdj
	 raOhJJGsgkK5W3Ak7qW1yZ0pVWad96M9uyBaRSnfaHGAAHsu4cZRhW9B6m7aorZoGt
	 LqkUYBiTi/bjghSmbDOq1w/LG4K5cxHoVyRuk18g+HD3Fs/qvNevex1yjfnVDuLMny
	 dcDAo5wx5y8rg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8113A4063C;
	Thu, 19 Sep 2024 10:54:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D99111BF42C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2024 10:54:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C721D427F8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2024 10:54:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nVwNfsCszgwy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Sep 2024 10:54:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.188;
 helo=szxga02-in.huawei.com; envelope-from=linyunsheng@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A1466427F4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A1466427F4
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A1466427F4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2024 10:54:34 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.163.174])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4X8XQv3YptzmYlT;
 Thu, 19 Sep 2024 18:52:23 +0800 (CST)
Received: from dggpemf200006.china.huawei.com (unknown [7.185.36.61])
 by mail.maildlp.com (Postfix) with ESMTPS id 5515E140390;
 Thu, 19 Sep 2024 18:54:27 +0800 (CST)
Received: from [10.67.120.129] (10.67.120.129) by
 dggpemf200006.china.huawei.com (7.185.36.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Thu, 19 Sep 2024 18:54:26 +0800
Message-ID: <50a463d5-a5a1-422f-a4f7-d3587b12c265@huawei.com>
Date: Thu, 19 Sep 2024 18:54:26 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ilias Apalodimas <ilias.apalodimas@linaro.org>
References: <20240918111826.863596-1-linyunsheng@huawei.com>
 <20240918111826.863596-3-linyunsheng@huawei.com>
 <CAC_iWjK=G7Oo5=pN2QunhasgDC6NyC1L+96jigX7u9ad+PbYng@mail.gmail.com>
Content-Language: en-US
From: Yunsheng Lin <linyunsheng@huawei.com>
In-Reply-To: <CAC_iWjK=G7Oo5=pN2QunhasgDC6NyC1L+96jigX7u9ad+PbYng@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.67.120.129]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpemf200006.china.huawei.com (7.185.36.61)
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: Re: [Intel-wired-lan] [PATCH net 2/2] page_pool: fix IOMMU crash
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
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, netdev@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 Shayne Chen <shayne.chen@mediatek.com>, Saeed Mahameed <saeedm@nvidia.com>,
 davem@davemloft.net, Felix Fietkau <nbd@nbd.name>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2024/9/19 1:06, Ilias Apalodimas wrote:
> Hi Yunsheng,
> 
> Thanks for looking into this!
> 
> On Wed, 18 Sept 2024 at 14:24, Yunsheng Lin <linyunsheng@huawei.com> wrote:
>>
>> Networking driver with page_pool support may hand over page
>> still with dma mapping to network stack and try to reuse that
>> page after network stack is done with it and passes it back
>> to page_pool to avoid the penalty of dma mapping/unmapping.
> 
> I think you can shorten this to "If recycling and DMA mapping are
> enabled during the pool creation"

I am not sure if I understand the 'recycling' part here. Is the
'recycling' part referring to whether skb_mark_for_recycle() is
called to enable recycling for the skb? Is there still any driver
with page_pool support but doesn't call skb_mark_for_recycle()
when handing over page to network stack?

For the 'DMA mapping' part, as there is no space in 'struct
page' to track the inflight pages, so 'pp' in 'struct page'
is renamed to 'pp_item' to enable the tracking of inflight
page. I tried shortening this for 'pool->dma_map being false'
when coding, but it seems differentiating the same field in
'struct page' doesn't make much sense according to 'pool->dma_map'
as it means we might need to add an union in 'struct page' for
that to work and add additional checking to decide if it is 'pp'
or 'pp_item'.

> 
>> With all the caching in the network stack, some pages may be
>> held in the network stack without returning to the page_pool
>> soon enough, and with VF disable causing the driver unbound,
>> the page_pool does not stop the driver from doing it's
>> unbounding work, instead page_pool uses workqueue to check
>> if there is some pages coming back from the network stack
>> periodically, if there is any, it will do the dma unmmapping
>> related cleanup work.
>>
>> As mentioned in [1], attempting DMA unmaps after the driver
>> has already unbound may leak resources or at worst corrupt
>> memory. Fundamentally, the page pool code cannot allow DMA
>> mappings to outlive the driver they belong to.
>>
>> Currently it seems there are at least two cases that the page
>> is not released fast enough causing dma unmmapping done after
>> driver has already unbound:
>> 1. ipv4 packet defragmentation timeout: this seems to cause
>>    delay up to 30 secs:
>>
>> 2. skb_defer_free_flush(): this may cause infinite delay if
>>    there is no triggering for net_rx_action().
>>
>> In order not to do the dma unmmapping after driver has already
>> unbound and stall the unloading of the networking driver, add
>> the pool->items array to record all the pages including the ones
>> which are handed over to network stack, so the page_pool can
>> do the dma unmmapping for those pages when page_pool_destroy()
>> is called.
> 
> So, I was thinking of a very similar idea. But what do you mean by
> "all"? The pages that are still in caches (slow or fast) of the pool
> will be unmapped during page_pool_destroy().

Yes, it includes the one in pool->alloc and pool->ring.

> Don't we 'just' need a list of the inflight packets and their pages or
> fragments? What we could do is go through that list and unmap these
> pages during page_pool_destroy().

The main reason for that is to avoid the overhead of page_pool_item_del()
and page_pool_item_add() when allocing/freeing page from/to pool->alloc
and pool->ring.

Yes, including the pages in pool->ring seems to make the pool->ring
somewhat duplicated, maybe we can remove pool->ring if we can make
and prove 'pool->items' is performing better than pool->ring in the
future?

> 
> I'll have a closer look at the patch tomorrow

Thanks for the reviewing.

> 
> Thanks!
> /Ilias
> 
