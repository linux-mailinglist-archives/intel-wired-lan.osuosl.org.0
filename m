Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5128E7FCD19
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Nov 2023 03:55:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A6F68417B9;
	Wed, 29 Nov 2023 02:55:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A6F68417B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701226514;
	bh=eKouF6G/GWEttDAKHw7Fox0EXB23kLnvxF2GzeiUUT8=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qwu30nYk/aduuBlTouavgh/QDpl9o1gi35Z5HtNoUtg9BSlQmaaOQn00QsJAerCJj
	 i5Cgc7+++UjX47Xnz8yScOl2O725KeIXI695TLsbX0ZZRpdNlK8cQEFNTqt5wWF7BN
	 JPBuwYUwuM59E0c5oRxq9JqXJP4SUCkKUS30InQ8yHPjqORrvX11TtRiiRVk8ZIX7o
	 QW8SanlzvmYTrfvXkGrXxU//0RJeBLDK/57PGzXZVTiBi2He6Ehib2hR4SiOl1j2U6
	 iRdsY3yKGCKvZCBgZFYfOROMZh+NoKxZqy1dxKx7EDZxeN2fRVklgLsP2iwrltrLN/
	 +KOZLZfdPUU8A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 30GAHfN9nXya; Wed, 29 Nov 2023 02:55:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5CB81417B6;
	Wed, 29 Nov 2023 02:55:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5CB81417B6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2FBAD1BF400
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 02:55:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 05CC681EAE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 02:55:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 05CC681EAE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZmPp5taCg7dX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Nov 2023 02:55:06 +0000 (UTC)
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2211581E8F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 02:55:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2211581E8F
Received: from dggpemm500005.china.huawei.com (unknown [172.30.72.57])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4Sg3nf1VjFzvRHv;
 Wed, 29 Nov 2023 10:54:30 +0800 (CST)
Received: from [10.69.30.204] (10.69.30.204) by dggpemm500005.china.huawei.com
 (7.185.36.74) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Wed, 29 Nov
 2023 10:55:01 +0800
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20231124154732.1623518-1-aleksander.lobakin@intel.com>
 <20231124154732.1623518-2-aleksander.lobakin@intel.com>
 <9902d1c4-5e51-551a-3b66-c078c217c5ad@huawei.com>
 <5e6859d3-d3e7-44c1-acee-2c4ec568615d@intel.com>
From: Yunsheng Lin <linyunsheng@huawei.com>
Message-ID: <bd35cf74-698f-e811-43be-af207a88fdc7@huawei.com>
Date: Wed, 29 Nov 2023 10:55:00 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <5e6859d3-d3e7-44c1-acee-2c4ec568615d@intel.com>
Content-Language: en-US
X-Originating-IP: [10.69.30.204]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpemm500005.china.huawei.com (7.185.36.74)
X-CFilter-Loop: Reflected
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 01/14] page_pool: make
 sure frag API fields don't span between cachelines
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
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, David Christensen <drc@linux.vnet.ibm.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David S.
 Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2023/11/27 22:08, Alexander Lobakin wrote:
> From: Yunsheng Lin <linyunsheng@huawei.com>
> Date: Sat, 25 Nov 2023 20:29:22 +0800
> 
>> On 2023/11/24 23:47, Alexander Lobakin wrote:
>>> After commit 5027ec19f104 ("net: page_pool: split the page_pool_params
>>> into fast and slow") that made &page_pool contain only "hot" params at
>>> the start, cacheline boundary chops frag API fields group in the middle
>>> again.
>>> To not bother with this each time fast params get expanded or shrunk,
>>> let's just align them to `4 * sizeof(long)`, the closest upper pow-2 to
>>> their actual size (2 longs + 2 ints). This ensures 16-byte alignment for
>>> the 32-bit architectures and 32-byte alignment for the 64-bit ones,
>>> excluding unnecessary false-sharing.
>>>
>>> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
>>> ---
>>>  include/net/page_pool/types.h | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/include/net/page_pool/types.h b/include/net/page_pool/types.h
>>> index e1bb92c192de..989d07b831fc 100644
>>> --- a/include/net/page_pool/types.h
>>> +++ b/include/net/page_pool/types.h
>>> @@ -127,7 +127,7 @@ struct page_pool {
>>>  
>>>  	bool has_init_callback;
>>
>> It seems odd to have only a slow field between tow fast
>> field group, isn't it better to move it to the end of
>> page_pool or where is more appropriate?
> 
> 1. There will be more in the subsequent patches.
> 2. ::has_init_callback happens each new page allocation, it's not slow.
>    Jakub did put it here for purpose.
> 
>>
>>>  
>>> -	long frag_users;
>>> +	long frag_users __aligned(4 * sizeof(long));
>>
>> If we need that, why not just use '____cacheline_aligned_in_smp'?
> 
> It can be an overkill. We don't need a full cacheline, but only these
> fields to stay within one, no matter whether they are in the beginning
> of it or at the end.

I am still a little lost here, A comment explaining why using '4' in the
above would be really helpful here.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
