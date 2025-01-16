Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C93AEA13A39
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jan 2025 13:52:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CEF9680457;
	Thu, 16 Jan 2025 12:52:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7qJrVIFotuFx; Thu, 16 Jan 2025 12:52:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D3971840E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737031940;
	bh=jz3dClXI71MMrwUsh1CJm6zD9rsxqlFQltgra5HhGkk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=D0uz6aSs0/iHrHB/KEiY81DYdNDuJAftBTPdArBTxnXrBTlkzd9rUdiXVJ/vfvmJb
	 5qyAR19vIfkpRxvuYSZ8//25aF/EEZmcT4wuiaipKO8vty6tpUF4gmRD/wzXTaBX3R
	 WZXmdPsFtMqC3xsC2jcXX/KMmLw8H51FLthlCZ3vbqDtmosB3pUJvQrc63N1a72Rw4
	 VDR6p0rNGhH1SRQLHwFj9oY/kfpTvEOn8Sz4RrVlUl2s1dN3C9zvFuptrcLjKHtGR+
	 jTcZ3pZejnCZAx5nJ40S7665Xl2RwmvgfK28FGRYva7FZes9gJWRmboZuf383joPsc
	 WR5TemWK0wfsg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D3971840E4;
	Thu, 16 Jan 2025 12:52:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 241D9B8B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 12:52:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 11D7260E48
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 12:52:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x7AqnKWwMxAk for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jan 2025 12:52:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.191;
 helo=szxga05-in.huawei.com; envelope-from=linyunsheng@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 75EF3607E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 75EF3607E6
Received: from szxga05-in.huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 75EF3607E6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 12:52:15 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.88.214])
 by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4YYjR348srz1xmTj;
 Thu, 16 Jan 2025 20:51:11 +0800 (CST)
Received: from dggpemf200006.china.huawei.com (unknown [7.185.36.61])
 by mail.maildlp.com (Postfix) with ESMTPS id 9D57C1A016C;
 Thu, 16 Jan 2025 20:52:05 +0800 (CST)
Received: from [10.67.120.129] (10.67.120.129) by
 dggpemf200006.china.huawei.com (7.185.36.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Thu, 16 Jan 2025 20:52:05 +0800
Message-ID: <1bef4a35-efaa-4083-8ed5-8818fe285db5@huawei.com>
Date: Thu, 16 Jan 2025 20:52:04 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jesper Dangaard Brouer <hawk@kernel.org>, <davem@davemloft.net>,
 <kuba@kernel.org>, <pabeni@redhat.com>
CC: <zhangkun09@huawei.com>, <liuyonglong@huawei.com>,
 <fanghaiqing@huawei.com>, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Robin Murphy <robin.murphy@arm.com>, Alexander Duyck
 <alexander.duyck@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, IOMMU
 <iommu@lists.linux.dev>, MM <linux-mm@kvack.org>, Alexei Starovoitov
 <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, John Fastabend
 <john.fastabend@gmail.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 <netdev@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <bpf@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>
References: <20250110130703.3814407-1-linyunsheng@huawei.com>
 <3c8e4f86-87e2-470d-84d8-86c70b3e2fcc@kernel.org>
 <c02e856e-6ec5-49d0-8527-2647695a0174@huawei.com>
 <3a853e1b-b5bf-4709-b8f6-e466e3e7375e@kernel.org>
Content-Language: en-US
From: Yunsheng Lin <linyunsheng@huawei.com>
In-Reply-To: <3a853e1b-b5bf-4709-b8f6-e466e3e7375e@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.67.120.129]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpemf200006.china.huawei.com (7.185.36.61)
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 0/8] fix two bugs related
 to page_pool
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2025/1/16 1:40, Jesper Dangaard Brouer wrote:
> 
> 
> On 15/01/2025 12.33, Yunsheng Lin wrote:
>> On 2025/1/14 22:31, Jesper Dangaard Brouer wrote:
>>>
>>>
>>> On 10/01/2025 14.06, Yunsheng Lin wrote:
>>>> This patchset fix a possible time window problem for page_pool and
>>>> the dma API misuse problem as mentioned in [1], and try to avoid the
>>>> overhead of the fixing using some optimization.
>>>>
>>>>   From the below performance data, the overhead is not so obvious
>>>> due to performance variations for time_bench_page_pool01_fast_path()
>>>> and time_bench_page_pool02_ptr_ring, and there is about 20ns overhead
>>>> for time_bench_page_pool03_slow() for fixing the bug.
>>>>
>>>
>>> My benchmarking on x86_64 CPUs looks significantly different.
>>>   - CPU: Intel(R) Xeon(R) CPU E5-1650 v4 @ 3.60GHz
>>>
>>> Benchmark (bench_page_pool_simple) results from before and after patchset:
>>>
>>> | Test name  | Cycles |       |    |Nanosec |        |       |      % |
>>> | (tasklet_*)| Before | After |diff| Before |  After |  diff | change |
>>> |------------+--------+-------+----+--------+--------+-------+--------|
>>> | fast_path  |     19 |    24 |   5|  5.399 |  6.928 | 1.529 |   28.3 |
>>> | ptr_ring   |     54 |    79 |  25| 15.090 | 21.976 | 6.886 |   45.6 |
>>> | slow       |    238 |   299 |  61| 66.134 | 83.298 |17.164 |   26.0 |
>>> #+TBLFM: $4=$3-$2::$7=$6-$5::$8=(($7/$5)*100);%.1f
>>>
>>> My above testing show a clear performance regressions across three
>>> different page_pool operating modes.
>>
>> I retested it on arm64 server patch by patch as the raw performance
>> data in the attachment, it seems the result seemed similar as before.
>>
>> Before this patchset:
>>              fast_path              ptr_ring            slow
>> 1.         31.171 ns               60.980 ns          164.917 ns
>> 2.         28.824 ns               60.891 ns          170.241 ns
>> 3.         14.236 ns               60.583 ns          164.355 ns
>>
>> With patch 1-4:
>> 4.         31.443 ns               53.242 ns          210.148 ns
>> 5.         31.406 ns               53.270 ns          210.189 ns
>>
>> With patch 1-5:
>> 6.         26.163 ns               53.781 ns          189.450 ns
>> 7.         26.189 ns               53.798 ns          189.466 ns
>>
>> With patch 1-8:
>> 8.         28.108 ns               68.199 ns          202.516 ns
>> 9.         16.128 ns               55.904 ns          202.711 ns
>>
>> I am not able to get hold of a x86 server yet, I might be able
>> to get one during weekend.
>>
>> Theoretically, patch 1-4 or 1-5 should not have much performance
>> impact for fast_path and ptr_ring except for the rcu_lock mentioned
>> in page_pool_napi_local(), so it would be good if patch 1-5 is also
>> tested in your testlab with the rcu_lock removing in
>> page_pool_napi_local().
>>
> 
> What are you saying?
>  - (1) test patch 1-5
>  - or (2) test patch 1-5 but revert patch 2 with page_pool_napi_local()

patch 1-5 with below applied.

--- a/net/core/page_pool.c
+++ b/net/core/page_pool.c
@@ -1207,10 +1207,8 @@ static bool page_pool_napi_local(const struct page_pool *pool)
        /* Synchronizated with page_pool_destory() to avoid use-after-free
         * for 'napi'.
         */
-       rcu_read_lock();
        napi = READ_ONCE(pool->p.napi);
        napi_local = napi && READ_ONCE(napi->list_owner) == cpuid;
-       rcu_read_unlock();

        return napi_local;
 }

