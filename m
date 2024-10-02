Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BBC98CEB2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Oct 2024 10:24:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 38BD5804DC;
	Wed,  2 Oct 2024 08:24:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id em9C9XBVD-1e; Wed,  2 Oct 2024 08:24:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 11D7E81F20
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727857443;
	bh=8qT8AJdSAevn7Lon301IIUYaxahlZK6BFR3I/iQhyNk=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OxYBmqxsnmRW+cQfjDijhKMe1Mo7oeoWsKr80B8mSO2hzWT5o0UP9LizGSqYSaPve
	 sP30T6GHp/R9I7q0YfV+baL0pF6gf2NPO7XXxNZK2JGt4jilFWfHRumtD4hfuSpDPx
	 HoKBa196Y1fQWJSPmmFT/LEBl0ALc4Ro21tMxjcavUdY+mwF0YVD92ixpjOwPfbczl
	 oW2pplhamTlyDYPs0kEoxYlHPRDZnvX0i9GOTlQbF3EYpGgKQ7RufDRFDlPeaQ+NT3
	 2Z7JLjqidz/cBjFxzQAPOXv+z4v7E9B6x+/l1qS1CCFFcV9vUL3f/kNTk3ePWPqobU
	 CJMUehPA7XnnA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 11D7E81F20;
	Wed,  2 Oct 2024 08:24:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 21ACF1BF842
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 08:24:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0EC9260A83
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 08:24:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M9nEGQXTed9i for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Oct 2024 08:24:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::529; helo=mail-pg1-x529.google.com;
 envelope-from=ilias.apalodimas@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 25F3760A7C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 25F3760A7C
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com
 [IPv6:2607:f8b0:4864:20::529])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 25F3760A7C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 08:23:59 +0000 (UTC)
Received: by mail-pg1-x529.google.com with SMTP id
 41be03b00d2f7-7db90a28cf6so420274a12.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 02 Oct 2024 01:23:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727857439; x=1728462239;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=8qT8AJdSAevn7Lon301IIUYaxahlZK6BFR3I/iQhyNk=;
 b=FugC9n/MeU9RG7RUt6DFUBCmk9P+Whd8Q13WFJdWfJyeBujtnj93MOWccDHyg/wTwZ
 n8nz/8DmSSsdB9BBFyn3n+ALhx4IA6ZgV4QzTWehMFwQci//UD3WnIRi7+XJ+jOUQrZw
 qMDG8lP7MptlGVDTN/FqRti5FsFj3c0Eu6UKMs71uAFp48PlriMOtlVxQ10CwivZ1uUr
 M2wwJq0vADm/1khckdY6fQK+5DeM0PsdmNEX4O4pFEwwvWA2V2biEk8FcBvaF1HWFSA6
 StU8N0tdO6D45tEqa7d8hA9P8XOlMULYW50hQcclT//jRQ7FUmrrqLwHHwHWqEHe9CpB
 VnOg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXu76TrSPYgtLxqyxB6n7n+t4z56515A52XH5aQhpILpapZJ2rh28c7UJ+bS15+cSA7PCvXA7WevDehHZpDaHk=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwsS8NcLTFix38kUJfAZa3yQFbXAoc7w/iTC4pKReP3dAF4iMNv
 yAkkXVplilbrzocFMYaX5ObEhy/kEAwJACAeGpZU9yqOuWOCFDtJ6iPk2kTAzkX+ZNdykcHQY/9
 4OcGyOZJ2b4fHwOig4qZQn/O2sKg4g3B7F+XQhA==
X-Google-Smtp-Source: AGHT+IEr1vFU0a1kvwV4sZXMH05Rcdg/y0G4x0gieaTwktCZi4DvPvG3W8WrO/0W27YGf2bHaceIX2iLNO+x3PuzjLM=
X-Received: by 2002:a17:90a:cb8f:b0:2c9:36bf:ba6f with SMTP id
 98e67ed59e1d1-2e1851496c6mr3427473a91.3.1727857439139; Wed, 02 Oct 2024
 01:23:59 -0700 (PDT)
