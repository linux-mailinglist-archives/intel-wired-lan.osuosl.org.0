Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7513C988215
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Sep 2024 11:59:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 50407424DC;
	Fri, 27 Sep 2024 09:59:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KrS9OjfEPx8y; Fri, 27 Sep 2024 09:59:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 06A07424E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727431176;
	bh=/wFHvQrnJe6+I0Hk404NsRdbI8eFHq8tb62kLJdsI/o=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7+0vTIXkls0fqvxR6Jb3426k/37zsNHj2KxpXh5KXyw6VnUFqNVzoG90eQXTQIIuA
	 Qy1WkjR1gk/SyxSvz8Vp5mhQSMDWf1ICF0598ZCVA8qvu4gMdhth3bWxBhtlzOkqPA
	 NYpy9/AB7cuo0ZTXyyuz4he1E0gnDcNN46egB6iUu//oe92TUQl7U6S4gA2w+s5vMC
	 aonhOTx2es1nXdzSKqM+txfqf2bTIbxm1gBmHVwA0DF1oL1xCATyfn8vsumxN38MnO
	 R5BIdcODsklWc/byUGrveu3pGZ3wEhIaY0Arcp9evAmJ1kNtR00gXUJ8Bwb4SBVLd9
	 k9xmzEPZBpCKQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 06A07424E0;
	Fri, 27 Sep 2024 09:59:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E27011BF21A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 09:59:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CF87D847C3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 09:59:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vS7zA7Vp_sgn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Sep 2024 09:59:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::531; helo=mail-pg1-x531.google.com;
 envelope-from=ilias.apalodimas@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AA5E8847C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA5E8847C0
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com
 [IPv6:2607:f8b0:4864:20::531])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AA5E8847C0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 09:59:32 +0000 (UTC)
Received: by mail-pg1-x531.google.com with SMTP id
 41be03b00d2f7-7d916b6a73aso1276270a12.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 02:59:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727431172; x=1728035972;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=/wFHvQrnJe6+I0Hk404NsRdbI8eFHq8tb62kLJdsI/o=;
 b=Hcjw9i/bERbOvUlviBOw/Qt6NxRniZSw/rwSUNoK6BL8oQfO7n6TgUKWat8+BlOnbV
 /NC+I9eEFBicbpjEVBJU5GQAqx5ag6r9AQRyTlXitDaMtr6THzXYKwK4HvPQMFIpWxf2
 6abCbfoKBBqhNoqoDjML8Dim6HHZ4oBq6G0sbefnAjE1Wc7bMS37B3QBpIRWj26Tl1eg
 Ro/V//7gPkPWqmnXsGmYTBWBweTh9QoICtAkeFWC5cimRkDTlAo33zqCAEPqvj1CItSU
 s1ayfKEdVevkS3tzxewStF903MRtouJFDoj/DkwWGLcWpjAP/lpDwzFZsMWnSTsIuL11
 onRw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWItqVVnmdiuJNMxy3OASCFPqaWXUA7yp7HdYFYCfmIYFJW0ya2sLuSNhDA8riW4m4SnHEjuLqEEfm8i6t0fns=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwNLHC+KDX5o0wXrWIUL5lVJqm5IkNWA3r4eeKCf10id8wzBttn
 BOXjQ8VMQsQx5o+3aIxFQfU+ej7sYc0dDouzOPSbRcetu/S7p+b4tKLPioplB6Tx98aw2iw4NCW
 UJVNQTpu+GCZ42SgjFWuVM0w23ZgzO5jegHS5FQ==
X-Google-Smtp-Source: AGHT+IFPw7TdHI7xAVBejSYDuXRNyLLxKTG1ESrzw48y3A/pOuf25zX23NWOfeE/8MxH7DAW+JoIMvACw7ATICsO3w0=
X-Received: by 2002:a05:6a20:6f03:b0:1cf:23cb:b927 with SMTP id
 adf61e73a8af0-1d4fa7a6f8emr3754825637.34.1727431171797; Fri, 27 Sep 2024
 02:59:31 -0700 (PDT)
