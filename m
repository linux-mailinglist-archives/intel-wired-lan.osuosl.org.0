Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 27202A1415C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jan 2025 19:03:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C91C60F7A;
	Thu, 16 Jan 2025 18:03:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CN3vNrtFzAI8; Thu, 16 Jan 2025 18:03:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 107C56101A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737050593;
	bh=T/ueRQzMQN/S+kB1tovVzhUu17r+Mocepb7YVFoxlgE=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=b6qZqatXPmznSWTfGE3i6TUd/6irQvIXqyckbD9CF7AANOJYGMcXz6WfyQn6hfx49
	 eDNqNYFeU5FEjPjduBrSIS7adj7oKgi4gdjxNkFzX/TMPEqF7fpdXopk2nXDX3Hctx
	 AOacYROK4nn1xgKoMeUwaYkMCqqcT8JfRFg59BZHLkHlE/ihQPuhPyGbsVbSGbUGDC
	 Xdn9mc1CzNBJW2wBwoUucfpQxrqDoPFnUG1Ta8SXj0WyGuGznPyrs+ym1cAnt4Eerm
	 yd6BtJPgiby1IUJtkcHBHJ4LIxxDR7dFZXc/tVapDgjOkG0wDFriHxXFpUvMylc6pW
	 M+XoNPAmwhctw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 107C56101A;
	Thu, 16 Jan 2025 18:03:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id ADF4394B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 18:03:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9BA5584899
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 18:03:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nxPxigBaJ4FJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jan 2025 18:03:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=hawk@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 521248487B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 521248487B
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 521248487B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 18:03:09 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 8DC1BA4252A;
 Thu, 16 Jan 2025 18:01:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E65FAC4CED6;
 Thu, 16 Jan 2025 18:03:01 +0000 (UTC)
Message-ID: <f558df7a-d983-4fc5-8358-faf251994d23@kernel.org>
Date: Thu, 16 Jan 2025 19:02:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Yunsheng Lin <linyunsheng@huawei.com>, davem@davemloft.net,
 kuba@kernel.org, pabeni@redhat.com
Cc: zhangkun09@huawei.com, liuyonglong@huawei.com, fanghaiqing@huawei.com,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Alexander Duyck <alexander.duyck@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, IOMMU <iommu@lists.linux.dev>,
 MM <linux-mm@kvack.org>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20250110130703.3814407-1-linyunsheng@huawei.com>
 <3c8e4f86-87e2-470d-84d8-86c70b3e2fcc@kernel.org>
 <c02e856e-6ec5-49d0-8527-2647695a0174@huawei.com>
 <3a853e1b-b5bf-4709-b8f6-e466e3e7375e@kernel.org>
 <1bef4a35-efaa-4083-8ed5-8818fe285db5@huawei.com>
Content-Language: en-US
From: Jesper Dangaard Brouer <hawk@kernel.org>
In-Reply-To: <1bef4a35-efaa-4083-8ed5-8818fe285db5@huawei.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1737050587;
 bh=NJ3mCKVaerTWKdIY3yecqSXXrLTSZSkqHQ/cdTJWkEI=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=JeJd3zInKgbOG12tOr+M4tKEbxueUw/GyR+YtZoFsftDzz0NwbDdOaZmqF5FjYFUW
 fq6OXxaf+kc1UKQI2xkfNOn0SjTKJnNQ6aXrCf7yXLUanwJgEZH991A6sCCJnotDSa
 45KUpiLVVf0vfVmDz6J+L0vQgxFwLj175YRjmd52cG4KnnH6aZEz/BDLoa+3C2t4i0
 kFtpeTJZdQUiafVv1ZfytHfbDixLf90R7zdAKIEem/f2ynVZGfoZoC/U9Zb8dAxh/z
 MRQBfGJg4zbVKAH1DtDFnZUofqYFq86ctZEd5OYqGxAaLB1XT8L0cfy+QG3chLi3AZ
 KqN2d3gF1mAPw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=JeJd3zIn
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



