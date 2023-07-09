Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CCCA74D9B9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jul 2023 17:22:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 957ED60F6B;
	Mon, 10 Jul 2023 15:22:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 957ED60F6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689002546;
	bh=MTJWVAWPecYI6yQgIrP01VdymotFk9G9MdvU2D0+sGQ=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bYa3moyRDzGvfar0iHMSqneK70NXBDX92y0XoYsdWdwtJT4OAiLW0q1d7KpZxLJU0
	 aUz9b29JXR1wmJgS2ZXTNRAg9g/CxXVdavGiXoBULbo+5zeZildj9OEydnuoQvh3Kk
	 QT2QoiDBmajs8v0tezUV74yZly0hinaDxXlnoN94j1WrwA139058T4AhSXENjwa1eh
	 rTFDMNQS/4K8w4Oefo+TjBo1slqneb7IK5t4Y84HlBX6krk6iYKDTKb5f6ids1zMp0
	 WAmd7Uaw80fk6TIjDyN7G0un3nyBFT6VZtYTMPqWffWZjQjtb4EU5/E1twj1nHVH5D
	 iXa4K8+K4qCLw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F2q9EjfUvRYk; Mon, 10 Jul 2023 15:22:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2BAAE60F5C;
	Mon, 10 Jul 2023 15:22:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2BAAE60F5C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 137C91BF32D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jul 2023 05:16:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DDB8041570
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jul 2023 05:16:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DDB8041570
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q_VLncvg_ZJq for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Jul 2023 05:16:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2C5F4156E
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com
 [IPv6:2607:f8b0:4864:20::442])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E2C5F4156E
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jul 2023 05:16:44 +0000 (UTC)
Received: by mail-pf1-x442.google.com with SMTP id
 d2e1a72fcca58-668704a5b5bso2859105b3a.0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 08 Jul 2023 22:16:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688879804; x=1691471804;
 h=content-transfer-encoding:content-language:in-reply-to:mime-version
 :user-agent:date:message-id:from:references:cc:to:subject
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Ztnp1qTer1IaWaOObtyfdo8muim3ULQZOmol0cBsgFo=;
 b=Ay4nYgSJW4wHpy8WuKuL/xYIH4udAcMeeJgSfFa6CZjfWApSGmganaTupy92zCAvUK
 oqhQ9i5hZAlXZkOBvv8kumj/l9zwNEDEXl5+iAHbKl+WQGY2LP7N8Tf5/9I2R41k5zmE
 OK/XSrhR5igmMDWQvkjI+d7s3xhqe7gBHc1enjmB1QNBPXIL4j/92GEix4A+8Qq+ivpb
 HDadLmQ4WQXT5PI+w2e0Qlx0dpyKHqSb1zxBGMvv0kUF603gk6enCdckOjsKSdFEtzom
 YsYOpbilcapkE4+Hn9OeHBYltcvwPo+9O5a53uXTzFO1BYydH5OIg7bdu4TWe1XIEFMo
 5BsA==
X-Gm-Message-State: ABy/qLaWYD2r+umsImlUp1XHjoMthGxDQ/DVcOSlpJsEcz22cxKPURjx
 0e65byOTjk8pX4xW7mrGtz4=
X-Google-Smtp-Source: APBJJlGdQ+mZwEX7hoR7kwbuM2LjVWZ2BiFPsOtvISNt912jjNntEHQo8YA+l89fvmmiQE4Ea48isQ==
X-Received: by 2002:a05:6a20:3d85:b0:12c:9100:362f with SMTP id
 s5-20020a056a203d8500b0012c9100362fmr12083123pzi.4.1688879804232; 
 Sat, 08 Jul 2023 22:16:44 -0700 (PDT)
Received: from ?IPv6:2409:8a55:301b:e120:1523:3ecb:e154:8f22?
 ([2409:8a55:301b:e120:1523:3ecb:e154:8f22])
 by smtp.gmail.com with ESMTPSA id
 b18-20020aa78712000000b0066684d8115bsm5134939pfo.178.2023.07.08.22.16.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 08 Jul 2023 22:16:43 -0700 (PDT)
To: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Yunsheng Lin <linyunsheng@huawei.com>
References: <20230705155551.1317583-1-aleksander.lobakin@intel.com>
 <20230705155551.1317583-6-aleksander.lobakin@intel.com>
 <138b94a7-c186-bdd9-e073-2794760c9454@huawei.com>
 <09a9a9ef-cf77-3b60-2845-94595a42cf3e@intel.com>
