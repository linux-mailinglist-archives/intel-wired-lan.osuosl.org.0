Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DE9977C40
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Sep 2024 11:36:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4BCAF412FB;
	Fri, 13 Sep 2024 09:36:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IqMUOI2TDapN; Fri, 13 Sep 2024 09:36:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B8FCD41882
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726220164;
	bh=g4RqOsNL6IvtloUXZrR1fdZjlsz7yR52eaJwMIl6Ajk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LcglyEt9e0h6EW5LRLnLcFJyb3dNXZxLPyGHzLBib5SaE7AT7VQN5YLxxTop2DOJN
	 fc0I1fLIUU6N/Xx7PnhzUylDnmoCtZNe7hmgJ7JzTXF3SNn6atq0mhGj6lCTgrHhaZ
	 KCsn53lNztbOhd/d2P8xAxKNpIxymY6BvocHJs4bRXk5OYQlX3UhgdwaC69Qmqb9O7
	 gD8QQPwCmPKNzNigx1928JqYIaqyEFZJLh7SyFCdRN0qraMD+4uj/Sw4nGx6USNo0y
	 /AsjiQx7usfdOQAWiIZpjq4Vis2jrbWcSnnKwAaIcUWnc5iq0Ue8nbR6qL94pcg/lV
	 9rwSIuvbJ1zVw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B8FCD41882;
	Fri, 13 Sep 2024 09:36:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E2AAF1BF2BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2024 09:36:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BE9026074F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2024 09:36:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bf18CntUryNk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Sep 2024 09:36:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.190;
 helo=szxga04-in.huawei.com; envelope-from=linyunsheng@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9EB4B6002E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9EB4B6002E
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9EB4B6002E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2024 09:35:57 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.162.112])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4X4q0m4b9zz2CpYn;
 Fri, 13 Sep 2024 17:35:20 +0800 (CST)
Received: from dggpemf200006.china.huawei.com (unknown [7.185.36.61])
 by mail.maildlp.com (Postfix) with ESMTPS id 79E181402CE;
 Fri, 13 Sep 2024 17:35:52 +0800 (CST)
Received: from [10.67.120.129] (10.67.120.129) by
 dggpemf200006.china.huawei.com (7.185.36.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Fri, 13 Sep 2024 17:35:51 +0800
Message-ID: <00c41a5b-6a5b-4ee1-b0e2-eae819e3cf3b@huawei.com>
Date: Fri, 13 Sep 2024 17:35:51 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mina Almasry <almasrymina@google.com>
References: <20240912124514.2329991-1-linyunsheng@huawei.com>
 <20240912124514.2329991-3-linyunsheng@huawei.com>
 <CAHS8izPc8fy08mL1RJtnxiOvTx=Uk037Q5SKobC80jQocEKMJQ@mail.gmail.com>
Content-Language: en-US
From: Yunsheng Lin <linyunsheng@huawei.com>
In-Reply-To: <CAHS8izPc8fy08mL1RJtnxiOvTx=Uk037Q5SKobC80jQocEKMJQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.67.120.129]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggpemf200006.china.huawei.com (7.185.36.61)
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: Re: [Intel-wired-lan] [RFC 2/2] page_pool: fix IOMMU crash when
 driver has already unbound
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
 fanghaiqing@huawei.com, pabeni@redhat.com,
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

On 2024/9/12 22:25, Mina Almasry wrote:
> On Thu, Sep 12, 2024 at 5:51 AM Yunsheng Lin <linyunsheng@huawei.com> wrote:
>>
>> Networking driver with page_pool support may hand over page
>> still with dma mapping to network stack and try to reuse that
>> page after network stack is done with it and passes it back
>> to page_pool to avoid the penalty of dma mapping/unmapping.
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
>>
> 
> The approach in this patch is a bit complicated. I wonder if there is
> something simpler that we can do. From reading the thread, it seems
> the issue is that in __page_pool_release_page_dma we're calling
> dma_unmap_page_attrs() on a pool->p.dev that has been deleted via
> device_del, right?
> 
> Why not consider pool->p.dev unusable if pool->destroy_cnt > 0? I.e.
> in __page_pool_release_page_dma, we can skip dma_unmap_page_attrs() if
> destry_cnt > 0?

The skipping is already done for __dma_sync_single_for_device() in this
patch, but not for dma_unmap_page_attrs(), see the clearing of dma_sync
in page_pool_destroy().

> 
> More generally, probably any use of pool->p.dev may be invalid if
> page_pool_destroy has been called. The call sites can be scrubbed for
> latent bugs.

As mentioned in commit log, attempting DMA unmaps after the driver has
already unbound may leak resources or at worst corrupt memory.
The skipping only avoid corrupting memory, but not leaking resources, as
there may be bounce buffer or iova resources before the dma mapping as my
understanding.

And when page_pool_destroy() is called, there is currently no way to
tell if the device is going to be invalid or not.

> 
> The hard part is handling the concurrency. I'm not so sure we can fix
> this without introducing some synchronization between the
> page_pool_destroy seeing the device go away and the code paths using
> the device. Are these being called from the fast paths? Jespers
> benchmark can tell for sure if there is any impact on the fast path.

It depends on what your definition of fast path here, there are three
kinds of fast path for page pool as my understanding.

For the first and second fast path, the synchronization cost is the
rcu read lock overhead introduced in patch 1.

For the third fast path when we need to refill from or flush to the
page allocator, the added overhead is the page_pool_item_add() and
page_pool_item_del() calling as my understanding.

Will provide the performance data in the next version.

> 
>> Note, the devmem patchset seems to make the bug harder to fix
>> and to backport too, this patch does not consider fixing the
>> case for devmem yet.
>>
> 
> FWIW from a quick look I did not see anything in this patch that is
> extremely hard to port to netmem. AFAICT the issue is that you skipped
> changing page_pool to page_pool_items in net_iov. Once that is done, I
> think the rest should be straightforward.

Does page_pool_item_uninit() need to handle 'netmem' case?

How does the devmem handle the case net_iov being cached in network stack
when the driver has already unbound? I am supposing there is a device for
dma_buf_unmap_attachment_unlocked(), and is it possible that the device
become invalid too when the driver has unbound? If yes, doesn't it have a
similar problem as the case of normal page?

> 
