Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A151C988E32
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Sep 2024 09:35:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 30B9B405EF;
	Sat, 28 Sep 2024 07:35:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xxDNCzUjYKzr; Sat, 28 Sep 2024 07:35:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6CCEE405F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727508906;
	bh=CZ3GJJVCrrzGvR7fAA0nSrjc16wiFeyBC54h9NaWyFQ=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XZc6BjH8bT3Z2ekzYO2nTfviCVFvgCmVSCLyRfsVCO13BcHNhSpfYodAQzaVyXysN
	 l9V/58SMi+XNJQP9MCjn4EmrSKu1hg1renmEx1NI+7J1J91E1GrTvHozM+7TLAbd5t
	 clcQubntA6rDA50b0Hye2RzVD9kAFaywzZL0lxr96OsTBvSy16MR2QM819kFmU2JCh
	 VpIpDkK7opph+5OKnM+qUS0m77rT2enYBCxuwMHnCxJSIj6Qj71oJmdfxYh/LEoeeb
	 IyVSrKwIX0mwLhBFb8tu/U29W2889lBes09rMhEe2pNvmMt2UA3fhxZsvMar431+Gn
	 NQtre0frhI5Xw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6CCEE405F3;
	Sat, 28 Sep 2024 07:35:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5ED9F1BF338
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Sep 2024 07:35:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 54D9D81285
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Sep 2024 07:35:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q4bnkUf0xHRB for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 Sep 2024 07:35:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::433; helo=mail-pf1-x433.google.com;
 envelope-from=ilias.apalodimas@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2532081280
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2532081280
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com
 [IPv6:2607:f8b0:4864:20::433])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2532081280
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Sep 2024 07:35:02 +0000 (UTC)
Received: by mail-pf1-x433.google.com with SMTP id
 d2e1a72fcca58-7198cb6bb02so2115759b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Sep 2024 00:35:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727508902; x=1728113702;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=CZ3GJJVCrrzGvR7fAA0nSrjc16wiFeyBC54h9NaWyFQ=;
 b=HUh9yjpZUufaeFjw095cUYsbYt+qUGXw/ojC8WbC6MLvQ42QSmOXWW3yTuqw840PmP
 eQT5+z9eEvY5X2oMmOltrPXG0kpXELolK2wUXmZTcSoriqnwbDzsIm79EGY0CeIvQefT
 SnqdG1NgP0NnswF4kBicC1C7QzGOYFspNQZGF4FPx2JqBif17n0DNhMVbiITu7ZjNjvG
 tvVJbn8Lt1eDhm09NaKNGie3RixE818HEV8ewz4fBASPcDofi8xtsMvUURwkfBkQdiX4
 nElWkchLdbQWZObTi5/qzOIkkWYBStw9/01v7Oqz9Y1g48EzqFMOwH/XthwyZldkCrin
 MsAg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXtDc5Hw6fc/CQj6/cVWqtWd3jc15DjqBWZdUBDEI7nlK+9cat7peEh9r2AllOFWbYYn3HrjxzQ9K8/0cnFJCQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxYzU/TgWqQ8KlqoF2xBkqkDcTlLp77zRhhPVZARX7zpKTh9Raa
 J8PB1fcGf5vNENQ9BpD2lwNm/XSROnZvnrMvUZSD6eMhIDYIhAWyJMqjMaQR5gEmSYP4dhgNlxy
 biL4a9ig1VZ4cdzmddgeZgYSNatvvCkjrMzCE/A==
X-Google-Smtp-Source: AGHT+IE8STUqnUdbp16wn+jWytnLJo7GbATydnL1PXc5q5xA5jCeVCG+33+GkdczeH+HdjoM/t8GaXFW5O+RCkxcmVg=
X-Received: by 2002:a05:6a00:8c2:b0:714:2482:ab3c with SMTP id
 d2e1a72fcca58-71b25f40b4cmr9950991b3a.7.1727508902091; Sat, 28 Sep 2024
 00:35:02 -0700 (PDT)
MIME-Version: 1.0
References: <20240925075707.3970187-1-linyunsheng@huawei.com>
 <20240925075707.3970187-3-linyunsheng@huawei.com>
 <CAHS8izOxugzWJDTc-4CWqaKABTj=J4OHs=Lcb=SE9r8gX0J+yg@mail.gmail.com>
 <842c8cc6-f716-437a-bc98-70bc26d6fd38@huawei.com>
 <CAC_iWjLgNOtsbhqrhvvEz2C3S668qB8KatL_W+tPHMSkDrNS=w@mail.gmail.com>
 <0ef315df-e8e9-41e8-9ba8-dcb69492c616@huawei.com>
 <CAC_iWjKeajwn3otjdEekE6VDLHGEvqmnQRwpN5R3yHj8UpEiDw@mail.gmail.com>
 <934d601f-be43-4e04-b126-dc86890a4bfa@huawei.com>
