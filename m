Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 552177084B3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 May 2023 17:12:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E5F3B417D5;
	Thu, 18 May 2023 15:12:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E5F3B417D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684422725;
	bh=6fAxrlS/+B4ePJi5PyFG2DrPbTCwnPQyFxCb1mZWb7s=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TS0pIt7ajVmI9lU9U71qT6T1E4lmEC7RAcLzwEltWz9BurAhdZzcGk62VDGzkqn2P
	 8NTDtKNxij77SnXt5dHyKgHHniKQMepLdat1wikj7u7/KOn5+UM9ofElRcTNYTNfLn
	 V4151XmpEOLcvyBl4bAqhIXawswarr31n4PhAWXGHAAUFVpwW2ql/PLzBMSmmvj3sn
	 jSSZnqmnI0BZJYDPW/XygLDxVUC7bnuD8r63U0FsYf+XG4ecrNau+GeKYMoE7NyPtW
	 tWV+7wZBQ55F1HlLYLYqT32Yb5HWrD48duTTg6Jt7YXc5XMZISIO8fyiAYfeW3pgBF
	 XbJxxeoW3qAkg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zkr0qAo6PYL3; Thu, 18 May 2023 15:12:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B74AF40B13;
	Thu, 18 May 2023 15:12:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B74AF40B13
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8BA161BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 04:54:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 603B040385
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 04:54:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 603B040385
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wu59S_JWrdtw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 May 2023 04:54:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F207400D3
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0F207400D3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 04:54:43 +0000 (UTC)
Received: from dggpemm500005.china.huawei.com (unknown [172.30.72.57])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4QMHZh5zsKzTkxf;
 Thu, 18 May 2023 12:49:48 +0800 (CST)
Received: from [10.69.30.204] (10.69.30.204) by dggpemm500005.china.huawei.com
 (7.185.36.74) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.23; Thu, 18 May
 2023 12:54:38 +0800
To: Jakub Kicinski <kuba@kernel.org>, Alexander Lobakin
 <aleksander.lobakin@intel.com>
References: <20230516161841.37138-1-aleksander.lobakin@intel.com>
 <20230516161841.37138-7-aleksander.lobakin@intel.com>
 <20230517210804.7de610bd@kernel.org>
From: Yunsheng Lin <linyunsheng@huawei.com>
Message-ID: <b84ad4ef-a996-4fd7-dc90-3b44f7acaf39@huawei.com>
Date: Thu, 18 May 2023 12:54:37 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <20230517210804.7de610bd@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.69.30.204]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpemm500005.china.huawei.com (7.185.36.74)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Thu, 18 May 2023 15:11:47 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next 06/11] net: page_pool: avoid
 calling no-op externals when possible
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2023/5/18 12:08, Jakub Kicinski wrote:
> On Tue, 16 May 2023 18:18:36 +0200 Alexander Lobakin wrote:
>> +		/* Try to avoid calling no-op syncs */
>> +		pool->p.flags |= PP_FLAG_DMA_MAYBE_SYNC;
>> +		pool->p.flags &= ~PP_FLAG_DMA_SYNC_DEV;
>>  	}
>>  
>>  	if (PAGE_POOL_DMA_USE_PP_FRAG_COUNT &&
>> @@ -323,6 +327,12 @@ static bool page_pool_dma_map(struct page_pool *pool, struct page *page)
>>  
>>  	page_pool_set_dma_addr(page, dma);
>>  
>> +	if ((pool->p.flags & PP_FLAG_DMA_MAYBE_SYNC) &&
>> +	    dma_need_sync(pool->p.dev, dma)) {
>> +		pool->p.flags |= PP_FLAG_DMA_SYNC_DEV;
>> +		pool->p.flags &= ~PP_FLAG_DMA_MAYBE_SYNC;
>> +	}
> 
> is it just me or does it feel cleaner to allocate a page at init,
> and throw it into the cache, rather than adding a condition to a
> fast(ish) path?

Is dma_need_sync() not reliable until a dma map is called?
Is there any reason why not just clear PP_FLAG_DMA_SYNC_DEV if
dma_need_sync() is false without introducing the PP_FLAG_DMA_MAYBE_SYNC
flag?

> 
> .
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
