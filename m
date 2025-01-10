Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0659EA0918F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jan 2025 14:14:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6EBC5808AD;
	Fri, 10 Jan 2025 13:14:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id svE8KGArKswb; Fri, 10 Jan 2025 13:14:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B8A58381F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736514860;
	bh=4I5Yfq9yY/wnrZyGHd+LMVKzseruORJiCs9modwakpA=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2paN/XTzh6qE82r/HV4hsvvUb4rCAcWu+1qLg69m3mY9pRUNE2UMwuWjOZoFPrUQ5
	 NUcRnDDZFMWwu8IFcvLzRJQC3sBP1PuO/NjcG5RRio/T9H83CrtXC0Exoje4kLBDHT
	 50WXHIyxI4fbeLRMIqVjY0SFA0p5EKYhc+md4NxInsTbLcQZiSW9T6RAiwJmFcrsts
	 h+OEhVEdj/EoWbLhGVL2GD7sGPHjDz8dLAQx7W9k8wEchPv3emcSXRkE11dpzBfBkS
	 m4Lnr4tAPEuIOniTRZp5QaD8jPq2bHVxGayfagW/O/Lnp8v5yWy1Qam1l1vC4mF9No
	 Ij+hdlxGkGXHw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8B8A58381F;
	Fri, 10 Jan 2025 13:14:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id BB4E076C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 13:14:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A9BE68390F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 13:14:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D9-L0_y71S54 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jan 2025 13:14:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.190;
 helo=szxga04-in.huawei.com; envelope-from=linyunsheng@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 642D98381F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 642D98381F
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 642D98381F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 13:14:14 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.163.44])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4YV28h5lGjz2DkMS;
 Fri, 10 Jan 2025 21:11:00 +0800 (CST)
Received: from dggpemf200006.china.huawei.com (unknown [7.185.36.61])
 by mail.maildlp.com (Postfix) with ESMTPS id DF7EE1402DE;
 Fri, 10 Jan 2025 21:14:04 +0800 (CST)
Received: from localhost.localdomain (10.90.30.45) by
 dggpemf200006.china.huawei.com (7.185.36.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Fri, 10 Jan 2025 21:14:04 +0800
From: Yunsheng Lin <linyunsheng@huawei.com>
To: <davem@davemloft.net>, <kuba@kernel.org>, <pabeni@redhat.com>
CC: <zhangkun09@huawei.com>, <liuyonglong@huawei.com>,
 <fanghaiqing@huawei.com>, Yunsheng Lin <linyunsheng@huawei.com>, Alexander
 Lobakin <aleksander.lobakin@intel.com>, Robin Murphy <robin.murphy@arm.com>,
 Alexander Duyck <alexander.duyck@gmail.com>, Andrew Morton
 <akpm@linux-foundation.org>, IOMMU <iommu@lists.linux.dev>, MM
 <linux-mm@kvack.org>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, John
 Fastabend <john.fastabend@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <bpf@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>
Date: Fri, 10 Jan 2025 21:06:54 +0800
Message-ID: <20250110130703.3814407-1-linyunsheng@huawei.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.90.30.45]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggpemf200006.china.huawei.com (7.185.36.61)
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: [Intel-wired-lan] [PATCH net-next v7 0/8] fix two bugs related to
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

This patchset fix a possible time window problem for page_pool and
the dma API misuse problem as mentioned in [1], and try to avoid the
overhead of the fixing using some optimization.

From the below performance data, the overhead is not so obvious
due to performance variations for time_bench_page_pool01_fast_path()
and time_bench_page_pool02_ptr_ring, and there is about 20ns overhead
for time_bench_page_pool03_slow() for fixing the bug.