On 16/01/2025 13.52, Yunsheng Lin wrote:
> On 2025/1/16 1:40, Jesper Dangaard Brouer wrote:
>>
>>
>> On 15/01/2025 12.33, Yunsheng Lin wrote:
>>> On 2025/1/14 22:31, Jesper Dangaard Brouer wrote:
>>>>
>>>>
>>>> On 10/01/2025 14.06, Yunsheng Lin wrote:
>>>>> This patchset fix a possible time window problem for page_pool and
>>>>> the dma API misuse problem as mentioned in [1], and try to avoid the
>>>>> overhead of the fixing using some optimization.
>>>>>
>>>>>    From the below performance data, the overhead is not so obvious
>>>>> due to performance variations for time_bench_page_pool01_fast_path()
>>>>> and time_bench_page_pool02_ptr_ring, and there is about 20ns overhead
>>>>> for time_bench_page_pool03_slow() for fixing the bug.
>>>>>
>>>>
>>>> My benchmarking on x86_64 CPUs looks significantly different.
>>>>    - CPU: Intel(R) Xeon(R) CPU E5-1650 v4 @ 3.60GHz
>>>>
>>>> Benchmark (bench_page_pool_simple) results from before and after patchset:
>>>>
>>>> | Test name  | Cycles |       |    |Nanosec |        |       |      % |
>>>> | (tasklet_*)| Before | After |diff| Before |  After |  diff | change |
>>>> |------------+--------+-------+----+--------+--------+-------+--------|
>>>> | fast_path  |     19 |    24 |   5|  5.399 |  6.928 | 1.529 |   28.3 |
>>>> | ptr_ring   |     54 |    79 |  25| 15.090 | 21.976 | 6.886 |   45.6 |
>>>> | slow       |    238 |   299 |  61| 66.134 | 83.298 |17.164 |   26.0 |
>>>> #+TBLFM: $4=$3-$2::$7=$6-$5::$8=(($7/$5)*100);%.1f
>>>>
>>>> My above testing show a clear performance regressions across three
>>>> different page_pool operating modes.
>>>
>>> I retested it on arm64 server patch by patch as the raw performance
>>> data in the attachment, it seems the result seemed similar as before.
>>>
>>> Before this patchset:
>>>               fast_path              ptr_ring            slow
>>> 1.         31.171 ns               60.980 ns          164.917 ns
>>> 2.         28.824 ns               60.891 ns          170.241 ns
>>> 3.         14.236 ns               60.583 ns          164.355 ns
>>>
>>> With patch 1-4:
>>> 4.         31.443 ns               53.242 ns          210.148 ns
>>> 5.         31.406 ns               53.270 ns          210.189 ns
>>>
>>> With patch 1-5:
>>> 6.         26.163 ns               53.781 ns          189.450 ns
>>> 7.         26.189 ns               53.798 ns          189.466 ns
>>>
>>> With patch 1-8:
>>> 8.         28.108 ns               68.199 ns          202.516 ns
>>> 9.         16.128 ns               55.904 ns          202.711 ns
>>>
>>> I am not able to get hold of a x86 server yet, I might be able
>>> to get one during weekend.
>>>
>>> Theoretically, patch 1-4 or 1-5 should not have much performance
>>> impact for fast_path and ptr_ring except for the rcu_lock mentioned
>>> in page_pool_napi_local(), so it would be good if patch 1-5 is also
>>> tested in your testlab with the rcu_lock removing in
>>> page_pool_napi_local().
>>>
>>
>> What are you saying?
>>   - (1) test patch 1-5
>>   - or (2) test patch 1-5 but revert patch 2 with page_pool_napi_local()
> 
> patch 1-5 with below applied.
> 
> --- a/net/core/page_pool.c
> +++ b/net/core/page_pool.c
> @@ -1207,10 +1207,8 @@ static bool page_pool_napi_local(const struct page_pool *pool)
>          /* Synchronizated with page_pool_destory() to avoid use-after-free
>           * for 'napi'.
>           */
> -       rcu_read_lock();
>          napi = READ_ONCE(pool->p.napi);
>          napi_local = napi && READ_ONCE(napi->list_owner) == cpuid;
> -       rcu_read_unlock();
> 
>          return napi_local;
>   }
> 

