Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 129C67AB4D6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Sep 2023 17:32:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9580A40449;
	Fri, 22 Sep 2023 15:32:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9580A40449
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695396765;
	bh=IfrRvTNr/pWywq3s0xcUmIzMljFUDCDDWZ7m9/nv0qw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xuJ2XeGMaw5kF+RYs9nYhSSmITrP10td9dF5LEYPiEH/iiroobSNywmkK4EE6I9Fz
	 N/I5hJge5WGFDug/Gg070XgP6MMvUin5MifLss1fjrUAK6Ln7q1vlZuhEk1d1rKUbZ
	 zu3jC6tBSFT7H9YNyVxKgc74WmRznf3NsLjWLSpsbp6KccDOF48uMb9JBsovH2gkLP
	 aVSDHlIXtkObk54T8JNNwWl7U9iWi6ZlMSw50gTQHgYRqkJ6Z/b89OpmcR+fMOkkep
	 ePc+qrPKoj3PUqIvuCZnTtOXMkxFBsAi8x0+QTfYyasMu2Hh2eZ9KvvRjbyaxcmtEN
	 JLB1xandx8qsA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ENkvMwf7rYWl; Fri, 22 Sep 2023 15:32:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1D2D0401DD;
	Fri, 22 Sep 2023 15:32:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1D2D0401DD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C03041BF364
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Sep 2023 09:31:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A511C61082
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Sep 2023 09:31:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A511C61082
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EBlfv2xRqGuO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Sep 2023 09:31:52 +0000 (UTC)
X-Greylist: delayed 1002 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 22 Sep 2023 09:31:52 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C1F960E0A
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com [45.249.212.255])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6C1F960E0A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Sep 2023 09:31:52 +0000 (UTC)
Received: from dggpemm500005.china.huawei.com (unknown [172.30.72.55])
 by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4RsRPj39ZVz15NRl;
 Fri, 22 Sep 2023 17:12:57 +0800 (CST)
Received: from localhost.localdomain (10.69.192.56) by
 dggpemm500005.china.huawei.com (7.185.36.74) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.31; Fri, 22 Sep 2023 17:15:05 +0800
From: Yunsheng Lin <linyunsheng@huawei.com>
To: <davem@davemloft.net>, <kuba@kernel.org>, <pabeni@redhat.com>
Date: Fri, 22 Sep 2023 17:11:35 +0800
Message-ID: <20230922091138.18014-4-linyunsheng@huawei.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20230922091138.18014-1-linyunsheng@huawei.com>
References: <20230922091138.18014-1-linyunsheng@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.56]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggpemm500005.china.huawei.com (7.185.36.74)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Fri, 22 Sep 2023 15:32:39 +0000
Subject: [Intel-wired-lan] [PATCH net-next v10 3/6] page_pool: remove
 PP_FLAG_PAGE_FRAG
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
Cc: Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Subbaraya Sundeep <sbhatta@marvell.com>, Ryder Lee <ryder.lee@mediatek.com>,
 Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
 Liang Chen <liangchen.linux@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Sunil Goutham <sgoutham@marvell.com>, Jesper Dangaard Brouer <hawk@kernel.org>,
 Kalle Valo <kvalo@kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 linux-mediatek@lists.infradead.org, Yunsheng Lin <linyunsheng@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Michael Chan <michael.chan@broadcom.com>, linux-arm-kernel@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Salil Mehta <salil.mehta@huawei.com>, Lorenzo Bianconi <lorenzo@kernel.org>,
 netdev@vger.kernel.org, Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 hariprasad <hkelam@marvell.com>, Felix Fietkau <nbd@nbd.name>,
 Saeed Mahameed <saeedm@nvidia.com>, Geetha sowjanya <gakula@marvell.com>,
 Shayne Chen <shayne.chen@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PP_FLAG_PAGE_FRAG is not really needed after pp_frag_count
handling is unified and page_pool_alloc_frag() is supported
in 32-bit arch with 64-bit DMA, so remove it.

