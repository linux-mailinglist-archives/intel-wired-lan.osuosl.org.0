Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0F774F2FC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jul 2023 17:09:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 49C65832A9;
	Tue, 11 Jul 2023 15:09:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 49C65832A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689088152;
	bh=I0qUOvE4UpyIeF1CStByDsbDBdWXMmycqW4pn56nqVI=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=b4S87DZF1/he4wL7w4/mv9Tub2BzuaxGV+kuhD+bmlVCUCzab4VOyMWoz5d5FIB5i
	 kDZ2XxJJpjk0Gmpe5jAZuoH1rCvsKIEQ6qMeC0yhokBPD64bgtwnvn7hSMVC0txU+M
	 UqQRgax7diV1kqibEfxioALDI5XRC+X3ghWV7smoUS3n637CO34Legf25oxuzqUxCn
	 8jwuzGGp85ipVOgrUjrrYzfDhMkQ8JIas6uZJ/uohCghvcPWRRy4fVBO/alsgFcA5Z
	 Na1letOPQbsSHfh/5ofRzyWqeI7gEWZwN4sE096FbiO1WcaicF/PSOviPkcZhK64id
	 vF/NCFaZU2LUw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uPi6VKmYiqvw; Tue, 11 Jul 2023 15:09:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF81F831C1;
	Tue, 11 Jul 2023 15:09:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DF81F831C1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3A2EF1BF422
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 11:39:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0E62881E06
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 11:39:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E62881E06
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aDfhFbPFwNYr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jul 2023 11:39:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 349808161D
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 349808161D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 11:39:34 +0000 (UTC)
Received: from dggpemm500005.china.huawei.com (unknown [172.30.72.56])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4R0f5q12x9zqW2M;
 Tue, 11 Jul 2023 19:38:55 +0800 (CST)
Received: from [10.69.30.204] (10.69.30.204) by dggpemm500005.china.huawei.com
 (7.185.36.74) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Tue, 11 Jul
 2023 19:39:29 +0800
To: Alexander Lobakin <aleksander.lobakin@intel.com>, Yunsheng Lin
 <yunshenglin0825@gmail.com>
References: <20230705155551.1317583-1-aleksander.lobakin@intel.com>
 <20230705155551.1317583-6-aleksander.lobakin@intel.com>
 <138b94a7-c186-bdd9-e073-2794760c9454@huawei.com>
 <09a9a9ef-cf77-3b60-2845-94595a42cf3e@intel.com>
 <71a8bab4-1a1d-cb1a-d75c-585a14c6fb2e@gmail.com>
 <b05d1a35-5bc5-b65d-b57d-5cc1b0f898cb@intel.com>
From: Yunsheng Lin <linyunsheng@huawei.com>
Message-ID: <2ebd75df-51ff-4c62-2a68-d258dbf32b49@huawei.com>
Date: Tue, 11 Jul 2023 19:39:28 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <b05d1a35-5bc5-b65d-b57d-5cc1b0f898cb@intel.com>
Content-Language: en-US
X-Originating-IP: [10.69.30.204]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggpemm500005.china.huawei.com (7.185.36.74)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Tue, 11 Jul 2023 15:08:56 +0000
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next v4 5/9] libie: add Rx
 buffer management (via Page Pool)
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, David Christensen <drc@linux.vnet.ibm.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2023/7/10 21:25, Alexander Lobakin wrote:
> From: Yunsheng Lin <yunshenglin0825@gmail.com>
> Date: Sun, 9 Jul 2023 13:16:33 +0800
> 
>> On 2023/7/7 0:28, Alexander Lobakin wrote:
>>> From: Yunsheng Lin <linyunsheng@huawei.com>
>>> Date: Thu, 6 Jul 2023 20:47:28 +0800
>>>
>>>> On 2023/7/5 23:55, Alexander Lobakin wrote:
>>>>
>>>>> +/**
>>>>> + * libie_rx_page_pool_create - create a PP with the default libie settings
>>>>> + * @napi: &napi_struct covering this PP (no usage outside its poll loops)
>>>>> + * @size: size of the PP, usually simply Rx queue len
>>>>> + *
>>>>> + * Returns &page_pool on success, casted -errno on failure.
>>>>> + */
>>>>> +struct page_pool *libie_rx_page_pool_create(struct napi_struct *napi,
>>>>> +					    u32 size)
>>>>> +{
>>>>> +	struct page_pool_params pp = {
>>>>> +		.flags		= PP_FLAG_DMA_MAP | PP_FLAG_DMA_SYNC_DEV,
>>>>> +		.order		= LIBIE_RX_PAGE_ORDER,
>>>>> +		.pool_size	= size,
>>>>> +		.nid		= NUMA_NO_NODE,
>>>>> +		.dev		= napi->dev->dev.parent,
>>>>> +		.napi		= napi,
>>>>> +		.dma_dir	= DMA_FROM_DEVICE,
>>>>> +		.offset		= LIBIE_SKB_HEADROOM,
>>>>
>>>> I think it worth mentioning that the '.offset' is not really accurate
>>>> when the page is split, as we do not really know what is the offset of
>>>> the frag of a page except for the first frag.
>>>
>>> Yeah, this is read as "offset from the start of the page or frag to the
>>> actual frame start, i.e. its Ethernet header" or "this is just
>>> xdp->data - xdp->data_hard_start".
>>
>> So the problem seems to be if most of drivers have a similar reading as
>> libie does here, as .offset seems to have a clear semantics which is used
>> to skip dma sync operation for buffer range that is not touched by the
>> dma operation. Even if it happens to have the same value of "offset from
>> the start of the page or frag to the actual frame start", I am not sure
>> it is future-proofing to reuse it.
> 
> Not sure I'm following :s

It would be better to avoid accessing the internal data of the page pool
directly as much as possible, as that may be changed to different meaning
or removed if the implememtation is changed.

If it is common enough that most drivers are using it the same way, adding
a helper for that would be great.

> 
>>
>> When page frag is added, I didn't really give much thought about that as
>> we use it in a cache coherent system.
>> It seems we might need to extend or update that semantics if we really want
>> to skip dma sync operation for all the buffer ranges that are not touched
>> by the dma operation for page split case.
>> Or Skipping dma sync operation for all untouched ranges might not be worth
>> the effort, because it might need a per frag dma sync operation, which is
>> more costly than a batched per page dma sync operation. If it is true, page
>> pool already support that currently as my understanding, because the dma
>> sync operation is only done when the last frag is released/freed.
>>
>>>
>>>>
>>>>> +	};
>>>>> +	size_t truesize;
>>>>> +
>>>>> +	pp.max_len = libie_rx_sync_len(napi->dev, pp.offset);
>>
>> As mentioned above, if we depend on the last released/freed frag to do the
>> dma sync, the pp.max_len might need to cover all the frag.
> 
>                                                ^^^^^^^^^^^^
> 
> You mean the whole page or...?

If we don't care about the accurate dma syncing, "cover all the frag" means
the whole page here, as page pool doesn't have enough info to do accurate
dma sync for now.

> I think it's not the driver's duty to track all this. We always set
> .offset to `data - data_hard_start` and .max_len to the maximum
> HW-writeable length for one frame. We don't know whether PP will give us
> a whole page or just a piece. DMA sync for device is performed in the PP
> core code as well. Driver just creates a PP and don't care about the
> internals.

There problem is that when page_pool_put_page() is called with a split
page, the page pool does not know which frag is freeing too.

setting 'maximum HW-writeable length for one frame' only sync the first
frag of a page as below:

https://elixir.free-electrons.com/linux/v6.4-rc6/source/net/core/page_pool.c#L325

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