Benchmark (bench_page_pool_simple) results from before and after
patchset with patches 1-5m and rcu lock removal as requested.

| Test name  |Cycles |   1-5 |    | Nanosec |    1-5 |        |      % |
| (tasklet_*)|Before | After |diff|  Before |  After |   diff | change |
|------------+-------+-------+----+---------+--------+--------+--------|
| fast_path  |    19 |    19 |   0|   5.399 |  5.492 |  0.093 |    1.7 |
| ptr_ring   |    54 |    57 |   3|  15.090 | 15.849 |  0.759 |    5.0 |
| slow       |   238 |   284 |  46|  66.134 | 78.909 | 12.775 |   19.3 |
#+TBLFM: $4=$3-$2::$7=$6-$5::$8=(($7/$5)*100);%.1f

This test with patches 1-5 looks much better regarding performance.

--Jesper

https://github.com/xdp-project/xdp-project/blob/main/areas/mem/page_pool07_bench_DMA_fix.org#e5-1650-pp01-dma-fix-v7-p1-5

Kernel:
  - 6.13.0-rc6-pp01-DMA-fix-v7-p1-5+ #5 SMP PREEMPT_DYNAMIC Thu Jan 16 
18:06:53 CET 2025 x86_64 GNU/Linux

Machine: Intel(R) Xeon(R) CPU E5-1650 v4 @ 3.60GHz

modprobe bench_page_pool_simple loops=100000000

Raw data:
[  187.309423] bench_page_pool_simple: 
time_bench_page_pool01_fast_path(): Cannot use page_pool fast-path
[  187.872849] time_bench: Type:no-softirq-page_pool01 Per elem: 19 
cycles(tsc) 5.539 ns (step:0) - (measurement period time:0.553906443 sec 
time_interval:553906443) - (invoke count:100000000 tsc_interval:1994123064)
[  187.892023] bench_page_pool_simple: 
time_bench_page_pool02_ptr_ring(): Cannot use page_pool fast-path
[  189.611070] time_bench: Type:no-softirq-page_pool02 Per elem: 61 
cycles(tsc) 17.095 ns (step:0) - (measurement period time:1.709580367 
sec time_interval:1709580367) - (invoke count:100000000 
tsc_interval:6154679394)
[  189.630414] bench_page_pool_simple: time_bench_page_pool03_slow(): 
Cannot use page_pool fast-path
[  197.222387] time_bench: Type:no-softirq-page_pool03 Per elem: 272 
cycles(tsc) 75.826 ns (step:0) - (measurement period time:7.582681388 
sec time_interval:7582681388) - (invoke count:100000000 
tsc_interval:27298499214)
[  197.241926] bench_page_pool_simple: pp_tasklet_handler(): 
in_serving_softirq fast-path
[  197.249968] bench_page_pool_simple: 
time_bench_page_pool01_fast_path(): in_serving_softirq fast-path
[  197.808470] time_bench: Type:tasklet_page_pool01_fast_path Per elem: 
19 cycles(tsc) 5.492 ns (step:0) - (measurement period time:0.549225541 
sec time_interval:549225541) - (invoke count:100000000 
tsc_interval:1977272238)
[  197.828174] bench_page_pool_simple: 
time_bench_page_pool02_ptr_ring(): in_serving_softirq fast-path
[  199.422305] time_bench: Type:tasklet_page_pool02_ptr_ring Per elem: 
57 cycles(tsc) 15.849 ns (step:0) - (measurement period time:1.584920736 
sec time_interval:1584920736) - (invoke count:100000000 
tsc_interval:5705890830)
[  199.442087] bench_page_pool_simple: time_bench_page_pool03_slow(): 
in_serving_softirq fast-path
[  207.342120] time_bench: Type:tasklet_page_pool03_slow Per elem: 284 
cycles(tsc) 78.909 ns (step:0) - (measurement period time:7.890955151 
sec time_interval:7890955151) - (invoke count:100000000 
tsc_interval:28408319289)

