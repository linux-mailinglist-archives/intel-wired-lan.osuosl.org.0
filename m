Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 821769862A6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Sep 2024 17:14:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CA88540FEC;
	Wed, 25 Sep 2024 15:14:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4F_BL79DpZsS; Wed, 25 Sep 2024 15:14:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9F1CB40FE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727277294;
	bh=0eBbMU9GFgudwGQps7UNgcx/bEq3HC70/4mTX6YSLCw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WuXBdiKpw9eD66BaIAmRdI7g3U0Y3/vT6XYjcCIvI66TV4G4e8+4YsMfYRje/V3La
	 nMb+NDR7Aj+G0RyFnUO7A+eBr7JZCdrp4cVuI8laCpPdW29U4rLwYFjTX9TGslPGSB
	 u+zTOYRNJMxpYi5XqCkBvHMGHfhKR7IW7Q3guPUjWIX/gRD6wFCziBKiFqkZycsPNx
	 oRoCBgf2gAuJ6tlX51tQihkLx/k8iFngABlFfHQYL9LRN3k8l/WV4+eBe/dOScwbLC
	 F+F07JBnS1D9DuE3DiYUDg2T1ZRWew6yrd9Si5wqDVwz6RLSs90e0Ye2/DyCJfpF+7
	 ONImPYFECtuUw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9F1CB40FE5;
	Wed, 25 Sep 2024 15:14:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F36931BF8A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 13:50:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E1429607CA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 13:50:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3zyuvnVDgho3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Sep 2024 13:50:52 +0000 (UTC)
X-Greylist: delayed 1120 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 25 Sep 2024 13:50:51 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 92FF2607B4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 92FF2607B4
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.255;
 helo=szxga08-in.huawei.com; envelope-from=liuyonglong@huawei.com;
 receiver=<UNKNOWN> 
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com [45.249.212.255])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 92FF2607B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 13:50:50 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.163.48])
 by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4XDHfg0sdzz1T7tx;
 Wed, 25 Sep 2024 21:30:35 +0800 (CST)
Received: from kwepemf200007.china.huawei.com (unknown [7.202.181.233])
 by mail.maildlp.com (Postfix) with ESMTPS id 3C59F1800A4;
 Wed, 25 Sep 2024 21:32:00 +0800 (CST)
Received: from [10.67.121.184] (10.67.121.184) by
 kwepemf200007.china.huawei.com (7.202.181.233) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Wed, 25 Sep 2024 21:31:59 +0800
Message-ID: <282e3f4f-c3ef-4b42-bf9e-3a1ab25a8091@huawei.com>
Date: Wed, 25 Sep 2024 21:31:58 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Yunsheng Lin <linyunsheng@huawei.com>, <davem@davemloft.net>,
 <kuba@kernel.org>, <pabeni@redhat.com>
References: <20240925075707.3970187-1-linyunsheng@huawei.com>
Content-Language: en-US
From: Yonglong Liu <liuyonglong@huawei.com>
In-Reply-To: <20240925075707.3970187-1-linyunsheng@huawei.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.67.121.184]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 kwepemf200007.china.huawei.com (7.202.181.233)
X-Mailman-Approved-At: Wed, 25 Sep 2024 15:14:52 +0000
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Alexander Duyck <alexander.duyck@gmail.com>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 IOMMU <iommu@lists.linux.dev>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, zhangkun09@huawei.com,
 fanghaiqing@huawei.com, bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tested-by: Yonglong Liu <liuyonglong@huawei.com>

