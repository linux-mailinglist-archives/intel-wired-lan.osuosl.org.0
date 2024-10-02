Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1E298CD53
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Oct 2024 08:46:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0AC2080C9D;
	Wed,  2 Oct 2024 06:46:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id elDw3zhD_yu1; Wed,  2 Oct 2024 06:46:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 657AD80D41
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727851609;
	bh=julty6rnHcSXHSDPw3px62HgLzdn2IBXQjTC66JT5PQ=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=K1ePLRPteZNTS7qW6XQ7yA6kH3dZlc+bHRd/o5XfstKDRKjMz+yjnr5sQ/xmj4MyX
	 Dz1SDg8ll+EE5qzEmhREpUT29sZyL3H8hlke/S2egS5GgONOs8/xhqDwgjLWcRMIPn
	 A2Z9UX93w1m20RDkeOT+q8PSQC9ZXPRpZNg5riOy3mhcnJFI64+PHdN1Y/QvXKKvSf
	 r6KlTNmUZWM3YYC5u7hzGAKVVIkFrYQ9AcjaJ5pk3xJaUDrhccSjJCzq2aJMqE9tu7
	 1aHaicn31TIvDmto5vQqOeF1gzbWlCbtmIAta10K4cDcyLsLGffXb/hcxDlaMiZbky
	 QZwihzYO5M7Xw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 657AD80D41;
	Wed,  2 Oct 2024 06:46:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 56B121BF847
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 06:46:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 50A1C40879
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 06:46:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DaizLgJX8rJG for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Oct 2024 06:46:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62d; helo=mail-pl1-x62d.google.com;
 envelope-from=ilias.apalodimas@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 382B540824
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 382B540824
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 382B540824
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 06:46:45 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id
 d9443c01a7336-20b90984971so30206015ad.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 01 Oct 2024 23:46:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727851605; x=1728456405;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=julty6rnHcSXHSDPw3px62HgLzdn2IBXQjTC66JT5PQ=;
 b=EvZi1KypucyS9GjLiRDvPtz4vGwHQv8p5KakYeHrBgZkoPAza4QXlpgEog9UYe6mXs
 FLVILokY7BS821t3NVZvR5PW7noBmQPBMvUydavoJUIVE/r0chql4jEgh8wjHYrouuPt
 UxLhkHDkss5njphlZrxmPLSIZiHhJRzutdtctswmW/1Wu6skqZcNUX8tSKXjYSNXKdWy
 b6+Ov6PbH+ERWn5HRHW/4e4bOmj5oXgy/YjnFeQGtDbyzLMOqs8Yn1RsnbrjosmByUuC
 jr7gZubszgkvG6U8u15OUg8CLxB9ywLQ6MKnUE82mJyEZW7InZDgdmT6phqcRnxAde2s
 ZkDA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVPr1TJNj5U3+TXa+BufaZBgjYSk2b/A7/hnY4MvBHHTEnr/kK53NbRTDj5B5KGft5dYpFUaDHwhfnJNvq/hg0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyPBolYZWpZO+TseAIslB0p2v2O1BJIC67NxisRbhzGTn99RttQ
 vuRhqZLxMIYV2lExRyGK05nQKk2f6P88w05ja8N/p/FGNB/S8A+0IUlOePs50qF8wNRbKmYsWsS
 fa0ceuxHreY2UjbB2FIoetYfgDpbgLG0MCsIGsg==
X-Google-Smtp-Source: AGHT+IFQFeN+13hsSVg8HfZx3v0JFKL/2OojczRKBuzwXMASAbyeLF4dgYHBH+F1NmuIXohzp3j20fi5PB1R6+vYJtE=
X-Received: by 2002:a17:902:d505:b0:205:4e4a:72d9 with SMTP id
 d9443c01a7336-20bc59efb2emr41817915ad.7.1727851604719; Tue, 01 Oct 2024
 23:46:44 -0700 (PDT)
MIME-Version: 1.0
References: <20240925075707.3970187-1-linyunsheng@huawei.com>
 <20240925075707.3970187-3-linyunsheng@huawei.com>
 <4968c2ec-5584-4a98-9782-143605117315@redhat.com>
