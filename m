Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 350C39878FB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Sep 2024 20:15:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 06A584063B;
	Thu, 26 Sep 2024 18:15:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xv0Ctix2CJCp; Thu, 26 Sep 2024 18:15:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B52F8409A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727374536;
	bh=ghI5wl9Rodk/qOTN/GXzEVkvMG0ZFbywRGFDuKaTQGk=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xUGIDiexQDtdSu6QENMg1Bm6Qx4bIA3LOkPM27qmmXyCpn1LeYWjbzP01Rq6DoUK8
	 lB3a3gsraoM2PfkBpONETc62VJhHluxWiK3M+PY3spg51volzqs9TZTWPbaLMhxomt
	 jcii6e2HhBWRLlT76Peo9nkf7xBBpMI9wwtJVji0Uv7GnSY2dOWrfPZXhywKOza+9U
	 Md8RkbUV0+DdFFagYRikc2dhbtWSwon1VFPO8hI06LqPClmo5s/PryDRU5PpCouyDJ
	 YYb104S94y1EfpxWSZkPgiAM0fsQXLPcMZniUNeEHqgvL44oKikQRE3h5PGvTjrzug
	 cxaX/lzt6Abdw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B52F8409A2;
	Thu, 26 Sep 2024 18:15:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 59E0F1BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2024 18:15:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 47DB781309
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2024 18:15:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B3TgLdvSM_QU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Sep 2024 18:15:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::82e; helo=mail-qt1-x82e.google.com;
 envelope-from=almasrymina@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 59A48813C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 59A48813C3