From: Yunsheng Lin <yunshenglin0825@gmail.com>
Message-ID: <71a8bab4-1a1d-cb1a-d75c-585a14c6fb2e@gmail.com>
Date: Sun, 9 Jul 2023 13:16:33 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <09a9a9ef-cf77-3b60-2845-94595a42cf3e@intel.com>
Content-Language: en-GB
X-Mailman-Approved-At: Mon, 10 Jul 2023 15:22:19 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1688879804; x=1691471804;
 h=content-transfer-encoding:content-language:in-reply-to:mime-version
 :user-agent:date:message-id:from:references:cc:to:subject:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Ztnp1qTer1IaWaOObtyfdo8muim3ULQZOmol0cBsgFo=;
 b=IsgnDEPrWv2qRNJgNRsVo8hNkyVbhR4y/lQoM5aXev+JVsfWrzOlmuqSFm45QBgJ8R
 6tkBuQZRIooyMTUjcoEjpg7QgA8qgnth8KEaXac8CIVHISlQqaJHMSE+eUB3cuP/MW6Q
 aDK7U9HJHKaztcZa0wu0XWkyNSR3vEbtAZfH07pzExxQD+2AfL/pNPCQrFZRk+yB2P/K
 k2RSyMaC5n1SIx1fvr9sE9VvPDivv2AfEfA5sZuVwvq5GaJYnIE4I52sNLmVawpLK4iu
 XibGU11vQEo9T1aMS7xj6lou+AeoQMlIfzf1THbJWKm0plNF5GUYez1Wpr51kxLybivP
 MrbQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=IsgnDEPr
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

On 2023/7/7 0:28, Alexander Lobakin wrote:
> From: Yunsheng Lin <linyunsheng@huawei.com>
> Date: Thu, 6 Jul 2023 20:47:28 +0800
> 
>> On 2023/7/5 23:55, Alexander Lobakin wrote:
>>
>>> +/**
>>> + * libie_rx_page_pool_create - create a PP with the default libie settings
>>> + * @napi: &napi_struct covering this PP (no usage outside its poll loops)
>>> + * @size: size of the PP, usually simply Rx queue len
>>> + *
>>> + * Returns &page_pool on success, casted -errno on failure.
>>> + */
>>> +struct page_pool *libie_rx_page_pool_create(struct napi_struct *napi,
>>> +					    u32 size)
>>> +{
>>> +	struct page_pool_params pp = {
>>> +		.flags		= PP_FLAG_DMA_MAP | PP_FLAG_DMA_SYNC_DEV,
>>> +		.order		= LIBIE_RX_PAGE_ORDER,
>>> +		.pool_size	= size,
>>> +		.nid		= NUMA_NO_NODE,
>>> +		.dev		= napi->dev->dev.parent,
>>> +		.napi		= napi,
>>> +		.dma_dir	= DMA_FROM_DEVICE,
>>> +		.offset		= LIBIE_SKB_HEADROOM,
>>
>> I think it worth mentioning that the '.offset' is not really accurate
>> when the page is split, as we do not really know what is the offset of
>> the frag of a page except for the first frag.
> 
> Yeah, this is read as "offset from the start of the page or frag to the
> actual frame start, i.e. its Ethernet header" or "this is just
> xdp->data - xdp->data_hard_start".

So the problem seems to be if most of drivers have a similar reading as
libie does here, as .offset seems to have a clear semantics which is used
to skip dma sync operation for buffer range that is not touched by the
dma operation. Even if it happens to have the same value of "offset from
the start of the page or frag to the actual frame start", I am not sure
it is future-proofing to reuse it.

When page frag is added, I didn't really give much thought about that as
we use it in a cache coherent system.
It seems we might need to extend or update that semantics if we really want
to skip dma sync operation for all the buffer ranges that are not touched
by the dma operation for page split case.
Or Skipping dma sync operation for all untouched ranges might not be worth
the effort, because it might need a per frag dma sync operation, which is
more costly than a batched per page dma sync operation. If it is true, page
pool already support that currently as my understanding, because the dma
sync operation is only done when the last frag is released/freed.

> 
>>
>>> +	};
>>> +	size_t truesize;
>>> +
>>> +	pp.max_len = libie_rx_sync_len(napi->dev, pp.offset);

As mentioned above, if we depend on the last released/freed frag to do the
dma sync, the pp.max_len might need to cover all the frag.

>>> +
>>> +	/* "Wanted" truesize, passed to page_pool_dev_alloc() */
>>> +	truesize = roundup_pow_of_two(SKB_HEAD_ALIGN(pp.offset + pp.max_len));
>>> +	pp.init_arg = (void *)truesize;
>>
>> I am not sure if it is correct to use pp.init_arg here, as it is supposed to
>> be used along with init_callback. And if we want to change the implemetation
> 
> I know. I abused it to save 1 function argument :p It's safe since I
> don't use init_callback (not an argument).
> I was thinking also of having a union in PP params or even a new field
> like "wanted true size", so that your function could even take values
> from there in certain cases (e.g. if I pass 0 as parameter).
> 
>> of init_callback, we may stuck with it as the driver is using it very
>> differently here.
>>
>> Is it possible to pass the 'wanted true size' by adding a parameter for
>> libie_rx_alloc()?
> 
> Yes, or I could store it somewhere on the ring, but looks uglier =\ This
> one does as well to some degree, but at least hidden in the library and
> doesn't show up in the drivers :D

It seems most hw driver know the size of memory it needs when creating
the ring/queue, setting the frag size and deciding how many is a page
split into before allocation seems like a possible future optimization.

For now, it would be better to add helper to acess pp.init_arg at least
instead of acess pp.init_arg directly to make it more obvious and make
the future optimization more easier.

> 
>>
>>> +
>>> +	return page_pool_create(&pp);
>>> +}
>>> +EXPORT_SYMBOL_NS_GPL(libie_rx_page_pool_create, LIBIE);
> 
> Thanks,
> Olek

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
