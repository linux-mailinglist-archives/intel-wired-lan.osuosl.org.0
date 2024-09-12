Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C3828976997
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Sep 2024 14:51:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BDED660E0A;
	Thu, 12 Sep 2024 12:51:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O-TwEu5Sq5UZ; Thu, 12 Sep 2024 12:51:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8FE9360E0F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726145481;
	bh=1stBqhmyGv3At6lM7XjLumiofL3xIeySle3Ks00Qc4Y=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=w+z4sJ8sh2X2kZJTzkMq/wqabu/g/bDqOEhRe9GHFXnhFEz9yNBHUfFuVbTBHZF4j
	 jM5UDLjXz7RF9RL9yp8U8ivQMhEDBKFY5hDi5jmkMlvCjSdPQAOoJnwZzKapW29Tfa
	 QDIJVLGSKZ3hqnp5xL/2EOmee+iXiNYKMkkBxP7MPl7JeWFiWMEptDZm2HI9FS26LR
	 BO9Em2f6ClwMMUxBgS2BCCYCUfi5RTHMthXh6hc/oAkmsiYQkqL1t4TS4ihQcmRqNZ
	 q+bi/AUqEiRhT2iYPHYMEDJYrqrSDeQR1sZqYR2NzuGWG17HbAbZcEy6s/DPVY4Ybx
	 w2nObTH60ASpQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8FE9360E0F;
	Thu, 12 Sep 2024 12:51:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1C2B31BF281
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 12:51:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 15DBE81E7C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 12:51:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3De7t-OU0TWm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Sep 2024 12:51:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.32;
 helo=szxga06-in.huawei.com; envelope-from=linyunsheng@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 34A8581E7A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34A8581E7A
Received: from szxga06-in.huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 34A8581E7A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 12:51:16 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.162.112])
 by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4X4HP64kk6z1xxGS;
 Thu, 12 Sep 2024 20:51:06 +0800 (CST)
Received: from dggpemf200006.china.huawei.com (unknown [7.185.36.61])
 by mail.maildlp.com (Postfix) with ESMTPS id A6C811400D4;
 Thu, 12 Sep 2024 20:51:07 +0800 (CST)
Received: from localhost.localdomain (10.90.30.45) by
 dggpemf200006.china.huawei.com (7.185.36.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Thu, 12 Sep 2024 20:51:07 +0800
From: Yunsheng Lin <linyunsheng@huawei.com>
To: <davem@davemloft.net>, <kuba@kernel.org>, <pabeni@redhat.com>
Date: Thu, 12 Sep 2024 20:45:11 +0800
Message-ID: <20240912124514.2329991-1-linyunsheng@huawei.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.90.30.45]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggpemf200006.china.huawei.com (7.185.36.61)
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: [Intel-wired-lan] [RFC 0/2] fix two bugs related to page_pool
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
 John Fastabend <john.fastabend@gmail.com>, IOMMU <iommu@lists.linux.dev>,
 Alexander Duyck <alexander.duyck@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Yunsheng Lin <linyunsheng@huawei.com>, liuyonglong@huawei.com,
 intel-wired-lan@lists.osuosl.org, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, fanghaiqing@huawei.com,
 bpf@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 linux-kernel@vger.kernel.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Patch 1 fix a possible time window problem for pagw_pool.
Patch 2 fix the kernel crash problem at iommu_get_dma_domain
reported in [1].

1. https://lore.kernel.org/lkml/8067f204-1380-4d37-8ffd-007fc6f26738@kernel.org/T/

CC: Alexander Lobakin <aleksander.lobakin@intel.com>
CC: Robin Murphy <robin.murphy@arm.com>
CC: Alexander Duyck <alexander.duyck@gmail.com>
CC: IOMMU <iommu@lists.linux.dev>

Yunsheng Lin (2):
  page_pool: fix timing for checking and disabling napi_local
  page_pool: fix IOMMU crash when driver has already unbound

 drivers/net/ethernet/freescale/fec_main.c     |   8 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   |   6 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  14 +-
 drivers/net/ethernet/intel/libeth/rx.c        |   2 +-
 .../net/ethernet/mellanox/mlx5/core/en/xdp.c  |   3 +-
 drivers/net/netdevsim/netdev.c                |   6 +-
 drivers/net/wireless/mediatek/mt76/mt76.h     |   2 +-
 include/linux/mm_types.h                      |   2 +-
 include/linux/skbuff.h                        |   1 +
 include/net/libeth/rx.h                       |   3 +-
 include/net/netmem.h                          |   2 +-
 include/net/page_pool/helpers.h               |  11 ++
 include/net/page_pool/types.h                 |  15 +-
 net/core/devmem.c                             |   2 +-
 net/core/page_pool.c                          | 176 +++++++++++++++---
 net/core/page_pool_priv.h                     |   9 +-
 net/core/skbuff.c                             |   3 +-
 net/core/xdp.c                                |   3 +-
 18 files changed, 219 insertions(+), 49 deletions(-)

-- 
2.33.0