Signed-off-by: Yunsheng Lin <linyunsheng@huawei.com>
CC: Lorenzo Bianconi <lorenzo@kernel.org>
CC: Alexander Duyck <alexander.duyck@gmail.com>
CC: Liang Chen <liangchen.linux@gmail.com>
CC: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/broadcom/bnxt/bnxt.c                | 2 --
 drivers/net/ethernet/hisilicon/hns3/hns3_enet.c          | 3 +--
 drivers/net/ethernet/intel/idpf/idpf_txrx.c              | 3 ---
 drivers/net/ethernet/marvell/octeontx2/nic/otx2_common.c | 2 +-
 drivers/net/ethernet/mellanox/mlx5/core/en_main.c        | 2 +-
 drivers/net/wireless/mediatek/mt76/mac80211.c            | 2 +-
 include/net/page_pool/types.h                            | 6 ++----
 net/core/page_pool.c                                     | 3 +--
 net/core/skbuff.c                                        | 2 +-
 9 files changed, 8 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt.c b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
index 5cc0dbe12132..8c2e455f534d 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
@@ -3194,8 +3194,6 @@ static int bnxt_alloc_rx_page_pool(struct bnxt *bp,
 	pp.dma_dir = bp->rx_dir;
 	pp.max_len = PAGE_SIZE;
 	pp.flags = PP_FLAG_DMA_MAP | PP_FLAG_DMA_SYNC_DEV;
-	if (PAGE_SIZE > BNXT_RX_PAGE_SIZE)
-		pp.flags |= PP_FLAG_PAGE_FRAG;
 
 	rxr->page_pool = page_pool_create(&pp);
 	if (IS_ERR(rxr->page_pool)) {
diff --git a/drivers/net/ethernet/hisilicon/hns3/hns3_enet.c b/drivers/net/ethernet/hisilicon/hns3/hns3_enet.c
index b4895c7b3efd..b9b66c1018d7 100644
--- a/drivers/net/ethernet/hisilicon/hns3/hns3_enet.c
+++ b/drivers/net/ethernet/hisilicon/hns3/hns3_enet.c
@@ -4931,8 +4931,7 @@ static void hns3_put_ring_config(struct hns3_nic_priv *priv)
 static void hns3_alloc_page_pool(struct hns3_enet_ring *ring)
 {
 	struct page_pool_params pp_params = {
-		.flags = PP_FLAG_DMA_MAP | PP_FLAG_PAGE_FRAG |
-				PP_FLAG_DMA_SYNC_DEV,
+		.flags = PP_FLAG_DMA_MAP | PP_FLAG_DMA_SYNC_DEV,
 		.order = hns3_page_order(ring),
 		.pool_size = ring->desc_num * hns3_buf_size(ring) /
 				(PAGE_SIZE << hns3_page_order(ring)),
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 6fa79898c42c..55a099986b55 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -595,9 +595,6 @@ static struct page_pool *idpf_rx_create_page_pool(struct idpf_queue *rxbufq)
 		.offset		= 0,
 	};
 
-	if (rxbufq->rx_buf_size == IDPF_RX_BUF_2048)
-		pp.flags |= PP_FLAG_PAGE_FRAG;
-
 	return page_pool_create(&pp);
 }
 
diff --git a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_common.c b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_common.c
index 997fedac3a98..b8646c306ebe 100644
--- a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_common.c
+++ b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_common.c
@@ -1403,7 +1403,7 @@ int otx2_pool_init(struct otx2_nic *pfvf, u16 pool_id,
 		return 0;
 	}
 
-	pp_params.flags = PP_FLAG_PAGE_FRAG | PP_FLAG_DMA_MAP;
+	pp_params.flags = PP_FLAG_DMA_MAP;
 	pp_params.pool_size = min(OTX2_PAGE_POOL_SZ, numptrs);
 	pp_params.nid = NUMA_NO_NODE;
 	pp_params.dev = pfvf->dev;
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c b/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
index a2ae791538ed..f3cf13a8bb19 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
@@ -834,7 +834,7 @@ static int mlx5e_alloc_rq(struct mlx5e_params *params,
 		struct page_pool_params pp_params = { 0 };
 
 		pp_params.order     = 0;
-		pp_params.flags     = PP_FLAG_DMA_MAP | PP_FLAG_DMA_SYNC_DEV | PP_FLAG_PAGE_FRAG;
+		pp_params.flags     = PP_FLAG_DMA_MAP | PP_FLAG_DMA_SYNC_DEV;
 		pp_params.pool_size = pool_size;
 		pp_params.nid       = node;
 		pp_params.dev       = rq->pdev;
diff --git a/drivers/net/wireless/mediatek/mt76/mac80211.c b/drivers/net/wireless/mediatek/mt76/mac80211.c
index d158320bc15d..fe7cc67b7ee2 100644
--- a/drivers/net/wireless/mediatek/mt76/mac80211.c
+++ b/drivers/net/wireless/mediatek/mt76/mac80211.c
@@ -566,7 +566,7 @@ int mt76_create_page_pool(struct mt76_dev *dev, struct mt76_queue *q)
 {
 	struct page_pool_params pp_params = {
 		.order = 0,
-		.flags = PP_FLAG_PAGE_FRAG,
+		.flags = 0,
 		.nid = NUMA_NO_NODE,
 		.dev = dev->dma_dev,
 	};
diff --git a/include/net/page_pool/types.h b/include/net/page_pool/types.h
index 887e7946a597..6fc5134095ed 100644
--- a/include/net/page_pool/types.h
+++ b/include/net/page_pool/types.h
@@ -17,10 +17,8 @@
 					* Please note DMA-sync-for-CPU is still
 					* device driver responsibility
 					*/
-#define PP_FLAG_PAGE_FRAG	BIT(2) /* for page frag feature */
 #define PP_FLAG_ALL		(PP_FLAG_DMA_MAP |\
-				 PP_FLAG_DMA_SYNC_DEV |\
-				 PP_FLAG_PAGE_FRAG)
+				 PP_FLAG_DMA_SYNC_DEV)
 
 /*
  * Fast allocation side cache array/stack
@@ -45,7 +43,7 @@ struct pp_alloc_cache {
 
 /**
  * struct page_pool_params - page pool parameters
- * @flags:	PP_FLAG_DMA_MAP, PP_FLAG_DMA_SYNC_DEV, PP_FLAG_PAGE_FRAG
+ * @flags:	PP_FLAG_DMA_MAP, PP_FLAG_DMA_SYNC_DEV
  * @order:	2^order pages on allocation
  * @pool_size:	size of the ptr_ring
  * @nid:	NUMA node id to allocate from pages from
diff --git a/net/core/page_pool.c b/net/core/page_pool.c
index 953535cab081..2a3671c97ca7 100644
--- a/net/core/page_pool.c
+++ b/net/core/page_pool.c
@@ -756,8 +756,7 @@ struct page *page_pool_alloc_frag(struct page_pool *pool,
 	unsigned int max_size = PAGE_SIZE << pool->p.order;
 	struct page *page = pool->frag_page;
 
-	if (WARN_ON(!(pool->p.flags & PP_FLAG_PAGE_FRAG) ||
-		    size > max_size))
+	if (WARN_ON(size > max_size))
 		return NULL;
 
 	size = ALIGN(size, dma_get_cache_alignment());
diff --git a/net/core/skbuff.c b/net/core/skbuff.c
index 2198979470ec..54256753bf01 100644
--- a/net/core/skbuff.c
+++ b/net/core/skbuff.c
@@ -5752,7 +5752,7 @@ bool skb_try_coalesce(struct sk_buff *to, struct sk_buff *from,
 	/* In general, avoid mixing page_pool and non-page_pool allocated
 	 * pages within the same SKB. Additionally avoid dealing with clones
 	 * with page_pool pages, in case the SKB is using page_pool fragment
-	 * references (PP_FLAG_PAGE_FRAG). Since we only take full page
+	 * references (page_pool_alloc_frag()). Since we only take full page
 	 * references for cloned SKBs at the moment that would result in
 	 * inconsistent reference counts.
 	 * In theory we could take full references if @from is cloned and
-- 
2.33.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
