Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 104C299E49B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Oct 2024 12:52:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E4094057D;
	Tue, 15 Oct 2024 10:52:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5JSeRCPVcXeg; Tue, 15 Oct 2024 10:52:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7297C4027B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728989566;
	bh=dN7oaOwNEIx92nEf3A5VB6FzVv6Zzr3Fp2qH1sLAWLE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RRHhSjOWoQlLvJODeh3XR0bkpO2gQ/XgOakGHPu/j05HjhQCwg0KjLqCn+XE/w4dE
	 zlcCD2/CrUbjcHbFaMol7l02cXn8VWNsMM1bRbQ/oQQmSUl+g3tXTUhPeXZ+MVUbW/
	 CaDRsIJRtH3G72+R9HYkSaIFxricyjoyK0OgYirwbyh23f+WZRJhaGZgsTEzhsY3lE
	 FWTazUOsRLI8l+gP2YnKdfaNfg2uOcf0fhGoi5NXVFu04exsHmEUNZ+o+Th66OCX9S
	 hdC3Ezx4TUfi6vtQ8gjOfiBND1EAqj3MRTKbysV4hy6bQPIbBmz66ICqpWG976c4tr
	 h4UrGlDsetXrQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7297C4027B;
	Tue, 15 Oct 2024 10:52:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8FDAF1BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 10:52:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 89F4A40430
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 10:52:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qJAM1lhbwWro for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Oct 2024 10:52:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.188;
 helo=szxga02-in.huawei.com; envelope-from=linyunsheng@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 325AC403FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 325AC403FF
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 325AC403FF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 10:52:41 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.88.105])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4XSW8J5gS7zfdGR;
 Tue, 15 Oct 2024 18:50:08 +0800 (CST)
Received: from dggpemf200006.china.huawei.com (unknown [7.185.36.61])
 by mail.maildlp.com (Postfix) with ESMTPS id 5FC56140257;
 Tue, 15 Oct 2024 18:52:35 +0800 (CST)
Received: from [10.67.120.129] (10.67.120.129) by
 dggpemf200006.china.huawei.com (7.185.36.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Tue, 15 Oct 2024 18:52:35 +0800
Message-ID: <5d9ea7bd-67bb-4a9d-a120-c8f290c31a47@huawei.com>
Date: Tue, 15 Oct 2024 18:52:34 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <20240925075707.3970187-1-linyunsheng@huawei.com>
 <b1fd5ece-b967-4e56-ad4f-64ec437e2634@huawei.com>
 <20241014171406.43e730c9@kernel.org>
Content-Language: en-US
From: Yunsheng Lin <linyunsheng@huawei.com>
In-Reply-To: <20241014171406.43e730c9@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.67.120.129]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggpemf200006.china.huawei.com (7.185.36.61)
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: Re: [Intel-wired-lan] [PATCH net v2 0/2] fix two bugs related to
 page_pool
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
Cc: linux-mediatek@lists.infradead.org,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Alexander Duyck <alexander.duyck@gmail.com>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 IOMMU <iommu@lists.linux.dev>, liuyonglong@huawei.com,
 Matthias Brugger <matthias.bgg@gmail.com>, intel-wired-lan@lists.osuosl.org,
 zhangkun09@huawei.com, fanghaiqing@huawei.com, bpf@vger.kernel.org,
 pabeni@redhat.com, Robin Murphy <robin.murphy@arm.com>, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2024/10/15 8:14, Jakub Kicinski wrote:
> On Sat, 12 Oct 2024 20:05:31 +0800 Yunsheng Lin wrote:
>> 1. Semantics changing of supporting unlimited inflight pages
>>    to limited inflight pages that are as large as the pool_size
>>    of page_pool.
> 
> How can this possibly work?

As a similar comment in [1], do we really need unlimited inflight pages
for the page_pool to work? If we do, it seems there is something really
need fixing here. I am agreed changing of semantics here might introduce
regressions here because there may be some subsystem depending on the
previous semantics or incorrect calculating of how many inflight pages it
is needed, so I am agreed that it might be better to target the net-next
tree to give some cycles of testing before backporting it.

1. https://lore.kernel.org/all/842c8cc6-f716-437a-bc98-70bc26d6fd38@huawei.com/

> 
> The main thing stopping me from reposting my fix that it'd be nice to
> figure out if a real IOMMU device is bound or not. If we don't have

device_iommu_mapped() might be used to check if a real IOMMU device is
bound or not.
I am afraid it is not just about IOMMU here as there might be other
resource behind the dma mapping, like the bounce buffer memory as below:

https://elixir.bootlin.com/linux/v6.7-rc8/source/drivers/iommu/dma-iommu.c#L1204
https://elixir.bootlin.com/linux/v6.7-rc8/source/kernel/dma/direct.h#L125

And we may argue is_swiotlb_active() can be used check if there is any
bounce buffer memory behind the dma mapping as the device_iommu_mapped()
does, but I am not sure if there is any other resource besides iommu and
bounce buffer.

> real per-device mappings we presumably don't have to wait. If we can 

For not having to wait part:
I am not sure if the page_pool_destroy()/__page_pool_release_page_dma()
need to synchronize with arch_teardown_dma_ops() or how to synchronize
with it, as it seems to be called when driver unloading even if we have
ensured that there is no IOMMU or bounce buffer memory behind the device
by the above checking:
__device_release_driver -> device_unbind_cleanup -> arch_teardown_dma_ops

> check this condition we are guaranteed not to introduce regressions,
> since we would be replacing a crash by a wait, which is strictly better.

For the waiting part:
The problem is how much time we need to wait when device_iommu_mapped()
or is_swiotlb_active() return true here, as mentioned in [2], [3]. And
currently the waiting might be infinite as the testing in [4].

> 
> If we'd need to fiddle with too many internals to find out if we have
> to wait - let's just always wait and see if anyone complains.

Does the testing report in [4] classify as someone complaining? As
the driver unloading seems to be stalling forever, and the cause of the
infinite stalling is skb_attempt_defer_free() by debugging as mentioned
in [2].

2. https://lore.kernel.org/all/2c5ccfff-6ab4-4aea-bff6-3679ff72cc9a@huawei.com/
3. https://lore.kernel.org/netdev/d50ac1a9-f1e2-49ee-b89b-05dac9bc6ee1@huawei.com/
4. https://lore.kernel.org/netdev/758b4d47-c980-4f66-b4a4-949c3fc4b040@huawei.com/

> 
