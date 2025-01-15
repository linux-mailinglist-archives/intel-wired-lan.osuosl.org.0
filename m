Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B7444A12A06
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jan 2025 18:40:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4033241621;
	Wed, 15 Jan 2025 17:40:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id skCVclN2ZmIC; Wed, 15 Jan 2025 17:40:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43167414A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736962831;
	bh=BCCjPypjfkl2FIovsFFHVjB/BzI3nlgvwJz5/NwbXsw=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Hzb5KPPnvvd6TkhqWBI9TafEfJ2hovAQJ+k/4fTagxY57oOeGhfg53rZawejhqXTd
	 LmAM9glIra1w8wuREdyFkBb4qkeHenysE2VhWjuw4Jc/HhvN9y6/oCUjNBs67d0QBU
	 34HQ8ufS8vB2z9DsaWAo9EMC3kR+1t75Fk1J1uHpggcODUn13vQya/6FwghHIQ65ca
	 bruJbO0wD1NUUTZfG2F6dfeXhT81doTugo7v/Q/YoPX+2lMM5ObVtfWf3jpgsrDy2X
	 yY4XIRumAiQ66Yj03utVmIZnEwSNcczjuwykwK54wlVDZvdgBIYwL/XIqCJzbjvZkm
	 iJSPFKhe+aEbg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43167414A0;
	Wed, 15 Jan 2025 17:40:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C9924B89
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 17:40:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A50E1405B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 17:40:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rNKa5uQir8aB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jan 2025 17:40:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=hawk@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5DF32400D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5DF32400D0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5DF32400D0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 17:40:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 4B4575C5DA8;
 Wed, 15 Jan 2025 17:39:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48597C4CEE0;
 Wed, 15 Jan 2025 17:40:20 +0000 (UTC)
Message-ID: <3a853e1b-b5bf-4709-b8f6-e466e3e7375e@kernel.org>
Date: Wed, 15 Jan 2025 18:40:18 +0100
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
Content-Language: en-US
From: Jesper Dangaard Brouer <hawk@kernel.org>
In-Reply-To: <c02e856e-6ec5-49d0-8527-2647695a0174@huawei.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1736962825;
 bh=MnSQMXREVVBMVqqG4DNkPoiFHSbXoUAQ7+YSxlu2cok=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=svJ45p4OZzWwWOCVuCmsBOLH/Sb0FwOy4O6Wp/nYfGoUPPMIu4eZ5AeCKRw09uHlp
 EvOQeh7YceB+VBH+j4VkwK6PCfrLADM0+kATjPLjH7aCrzR0PAMZpFDYT80+5rN/KI
 PnsupXJ14Gkmz1GrEPVem0zwAxnL1TuB7n4nFvfuDjEqXhzeC/ujVDdr2lQV1Y4Krq
 c5zmA3nAPBk25FZ7Mu0Zv4qFKeQNdCCQrsNUzOhg17VhdcEwcC5/s9KNK8G1BbWH5e
 QEVGA5UezKKiGKayItoNcXhtg6FCRgXsglzQd6JOrixy3ENiUZAh6D0jRRsWRcPnhA
 wzQYoGNu+WDCA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=svJ45p4O
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



On 15/01/2025 12.33, Yunsheng Lin wrote:
> On 2025/1/14 22:31, Jesper Dangaard Brouer wrote:
>>
>>
>> On 10/01/2025 14.06, Yunsheng Lin wrote:
>>> This patchset fix a possible time window problem for page_pool and
>>> the dma API misuse problem as mentioned in [1], and try to avoid the
>>> overhead of the fixing using some optimization.
>>>
>>>   From the below performance data, the overhead is not so obvious
>>> due to performance variations for time_bench_page_pool01_fast_path()
>>> and time_bench_page_pool02_ptr_ring, and there is about 20ns overhead
>>> for time_bench_page_pool03_slow() for fixing the bug.
>>>
>>
>> My benchmarking on x86_64 CPUs looks significantly different.
>>   - CPU: Intel(R) Xeon(R) CPU E5-1650 v4 @ 3.60GHz
>>
>> Benchmark (bench_page_pool_simple) results from before and after patchset:
>>
>> | Test name  | Cycles |       |    |Nanosec |        |       |      % |
>> | (tasklet_*)| Before | After |diff| Before |  After |  diff | change |
>> |------------+--------+-------+----+--------+--------+-------+--------|
>> | fast_path  |     19 |    24 |   5|  5.399 |  6.928 | 1.529 |   28.3 |
>> | ptr_ring   |     54 |    79 |  25| 15.090 | 21.976 | 6.886 |   45.6 |
>> | slow       |    238 |   299 |  61| 66.134 | 83.298 |17.164 |   26.0 |
>> #+TBLFM: $4=$3-$2::$7=$6-$5::$8=(($7/$5)*100);%.1f
>>
>> My above testing show a clear performance regressions across three
>> different page_pool operating modes.
> 
> I retested it on arm64 server patch by patch as the raw performance
> data in the attachment, it seems the result seemed similar as before.
> 
> Before this patchset:
>              fast_path              ptr_ring            slow
> 1.         31.171 ns               60.980 ns          164.917 ns
> 2.         28.824 ns               60.891 ns          170.241 ns
> 3.         14.236 ns               60.583 ns          164.355 ns
> 
> With patch 1-4:
> 4.         31.443 ns               53.242 ns          210.148 ns
> 5.         31.406 ns               53.270 ns          210.189 ns
> 
> With patch 1-5:
> 6.         26.163 ns               53.781 ns          189.450 ns
> 7.         26.189 ns               53.798 ns          189.466 ns
> 
> With patch 1-8:
> 8.         28.108 ns               68.199 ns          202.516 ns
> 9.         16.128 ns               55.904 ns          202.711 ns
> 
> I am not able to get hold of a x86 server yet, I might be able
> to get one during weekend.
> 
> Theoretically, patch 1-4 or 1-5 should not have much performance
> impact for fast_path and ptr_ring except for the rcu_lock mentioned
> in page_pool_napi_local(), so it would be good if patch 1-5 is also
> tested in your testlab with the rcu_lock removing in
> page_pool_napi_local().
> 

What are you saying?
  - (1) test patch 1-5
  - or (2) test patch 1-5 but revert patch 2 with page_pool_napi_local()

--Jesper

>>
>>
>> Data also available in:
>>   - https://github.com/xdp-project/xdp-project/blob/main/areas/mem/page_pool07_bench_DMA_fix.org
>>