Before this patchset:
root@(none)$ insmod bench_page_pool_simple.ko
[  323.367627] bench_page_pool_simple: Loaded
[  323.448747] time_bench: Type:for_loop Per elem: 0 cycles(tsc) 0.769 ns (step:0) - (measurement period time:0.076997150 sec time_interval:76997150) - (invoke count:100000000 tsc_interval:7699707)
[  324.812884] time_bench: Type:atomic_inc Per elem: 1 cycles(tsc) 13.468 ns (step:0) - (measurement period time:1.346855130 sec time_interval:1346855130) - (invoke count:100000000 tsc_interval:134685507)
[  324.980875] time_bench: Type:lock Per elem: 1 cycles(tsc) 15.010 ns (step:0) - (measurement period time:0.150101270 sec time_interval:150101270) - (invoke count:10000000 tsc_interval:15010120)
[  325.652195] time_bench: Type:rcu Per elem: 0 cycles(tsc) 6.542 ns (step:0) - (measurement period time:0.654213000 sec time_interval:654213000) - (invoke count:100000000 tsc_interval:65421294)
[  325.669215] bench_page_pool_simple: time_bench_page_pool01_fast_path(): Cannot use page_pool fast-path
[  325.974848] time_bench: Type:no-softirq-page_pool01 Per elem: 2 cycles(tsc) 29.633 ns (step:0) - (measurement period time:0.296338200 sec time_interval:296338200) - (invoke count:10000000 tsc_interval:29633814)
[  325.993517] bench_page_pool_simple: time_bench_page_pool02_ptr_ring(): Cannot use page_pool fast-path
[  326.576636] time_bench: Type:no-softirq-page_pool02 Per elem: 5 cycles(tsc) 57.391 ns (step:0) - (measurement period time:0.573911820 sec time_interval:573911820) - (invoke count:10000000 tsc_interval:57391174)
[  326.595307] bench_page_pool_simple: time_bench_page_pool03_slow(): Cannot use page_pool fast-path
[  328.422661] time_bench: Type:no-softirq-page_pool03 Per elem: 18 cycles(tsc) 181.849 ns (step:0) - (measurement period time:1.818495880 sec time_interval:1818495880) - (invoke count:10000000 tsc_interval:181849581)
[  328.441681] bench_page_pool_simple: pp_tasklet_handler(): in_serving_softirq fast-path
[  328.449584] bench_page_pool_simple: time_bench_page_pool01_fast_path(): in_serving_softirq fast-path
[  328.755031] time_bench: Type:tasklet_page_pool01_fast_path Per elem: 2 cycles(tsc) 29.632 ns (step:0) - (measurement period time:0.296327910 sec time_interval:296327910) - (invoke count:10000000 tsc_interval:29632785)
[  328.774308] bench_page_pool_simple: time_bench_page_pool02_ptr_ring(): in_serving_softirq fast-path
[  329.578579] time_bench: Type:tasklet_page_pool02_ptr_ring Per elem: 7 cycles(tsc) 79.523 ns (step:0) - (measurement period time:0.795236560 sec time_interval:795236560) - (invoke count:10000000 tsc_interval:79523650)
[  329.597769] bench_page_pool_simple: time_bench_page_pool03_slow(): in_serving_softirq fast-path
[  331.507501] time_bench: Type:tasklet_page_pool03_slow Per elem: 19 cycles(tsc) 190.104 ns (step:0) - (measurement period time:1.901047510 sec time_interval:1901047510) - (invoke count:10000000 tsc_interval:190104743)

After this patchset:
root@(none)$ insmod bench_page_pool_simple.ko
[  138.634758] bench_page_pool_simple: Loaded
[  138.715879] time_bench: Type:for_loop Per elem: 0 cycles(tsc) 0.769 ns (step:0) - (measurement period time:0.076972720 sec time_interval:76972720) - (invoke count:100000000 tsc_interval:7697265)
[  140.079897] time_bench: Type:atomic_inc Per elem: 1 cycles(tsc) 13.467 ns (step:0) - (measurement period time:1.346735370 sec time_interval:1346735370) - (invoke count:100000000 tsc_interval:134673531)
[  140.247841] time_bench: Type:lock Per elem: 1 cycles(tsc) 15.005 ns (step:0) - (measurement period time:0.150055080 sec time_interval:150055080) - (invoke count:10000000 tsc_interval:15005497)
[  140.919072] time_bench: Type:rcu Per elem: 0 cycles(tsc) 6.541 ns (step:0) - (measurement period time:0.654125000 sec time_interval:654125000) - (invoke count:100000000 tsc_interval:65412493)
[  140.936091] bench_page_pool_simple: time_bench_page_pool01_fast_path(): Cannot use page_pool fast-path
[  141.246985] time_bench: Type:no-softirq-page_pool01 Per elem: 3 cycles(tsc) 30.159 ns (step:0) - (measurement period time:0.301598160 sec time_interval:301598160) - (invoke count:10000000 tsc_interval:30159812)
[  141.265654] bench_page_pool_simple: time_bench_page_pool02_ptr_ring(): Cannot use page_pool fast-path
[  141.976265] time_bench: Type:no-softirq-page_pool02 Per elem: 7 cycles(tsc) 70.140 ns (step:0) - (measurement period time:0.701405780 sec time_interval:701405780) - (invoke count:10000000 tsc_interval:70140573)
[  141.994933] bench_page_pool_simple: time_bench_page_pool03_slow(): Cannot use page_pool fast-path
[  144.018945] time_bench: Type:no-softirq-page_pool03 Per elem: 20 cycles(tsc) 201.514 ns (step:0) - (measurement period time:2.015141210 sec time_interval:2015141210) - (invoke count:10000000 tsc_interval:201514113)
[  144.037966] bench_page_pool_simple: pp_tasklet_handler(): in_serving_softirq fast-path
[  144.045870] bench_page_pool_simple: time_bench_page_pool01_fast_path(): in_serving_softirq fast-path
[  144.205045] time_bench: Type:tasklet_page_pool01_fast_path Per elem: 1 cycles(tsc) 15.005 ns (step:0) - (measurement period time:0.150056510 sec time_interval:150056510) - (invoke count:10000000 tsc_interval:15005645)
[  144.224320] bench_page_pool_simple: time_bench_page_pool02_ptr_ring(): in_serving_softirq fast-path
[  144.916044] time_bench: Type:tasklet_page_pool02_ptr_ring Per elem: 6 cycles(tsc) 68.269 ns (step:0) - (measurement period time:0.682693070 sec time_interval:682693070) - (invoke count:10000000 tsc_interval:68269300)
[  144.935234] bench_page_pool_simple: time_bench_page_pool03_slow(): in_serving_softirq fast-path
[  146.997684] time_bench: Type:tasklet_page_pool03_slow Per elem: 20 cycles(tsc) 205.376 ns (step:0) - (measurement period time:2.053766310 sec time_interval:2053766310) - (invoke count:10000000 tsc_interval:205376624)

