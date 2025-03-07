Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E68FA56A1C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Mar 2025 15:15:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1EB3383F5A;
	Fri,  7 Mar 2025 14:15:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TdEX5FE8w8Qs; Fri,  7 Mar 2025 14:15:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C09AC84108
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741356934;
	bh=3O3AnmpQI3jBSfzVaFR0gisRYPo1AftdSa2GSlKHZsw=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=u18FLWGnsC3Y9g0j3L2HQVVSPUhpJ6TyoiFIo90RJEMoZ20vYNpPIuh/OyJWWTmY1
	 FaOSqpSaLBuSCZRtQzz9+HQd5I4vTxVC8FCmVHf1KmkjNU6lN3O/z6LQ7jVaNnsVF+
	 cBsIUmXQiLFtc/DNnscbau2d14HUkU25Ht/VI5RWIwBf2sun1xtTtIWlhU/EiJ0ldP
	 kxQDkuK+6eJTm09EXCUP13vgQJ0ZUrcpMOQc/jCxFbfahHDQZihsREd2011v/fkSUA
	 TCNXOf71ujUt6K2MZQishDC7fK0mCkCj5KRFibxYJ7VAMrgUd0BCrXWjvIUy6rGrDT
	 a/TnHBDBTgqwA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C09AC84108;
	Fri,  7 Mar 2025 14:15:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 23AE61C9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 14:15:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0008A40849
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 14:15:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wLzi9tD0hzcv for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Mar 2025 14:15:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=toke@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AEF4140843
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AEF4140843
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AEF4140843
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 14:15:29 +0000 (UTC)
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-621-azjqsLN3M9y9mMc-TowDMg-1; Fri, 07 Mar 2025 09:15:27 -0500
X-MC-Unique: azjqsLN3M9y9mMc-TowDMg-1
X-Mimecast-MFC-AGG-ID: azjqsLN3M9y9mMc-TowDMg_1741356926
Received: by mail-lj1-f198.google.com with SMTP id
 38308e7fff4ca-30bf67adf33so4079001fa.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 07 Mar 2025 06:15:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741356926; x=1741961726;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=3O3AnmpQI3jBSfzVaFR0gisRYPo1AftdSa2GSlKHZsw=;
 b=uyk/E6JQq5YCcBJ5D1FkUU2CUpWqDDTW6E11yG4XTX1B8Baia11vA2Fa/4hN3WKaPp
 1ErP+Fe0jFag6keom/tNazYsQ0+mJzCSeFBqq9zhRY2JqBVGR1HVCR1VeXOXpCRKmbLs
 +zLGCjHOzIAuHVfCr+KCQeBJfGBIT0z2gq04wvWKgFj/zJOGcgxCtVqC2t8nsPKFKGvK
 gVSQ7oh44Jj2vWAbJtz1vjaggTzusl+vob0fYV6DCYjdrBQQx20WrMleGu0h8NCYL3Lx
 zKxSDGU4XCWyFasjjZwwPaMQ0+OHs2bWIuxIXImE+4uwM2L5WCVV0OlCFS19oLSYT4gl
 Suew==
X-Forwarded-Encrypted: i=1;
 AJvYcCV1d3RWmgXWfDTwSZtUXr1sT6sN/voNB67KncJyPPOcPzjsUJ2aVd03iurtjsSitXwAKrDmXRDvaXDkhh5cHuU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzTSgWEOmibKvcZYob+tP863wgW7IE83BeDlJMl72Gg7N1iLRt/
 SkFAuqiGPKtUDutAmdRTodNuRwDlh6M2hPhremL0BndSuSyr/8UFWpqP+c0c1rub5LK75yC4L4s
 1gY7Sjz8x9kbkQUEdxk+4YWYjXyrf0iuk0hZkJUTraSjxjP/bLbrXtg252N0CRdgdWq0=
X-Gm-Gg: ASbGncvlyBU/xo7ayJFLw7eVv3Aa8vM71ACN7yFMGPQ++q32+elEVPJGWxsrYfQov8x
 porCrqUNlRzSb2rWsYELtALKV6/n+JL/xTDyBDq3+KOkyjDImE1n4+GsZlBBRNf7/xF3OgZqg+w
 If5Zorzps9kv9F5+uNsRiddNdOCev/ltOnLz3Io4eUJMmgWmWkp6MTtxjf7uqxxV8AiqtDm1Agy
 3ipTuARsDwP/L37cJiotrnhlhqvFiZGZEZklzeotESOTMg0LP10CbiSRmGwKQx6i2PwizV8hHXz
 i9Fcj678ynjA
X-Received: by 2002:a05:6512:3e08:b0:549:8c0c:f059 with SMTP id
 2adb3069b0e04-549903f7501mr1328615e87.10.1741356925936; 
 Fri, 07 Mar 2025 06:15:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE3xCZIBKOSDK+lcZFrDyk8zQiKyadlLEz2VUX4gZrVM2Ry982AQyl3kHsVBYxqC5TNxfqK0A==
