Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E13727FCD5A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Nov 2023 04:18:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3502D820FF;
	Wed, 29 Nov 2023 03:18:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3502D820FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701227884;
	bh=jDNjoJh/pDJYQaYalWcXtbKSP0fNpbYnPeoJF3eyyws=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7/4CGkcGX95lOdnbEo+4YHtvUKhYOMedoMr+g2BCifLIqLGbDzcVVPcCAaq5Awl9K
	 3cEYKsdxkJ8iOMHhn+aMYmFMB3XMXfICnKy+IqW7HDSC2Cx735oUg/rk1ZQgAyEZ0v
	 p9Unb9zyzcJqzBU9zJLFUulbB9p3EywIpFzcTn+3sqk2ef+ihAL5Vz9gbCdAI6QlzF
	 ILuT67zugg9jR2YIwbDsBFmZqtcZM9kQTUAL76rvIw8hFgqn7tJMFE/1XqE06yGlrx
	 BidU5daF2PNX+lfl+GpIqW5C+xzTJkuRZakAmxHODlVLGqgGFhI3dVptWgeoQ4WKr/
	 If+ay2CUBvsaw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aEWMz76Gd7Ld; Wed, 29 Nov 2023 03:18:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B3CC820E6;
	Wed, 29 Nov 2023 03:18:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B3CC820E6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4804B1BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 03:17:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 28EEC40179
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 03:17:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 28EEC40179
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FQ4-Bqfm1sOK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Nov 2023 03:17:56 +0000 (UTC)
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 51D0B40106
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 03:17:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 51D0B40106
Received: from dggpemm500005.china.huawei.com (unknown [172.30.72.53])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4Sg4Cc5t3JzShPM;
 Wed, 29 Nov 2023 11:13:32 +0800 (CST)
Received: from [10.69.30.204] (10.69.30.204) by dggpemm500005.china.huawei.com
 (7.185.36.74) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Wed, 29 Nov
 2023 11:17:51 +0800
To: Alexander Lobakin <aleksander.lobakin@intel.com>, Christoph Hellwig
 <hch@lst.de>
References: <20231124154732.1623518-1-aleksander.lobakin@intel.com>
 <20231124154732.1623518-4-aleksander.lobakin@intel.com>
 <6bd14aa9-fa65-e4f6-579c-3a1064b2a382@huawei.com>
 <a1a0c27f-f367-40e7-9dc2-9421b4b6379a@intel.com>
From: Yunsheng Lin <linyunsheng@huawei.com>
Message-ID: <534e7752-38a9-3e7e-cb04-65789712fb66@huawei.com>
Date: Wed, 29 Nov 2023 11:17:50 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <a1a0c27f-f367-40e7-9dc2-9421b4b6379a@intel.com>
Content-Language: en-US
X-Originating-IP: [10.69.30.204]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 dggpemm500005.china.huawei.com (7.185.36.74)
X-CFilter-Loop: Reflected
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 03/14] page_pool: avoid
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

On 2023/11/27 22:32, Alexander Lobakin wrote:
> 
> Chris, any thoughts on a global flag for skipping DMA syncs ladder?

It seems there was one already in the past:

https://lore.kernel.org/netdev/7c55a4d7-b4aa-25d4-1917-f6f355bd722e@arm.com/T/

> 
>>
>>

>>> +static inline bool page_pool_set_dma_addr(const struct page_pool *pool,
>>> +					  struct page *page,
>>> +					  dma_addr_t addr)
>>>  {
>>> +	unsigned long val = addr;
>>> +
>>> +	if (unlikely(!addr)) {
>>> +		page->dma_addr = 0;
>>> +		return true;
>>> +	}
>>
>> The above seems unrelated change?
> 
> Related. We use page_put_set_dma_addr() to clear ::dma_addr as well
> (grep for it in page_pool.c). In this case, we don't want
> dma_need_sync() to be called as we explicitly pass zero. This check
> zeroes the field and exits as quickly as possible.

The question seems to be about if we need to ensure the LSB of
page->dma_addr is not set when page_pool releases a page back to page
allocator?

> In case with the call mentioned above, zero is a compile-time constant
> there, so that this little branch will be inlined with the rest dropped.
> 


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
