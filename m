Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E5997C869
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Sep 2024 13:15:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C523D4126E;
	Thu, 19 Sep 2024 11:15:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v-Mk5-rIZoIZ; Thu, 19 Sep 2024 11:15:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AE80A41271
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726744522;
	bh=p3rtOXABuszq7zwsUSot007jGp9KE4ganvdrQReiyj4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oGsZN8Z6P7L3iA3KuBhlP0kd267hBH36j0xe3Y/c0t1JD456xbua16FQ2K1vqMBBE
	 CBoXRzZYQLjSQrVg3jP/vqCF2T1NnO3k3DiNK5FKmJjI/C+WpIDBGGeb0G3kJyl/Vo
	 k7n+MrkDz0/AxirNGp4cFODN9yowApm8iO+nZdFHe4vUYX5ztjp10vAGRlKqULnp9E
	 XDBldoQPjjiSP1JmRlI4ZnqB0en3fpyWKrL7/VEGs5AA/hFHR7zA3zmgeEVtMiRxZv
	 iSxYaa4AM2xPk/dcLy+ZM+XU4M8TpN8iVvmdcLWNCT7i5g/l72uMLJ7DgWW7cTsyXa
	 JweE9X5yTH3ZA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AE80A41271;
	Thu, 19 Sep 2024 11:15:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ABF7E1BF33B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2024 11:15:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A6768607BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2024 11:15:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6VnFB0uz3dSz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Sep 2024 11:15:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.190;
 helo=szxga04-in.huawei.com; envelope-from=linyunsheng@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 669A060681
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 669A060681
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 669A060681
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2024 11:15:17 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.88.214])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4X8XwS0qCqz2DcFV;
 Thu, 19 Sep 2024 19:14:32 +0800 (CST)
Received: from dggpemf200006.china.huawei.com (unknown [7.185.36.61])
 by mail.maildlp.com (Postfix) with ESMTPS id BC8361A016C;
 Thu, 19 Sep 2024 19:15:11 +0800 (CST)
Received: from [10.67.120.129] (10.67.120.129) by
 dggpemf200006.china.huawei.com (7.185.36.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Thu, 19 Sep 2024 19:15:11 +0800
Message-ID: <cdfecd37-31d7-42d2-a8d8-92008285b42e@huawei.com>
Date: Thu, 19 Sep 2024 19:15:11 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas
 <ilias.apalodimas@linaro.org>
References: <20240918111826.863596-1-linyunsheng@huawei.com>
 <20240918111826.863596-3-linyunsheng@huawei.com>
 <CAC_iWjK=G7Oo5=pN2QunhasgDC6NyC1L+96jigX7u9ad+PbYng@mail.gmail.com>
 <894a3c2c-22f9-45b9-a82b-de7320066b42@kernel.org>
Content-Language: en-US
From: Yunsheng Lin <linyunsheng@huawei.com>
In-Reply-To: <894a3c2c-22f9-45b9-a82b-de7320066b42@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.67.120.129]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpemf200006.china.huawei.com (7.185.36.61)
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
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
 Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, IOMMU <iommu@lists.linux.dev>,
 liuyonglong@huawei.com, Clark Wang <xiaoning.wang@nxp.com>,
 zhangkun09@huawei.com, fanghaiqing@huawei.com, pabeni@redhat.com,
 Lorenzo Bianconi <lorenzo@kernel.org>, Kalle Valo <kvalo@kernel.org>,
 Sean Wang <sean.wang@mediatek.com>, Wei Fang <wei.fang@nxp.com>,
 kuba@kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Robin Murphy <robin.murphy@arm.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, netdev@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 Shayne Chen <shayne.chen@mediatek.com>, Saeed Mahameed <saeedm@nvidia.com>,
 davem@davemloft.net, Felix Fietkau <nbd@nbd.name>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2024/9/19 17:42, Jesper Dangaard Brouer wrote:
> 
> On 18/09/2024 19.06, Ilias Apalodimas wrote:
>>> In order not to do the dma unmmapping after driver has already
>>> unbound and stall the unloading of the networking driver, add
>>> the pool->items array to record all the pages including the ones
>>> which are handed over to network stack, so the page_pool can
>>> do the dma unmmapping for those pages when page_pool_destroy()
>>> is called.
>>
>> So, I was thinking of a very similar idea. But what do you mean by
>> "all"? The pages that are still in caches (slow or fast) of the pool
>> will be unmapped during page_pool_destroy().
> 
> I really dislike this idea of having to keep track of all outstanding pages.
> 
> I liked Jakub's idea of keeping the netdev around for longer.
> 
> This is all related to destroying the struct device that have points to
> the DMA engine, right?

Yes, the problem seems to be that when device_del() is called, there is
no guarantee hw behind the 'struct device ' will be usable even if we
call get_device() on it.

> 
> Why don't we add an API that allow netdev to "give" struct device to
> page_pool.  And then the page_poll will take over when we can safely
> free the stuct device?

By 'allow netdev to "give" struct device to page_pool', does it mean
page_pool become the driver for the device?
If yes, it seems that is similar to jakub's idea, as both seems to stall
the calling of device_del() by not returning when the driver unloading.
If no, it seems that the problem is still existed when the driver for
the device has unbound after device_del() is called.

> 
> --Jesper