In-Reply-To: <934d601f-be43-4e04-b126-dc86890a4bfa@huawei.com>
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
Date: Sat, 28 Sep 2024 10:34:25 +0300
Message-ID: <CAC_iWjL7m4ZL2W2OZM5F22dLvZhxU6fyCXV_xjyGf+W7UP43EQ@mail.gmail.com>
To: Yunsheng Lin <linyunsheng@huawei.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1727508902; x=1728113702; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=CZ3GJJVCrrzGvR7fAA0nSrjc16wiFeyBC54h9NaWyFQ=;
 b=qn0OibutpzULM1VXyTiV2woXAoFBLbx3JAzmTdhxFbKkbc+IEcl+8Ngj8lcdZxbMBd
 Gf9BgmFTTH1iT/cO2D3Wee2TaB39ALfrnUrPUgT7oD33YJQ4SHDNW6SMO9BMACzhF+SJ
 6TB8oPank6R1HYEhsPEE0j8fgZFEaifLakjUVrc2kzh57RZ+tifShyp+CJjLbwHvWgdN
 0gLLsndJPoRqvLMTIRLDTEewszuUWDvBRu4FT7/Dczlza8oVc23rwkFmCXA0WZDXjLS3
 G2A0e2DMtMbTyOwCM28/8HJWOy6PvL6OznOo885PG25RyaxtCrIlyY4kdRn58TI/RSrc
 4CSg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=qn0Oibut
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
 Shenwei Wang <shenwei.wang@nxp.com>, Mina Almasry <almasrymina@google.com>,
 Ryder Lee <ryder.lee@mediatek.com>, Daniel Borkmann <daniel@iogearbox.net>,
 linux-rdma@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, IOMMU <iommu@lists.linux.dev>,
 liuyonglong@huawei.com, Clark Wang <xiaoning.wang@nxp.com>,
 zhangkun09@huawei.com, fanghaiqing@huawei.com, pabeni@redhat.com,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>, Kalle Valo <kvalo@kernel.org>,
 Sean Wang <sean.wang@mediatek.com>, Wei Fang <wei.fang@nxp.com>,
 kuba@kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Leon Romanovsky <leon@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, netdev@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 Shayne Chen <shayne.chen@mediatek.com>, Saeed Mahameed <saeedm@nvidia.com>,
 davem@davemloft.net, Felix Fietkau <nbd@nbd.name>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Yunsheng,

Overall this is a patch in the right direction. I want to get feedback
from others since Jakub and Jesper seemed to prefer the stalling idea.

On Fri, 27 Sept 2024 at 14:29, Yunsheng Lin <linyunsheng@huawei.com> wrote:
>
> On 2024/9/27 17:58, Ilias Apalodimas wrote:
>
> ...
>
> >>
> >>> importantly, though, why does struct page need to know about this?
> >>> Can't we have the same information in page pool?
> >>> When the driver allocates pages it does via page_pool_dev_alloc_XXXXX
> >>> or something similar. Cant we do what you suggest here ? IOW when we
> >>> allocate a page we put it in a list, and when that page returns to
> >>> page_pool (and it's mapped) we remove it.
> >>
> >> Yes, that is the basic idea, but the important part is how to do that
> >> with less performance impact.
> >
> > Yes, but do you think that keeping that list of allocated pages in
> > struct page_pool will end up being more costly somehow compared to
> > struct page?
>
> I am not sure if I understand your above question here.
> I am supposing the question is about what's the cost between using
> single/doubly linked list for the inflight pages or using a array
> for the inflight pages like this patch does using pool->items?

Yes, that wasn't very clear indeed, apologies for any confusion. I was
trying to ask on a linked list that only lives in struct page_pool.
But I now realize this was a bad idea since the lookup would be way
slower.

> If I understand question correctly, the single/doubly linked list
> is more costly than array as the page_pool case as my understanding.
>
> For single linked list, it doesn't allow deleting a specific entry but
> only support deleting the first entry and all the entries. It does support
> lockless operation using llist, but have limitation as below:
> https://elixir.bootlin.com/linux/v6.7-rc8/source/include/linux/llist.h#L13
>
> For doubly linked list, it needs two pointer to support deleting a specific
> entry and it does not support lockless operation.

I didn't look at the patch too carefully at first. Looking a bit
closer now, the array is indeed better, since the lookup is faster.
You just need the stored index in struct page to find the page we need
to unmap. Do you remember if we can reduce the atomic pp_ref_count to
32bits? If so we can reuse that space for the index. Looking at it
requires a bit more work in netmem, but that's mostly swapping all the
atomic64 calls to atomic ones.

>
> For pool->items, as the alloc side is protected by NAPI context, and the
> free side use item->pp_idx to ensure there is only one producer for each
> item, which means for each item in pool->items, there is only one consumer
> and one producer, which seems much like the case when the page is not
> recyclable in __page_pool_put_page, we don't need a lock protection when
> calling page_pool_return_page(), the 'struct page' is also one consumer
> and one producer as the pool->items[item->pp_idx] does:
> https://elixir.bootlin.com/linux/v6.7-rc8/source/net/core/page_pool.c#L645
>
> We only need a lock protection when page_pool_destroy() is called to
> check if there is inflight page to be unmapped as a consumer, and the
> __page_pool_put_page() may also called to unmapped the inflight page as
> another consumer,

Thanks for the explanation. On the locking side, page_pool_destroy is
called once from the driver and then it's either the workqueue for
inflight packets or an SKB that got freed and tried to recycle right?
But do we still need to do all the unmapping etc from the delayed
work? Since the new function will unmap all packets in
page_pool_destroy, we can just skip unmapping when the delayed work
runs

Thanks
/Ilias





> there is why the 'destroy_lock' is added for protection
> when pool->destroy_cnt > 0.
>
> >
> > Thanks
> > /Ilias