X-Received: by 2002:a05:6512:3e08:b0:549:8c0c:f059 with SMTP id
 2adb3069b0e04-549903f7501mr1328584e87.10.1741356925465; 
 Fri, 07 Mar 2025 06:15:25 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5498ae58e4fsm500345e87.82.2025.03.07.06.15.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Mar 2025 06:15:24 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id C544C18B8B34; Fri, 07 Mar 2025 15:15:22 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Yunsheng Lin <linyunsheng@huawei.com>, davem@davemloft.net,
 kuba@kernel.org, pabeni@redhat.com
Cc: zhangkun09@huawei.com, liuyonglong@huawei.com, fanghaiqing@huawei.com,
 Yunsheng Lin <linyunsheng@huawei.com>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Robin Murphy <robin.murphy@arm.com>,
 Alexander Duyck <alexander.duyck@gmail.com>, Andrew Morton
 <akpm@linux-foundation.org>, Gaurav Batra <gbatra@linux.ibm.com>, Matthew
 Rosato <mjrosato@linux.ibm.com>, IOMMU <iommu@lists.linux.dev>, MM
 <linux-mm@kvack.org>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, John
 Fastabend <john.fastabend@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
In-Reply-To: <20250307092356.638242-1-linyunsheng@huawei.com>
References: <20250307092356.638242-1-linyunsheng@huawei.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 07 Mar 2025 15:15:22 +0100
Message-ID: <87v7slvsed.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: NhcF0ACV9Xkdlf_jh3RjDXy-okQbyn0JS9-p3iAa7Yo_1741356926
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1741356929;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=3O3AnmpQI3jBSfzVaFR0gisRYPo1AftdSa2GSlKHZsw=;
 b=Q/kOEZhUl782qrTrTEyAu13c8l17pENgQcckuWSSz5lgbKzlDkkHVx5Q5pvqcvaRKi8ogX
 tYlSO3DuR46R7RAIwW6mSKCblHqgykKV60/pwh3RUW7C2YIky4TgTdPlet8K0GlRnmbprU
 9ARxVac0F8Af8C1wOhPT7IVsZv3fTiE=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Q/kOEZhU
Subject: Re: [Intel-wired-lan] [PATCH net-next v11 0/4] fix the DMA API
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

Yunsheng Lin <linyunsheng@huawei.com> writes:

> This patchset fix the dma API misuse problem as below:
> Networking driver with page_pool support may hand over page
> still with dma mapping to network stack and try to reuse that
> page after network stack is done with it and passes it back
> to page_pool to avoid the penalty of dma mapping/unmapping.
> With all the caching in the network stack, some pages may be
> held in the network stack without returning to the page_pool
> soon enough, and with VF disable causing the driver unbound,
> the page_pool does not stop the driver from doing it's
> unbounding work, instead page_pool uses workqueue to check
> if there is some pages coming back from the network stack
> periodically, if there is any, it will do the dma unmmapping
> related cleanup work.
>
> As mentioned in [1], attempting DMA unmaps after the driver
> has already unbound may leak resources or at worst corrupt
> memory. Fundamentally, the page pool code cannot allow DMA
> mappings to outlive the driver they belong to.
>
> By using the 'struct page_pool_item' referenced by page->pp_item,
> page_pool is not only able to keep track of the inflight page to
> do dma unmmaping if some pages are still handled in networking
> stack when page_pool_destroy() is called, and networking stack is
> also able to find the page_pool owning the page when returning
> pages back into page_pool:
> 1. When a page is added to the page_pool, an item is deleted from
>    pool->hold_items and set the 'pp_netmem' pointing to that page
>    and set item->state and item->pp_netmem accordingly in order to
>    keep track of that page, refill from pool->release_items when
>    pool->hold_items is empty or use the item from pool->slow_items
>    when fast items run out.
> 2. When a page is released from the page_pool, it is able to tell
>    which page_pool this page belongs to by masking off the lower
>    bits of the pointer to page_pool_item *item, as the 'struct
>    page_pool_item_block' is stored in the top of a struct page.
>    And after clearing the pp_item->state', the item for the
>    released page is added back to pool->release_items so that it
>    can be reused for new pages or just free it when it is from the
>    pool->slow_items.
> 3. When page_pool_destroy() is called, item->state is used to tell
>    if a specific item is being used/dma mapped or not by scanning
>    all the item blocks in pool->item_blocks, then item->netmem can
>    be used to do the dma unmmaping if the corresponding inflight
>    page is dma mapped.

You are making this incredibly complicated. You've basically implemented
a whole new slab allocator for those page_pool_item objects, and you're
tracking every page handed out by the page pool instead of just the ones
that are DMA-mapped. None of this is needed.

I took a stab at implementing the xarray-based tracking first suggested
by Mina[0]:

https://git.kernel.org/toke/c/e87e0edf9520

And, well, it's 50 lines of extra code, none of which are in the fast
path.

Jesper has kindly helped with testing that it works for normal packet
processing, but I haven't yet verified that it resolves the original
crash. Will post the patch to the list once I have verified this (help
welcome!).

-Toke

[0] https://lore.kernel.org/all/CAHS8izPg7B5DwKfSuzz-iOop_YRbk3Sd6Y4rX7KBG9DcVJcyWg@mail.gmail.com/

