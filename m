Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 368DC98488F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Sep 2024 17:24:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D9B8360B3A;
	Tue, 24 Sep 2024 15:24:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id na-YmcH1QK2q; Tue, 24 Sep 2024 15:24:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 081BE60B1D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727191444;
	bh=gbsc/S+S7HQhPPj508Ku1haGxcV7bbpJJEqEmIjfO0A=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gFJZgU1bHwU8GwwU/VjkoJipB8ZRHM9MLsyGLGOratrbYwP4lQYCWcHaos6UjsH2k
	 ayupYnwY6MRfdxQHsPFnP02UkXxwKrDMRk/A5ccplxR8thvLUbuloc4FJoin2Pw4YJ
	 qS/5j7AzcwJHpA0qZn2fOOvf5eHJMBlGe1aQwLHrEM3qC2LB+Yp01AbcddGMJhevLw
	 pZRj0Ejo+bAx09kIUPLlSlRpFGca0LaiDb/15RgLdirzNDNkqMzKBNPj9916x95Xje
	 oAMt/YhMEGEUQGLmyoFOi4PoXs96+zDTI8G6EZ4e7z3TZlRGTelVmOAVyvWWqrpREo
	 RnGXTXylqxUpA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 081BE60B1D;
	Tue, 24 Sep 2024 15:24:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 69A331BF385
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 06:47:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 534D8403E2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 06:47:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qfAxfSoyKqG7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Sep 2024 06:47:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.176.79.56;
 helo=frasgout.his.huawei.com; envelope-from=gur.stavi@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 83B3440359
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 83B3440359
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com
 [185.176.79.56])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 83B3440359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 06:47:11 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.18.186.231])
 by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4XCVl40H3fz6J6DN;
 Tue, 24 Sep 2024 14:46:40 +0800 (CST)
Received: from frapeml500005.china.huawei.com (unknown [7.182.85.13])
 by mail.maildlp.com (Postfix) with ESMTPS id EE8BB140B63;
 Tue, 24 Sep 2024 14:47:07 +0800 (CST)
Received: from china (10.200.201.82) by frapeml500005.china.huawei.com
 (7.182.85.13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2507.39; Tue, 24 Sep
 2024 08:46:45 +0200
From: Gur Stavi <gur.stavi@huawei.com>
To: <linyunsheng@huawei.com>
Date: Tue, 24 Sep 2024 09:45:59 +0300
Message-ID: <20240924064559.1681488-1-gur.stavi@huawei.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <2fb8d278-62e0-4a81-a537-8f601f61e81d@huawei.com>
References: <2fb8d278-62e0-4a81-a537-8f601f61e81d@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.200.201.82]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 frapeml500005.china.huawei.com (7.182.85.13)
X-Mailman-Approved-At: Tue, 24 Sep 2024 15:24:02 +0000
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
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
Cc: imx@lists.linux.dev, ast@kernel.org, alexander.duyck@gmail.com,
 linux-mm@kvack.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 shenwei.wang@nxp.com, xiaoning.wang@nxp.com, wei.fang@nxp.com,
 ryder.lee@mediatek.com, daniel@iogearbox.net, linux-rdma@vger.kernel.org,
 przemyslaw.kitszel@intel.com, john.fastabend@gmail.com, iommu@lists.linux.dev,
 liuyonglong@huawei.com, intel-wired-lan@lists.osuosl.org,
 zhangkun09@huawei.com, kuba@kernel.org, pabeni@redhat.com, lorenzo@kernel.org,
 hawk@kernel.org, kvalo@kernel.org, sean.wang@mediatek.com,
 linux-mediatek@lists.infradead.org, fanghaiqing@huawei.com,
 matthias.bgg@gmail.com, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, angelogioacchino.delregno@collabora.com,
 leon@kernel.org, netdev@vger.kernel.org, ilias.apalodimas@linaro.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 tariqt@nvidia.com, aleksander.lobakin@intel.com, saeedm@nvidia.com,
 akpm@linux-foundation.org, shayne.chen@mediatek.com, robin.murphy@arm.com,
 davem@davemloft.net, nbd@nbd.name
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>>>> With all the caching in the network stack, some pages may be
>>>> held in the network stack without returning to the page_pool
>>>> soon enough, and with VF disable causing the driver unbound,
>>>> the page_pool does not stop the driver from doing it's
>>>> unbounding work, instead page_pool uses workqueue to check
>>>> if there is some pages coming back from the network stack
>>>> periodically, if there is any, it will do the dma unmmapping
>>>> related cleanup work.
>>>>
>>>> As mentioned in [1], attempting DMA unmaps after the driver
>>>> has already unbound may leak resources or at worst corrupt
>>>> memory. Fundamentally, the page pool code cannot allow DMA
>>>> mappings to outlive the driver they belong to.
>>>>
>>>> Currently it seems there are at least two cases that the page
>>>> is not released fast enough causing dma unmmapping done after
>>>> driver has already unbound:
>>>> 1. ipv4 packet defragmentation timeout: this seems to cause
>>>>    delay up to 30 secs:
>>>>
>>>> 2. skb_defer_free_flush(): this may cause infinite delay if
>>>>    there is no triggering for net_rx_action().
>>>>
>>>> In order not to do the dma unmmapping after driver has already
>>>> unbound and stall the unloading of the networking driver, add
>>>> the pool->items array to record all the pages including the ones
>>>> which are handed over to network stack, so the page_pool can
>>>> do the dma unmmapping for those pages when page_pool_destroy()
>>>> is called.
>>>
>>> So, I was thinking of a very similar idea. But what do you mean by
>>> "all"? The pages that are still in caches (slow or fast) of the pool
>>> will be unmapped during page_pool_destroy().
>>
>> Yes, it includes the one in pool->alloc and pool->ring.
>
> It worths mentioning that there is a semantics changing here:
> Before this patch, there can be almost unlimited inflight pages used by
> driver and network stack, as page_pool doesn't really track those pages.
> After this patch, as we use a fixed-size pool->items array to track the
> inflight pages, the inflight pages is limited by the pool->items, currently
> the size of pool->items array is calculated as below in this patch:
>
> +#define PAGE_POOL_MIN_ITEM_CNT	512
> +	unsigned int item_cnt = (params->pool_size ? : 1024) +
> +				PP_ALLOC_CACHE_SIZE + PAGE_POOL_MIN_ITEM_CNT;
>
> Personally I would consider it is an advantage to limit how many pages which
> are used by the driver and network stack, the problem seems to how to decide
> the limited number of page used by network stack so that performance is not
> impacted.

In theory, with respect to the specific problem at hand, you only have
a limit on the number of mapped pages inflight. Once you reach this
limit you can unmap these old pages, forget about them and remember
new ones.
