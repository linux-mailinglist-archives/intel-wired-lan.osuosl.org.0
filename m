Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5D4989C35
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 10:09:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A9D36605F1;
	Mon, 30 Sep 2024 08:09:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DpmAFMe8hvHJ; Mon, 30 Sep 2024 08:09:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D46F605F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727683793;
	bh=Xx414iMLuxALXKs+wO5vcFTmabes1w6H5Py+TNbMyPA=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xEVIMHxc1VazSGKlaXJYp/t9g9B3/qU/A2SmidJv3Pw0HtMO9zZcHBxhPzULsgr5B
	 3SgbFZWpNpjfTEO7syDnVjWkFkitLdOG87mwq5aQNOCXQJIHxoKq96ieseu8fxzNfs
	 c6QiHEWlrz14t8pAHo16gMzZkL6aw9rBaDZJu6nsY/RHOKsftysfVTmHWswB0SpBhm
	 HCr/w2pv/XfGSN4RwQVcRiccL+M3cuJ0E8kKdap2CsF8O7y0ykYTV3DrL18JyrPzeT
	 huLPtdqPjasoXoFtCrr+lPPizSJKBZwcbZHSuEvQPGGTdQj5M9TK09xNoDa2jxiPKh
	 /1kg0WXeQ2u3g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D46F605F4;
	Mon, 30 Sep 2024 08:09:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C367C1BF42E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 08:09:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B0099605EF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 08:09:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2Kiw5XgMdFpK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 08:09:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::632; helo=mail-pl1-x632.google.com;
 envelope-from=ilias.apalodimas@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E8B0F605DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E8B0F605DC
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com
 [IPv6:2607:f8b0:4864:20::632])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E8B0F605DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 08:09:48 +0000 (UTC)
Received: by mail-pl1-x632.google.com with SMTP id
 d9443c01a7336-20b0b2528d8so44438775ad.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 01:09:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727683788; x=1728288588;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Xx414iMLuxALXKs+wO5vcFTmabes1w6H5Py+TNbMyPA=;
 b=Rq/bmCCLxGdekROdLazVq3t6k6CK5sub7nwftAiBL3R7QIoB3VlE7c6NEC3FRMrwL4
 pv/EkrafTCMI188+gTENp34l1b8kmpU9niPvRLuYI/IEpd0qokv2Sl1vEsBYyuwKyxpu
 MW0v9KhF2vFprHzu66kwiK0dCiR/4+g8oWZaespi/C3pPaM88QB5C3+dUWhTptT69BP9
 7FC5Q/xya84cuOE6hHQOBk7ldR0dhcbXmpaFc4udJ3V7C7gfD3u0byo2+FOrKUOGXf+j
 j2g0VE9oKhXiMGL8+9hFoaEcbmrJh2uKK1aPytHBRMHwk2h1zPLoWNSjUEemhZDsAcJK
 DydA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWzrOkPPps7NNWuVZDIhCNbweJiy4m4c2+dQ/EJPOcLif+s5w1eu7kuzQZzTKHnnKRn0+gerKrQHoM/02HV9HU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzSWizj1cUKxlDyF7dtNi+DA49TY6Y7m1DBO1AxhaBkZL2S0PpE
 Yv31BHa1vQrIZuFWQcUEk/p4Qux5VkIDzBdMLVSa+d7ePvmP9fb0bca+P2cR8H0ZqzQuQdAaUg9
 dU6gvmkflbdxcwo/d8cBkqASvhifhn3Ky6Kt89Q==
X-Google-Smtp-Source: AGHT+IHL79vWrV1UbQW2i+UC3FcnuUEn4RoHxDXgrgsEhFXFX4vbKat3GD+mMJkdcENWj5dVp6Y7ppyyQzgjgk1yEE8=
X-Received: by 2002:a17:902:ce91:b0:20b:6d8c:461 with SMTP id
 d9443c01a7336-20b6d8c0791mr75062715ad.5.1727683788157; Mon, 30 Sep 2024
 01:09:48 -0700 (PDT)
MIME-Version: 1.0
References: <20240925075707.3970187-1-linyunsheng@huawei.com>
 <20240925075707.3970187-3-linyunsheng@huawei.com>
 <CAHS8izOxugzWJDTc-4CWqaKABTj=J4OHs=Lcb=SE9r8gX0J+yg@mail.gmail.com>
 <842c8cc6-f716-437a-bc98-70bc26d6fd38@huawei.com>
 <CAC_iWjLgNOtsbhqrhvvEz2C3S668qB8KatL_W+tPHMSkDrNS=w@mail.gmail.com>
 <0ef315df-e8e9-41e8-9ba8-dcb69492c616@huawei.com>
 <CAC_iWjKeajwn3otjdEekE6VDLHGEvqmnQRwpN5R3yHj8UpEiDw@mail.gmail.com>
 <934d601f-be43-4e04-b126-dc86890a4bfa@huawei.com>
 <CAC_iWjL7m4ZL2W2OZM5F22dLvZhxU6fyCXV_xjyGf+W7UP43EQ@mail.gmail.com>
 <ac2eec69-8f44-4adb-8182-02c78625851d@huawei.com>
