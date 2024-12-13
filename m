Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9449F0CBB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Dec 2024 13:53:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8DEC5417D1;
	Fri, 13 Dec 2024 12:53:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r4P4mC6kJgx1; Fri, 13 Dec 2024 12:53:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A7570417D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734094422;
	bh=pzVh31aWs2NP8LhqbDMfDSjESjxfi4CnNp83YjhQt4Q=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=pM4dZB7+IlXI5nsnBeVuvM158WV9yQ4ViljKlCRChbfW0OdNtWePADejxNqmUjbmp
	 FPU13lYMJbs545xs6X1swiu23NFWLBv3uA18kQaVMYMkIJ9mB0Sj8uvmMt0HIKavuj
	 LZEKAF/3+h0IkUBrfKVZI1Bf0Y2WYEkaMuCOuj7bHTdDePq+HlZjmVYUFnB956zdXj
	 HbeXSADOa2xHJnTnx02FNhkR193hpRlpZw2qNgjrWUecgE0LYO2uVu3ahAwPZ4Xe3E
	 o23tzSRJS31Ar3dlNqtCSDRJqox9atxMJT4mxYIXmK88Lv+tedvrbMrOp03vI+ZfJy
	 vu7vLY9srcBnA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A7570417D0;
	Fri, 13 Dec 2024 12:53:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 15AAF1146
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Dec 2024 12:53:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E7C5E433CD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Dec 2024 12:53:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RcvrnaaTxQ_F for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Dec 2024 12:53:38 +0000 (UTC)
X-Greylist: delayed 1143 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 13 Dec 2024 12:53:35 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3FCCF433CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3FCCF433CA
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.187;
 helo=szxga01-in.huawei.com; envelope-from=linyunsheng@huawei.com;
 receiver=<UNKNOWN> 
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3FCCF433CA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Dec 2024 12:53:35 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.88.194])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4Y8pcZ33WXzhZTt;
 Fri, 13 Dec 2024 20:31:58 +0800 (CST)
Received: from dggpemf200006.china.huawei.com (unknown [7.185.36.61])
 by mail.maildlp.com (Postfix) with ESMTPS id 538CD140123;
 Fri, 13 Dec 2024 20:34:25 +0800 (CST)
Received: from localhost.localdomain (10.90.30.45) by
 dggpemf200006.china.huawei.com (7.185.36.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Fri, 13 Dec 2024 20:34:25 +0800
From: Yunsheng Lin <linyunsheng@huawei.com>
To: <davem@davemloft.net>, <kuba@kernel.org>, <pabeni@redhat.com>
CC: <somnath.kotur@broadcom.com>, <liuyonglong@huawei.com>,
 <fanghaiqing@huawei.com>, <zhangkun09@huawei.com>, Yunsheng Lin
 <linyunsheng@huawei.com>, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Robin Murphy <robin.murphy@arm.com>, Alexander Duyck
 <alexander.duyck@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, IOMMU
 <iommu@lists.linux.dev>, MM <linux-mm@kvack.org>, Alexei Starovoitov
 <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard
 Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, Matthias
 Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <bpf@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>
Date: Fri, 13 Dec 2024 20:27:31 +0800
Message-ID: <20241213122739.4050137-1-linyunsheng@huawei.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.90.30.45]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggpemf200006.china.huawei.com (7.185.36.61)
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: [Intel-wired-lan] [PATCH RFCv5 0/8] fix two bugs related to
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

This version is mainly to see if using page_pool_item metadata
to keep track of all pages is the correct way to fix the dma
API misuse problem.

Note, it is not based on the latest net-next tree yet, but based
on the below commit in net-next:
commit da4fa00abe56 ("Merge branch 'mitigate-the-two-reallocations-issue-for-iptunnels'")

From the below performance data, the overhead is avoided as much as possible
for time_bench_page_pool01_fast_path() and time_bench_page_pool02_ptr_ring,
and there is about 20ns overhead for time_bench_page_pool03_slow() for fixing
the bug.