1. https://lore.kernel.org/lkml/8067f204-1380-4d37-8ffd-007fc6f26738@kernel.org/T/

CC: Alexander Lobakin <aleksander.lobakin@intel.com>
CC: Robin Murphy <robin.murphy@arm.com>
CC: Alexander Duyck <alexander.duyck@gmail.com>
CC: Andrew Morton <akpm@linux-foundation.org>
CC: IOMMU <iommu@lists.linux.dev>
CC: MM <linux-mm@kvack.org>

Change log:
V7:
  1. Fix a used-after-free bug reported by KASAN as mentioned by Jakub.
  2. Fix the 'netmem' variable not setting up correctly bug as mentioned
     by Simon.

V6:
  1. Repost based on latest net-next.
  2. Rename page_pool_to_pp() to page_pool_get_pp().

V5:
  1. Support unlimit inflight pages.
  2. Add some optimization to avoid the overhead of fixing bug.

V4:
  1. use scanning to do the unmapping
  2. spilt dma sync skipping into separate patch

V3:
  1. Target net-next tree instead of net tree.
  2. Narrow the rcu lock as the discussion in v2.
  3. Check the ummapping cnt against the inflight cnt.

V2:
  1. Add a item_full stat.
  2. Use container_of() for page_pool_to_pp().

Yunsheng Lin (8):
  page_pool: introduce page_pool_get_pp() API
  page_pool: fix timing for checking and disabling napi_local
  page_pool: fix IOMMU crash when driver has already unbound
  page_pool: support unlimited number of inflight pages
  page_pool: skip dma sync operation for inflight pages
  page_pool: use list instead of ptr_ring for ring cache
  page_pool: batch refilling pages to reduce atomic operation
  page_pool: use list instead of array for alloc cache

 drivers/net/ethernet/freescale/fec_main.c     |   8 +-
 .../ethernet/google/gve/gve_buffer_mgmt_dqo.c |   2 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   |   6 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  14 +-
 drivers/net/ethernet/intel/libeth/rx.c        |   2 +-
 .../net/ethernet/mellanox/mlx5/core/en/xdp.c  |   3 +-
 drivers/net/netdevsim/netdev.c                |   6 +-
 drivers/net/wireless/mediatek/mt76/mt76.h     |   2 +-
 include/linux/mm_types.h                      |   2 +-
 include/linux/skbuff.h                        |   1 +
 include/net/libeth/rx.h                       |   3 +-
 include/net/netmem.h                          |  24 +-
 include/net/page_pool/helpers.h               |  11 +
 include/net/page_pool/types.h                 |  64 +-
 net/core/devmem.c                             |   4 +-
 net/core/netmem_priv.h                        |   5 +-
 net/core/page_pool.c                          | 664 ++++++++++++++----
 net/core/page_pool_priv.h                     |  12 +-
 18 files changed, 675 insertions(+), 158 deletions(-)

-- 
2.33.0