In-Reply-To: <4968c2ec-5584-4a98-9782-143605117315@redhat.com>
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
Date: Wed, 2 Oct 2024 09:46:08 +0300
Message-ID: <CAC_iWjKHofqDrp+jOO_QTp_8Op=KeE_jjhjsDUxjRa4vnHYJmQ@mail.gmail.com>
To: Paolo Abeni <pabeni@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1727851605; x=1728456405; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=julty6rnHcSXHSDPw3px62HgLzdn2IBXQjTC66JT5PQ=;
 b=x5MbFi/67TpmIRs2zm+VGU0xKjgIXb48hkbWpUjzuUdN4j0uWYIjiAMhyRou2/usRx
 l8+N4xhRvlNHhswIx+GsrZqKswGCjqJyRC+0Qlf/PWIfeGWdp6WAO93ITlDPbWFeOWQN
 3qnZKaaadfFXr9a1bhz1GH/gPSS43IXqERKk2WdYrRWrCxnLuo3TkdTJLQscKzXCKO5r
 KZ6d1H8XyGBYQb5ha0/P01U714hpgQyCCHeMEZNZEt89y3eJmpZ1ivtuYa7pRyNYTsXh
 0SqwuaMVxz0GJKMGR0TOvqQKGokeVRFN+Y4MgwgX8TEsqV6IGzq6vimiXkfi+mw0qws6
 S5hA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=x5MbFi/6
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

Hi Paolo,

Thanks for taking the time.

On Tue, 1 Oct 2024 at 16:32, Paolo Abeni <pabeni@redhat.com> wrote:
>
> On 9/25/24 09:57, Yunsheng Lin wrote:
> > Networking driver with page_pool support may hand over page
> > still with dma mapping to network stack and try to reuse that
> > page after network stack is done with it and passes it back
> > to page_pool to avoid the penalty of dma mapping/unmapping.
> > With all the caching in the network stack, some pages may be
> > held in the network stack without returning to the page_pool
> > soon enough, and with VF disable causing the driver unbound,
> > the page_pool does not stop the driver from doing it's
> > unbounding work, instead page_pool uses workqueue to check
> > if there is some pages coming back from the network stack
> > periodically, if there is any, it will do the dma unmmapping
> > related cleanup work.
> >
> > As mentioned in [1], attempting DMA unmaps after the driver
> > has already unbound may leak resources or at worst corrupt
> > memory. Fundamentally, the page pool code cannot allow DMA
> > mappings to outlive the driver they belong to.
> >
> > Currently it seems there are at least two cases that the page
> > is not released fast enough causing dma unmmapping done after
> > driver has already unbound:
> > 1. ipv4 packet defragmentation timeout: this seems to cause
> >     delay up to 30 secs.
> > 2. skb_defer_free_flush(): this may cause infinite delay if
> >     there is no triggering for net_rx_action().
> >
> > In order not to do the dma unmmapping after driver has already
> > unbound and stall the unloading of the networking driver, add
> > the pool->items array to record all the pages including the ones
> > which are handed over to network stack, so the page_pool can
> > do the dma unmmapping for those pages when page_pool_destroy()
> > is called. As the pool->items need to be large enough to avoid
> > performance degradation, add a 'item_full' stat to indicate the
> > allocation failure due to unavailability of pool->items.
>
> This looks really invasive, with room for potentially large performance
> regressions or worse. At very least it does not look suitable for net.

Perhaps, and you are right we need to measure performance before
pulling it but...

>
> Is the problem only tied to VFs drivers? It's a pity all the page_pool
> users will have to pay a bill for it...

It's not. The problem happens when an SKB has been scheduled for
recycling and has already been mapped via page_pool. If the driver
disappears in the meantime, page_pool will free all the packets it
holds in its private rings (both slow and fast), but is not in control
of the SKB anymore. So any packets coming back for recycling *after*
that point cannot unmap memory properly.

As discussed this can either lead to memory corruption and resource
leaking, or worse as seen in the bug report panics. I am fine with
this going into -next, but it really is a bugfix, although I am not
100% sure that the Fixes: tag in the current patch is correct.

Thanks
/Ilias
>
> /P
>
