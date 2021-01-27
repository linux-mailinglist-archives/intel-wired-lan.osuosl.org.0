Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9533064CD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jan 2021 21:11:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9201981BC6;
	Wed, 27 Jan 2021 20:11:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E1lsyLvv4rj4; Wed, 27 Jan 2021 20:11:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A039C87083;
	Wed, 27 Jan 2021 20:11:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C22221BF4DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 20:11:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BE0B586C5A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 20:11:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ml+4Mmwz9rcw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jan 2021 20:11:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-40133.protonmail.ch (mail-40133.protonmail.ch
 [185.70.40.133])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E6A3486C0F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 20:11:32 +0000 (UTC)
Date: Wed, 27 Jan 2021 20:11:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me; s=protonmail;
 t=1611778289; bh=qxnDWFVEqg5VGfDWPP9D9tEqnWHHalzlBI7RQuSD1Vc=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
 b=Jm5Eiw1SE4FqIosGATgxGGliy7MW7yjcwsjhgvAwQ+PggG0Bw0ZeQWCyFoxMM5jak
 GGjzN6mdBg72k4wtOOTQG1zPOwmrFcg+gjFodALcTEbRRa99WEUo7ELS4VnspMRlxe
 CNx5jcoVWopBkmLe1LBb4rT5pbNvOBAZ08YoK80unO0YA6n0zs/FLxIFVS6jVpP0ot
 XVNP3ryyb5vzVnDcahUDWe+SmSOwNFJzywpMD764BaOv0uU+gPiIm3DGLDcBw7VLRs
 Li7kLE4U6Ei40YVQE3kUwBa2ommgbaVrgxgjg2s6U7XoHsnV6gE6jo2iCFa5LFrshn
 osxMqD+ejTCbg==
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
From: Alexander Lobakin <alobakin@pm.me>
Message-ID: <20210127201031.98544-4-alobakin@pm.me>
In-Reply-To: <20210127201031.98544-1-alobakin@pm.me>
References: <20210127201031.98544-1-alobakin@pm.me>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 net-next 3/4] net: introduce common
 dev_page_is_reserved()
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
Reply-To: Alexander Lobakin <alobakin@pm.me>
Cc: Randy Dunlap <rdunlap@infradead.org>, Alexander Lobakin <alobakin@pm.me>,
 linux-mm@kvack.org, Jakub Sitnicki <jakub@cloudflare.com>,
 Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
 Dexuan Cui <decui@microsoft.com>, intel-wired-lan@lists.osuosl.org,
 Jesper Dangaard Brouer <brouer@redhat.com>, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Pablo Neira Ayuso <pablo@netfilter.org>, Marco Elver <elver@google.com>,
 David Rientjes <rientjes@google.com>, Willem de Bruijn <willemb@google.com>,
 Salil Mehta <salil.mehta@huawei.com>, netdev@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Saeed Mahameed <saeedm@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

A bunch of drivers test the page before reusing/recycling for two
common conditions:
 - if a page was allocated under memory pressure (pfmemalloc page);
 - if a page was allocated at a distant memory node (to exclude
   slowdowns).

Introduce and use a new common function for doing this and eliminate
all functions-duplicates from drivers.

Suggested-by: David Rientjes <rientjes@google.com>
Signed-off-by: Alexander Lobakin <alobakin@pm.me>
---
 drivers/net/ethernet/hisilicon/hns3/hns3_enet.c   | 10 ++--------
 drivers/net/ethernet/intel/fm10k/fm10k_main.c     |  9 ++-------
 drivers/net/ethernet/intel/i40e/i40e_txrx.c       | 15 +--------------
 drivers/net/ethernet/intel/iavf/iavf_txrx.c       | 15 +--------------
 drivers/net/ethernet/intel/ice/ice_txrx.c         | 11 +----------
 drivers/net/ethernet/intel/igb/igb_main.c         |  7 +------
 drivers/net/ethernet/intel/igc/igc_main.c         |  7 +------
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c     |  7 +------
 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c |  7 +------
 drivers/net/ethernet/mellanox/mlx5/core/en_rx.c   |  7 +------
 include/linux/skbuff.h                            | 15 +++++++++++++++
 11 files changed, 27 insertions(+), 83 deletions(-)

