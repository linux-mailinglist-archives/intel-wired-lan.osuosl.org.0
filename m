Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8829A970D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 05:28:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D1A14040B;
	Tue, 22 Oct 2024 03:28:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dLDWQ_UcPZxP; Tue, 22 Oct 2024 03:28:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0BF1540392
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729567722;
	bh=6gnGPDa5STYV3OiOpCVWi8F9nhfxs0/YiYHRkvPmA64=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=UXIDp52Wl+1IHhy+GKPsAPCJZlJ5KiWvAeRL8wjK/v8v3kJtbsLeEPrBOgwNPdMVs
	 wxb6Xuz1vlBGIRjMt53jsFvKrGbzJ4z5Z3gqJvPP37jwDqmc9zYVqevzedjLIqhM8Q
	 zy7npk28N2vTFatIrLMlNUQWE9Y6t1ikvMFrOEm7PEjADbLQ7gmyKibYg9Q14PMVVu
	 OHD1ofM9oFC79k9byNZUbAmIbYkF503omj/WoRQODcYBH5zq5vzSFi2gCojqJVkU5m
	 Y/vxvdduBaEhbUI0WGiDDUzR2/Mp5IAQfOqJwkZvJ7UrRFCrPBVjsVQLVRWnQX9sxw
	 G9Ne6Cs8w6kcg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0BF1540392;
	Tue, 22 Oct 2024 03:28:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1594D963
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 03:28:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 016B9401B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 03:28:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mTKLAh-9tVgF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 03:28:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.190;
 helo=szxga04-in.huawei.com; envelope-from=linyunsheng@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 47CFD4000B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 47CFD4000B
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 47CFD4000B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 03:28:34 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.162.112])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4XXd0W33N4z20qhv;
 Tue, 22 Oct 2024 11:27:39 +0800 (CST)
Received: from dggpemf200006.china.huawei.com (unknown [7.185.36.61])
 by mail.maildlp.com (Postfix) with ESMTPS id BC7FB140361;
 Tue, 22 Oct 2024 11:28:29 +0800 (CST)
Received: from localhost.localdomain (10.90.30.45) by
 dggpemf200006.china.huawei.com (7.185.36.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Tue, 22 Oct 2024 11:28:29 +0800
From: Yunsheng Lin <linyunsheng@huawei.com>
To: <davem@davemloft.net>, <kuba@kernel.org>, <pabeni@redhat.com>
CC: <zhangkun09@huawei.com>, <fanghaiqing@huawei.com>,
 <liuyonglong@huawei.com>, Yunsheng Lin <linyunsheng@huawei.com>, Alexander
 Lobakin <aleksander.lobakin@intel.com>, Robin Murphy <robin.murphy@arm.com>,
 Alexander Duyck <alexander.duyck@gmail.com>, IOMMU <iommu@lists.linux.dev>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 <netdev@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <bpf@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>
Date: Tue, 22 Oct 2024 11:22:10 +0800
Message-ID: <20241022032214.3915232-1-linyunsheng@huawei.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.90.30.45]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpemf200006.china.huawei.com (7.185.36.61)
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: [Intel-wired-lan] [PATCH net-next v3 0/3] fix two bugs related to
 page_pool
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

Patch 1 introduce a page_pool_to_pp() API to make the fix easier
Patch 2 fix a possible time window problem for page_pool.
Patch 3 fix the kernel crash problem at iommu_get_dma_domain
reported in [1].

This patchset is targeting the net-next tree as the concerns
mentioned in [2].

When page_pool_put_unrefed_netmem() is called with allow_direct
being false, there might be an added rcu read lock overhead
introduced in patch 2, and the overhead is about 13ns using the
below test code, but 'time_bench_page_pool02_ptr_ring' only show
about 2ns overhead, which is about 2% degradation.

+static int time_bench_rcu(
+       struct time_bench_record *rec, void *data)
+{
+       uint64_t loops_cnt = 0;
+       int i;
+
+       time_bench_start(rec);
+       /** Loop to measure **/
+       for (i = 0; i < rec->loops; i++) {
+               rcu_read_lock();
+               loops_cnt++;
+               barrier(); /* avoid compiler to optimize this loop */
+               rcu_read_unlock();
+       }
+       time_bench_stop(rec, loops_cnt);
+       return loops_cnt;
+}

