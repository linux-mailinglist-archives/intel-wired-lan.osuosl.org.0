Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E358A33D8B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2025 12:13:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C6E9A40C7C;
	Thu, 13 Feb 2025 11:13:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wr7K7ovYobWf; Thu, 13 Feb 2025 11:13:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C1F840C7D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739445215;
	bh=kTlahu4miB5EccFIgjpN2UqWxp4/FIMdbXikggO1gvM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nAZZaVbfc5S7XS3pwJET8GIWobL+ju/Ta/acDaqk24pZfRtA5ThpnVpa2GYlZzgtI
	 R/nCjQsZKQvW+r6dHHko+8JkaExoEZC6VvtLCmnVz+9qkJjtnEKn2674YDP34pC+++
	 yAlClenc2frDE4h4YAXUyjceq8/KAL0+ODaNqjdRc8vr7vkjA+9coS2jaMWt0L/OTE
	 8XX98PGiXJw4g+WPGD4KwNss9doSjG23/jE+b6NdVXQ2+kNzoVf0iVhhJ7RIorLDbK
	 DzCNmo8RPVqV6u2n6Y3jZtiopBPvpTt/9QipGgSu11TFJamBF5UxHk2ShyO2JHAGvw
	 V84+3c4OXyf+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C1F840C7D;
	Thu, 13 Feb 2025 11:13:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7204112D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 11:13:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5AA7B413C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 11:13:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vAWQ0zEMLCyh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2025 11:13:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.190;
 helo=szxga04-in.huawei.com; envelope-from=linyunsheng@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8EF69413C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8EF69413C3
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8EF69413C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 11:13:29 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.88.163])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4Ytsrv5vcRz2FdXd;
 Thu, 13 Feb 2025 19:09:35 +0800 (CST)
Received: from dggpemf200006.china.huawei.com (unknown [7.185.36.61])
 by mail.maildlp.com (Postfix) with ESMTPS id 0608A180042;
 Thu, 13 Feb 2025 19:13:23 +0800 (CST)
Received: from [10.67.120.129] (10.67.120.129) by
 dggpemf200006.china.huawei.com (7.185.36.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Thu, 13 Feb 2025 19:13:22 +0800
Message-ID: <febbedb5-4d37-4799-83f6-6f1add26a2fd@huawei.com>
Date: Thu, 13 Feb 2025 19:13:22 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Matthew Wilcox <willy@infradead.org>
CC: <davem@davemloft.net>, <kuba@kernel.org>, <pabeni@redhat.com>,
 <zhangkun09@huawei.com>, <liuyonglong@huawei.com>, <fanghaiqing@huawei.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, Robin Murphy
 <robin.murphy@arm.com>, Alexander Duyck <alexander.duyck@gmail.com>, Andrew
 Morton <akpm@linux-foundation.org>, IOMMU <iommu@lists.linux.dev>, MM
 <linux-mm@kvack.org>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, John
 Fastabend <john.fastabend@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <bpf@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>
References: <20250212092552.1779679-1-linyunsheng@huawei.com>
 <Z6zuLJU7o_gRsQRu@casper.infradead.org>
Content-Language: en-US
From: Yunsheng Lin <linyunsheng@huawei.com>
In-Reply-To: <Z6zuLJU7o_gRsQRu@casper.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.67.120.129]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpemf200006.china.huawei.com (7.185.36.61)
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 0/4] fix the DMA API
 misuse problem for page_pool
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2025/2/13 2:53, Matthew Wilcox wrote:
> On Wed, Feb 12, 2025 at 05:25:47PM +0800, Yunsheng Lin wrote:
>> This patchset fix the dma API misuse problem as mentioned in [1].
>>
>> 1. https://lore.kernel.org/lkml/8067f204-1380-4d37-8ffd-007fc6f26738@kernel.org/T/
> 
> That's a very long and complicated thread.  I gave up.  You need to
> provide a proper description of the problem.

The description of the problem is in the commit log of patch 2
as something below:
"Networking driver with page_pool support may hand over page
still with dma mapping to network stack and try to reuse that
page after network stack is done with it and passes it back
to page_pool to avoid the penalty of dma mapping/unmapping.
With all the caching in the network stack, some pages may be
held in the network stack without returning to the page_pool
soon enough, and with VF disable causing the driver unbound,
the page_pool does not stop the driver from doing it's
unbounding work, instead page_pool uses workqueue to check
if there is some pages coming back from the network stack
periodically, if there is any, it will do the dma unmmapping
related cleanup work.

As mentioned in [1], attempting DMA unmaps after the driver
has already unbound may leak resources or at worst corrupt
memory. Fundamentally, the page pool code cannot allow DMA
mappings to outlive the driver they belong to."


The description of the fixing is also in the commit log of patch 2
as below:
"By using the 'struct page_pool_item' referenced by page->pp_item,
page_pool is not only able to keep track of the inflight page to
do dma unmmaping if some pages are still handled in networking
stack when page_pool_destroy() is called, and networking stack is
also able to find the page_pool owning the page when returning
pages back into page_pool:
1. When a page is added to the page_pool, an item is deleted from
   pool->hold_items and set the 'pp_netmem' pointing to that page
   and set item->state and item->pp_netmem accordingly in order to
   keep track of that page, refill from pool->release_items when
   pool->hold_items is empty or use the item from pool->slow_items
   when fast items run out.
2. When a page is released from the page_pool, it is able to tell
   which page_pool this page belongs to by masking off the lower
   bits of the pointer to page_pool_item *item, as the 'struct
   page_pool_item_block' is stored in the top of a struct page. And
   after clearing the pp_item->state', the item for the released page
   is added back to pool->release_items so that it can be reused for
   new pages or just free it when it is from the pool->slow_items.
3. When page_pool_destroy() is called, item->state is used to tell if
   a specific item is being used/dma mapped or not by scanning all the
   item blocks in pool->item_blocks, then item->netmem can be used to
   do the dma unmmaping if the corresponding inflight page is dma
   mapped."

it is worth to mention that the changing of page->pp to page->pp_item
for the above fix may be able to enable the decoupling page_pool from
using the metadata of 'struct page' if folios only provide a memdesc
pointer to the page_pool subsystem in the future as pp_item may be
used as the metadata replacement of existing 'struct page'.

> 