Before this patchset:
root@(none)$ insmod bench_page_pool_simple.ko
root@(none)$ insmod bench_page_pool_simple.ko
[   67.667196] bench_page_pool_simple: Loaded
[   67.748321] time_bench: Type:for_loop Per elem: 0 cycles(tsc) 0.769 ns (step:0) - (measurement period time:0.076977910 sec time_interval:76977910) - (invoke count:100000000 tsc_interval:7697783)
[   69.851812] time_bench: Type:atomic_inc Per elem: 2 cycles(tsc) 20.862 ns (step:0) - (measurement period time:2.086207700 sec time_interval:2086207700) - (invoke count:100000000 tsc_interval:208620764)
[   70.019852] time_bench: Type:lock Per elem: 1 cycles(tsc) 15.015 ns (step:0) - (measurement period time:0.150151600 sec time_interval:150151600) - (invoke count:10000000 tsc_interval:15015154)
[   70.691100] time_bench: Type:rcu Per elem: 0 cycles(tsc) 6.541 ns (step:0) - (measurement period time:0.654142450 sec time_interval:654142450) - (invoke count:100000000 tsc_interval:65414239)
[   70.708119] bench_page_pool_simple: time_bench_page_pool01_fast_path(): Cannot use page_pool fast-path
[   70.975262] time_bench: Type:no-softirq-page_pool01 Per elem: 2 cycles(tsc) 25.785 ns (step:0) - (measurement period time:0.257850110 sec time_interval:257850110) - (invoke count:10000000 tsc_interval:25785005)
[   70.993931] bench_page_pool_simple: time_bench_page_pool02_ptr_ring(): Cannot use page_pool fast-path
[   71.575053] time_bench: Type:no-softirq-page_pool02 Per elem: 5 cycles(tsc) 57.191 ns (step:0) - (measurement period time:0.571916900 sec time_interval:571916900) - (invoke count:10000000 tsc_interval:57191684)
[   71.593722] bench_page_pool_simple: time_bench_page_pool03_slow(): Cannot use page_pool fast-path
[   73.384560] time_bench: Type:no-softirq-page_pool03 Per elem: 17 cycles(tsc) 178.197 ns (step:0) - (measurement period time:1.781979820 sec time_interval:1781979820) - (invoke count:10000000 tsc_interval:178197975)
[   73.403581] bench_page_pool_simple: pp_tasklet_handler(): in_serving_softirq fast-path
[   73.411485] bench_page_pool_simple: time_bench_page_pool01_fast_path(): in_serving_softirq fast-path
[   73.678410] time_bench: Type:tasklet_page_pool01_fast_path Per elem: 2 cycles(tsc) 25.780 ns (step:0) - (measurement period time:0.257807630 sec time_interval:257807630) - (invoke count:10000000 tsc_interval:25780758)
[   73.697686] bench_page_pool_simple: time_bench_page_pool02_ptr_ring(): in_serving_softirq fast-path
[   74.242807] time_bench: Type:tasklet_page_pool02_ptr_ring Per elem: 5 cycles(tsc) 53.608 ns (step:0) - (measurement period time:0.536089620 sec time_interval:536089620) - (invoke count:10000000 tsc_interval:53608957)
[   74.261996] bench_page_pool_simple: time_bench_page_pool03_slow(): in_serving_softirq fast-path
[   76.115762] time_bench: Type:tasklet_page_pool03_slow Per elem: 18 cycles(tsc) 184.508 ns (step:0) - (measurement period time:1.845082100 sec time_interval:1845082100) - (invoke count:10000000 tsc_interval:184508203)