diff --git a/drivers/net/ethernet/hisilicon/hns3/hns3_enet.c b/drivers/net/ethernet/hisilicon/hns3/hns3_enet.c
index 512080640cbc..f71e3d963750 100644
--- a/drivers/net/ethernet/hisilicon/hns3/hns3_enet.c
+++ b/drivers/net/ethernet/hisilicon/hns3/hns3_enet.c
@@ -2800,12 +2800,6 @@ static void hns3_nic_alloc_rx_buffers(struct hns3_enet_ring *ring,
 	writel(i, ring->tqp->io_base + HNS3_RING_RX_RING_HEAD_REG);
 }
 
-static bool hns3_page_is_reusable(struct page *page)
-{
-	return page_to_nid(page) == numa_mem_id() &&
-		!page_is_pfmemalloc(page);
-}
-
 static bool hns3_can_reuse_page(struct hns3_desc_cb *cb)
 {
 	return (page_count(cb->priv) - cb->pagecnt_bias) == 1;
@@ -2826,7 +2820,7 @@ static void hns3_nic_reuse_page(struct sk_buff *skb, int i,
 	/* Avoid re-using remote pages, or the stack is still using the page
 	 * when page_offset rollback to zero, flag default unreuse
 	 */
-	if (unlikely(!hns3_page_is_reusable(desc_cb->priv)) ||
+	if (unlikely(dev_page_is_reserved(desc_cb->priv)) ||
 	    (!desc_cb->page_offset && !hns3_can_reuse_page(desc_cb))) {
 		__page_frag_cache_drain(desc_cb->priv, desc_cb->pagecnt_bias);
 		return;
@@ -3084,7 +3078,7 @@ static int hns3_alloc_skb(struct hns3_enet_ring *ring, unsigned int length,
 		memcpy(__skb_put(skb, length), va, ALIGN(length, sizeof(long)));
 
 		/* We can reuse buffer as-is, just make sure it is local */
-		if (likely(hns3_page_is_reusable(desc_cb->priv)))
+		if (likely(!dev_page_is_reserved(desc_cb->priv)))
 			desc_cb->reuse_flag = 1;
 		else /* This page cannot be reused so discard it */
 			__page_frag_cache_drain(desc_cb->priv,
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_main.c b/drivers/net/ethernet/intel/fm10k/fm10k_main.c
index 99b8252eb969..9f547dd8c914 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_main.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_main.c
@@ -194,17 +194,12 @@ static void fm10k_reuse_rx_page(struct fm10k_ring *rx_ring,
 					 DMA_FROM_DEVICE);
 }
 
-static inline bool fm10k_page_is_reserved(struct page *page)
-{
-	return (page_to_nid(page) != numa_mem_id()) || page_is_pfmemalloc(page);
-}
-
 static bool fm10k_can_reuse_rx_page(struct fm10k_rx_buffer *rx_buffer,
 				    struct page *page,
 				    unsigned int __maybe_unused truesize)
 {
 	/* avoid re-using remote pages */
-	if (unlikely(fm10k_page_is_reserved(page)))
+	if (unlikely(dev_page_is_reserved(page)))
 		return false;
 
 #if (PAGE_SIZE < 8192)
@@ -266,7 +261,7 @@ static bool fm10k_add_rx_frag(struct fm10k_rx_buffer *rx_buffer,
 		memcpy(__skb_put(skb, size), va, ALIGN(size, sizeof(long)));
 
 		/* page is not reserved, we can reuse buffer as-is */
-		if (likely(!fm10k_page_is_reserved(page)))
+		if (likely(!dev_page_is_reserved(page)))
 			return true;
 
 		/* this page cannot be reused so discard it */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 2574e78f7597..4c295671aa09 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -1843,19 +1843,6 @@ static bool i40e_cleanup_headers(struct i40e_ring *rx_ring, struct sk_buff *skb,
 	return false;
 }
 
-/**
- * i40e_page_is_reusable - check if any reuse is possible
- * @page: page struct to check
- *
- * A page is not reusable if it was allocated under low memory
- * conditions, or it's not in the same NUMA node as this CPU.
- */
-static inline bool i40e_page_is_reusable(struct page *page)
-{
-	return (page_to_nid(page) == numa_mem_id()) &&
-		!page_is_pfmemalloc(page);
-}
-
 /**
  * i40e_can_reuse_rx_page - Determine if this page can be reused by
  * the adapter for another receive
@@ -1891,7 +1878,7 @@ static bool i40e_can_reuse_rx_page(struct i40e_rx_buffer *rx_buffer,
 	struct page *page = rx_buffer->page;
 
 	/* Is any reuse possible? */
-	if (unlikely(!i40e_page_is_reusable(page)))
+	if (unlikely(dev_page_is_reserved(page)))
 		return false;
 
 #if (PAGE_SIZE < 8192)
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 256fa07d54d5..a6b552465f03 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -1141,19 +1141,6 @@ static void iavf_reuse_rx_page(struct iavf_ring *rx_ring,
 	new_buff->pagecnt_bias	= old_buff->pagecnt_bias;
 }
 
-/**
- * iavf_page_is_reusable - check if any reuse is possible
- * @page: page struct to check
- *
- * A page is not reusable if it was allocated under low memory
- * conditions, or it's not in the same NUMA node as this CPU.
- */
-static inline bool iavf_page_is_reusable(struct page *page)
-{
-	return (page_to_nid(page) == numa_mem_id()) &&
-		!page_is_pfmemalloc(page);
-}
-
 /**
  * iavf_can_reuse_rx_page - Determine if this page can be reused by
  * the adapter for another receive
@@ -1187,7 +1174,7 @@ static bool iavf_can_reuse_rx_page(struct iavf_rx_buffer *rx_buffer)
 	struct page *page = rx_buffer->page;
 
 	/* Is any reuse possible? */
-	if (unlikely(!iavf_page_is_reusable(page)))
+	if (unlikely(dev_page_is_reserved(page)))
 		return false;
 
 #if (PAGE_SIZE < 8192)
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 422f53997c02..623bbd27870f 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -728,15 +728,6 @@ bool ice_alloc_rx_bufs(struct ice_ring *rx_ring, u16 cleaned_count)
 	return !!cleaned_count;
 }
 
-/**
- * ice_page_is_reserved - check if reuse is possible
- * @page: page struct to check
- */
-static bool ice_page_is_reserved(struct page *page)
-{
-	return (page_to_nid(page) != numa_mem_id()) || page_is_pfmemalloc(page);
-}
-
 /**
  * ice_rx_buf_adjust_pg_offset - Prepare Rx buffer for reuse
  * @rx_buf: Rx buffer to adjust
@@ -776,7 +767,7 @@ ice_can_reuse_rx_page(struct ice_rx_buf *rx_buf, int rx_buf_pgcnt)
 	struct page *page = rx_buf->page;
 
 	/* avoid re-using remote pages */
-	if (unlikely(ice_page_is_reserved(page)))
+	if (unlikely(dev_page_is_reserved(page)))
 		return false;
 
 #if (PAGE_SIZE < 8192)
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 84d4284b8b32..f3020a73323d 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -8215,18 +8215,13 @@ static void igb_reuse_rx_page(struct igb_ring *rx_ring,
 	new_buff->pagecnt_bias	= old_buff->pagecnt_bias;
 }
 
-static inline bool igb_page_is_reserved(struct page *page)
-{
-	return (page_to_nid(page) != numa_mem_id()) || page_is_pfmemalloc(page);
-}
-
 static bool igb_can_reuse_rx_page(struct igb_rx_buffer *rx_buffer)
 {
 	unsigned int pagecnt_bias = rx_buffer->pagecnt_bias;
 	struct page *page = rx_buffer->page;
 
 	/* avoid re-using remote pages */
-	if (unlikely(igb_page_is_reserved(page)))
+	if (unlikely(dev_page_is_reserved(page)))
 		return false;
 
 #if (PAGE_SIZE < 8192)
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 43aec42e6d9d..8d51fb86be2e 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1648,18 +1648,13 @@ static void igc_reuse_rx_page(struct igc_ring *rx_ring,
 	new_buff->pagecnt_bias	= old_buff->pagecnt_bias;
 }
 
-static inline bool igc_page_is_reserved(struct page *page)
-{
-	return (page_to_nid(page) != numa_mem_id()) || page_is_pfmemalloc(page);
-}
-
 static bool igc_can_reuse_rx_page(struct igc_rx_buffer *rx_buffer)
 {
 	unsigned int pagecnt_bias = rx_buffer->pagecnt_bias;
 	struct page *page = rx_buffer->page;
 
 	/* avoid re-using remote pages */
-	if (unlikely(igc_page_is_reserved(page)))
+	if (unlikely(dev_page_is_reserved(page)))
 		return false;
 
 #if (PAGE_SIZE < 8192)
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index e08c01525fd2..37cc117c3aa6 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -1940,11 +1940,6 @@ static void ixgbe_reuse_rx_page(struct ixgbe_ring *rx_ring,
 	new_buff->pagecnt_bias	= old_buff->pagecnt_bias;
 }
 
-static inline bool ixgbe_page_is_reserved(struct page *page)
-{
-	return (page_to_nid(page) != numa_mem_id()) || page_is_pfmemalloc(page);
-}
-
 static bool ixgbe_can_reuse_rx_page(struct ixgbe_rx_buffer *rx_buffer,
 				    int rx_buffer_pgcnt)
 {
@@ -1952,7 +1947,7 @@ static bool ixgbe_can_reuse_rx_page(struct ixgbe_rx_buffer *rx_buffer,
 	struct page *page = rx_buffer->page;
 
 	/* avoid re-using remote pages */
-	if (unlikely(ixgbe_page_is_reserved(page)))
+	if (unlikely(dev_page_is_reserved(page)))
 		return false;
 
 #if (PAGE_SIZE < 8192)
diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index a14e55e7fce8..24caa0d2d572 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -781,18 +781,13 @@ static void ixgbevf_reuse_rx_page(struct ixgbevf_ring *rx_ring,
 	new_buff->pagecnt_bias = old_buff->pagecnt_bias;
 }
 
-static inline bool ixgbevf_page_is_reserved(struct page *page)
-{
-	return (page_to_nid(page) != numa_mem_id()) || page_is_pfmemalloc(page);
-}
-
 static bool ixgbevf_can_reuse_rx_page(struct ixgbevf_rx_buffer *rx_buffer)
 {
 	unsigned int pagecnt_bias = rx_buffer->pagecnt_bias;
 	struct page *page = rx_buffer->page;
 
 	/* avoid re-using remote pages */
-	if (unlikely(ixgbevf_page_is_reserved(page)))
+	if (unlikely(dev_page_is_reserved(page)))
 		return false;
 
 #if (PAGE_SIZE < 8192)
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_rx.c b/drivers/net/ethernet/mellanox/mlx5/core/en_rx.c
index dec93d57542f..5b9fb979adc6 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_rx.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_rx.c
@@ -212,11 +212,6 @@ static inline u32 mlx5e_decompress_cqes_start(struct mlx5e_rq *rq,
 	return mlx5e_decompress_cqes_cont(rq, wq, 1, budget_rem) - 1;
 }
 
-static inline bool mlx5e_page_is_reserved(struct page *page)
-{
-	return page_is_pfmemalloc(page) || page_to_nid(page) != numa_mem_id();
-}
-
 static inline bool mlx5e_rx_cache_put(struct mlx5e_rq *rq,
 				      struct mlx5e_dma_info *dma_info)
 {
@@ -229,7 +224,7 @@ static inline bool mlx5e_rx_cache_put(struct mlx5e_rq *rq,
 		return false;
 	}
 
-	if (unlikely(mlx5e_page_is_reserved(dma_info->page))) {
+	if (unlikely(dev_page_is_reserved(dma_info->page))) {
 		stats->cache_waive++;
 		return false;
 	}
diff --git a/include/linux/skbuff.h b/include/linux/skbuff.h
index b027526da4f9..688782513d09 100644
--- a/include/linux/skbuff.h
+++ b/include/linux/skbuff.h
@@ -2938,6 +2938,21 @@ static inline struct page *dev_alloc_page(void)
 	return dev_alloc_pages(0);
 }
 
+/**
+ * dev_page_is_reserved - check whether a page can be reused for network Rx
+ * @page: the page to test
+ *
+ * A page shouldn't be considered for reusing/recycling if it was allocated
+ * under memory pressure or at a distant memory node.
+ *
+ * Returns true if this page should be returned to page allocator, false
+ * otherwise.
+ */
+static inline bool dev_page_is_reserved(const struct page *page)
+{
+	return page_is_pfmemalloc(page) || page_to_nid(page) != numa_mem_id();
+}
+
 /**
  *	skb_propagate_pfmemalloc - Propagate pfmemalloc if skb is allocated after RX page
  *	@page: The page that was allocated from skb_alloc_page
-- 
2.30.0


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
