Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BE33D988357
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Sep 2024 13:29:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 497CE614E5;
	Fri, 27 Sep 2024 11:29:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XjZJcrFNwKQ2; Fri, 27 Sep 2024 11:29:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19742614E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727436573;
	bh=f/WFEz0A5bvXUvo45jjUU1d1+FxqRULkPKv8aYb2Y+c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hRnksQPpgx2ZjZboM5rryO+wXNxeQcOhLXJ5YviTe4YtGBKhVl6Bo3JEkcX7scpi+
	 cjST8s3luAuWfjspaJo4V/5gqmZ90M1AjM8tO5ETCh+BuLSsHkTpGCFSWA0MVkvRHB
	 8KsmFHDd7Um2/O0/BDPZegU4lwmclZ6dZIIK6L59KLBg+r7iUeovcPYtEGq6rNA+np
	 8WHY8LaRiBSfuB4zApMRVat7/hO/Vf1lacqF3t5n71Z+cxLKwHlUoILO8AdGlKZ5Bs
	 i1Ei8TzT9tfMcbaJpgNra50DxDkAZU7K06XPuuaci2DyxIY0dwoCyi0sCw36iYBxxN
	 SeZ1v22dItHAg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 19742614E9;
	Fri, 27 Sep 2024 11:29:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1128A1BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 11:29:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F1D8942526
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 11:29:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uAhbkjCGuVwL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Sep 2024 11:29:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.191;
 helo=szxga05-in.huawei.com; envelope-from=linyunsheng@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BEAAB4251F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BEAAB4251F
Received: from szxga05-in.huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BEAAB4251F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 11:29:28 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.88.214])
 by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4XFSrx2nMcz2QTtc;
 Fri, 27 Sep 2024 19:28:33 +0800 (CST)
Received: from dggpemf200006.china.huawei.com (unknown [7.185.36.61])
 by mail.maildlp.com (Postfix) with ESMTPS id 2ACA31A016C;
 Fri, 27 Sep 2024 19:29:23 +0800 (CST)
Received: from [10.67.120.129] (10.67.120.129) by
 dggpemf200006.china.huawei.com (7.185.36.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Fri, 27 Sep 2024 19:29:22 +0800
Message-ID: <934d601f-be43-4e04-b126-dc86890a4bfa@huawei.com>
Date: Fri, 27 Sep 2024 19:29:22 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ilias Apalodimas <ilias.apalodimas@linaro.org>
References: <20240925075707.3970187-1-linyunsheng@huawei.com>
 <20240925075707.3970187-3-linyunsheng@huawei.com>
 <CAHS8izOxugzWJDTc-4CWqaKABTj=J4OHs=Lcb=SE9r8gX0J+yg@mail.gmail.com>
 <842c8cc6-f716-437a-bc98-70bc26d6fd38@huawei.com>
 <CAC_iWjLgNOtsbhqrhvvEz2C3S668qB8KatL_W+tPHMSkDrNS=w@mail.gmail.com>
 <0ef315df-e8e9-41e8-9ba8-dcb69492c616@huawei.com>
 <CAC_iWjKeajwn3otjdEekE6VDLHGEvqmnQRwpN5R3yHj8UpEiDw@mail.gmail.com>
Content-Language: en-US
From: Yunsheng Lin <linyunsheng@huawei.com>
In-Reply-To: <CAC_iWjKeajwn3otjdEekE6VDLHGEvqmnQRwpN5R3yHj8UpEiDw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.67.120.129]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpemf200006.china.huawei.com (7.185.36.61)
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
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

On 2024/9/27 17:58, Ilias Apalodimas wrote:

...

>>
>>> importantly, though, why does struct page need to know about this?
>>> Can't we have the same information in page pool?
>>> When the driver allocates pages it does via page_pool_dev_alloc_XXXXX
>>> or something similar. Cant we do what you suggest here ? IOW when we
>>> allocate a page we put it in a list, and when that page returns to
>>> page_pool (and it's mapped) we remove it.
>>
>> Yes, that is the basic idea, but the important part is how to do that
>> with less performance impact.
> 
> Yes, but do you think that keeping that list of allocated pages in
> struct page_pool will end up being more costly somehow compared to
> struct page?

I am not sure if I understand your above question here.
I am supposing the question is about what's the cost between using
single/doubly linked list for the inflight pages or using a array
for the inflight pages like this patch does using pool->items?
If I understand question correctly, the single/doubly linked list
is more costly than array as the page_pool case as my understanding.

For single linked list, it doesn't allow deleting a specific entry but
only support deleting the first entry and all the entries. It does support
lockless operation using llist, but have limitation as below:
https://elixir.bootlin.com/linux/v6.7-rc8/source/include/linux/llist.h#L13

For doubly linked list, it needs two pointer to support deleting a specific
entry and it does not support lockless operation.

For pool->items, as the alloc side is protected by NAPI context, and the
free side use item->pp_idx to ensure there is only one producer for each
item, which means for each item in pool->items, there is only one consumer
and one producer, which seems much like the case when the page is not
recyclable in __page_pool_put_page, we don't need a lock protection when
calling page_pool_return_page(), the 'struct page' is also one consumer
and one producer as the pool->items[item->pp_idx] does:
https://elixir.bootlin.com/linux/v6.7-rc8/source/net/core/page_pool.c#L645

We only need a lock protection when page_pool_destroy() is called to
check if there is inflight page to be unmapped as a consumer, and the
__page_pool_put_page() may also called to unmapped the inflight page as
another consumer, there is why the 'destroy_lock' is added for protection
when pool->destroy_cnt > 0.

> 
> Thanks
> /Ilias