When page_pool need to be refilled from or flushed to the page allocator,
the added overhead is the page_pool_item_add() and page_pool_item_del()
calling overhead, using below patch to enable Jesper's testing running in
arm64, the overhead is 0~20ns, which is quite variable 

Before this patchset:
root@(none)$ taskset -c 1 insmod bench_page_pool_simple.ko
[  136.641453] bench_page_pool_simple: Loaded
[  136.722560] time_bench: Type:for_loop Per elem: 0 cycles(tsc) 0.769 ns (step:0) - (measurement period time:0.076968720 sec time_interval:76968720) - (invoke count:100000000 tsc_interval:7696855)
[  137.317006] time_bench: Type:atomic_inc Per elem: 0 cycles(tsc) 5.771 ns (step:0) - (measurement period time:0.577164350 sec time_interval:577164350) - (invoke count:100000000 tsc_interval:57716429)
[  137.480852] time_bench: Type:lock Per elem: 1 cycles(tsc) 14.621 ns (step:0) - (measurement period time:0.146218730 sec time_interval:146218730) - (invoke count:10000000 tsc_interval:14621868)
[  138.842377] time_bench: Type:rcu Per elem: 1 cycles(tsc) 13.444 ns (step:0) - (measurement period time:1.344419820 sec time_interval:1344419820) - (invoke count:100000000 tsc_interval:134441975)
[  138.859656] bench_page_pool_simple: time_bench_page_pool01_fast_path(): Cannot use page_pool fast-path
[  139.132102] time_bench: Type:no-softirq-page_pool01 Per elem: 2 cycles(tsc) 26.315 ns (step:0) - (measurement period time:0.263151430 sec time_interval:263151430) - (invoke count:10000000 tsc_interval:26315135)
[  139.150769] bench_page_pool_simple: time_bench_page_pool02_ptr_ring(): Cannot use page_pool fast-path
[  139.910642] time_bench: Type:no-softirq-page_pool02 Per elem: 7 cycles(tsc) 75.066 ns (step:0) - (measurement period time:0.750663200 sec time_interval:750663200) - (invoke count:10000000 tsc_interval:75066312)
[  139.929312] bench_page_pool_simple: time_bench_page_pool03_slow(): Cannot use page_pool fast-path
[  141.673951] time_bench: Type:no-softirq-page_pool03 Per elem: 17 cycles(tsc) 173.578 ns (step:0) - (measurement period time:1.735781610 sec time_interval:1735781610) - (invoke count:10000000 tsc_interval:173578155)
[  141.692970] bench_page_pool_simple: pp_tasklet_handler(): in_serving_softirq fast-path
[  141.700874] bench_page_pool_simple: time_bench_page_pool01_fast_path(): in_serving_softirq fast-path
[  141.973638] time_bench: Type:tasklet_page_pool01_fast_path Per elem: 2 cycles(tsc) 26.364 ns (step:0) - (measurement period time:0.263645150 sec time_interval:263645150) - (invoke count:10000000 tsc_interval:26364508)
[  141.992912] bench_page_pool_simple: time_bench_page_pool02_ptr_ring(): in_serving_softirq fast-path
[  142.531745] time_bench: Type:tasklet_page_pool02_ptr_ring Per elem: 5 cycles(tsc) 52.980 ns (step:0) - (measurement period time:0.529801250 sec time_interval:529801250) - (invoke count:10000000 tsc_interval:52980119)
[  142.550933] bench_page_pool_simple: time_bench_page_pool03_slow(): in_serving_softirq fast-path
[  144.297646] time_bench: Type:tasklet_page_pool03_slow Per elem: 17 cycles(tsc) 173.802 ns (step:0) - (measurement period time:1.738029000 sec time_interval:1738029000) - (invoke count:10000000 tsc_interval:173802894)

