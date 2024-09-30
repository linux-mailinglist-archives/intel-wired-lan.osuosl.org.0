Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0CE989CEA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 10:38:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B7D0C605F4;
	Mon, 30 Sep 2024 08:38:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id amNHwLUpTBDy; Mon, 30 Sep 2024 08:38:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F3F9605F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727685535;
	bh=vb2zM4IqM30wmhgEjy5HJ1zOzTDut+wSQnIln9R+sY0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2Kn49a9k9La7zVt4KfWGHgjYjpXLikhhrKCFlC7czNCN9NUoY0kDcwJdb3FSlA1e0
	 +G6POEPNTLG6gjS/CjKbjNY4GIwKa2GEgxS4ZtN+fqSQvO+N4oSNlzjJohNxILyXof
	 F720KGysxcYEfDeE6sikRVhqibykFJzcV7CKNJu/nfjxa/EqKJq3YkqAkYuFXSZFkf
	 kse7RJN2pFIP7NV3Bh+Qoywqv0hFwrLxCKZuypBr11Udn9Q/XU8Yyce/BaKGvTkN1u
	 EAd/qWKo1fpk4BNMCtK5IV2lFhbWB58J6aOFwJLKU9xbsfH+cYiOC9R9Af/0ZkLOe7
	 2XL6mv0OoJ+1g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F3F9605F9;
	Mon, 30 Sep 2024 08:38:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 929421BF42E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 08:38:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 806E6605F1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 08:38:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aPT0ELxT8gi7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 08:38:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.35;
 helo=szxga07-in.huawei.com; envelope-from=linyunsheng@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6861160017
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6861160017
Received: from szxga07-in.huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6861160017
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 08:38:50 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.162.112])
 by szxga07-in.huawei.com (SkyGuard) with ESMTP id 4XHDwY3YV3z1SC0g;
 Mon, 30 Sep 2024 16:37:49 +0800 (CST)
Received: from dggpemf200006.china.huawei.com (unknown [7.185.36.61])
 by mail.maildlp.com (Postfix) with ESMTPS id B68231400CB;
 Mon, 30 Sep 2024 16:38:43 +0800 (CST)
Received: from [10.67.120.129] (10.67.120.129) by
 dggpemf200006.china.huawei.com (7.185.36.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Mon, 30 Sep 2024 16:38:43 +0800
Message-ID: <ed399e31-cfe5-4504-9537-88879afac53d@huawei.com>
Date: Mon, 30 Sep 2024 16:38:42 +0800
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
 <934d601f-be43-4e04-b126-dc86890a4bfa@huawei.com>
 <CAC_iWjL7m4ZL2W2OZM5F22dLvZhxU6fyCXV_xjyGf+W7UP43EQ@mail.gmail.com>
 <ac2eec69-8f44-4adb-8182-02c78625851d@huawei.com>
 <CAC_iWj+Shb6buVf+wZaWe-NZ+UVxmW9DYqsTiL27U+V_Ko_65w@mail.gmail.com>
Content-Language: en-US
From: Yunsheng Lin <linyunsheng@huawei.com>
In-Reply-To: <CAC_iWj+Shb6buVf+wZaWe-NZ+UVxmW9DYqsTiL27U+V_Ko_65w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.67.120.129]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggpemf200006.china.huawei.com (7.185.36.61)
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
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

On 2024/9/30 16:09, Ilias Apalodimas wrote:
> On Sun, 29 Sept 2024 at 05:44, Yunsheng Lin <linyunsheng@huawei.com> wrote:
>>
>> On 2024/9/28 15:34, Ilias Apalodimas wrote:
>>
>> ...
>>
>>>
>>> Yes, that wasn't very clear indeed, apologies for any confusion. I was
>>> trying to ask on a linked list that only lives in struct page_pool.
>>> But I now realize this was a bad idea since the lookup would be way
>>> slower.
>>>
>>>> If I understand question correctly, the single/doubly linked list
>>>> is more costly than array as the page_pool case as my understanding.
>>>>
>>>> For single linked list, it doesn't allow deleting a specific entry but
>>>> only support deleting the first entry and all the entries. It does support
>>>> lockless operation using llist, but have limitation as below:
>>>> https://elixir.bootlin.com/linux/v6.7-rc8/source/include/linux/llist.h#L13
>>>>
>>>> For doubly linked list, it needs two pointer to support deleting a specific
>>>> entry and it does not support lockless operation.
>>>
>>> I didn't look at the patch too carefully at first. Looking a bit
>>> closer now, the array is indeed better, since the lookup is faster.
>>> You just need the stored index in struct page to find the page we need
>>> to unmap. Do you remember if we can reduce the atomic pp_ref_count to
>>> 32bits? If so we can reuse that space for the index. Looking at it
>>
>> For 64 bits system, yes, we can reuse that.
>> But for 32 bits system, we may have only 16 bits for each of them, and it
>> seems that there is no atomic operation for variable that is less than 32
>> bits.
>>
>>> requires a bit more work in netmem, but that's mostly swapping all the
>>> atomic64 calls to atomic ones.
>>>
>>>>
>>>> For pool->items, as the alloc side is protected by NAPI context, and the
>>>> free side use item->pp_idx to ensure there is only one producer for each
>>>> item, which means for each item in pool->items, there is only one consumer
>>>> and one producer, which seems much like the case when the page is not
>>>> recyclable in __page_pool_put_page, we don't need a lock protection when
>>>> calling page_pool_return_page(), the 'struct page' is also one consumer
>>>> and one producer as the pool->items[item->pp_idx] does:
>>>> https://elixir.bootlin.com/linux/v6.7-rc8/source/net/core/page_pool.c#L645
>>>>
>>>> We only need a lock protection when page_pool_destroy() is called to
>>>> check if there is inflight page to be unmapped as a consumer, and the
>>>> __page_pool_put_page() may also called to unmapped the inflight page as
>>>> another consumer,
>>>
>>> Thanks for the explanation. On the locking side, page_pool_destroy is
>>> called once from the driver and then it's either the workqueue for
>>> inflight packets or an SKB that got freed and tried to recycle right?
>>> But do we still need to do all the unmapping etc from the delayed
>>> work? Since the new function will unmap all packets in
>>> page_pool_destroy, we can just skip unmapping when the delayed work
>>> runs
>>
>> Yes, the pool->dma_map is clear in page_pool_item_uninit() after it does
>> the unmapping for all inflight pages with the protection of pool->destroy_lock,
>> so that the unmapping is skipped in page_pool_return_page() when those inflight
>> pages are returned back to page_pool.
> 
> Ah yes, the entire destruction path is protected which seems correct.
> Instead of that WARN_ONCE in page_pool_item_uninit() can we instead
> check the number of inflight packets vs what we just unmapped? IOW
> check 'mask' against what page_pool_inflight() gives you and warn if
> those aren't equal.
Yes, it seems it is quite normal to trigger the warning from testing,
it makes sense to check it against page_pool_inflight() to catch some
bug of tracking/calculating inflight pages.

> 
> 
> Thanks
> /Ilias
>>
>>>
