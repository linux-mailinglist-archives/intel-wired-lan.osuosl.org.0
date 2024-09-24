Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 08434983D21
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Sep 2024 08:27:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 693D981EF0;
	Tue, 24 Sep 2024 06:27:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4qsIrZa4cz6l; Tue, 24 Sep 2024 06:27:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B0B2E81EC4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727159268;
	bh=Fq1eeBVCVo8skENTGGXSVFjvxg6ebjriCPrvVo2SiL0=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WNqXuYqeou2/qFCCalqwaxAa7emyKTsnffAM891BaYNa5SLBAeGOj3DhOAUVNjLuF
	 5D8blKvyeLtWdDk8J9RUTllOLPCsBuV6w6erbQklIzLUDlSskF1VUzQ+X2NKeXIEOv
	 ihYvR3mTIWZCZs6NjyDhibhIQV54WzA581oEB/eOBRJtL/Pq56YfmWgxjsHnmGpGcA
	 7tKdmjPOyn3HyQiS/kbZId87i3YipuvGDPWLybrrkUi88/P5EkVtHB54Z7EObTy6hP
	 lW9yqcGr1VcnLowuM7Xsu+tGGw32uk6oSWAPK0jF2zxaIpAKbtZVaTOa9r+82W55n1
	 Fm+XbJi37Cpcw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B0B2E81EC4;
	Tue, 24 Sep 2024 06:27:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1EAEB1BF385
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 06:27:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0C5A460A62
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 06:27:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QKv470Q0W3uL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Sep 2024 06:27:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::529; helo=mail-pg1-x529.google.com;
 envelope-from=ilias.apalodimas@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4A760606CC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4A760606CC
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com
 [IPv6:2607:f8b0:4864:20::529])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4A760606CC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 06:27:44 +0000 (UTC)
Received: by mail-pg1-x529.google.com with SMTP id
 41be03b00d2f7-7163489149eso4171706a12.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 23:27:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727159264; x=1727764064;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Fq1eeBVCVo8skENTGGXSVFjvxg6ebjriCPrvVo2SiL0=;
 b=N7LkRVemUu+Mx+/EwR1AIvKGSDKO9oknzP2je56kxwI2IfmiGY6twaFBcxCmQA71kg
 F8JmQWpqYYBirGdawMcD/LHeyvy7nboqtKQYzLjUv7Q5q8b3yghP001ccqwa3i1Jf9og
 bzkY2FunLoelzkaLSJ86DZn5rFZyt1a/uzflpSEdwOVqIxYnHTGvTIbPW4NF8Ni69kfx
 ca9Hhh3dajXYUYvxGuRRdmGzRnpoDHIfCcdWXWdWi8lFmarqFWuls75FUyIN1CFuf18j
 y2k/Tg7zTleENgrVvtigIGaxhH3osWdrCCZULboV4YtETEHokQJ31IAzAWblnlB8g+o+
 PuwA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUdY2Nytv8CYtwY0njc/k9jX2bACGQNrwA15YG1SKoiN4zJ2UxF55zlc7W1aJpDGoZwvziSksqGR+XvKw9dO+8=@lists.osuosl.org
X-Gm-Message-State: AOJu0Ywjpw8ND7BlPlt6Ij3hK/Sl+W5jYPPq05nOE09LRy7Frc19/BEv
 Z/xshZyUN4riJjB+e6isWTQ5yUrrzl1fr+9Yys0GB062vrzVr4GXvU9uWoQ3/p0ZKnJu0ad2glc
 aLFL66MVsAUjmcM0z1m9ZNwKpK61L7MEd7bXSnw==
X-Google-Smtp-Source: AGHT+IHPN9LFslQTM1gMYN4tKKonS0hsjh0tam1Zi62PvgetLTo885uAHaByvQOqprrT+VS/gMQK9GARTq8LGeXeZ6c=
X-Received: by 2002:a05:6a21:9217:b0:1cf:3461:2970 with SMTP id
 adf61e73a8af0-1d30a9bf6dfmr20527541637.41.1727159264301; Mon, 23 Sep 2024
 23:27:44 -0700 (PDT)