On 2024/9/25 15:57, Yunsheng Lin wrote:
> Patch 1 fix a possible time window problem for page_pool.
> Patch 2 fix the kernel crash problem at iommu_get_dma_domain
> reported in [1].
>
> When page_pool_put_unrefed_netmem() is called with allow_direct
> being true, there is only a newly added checking overhead
> introduced in patch 1, which seem to be no noticeable performance
> impact.
>
> When page_pool_put_unrefed_netmem() is called with allow_direct
> being false, there is an added rcu read lock overhead introduced in
> patch 1, and the overhead is about 13ns using the below test code,
> but 'time_bench_page_pool02_ptr_ring' only show about 2ns overhead,
> which is about 2% degradation.
>
> +static int time_bench_rcu(
> +       struct time_bench_record *rec, void *data)
> +{
> +       uint64_t loops_cnt = 0;
> +       int i;
> +
> +       time_bench_start(rec);
> +       /** Loop to measure **/
> +       for (i = 0; i < rec->loops; i++) {
> +               rcu_read_lock();
> +               loops_cnt++;
> +               barrier(); /* avoid compiler to optimize this loop */
> +               rcu_read_unlock();
> +       }
> +       time_bench_stop(rec, loops_cnt);
> +       return loops_cnt;
> +}
>
> When page_pool need to be refilled from or flushed to the page allocator,
> the added overhead is the page_pool_item_add() and page_pool_item_del()
> calling overhead, using below patch to enable Jesper's testing running in
> arm64, the overhead is 0~20ns, which is quite variable
>
> Before this patchset:
> root@(none)$ taskset -c 1 insmod bench_page_pool_simple.ko
> [  136.641453] bench_page_pool_simple: Loaded
> [  136.722560] time_bench: Type:for_loop Per elem: 0 cycles(tsc) 0.769 ns (step:0) - (measurement period time:0.076968720 sec time_interval:76968720) - (invoke count:100000000 tsc_interval:7696855)
> [  137.317006] time_bench: Type:atomic_inc Per elem: 0 cycles(tsc) 5.771 ns (step:0) - (measurement period time:0.577164350 sec time_interval:577164350) - (invoke count:100000000 tsc_interval:57716429)
> [  137.480852] time_bench: Type:lock Per elem: 1 cycles(tsc) 14.621 ns (step:0) - (measurement period time:0.146218730 sec time_interval:146218730) - (invoke count:10000000 tsc_interval:14621868)
> [  138.842377] time_bench: Type:rcu Per elem: 1 cycles(tsc) 13.444 ns (step:0) - (measurement period time:1.344419820 sec time_interval:1344419820) - (invoke count:100000000 tsc_interval:134441975)
> [  138.859656] bench_page_pool_simple: time_bench_page_pool01_fast_path(): Cannot use page_pool fast-path
> [  139.132102] time_bench: Type:no-softirq-page_pool01 Per elem: 2 cycles(tsc) 26.315 ns (step:0) - (measurement period time:0.263151430 sec time_interval:263151430) - (invoke count:10000000 tsc_interval:26315135)
> [  139.150769] bench_page_pool_simple: time_bench_page_pool02_ptr_ring(): Cannot use page_pool fast-path
> [  139.910642] time_bench: Type:no-softirq-page_pool02 Per elem: 7 cycles(tsc) 75.066 ns (step:0) - (measurement period time:0.750663200 sec time_interval:750663200) - (invoke count:10000000 tsc_interval:75066312)
> [  139.929312] bench_page_pool_simple: time_bench_page_pool03_slow(): Cannot use page_pool fast-path
> [  141.673951] time_bench: Type:no-softirq-page_pool03 Per elem: 17 cycles(tsc) 173.578 ns (step:0) - (measurement period time:1.735781610 sec time_interval:1735781610) - (invoke count:10000000 tsc_interval:173578155)
> [  141.692970] bench_page_pool_simple: pp_tasklet_handler(): in_serving_softirq fast-path
> [  141.700874] bench_page_pool_simple: time_bench_page_pool01_fast_path(): in_serving_softirq fast-path
> [  141.973638] time_bench: Type:tasklet_page_pool01_fast_path Per elem: 2 cycles(tsc) 26.364 ns (step:0) - (measurement period time:0.263645150 sec time_interval:263645150) - (invoke count:10000000 tsc_interval:26364508)
> [  141.992912] bench_page_pool_simple: time_bench_page_pool02_ptr_ring(): in_serving_softirq fast-path
> [  142.531745] time_bench: Type:tasklet_page_pool02_ptr_ring Per elem: 5 cycles(tsc) 52.980 ns (step:0) - (measurement period time:0.529801250 sec time_interval:529801250) - (invoke count:10000000 tsc_interval:52980119)
> [  142.550933] bench_page_pool_simple: time_bench_page_pool03_slow(): in_serving_softirq fast-path
> [  144.297646] time_bench: Type:tasklet_page_pool03_slow Per elem: 17 cycles(tsc) 173.802 ns (step:0) - (measurement period time:1.738029000 sec time_interval:1738029000) - (invoke count:10000000 tsc_interval:173802894)
>
> After this patchset:
> root@(none)$ taskset -c 1 insmod bench_page_pool_simple.ko
> [  149.865799] bench_page_pool_simple: Loaded
> [  149.946907] time_bench: Type:for_loop Per elem: 0 cycles(tsc) 0.769 ns (step:0) - (measurement period time:0.076965620 sec time_interval:76965620) - (invoke count:100000000 tsc_interval:7696556)
> [  150.722282] time_bench: Type:atomic_inc Per elem: 0 cycles(tsc) 7.580 ns (step:0) - (measurement period time:0.758094660 sec time_interval:758094660) - (invoke count:100000000 tsc_interval:75809459)
> [  150.886335] time_bench: Type:lock Per elem: 1 cycles(tsc) 14.640 ns (step:0) - (measurement period time:0.146405830 sec time_interval:146405830) - (invoke count:10000000 tsc_interval:14640578)
> [  152.249454] time_bench: Type:rcu Per elem: 1 cycles(tsc) 13.460 ns (step:0) - (measurement period time:1.346009570 sec time_interval:1346009570) - (invoke count:100000000 tsc_interval:134600951)
> [  152.266734] bench_page_pool_simple: time_bench_page_pool01_fast_path(): Cannot use page_pool fast-path
> [  152.537046] time_bench: Type:no-softirq-page_pool01 Per elem: 2 cycles(tsc) 26.100 ns (step:0) - (measurement period time:0.261007670 sec time_interval:261007670) - (invoke count:10000000 tsc_interval:26100761)
> [  152.555714] bench_page_pool_simple: time_bench_page_pool02_ptr_ring(): Cannot use page_pool fast-path
> [  153.342212] time_bench: Type:no-softirq-page_pool02 Per elem: 7 cycles(tsc) 77.729 ns (step:0) - (measurement period time:0.777293380 sec time_interval:777293380) - (invoke count:10000000 tsc_interval:77729331)
> [  153.360881] bench_page_pool_simple: time_bench_page_pool03_slow(): Cannot use page_pool fast-path
> [  155.287747] time_bench: Type:no-softirq-page_pool03 Per elem: 19 cycles(tsc) 191.800 ns (step:0) - (measurement period time:1.918007990 sec time_interval:1918007990) - (invoke count:10000000 tsc_interval:191800791)
> [  155.306766] bench_page_pool_simple: pp_tasklet_handler(): in_serving_softirq fast-path
> [  155.314670] bench_page_pool_simple: time_bench_page_pool01_fast_path(): in_serving_softirq fast-path
> [  155.584313] time_bench: Type:tasklet_page_pool01_fast_path Per elem: 2 cycles(tsc) 26.052 ns (step:0) - (measurement period time:0.260524810 sec time_interval:260524810) - (invoke count:10000000 tsc_interval:26052476)
> [  155.603588] bench_page_pool_simple: time_bench_page_pool02_ptr_ring(): in_serving_softirq fast-path
> [  156.183214] time_bench: Type:tasklet_page_pool02_ptr_ring Per elem: 5 cycles(tsc) 57.059 ns (step:0) - (measurement period time:0.570594850 sec time_interval:570594850) - (invoke count:10000000 tsc_interval:57059478)
> [  156.202402] bench_page_pool_simple: time_bench_page_pool03_slow(): in_serving_softirq fast-path
> [  158.045594] time_bench: Type:tasklet_page_pool03_slow Per elem: 18 cycles(tsc) 183.450 ns (step:0) - (measurement period time:1.834507700 sec time_interval:1834507700) - (invoke count:10000000 tsc_interval:183450764)
>
> Patch for time_bench.h enable the out of tree testing on arm64 system:
> @@ -101,6 +101,7 @@ struct time_bench_cpu {
>    *  CPUID clears the high 32-bits of all (rax/rbx/rcx/rdx)
>    */
>   static __always_inline uint64_t tsc_start_clock(void) {
> +#if defined(__i386__) || defined(__x86_64__)
>          /* See: Intel Doc #324264 */
>          unsigned hi, lo;
>          asm volatile (
> @@ -111,9 +112,13 @@ static __always_inline uint64_t tsc_start_clock(void) {
>                  "%rax", "%rbx", "%rcx", "%rdx");
>          //FIXME: on 32bit use clobbered %eax + %edx
>          return ((uint64_t)lo) | (((uint64_t)hi) << 32);
> +#else
> +       return get_cycles();
> +#endif
>   }
>
>   static __always_inline uint64_t tsc_stop_clock(void) {
> +#if defined(__i386__) || defined(__x86_64__)
>          /* See: Intel Doc #324264 */
>          unsigned hi, lo;
>          asm volatile(
> @@ -123,6 +128,9 @@ static __always_inline uint64_t tsc_stop_clock(void) {
>                  "CPUID\n\t": "=r" (hi), "=r" (lo)::
>                  "%rax", "%rbx", "%rcx", "%rdx");
>          return ((uint64_t)lo) | (((uint64_t)hi) << 32);
> +#else
> +       return get_cycles();
> +#endif
>   }
>
>   /* Notes for RDTSC and RDTSCP
> @@ -186,10 +194,14 @@ enum {
>
>   static __always_inline unsigned long long p_rdpmc(unsigned in)
>   {
> +#if defined(__i386__) || defined(__x86_64__)
>          unsigned d, a;
>
>          asm volatile("rdpmc" : "=d" (d), "=a" (a) : "c" (in) : "memory");
>          return ((unsigned long long)d << 32) | a;
> +#else
> +       return 0;
> +#endif
>   }
>
>   /* These PMU counter needs to be enabled, but I don't have the
> @@ -216,7 +228,11 @@ static __always_inline unsigned long long pmc_clk(void)
>   #define MSR_IA32_PCM2 0x400000C3
>   inline uint64_t msr_inst(unsigned long long *msr_result)
>   {
> +#if defined(__i386__) || defined(__x86_64__)
>          return rdmsrl_safe(MSR_IA32_PCM0, msr_result);
> +#else
> +       return 0;
> +#endif
>   }
>
> 1. https://lore.kernel.org/lkml/8067f204-1380-4d37-8ffd-007fc6f26738@kernel.org/T/
>
> CC: Alexander Lobakin <aleksander.lobakin@intel.com>
> CC: Robin Murphy <robin.murphy@arm.com>
> CC: Alexander Duyck <alexander.duyck@gmail.com>
> CC: IOMMU <iommu@lists.linux.dev>
>
> Change log:
> V2:
>    1. Add a item_full stat.
>    2. Use container_of() for page_pool_to_pp().
>
> Yunsheng Lin (2):
>    page_pool: fix timing for checking and disabling napi_local
>    page_pool: fix IOMMU crash when driver has already unbound
>
>   drivers/net/ethernet/freescale/fec_main.c     |   8 +-
>   drivers/net/ethernet/intel/iavf/iavf_txrx.c   |   6 +-
>   drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  14 +-
>   drivers/net/ethernet/intel/libeth/rx.c        |   2 +-
>   .../net/ethernet/mellanox/mlx5/core/en/xdp.c  |   3 +-
>   drivers/net/netdevsim/netdev.c                |   6 +-
>   drivers/net/wireless/mediatek/mt76/mt76.h     |   2 +-
>   include/linux/mm_types.h                      |   2 +-
>   include/linux/skbuff.h                        |   1 +
>   include/net/libeth/rx.h                       |   3 +-
>   include/net/netmem.h                          |  10 +-
>   include/net/page_pool/helpers.h               |   7 +
>   include/net/page_pool/types.h                 |  17 +-
>   net/core/devmem.c                             |   4 +-
>   net/core/netmem_priv.h                        |   5 +-
>   net/core/page_pool.c                          | 190 +++++++++++++++---
>   net/core/page_pool_priv.h                     |  10 +-
>   net/core/skbuff.c                             |   3 +-
>   net/core/xdp.c                                |   3 +-
>   19 files changed, 238 insertions(+), 58 deletions(-)
>
