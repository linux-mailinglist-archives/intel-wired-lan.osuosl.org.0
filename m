Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A49BD98CD62
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Oct 2024 08:52:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22E6481FD0;
	Wed,  2 Oct 2024 06:52:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 48FHUIsNUSfV; Wed,  2 Oct 2024 06:52:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 39E4B81FA2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727851949;
	bh=Wi2knaZL4xgHJFaFdtzBXqIWLSuRG81LD3CTPdMJ4G8=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dxbn6+rruoishkbQaGbk5GI2+ZGRs4p1UaZid//hKwgT+ijumvcs74cmTLZfOcx2x
	 xXOzTnZ5HMKvlp1BdJ6i4f2x3XyNRgS2r/9UPkXI0ylnrwTWBn6heGk82KJTjqbYPq
	 M6x5M1ws9x6gZHg/MEfmtPBK6f+gjFDWo+VXxWOKdYpedS1xjAWeyD5HepVvBecDN/
	 0Pb8tZMURD4A55SsZEjW9hqlRWVK/YBBqGSz+GB5jiQd4mIUbvC+2LUtt1ee17FtDl
	 xups256PXC0U43sNJxWMBBoMBSLlqaY0a7j5VN8s38t940yebJ8s7deg25R+of6Sds
	 unbB3Pb5r9HdA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 39E4B81FA2;
	Wed,  2 Oct 2024 06:52:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7CC391BF847
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 06:52:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6AAF940DC4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 06:52:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IwMmOtxwmkgz for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Oct 2024 06:52:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::536; helo=mail-pg1-x536.google.com;
 envelope-from=ilias.apalodimas@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4FDE140A3F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4FDE140A3F
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com
 [IPv6:2607:f8b0:4864:20::536])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4FDE140A3F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 06:52:26 +0000 (UTC)
Received: by mail-pg1-x536.google.com with SMTP id
 41be03b00d2f7-7db54269325so4868621a12.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 01 Oct 2024 23:52:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727851945; x=1728456745;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Wi2knaZL4xgHJFaFdtzBXqIWLSuRG81LD3CTPdMJ4G8=;
 b=cThFUWDTsa+52cYwtxKETf+nqZP8S0sAy9vb9SYsRNqPQRTZark+4sgi2f8jyS1nno
 q2xAE6R0QDcJPDYmnmhOcDrseNZ644SADUzgd7JTVg1GxYYE9RBQvIT4ji6Q44aXEZ/Y
 6PQQQ0q8dsZa57TzCOaP7unfwHtifdibMjlf31Vs5jz2lea8ErVJ+VcsqkswJK6PKRqF
 FrfOWKQoX24FV+hTHLgn9YLz6kAkWa+w1Tbf797nTLf11h4mFHuktZAYT3jzBzKMLnzn
 tZG2Bt7xbrkn8mmXOlI1UfR37Dhti9BgnKNTUhyapOcX7++uKZ3UhN4VUjds5300LCfN
 eMJg==
X-Forwarded-Encrypted: i=1;
 AJvYcCV7xB5sbF1ro/BAwW8m23hLadr35G0pmHW4DL+v5LCW4S6uKsmbutfS0qq3npOeyvkmOEjkQZWqv/XKZsbkpE8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzLIdb05VIbEDLzYYQi6KQLKCzKL3wbzbfgsTuszLqEdbcJ5Uim
 hrD8kkUM/2Nws938Dot5gkJGRivoQ5FVyRtgEkCyRRzDBIoeLdFc61w8TuQdj8wNWvGLriqDJot
 i9iKUlcVQ+B+bfTxaTuP+TwD34r7EbjL4i89ccQ==
X-Google-Smtp-Source: AGHT+IHsypqnvHxqefjiDxYFDz2akYzDsFoGU6PLh+7312onUDhEMOGndUNDmbbTnJmbGIeOeR17h1E7o2px85taLvw=
X-Received: by 2002:a05:6a21:2d8b:b0:1d5:10c3:af5a with SMTP id
 adf61e73a8af0-1d5e2d3df25mr3361839637.47.1727851945585; Tue, 01 Oct 2024
 23:52:25 -0700 (PDT)
MIME-Version: 1.0
References: <20240925075707.3970187-1-linyunsheng@huawei.com>
 <20240925075707.3970187-3-linyunsheng@huawei.com>
 <4968c2ec-5584-4a98-9782-143605117315@redhat.com>
 <CAC_iWjKHofqDrp+jOO_QTp_8Op=KeE_jjhjsDUxjRa4vnHYJmQ@mail.gmail.com>