MIME-Version: 1.0
References: <20240918111826.863596-1-linyunsheng@huawei.com>
 <20240918111826.863596-3-linyunsheng@huawei.com>
 <CAC_iWjK=G7Oo5=pN2QunhasgDC6NyC1L+96jigX7u9ad+PbYng@mail.gmail.com>
 <894a3c2c-22f9-45b9-a82b-de7320066b42@kernel.org>
 <cdfecd37-31d7-42d2-a8d8-92008285b42e@huawei.com>
 <0e8c7a7a-0e2a-42ec-adbc-b29f6a514517@kernel.org>
 <CAC_iWj+3JvPY2oqVOdu0T1Wt6-ukoy=dLc72u1f55yY23uOTbA@mail.gmail.com>
 <2c5ccfff-6ab4-4aea-bff6-3679ff72cc9a@huawei.com>
 <20240923175226.GC9634@ziepe.ca>
In-Reply-To: <20240923175226.GC9634@ziepe.ca>
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
Date: Tue, 24 Sep 2024 09:27:07 +0300
Message-ID: <CAC_iWjLmWtN51eLnnuPtL5vzTBQF2v43zyoV1+AZqUmuSD1DGg@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1727159264; x=1727764064; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Fq1eeBVCVo8skENTGGXSVFjvxg6ebjriCPrvVo2SiL0=;
 b=OCTQqI91l2EqjdEzUZC2IAms9AJ99dB4XCguWxLZRPognAD/5F04E17RojZy2dWlJG
 etsd0ZkaoMjz+ks7DBQJuiq7U08zCFkkcwzlLS0vM4fhL3LiOhVptq7RwL3VKBK5WDkM
 B+++Dpp37U76xe8APiFaiLZ9NcPWqhQsbHPmlcw/C3nTJ6NTBY/3lzNUzEjGlyAZC76u
 CXSC6ev9UhGsjkzknTUydU4j1tedAGkZAnIgCzaoOrPPt0AY0sdO5XTYzeXWGAOjrnAR
 4RL0Fr8W4v+gTxbBSw4ZmdIFJfIIRs/YDKzYeIeD88WkPQOi8AzAjKsNOQ31PNE8YQOu
 2IEw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=OCTQqI91
Subject: Re: [Intel-wired-lan] [PATCH net 2/2] page_pool: fix IOMMU crash
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
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Yunsheng Lin <linyunsheng@huawei.com>, netdev@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 Shayne Chen <shayne.chen@mediatek.com>, Saeed Mahameed <saeedm@nvidia.com>,
 davem@davemloft.net, Felix Fietkau <nbd@nbd.name>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jason,

On Mon, 23 Sept 2024 at 20:52, Jason Gunthorpe <jgg@ziepe.ca> wrote:
>
> On Fri, Sep 20, 2024 at 02:14:02PM +0800, Yunsheng Lin wrote:
>
> > I am not sure what dose the API that allows netdev to "give" struct device
> > to page_pool look like or how to implement the API yet, but the obvious way
> > to stall the calling of device_del() is to wait for the inflight
> > page to
>
> It is not device_del() you need to stall, but the remove() function of
> the device driver.
>
> Once all drivers have been unbound the DMA API can be reconfigured and
> all existing DMA mappings must be concluded before this happens,
> otherwise there will be problems.
>
> So, stalling something like unregister_netdevice() would be a better
> target - though stalling forever on driver unbind would not be
> acceptable.

TBH, I have doubts that even stalling it for small amounts of time is
going to disrupt userspace and people are going to yell at us.
I am gonna repeat myself here, but I think keeping a list of the
inflight SKBs that we need to unmap when the interface goes down, is
the most complex, but less disruptive solution

Thanks
/Ilias
>
> Jason
