Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CFD97D110
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Sep 2024 08:14:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 42F5E405E7;
	Fri, 20 Sep 2024 06:14:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HDlUam0Tlvu8; Fri, 20 Sep 2024 06:14:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F80F405ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726812856;
	bh=ijTL2zKnUof+4XF+ZG6s13+2/2KOA0aKlwgKuQEWNso=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EO68WB7v/Lb2XgytSNJs5JTT0cgGxdY6jgp5lM9S+PcCVOoIte3tV02h3/UvDSAPo
	 TTANBSr94roM9M+ELJ4bVzyp2U38CvODUfMT3FFhmzXzTF4ujurSssn3paa44C+G9c
	 /QtBtLWLCpq5t1qhd5CADwguI5B9HFbFLm3pD8l011rDo+gu03REW/p2ujMlacfXyo
	 oJOT2topTz/pIjwKwqSxLYFqKnAsr29jjIWN8FKflDuboKJVy4WL1oiWbaO1EELpgN
	 BFz44hDsXF55S/fvLAzyYdtdqVkXpnrgGzDfXxFOHQotss9tAQAFrEF6QY6xpxfA2M
	 nb6jzkZk3u+PA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8F80F405ED;
	Fri, 20 Sep 2024 06:14:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 53A4D1BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 06:14:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4E83B405D9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 06:14:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xqhf4nuhfsE2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Sep 2024 06:14:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.190;
 helo=szxga04-in.huawei.com; envelope-from=linyunsheng@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CBFD340591
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CBFD340591
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CBFD340591
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 06:14:10 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.162.112])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4X92BV2t0Fz2DcJj;
 Fri, 20 Sep 2024 14:13:22 +0800 (CST)
Received: from dggpemf200006.china.huawei.com (unknown [7.185.36.61])
 by mail.maildlp.com (Postfix) with ESMTPS id 140801401DC;
 Fri, 20 Sep 2024 14:14:03 +0800 (CST)
Received: from [10.67.120.129] (10.67.120.129) by
 dggpemf200006.china.huawei.com (7.185.36.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Fri, 20 Sep 2024 14:14:02 +0800
Message-ID: <2c5ccfff-6ab4-4aea-bff6-3679ff72cc9a@huawei.com>
Date: Fri, 20 Sep 2024 14:14:02 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ilias Apalodimas <ilias.apalodimas@linaro.org>, Jesper Dangaard Brouer
 <hawk@kernel.org>
References: <20240918111826.863596-1-linyunsheng@huawei.com>
 <20240918111826.863596-3-linyunsheng@huawei.com>
 <CAC_iWjK=G7Oo5=pN2QunhasgDC6NyC1L+96jigX7u9ad+PbYng@mail.gmail.com>
 <894a3c2c-22f9-45b9-a82b-de7320066b42@kernel.org>
 <cdfecd37-31d7-42d2-a8d8-92008285b42e@huawei.com>
 <0e8c7a7a-0e2a-42ec-adbc-b29f6a514517@kernel.org>
 <CAC_iWj+3JvPY2oqVOdu0T1Wt6-ukoy=dLc72u1f55yY23uOTbA@mail.gmail.com>
Content-Language: en-US
From: Yunsheng Lin <linyunsheng@huawei.com>
In-Reply-To: <CAC_iWj+3JvPY2oqVOdu0T1Wt6-ukoy=dLc72u1f55yY23uOTbA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.67.120.129]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpemf200006.china.huawei.com (7.185.36.61)
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
Cc: imx@lists.linux.dev, Alexei Starovoitov <ast@kernel.org>,
 Alexander Duyck <alexander.duyck@gmail.com>, linux-mm@kvack.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Shenwei Wang <shenwei.wang@nxp.com>, Ryder Lee <ryder.lee@mediatek.com>,
 Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, IOMMU <iommu@lists.linux.dev>,
 liuyonglong@huawei.com, Clark Wang <xiaoning.wang@nxp.com>,
 zhangkun09@huawei.com, fanghaiqing@huawei.com, pabeni@redhat.com,
 Lorenzo Bianconi <lorenzo@kernel.org>, Kalle Valo <kvalo@kernel.org>,
 Sean Wang <sean.wang@mediatek.com>, Wei Fang <wei.fang@nxp.com>,
 kuba@kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Robin Murphy <robin.murphy@arm.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, netdev@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 Shayne Chen <shayne.chen@mediatek.com>, Saeed Mahameed <saeedm@nvidia.com>,
 davem@davemloft.net, Felix Fietkau <nbd@nbd.name>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2024/9/20 13:29, Ilias Apalodimas wrote:
