Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6737597CEB0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Sep 2024 23:05:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BEC4A60730;
	Thu, 19 Sep 2024 21:04:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d1U447J9Dcky; Thu, 19 Sep 2024 21:04:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D52EE61625
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726779898;
	bh=Pxg58DPzXB9acbZyYMxUEK4m0+lTrXC3I0bp/sxqe7g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2FWSYwyS7PusW7WZEqCH/KibXzgh4pYRuhL5KZ0C7eW9AQFJcS0vmdwg2U7vlM/PZ
	 xfb1CIAZR86NoTajWO+URQT/WINaYCh6in6BUw5+IUf6gziwhKQTd6plSEmvXQRQa6
	 2Baq73FsxWGRGNh4RiJTp8XsT+Db3GyOvQyEz0BiSW+fQLQCGweoqONknSrQ+apC0B
	 CgJGcnfscGnfN6cq6z7u+XoEBXwr/DFGbhSx2hx/1Gg/LIpfhRR3fSu0hVi8uX2M7i
	 YihQ6Q2ypaJYH6H9VP4mrPyqCScwRqwk7s6UZwXi7BqYIYq9Gxjc/2MpW+yKjjXV23
	 meNpytNczH1tQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D52EE61625;
	Thu, 19 Sep 2024 21:04:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F1D271BF37E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2024 21:04:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DF666414B6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2024 21:04:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kH92JLx17TcJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Sep 2024 21:04:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=hawk@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 999D2400E0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 999D2400E0
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 999D2400E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2024 21:04:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id C32F2A4402D;
 Thu, 19 Sep 2024 21:04:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7DAEC4CEC4;
 Thu, 19 Sep 2024 21:04:45 +0000 (UTC)
Message-ID: <0e8c7a7a-0e2a-42ec-adbc-b29f6a514517@kernel.org>
Date: Thu, 19 Sep 2024 23:04:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Yunsheng Lin <linyunsheng@huawei.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>
References: <20240918111826.863596-1-linyunsheng@huawei.com>
 <20240918111826.863596-3-linyunsheng@huawei.com>
 <CAC_iWjK=G7Oo5=pN2QunhasgDC6NyC1L+96jigX7u9ad+PbYng@mail.gmail.com>
 <894a3c2c-22f9-45b9-a82b-de7320066b42@kernel.org>
 <cdfecd37-31d7-42d2-a8d8-92008285b42e@huawei.com>
Content-Language: en-US
From: Jesper Dangaard Brouer <hawk@kernel.org>
In-Reply-To: <cdfecd37-31d7-42d2-a8d8-92008285b42e@huawei.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1726779893;
 bh=8rmdkhy7mle9GnzKV59Fez0ZiYJ5ItopN5knD5heul0=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=tMIiZugOhjzqgyUpW7HkIMb94kB3G/IoEOWJvEfIibHaCL2W6lxj/6dAy50ww3Upd
 5BuV7yd7+xf0LnJlLA6shnOsl4ybtmmnw4qRRAcxcVdTlQQO8CjzRoHuaAPl0cnLci
 KyO838TcaL8c8mfnqC3Fcz2LQ0BjvUfx2U9ux0XAeez0raNOeRSjsGu9186hqHSozD
 ekcF76hWo/vt3sl8iQ7tBHFkSTET2nmVrmZCljeeCkxJkkq5cSQY3mp+XWQ6e0oYMf
 Qo62AxytxEW4fp+yzCDxcmUUB+Wme/iNSXIqef4vFQ/XRD6jqsRg+/Yl4tOtEC8q6k
 c8Ol4+tfmgDUA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=tMIiZugO
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



On 19/09/2024 13.15, Yunsheng Lin wrote:
> On 2024/9/19 17:42, Jesper Dangaard Brouer wrote:
>>
>> On 18/09/2024 19.06, Ilias Apalodimas wrote:
>>>> In order not to do the dma unmmapping after driver has already
>>>> unbound and stall the unloading of the networking driver, add
>>>> the pool->items array to record all the pages including the ones
>>>> which are handed over to network stack, so the page_pool can
>>>> do the dma unmmapping for those pages when page_pool_destroy()
>>>> is called.
>>>
>>> So, I was thinking of a very similar idea. But what do you mean by
>>> "all"? The pages that are still in caches (slow or fast) of the pool
>>> will be unmapped during page_pool_destroy().
>>
>> I really dislike this idea of having to keep track of all outstanding pages.
>>
>> I liked Jakub's idea of keeping the netdev around for longer.
>>
>> This is all related to destroying the struct device that have points to
>> the DMA engine, right?
> 
> Yes, the problem seems to be that when device_del() is called, there is
> no guarantee hw behind the 'struct device ' will be usable even if we
> call get_device() on it.
> 
>>
>> Why don't we add an API that allow netdev to "give" struct device to
>> page_pool.  And then the page_poll will take over when we can safely
>> free the stuct device?
> 
> By 'allow netdev to "give" struct device to page_pool', does it mean
> page_pool become the driver for the device?
> If yes, it seems that is similar to jakub's idea, as both seems to stall
> the calling of device_del() by not returning when the driver unloading.

Yes, this is what I mean. (That is why I mentioned Jakub's idea).


> If no, it seems that the problem is still existed when the driver for
> the device has unbound after device_del() is called.