MIME-Version: 1.0
References: <20240925075707.3970187-1-linyunsheng@huawei.com>
 <20240925075707.3970187-3-linyunsheng@huawei.com>
 <4968c2ec-5584-4a98-9782-143605117315@redhat.com>
 <33f23809-abec-4d39-ab80-839dc525a2e6@gmail.com>
 <4316fa2d-8dd8-44f2-b211-4b2ef3200d75@redhat.com>
In-Reply-To: <4316fa2d-8dd8-44f2-b211-4b2ef3200d75@redhat.com>
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
Date: Wed, 2 Oct 2024 11:23:22 +0300
Message-ID: <CAC_iWjLBE9UY2wk_kKE=t=npRBF13HoLWODLUpQJ6F3P8sv4rw@mail.gmail.com>
To: Paolo Abeni <pabeni@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1727857439; x=1728462239; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=8qT8AJdSAevn7Lon301IIUYaxahlZK6BFR3I/iQhyNk=;
 b=A3+Qr1YYEAZHN5WEcIIatTChMcoHrUzIiGlDpWHg/BSo0kc0G+yjAL0maCMJqCaTwS
 Yovtgq3vHf20+mkZftqZ+GH4MXH6y/Imqnrd9HHOd/pGAWzbFxtr0ZyWrxq2jpRSzM4W
 5EyE82jm5O+kDjbPoKi7TMiHfJdUtmPj2Zz03kvZ5Gj65UttV6+p9SeJrgl0cV6wPcdo
 yFGi29H5TjKm0x8YUKsuu5EyFmWjDSVCRgPZqK0NeNLdOHv6qsY3chmzR2B4YSEQIy7z
 KOur95WsScNTxe+ZkSW6cv3NAQcibb1pw7km9B01Fxsg3NPSfFKAdTXQUgWxCnriEiXL
 zd3A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=A3+Qr1YY
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
 Yunsheng Lin <yunshenglin0825@gmail.com>, zhangkun09@huawei.com,
 fanghaiqing@huawei.com, Lorenzo Bianconi <lorenzo@kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>, Kalle Valo <kvalo@kernel.org>,
 Sean Wang <sean.wang@mediatek.com>, Wei Fang <wei.fang@nxp.com>,
 kuba@kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Leon Romanovsky <leon@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Yunsheng Lin <linyunsheng@huawei.com>, netdev@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 Shayne Chen <shayne.chen@mediatek.com>, Robin Murphy <robin.murphy@arm.com>,
 davem@davemloft.net, Felix Fietkau <nbd@nbd.name>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Paolo,

On Wed, 2 Oct 2024 at 10:38, Paolo Abeni <pabeni@redhat.com> wrote:
>
> Hi,
>
> On 10/2/24 04:34, Yunsheng Lin wrote:
> > On 10/1/2024 9:32 PM, Paolo Abeni wrote:
> >> Is the problem only tied to VFs drivers? It's a pity all the page_pool
> >> users will have to pay a bill for it...
> >
> > I am afraid it is not only tied to VFs drivers, as:
> > attempting DMA unmaps after the driver has already unbound may leak
> > resources or at worst corrupt memory.
> >
> > Unloading PFs driver might cause the above problems too, I guess the
> > probability of crashing is low for the PF as PF can not be disable
> > unless it can be hot-unplug'ed, but the probability of leaking resources
> > behind the dma mapping might be similar.
>
> Out of sheer ignorance, why/how the refcount acquired by the page pool
> on the device does not prevent unloading?
>
> I fear the performance impact could be very high: AFICS, if the item
> array become fragmented, insertion will take linar time, with the quite
> large item_count/pool size. If so, it looks like a no-go.

It would be could if someone could test that. I'll look around in case
we have any test machines with cards that run on page pool.

>
> I fear we should consider blocking the device removal until all the
> pages are returned/unmapped ?!? (I hope that could be easier/faster)

Jakub send an RFC doing that [0]. Yes, this is far far simpler and
does not affect performance, but aren't we implicitly breaking
userspace?

[0] https://lore.kernel.org/netdev/20240806151618.1373008-1-kuba@kernel.org/

Thanks
/Ilias
>
> /P
>
