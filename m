Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AD07FA32238
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Feb 2025 10:33:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6AE7C610B2;
	Wed, 12 Feb 2025 09:33:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pas6w-xLnbim; Wed, 12 Feb 2025 09:33:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 25EE1610A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739352806;
	bh=RLfBc0WOFadngRqCzOfSP857klROacANH1eVoltCHBA=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4HEpFFKAvYnEQXgsNnHsnptDB7VqxV6VAfX3AhI6kNiqU4/PpGBqHpc9sSz+Op/Jn
	 PzL0z1ivNdb78Tapww6p43fVCg6shYfawSRR91I+4hXHaEpkAW/tiu70RVhqBR4MUh
	 0rcx03s/Jx73yKVND2r3yqWtOtiF3PHLJg4NCcRy2SCG37zPOBkNKWm0pd0H1stoEk
	 BE7NsJuFg88UYgyK4Cg7mBL+UKi50fUW/T9JDTD9AQhIzAQWsJ1UnoCzJK61iqcUdJ
	 FEVu2+NuVwfLy7mEJrNlVebiXw6tbb+KaTfFTlhoI4g50Tt/msfyBJ+kFSfD7Zwe+5
	 Sn7m9Zj/NFvmw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 25EE1610A0;
	Wed, 12 Feb 2025 09:33:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 616F2194
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 09:33:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 44F7E41775
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 09:33:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1QIngjUuLe6Y for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Feb 2025 09:33:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.35;
 helo=szxga07-in.huawei.com; envelope-from=linyunsheng@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E9370406AA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E9370406AA
Received: from szxga07-in.huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E9370406AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 09:33:21 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.88.163])
 by szxga07-in.huawei.com (SkyGuard) with ESMTP id 4YtCgq66YKz1V6dV;
 Wed, 12 Feb 2025 17:29:27 +0800 (CST)
Received: from dggpemf200006.china.huawei.com (unknown [7.185.36.61])
 by mail.maildlp.com (Postfix) with ESMTPS id 428F7180069;
 Wed, 12 Feb 2025 17:33:14 +0800 (CST)
Received: from localhost.localdomain (10.90.30.45) by
 dggpemf200006.china.huawei.com (7.185.36.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Wed, 12 Feb 2025 17:33:13 +0800
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
Date: Wed, 12 Feb 2025 17:25:47 +0800
Message-ID: <20250212092552.1779679-1-linyunsheng@huawei.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.90.30.45]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggpemf200006.china.huawei.com (7.185.36.61)
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: [Intel-wired-lan] [PATCH net-next v9 0/4] fix the DMA API misuse
 problem for page_pool
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

This patchset fix the dma API misuse problem as mentioned in [1].

From the below performance data, the overhead is not so obvious
due to performance variations in arm64 server and less than 1 ns in
x86 server for time_bench_page_pool01_fast_path() and
time_bench_page_pool02_ptr_ring, and there is about 10~20ns overhead
for time_bench_page_pool03_slow(), see more detail in [2].

arm64 server:
Before this patchset:
              fast_path              ptr_ring            slow
1.         31.171 ns               60.980 ns          164.917 ns
2.         28.824 ns               60.891 ns          170.241 ns
3.         14.236 ns               60.583 ns          164.355 ns

With patchset:
6.         26.163 ns               53.781 ns          189.450 ns
7.         26.189 ns               53.798 ns          189.466 ns

X86 server:
| Test name  |Cycles |   1-5 |    | Nanosec |    1-5 |        |      % |
| (tasklet_*)|Before | After |diff|  Before |  After |   diff | change |
|------------+-------+-------+----+---------+--------+--------+--------|
| fast_path  |    19 |    19 |   0|   5.399 |  5.492 |  0.093 |    1.7 |
| ptr_ring   |    54 |    57 |   3|  15.090 | 15.849 |  0.759 |    5.0 |
| slow       |   238 |   284 |  46|  66.134 | 78.909 | 12.775 |   19.3 |

And about 16 bytes of memory is also needed for each page_pool owned
page to fix the dma API misuse problem 

1. https://lore.kernel.org/lkml/8067f204-1380-4d37-8ffd-007fc6f26738@kernel.org/T/
2. https://lore.kernel.org/all/f558df7a-d983-4fc5-8358-faf251994d23@kernel.org/

CC: Alexander Lobakin <aleksander.lobakin@intel.com>
CC: Robin Murphy <robin.murphy@arm.com>
CC: Alexander Duyck <alexander.duyck@gmail.com>
CC: Andrew Morton <akpm@linux-foundation.org>
CC: IOMMU <iommu@lists.linux.dev>
CC: MM <linux-mm@kvack.org>

Change log:
V9.
  1. Drop the fix of a possible time window problem for NPAI recycling.
  2. Add design description for the fix in patch 2.

V8:
  1. Drop last 3 patch as it causes observable performance degradation
     for x86 system.
  2. Remove rcu read lock in page_pool_napi_local().
  3. Renaming item function more consistently.

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

Yunsheng Lin (4):
  page_pool: introduce page_pool_get_pp() API
  page_pool: fix IOMMU crash when driver has already unbound
  page_pool: support unlimited number of inflight pages
  page_pool: skip dma sync operation for inflight pages

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
 include/net/netmem.h                          |  31 +-
 include/net/page_pool/helpers.h               |  15 +
 include/net/page_pool/memory_provider.h       |   2 +-
 include/net/page_pool/types.h                 |  46 +-
 net/core/devmem.c                             |   6 +-
 net/core/netmem_priv.h                        |   5 +-
 net/core/page_pool.c                          | 423 ++++++++++++++++--
 net/core/page_pool_priv.h                     |  10 +-
 19 files changed, 504 insertions(+), 83 deletions(-)

-- 
2.33.0

