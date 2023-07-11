Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6796074F2FD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jul 2023 17:09:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 025EB831D5;
	Tue, 11 Jul 2023 15:09:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 025EB831D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689088156;
	bh=8WbVkzXIsiuNUvXdG6iFsCXCu7GUCxMZkkI+nZVhXlg=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6JSdsjIlJwz89AOG4suSnUGBCa9GEv0h5PhquHAc+hqgPm8oDpNUwS1GQc72psYqG
	 KMnimCCEYaZFwHJGt7/0bNA79c+Z7hSykJkIX2sUTmJvSKE+ynoeZDwMS4weZHcYw7
	 vk9Hu62zTLvn7w2tm2AWeYdQYhto0D4I6lDR5sbeAZ1ixuNiy6JNBuwLOJckudJiDV
	 K/UejqmajebLbMEASRsxvq96vt4Vf+jC5IRSch7fbgW/atH1coIsJugqo6bAZeR/me
	 D85jZMguBf3KGSh6PD90kW7rZyPnsjklLB1rVDe74+t6QS7XC76qVVsp83iLA1esZJ
	 99cnLl6hGdplg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QQwkThgCryUx; Tue, 11 Jul 2023 15:09:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C8445813FB;
	Tue, 11 Jul 2023 15:09:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C8445813FB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6C5481BF422
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 11:47:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 443EB81FA4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 11:47:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 443EB81FA4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p9E2hRBgcV_t for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jul 2023 11:47:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0552B81F84
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0552B81F84
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 11:47:20 +0000 (UTC)
Received: from dggpemm500005.china.huawei.com (unknown [172.30.72.57])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4R0fCg0kY5zMqWb;
 Tue, 11 Jul 2023 19:43:59 +0800 (CST)
Received: from [10.69.30.204] (10.69.30.204) by dggpemm500005.china.huawei.com
 (7.185.36.74) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Tue, 11 Jul
 2023 19:47:15 +0800
To: Alexander Lobakin <aleksander.lobakin@intel.com>, Yunsheng Lin
 <yunshenglin0825@gmail.com>
References: <20230705155551.1317583-1-aleksander.lobakin@intel.com>
 <20230705155551.1317583-7-aleksander.lobakin@intel.com>
 <6b8bc66f-8a02-b6b4-92cc-f8aaf067abd8@huawei.com>
 <bc495d87-3968-495f-c672-bf1bab38524a@intel.com>
 <4946b9df-66ea-d184-b97c-0ba687e41df8@gmail.com>
 <95c5ba92-bccd-6a9a-5373-606a482e36a3@intel.com>
From: Yunsheng Lin <linyunsheng@huawei.com>
Message-ID: <558849ff-6b68-7547-cf99-36801ff24c25@huawei.com>
Date: Tue, 11 Jul 2023 19:47:14 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <95c5ba92-bccd-6a9a-5373-606a482e36a3@intel.com>
Content-Language: en-US
X-Originating-IP: [10.69.30.204]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpemm500005.china.huawei.com (7.185.36.74)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Tue, 11 Jul 2023 15:08:56 +0000
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next v4 6/9] iavf: switch to
 Page Pool
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

On 2023/7/10 21:34, Alexander Lobakin wrote:
> From: Yunsheng Lin <yunshenglin0825@gmail.com>
> Date: Sun, 9 Jul 2023 13:16:39 +0800
> 
>> On 2023/7/7 0:38, Alexander Lobakin wrote:
>>
>> ...
>>  
>>>>
>>>>>  /**
>>>>> @@ -766,13 +742,19 @@ void iavf_free_rx_resources(struct iavf_ring *rx_ring)
>>>>>   **/
>>>>>  int iavf_setup_rx_descriptors(struct iavf_ring *rx_ring)
>>>>>  {
>>>>> -	struct device *dev = rx_ring->dev;
>>>>> -	int bi_size;
>>>>> +	struct page_pool *pool;
>>>>> +
>>>>> +	pool = libie_rx_page_pool_create(&rx_ring->q_vector->napi,
>>>>> +					 rx_ring->count);
>>>>
>>>> If a page is able to be spilt between more than one desc, perhaps the
>>>> prt_ring size does not need to be as big as rx_ring->count.
>>>
>>> But we doesn't know in advance, right? Esp. given that it's hidden in
>>> the lib. But anyway, you can only assume that in regular cases if you
>>> always allocate frags of the same size, PP will split pages when 2+
>>> frags can fit there or return the whole page otherwise, but who knows
>>> what might happen.
>>
>> It seems intel driver is able to know the size of memory it needs when
>> creating the ring/queue/napi/pp, maybe the driver only tell the libie
>> how many descs does it use for queue, and libie can adjust it accordingly?
> 
> But libie can't say for sure how PP will split pages for it, right?
> 
>>
>>> BTW, with recent recycling optimization, most of recycling is done
>>> directly through cache, not ptr_ring. So I'd even say it's safe to start
>>> creating smaller ptr_rings in the drivers.
>>
>> The problem is that we may use more memory than before for certain case
>> if we don't limit the size of ptr_ring, unless we can ensure all of
>> recycling is done directly through cache, not ptr_ring.
> Also not sure I'm following =\

Before adding page pool support, the max memory used in the driver is as
below:
rx_ring->count * PAGE_SIZE;

After adding page pool support, the max memory used in the driver is as
below:

ptr_ring->size * PAGE_SIZE +
PP_ALLOC_CACHE_SIZE * PAGE_SIZE +
rx_ring->count * PAGE_SIZE / pp.init_arg

> 
> [...]
> 
> Thanks,
> Olek
> 
> .
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
