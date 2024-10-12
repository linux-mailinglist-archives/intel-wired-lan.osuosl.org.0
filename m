Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A62899B4BE
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Oct 2024 14:06:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 65FC84055D;
	Sat, 12 Oct 2024 12:06:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dBXGTusT6Ekf; Sat, 12 Oct 2024 12:06:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A49E403AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728734792;
	bh=4q+5yM/yTzJBMrMhD9gLrCWAQ7obBGvJ5w2ryoNvuqE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wpJFMk1ycbVagS2AULTQPwEgMdxNhDvViWt0vGNJqDj6P/pnu9hKTI++NdXqXkDF1
	 8JlwkQ/mGpMOdFAwBN7JcuwkO7CidD+GDJmoVoRXVQfpmV+fPE0DG2BhtWbBEjGpGQ
	 Lwmjq+zM4NpwzGb9rpytUQmp05hrhgkJEM57vPjoabYYV4QAsgD6wmRM1hTXgIerZW
	 LLT6VQARQk1X2PMJaDq2a/Vaq/9p5D1uLRR0zPc10RvZPbOw57jBHJF0n5FU9H27Jo
	 lxSWt5rQFP5RmJtDHSEnjSE8w/pQ3t+Pf1TimSNcKJAcn0C2LZiQ+dZYvnYbHlcWKQ
	 svs96Yey0Cg1Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5A49E403AD;
	Sat, 12 Oct 2024 12:06:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6C74B1BF2F8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2024 12:06:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 591AE4030D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2024 12:06:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CU0GcGh_-Fky for <intel-wired-lan@lists.osuosl.org>;
 Sat, 12 Oct 2024 12:06:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.188;
 helo=szxga02-in.huawei.com; envelope-from=linyunsheng@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D0651402F7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D0651402F7
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D0651402F7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2024 12:06:28 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.88.105])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4XQhvv1XPnzkWcD;
 Sat, 12 Oct 2024 20:03:07 +0800 (CST)
Received: from dggpemf200006.china.huawei.com (unknown [7.185.36.61])
 by mail.maildlp.com (Postfix) with ESMTPS id 66A98140393;
 Sat, 12 Oct 2024 20:05:32 +0800 (CST)
Received: from [10.67.120.129] (10.67.120.129) by
 dggpemf200006.china.huawei.com (7.185.36.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Sat, 12 Oct 2024 20:05:32 +0800
Message-ID: <b1fd5ece-b967-4e56-ad4f-64ec437e2634@huawei.com>
Date: Sat, 12 Oct 2024 20:05:31 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: <davem@davemloft.net>, <kuba@kernel.org>, <pabeni@redhat.com>
References: <20240925075707.3970187-1-linyunsheng@huawei.com>
Content-Language: en-US
From: Yunsheng Lin <linyunsheng@huawei.com>
In-Reply-To: <20240925075707.3970187-1-linyunsheng@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.67.120.129]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpemf200006.china.huawei.com (7.185.36.61)
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
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
 Matthias Brugger <matthias.bgg@gmail.com>, zhangkun09@huawei.com,
 fanghaiqing@huawei.com, bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2024/9/25 15:57, Yunsheng Lin wrote:
> Patch 1 fix a possible time window problem for page_pool.
> Patch 2 fix the kernel crash problem at iommu_get_dma_domain
> reported in [1].

Hi, all

Through the discussions, it seems there are some main concerns
as below:
1. Semantics changing of supporting unlimited inflight pages
   to limited inflight pages that are as large as the pool_size
   of page_pool.
2. The overhead of finding available pool->items in
   page_pool_item_add().

Any other concerns I missed here?
As it is unclear about the impact of the above concerns, which seemed
to lead Paolo to suggest this patchset targetting net-next tree
instead of net tree, so I am planning to target the net-next tree
keeping the 'Fixes' tag for the next version, if there is any other
opinion here, please let me know.

Also, I still have the page_frag refactoring patchset pending in the
nex-next, please let me know if I should wait for that patchset to
be applied before sending this one to the net-next tree.

> 