MIME-Version: 1.0
References: <20240925075707.3970187-1-linyunsheng@huawei.com>
 <20240925075707.3970187-3-linyunsheng@huawei.com>
 <CAHS8izOxugzWJDTc-4CWqaKABTj=J4OHs=Lcb=SE9r8gX0J+yg@mail.gmail.com>
 <842c8cc6-f716-437a-bc98-70bc26d6fd38@huawei.com>
 <CAC_iWjLgNOtsbhqrhvvEz2C3S668qB8KatL_W+tPHMSkDrNS=w@mail.gmail.com>
 <0ef315df-e8e9-41e8-9ba8-dcb69492c616@huawei.com>
In-Reply-To: <0ef315df-e8e9-41e8-9ba8-dcb69492c616@huawei.com>
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
Date: Fri, 27 Sep 2024 12:58:55 +0300
Message-ID: <CAC_iWjKeajwn3otjdEekE6VDLHGEvqmnQRwpN5R3yHj8UpEiDw@mail.gmail.com>
To: Yunsheng Lin <linyunsheng@huawei.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1727431172; x=1728035972; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=/wFHvQrnJe6+I0Hk404NsRdbI8eFHq8tb62kLJdsI/o=;
 b=Db7pEPA/AXa35rfGFHa/a+5Ftr8QuO+MLB+LcKsotLayZFsiVfwCIZQYzZkBeHQ3Db
 F9Ot7f/i5D46oyzUPD6X9e5QzTCem+DrALG+Wi++BWVpmZiJDNrpRFuDvsze32I47uUz
 RUch79RmG1QzxB+1pA/oDEKv6coX0WZ/7raD+Ae+xY2bIz2l/LlV61hkUwRmKyIJS6cc
 r0sHf6NlN9kp+QAPQDCDSISxCIDcu2Z3q4zhmaETdJlwF35nx+Tu63Ri5hzvrsIbd4ZW
 lrCl5vnrb0nlQWw+MqV7j15oyoCFrLcwXBEdJRajzqxAODEMfVTRJDg8TQ+MHj4EJ+a8
 HmJA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=Db7pEPA/
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

On Fri, 27 Sept 2024 at 12:50, Yunsheng Lin <linyunsheng@huawei.com> wrote:
>
> On 2024/9/27 17:21, Ilias Apalodimas wrote:
> > Hi Yunsheng
> >
> > On Fri, 27 Sept 2024 at 06:58, Yunsheng Lin <linyunsheng@huawei.com> wrote:
> >>
> >> On 2024/9/27 2:15, Mina Almasry wrote:
> >>>
> >>>> In order not to do the dma unmmapping after driver has already
> >>>> unbound and stall the unloading of the networking driver, add
> >>>> the pool->items array to record all the pages including the ones
> >>>> which are handed over to network stack, so the page_pool can
> >>>> do the dma unmmapping for those pages when page_pool_destroy()
> >>>> is called.
> >>>
> >>> One thing I could not understand from looking at the code: if the
> >>> items array is in the struct page_pool, why do you need to modify the
> >>> page_pool entry in the struct page and in the struct net_iov? I think
> >>> the code could be made much simpler if you can remove these changes,
> >>> and you wouldn't need to modify the public api of the page_pool.
> >>
> >> As mentioned in [1]:
> >> "There is no space in 'struct page' to track the inflight pages, so
> >> 'pp' in 'struct page' is renamed to 'pp_item' to enable the tracking
> >> of inflight page"
> >
> > I have the same feeling as Mina here. First of all, we do have an
> > unsigned long in struct page we use for padding IIRC. More
>
> I am assuming you are referring to '_pp_mapping_pad' in 'struct page',
> unfortunately the field might be used when a page is mmap'ed to user
> space as my understanding.
>

Ah good point, I just grepped for it and didn't look at the surrounding unions.

> https://elixir.bootlin.com/linux/v6.7-rc8/source/include/linux/mm_types.h#L126
>
> > importantly, though, why does struct page need to know about this?
> > Can't we have the same information in page pool?
> > When the driver allocates pages it does via page_pool_dev_alloc_XXXXX
> > or something similar. Cant we do what you suggest here ? IOW when we
> > allocate a page we put it in a list, and when that page returns to
> > page_pool (and it's mapped) we remove it.
>
> Yes, that is the basic idea, but the important part is how to do that
> with less performance impact.

Yes, but do you think that keeping that list of allocated pages in
struct page_pool will end up being more costly somehow compared to
struct page?

Thanks
/Ilias