In-Reply-To: <CAC_iWjKHofqDrp+jOO_QTp_8Op=KeE_jjhjsDUxjRa4vnHYJmQ@mail.gmail.com>
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
Date: Wed, 2 Oct 2024 09:51:49 +0300
Message-ID: <CAC_iWjJXWgt9TdBSYGkc=htyeS=VAago5wqXzBgX_Mun76Z42g@mail.gmail.com>
To: Paolo Abeni <pabeni@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1727851945; x=1728456745; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Wi2knaZL4xgHJFaFdtzBXqIWLSuRG81LD3CTPdMJ4G8=;
 b=V4hHYEvi/URgUxm6y7gUxWyktIQ7YLiHagMuZgwKhA2dE3m5NQXlb7tzUlGBPi24/y
 Ewv248xlRs11PrFenpaMKbaFFH6LRDP4aB52IumXSESoSy9jV6QcfX4SD1stBM01odi3
 apuYQgZIJXc0XG8MbRsgoUygGUQw45o6pdd36dNaMWPRZNEAFOgaknChFpac4EbveJx9
 ko4qetq5h9l069BnKhm2CR+QlyPyxY+44f7GYfYZ5Si3nGKotMJjNnLliNMNkmWb4v5t
 0Re+FGf+osIoUonosemd2XEGA6Xg+FbG45VM4gr02wMxSJAmy7/rts+y/P2cheLRaOc9
 4oYg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=V4hHYEvi
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
 Leon Romanovsky <leon@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Yunsheng Lin <linyunsheng@huawei.com>, netdev@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 Shayne Chen <shayne.chen@mediatek.com>, Saeed Mahameed <saeedm@nvidia.com>,
 davem@davemloft.net, Felix Fietkau <nbd@nbd.name>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 2 Oct 2024 at 09:46, Ilias Apalodimas
<ilias.apalodimas@linaro.org> wrote:
>
> Hi Paolo,
>
> Thanks for taking the time.
>
> On Tue, 1 Oct 2024 at 16:32, Paolo Abeni <pabeni@redhat.com> wrote:
> >
> > On 9/25/24 09:57, Yunsheng Lin wrote:
> > > Networking driver with page_pool support may hand over page
> > > still with dma mapping to network stack and try to reuse that
> > > page after network stack is done with it and passes it back
> > > to page_pool to avoid the penalty of dma mapping/unmapping.
> > > With all the caching in the network stack, some pages may be
> > > held in the network stack without returning to the page_pool
> > > soon enough, and with VF disable causing the driver unbound,
> > > the page_pool does not stop the driver from doing it's
> > > unbounding work, instead page_pool uses workqueue to check
> > > if there is some pages coming back from the network stack
> > > periodically, if there is any, it will do the dma unmmapping
> > > related cleanup work.
> > >
> > > As mentioned in [1], attempting DMA unmaps after the driver
> > > has already unbound may leak resources or at worst corrupt
> > > memory. Fundamentally, the page pool code cannot allow DMA
> > > mappings to outlive the driver they belong to.
> > >
> > > Currently it seems there are at least two cases that the page
> > > is not released fast enough causing dma unmmapping done after
> > > driver has already unbound:
> > > 1. ipv4 packet defragmentation timeout: this seems to cause
> > >     delay up to 30 secs.
> > > 2. skb_defer_free_flush(): this may cause infinite delay if
> > >     there is no triggering for net_rx_action().
> > >
> > > In order not to do the dma unmmapping after driver has already
> > > unbound and stall the unloading of the networking driver, add
> > > the pool->items array to record all the pages including the ones
> > > which are handed over to network stack, so the page_pool can
> > > do the dma unmmapping for those pages when page_pool_destroy()
> > > is called. As the pool->items need to be large enough to avoid
> > > performance degradation, add a 'item_full' stat to indicate the
> > > allocation failure due to unavailability of pool->items.
> >
> > This looks really invasive, with room for potentially large performance
> > regressions or worse. At very least it does not look suitable for net.
>
> Perhaps, and you are right we need to measure performance before
> pulling it but...
>
> >
> > Is the problem only tied to VFs drivers? It's a pity all the page_pool
> > users will have to pay a bill for it...
>
> It's not. The problem happens when an SKB has been scheduled for
> recycling and has already been mapped via page_pool. If the driver
> disappears in the meantime,

Apologies, this wasn't correct. It's the device that has to disappear
not the driver

> page_pool will free all the packets it
> holds in its private rings (both slow and fast), but is not in control
> of the SKB anymore. So any packets coming back for recycling *after*
> that point cannot unmap memory properly.
>
> As discussed this can either lead to memory corruption and resource
> leaking, or worse as seen in the bug report panics. I am fine with
> this going into -next, but it really is a bugfix, although I am not
> 100% sure that the Fixes: tag in the current patch is correct.
>
> Thanks
> /Ilias
> >
> > /P
> >