In-Reply-To: <ac2eec69-8f44-4adb-8182-02c78625851d@huawei.com>
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
Date: Mon, 30 Sep 2024 11:09:11 +0300
Message-ID: <CAC_iWj+Shb6buVf+wZaWe-NZ+UVxmW9DYqsTiL27U+V_Ko_65w@mail.gmail.com>
To: Yunsheng Lin <linyunsheng@huawei.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1727683788; x=1728288588; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Xx414iMLuxALXKs+wO5vcFTmabes1w6H5Py+TNbMyPA=;
 b=tkZXkiViArihEpXBa2kjnFBBGqVeFmVzRUdfj+uTB71IFdVxN+wZdOSxe/qpeslGeY
 gWuum+uD1s89ajBm2bkD/qjjbRE5AKu33SPlPHjZfS7MJgPScxZjIU8nxwUowp7Z1tts
 JDrtZdIt5iqCKkA7Sp5ZjXH7Dd8TV2lw2ynEI8Y74o/aOHGueeLzuWOJCtj5xFiEeO3C
 T+AbxfxDj8oHNR5J9/6BRrsxRElozlb/pbWKKlCpy0HsnzpauNZ9gAmCT+RatAIPRFnM
 blId79z9OWhLC3zv4xWzYphvuvUOGKZUfjNrocfsh2E2QJ6cD0R9i08dWlfl2vJRFoGF
 X4sQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=tkZXkiVi
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

On Sun, 29 Sept 2024 at 05:44, Yunsheng Lin <linyunsheng@huawei.com> wrote:
>
> On 2024/9/28 15:34, Ilias Apalodimas wrote:
>
> ...
>
> >
> > Yes, that wasn't very clear indeed, apologies for any confusion. I was
> > trying to ask on a linked list that only lives in struct page_pool.
> > But I now realize this was a bad idea since the lookup would be way
> > slower.
> >
> >> If I understand question correctly, the single/doubly linked list
> >> is more costly than array as the page_pool case as my understanding.
> >>
> >> For single linked list, it doesn't allow deleting a specific entry but
> >> only support deleting the first entry and all the entries. It does support
> >> lockless operation using llist, but have limitation as below:
> >> https://elixir.bootlin.com/linux/v6.7-rc8/source/include/linux/llist.h#L13
> >>
> >> For doubly linked list, it needs two pointer to support deleting a specific
> >> entry and it does not support lockless operation.
> >
> > I didn't look at the patch too carefully at first. Looking a bit
> > closer now, the array is indeed better, since the lookup is faster.
> > You just need the stored index in struct page to find the page we need
> > to unmap. Do you remember if we can reduce the atomic pp_ref_count to
> > 32bits? If so we can reuse that space for the index. Looking at it
>
> For 64 bits system, yes, we can reuse that.
> But for 32 bits system, we may have only 16 bits for each of them, and it
> seems that there is no atomic operation for variable that is less than 32
> bits.
>
> > requires a bit more work in netmem, but that's mostly swapping all the
> > atomic64 calls to atomic ones.
> >
> >>
> >> For pool->items, as the alloc side is protected by NAPI context, and the
> >> free side use item->pp_idx to ensure there is only one producer for each
> >> item, which means for each item in pool->items, there is only one consumer
> >> and one producer, which seems much like the case when the page is not
> >> recyclable in __page_pool_put_page, we don't need a lock protection when
> >> calling page_pool_return_page(), the 'struct page' is also one consumer
> >> and one producer as the pool->items[item->pp_idx] does:
> >> https://elixir.bootlin.com/linux/v6.7-rc8/source/net/core/page_pool.c#L645
> >>
> >> We only need a lock protection when page_pool_destroy() is called to
> >> check if there is inflight page to be unmapped as a consumer, and the
> >> __page_pool_put_page() may also called to unmapped the inflight page as
> >> another consumer,
> >
> > Thanks for the explanation. On the locking side, page_pool_destroy is
> > called once from the driver and then it's either the workqueue for
> > inflight packets or an SKB that got freed and tried to recycle right?
> > But do we still need to do all the unmapping etc from the delayed
> > work? Since the new function will unmap all packets in
> > page_pool_destroy, we can just skip unmapping when the delayed work
> > runs
>
> Yes, the pool->dma_map is clear in page_pool_item_uninit() after it does
> the unmapping for all inflight pages with the protection of pool->destroy_lock,
> so that the unmapping is skipped in page_pool_return_page() when those inflight
> pages are returned back to page_pool.

Ah yes, the entire destruction path is protected which seems correct.
Instead of that WARN_ONCE in page_pool_item_uninit() can we instead
check the number of inflight packets vs what we just unmapped? IOW
check 'mask' against what page_pool_inflight() gives you and warn if
those aren't equal.


Thanks
/Ilias
>
> >
