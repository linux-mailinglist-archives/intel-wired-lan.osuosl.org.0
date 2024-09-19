Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C8597CB51
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Sep 2024 17:07:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BAD984284D;
	Thu, 19 Sep 2024 15:07:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YaLVhXgDVNnO; Thu, 19 Sep 2024 15:07:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D9AEF42892
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726758422;
	bh=Eg0aw/JsSDa801QveFhK5iGJwVmtnC/bbMMJdc1DKK4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HwL8nMJPRMCeQ1fhJlnB8O2Cgr5DSLLVPZQFJttP7/EECTl5DH0W7RkNZTOAPwKj7
	 8dXbgtQFEPsQqorJd2mh7oqZkyeaptWbGrO0AW6Q22p89qKlHktNDhXOgq82xg+KKh
	 mFr8+WSS4/U4Lb075xAm+vjNu/1yPJt3nQrzMTAxBINU4mS3iEt0wSnVd3zC2gcpln
	 5iQUnVLE3l/XNanT1RpuFue41KZ/+pipE4mBrNQh7PQxwpch1YmPobHgq9xOQELPSb
	 BRLlmQ+ylntHPjAnki931K49GtRlArDD21jE31Slt7azMlVVHNUqNE/x8DQKEsKJpM
	 rA/gXzcJ9zvsQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D9AEF42892;
	Thu, 19 Sep 2024 15:07:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BBB291BF4DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2024 09:42:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A68DB60667
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2024 09:42:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XjgOyhTRnWFz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Sep 2024 09:42:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=hawk@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 039176065D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 039176065D
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 039176065D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2024 09:42:51 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id BDBC35C57F2;
 Thu, 19 Sep 2024 09:42:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DBC7FC4CEC4;
 Thu, 19 Sep 2024 09:42:42 +0000 (UTC)
Message-ID: <894a3c2c-22f9-45b9-a82b-de7320066b42@kernel.org>
Date: Thu, 19 Sep 2024 11:42:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Yunsheng Lin <linyunsheng@huawei.com>
References: <20240918111826.863596-1-linyunsheng@huawei.com>
 <20240918111826.863596-3-linyunsheng@huawei.com>
 <CAC_iWjK=G7Oo5=pN2QunhasgDC6NyC1L+96jigX7u9ad+PbYng@mail.gmail.com>
Content-Language: en-US
From: Jesper Dangaard Brouer <hawk@kernel.org>
In-Reply-To: <CAC_iWjK=G7Oo5=pN2QunhasgDC6NyC1L+96jigX7u9ad+PbYng@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Thu, 19 Sep 2024 15:07:00 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1726738970;
 bh=4mBPJ1/8ZHYMdSjeFFRdSDpez+20eaW5Qpk0ZxpyplE=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=WNvFUZlIeZCdtFKQ6JJfXg22qRTupBYLgnu8Znpgj7u9GzB9cb+oCuqkGaUUFXqZg
 u3FLl6T6Dc6z14wmNEhM9sxXlKK/hnTLT7l41VAHBzniRkxJuoPGhWwQEozIgpKcqn
 e0kS1YGW5Ob7pUpRgtI7MbGmwk2xVRYMaz+rj6ubfII71lcBL9BipnzLBPVQDxC0s+
 6tii01Hw8+gMcMOU9sr4JhVfid9pQ8djWVDTMMnYh2tWVR7phPjsbZwqdPYB+N9hdB
 cnocJ45KkOqJzUN/IKhO7vvYPYCr6HhVzm91jSPJ6/m++FZ0VQT1lV4F/UgLqGCLlU
 /zO3c8TS5wTbA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=WNvFUZlI
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


On 18/09/2024 19.06, Ilias Apalodimas wrote:
>> In order not to do the dma unmmapping after driver has already
>> unbound and stall the unloading of the networking driver, add
>> the pool->items array to record all the pages including the ones
>> which are handed over to network stack, so the page_pool can
>> do the dma unmmapping for those pages when page_pool_destroy()
>> is called.
>
> So, I was thinking of a very similar idea. But what do you mean by
> "all"? The pages that are still in caches (slow or fast) of the pool
> will be unmapped during page_pool_destroy().

I really dislike this idea of having to keep track of all outstanding pages.

I liked Jakub's idea of keeping the netdev around for longer.

This is all related to destroying the struct device that have points to
the DMA engine, right?

Why don't we add an API that allow netdev to "give" struct device to
page_pool.  And then the page_poll will take over when we can safely
free the stuct device?

--Jesper