After this patchset:
root@(none)$ taskset -c 1 insmod bench_page_pool_simple.ko
[  149.865799] bench_page_pool_simple: Loaded
[  149.946907] time_bench: Type:for_loop Per elem: 0 cycles(tsc) 0.769 ns (step:0) - (measurement period time:0.076965620 sec time_interval:76965620) - (invoke count:100000000 tsc_interval:7696556)
[  150.722282] time_bench: Type:atomic_inc Per elem: 0 cycles(tsc) 7.580 ns (step:0) - (measurement period time:0.758094660 sec time_interval:758094660) - (invoke count:100000000 tsc_interval:75809459)
[  150.886335] time_bench: Type:lock Per elem: 1 cycles(tsc) 14.640 ns (step:0) - (measurement period time:0.146405830 sec time_interval:146405830) - (invoke count:10000000 tsc_interval:14640578)
[  152.249454] time_bench: Type:rcu Per elem: 1 cycles(tsc) 13.460 ns (step:0) - (measurement period time:1.346009570 sec time_interval:1346009570) - (invoke count:100000000 tsc_interval:134600951)
[  152.266734] bench_page_pool_simple: time_bench_page_pool01_fast_path(): Cannot use page_pool fast-path
[  152.537046] time_bench: Type:no-softirq-page_pool01 Per elem: 2 cycles(tsc) 26.100 ns (step:0) - (measurement period time:0.261007670 sec time_interval:261007670) - (invoke count:10000000 tsc_interval:26100761)
[  152.555714] bench_page_pool_simple: time_bench_page_pool02_ptr_ring(): Cannot use page_pool fast-path
[  153.342212] time_bench: Type:no-softirq-page_pool02 Per elem: 7 cycles(tsc) 77.729 ns (step:0) - (measurement period time:0.777293380 sec time_interval:777293380) - (invoke count:10000000 tsc_interval:77729331)
[  153.360881] bench_page_pool_simple: time_bench_page_pool03_slow(): Cannot use page_pool fast-path
[  155.287747] time_bench: Type:no-softirq-page_pool03 Per elem: 19 cycles(tsc) 191.800 ns (step:0) - (measurement period time:1.918007990 sec time_interval:1918007990) - (invoke count:10000000 tsc_interval:191800791)
[  155.306766] bench_page_pool_simple: pp_tasklet_handler(): in_serving_softirq fast-path
[  155.314670] bench_page_pool_simple: time_bench_page_pool01_fast_path(): in_serving_softirq fast-path
[  155.584313] time_bench: Type:tasklet_page_pool01_fast_path Per elem: 2 cycles(tsc) 26.052 ns (step:0) - (measurement period time:0.260524810 sec time_interval:260524810) - (invoke count:10000000 tsc_interval:26052476)
[  155.603588] bench_page_pool_simple: time_bench_page_pool02_ptr_ring(): in_serving_softirq fast-path
[  156.183214] time_bench: Type:tasklet_page_pool02_ptr_ring Per elem: 5 cycles(tsc) 57.059 ns (step:0) - (measurement period time:0.570594850 sec time_interval:570594850) - (invoke count:10000000 tsc_interval:57059478)
[  156.202402] bench_page_pool_simple: time_bench_page_pool03_slow(): in_serving_softirq fast-path
[  158.045594] time_bench: Type:tasklet_page_pool03_slow Per elem: 18 cycles(tsc) 183.450 ns (step:0) - (measurement period time:1.834507700 sec time_interval:1834507700) - (invoke count:10000000 tsc_interval:183450764)