Received: from mail-qt1-x82e.google.com (mail-qt1-x82e.google.com
 [IPv6:2607:f8b0:4864:20::82e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 59A48813C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2024 18:15:33 +0000 (UTC)
Received: by mail-qt1-x82e.google.com with SMTP id
 d75a77b69052e-4582a5b495cso35841cf.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2024 11:15:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727374532; x=1727979332;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ghI5wl9Rodk/qOTN/GXzEVkvMG0ZFbywRGFDuKaTQGk=;
 b=PKUZvSSWDB/L2upnL/FmNysuKIVnY0z0/Nr7vQtfwnr8a+MT3HDWIUbcco+EnLKcvp
 /TdA6zQKGQn39qsNoBgt8/Za3nEI7Glye+QFZueyHlzeOkGXs9/fs9jx0VLicX2aXqHm
 KiZzloWv7C+EaiUGTSCcV7bTR8R24xSzi4Byax+eC7O6byPc8XdwyBhi7Ls1sIdrBnC6
 W4h4dDN4VgA4aqKSmfxwfRboF3HIk96aJacM31J+NKGeYXAXQgS8Hnl/jvg/C6d9Ujx3
 CqEta63rh4eEpz6Kl1rc1Qvt2HaHeT15Yvu1aNUIjqNfE0btXJgDWB3w2Eq/Wk6hivwC
 ZFig==
X-Forwarded-Encrypted: i=1;
 AJvYcCU0oHbJTvTnvRKdpNek16Q+mLGJwtRwsoVN4WYcS3QQn0GnpjNXnbW5qsMopigpTWfwfaygsPrYNdhfgWAdkrU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwVv63au46ehs9slWTy/5+rYYVSpoXMyU0c/e9ik8GRhnb5E/hM
 aZZq2U9p4/L6eOhUgHP0mifBYma/s0Q5FjFypOvNXfdIbloeTzMEQIuC95MiMxr/iO1nN1gwl7N
 g7SONG3WKN4YqKoDe3+0BK5XbxEu/lMW+7GQA
X-Google-Smtp-Source: AGHT+IEKskNfWv42/OYoUzFnd0ZbE37pwmmbLc0UUgMIXvnGdU5BvAly31C36TplRHtvwCbfAj6CwKAwWZwa5Zx659M=
X-Received: by 2002:a05:622a:24a:b0:453:62ee:3fe with SMTP id
 d75a77b69052e-45ca03e60f6mr134981cf.17.1727374531410; Thu, 26 Sep 2024
 11:15:31 -0700 (PDT)
MIME-Version: 1.0
References: <20240925075707.3970187-1-linyunsheng@huawei.com>
 <20240925075707.3970187-3-linyunsheng@huawei.com>
In-Reply-To: <20240925075707.3970187-3-linyunsheng@huawei.com>
From: Mina Almasry <almasrymina@google.com>
Date: Thu, 26 Sep 2024 11:15:15 -0700
Message-ID: <CAHS8izOxugzWJDTc-4CWqaKABTj=J4OHs=Lcb=SE9r8gX0J+yg@mail.gmail.com>
To: Yunsheng Lin <linyunsheng@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1727374532; x=1727979332; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ghI5wl9Rodk/qOTN/GXzEVkvMG0ZFbywRGFDuKaTQGk=;
 b=JP8V8goCKZ8J+EVFr+u+lLPZwdJjaHSbATu0QE407hY/leMbRo+ZCGL9g+twmi9kh7
 V/qn7eBebFgdEwf2NRg+XZX8ofaLtkY7BPS6pXv7lpP+lFhDmrOi5RtUyuTUMp9MBsC0
 mc9w0+g6UYGFG2yOqLqnT9LtiXELWzBo8SRsXbrbCQeXLDrKcY3AzJqa4w8ypyfNDF13
 lw0V7sZaYkz1rKV/D6eoY1R1FE4F9F7AHFdXNUdwld+9BL4ashPxiKMEcWcco5B2m5sn
 LZY78wxuyNQ5kfG6t2O/ehem0dIFklGRf+BCmZgYV1tb3GIOIeuGYb4HzEjatiLJfxzv
 jBBg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=JP8V8goC
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
 zhangkun09@huawei.com, fanghaiqing@huawei.com, pabeni@redhat.com,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>, Kalle Valo <kvalo@kernel.org>,
 Sean Wang <sean.wang@mediatek.com>, Wei Fang <wei.fang@nxp.com>,
 kuba@kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Leon Romanovsky <leon@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tariq Toukan <tariqt@nvidia.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, netdev@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 Shayne Chen <shayne.chen@mediatek.com>, Saeed Mahameed <saeedm@nvidia.com>,
 davem@davemloft.net, Felix Fietkau <nbd@nbd.name>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Sep 25, 2024 at 1:03=E2=80=AFAM Yunsheng Lin <linyunsheng@huawei.co=
m> wrote:
>
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
> Currently it seems there are at least two cases that the page
> is not released fast enough causing dma unmmapping done after
> driver has already unbound:
> 1. ipv4 packet defragmentation timeout: this seems to cause
>    delay up to 30 secs.
> 2. skb_defer_free_flush(): this may cause infinite delay if
>    there is no triggering for net_rx_action().
>

I think additionally this is dependent on user behavior, right? AFAIU,
frags allocated by the page_pool will remain in the socket receive
queue until the user calls recvmsg(), and AFAIU they are stuck there
arbitrarily long.

> In order not to do the dma unmmapping after driver has already
> unbound and stall the unloading of the networking driver, add
> the pool->items array to record all the pages including the ones
> which are handed over to network stack, so the page_pool can
> do the dma unmmapping for those pages when page_pool_destroy()
> is called.

One thing I could not understand from looking at the code: if the
items array is in the struct page_pool, why do you need to modify the
page_pool entry in the struct page and in the struct net_iov? I think
the code could be made much simpler if you can remove these changes,
and you wouldn't need to modify the public api of the page_pool.

> As the pool->items need to be large enough to avoid
> performance degradation, add a 'item_full' stat to indicate the
> allocation failure due to unavailability of pool->items.
>

I'm not sure there is any way to size the pool->items array correctly.
Can you use a data structure here that can grow? Linked list or
xarray?

AFAIU what we want is when the page pool allocates a netmem it will
add the netmem to the items array, and when the pp releases a netmem
it will remove it from the array. Both of these operations are slow
paths, right? So the performance of a data structure more complicated
than an array may be ok. bench_page_pool_simple will tell for sure.

> Note, the devmem patchset seems to make the bug harder to fix,
> and may make backporting harder too. As there is no actual user
> for the devmem and the fixing for devmem is unclear for now,
> this patch does not consider fixing the case for devmem yet.
>

net_iovs don't hit this bug, dma_unmap_page_attrs() is never called on
them, so no special handling is needed really. However for code
quality reasons lets try to minimize the number of devmem or memory
provider checks in the code, if possible.

--=20
Thanks,
Mina