After this patchset:
root@(none)$ insmod bench_page_pool_simple.ko
[   88.665991] bench_page_pool_simple: Loaded
[   88.747105] time_bench: Type:for_loop Per elem: 0 cycles(tsc) 0.769 ns (step:0) - (measurement period time:0.076981170 sec time_interval:76981170) - (invoke count:100000000 tsc_interval:7698109)
[   91.585102] time_bench: Type:atomic_inc Per elem: 2 cycles(tsc) 28.206 ns (step:0) - (measurement period time:2.820699360 sec time_interval:2820699360) - (invoke count:100000000 tsc_interval:282069929)
[   91.753048] time_bench: Type:lock Per elem: 1 cycles(tsc) 15.005 ns (step:0) - (measurement period time:0.150057320 sec time_interval:150057320) - (invoke count:10000000 tsc_interval:15005727)
[   92.424306] time_bench: Type:rcu Per elem: 0 cycles(tsc) 6.541 ns (step:0) - (measurement period time:0.654151520 sec time_interval:654151520) - (invoke count:100000000 tsc_interval:65415145)
[   92.441325] bench_page_pool_simple: time_bench_page_pool01_fast_path(): Cannot use page_pool fast-path
[   92.696225] time_bench: Type:no-softirq-page_pool01 Per elem: 2 cycles(tsc) 24.560 ns (step:0) - (measurement period time:0.245607210 sec time_interval:245607210) - (invoke count:10000000 tsc_interval:24560715)
[   92.714893] bench_page_pool_simple: time_bench_page_pool02_ptr_ring(): Cannot use page_pool fast-path
[   93.336550] time_bench: Type:no-softirq-page_pool02 Per elem: 6 cycles(tsc) 61.245 ns (step:0) - (measurement period time:0.612451380 sec time_interval:612451380) - (invoke count:10000000 tsc_interval:61245127)
[   93.355219] bench_page_pool_simple: time_bench_page_pool03_slow(): Cannot use page_pool fast-path
[   95.402370] time_bench: Type:no-softirq-page_pool03 Per elem: 20 cycles(tsc) 203.828 ns (step:0) - (measurement period time:2.038286740 sec time_interval:2038286740) - (invoke count:10000000 tsc_interval:203828660)
[   95.421395] bench_page_pool_simple: pp_tasklet_handler(): in_serving_softirq fast-path
[   95.429301] bench_page_pool_simple: time_bench_page_pool01_fast_path(): in_serving_softirq fast-path
[   95.684025] time_bench: Type:tasklet_page_pool01_fast_path Per elem: 2 cycles(tsc) 24.560 ns (step:0) - (measurement period time:0.245605490 sec time_interval:245605490) - (invoke count:10000000 tsc_interval:24560544)
[   95.703301] bench_page_pool_simple: time_bench_page_pool02_ptr_ring(): in_serving_softirq fast-path
[   96.401877] time_bench: Type:tasklet_page_pool02_ptr_ring Per elem: 6 cycles(tsc) 68.954 ns (step:0) - (measurement period time:0.689544160 sec time_interval:689544160) - (invoke count:10000000 tsc_interval:68954410)
[   96.421065] bench_page_pool_simple: time_bench_page_pool03_slow(): in_serving_softirq fast-path
[   98.496283] time_bench: Type:tasklet_page_pool03_slow Per elem: 20 cycles(tsc) 206.653 ns (step:0) - (measurement period time:2.066533210 sec time_interval:2066533210) - (invoke count:10000000 tsc_interval:206653316)

1. https://lore.kernel.org/lkml/8067f204-1380-4d37-8ffd-007fc6f26738@kernel.org/T/

CC: Alexander Lobakin <aleksander.lobakin@intel.com>
CC: Robin Murphy <robin.murphy@arm.com>
CC: Alexander Duyck <alexander.duyck@gmail.com>
CC: Andrew Morton <akpm@linux-foundation.org>
CC: IOMMU <iommu@lists.linux.dev>
CC: MM <linux-mm@kvack.org>

Change log:
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
  page_pool: introduce page_pool_to_pp() API
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
 include/net/netmem.h                          |  10 +-
 include/net/page_pool/helpers.h               |  11 +
 include/net/page_pool/types.h                 |  57 +-
 net/core/devmem.c                             |   4 +-
 net/core/netmem_priv.h                        |   5 +-
 net/core/page_pool.c                          | 660 ++++++++++++++----
 net/core/page_pool_priv.h                     |  12 +-
 net/core/skbuff.c                             |   3 +-
 net/core/xdp.c                                |   3 +-
 20 files changed, 650 insertions(+), 164 deletions(-)

-- 
2.33.0

