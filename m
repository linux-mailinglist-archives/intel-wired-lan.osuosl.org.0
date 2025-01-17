Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB50A14E8A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jan 2025 12:35:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 49B3460B99;
	Fri, 17 Jan 2025 11:35:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C5hV-VncptBt; Fri, 17 Jan 2025 11:35:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C045611C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737113745;
	bh=Nw3/DrLiwmOZMrf3Bo9q5a7A+MBqjyNFVfEpa7H6w6U=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iAwTotlGDBCshM/OIkw0JObOh1+jaGFxVNS4JAAw3JTbAUEUfXSd+lTVmw2zVjP0k
	 aQgONhiDF6GnYnkMoH7/N89Q25SEKXQsoXfh/RSpblL1MC5YWkXk2rKc7EsrG6F2Wf
	 kOWe3+XQ9c14wEU2yhM+52KbB0lSu8y2zD6xEL1DMQx9dwKlWlJezBK8Apu4Kd5ui4
	 tQqfbH+rPr1uj82zKPNWa7nS/30UVDGYFBLph4t7hq5OfK9FWvNcT2YOMLTrqSZRFQ
	 eBmmBAOGJo3RhMT+jugwF/1tLDfep2gQmUEt7oEgHEHOWDji4qJ+KEPrdXuytmKxb3
	 0TgRLHPEENvbQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C045611C7;
	Fri, 17 Jan 2025 11:35:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1288A31
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 11:35:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 00F098394A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 11:35:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OvzhfsHEBKYD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Jan 2025 11:35:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.187;
 helo=szxga01-in.huawei.com; envelope-from=linyunsheng@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E127F83927
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E127F83927
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E127F83927
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 11:35:39 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.162.254])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4YZHcq34sJzjYBg;
 Fri, 17 Jan 2025 19:31:39 +0800 (CST)
Received: from dggpemf200006.china.huawei.com (unknown [7.185.36.61])
 by mail.maildlp.com (Postfix) with ESMTPS id 2DBB1180101;
 Fri, 17 Jan 2025 19:35:33 +0800 (CST)
Received: from [10.67.120.129] (10.67.120.129) by
 dggpemf200006.china.huawei.com (7.185.36.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Fri, 17 Jan 2025 19:35:32 +0800
Message-ID: <304b542d-514d-4269-ae11-b2e214659483@huawei.com>
Date: Fri, 17 Jan 2025 19:35:32 +0800
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
 <1bef4a35-efaa-4083-8ed5-8818fe285db5@huawei.com>
 <f558df7a-d983-4fc5-8358-faf251994d23@kernel.org>
Content-Language: en-US
From: Yunsheng Lin <linyunsheng@huawei.com>
In-Reply-To: <f558df7a-d983-4fc5-8358-faf251994d23@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.67.120.129]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggpemf200006.china.huawei.com (7.185.36.61)
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
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

On 2025/1/17 2:02, Jesper Dangaard Brouer wrote:

> 
> Benchmark (bench_page_pool_simple) results from before and after
> patchset with patches 1-5m and rcu lock removal as requested.
> 
> | Test name  |Cycles |   1-5 |    | Nanosec |    1-5 |        |      % |
> | (tasklet_*)|Before | After |diff|  Before |  After |   diff | change |
> |------------+-------+-------+----+---------+--------+--------+--------|
> | fast_path  |    19 |    19 |   0|   5.399 |  5.492 |  0.093 |    1.7 |
> | ptr_ring   |    54 |    57 |   3|  15.090 | 15.849 |  0.759 |    5.0 |
> | slow       |   238 |   284 |  46|  66.134 | 78.909 | 12.775 |   19.3 |
> #+TBLFM: $4=$3-$2::$7=$6-$5::$8=(($7/$5)*100);%.1f
> 
> This test with patches 1-5 looks much better regarding performance.

Thanks for the testing.

Is there any notiable performance variation during different test running
for the same built kernel in your machine?

> 
> --Jesper
> 
> https://github.com/xdp-project/xdp-project/blob/main/areas/mem/page_pool07_bench_DMA_fix.org#e5-1650-pp01-dma-fix-v7-p1-5
> 
> Kernel:
>  - 6.13.0-rc6-pp01-DMA-fix-v7-p1-5+ #5 SMP PREEMPT_DYNAMIC Thu Jan 16 18:06:53 CET 2025 x86_64 GNU/Linux
> 
> Machine: Intel(R) Xeon(R) CPU E5-1650 v4 @ 3.60GHz
> 
> modprobe bench_page_pool_simple loops=100000000
> 
> Raw data:
> [  187.309423] bench_page_pool_simple: time_bench_page_pool01_fast_path(): Cannot use page_pool fast-path
> [  187.872849] time_bench: Type:no-softirq-page_pool01 Per elem: 19 cycles(tsc) 5.539 ns (step:0) - (measurement period time:0.553906443 sec time_interval:553906443) - (invoke count:100000000 tsc_interval:1994123064)
> [  187.892023] bench_page_pool_simple: time_bench_page_pool02_ptr_ring(): Cannot use page_pool fast-path
> [  189.611070] time_bench: Type:no-softirq-page_pool02 Per elem: 61 cycles(tsc) 17.095 ns (step:0) - (measurement period time:1.709580367 sec time_interval:1709580367) - (invoke count:100000000 tsc_interval:6154679394)
> [  189.630414] bench_page_pool_simple: time_bench_page_pool03_slow(): Cannot use page_pool fast-path
> [  197.222387] time_bench: Type:no-softirq-page_pool03 Per elem: 272 cycles(tsc) 75.826 ns (step:0) - (measurement period time:7.582681388 sec time_interval:7582681388) - (invoke count:100000000 tsc_interval:27298499214)
> [  197.241926] bench_page_pool_simple: pp_tasklet_handler(): in_serving_softirq fast-path
> [  197.249968] bench_page_pool_simple: time_bench_page_pool01_fast_path(): in_serving_softirq fast-path
> [  197.808470] time_bench: Type:tasklet_page_pool01_fast_path Per elem: 19 cycles(tsc) 5.492 ns (step:0) - (measurement period time:0.549225541 sec time_interval:549225541) - (invoke count:100000000 tsc_interval:1977272238)
> [  197.828174] bench_page_pool_simple: time_bench_page_pool02_ptr_ring(): in_serving_softirq fast-path
> [  199.422305] time_bench: Type:tasklet_page_pool02_ptr_ring Per elem: 57 cycles(tsc) 15.849 ns (step:0) - (measurement period time:1.584920736 sec time_interval:1584920736) - (invoke count:100000000 tsc_interval:5705890830)
> [  199.442087] bench_page_pool_simple: time_bench_page_pool03_slow(): in_serving_softirq fast-path
> [  207.342120] time_bench: Type:tasklet_page_pool03_slow Per elem: 284 cycles(tsc) 78.909 ns (step:0) - (measurement period time:7.890955151 sec time_interval:7890955151) - (invoke count:100000000 tsc_interval:28408319289)
> 