> Hi Jesper,
> 
> On Fri, 20 Sept 2024 at 00:04, Jesper Dangaard Brouer <hawk@kernel.org> wrote:
>>
>>
>>
>> On 19/09/2024 13.15, Yunsheng Lin wrote:
>>> On 2024/9/19 17:42, Jesper Dangaard Brouer wrote:
>>>>
>>>> On 18/09/2024 19.06, Ilias Apalodimas wrote:
>>>>>> In order not to do the dma unmmapping after driver has already
>>>>>> unbound and stall the unloading of the networking driver, add
>>>>>> the pool->items array to record all the pages including the ones
>>>>>> which are handed over to network stack, so the page_pool can
>>>>>> do the dma unmmapping for those pages when page_pool_destroy()
>>>>>> is called.
>>>>>
>>>>> So, I was thinking of a very similar idea. But what do you mean by
>>>>> "all"? The pages that are still in caches (slow or fast) of the pool
>>>>> will be unmapped during page_pool_destroy().
>>>>
>>>> I really dislike this idea of having to keep track of all outstanding pages.
>>>>
>>>> I liked Jakub's idea of keeping the netdev around for longer.
>>>>
>>>> This is all related to destroying the struct device that have points to
>>>> the DMA engine, right?
>>>
>>> Yes, the problem seems to be that when device_del() is called, there is
>>> no guarantee hw behind the 'struct device ' will be usable even if we
>>> call get_device() on it.
>>>
>>>>
>>>> Why don't we add an API that allow netdev to "give" struct device to
>>>> page_pool.  And then the page_poll will take over when we can safely
>>>> free the stuct device?
>>>
>>> By 'allow netdev to "give" struct device to page_pool', does it mean
>>> page_pool become the driver for the device?
>>> If yes, it seems that is similar to jakub's idea, as both seems to stall
>>> the calling of device_del() by not returning when the driver unloading.
>>
>> Yes, this is what I mean. (That is why I mentioned Jakub's idea).

I am not sure what dose the API that allows netdev to "give" struct device
to page_pool look like or how to implement the API yet, but the obvious way
to stall the calling of device_del() is to wait for the inflight page to
come back in page_pool_destroy(), which seems the same as the jakub's
way from the viewpoint of user, and jakub's way seems more elegant than
waiting in page_pool_destroy().

> 
> Keeping track of inflight packets that need to be unmapped is
> certainly more complex. Delaying the netdevice destruction certainly
> solves the problem but there's a huge cost IMHO. Those devices might
> stay there forever and we have zero guarantees that the network stack
> will eventually release (and unmap) those packets. What happens in
> that case? The user basically has to reboot the entire machine, just
> because he tries to bring an interface down and up again.

Yes.
The problem seems to be how long page_pool is allowed to stall the driver
unloading? Does the driver unload stalling affect some feature like device
hotplug?
As the problem in [1], the stall might be forever due to caching in the
network stack as discussed in [2], and there might be some other caching
we don't know yet.

The stalling log in [1] is caused by the caching in skb_attempt_defer_free(),
we may argue that a timeout is needed for those kind of caching, but Eric
seemed to think otherwise in commit log of [3]:
"As Eric pointed out/predicted there's no guarantee that
applications will read / close their sockets so a page pool page
may be stuck in a socket (but not leaked) forever."

1. https://lore.kernel.org/netdev/20240814075603.05f8b0f5@kernel.org/T/#me2f2c89fbeb7f92a27d54a85aab5527efedfe260
2. https://lore.kernel.org/netdev/20240814075603.05f8b0f5@kernel.org/T/#m2687f25537395401cd6a810ac14e0e0d9addf97e
3. https://lore.kernel.org/netdev/ZWfuyc13oEkp583C@makrotopia.org/T/

> 
> Thanks
> /Ilias
>>
>>
>>> If no, it seems that the problem is still existed when the driver for
>>> the device has unbound after device_del() is called.
