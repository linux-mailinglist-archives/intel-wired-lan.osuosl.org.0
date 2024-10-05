Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD39C9916D2
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Oct 2024 14:39:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E28D3406BF;
	Sat,  5 Oct 2024 12:39:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n7xwiI_eZoJH; Sat,  5 Oct 2024 12:39:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F0B14065A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728131954;
	bh=YbmQWqwf8KLWBh53BpLjJjepp8M5DqLAMepSsUrr8/A=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=l/68Eij9pt/AryXnmML3iUYeI/fGeuXMQIwNzcU65o7V19URT6HwMbdCSr8DqZceh
	 SXVtuFSSNYAT33uIk8kK1SIwQpHk9/hfhfzAjpm9NV19DGyyylCXArSx3newonFIdz
	 9ivtWnRAcK9NXUxfBoEpKIqtkaXKCodgwrJODwRsWxgE0k7O3ggSyDB3dId+vOiiR8
	 i09VdsNXQmwg/9SbQSZlQDJK29JmLDPQtRmNs3qwOQadSeUDJ2qIzbryAUbApjy+O9
	 MWM27IhiqtMPoPtlDjhwgXUfhdu6ylC3WqUgR0TzUPzBeBTLrzY/V0RtErNJapC0cz
	 gpbW6+1zAxEwg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F0B14065A;
	Sat,  5 Oct 2024 12:39:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3384B1BF5A9
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Oct 2024 12:39:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 209AB402C6
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Oct 2024 12:39:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FH5h96Axnwfb for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Oct 2024 12:39:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::442; helo=mail-pf1-x442.google.com;
 envelope-from=yunshenglin0825@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9A44F40018
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A44F40018
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com
 [IPv6:2607:f8b0:4864:20::442])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9A44F40018
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Oct 2024 12:39:10 +0000 (UTC)
Received: by mail-pf1-x442.google.com with SMTP id
 d2e1a72fcca58-71dbdb7afe7so2446854b3a.0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 05 Oct 2024 05:39:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728131950; x=1728736750;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=YbmQWqwf8KLWBh53BpLjJjepp8M5DqLAMepSsUrr8/A=;
 b=wyQlcByq+VevSZBCmQHmXbqObT3xOE/CBq2N3cR9cVOWtP4uJX5bj54ZJEpVqMzVeU
 EQN2B8yiOFyd2H6W9nGPmBZbNhlbtOSP3c1VAwDwvBBXBcTCdqlZMH4YkxWlMxERFv3A
 qaKN1dQuZWAutUZH0KxPuCAoznwAHr5adgRB6XjoGCwHeZ47rTdLk+Rc9tPH8HKATY/4
 G78vtPNicwTJJ+c012uU9wURcGPaUgHL7/7xKXT9Rwr55BcKtIzMiKRew2X0Tw5ehp5C
 Y4xzaDV5lUfCPyt/2tD+KjcCzztKz+bGhtSDOODA2ssF/uJUj6oWxRBkjUoXfqfrOmlo
 GLgg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVjnThUWjYQ/4U0LzohbHCDmaUUlgWVOYoiKsTTeYEop1ENV9ZXkIPW/97j0C/1cb+bEhy5n5F3nq2zRtotnLQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy6Rh0spNO0OsjoKhj5843SrIOg7JpWYzkbnaZWEDhTMUY8Kix/
 yRPx+RHXzRhelHCVGRSOn4F/v9yERfzIlOyZj6Cghn7K/FSUZRyE
X-Google-Smtp-Source: AGHT+IH7TZfPKkqMhF7jhMgZXtf7Pauw1fuqlg17S6ZMnwvz+3KYrvO5e1eqHcfYjc/CJowJUAwQhQ==
X-Received: by 2002:a05:6a00:9a1:b0:70d:3337:7820 with SMTP id
 d2e1a72fcca58-71de23c72ecmr10006756b3a.8.1728131949813; 
 Sat, 05 Oct 2024 05:39:09 -0700 (PDT)
Received: from ?IPV6:2409:8a55:301b:e120:3c3f:d401:ec20:dbc7?
 ([2409:8a55:301b:e120:3c3f:d401:ec20:dbc7])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-71df0cd3983sm1408702b3a.87.2024.10.05.05.38.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 05 Oct 2024 05:39:09 -0700 (PDT)
Message-ID: <6cb0a740-f597-4a13-8fe5-43f94d222c70@gmail.com>
Date: Sat, 5 Oct 2024 20:38:51 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paolo Abeni <pabeni@redhat.com>, Yunsheng Lin <linyunsheng@huawei.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>
References: <20240925075707.3970187-1-linyunsheng@huawei.com>
 <20240925075707.3970187-3-linyunsheng@huawei.com>
 <4968c2ec-5584-4a98-9782-143605117315@redhat.com>
 <33f23809-abec-4d39-ab80-839dc525a2e6@gmail.com>
 <4316fa2d-8dd8-44f2-b211-4b2ef3200d75@redhat.com>