Patch for time_bench.h enable the out of tree testing on arm64 system:
@@ -101,6 +101,7 @@ struct time_bench_cpu {
  *  CPUID clears the high 32-bits of all (rax/rbx/rcx/rdx)
  */
 static __always_inline uint64_t tsc_start_clock(void) {
+#if defined(__i386__) || defined(__x86_64__)
        /* See: Intel Doc #324264 */
        unsigned hi, lo;
        asm volatile (
@@ -111,9 +112,13 @@ static __always_inline uint64_t tsc_start_clock(void) {
                "%rax", "%rbx", "%rcx", "%rdx");
        //FIXME: on 32bit use clobbered %eax + %edx
        return ((uint64_t)lo) | (((uint64_t)hi) << 32);
+#else
+       return get_cycles();
+#endif
 }

 static __always_inline uint64_t tsc_stop_clock(void) {
+#if defined(__i386__) || defined(__x86_64__)
        /* See: Intel Doc #324264 */
        unsigned hi, lo;
        asm volatile(
@@ -123,6 +128,9 @@ static __always_inline uint64_t tsc_stop_clock(void) {
                "CPUID\n\t": "=r" (hi), "=r" (lo)::
                "%rax", "%rbx", "%rcx", "%rdx");
        return ((uint64_t)lo) | (((uint64_t)hi) << 32);
+#else
+       return get_cycles();
+#endif
 }

 /* Notes for RDTSC and RDTSCP
@@ -186,10 +194,14 @@ enum {

 static __always_inline unsigned long long p_rdpmc(unsigned in)
 {
+#if defined(__i386__) || defined(__x86_64__)
        unsigned d, a;

        asm volatile("rdpmc" : "=d" (d), "=a" (a) : "c" (in) : "memory");
        return ((unsigned long long)d << 32) | a;
+#else
+       return 0;
+#endif
 }

 /* These PMU counter needs to be enabled, but I don't have the
@@ -216,7 +228,11 @@ static __always_inline unsigned long long pmc_clk(void)
 #define MSR_IA32_PCM2 0x400000C3
 inline uint64_t msr_inst(unsigned long long *msr_result)
 {
+#if defined(__i386__) || defined(__x86_64__)
        return rdmsrl_safe(MSR_IA32_PCM0, msr_result);
+#else
+       return 0;
+#endif
 }

1. https://lore.kernel.org/lkml/8067f204-1380-4d37-8ffd-007fc6f26738@kernel.org/T/
2. https://lore.kernel.org/all/b1fd5ece-b967-4e56-ad4f-64ec437e2634@huawei.com/

CC: Alexander Lobakin <aleksander.lobakin@intel.com>
CC: Robin Murphy <robin.murphy@arm.com>
CC: Alexander Duyck <alexander.duyck@gmail.com>
CC: IOMMU <iommu@lists.linux.dev>

Change log:
V3:
  1. Target net-next tree instead of net tree.
  2. Narrow the rcu lock as the discussion in v2.
  3. Check the ummapping cnt against the inflight cnt.

V2:
  1. Add a item_full stat.
  2. Use container_of() for page_pool_to_pp().

Yunsheng Lin (3):
  page_pool: introduce page_pool_to_pp() API
  page_pool: fix timing for checking and disabling napi_local
  page_pool: fix IOMMU crash when driver has already unbound

 drivers/net/ethernet/freescale/fec_main.c     |   8 +-
 .../ethernet/google/gve/gve_buffer_mgmt_dqo.c |   4 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   |   6 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  14 +-
 drivers/net/ethernet/intel/libeth/rx.c        |   2 +-
 .../net/ethernet/mellanox/mlx5/core/en/xdp.c  |   3 +-
 drivers/net/netdevsim/netdev.c                |   6 +-
 drivers/net/wireless/mediatek/mt76/mt76.h     |   2 +-
 include/linux/mm_types.h                      |   2 +-
 include/linux/skbuff.h                        |   1 +
 include/net/libeth/rx.h                       |   3 +-
 include/net/netmem.h                          |  10 +-
 include/net/page_pool/helpers.h               |   7 +
 include/net/page_pool/types.h                 |  17 +-
 net/core/devmem.c                             |   4 +-
 net/core/netmem_priv.h                        |   5 +-
 net/core/page_pool.c                          | 228 ++++++++++++++----
 net/core/page_pool_priv.h                     |  10 +-
 net/core/skbuff.c                             |   3 +-
 net/core/xdp.c                                |   3 +-
 20 files changed, 262 insertions(+), 76 deletions(-)

-- 
2.33.0