Content-Language: en-US
From: Yunsheng Lin <yunshenglin0825@gmail.com>
In-Reply-To: <4316fa2d-8dd8-44f2-b211-4b2ef3200d75@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1728131950; x=1728736750; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=YbmQWqwf8KLWBh53BpLjJjepp8M5DqLAMepSsUrr8/A=;
 b=cWVmr9N4haC0gMHvUvz1y2afNsYK2IQ8DEJ4J5aXX2yPvdR2WRb1mX/CvlnOeiy3Ln
 AWNBRMBWKPwQdoOENsDB4KAYfQxPWetOp1y/9wjvIisl3BY0gMf8thmOAP3EaJx4wHGy
 ggBV8R53IFzGpOKXQUQoYn59C8V8hxiztvmsurpdM+2xpkD/H6e1366RAFJf0cfx5aKz
 MM5EpdRhaLWEOf7LOLXBOSc2ou82XDpiNqSu15dqY4+O+3krjy30Wlrl4oWDdwgBn4tu
 8t85lrN4rUgFTg5WDOUCFwzPIiK6kPzR1iYCjSeHGPI7wB8VgJD+AscmtyLoCxW/cEou
 ciFA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=cWVmr9N4
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
 Shenwei Wang <shenwei.wang@nxp.com>, Ryder Lee <ryder.lee@mediatek.com>,
 Daniel Borkmann <daniel@iogearbox.net>, linux-rdma@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, IOMMU <iommu@lists.linux.dev>,
 liuyonglong@huawei.com, Clark Wang <xiaoning.wang@nxp.com>,
 zhangkun09@huawei.com, fanghaiqing@huawei.com,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>, Kalle Valo <kvalo@kernel.org>,
 Sean Wang <sean.wang@mediatek.com>, Wei Fang <wei.fang@nxp.com>,
 kuba@kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Leon Romanovsky <leon@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, netdev@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 Shayne Chen <shayne.chen@mediatek.com>, Robin Murphy <robin.murphy@arm.com>,
 davem@davemloft.net, Felix Fietkau <nbd@nbd.name>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/2/2024 3:37 PM, Paolo Abeni wrote:
> Hi,
> 
> On 10/2/24 04:34, Yunsheng Lin wrote:
>> On 10/1/2024 9:32 PM, Paolo Abeni wrote:
>>> Is the problem only tied to VFs drivers? It's a pity all the page_pool
>>> users will have to pay a bill for it...
>>
>> I am afraid it is not only tied to VFs drivers, as:
>> attempting DMA unmaps after the driver has already unbound may leak
>> resources or at worst corrupt memory.
>>
>> Unloading PFs driver might cause the above problems too, I guess the
>> probability of crashing is low for the PF as PF can not be disable
>> unless it can be hot-unplug'ed, but the probability of leaking resources
>> behind the dma mapping might be similar.
> 
> Out of sheer ignorance, why/how the refcount acquired by the page pool 
> on the device does not prevent unloading?

I am not sure if I understand the reasoning behind that, but it seems
the driver unloading does not check on the refcount of the device from
the implementation of __device_release_driver().

> 
> I fear the performance impact could be very high: AFICS, if the item 
> array become fragmented, insertion will take linar time, with the quite 
> large item_count/pool size. If so, it looks like a no-go.

The last checked index is recorded in pool->item_idx, so the insertion
mostly will not take linear, unless pool->items is almost full and the
old item came back to page_pool is just checked. The thought is that if
it comes to this point, the page_pool is likely not the bottleneck
anymore, and adding infinite pool->items might not make any difference.

If the insertion does turn out to be a bottleneck, 'struct llist_head'
can be used to records the old items lockless for the freeing side, and
llist_del_all() can be used to refill the old items for the allocing
side from freeing side, which is kind of like the pool->ring and
pool->alloc used currently in page_pool. As this patchset is already
complicated, doing this makes it more complicated, I am not sure it is
worth the effort right now as benefit does not seem obvious yet.

> 
> I fear we should consider blocking the device removal until all the 
> pages are returned/unmapped ?!? (I hope that could be easier/faster)

As Ilias pointed out, blocking the device removal until all the pages
are returned/unmapped might cause infinite delay in our testing:

https://lore.kernel.org/netdev/d50ac1a9-f1e2-49ee-b89b-05dac9bc6ee1@huawei.com/

> 
> /P
> 

